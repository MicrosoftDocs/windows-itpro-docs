---
title: Prepare and deploy Active Directory Federation Services in an on-premises certificate trust model
description: Learn how to configure Active Directory Federation Services to support the Windows Hello for Business on-premises certificate trust model.
ms.date: 12/15/2023
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2022</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2019</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2016</a>
ms.topic: tutorial
---

# Prepare and deploy Active Directory Federation Services - on-premises certificate trust

[!INCLUDE [apply-to-on-premises-cert-trust-entra](includes/apply-to-on-premises-cert-trust-entra.md)]

Windows Hello for Business works exclusively with the Active Directory Federation Service (AD FS) role included with Windows Server. The on-premises certificate trust deployment model uses AD FS for *certificate enrollment* and *device registration*.

The following guidance describes the deployment of a new instance of AD FS using the Windows Information Database (WID) as the configuration database.\
WID is ideal for environments with no more than **30 federation servers** and no more than **100 relying party trusts**. If your environment exceeds either of these factors, or needs to provide *SAML artifact resolution*, *token replay detection*, or needs AD FS to operate as a federated provider role, then the deployment requires the use of SQL as a configuration database.\
To deploy AD FS using SQL as its configuration database, review the [Deploying a Federation Server Farm](/windows-server/identity/ad-fs/deployment/deploying-a-federation-server-farm) checklist.

A new AD FS farm should have a minimum of two federation servers for proper load balancing, which can be accomplished with external networking peripherals, or with using the Network Load Balancing Role included in Windows Server.

Prepare the AD FS deployment by installing and **updating** two Windows Servers.

## Enroll for a TLS server authentication certificate

Typically, a federation service is an edge facing role. However, the federation services and instance used with the on-premises deployment of Windows Hello for Business does not need Internet connectivity.

The AD FS role needs a *server authentication* certificate for the federation services, and you can use a certificate issued by your enterprise (internal) CA. The server authentication certificate should have the following names included in the certificate, if you are requesting an individual certificate for each node in the federation farm:

 - **Subject Name**: the internal FQDN of the federation server
 - **Subject Alternate Name**: the federation service name (e.g. *sts.corp.contoso.com*) or an appropriate wildcard entry (e.g. *\*.corp.contoso.com*)

The federation service name is set when the AD FS role is configured. You can choose any name, but that name must be different than the name of the server or host. For example, you can name the host server *adfs* and the federation service *sts*. In this example, the FQDN of the host is *adfs.corp.contoso.com* and the FQDN of the federation service is *sts.corp.contoso.com*.

You can also issue one certificate for all hosts in the farm. If you chose this option, leave the subject name *blank*, and include all the names in the subject alternate name when creating the certificate request. All names should include the FQDN of each host in the farm and the federation service name.

When creating a wildcard certificate, mark the private key as exportable, so that the same certificate can be deployed across each federation server and web application proxy within the AD FS farm. Note that the certificate must be trusted (chain to a trusted root CA). Once you have successfully requested and enrolled the server authentication certificate on one node, you can export the certificate and private key to a PFX file using the Certificate Manager console. You can then import the certificate on the remaining nodes in the AD FS farm.

Be sure to enroll or import the certificate into the AD FS server's computer certificate store. Also, ensure all nodes in the farm have the proper TLS server authentication certificate.
### AD FS authentication certificate enrollment

Sign-in the federation server with *domain administrator* equivalent credentials.

1. Start the Local Computer **Certificate Manager** (certlm.msc)
1. Expand the **Personal** node in the navigation pane
1. Right-click **Personal**. Select **All Tasks > Request New Certificate**
1. Select **Next** on the **Before You Begin** page
1. Select **Next** on the **Select Certificate Enrollment Policy** page
1. On the **Request Certificates** page, select the **Internal Web Server** check box
1. Select the **⚠️ More information is required to enroll for this certificate. Click here to configure settings** link
    :::image type="content" source="images/hello-internal-web-server-cert.png" lightbox="images/hello-internal-web-server-cert.png" alt-text="Screenshot that shows example of Certificate Properties Subject Tab - This is what shows when you select the above link.":::
1. Under **Subject name**, select **Common Name** from the **Type** list. Type the FQDN of the computer hosting the AD FS role and then select **Add**
1. Under **Alternative name**, select **DNS** from the **Type** list. Type the FQDN of the name that you will use for your federation services (*sts.corp.contoso.com*). The name you use here MUST match the name you use when configuring the AD FS server role. Select **Add** and **OK** when finished
1. Select **Enroll**

A server authentication certificate should appear in the computer's personal certificate store.

## Deploy the AD FS role

AD FS provides the following services to support Windows Hello for Business on-premises deployments in a certificate trust model:

- Device registration
- Key registration
- Certificate registration authority (CRA)

>[!IMPORTANT]
> Finish the entire AD FS configuration on the first server in the farm before adding the second server to the AD FS farm.  Once complete, the second server receives the configuration through the shared configuration database when it is added the AD FS farm.

Sign-in the federation server with *Enterprise Administrator* equivalent credentials.

1. Start **Server Manager**. Select **Local Server** in the navigation pane
1. Select **Manage > Add Roles and Features**
1. Select **Next** on the **Before you begin** page
1. On the **Select installation type** page, select **Role-based or feature-based installation > Next**
1. On the **Select destination server** page, choose **Select a server from the server pool**. Select the federation server from the **Server Pool** list and **Next**
1. On the **Select server roles** page, select **Active Directory Federation Services** and **Next**
1. Select **Next** on the **Select features** page
1. Select **Next** on the **Active Directory Federation Service** page
1. Select **Install** to start the role installation

## Review to validate the AD FS deployment

Before you continue with the deployment, validate your deployment progress by reviewing the following items:

> [!div class="checklist"]
> * Confirm the AD FS farm uses the correct database configuration
> * Confirm the AD FS farm has an adequate number of nodes and is properly load balanced for the anticipated load
> * Confirm **all** AD FS servers in the farm have the latest updates installed
> * Confirm all AD FS servers have a valid server authentication certificate

## Device registration service account prerequisites

The use of Group Managed Service Accounts (GMSA) is the preferred way to deploy service accounts for services that support them. GMSAs have security advantages over normal user accounts because Windows handles password management. This means the password is long, complex, and changes periodically. AD FS supports GMSAs, and it should be configured using them for additional security.

GSMA uses the *Microsoft Key Distribution Service* that is located on the domain controllers. Before you can create a GSMA, you must first create a root key for the service. You can skip this if your environment already uses GSMA.

### Create KDS Root Key

Sign-in a domain controller with *Enterprise Administrator* equivalent credentials.

Start an elevated PowerShell console and execute the following command:
```PowerShell
Add-KdsRootKey -EffectiveTime (Get-Date).AddHours(-10)
```

## Configure the Active Directory Federation Service Role

Use the following procedures to configure AD FS.

Sign-in to the federation server with *Domain Administrator* equivalent credentials. These procedures assume you are configuring the first federation server in a federation server farm.

1. Start **Server Manager**
1. Select the notification flag in the upper right corner and select **Configure the federation services on this server**
1. On the **Welcome** page, select **Create the first federation server farm > Next**
1. On the **Connect to Active Directory Domain Services** page, select **Next**
1. On the **Specify Service Properties** page, select the recently enrolled or imported certificate from the **SSL Certificate** list. The certificate is likely named after your federation service, such as *sts.corp.contoso.com*
1. Select the federation service name from the **Federation Service Name** list
1. Type the *Federation Service Display Name* in the text box. This is the name users see when signing in. Select **Next**
1. On the **Specify Service Account** page, select **Create a Group Managed Service Account**. In the **Account Name** box, type *adfssvc*
1. On the **Specify Configuration Database** page, select **Create a database on this server using Windows Internal Database** and select **Next**
1. On the **Review Options** page, select **Next**
1. On the **Pre-requisite Checks** page, select **Configure**
1. When the process completes, select **Close**

> [!NOTE]
> For AD FS 2019 and later in a certificate trust model, a known PRT issue exists. You may encounter this error in AD FS Admin event logs: Received invalid Oauth request. The client 'NAME' is forbidden to access the resource with scope 'ugs'. To remediate this error:
>
> 1. Launch AD FS management console. Browse to ***Services > Scope Descriptions**
> 2. Right-click **Scope Descriptions** and select **Add Scope Description**
> 3. Under name type *ugs* and select **Apply > OK**
> 4. Launch PowerShell as an administrator and execute the following commands:
> ```PowerShell
> $id = (Get-AdfsApplicationPermission -ServerRoleIdentifiers 'http://schemas.microsoft.com/ws/2009/12/identityserver/selfscope' | ?{ $_.ClientRoleIdentifier -eq '38aa3b87-a06d-4817-b275-7a316988d93b' }).ObjectIdentifier
> Set-AdfsApplicationPermission -TargetIdentifier $id -AddScope 'ugs'
> ```
> 7. Restart the AD FS service
> 8. Restart the client. User should be prompted to provision Windows Hello for Business

### Add the AD FS service account to the *Key Admins* group

During Windows Hello for Business enrollment, the public key is registered in an attribute of the user object in Active Directory. To ensure that the AD FS service can add and remove keys are part of its normal workflow, it must be a member of the *Key Admins* global group.

Sign-in to a domain controller or management workstation with *Domain Administrator* equivalent credentials.

1. Open **Active Directory Users and Computers**
1. Select the **Users** container in the navigation pane
1. Right-click **Key Admins** in the details pane and select **Properties**
1. Select the **Members > Add…**
1. In the **Enter the object names to select** text box, type *adfssvc*. Select **OK**
1. Select **OK** to return to **Active Directory Users and Computers**
1. Change to server hosting the AD FS role and restart it

Sign-in to the federation server with *Enterprise Administrator* equivalent credentials. These instructions assume you are configuring the first federation server in a federation server farm.

1. Open the **AD FS management** console
1. In the navigation pane, expand **Service**. Select **Device Registration**
1. In the details pane, select **Configure device registration**
1. In the **Configure Device Registration** dialog, Select **OK**

:::image type="content" source="images/adfs-device-registration.png" lightbox="images/adfs-device-registration.png" alt-text="Screenshot that shows AD FS device registration: configuration of the service connection point.":::

Triggering device registration from AD FS, creates the service connection point (SCP) in the Active Directory configuration partition. The SCP is used to store the device registration information that Windows clients will automatically discover.

:::image type="content" source="images/adfs-scp.png" lightbox="images/adfs-scp.png" alt-text="Screenshot that shows AD FS device registration: service connection point object created by AD FS.":::

## Review to validate the AD FS and Active Directory configuration

Before you continue with the deployment, validate your deployment progress by reviewing the following items:

> [!div class="checklist"]
> * Record the information about the AD FS certificate, and set a renewal reminder at least six weeks before it expires. Relevant information includes: certificate serial number, thumbprint, common name, subject alternate name, name of the physical host server, the issued date, the expiration date, and issuing CA vendor (if a third-party certificate)
> * Confirm you added the AD FS service account to the KeyAdmins group
> * Confirm you enabled the Device Registration service

## Configure the certificate registration authority

The Windows Hello for Business on-premises certificate-based deployment uses AD FS as the certificate registration authority (CRA). The registration authority is responsible for issuing certificates to users and devices. The registration authority is also responsible for revoking certificates when users or devices are removed from the environment.

Sign-in the AD FS server with *domain administrator* equivalent credentials.

Open a **Windows PowerShell** prompt and type the following command:

```PowerShell
Set-AdfsCertificateAuthority -EnrollmentAgent -EnrollmentAgentCertificateTemplate WHFBEnrollmentAgent -WindowsHelloCertificateTemplate WHFBAuthentication
   ```
>[!NOTE]
> If you gave your Windows Hello for Business Enrollment Agent and Windows Hello for Business Authentication certificate templates different names, then replace *WHFBEnrollmentAgent* and *WHFBAuthentication* in the above command with the name of your certificate templates. It's important that you use the template name rather than the template display name.  You can view the template name on the **General** tab of the certificate template by using the **Certificate Template** management console (certtmpl.msc). Or, you can view the template name by using the `Get-CATemplate` PowerShell cmdlet on a CA.

### Enrollment agent certificate enrollment

AD FS performs its own certificate lifecycle management. Once the registration authority is configured with the proper certificate template, the AD FS server attempts to enroll the certificate on the first certificate request or when the service first starts.

Approximately 60 days prior to enrollment agent certificate's expiration, the AD FS service attempts to renew the certificate until it is successful. If the certificate fails to renew, and the certificate expires, the AD FS server will request a new enrollment agent certificate. You can view the AD FS event logs to determine the status of the enrollment agent certificate.

## Additional federation servers

Organizations should deploy more than one federation server in their federation farm for high-availability. You should have a minimum of two federation services in your AD FS farm, however most organizations are likely to have more. This largely depends on the number of devices and users using the services provided by the AD FS farm.

### Server authentication certificate

Each server you add to the AD FS farm must have a proper server authentication certificate. Refer to the [Enroll for a TLS Server Authentication Certificate](#enroll-for-a-tls-server-authentication-certificate) section of this document to determine the requirements for your server authentication certificate. As previously stated, AD FS servers used exclusively for on-premises deployments of Windows Hello for Business can use enterprise server authentication certificates rather than server authentication certificates issued by public certificate authorities.

### Install additional servers

Adding federation servers to the existing AD FS farm begins with ensuring the server are fully patched, to include Windows Server 2016 Update needed to support Windows Hello for Business deployments (https://aka.ms/whfbadfs1703). Next, install the Active Directory Federation Service role on the additional servers and then configure the server as an additional server in an existing farm.

## Load balance AD FS

Many environments load balance using hardware devices. Environments without hardware load-balancing capabilities can take advantage the network load-balancing feature included in Windows Server to load balance the AD FS servers in the federation farm. Install the Windows Network Load Balancing feature on all nodes participating in the AD FS farm that should be load balanced.

### Install Network Load Balancing Feature on AD FS Servers

Sign-in the federation server with *Enterprise Administrator* equivalent credentials.

1. Start **Server Manager**. Select **Local Server** in the navigation pane
1. Select **Manage** and then select **Add Roles and Features**
1. Select **Next** On the **Before you begin** page
1. On the **Select installation type** page, select **Role-based or feature-based installation** and select **Next**
1. On the **Select destination server** page, choose **Select a server from the server pool**. Select the federation server from the **Server Pool** list. Select **Next**
1. On the **Select server roles** page, select **Next**
1. Select **Network Load Balancing** on the **Select features** page
1. Select **Install** to start the feature installation

### Configure Network Load Balancing for AD FS

Before you can load balance all the nodes in the AD FS farm, you must first create a new load balance cluster. Once you have created the cluster, then you can add new nodes to that cluster.

Sign-in a node of the federation farm with *Administrator* equivalent credentials.

1. Open **Network Load Balancing Manager** from **Administrative Tools**
1. Right-click **Network Load Balancing Clusters**, and then select **New Cluster**
1. To connect to the host that is to be a part of the new cluster, in the **Host** text box, type the name of the host, and then select **Connect**
1. Select the interface that you want to use with the cluster, and then select **Next** (the interface hosts the virtual IP address and receives the client traffic to load balance)
1. In **Host Parameters**, select a value in **Priority (Unique host identifier)**. This parameter specifies a unique ID for each host. The host with the lowest numerical priority among the current members of the cluster handles all of the cluster's network traffic that is not covered by a port rule. Select **Next**
1. In **Cluster IP Addresses**, select **Add** and type the cluster IP address that is shared by every host in the cluster. NLB adds this IP address to the TCP/IP stack on the selected interface of all hosts that are chosen to be part of the cluster. Select **Next**
1. In **Cluster Parameters**, select values in **IP Address** and **Subnet mask** (for IPv6 addresses, a subnet mask value is not needed). Type the full Internet name that users will use to access this NLB cluster
1. In **Cluster operation mode**, select **Unicast** to specify that a unicast media access control (MAC) address should be used for cluster operations. In unicast mode, the MAC address of the cluster is assigned to the network adapter of the computer, and the built-in MAC address of the network adapter is not used. We recommend that you accept the unicast default settings. Select **Next**
1. In Port Rules, select Edit to modify the default port rules to use port 443

### Additional AD FS Servers

1. To add more hosts to the cluster, right-click the new cluster, and then select **Add Host to Cluster**
1. Configure the host parameters (including host priority, dedicated IP addresses, and load weight) for the additional hosts by following the same instructions that you used to configure the initial host. Because you are adding hosts to an already configured cluster, all the cluster-wide parameters remain the same

## Configure DNS for Device Registration

Sign-in the domain controller or administrative workstation with domain administrator equivalent credentials.\
You'll need the *federation service* name to complete this task. You can view the federation service name by selecting **Edit Federation Service Properties** from the **Action** pan of the **AD FS** management console, or by using `(Get-AdfsProperties).Hostname.` (PowerShell) on the AD FS server.

1. Open the **DNS Management** console
1. In the navigation pane, expand the domain controller name node and **Forward Lookup Zones**
1. In the navigation pane, select the node that has the name of your internal Active Directory domain name
1. In the navigation pane, right-click the domain name node and select **New Host (A or AAAA)**
1. In the **name** box, type the name of the federation service. In the **IP address** box, type the IP address of your federation server. Select **Add Host**
1. Right-click the `<domain_name>` node and select **New Alias (CNAME)**
1. In the **New Resource Record** dialog box, type `enterpriseregistration` in the **Alias** name box
1. In the **fully qualified domain name (FQDN)** of the target host box, type `federation_service_farm_name.<domain_name_fqdn`, and select OK
1. Close the DNS Management console

> [!NOTE]
> If your forest has multiple UPN suffixes, please make sure that `enterpriseregistration.<upnsuffix_fqdn>` is present for each suffix.

## Configure the Intranet Zone to include the federation service

The Windows Hello provisioning presents web pages from the federation service. Configuring the intranet zone to include the federation service enables the user to authenticate to the federation service using integrated authentication. Without this setting, the connection to the federation service during Windows Hello provisioning prompts the user for authentication.

### Create an Intranet Zone Group Policy

Sign-in the domain controller or administrative workstation with _Domain Admin_ equivalent credentials
1. Start the **Group Policy Management Console** (gpmc.msc)
1. Expand the domain and select the **Group Policy Object** node in the navigation pane
1. Right-click **Group Policy object** and select **New**
1. Type **Intranet Zone Settings** in the name box and select **OK**
1. In the content pane, right-click the **Intranet Zone Settings** Group Policy object and select **Edit**
1. In the navigation pane, expand **Policies** under **Computer Configuration**
1. Expand **Administrative Templates > Windows Component > Internet Explorer > Internet Control Panel >Security Page**. Open **Site to Zone Assignment List**
1. Select **Enable > Show**. In the **Value Name** column, type the url of the federation service beginning with https. In the **Value** column, type the number **1**. Select OK twice, then close the Group Policy Management Editor

### Deploy the Intranet Zone Group Policy object

1. Start the **Group Policy Management Console** (gpmc.msc)
1. In the navigation pane, expand the domain and right-click the node that has your Active Directory domain name and select **Link an existing GPO…**
1. In the **Select GPO** dialog box, select **Intranet Zone Settings** or the name of the Windows Hello for Business Group Policy object you previously created and select **OK**

## Review to validate the configuration

Before you continue with the deployment, validate your deployment progress by reviewing the following items:

> [!div class="checklist"]
> * Confirm only the AD FS service account has the allow enroll permission for the enrollment agent certificate template
> * Consider using an HSM to protect the enrollment agent certificate; however, understand the frequency and quantity of signature operations the enrollment agent server makes and understand the impact it has on overall performance
> * Confirm you properly configured the Windows Hello for Business authentication certificate template
> * Confirm all certificate templates were properly published to the appropriate issuing certificate authorities
> * Confirm the AD FS service account has the allow enroll permission for the Windows Hello Business authentication certificate template
> * Confirm the AD FS certificate registration authority is properly configured using the `Get-AdfsCertificateAuthority` Windows PowerShell cmdlet
> Confirm you restarted the AD FS service
> * Confirm you properly configured load-balancing (hardware or software)
> * Confirm you created a DNS A Record for the federation service and the IP address used is the load-balanced IP address
> * Confirm you created and deployed the Intranet Zone settings to prevent double authentication to the federation server.

### Event Logs

Use the event logs on the AD FS service to confirm the service account enrolled for an enrollment agent certificate.  First, look for the AD FS event ID 443 that confirms certificate enrollment cycle has finished. Once confirmed the AD FS certificate enrollment cycle completed review the *CertificateLifecycle-User* event log. In this event log, look for event ID 1006, which indicates a new certificate was installed. Details of the event log should show:

- The account name under which the certificate was enrolled
- The action, which should read enroll
-_ The thumbprint of the certificate
- The certificate template used to issue the certificate

You cannot use the Certificate Manager to view enrolled certificates for group managed service accounts. Use the event log information to confirm the AD FS service account enrolled a certificate. Use certutil.exe to view the details of the certificate shown in the event log.

Group managed service accounts use user profiles to store user information, which included enrolled certificates. On the AD FS server, use a command prompt and navigate to `%systemdrive%\users\<adfsGMSA_name>\appdata\roaming\Microsoft\systemcertificates\my\certificates`.

Each file in this folder represents a certificate in the service account's Personal store (You may need to use `dir.exe /A` to view the files in the folder). Match the thumbprint of the certificate from the event log to one of the files in this folder. That file is the certificate. Use the `Certutil -q <certificateThumbprintFileName>` to view the basic information about the certificate.

For detailed information about the certificate, use `Certutil -q -v <certificateThumbprintFileName>`.

> [!div class="nextstepaction"]
> [Next: validate and deploy multi-factor authentication (MFA) >](on-premises-cert-trust-mfa.md)

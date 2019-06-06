---
title: Prepare and Deploy Windows Server 2016 Active Directory Federation Services (Windows Hello for Business)
description: How toPrepare and Deploy Windows Server 2016 Active Directory Federation Services for Windows Hello for Business
keywords: identity, PIN, biometric, Hello, passport
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
audience: ITPro
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 08/19/2018
ms.reviewer: 
---
# Prepare and Deploy Windows Server 2016 Active Directory Federation Services

**Applies to**
-   Windows 10, version 1703 or later
-   On-premises deployment
-   Certificate trust


Windows Hello for Business works exclusively with the Active Directory Federation Service role included with Windows Server 2016 and requires an additional server update.  The on-premises certificate trust deployment uses Active Directory Federation Services roles for key registration, device registration, and as a certificate registration authority.

The following guidance describes deploying a new instance of Active Directory Federation Services 2016 using the Windows Information Database as the configuration database, which is ideal for environments with no more than 30 federation servers and no more than 100 relying party trusts.

If your environment exceeds either of these factors or needs to provide SAML artifact resolution, token replay detection, or needs Active Directory Federation Services to operate in a federated provider role, then your deployment needs to use a SQL for your configuration database. To deploy the Active Directory Federation Services using SQL as its configuration database, please review the [Deploying a Federation Server Farm](https://docs.microsoft.com/windows-server/identity/ad-fs/deployment/deploying-a-federation-server-farm) checklist.

If your environment has an existing instance of Active Directory Federation Services, then you’ll need to upgrade all nodes in the farm to Windows Server 2016 along with the Windows Server 2016 update.  If your environment uses Windows Internal Database (WID) for the configuration database, please read [Upgrading to AD FS in Windows Server 2016 using a WID database](https://docs.microsoft.com/windows-server/identity/ad-fs/deployment/upgrading-to-ad-fs-in-windows-server-2016) to upgrade your environment.  If your environment uses SQL for the configuration database, please read [Upgrading to AD FS in Windows Server 2016 with SQL Server](https://docs.microsoft.com/windows-server/identity/ad-fs/deployment/upgrading-to-ad-fs-in-windows-server-2016-sql) to upgrade your environment.

Ensure you apply the Windows Server 2016 Update to all nodes in the farm after you have successfully completed the upgrade. 

A new Active Directory Federation Services farm should have a minimum of two federation servers for proper load balancing, which can be accomplished with an external networking peripherals, or with using the Network Load Balancing Role included in Windows Server.

Prepare the Active Directory Federation Services deployment by installing and updating two Windows Server 2016 Servers.  Ensure the update listed below is applied to each server before continuing.    

##  Update Windows Server 2016

Sign-in the federation server with _local admin_ equivalent credentials.
1.	Ensure Windows Server 2016 is current by running **Windows Update** from **Settings**. Continue this process until no further updates are needed. If you’re not using Windows Update for updates, please advise the [Windows Server 2016 update history page](https://support.microsoft.com/help/4000825/windows-10-windows-server-2016-update-history) to make sure you have the latest updates available installed.
2.	Ensure the latest server updates to the federation server includes [KB4088889 (14393.2155)](https://support.microsoft.com/help/4088889).

>[!IMPORTANT]
>The above referenced updates are mandatory for Windows Hello for Business all on-premises deployment and hybrid certificate trust deployments for domain joined computers.

## Enroll for a TLS Server Authentication Certificate

Windows Hello for Business on-premises deployments require a federation server for device registration, key registration, and authentication certificate enrollment.  Typically, a federation service is an edge facing role.  However, the federation services and instance used with the on-premises deployment of Windows Hello for Business does not need Internet connectivity.  

The AD FS role needs a server authentication certificate for the federation services, but you can use a certificate issued by your enterprise (internal) certificate authority.  The server authentication certificate should have the following names included in the certificate if you are requesting an individual certificate for each node in the federation farm:
* Subject Name: The internal FQDN of the federation server (the name of the computer running AD FS)
* Subject Alternate Name: Your federation service name, such as *fs.corp.contoso.com* (or an appropriate wildcard entry such as *.corp.contoso.com)

You configure your federation service name when you configure the AD FS role. You can choose any name, but that name must be different than the name of the server or host. For example, you can name the host server **adfs** and the federation service **fs**.  The FQDN of the host is adfs.corp.contoso.com and the FQDN of the federation service is fs.corp.contoso.com.

You can; however, issue one certificate for all hosts in the farm.  If you chose this option, then leave the subject name blank, and include all the names in the subject alternate name when creating the certificate request.  All names should include the FQDN of each host in the farm and the federation service name.  

It’s recommended that you mark the private key as exportable so that the same certificate can be deployed across each federation server and web application proxy within your AD FS farm. Note that the certificate must be trusted (chain to a trusted root CA). Once you have successfully requested and enrolled the server authentication certificate on one node, you can export the certificate and private key to a PFX file using the Certificate Manager console. You can then import the certificate on the remaining nodes in the AD FS farm. 

Be sure to enroll or import the certificate into the AD FS server’s computer certificate store.  Also, ensure all nodes in the farm have the proper TLS server authentication certificate.

### Internal Web Server Authentication Certificate Enrollment
Sign-in the federation server with domain administrator equivalent credentials.

1. Start the Local Computer **Certificate Manager** (certlm.msc).
2. Expand the **Personal** node in the navigation pane.
3. Right-click **Personal**. Select **All Tasks** and **Request New Certificate**.
4. Click **Next** on the **Before You Begin** page.
5. Click **Next** on the **Select Certificate Enrollment Policy** page.
6. On the **Request Certificates** page, Select the **Internal Web Server** check box.
7. Click the **More information is required to enroll for this certificate. Click here to configure settings** link   
    ![Example of Certificate Properties Subject Tab - This is what shows when you click the above link](images/hello-internal-web-server-cert.png)
8. Under **Subject name**, select **Common Name** from the **Type** list.  Type the FQDN of the computer hosting the Active Directory Federation Services role and then click **Add**.  Under **Alternative name**, select **DNS** from the **Type** list.  Type the FQDN of the name you will use for your federation services (fs.corp.contoso.com). The name you use here MUST match the name you use when configuring the Active Directory Federation Services server role.  Click **Add**. Click **OK** when finished.
9. Click **Enroll**.

A server authentication certificate should appear in the computer’s Personal certificate store.

## Deploy the Active Directory Federation Service Role

The Active Directory Federation Service (AD FS) role provides the following services to support Windows Hello for Business on-premises deployments.
* Device registration
* Key registration 
* Certificate registration authority (certificate trust deployments)

>[!IMPORTANT]
> Finish the entire AD FS configuration on the first server in the farm before adding the second server to the AD FS farm.  Once complete, the second server receives the configuration through the shared configuration database when it is added the AD FS farm. 

Windows Hello for Business depends on proper device registration.  For on-premises deployments, Windows Server 2016 AD FS handles device registration.

Sign-in the federation server with _Enterprise Admin_ equivalent credentials.
1.	Start **Server Manager**.  Click **Local Server** in the navigation pane.
2.	Click **Manage** and then click **Add Roles and Features**.
3.	Click **Next** on the **Before you begin** page.
4.	On the **Select installation type** page, select **Role-based or feature-based installation** and click **Next**.
5.	On the **Select destination server** page, choose **Select a server from the server pool**.  Select the federation server from the **Server Pool** list.  Click **Next**.
6.	On the **Select server roles** page, select **Active Directory Federation Services**.  Click **Next**.
7.	Click **Next** on the **Select features** page.
8.	Click **Next** on the **Active Directory Federation Service** page.
9.	Click **Install** to start the role installation.

## Review

Before you continue with the deployment, validate your deployment progress by reviewing the following items:
* Confirm the AD FS farm uses the correct database configuration.
* Confirm the AD FS farm has an adequate number of nodes and is properly load balanced for the anticipated load.
* Confirm **all** AD FS servers in the farm have the latest updates.
* Confirm all AD FS servers have a valid server authentication certificate    
    * The subject of the certificate is the common name (FQDN) of the host or a wildcard name.
    * The alternate name of the certificate contains a wildcard or the FQDN of the federation service

## Device Registration Service Account Prerequisite

The service account used for the device registration server depends on the domain controllers in the environment.  

>[!NOTE]
> Follow the procedures below based on the domain controllers deployed in your environment.  If the domain controller is not listed below, then it is not supported for Windows Hello for Business.

### Windows Server 2012 or later Domain Controllers

Windows Server 2012 or later domain controllers support Group Managed Service Accounts—the preferred way to deploy service accounts for services that support them.  Group Managed Service Accounts, or GMSA have security advantages over normal user accounts because Windows handles password management.  This means the password is long, complex, and changes periodically.  The best part of GMSA is all this happens automatically.  AD FS supports GMSA and should be configured using them for additional defense in depth security.

GSMA uses the Microsoft Key Distribution Service that is located on Windows Server 2012 or later domain controllers.  Windows uses the Microsoft Key Distribution Service to protect secrets stored and used by the GSMA.  Before you can create a GSMA, you must first create a root key for the service.  You can skip this if your environment already uses GSMA.

#### Create KDS Root Key

Sign-in a domain controller with _Enterprise Admin_ equivalent credentials.
1. Start an elevated Windows PowerShell console.
2. Type `Add-KdsRootKey -EffectiveTime (Get-Date).AddHours(-10)`

### Windows Server 2008 or 2008 R2 Domain Controllers

Windows Server 2008 and 2008 R2 domain controllers do not host the Microsoft Key Distribution Service, nor do they support Group Managed Service Accounts.  Therefore, you must use create a normal user account as a service account where you are responsible for changing the password on a regular basis.

#### Create an AD FS Service Account

Sign-in a domain controller or management workstation with _Domain Admin_ equivalent credentials.
1.	Open **Active Directory Users and Computers**.
2.	Right-click the **Users** container, Click **New**. Click **User**.
3.	In the **New Object – User** window, type **adfssvc** in the **Full name** text box.  Type **adfssvc** in the **User logon name** text box.  Click **Next**.
4.	Enter and confirm a password for the **adfssvc** user. Clear the **User must change password at next logon** check box.
5.	Click **Next** and then click **Finish**.

## Configure the Active Directory Federation Service Role

>[!IMPORTANT]
> Follow the procedures below based on the domain controllers deployed in your environment. If the domain controller is not listed below, then it is not supported for Windows Hello for Business.

### Windows Server 2012 or later Domain Controllers

Use the following procedures to configure AD FS when your environment uses **Windows Server 2012 or later Domain Controllers**.  If you are not using Windows Server 2012 or later Domain Controllers, follow the procedures under the [Configure the Active Directory Federation Service Role (Windows Server 2008 or 2008R2 Domain Controllers)](#windows-server-2008-or-2008R2-domain-controllers) section.

Sign-in the federation server with _domain administrator_ equivalent credentials. These procedures assume you are configuring the first federation server in a federation server farm.

1. Start **Server Manager**.
2. Click the notification flag in the upper right corner. Click **Configure federation services on this server**.
![Example of pop-up notification as described above](images/hello-adfs-configure-2012r2.png)
3. On the **Welcome** page, click **Create the first federation server farm** and click **Next**.
4. Click **Next** on the **Connect to Active Directory Domain Services** page.
5. On the **Specify Service Properties** page, select the recently enrolled or imported certificate from the **SSL Certificate** list.  The certificate is likely named after your federation service, such as *fs.corp.contoso.com* or *fs.contoso.com*.
6. Select the federation service name from the **Federation Service Name** list.
7. Type the Federation Service Display Name in the text box.  This is the name users see when signing in.  Click **Next**.
8. On the **Specify Service Account** page, select **Create a Group Managed Service Account**.  In the **Account Name** box, type **adfssvc**.
9. On the **Specify Configuration Database** page, select **Create a database on this server using Windows Internal Database** and click **Next**.
10. On the **Review Options** page, click **Next**.
11. On the **Pre-requisite Checks** page, click **Configure**.
12. When the process completes, click **Close**.

### Windows Server 2008 or 2008 R2 Domain Controllers

Use the following procedures to configure AD FS when your environment uses **Windows Server 2008 or 2008 R2 Domain Controllers**.  If you are not using Windows Server 2008 or 2008 R2 Domain Controllers, follow the procedures under the [Configure the Active Directory Federation Service Role (Windows Server 2012 or later Domain Controllers)](#windows-server-2012-or-later-domain-controllers) section.

Sign-in the federation server with _domain administrator_ equivalent credentials.  These instructions assume you are configuring the first federation server in a federation server farm.

1. Start **Server Manager**.
2. Click the notification flag in the upper right corner.  Click **Configure federation services on this server**.
![Example of pop-up notification as described above](images/hello-adfs-configure-2012r2.png)
3. On the **Welcome** page, click **Create the first federation server farm** and click **Next**.
4. Click **Next** on the **Connect to Active Directory Domain Services** page.
5. On the **Specify Service Properties** page, select the recently enrolled or imported certificate from the **SSL Certificate** list. The certificate is likely named after your federation service, such as fs.corp.mstepdemo.net or fs.mstepdemo.net.
6. Select the federation service name from the **Federation Service Name** list.
7. Type the Federation Service Display Name in the text box. This is the name users see when signing in. Click **Next**.
8. On the **Specify Service Account** page, Select **Use an existing domain user account or group Managed Service Account** and click **Select**.  In the **Select User or Service Account** dialog box, type the name of the previously created AD FS service account (example adfssvc) and click **OK**. Type the password for the AD FS service account and click **Next**.
9. On the **Specify Configuration Database** page, select **Create a database on this server using Windows Internal Database** and click **Next**.
10. On the **Review Options** page, click **Next**.
11. On the **Pre-requisite Checks** page, click **Configure**.
12. When the process completes, click **Close**.
13. Do not restart the AD FS server. You will do this later.


### Add the AD FS Service account to the KeyCredential Admin group and the Windows Hello for Business Users group

The **KeyCredential Administrators** global group provides the AD FS service with the permissions needed to perform key registration.  The Windows Hello for Business group provides the AD FS service with the permissions needed to enroll a Windows Hello for Business authentication certificate on behalf of the provisioning user.

Sign-in a domain controller or management workstation with _Domain Admin_ equivalent credentials.
1. Open **Active Directory Users and Computers**.
2. Click the **Users** container in the navigation pane.
3. Right-click **KeyCredential Admins** in the details pane and click **Properties**.
4. Click the **Members** tab and click **Add…**
5. In the **Enter the object names to select** text box, type **adfssvc**.  Click **OK**.
6. Click **OK** to return to **Active Directory Users and Computers**.
7. Right-click **Windows Hello for Business Users** group
8. Click the **Members** tab and click **Add…**
9. In the **Enter the object names to select** text box, type **adfssvc**.  Click **OK**.
10.	Click **OK** to return to **Active Directory Users and Computers**.
11.	Change to server hosting the AD FS role and restart it.

### Configure Permissions for Key Registration

Key Registration stores the Windows Hello for Business public key in Active Directory.  With on-premises deployments, the Windows Server 2016 AD FS server registers the public key with the on-premises Active Directory.

The key-trust model needs Windows Server 2016 domain controllers, which configures the key registration permissions automatically; however, the certificate-trust model does not and requires you to add the permissions manually. 

Sign-in a domain controller or management workstations with _Domain Admin_ equivalent credentials.
1. Open **Active Directory Users and Computers**.
2. Right-click your domain name from the navigation pane and click **Properties**.
3. Click **Security** (if the Security tab is missing, turn on Advanced Features from the View menu).
4. Click **Advanced**. Click **Add**. Click **Select a principal**.
5. The **Select User, Computer, Service Account, or Group** dialog box appears. In the **Enter the object name to select** text box, type **KeyCredential Admins**.  Click **OK**.
6. In the **Applies to** list box, select **Descendant User objects**.
7. Using the scroll bar, scroll to the bottom of the page and click **Clear all**.
8. In the **Properties** section, select **Read msDS-KeyCredentialLink** and **Write msDS-KeyCrendentialLink**.
9. Click **OK** three times to complete the task. 

## Configure the Device Registration Service

Sign-in the federation server with _Enterprise Admin_ equivalent credentials. These instructions assume you are configuring the first federation server in a federation server farm.
1. Open the **AD FS management** console.
2. In the navigation pane, expand **Service**. Click **Device Registration**.
3. In the details pane, click **Configure Device Registration**.
4. In the **Configure Device Registration** dialog, click **OK**.

## Review

Before you continue with the deployment, validate your deployment progress by reviewing the following items:
* Confirm you followed the correct procedures based on the domain controllers used in your deployment   
    * Windows Server 2012 or Windows Server 2012 R2
    * Windows Server 2008 or Windows Server 2008 R2
* Confirm you have the correct service account based on your domain controller version.
* Confirm you properly installed the AD FS role on your Windows Server 2016 based on the proper sizing of your federation, the number of relying parties, and database needs.
* Confirm you used a certificate with the correct names as the server authentication certificate
    * Record the expiration date of the certificate and set a renewal reminder at least six weeks before it expires that includes the:
        * Certificate serial number
        * Certificate thumbprint
        * Common name of the certificate
        * Subject alternate name of the certificate
        * Name of the physical host server
        * The issued date
        * The expiration date
        * Issuing CA Vendor (if a third-party certificate) 
* Confirm you granted the AD FS service allow read and write permissions to the ms-DSKeyCredentialLink Active Directory attribute.
* Confirm you enabled the Device Registration service.

## Prepare and Deploy AD FS Registration Authority

A registration authority is a trusted authority that validates certificate request.  Once it validates the request, it presents the request to the certificate authority for issuance.  The certificate authority issues the certificate, returns it to the registration authority, which returns the certificate to the requesting user.  The Windows Hello for Business on-premises certificate-based deployment uses the Active Directory Federation Server (AD FS) as the certificate registration authority.

### Configure Registration Authority template

The certificate registration authority enrolls for an enrollment agent certificate. Once the registration authority verifies the certificate request, it signs the certificate request using its enrollment agent certificate and sends it to the certificate authority. The Windows Hello for Business Authentication certificate template is configured to only issue certificates to certificate requests that have been signed with an enrollment agent certificate. The certificate authority only issues a certificate for that template if the registration authority signs the certificate request.

The registration authority template you configure depends on the AD FS service configuration, which depends on the domain controllers the environment uses for authentication.

>[!IMPORTANT]
>Follow the procedures below based on the domain controllers deployed in your environment. If the domain controller is not listed below, then it is not supported for Windows Hello for Business.

#### Windows 2012 or later domain controllers
Sign-in a certificate authority or management workstations with _domain administrator_ equivalent credentials.

1. Open the **Certificate Authority Management** console.
2. Right-click **Certificate Templates** and click **Manage**.
3. In the **Certificate Template Console**, right click on the **Exchange Enrollment Agent (Offline request)** template details pane and click **Duplicate Template**.
4. On the **Compatibility** tab, clear the **Show resulting changes** check box. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Authority** list. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Recipient** list.
5. On the **General** tab, type **WHFB Enrollment Agent** in **Template display name**.  Adjust the validity and renewal period to meet your enterprise’s needs.
6. On the **Subject** tab, select the **Supply in the request** button if it is not already selected.

>[!NOTE]
> The preceding step is very important.  Group Managed Service Accounts (GMSA) do not support the Build from this Active Directory information option and will result in the AD FS server failing to enroll the enrollment agent certificate.  You must configure the certificate template with Supply in the request to ensure that AD FS servers can perform the automatic enrollment and renewal of the enrollment agent certificate.

7. On the **Cryptography** tab, select **Key Storage Provider** from the **Provider Category** list.  Select **RSA** from the **Algorithm name** list.  Type **2048** in the **Minimum key size** text box.  Select **SHA256** from the **Request hash** list.
8. On the **Security** tab, click **Add**.
9. Click **Object Types**.  Select the **Service Accounts** check box and click **OK**.
10. Type **adfssvc** in the **Enter the object names to select** text box and click **OK**.
11. Click the **adfssvc** from the **Group or users names** list. In the **Permissions for adfssvc** section, In the **Permissions for adfssvc** section, select the **Allow** check box for the **Enroll** permission. Excluding the **adfssvc** user, clear the **Allow** check box for the **Enroll** and **Autoenroll** permissions for all other items in the **Group or users names** list if the check boxes are not already cleared. Click **OK**.
12. Close the console.

#### Windows 2008 or 2008R2 domain controllers

Sign-in a certificate authority or management workstations with _Domain Admin_ equivalent credentials.
1. Open the **Certificate Authority** management console.
2. Right-click **Certificate Templates** and click **Manage**.
3. In the **Certificate Template** console, right-click the **Exchange Enrollment Agent** template in the details pane and click **Duplicate Template**.
4. On the **Compatibility** tab, clear the **Show resulting changes** check box.  Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Authority** list. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Recipient** list.
5. On the **General** tab, type **WHFB Enrollment Agent** in **Template display name**.  Adjust the validity and renewal period to meet your enterprise’s needs.
6. On the **Subject** tab, select the **Build from this Active Directory information** button if it is not already selected. Select **Fully distinguished name** from the **Subject name format** list if **Fully distinguished name** is not already selected.  Select the **User Principal Name (UPN)** check box under **Include this information in alternative subject name**.
7. On the **Cryptography** tab, select **Key Storage Provider** from the **Provider Category** list.  Select **RSA** from the **Algorithm name** list.  Type **2048** in the **Minimum key size** text box.  Select **SHA256** from the **Request hash** list.
8. On the **Security** tab, click **Add**. Type **adfssvc** in the **Enter the object names to select text box** and click **OK**.
9. Click the **adfssvc** from the **Group or users names** list. In the **Permissions for adfssvc** section, select the **Allow** check box for the **Enroll** permission. Excluding the **adfssvc** user, clear the **Allow** check boxes for the **Enroll** and **Autoenroll** permissions for all other items in the **Group or users names** list if the check boxes are not already cleared. Click **OK**. 
10.	Close the console.

### Configure the Windows Hello for Business Authentication Certificate template

During Windows Hello for Business provisioning, the Windows 10, version 1703 client requests an authentication certificate from the Active Directory Federation Service, which requests the authentication certificate on behalf of the user.  This task configures the Windows Hello for Business authentication certificate template.  You use the name of the certificate template when configuring.

Sign-in a certificate authority or management workstations with _domain administrator equivalent_ credentials.
1. Open the **Certificate Authority** management console.
2. Right-click **Certificate Templates** and click **Manage**.
3. Right-click the **Smartcard Logon** template and choose **Duplicate Template**.
4. On the **Compatibility** tab, clear the **Show resulting changes** check box.  Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Authority** list. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Recipient** list.
5. On the **General** tab, type **WHFB Authentication** in **Template display name**.  Adjust the validity and renewal period to meet your enterprise’s needs.   
    **Note:** If you use different template names, you’ll need to remember and substitute these names in different portions of the deployment.
6. On the **Cryptography** tab, select **Key Storage Provider** from the **Provider Category** list.  Select **RSA** from the **Algorithm name** list.  Type **2048** in the **Minimum key size** text box.  Select **SHA256** from the **Request hash** list.  
7. On the **Extensions** tab, verify the **Application Policies** extension includes **Smart Card Logon**.
8. On the **Issuance Requirements** tab, select the T**his number of authorized signatures** check box.  Type **1** in the text box.   
    * Select **Application policy** from the **Policy type required in signature**.	Select **Certificate Request Agent** from in the **Application policy** list. Select the **Valid existing certificate** option.
9. On the **Subject** tab, select the **Build from this Active Directory information** button if it is not already selected. Select **Fully distinguished name** from the **Subject name format** list if **Fully distinguished name** is not already selected. Select the **User Principal Name (UPN)** check box under **Include this information in alternative subject name**.
10.	On the **Request Handling** tab, select the **Renew with same key** check box.
11.	On the **Security** tab, click **Add**. Type **Window Hello for Business Users** in the **Enter the object names to select** text box and click **OK**.
12.	Click the **Windows Hello for Business Users** from the **Group or users names** list. In the **Permissions for Windows Hello for Business Users** section, select the **Allow** check box for the **Enroll** permission. Excluding the **Windows Hello for Business Users** group, clear the **Allow** check box for the **Enroll** and **Autoenroll** permissions for all other entries in the **Group or users names** section if the check boxes are not already cleared. Click **OK**. 
13.	If you previously issued Windows Hello for Business sign-in certificates using Configuration Manger and are switching to an AD FS registration authority, then on the **Superseded Templates** tab, add the previously used **Windows Hello for Business Authentication** template(s), so they will be superseded by this template for the users that have Enroll permission for this template.
14.	Click on the **Apply** to save changes and close the console.

#### Mark the template as the Windows Hello Sign-in template 

Sign-in to an **AD FS Windows Server 2016** computer with _enterprise administrator_ equivalent credentials.
1. Open an elevated command prompt.
2. Run `certutil –dsTemplate WHFBAuthentication msPKI-Private-Key-Flag +CTPRIVATEKEY_FLAG_HELLO_LOGON_KEY`

>[!NOTE]
>If you gave your Windows Hello for Business Authentication certificate template a different name, then replace **WHFBAuthentication** in the above command with the name of your certificate template. It’s important that you use the template name rather than the template display name. You can view the template name on the **General** tab of the certificate template using the Certificate Template management console (certtmpl.msc).  Or, you can view the template name using the **Get-CATemplate** ADCS Administration Windows PowerShell cmdlet on our Windows Server 2012 or later certificate authority.

### Publish Enrollment Agent and Windows Hello For Business Authentication templates to the Certificate Authority

Sign-in a certificate authority or management workstations with _Enterprise Admin_ equivalent credentials.
1. Open the **Certificate Authority** management console.
2. Expand the parent node from the navigation pane.
3. Click **Certificate Templates** in the navigation pane.
4. Right-click the **Certificate Templates** node.  Click **New**, and click **Certificate Template to issue**.
5. In the **Enable Certificates Templates** window, select the **WHFB Enrollment Agent** template you created in the previous steps.  Click **OK** to publish the selected certificate templates to the certificate authority.
6. Publish the **WHFB Authentication** certificate template using step 5. 
7. Close the console.

### Configure the Registration Authority

Sign-in the AD FS server with domain administrator equivalent credentials. 

1. Open a **Windows PowerShell** prompt.
2. Type the following command   
  
   ```PowerShell
   Set-AdfsCertificateAuthority -EnrollmentAgent -EnrollmentAgentCertificateTemplate WHFBEnrollmentAgent -WindowsHelloCertificateTemplate WHFBAuthentication
   ```
   >[!NOTE]
   > If you gave your Windows Hello for Business Enrollment Agent and Windows Hello for Business Authentication certificate templates different names, then replace **WHFBEnrollmentAgent** and WHFBAuthentication in the above command with the name of your certificate templates.  It’s important that you use the template name rather than the template display name.  You can view the template name on the **General** tab of the certificate template using the **Certificate Template** management console (certtmpl.msc).  Or, you can view the template name using the **Get-CATemplate** ADCS Administration Windows PowerShell cmdlet on a Windows Server 2012 or later certificate authority.

### Enrollment Agent Certificate Enrollment

Active Directory Federation Server used for Windows Hello for Business certificate enrollment perform their own certificate lifecycle management.  Once the registration authority is configured with the proper certificate template, the AD FS server attempts to enroll the certificate on the first certificate request or when the service first starts.

Approximately 60 days prior to enrollment agent certificate’s expiration, the AD FS service attempts to renew the certificate until it is successful.  If the certificate fails to renew, and the certificate expires, the AD FS server will request a new enrollment agent certificate.  You can view the AD FS event logs to determine the status of the enrollment agent certificate.

### Service Connection Point (SCP) in Active Directory for ADFS Device Registration Service
Now you will add the Service connection Point to ADFS device registration Service for your Active directory by running the following script:

>[!TIP] 
> Make sure to change the $enrollmentService and $configNC variables before running the script.

```Powershell
# Replace this with your Device Registration Service endpoint
$enrollmentService = "enterpriseregistration.contoso.com"
# Replace this with your Active Directory configuration naming context 
$configNC = "CN=Configuration,DC=corp,DC=contoso,DC=org" 
 
$de = New-Object System.DirectoryServices.DirectoryEntry
$de.Path = "LDAP://CN=Device Registration Configuration,CN=Services," + $configNC

$deSCP = $de.Children.Add("CN=62a0ff2e-97b9-4513-943f-0d221bd30080", "serviceConnectionPoint")
$deSCP.Properties["keywords"].Add("enterpriseDrsName:" + $enrollmentService)
$deSCP.CommitChanges()
```

>[!NOTE] 
> You can save the modified script in notepad and save them as "add-scpadfs.ps1" and the way to run it is just navigating into the script path folder and running .\add-scpAdfs.ps1.
>

## Additional Federation Servers

Organizations should deploy more than one federation server in their federation farm for high-availability.  You should have a minimum of two federation services in your AD FS farm, however most organizations are likely to have more.  This largely depends on the number of devices and users using the services provided by the AD FS farm. 

### Server Authentication Certificate

Each server you add to the AD FS farm must have a proper server authentication certificate.  Refer to the [Enroll for a TLS Server Authentication Certificate](#enroll-for-a-tls-server-authentication-certificate) section of this document to determine the requirements for your server authentication certificate.  As previously stated, AD FS servers used exclusively for on-premises deployments of Windows Hello for Business can use enterprise server authentication certificates rather than server authentication certificates issued by public certificate authorities.

### Install Additional Servers

Adding federation servers to the existing AD FS farm begins with ensuring the server are fully patched, to include Windows Server 2016 Update needed to support Windows Hello for Business deployments (https://aka.ms/whfbadfs1703). Next, install the Active Directory Federation Service role on the additional servers and then configure the server as an additional server in an existing farm. 

## Load Balance AD FS Federation Servers

Many environments load balance using hardware devices.  Environments without hardware load-balancing capabilities can take advantage the network load-balancing feature included in Windows Server to load balance the AD FS servers in the federation farm.  Install the Windows Network Load Balancing feature on all nodes participating in the AD FS farm that should be load balanced.

### Install Network Load Balancing Feature on AD FS Servers

Sign-in the federation server with _Enterprise Admin_ equivalent credentials.
1. Start **Server Manager**.  Click **Local Server** in the navigation pane.
2. Click **Manage** and then click **Add Roles and Features**.
3. Click **Next** On the **Before you begin** page.
4. On the **Select installation type** page, select **Role-based or feature-based installation** and click **Next**.
5. On the **Select destination server** page, choose **Select a server from the server pool**.  Select the federation server from the **Server Pool** list.  Click **Next**.
6. On the **Select server roles** page, click **Next**.
7. Select **Network Load Balancing** on the **Select features** page.
8. Click **Install** to start the feature installation   
    ![Feature selection screen with NLB selected](images/hello-nlb-feature-install.png)

### Configure Network Load Balancing for AD FS

Before you can load balance all the nodes in the AD FS farm, you must first create a new load balance cluster.  Once you have created the cluster, then you can add new nodes to that cluster.

Sign-in a node of the federation farm with _Admin_ equivalent credentials.
1. Open **Network Load Balancing Manager** from **Administrative Tools**.   
    ![NLB Manager user interface](images/hello-nlb-manager.png)
2. Right-click **Network Load Balancing Clusters**, and then click **New Cluster**.
3. To connect to the host that is to be a part of the new cluster, in the **Host** text box, type the name of the host, and then click **Connect**.   
    ![NLB Manager - Connect to new Cluster screen](images/hello-nlb-connect.png)
4. Select the interface that you want to use with the cluster, and then click **Next**. (The interface hosts the virtual IP address and receives the client traffic to load balance.)
5. In **Host Parameters**, select a value in **Priority (Unique host identifier)**. This parameter specifies a unique ID for each host. The host with the lowest numerical priority among the current members of the cluster handles all of the cluster's network traffic that is not covered by a port rule. Click **Next**.
6. In **Cluster IP Addresses**, click **Add** and type the cluster IP address that is shared by every host in the cluster. NLB adds this IP address to the TCP/IP stack on the selected interface of all hosts that are chosen to be part of the cluster. Click **Next**.   
    ![NLB Manager - Add IP to New Cluster screen](images/hello-nlb-add-ip.png)
7. In **Cluster Parameters**, select values in **IP Address** and **Subnet mask** (for IPv6 addresses, a subnet mask value is not needed). Type the full Internet name that users will use to access this NLB cluster.   
    ![NLB Manager - Cluster IP Configuration screen](images/hello-nlb-cluster-ip-config.png)
8. In **Cluster operation mode**, click **Unicast** to specify that a unicast media access control (MAC) address should be used for cluster operations. In unicast mode, the MAC address of the cluster is assigned to the network adapter of the computer, and the built-in MAC address of the network adapter is not used. We recommend that you accept the unicast default settings. Click **Next**.
9. In Port Rules, click Edit to modify the default port rules to use port 443.   
    ![NLB Manager - Add\Edit Port Rule screen](images/hello-nlb-cluster-port-rule.png)

### Additional AD FS Servers

1. To add more hosts to the cluster, right-click the new cluster, and then click **Add Host to Cluster**.
2. Configure the host parameters (including host priority, dedicated IP addresses, and load weight) for the additional hosts by following the same instructions that you used to configure the initial host. Because you are adding hosts to an already configured cluster, all the cluster-wide parameters remain the same.   
    ![NLB Manager - Cluster with nodes](images/hello-nlb-cluster.png)

## Configure DNS for Device Registration

Sign-in the domain controller or administrative workstation with domain administrator equivalent credentials.  You’ll need the Federation service name to complete this task.  You can view the federation service name by clicking **Edit Federation Service Properties** from the **Action** pan of the **AD FS** management console, or by using `(Get-AdfsProperties).Hostname.` (PowerShell) on the AD FS server.
1. Open the **DNS Management** console.
2. In the navigation pane, expand the domain controller name node and **Forward Lookup Zones**.
3. In the navigation pane, select the node that has the name of your internal Active Directory domain name.
4. In the navigation pane, right-click the domain name node and click **New Host (A or AAAA)**.
5. In the **name** box, type the name of the federation service. In the **IP address** box, type the IP address of your federation server. Click **Add Host**. 
6. Close the DNS Management console 

## Configure the Intranet Zone to include the federation service

The Windows Hello provisioning presents web pages from the federation service.  Configuring the intranet zone to include the federation service enables the user to authenticate to the federation service using integrated authentication.  Without this setting, the connection to the federation service during Windows Hello provisioning prompts the user for authentication. 

### Create an Intranet Zone Group Policy

Sign-in the domain controller or administrative workstation with _Domain Admin_ equivalent credentials
1. Start the **Group Policy Management Console** (gpmc.msc)
2. Expand the domain and select the **Group Policy Object** node in the navigation pane.
3. Right-click **Group Policy object** and select **New**
4. Type **Intranet Zone Settings** in the name box and click **OK**.
5. In the content pane, right-click the **Intranet Zone Settings** Group Policy object and click **Edit**.
6. In the navigation pane, expand **Policies** under **Computer Configuration**.
7. Expand **Administrative Templates > Windows Component > Internet Explorer > Internet Control Panel**, and select **Security Page**.
8. In the content pane, double-click **Site to Zone Assignment List**. Click **Enable**.
9. Click **Show**. In the **Value Name** column, type the url of the federation service beginning with https. In the **Value** column, type the number **1**.  Click OK twice, then close the Group Policy Management Editor.

### Deploy the Intranet Zone Group Policy object

1.	Start the **Group Policy Management Console** (gpmc.msc)
2.	In the navigation pane, expand the domain and right-click the node that has your Active Directory domain name and click **Link an existing GPO…**
3.	In the **Select GPO** dialog box, select **Intranet Zone Settings** or the name of the Windows Hello for Business Group Policy object you previously created and click **OK**.

## Review

Before you continue with the deployment, validate your deployment progress by reviewing the following items:
* Confirm you configured the correct enrollment agent certificate template based on the type of AD FS service account.
* Confirm only the AD FS service account has the allow enroll permission for the enrollment agent certificate template.
* Consider using an HSM to protect the enrollment agent certificate; however, understand the frequency and quantity of signature operations the enrollment agent server makes and understand the impact it has on overall performance. 
* Confirm you properly configured the Windows Hello for Business authentication certificate template—to include:   
    * Issuance requirements of an authorized signature from a certificate request agent.
    * The certificate template was properly marked as a Windows Hello for Business certificate template using certutil.exe
    * The Windows Hello for Business Users group, or equivalent has the allow enroll and allow auto enroll permissions
* Confirm all certificate templates were properly published to the appropriate issuing certificate authorities.
* Confirm the AD FS service account has the allow enroll permission for the Windows Hello Business authentication certificate template.
* Confirm the AD FS certificate registration authority is properly configured using the `Get-AdfsCertificateAuthority` Windows PowerShell cmdlet.
* Confirm you restarted the AD FS service.
* Confirm you properly configured load-balancing (hardware or software).
* Confirm you created a DNS A Record for the federation service and the IP address used is the load-balanced IP address
* Confirm you created and deployed the Intranet Zone settings to prevent double authentication to the federation server.

## Validating your work

You need to verify the AD FS service has properly enrolled for an enrollment agent certificate template.  You can verify this is a variety ways, depending on if your service account is a normal user account or if the service account is a group managed service account.

### Event Logs

Use the event logs on the AD FS service to confirm the service account enrolled for an enrollment agent certificate.  First, look for the AD FS event ID 443 that confirms certificate enrollment cycle has finished.  Once confirmed the AD FS certificate enrollment cycle completed review the CertificateLifecycle-User event log.  In this event log, look for event ID 1006, which indicates a new certificate was installed.  Details of the event log should show

* The account name under which the certificate was enrolled.
* The action, which should read enroll.
* The thumbprint of the certificate
* The certificate template used to issue the certificate.

### Normal Service Account

When using a normal service account, use the Microsoft Management Console (mmc.exe) and load the Certificate Manager snap-in for the service account and verify.

### Group Managed Service Account

You cannot use the Certificate Manager to view enrolled certificates for group managed service accounts.  Use the event log information to confirm the AD FS service account enrolled a certificate.  Use certutil.exe to view the details of the certificate now shown in the event log.

Group managed service accounts use user profiles to store user information, which included enrolled certificates.  On the AD FS server, use a command prompt and navigate to `%systemdrive%\users\<adfsGMSA_name>\appdata\roaming\Microsoft\systemcertificates\my\certificates` .

Each file in this folder represents a certificate in the service account’s Personal store (You may need to use DIR /A to view the files in the folder).  Match the thumbprint of the certificate from the event log to one of the files in this folder.  That file is the certificate.  Use the `Certutil -q <certificateThumbprintFileName>` to view the basic information about the certificate.

For detailed information about the certificate, use `Certutil -q -v <certificateThumbprintFileName>` .


## Follow the Windows Hello for Business on premises certificate trust deployment guide
1. [Validate Active Directory prerequisites](hello-cert-trust-validate-ad-prereq.md)
2. [Validate and Configure Public Key Infrastructure](hello-cert-trust-validate-pki.md)
3. Prepare and Deploy Windows Server 2016 Active Directory Federation Services (*You are here*)
4. [Validate and Deploy Multifactor Authentication Services (MFA)](hello-cert-trust-validate-deploy-mfa.md)
5. [Configure Windows Hello for Business Policy settings](hello-cert-trust-policy-settings.md)










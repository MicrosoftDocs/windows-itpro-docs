---
title: Use Certificates to enable SSO for Microsoft Entra join devices
description: If you want to use certificates for on-premises single-sign on for Microsoft Entra joined devices, then follow these additional steps.
ms.date: 04/24/2024
ms.topic: how-to
---

# Using Certificates for Microsoft Entra joined on-premises single-sign on

[!INCLUDE [apply-to-hybrid-cert-trust-entra](deploy/includes/apply-to-hybrid-cert-trust-entra.md)]

If you plan to use certificates for on-premises single-sign on, then follow these **additional** steps to configure the environment to enroll Windows Hello for Business certificates for Microsoft Entra joined devices.

> [!IMPORTANT]
> Ensure you have performed the configurations in [Microsoft Entra joined devices for On-premises Single-Sign On](/windows/security/identity-protection/hello-for-business/hello-hybrid-aadj-sso) before you continue.

Steps you'll perform include:

> [!div class="checklist"]
> - [Prepare Microsoft Entra Connect](#prepare-microsoft-entra-connect)
> - [Prepare the Network Device Enrollment Services Service Account](#prepare-the-network-device-enrollment-services-ndes-service-account)
> - [Prepare Active Directory Certificate Services](#prepare-active-directory-certificate-authority)
> - [Install the Network Device Enrollment Services Role](#install-and-configure-the-ndes-role)
> - [Configure Network Device Enrollment Services to work with Microsoft Intune](#configure-network-device-enrollment-services-to-work-with-microsoft-intune)
> - [Download, Install and Configure the Intune Certificate Connector](#download-install-and-configure-the-intune-certificate-connector)
> - [Create and Assign a Simple Certificate Enrollment Protocol (SCEP) Certificate Profile](#create-and-assign-a-simple-certificate-enrollment-protocol-scep-certificate-profile)

## Requirements

You must install and configure additional infrastructure to provide Microsoft Entra joined devices with on-premises single-sign on.

- An existing Windows Server Enterprise Certificate Authority
- A domain joined Windows Server that hosts the Network Device Enrollment Services (NDES) role

### High Availability

The NDES server role acts as a certificate registration authority (CRA). Certificate registration servers enroll certificates on behalf of the user. Users request certificates from the NDES service rather than directly from the issuing certificate authority.

The architecture of the NDES server prevents it from being clustered or load balanced for high availability. To provide high availability, you need to install more than one identically configured NDES servers, and use Microsoft Intune to load balance then (in round-robin fashion).

The Network Device Enrollment Service (NDES) server role can issue up to three unique certificate templates. The server role accomplishes this by mapping the purpose of the certificate request to a configured certificate template. The certificate request purpose has three options:

- Signature
- Encryption
- Signature and Encryption

If you need to deploy more than three types of certificates to the Microsoft Entra joined device, you need additional NDES servers. Alternatively, consider consolidating certificate templates to reduce the number of certificate templates.

### Network Requirements

All communication occurs securely over port 443.

## Prepare Microsoft Entra Connect

Successful authentication to on-premises resources using a certificate requires the certificate to provide a hint about the on-premises domain. The hint can be the user's Active Directory distinguished name as the subject of the certificate, or the hint can be the user's user principal name where the suffix matches the Active Directory domain name.

Most environments change the user principal name suffix to match the organization's external domain name (or vanity domain), which prevents the user principal name as a hint to locate a domain controller. Therefore, the certificate needs the user's on-premises distinguished name in the subject to properly locate a domain controller.

To include the on-premises distinguished name in the certificate's subject, Microsoft Entra Connect must replicate the Active Directory **distinguishedName** attribute to the Microsoft Entra ID **onPremisesDistinguishedName** attribute. Microsoft Entra Connect version 1.1.819 includes the proper synchronization rules needed for these attributes.

### Verify Microsoft Entra Connect version

Sign-in to computer running Microsoft Entra Connect with access equivalent to *local administrator*.

1. Open **Synchronization Services** from the **Microsoft Entra Connect** folder
1. In the **Synchronization Service Manager**, select **Help** and then select **About**
1. If the version number isn't **1.1.819** or later, then upgrade Microsoft Entra Connect to the latest version

### Verify the onPremisesDistinguishedName attribute is synchronized

The easiest way to verify that the onPremisesDistingushedNamne attribute is synchronized is to use the Graph Explorer for Microsoft Graph.

1. Open a web browser and navigate to [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer)
1. Select **Sign in to Graph Explorer** and provide Microsoft Entra ID credentials

   > [!NOTE]
   > To successfully query the Graph API, adequate [permissions](/graph/api/user-get?) must be granted
1. Select **Modify permissions (Preview)**. Scroll down and locate **User.Read.All** (or any other required permission) and select **Consent**. You'll now be prompted for delegated permissions consent
1. In the Graph Explorer URL, enter `https://graph.microsoft.com/v1.0/users/[userid]?$select=displayName,userPrincipalName,onPremisesDistinguishedName`, where **[userid]** is the user principal name of a user in Microsoft Entra ID. Select **Run query**

   > [!NOTE]
   > Because the v1.0 endpoint of the Graph API only provides a limited set of parameters, we will use the $select [Optional OData query parameter](/graph/api/user-get?). For convenience, it is possible to switch the API version selector from **v1.0** to **beta** before performing the query. This will provide all available user information, but remember, **beta** endpoint queries should not be used in production scenarios.

   #### Request

   <!-- {
     "blockType": "request",
     "name": "get_user_select"
   } -->
   ```msgraph-interactive
   GET https://graph.microsoft.com/v1.0/users/{id | userPrincipalName}?$select=displayName,userPrincipalName,onPremisesDistinguishedName
   ```

1. In the returned results, review the JSON data for the **onPremisesDistinguishedName** attribute. Ensure the attribute has a value and that the value is accurate for the given user. If the **onPremisesDistinguishedName** attribute isn't synchronized the value will be **null**

   #### Response
   <!-- {
     "blockType": "response",
     "truncated": true,
     "@odata.type": "microsoft.graph.user"
   } -->
   ```http
   HTTP/1.1 200 OK
   Content-type: application/json

   {
       "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users(displayName,userPrincipalName,onPremisesDistinguishedName)/$entity",
       "displayName": "Nestor Wilke",
       "userPrincipalName": "NestorW@contoso.com",
       "onPremisesDistinguishedName" : "CN=Nestor Wilke,OU=Operations,DC=contoso,DC=com"
   }
   ```

## Prepare the Network Device Enrollment Services (NDES) Service Account

### Create the NDES Servers global security group

The deployment uses the **NDES Servers** security group to assign the NDES service the proper user right assignments.

Sign-in to a domain controller or management workstation with access equivalent to *domain administrator*.

1. Open **Active Directory Users and Computers**
1. Expand the domain node from the navigation pane
1. Right-click the **Users** container. Hover over **New** and select **Group**
1. Type **NDES Servers** in the **Group Name** text box
1. Select **OK**

### Add the NDES server to the NDES Servers global security group

Sign-in to a domain controller or management workstation with access equivalent to *domain administrator*.

1. Open **Active Directory Users and Computers**
1. Expand the domain node from the navigation pane
1. Select **Computers** from the navigation pane. Right-click the name of the NDES server that will host the NDES server role. Select **Add to a group**
1. Type **NDES Servers** in **Enter the object names to select**. Select **OK**. Select **OK** on the **Active Directory Domain Services** success dialog

> [!NOTE]
> For high-availability, you should have more than one NDES server to service Windows Hello for Business certificate requests. You should add additional Windows Hello for Business NDES servers to this group to ensure they receive the proper configuration.

### Create the NDES Service Account

The Network Device Enrollment Services (NDES) role runs under a service account. Typically, it's preferential to run services using a Group Managed Service Account (GMSA). While the NDES role can be configured to run using a GMSA, the Intune Certificate Connector wasn't designed nor tested using a GMSA and is considered an unsupported configuration. The deployment uses a normal services account.

Sign-in to a domain controller or management workstation with access equivalent to *domain administrator*.

1. In the navigation pane, expand the node that has your domain name. Select **Users**
1. Right-click the **Users** container. Hover over **New** and then select **User**. Type **NDESSvc** in  **Full Name** and **User logon name**. Select **Next**
1. Type a secure password in **Password**. Confirm the secure password in **Confirm Password**. Clear **User must change password at next logon**. Select **Next**
1. Select **Finish**

> [!IMPORTANT]
> Configuring the service's account password to **Password never expires** may be more convenient, but it presents a security risk. Normal service account passwords should expire in accordance with the organizations user password expiration policy. Create a reminder to change the service account's password two weeks before it will expire. Share the reminder with others that are allowed to change the password to ensure the password is changed before it expires.

### Create the NDES Service User Rights Group Policy object

The Group Policy object ensures the NDES Service account has the proper user right to assign all the NDES servers in the **NDES Servers** group. As you add new NDES servers to your environment and this group, the service account automatically receives the proper user rights through the Group Policy.

Sign-in a domain controller or management workstations with *Domain Admin* equivalent credentials.

1. Start the **Group Policy Management Console** (gpmc.msc)

1. Expand the domain and select the **Group Policy Object** node in the navigation pane
1. Right-click **Group Policy object** and select **New**
1. Type **NDES Service Rights** in the name box and select **OK**
1. In the content pane, right-click the **NDES Service Rights** Group Policy object and select **Edit**
1. In the navigation pane, expand **Policies** under **Computer Configuration**
1. Expand **Windows Settings > Security Settings > Local Policies**. Select **User Rights Assignments**
1. In the content pane, double-click **Allow log on locally**. Select **Define these policy settings** and select **OK**. Select **Add User or Group...**. In the **Add User or Group** dialog box, select **Browse**. In the **Select Users, Computers, Service Accounts, or Groups** dialog box, type **Administrators;Backup Operators;DOMAINNAME\NDESSvc;Users** where **DOMAINNAME** is the NetBios name of the domain (Example CONTOSO\NDESSvc) in **User and group names**. Select **OK** twice
1. In the content pane, double-click **Log on as a batch job**. Select **Define these policy settings** and select **OK**. Select **Add User or Group...**. In the **Add User or Group** dialog box, select **Browse**. In the **Select Users, Computers, Service Accounts, or Groups** dialog box, type **Administrators;Backup Operators;DOMAINNAME\NDESSvc;Performance Log Users** where **DOMAINNAME** is the NetBios name of the domain (Example CONTOSO\NDESSvc) in **User and group names**. Select **OK** twice
1. In the content pane, double-click **Log on as a service**. Select **Define these policy settings** and select **OK**. Select **Add User or Group...**. In the **Add User or Group** dialog box, select **Browse**. In the **Select Users, Computers, Service Accounts, or Groups** dialog box, type **NT SERVICE\ALL SERVICES;DOMAINNAME\NDESSvc** where **DOMAINNAME** is the NetBios name of the domain (Example CONTOSO\NDESSvc) in **User and group names**. Select **OK** three times
1. Close the **Group Policy Management Editor**

### Configure security for the NDES Service User Rights Group Policy object

The best way to deploy the **NDES Service User Rights** Group Policy object is to use security group filtering. This enables you to easily manage the computers that receive the Group Policy settings by adding them to a group.

Sign-in to a domain controller or management workstation with access equivalent to *domain administrator*.

1. Start the **Group Policy Management Console** (gpmc.msc)
1. Expand the domain and select the **Group Policy Object** node in the navigation pane
1. Double-click the **NDES Service User Rights** Group Policy object
1. In the **Security Filtering** section of the content pane, select **Add**. Type **NDES Servers** or the name of the security group you previously created and select **OK**
1. Select the **Delegation** tab. Select **Authenticated Users** and select **Advanced**
1. In the **Group or User names** list, select **Authenticated Users**. In the **Permissions for Authenticated Users** list, clear the **Allow** check box for the **Apply Group Policy** permission. Select **OK**

### Deploy the NDES Service User Rights Group Policy object

The application of the **NDES Service User Rights** Group Policy object uses security group filtering. This enables you to link the Group Policy object at the domain, ensuring the Group Policy object is within scope to all computers. However, the security group filtering ensures only computers included in the **NDES Servers** global security group receive and apply the Group Policy object, which results in providing the **NDESSvc** service account with the proper user rights.

Sign-in to a domain controller or management workstation with access equivalent to *domain administrator*.

1. Start the **Group Policy Management Console** (gpmc.msc)
1. In the navigation pane, expand the domain and right-click the node that has your Active Directory domain name and select **Link an existing GPO**
1. In the **Select GPO** dialog box, select **NDES Service User Rights** or the name of the Group Policy object you previously created and select **OK**

> [!IMPORTANT]
> Linking the **NDES Service User Rights** Group Policy object to the domain ensures the Group Policy object is in scope for all computers. However, not all computers will have the policy settings applied to them. Only computers that are members of the **NDES Servers** global security group receive the policy settings. All others computers ignore the Group Policy object.

## Prepare Active Directory Certificate Authority

You must prepare the public key infrastructure and the issuing certificate authority to support issuing certificates using Microsoft Intune and the Network Devices Enrollment Services (NDES) server role. In this task, you'll

- Configure the certificate authority to let Intune provide validity periods
- Create an NDES-Intune Authentication Certificate template
- Create a Microsoft Entra joined Windows Hello for Business authentication certificate template
- Publish certificate templates

### Configure the certificate authority to let Intune provide validity periods

When deploying certificates using Microsoft Intune, you have the option of providing the validity period in the SCEP certificate profile rather than relying on the validity period in the certificate template. If you need to issue the same certificate with different validity periods, it may be advantageous to use the SCEP profile, given the limited number of certificates a single NDES server can issue.

> [!NOTE]
> Skip this step if you do not want to enable Microsoft Intune to specify the validity period of the certificate. Without this configuration, the certificate request uses the validity period configured in the certificate template.

Sign-in to the issuing certificate authority with access equivalent to *local administrator*.

1. Open an elevated command prompt and type the following command:

   ```cmd
   certutil -setreg Policy\EditFlags +EDITF_ATTRIBUTEENDDATE
   ```

1. Restart the **Active Directory Certificate Services** service

### Create an NDES-Intune authentication certificate template

NDES uses a server authentication certificate to authenticate the server endpoint, which encrypts the communication between it and the connecting client. The Intune Certificate Connector uses a client authentication certificate template to authenticate to the certificate registration point.

Sign-in to the issuing certificate authority or management workstations with *Domain Admin* equivalent credentials.

1. Open the **Certificate Authority** management console
1. Right-click **Certificate Templates** and select **Manage**
1. In the **Certificate Template Console**, right-click the **Computer** template in the details pane and select **Duplicate Template**
1. On the **General** tab, type **NDES-Intune Authentication** in **Template display name**. Adjust the validity and renewal period to meet your enterprise's needs

   > [!NOTE]
   > If you use different template names, you'll need to remember and substitute these names in different portions of the lab
1. On the **Subject** tab, select **Supply in the request**
1. On the **Cryptography** tab, validate the **Minimum key size** is **2048**
1. On the **Security** tab, select **Add**
1. Select **Object Types**, then in the window that appears, choose **Computers** and select **OK**
1. Type **NDES server** in the **Enter the object names to select** text box and select **OK**
1. Select **NDES server** from the **Group or users names** list. In the **Permissions for** section, select the **Allow** check box for the **Enroll** permission. Clear the **Allow** check box for the **Enroll** and **Autoenroll** permissions for all other items in the **Group or users names** list if the check boxes aren't already cleared. Select **OK**
1. Select on the **Apply** to save changes and close the console

### Create a Microsoft Entra joined Windows Hello for Business authentication certificate template

During Windows Hello for Business provisioning,  Windows requests an authentication certificate from Microsoft Intune, which requests the authentication certificate on behalf of the user. This task configures the Windows Hello for Business authentication certificate template. You use the name of the certificate template when configuring the NDES Server.

Sign in a certificate authority or management workstations with *Domain Admin equivalent* credentials.

1. Open the **Certificate Authority** management console
1. Right-click **Certificate Templates** and select **Manage**
1. Right-click the **Smartcard Logon** template and choose **Duplicate Template**
1. On the **Compatibility** tab, clear the **Show resulting changes** check box. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Authority** list. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certificate Recipient** list
1. On the **General** tab, type **ENTRA JOINED WHFB Authentication** in **Template display name**. Adjust the validity and renewal period to meet your enterprise's needs

   > [!NOTE]
   > If you use different template names, you'll need to remember and substitute these names in different portions of the deployment
1. On the **Cryptography** tab, select **Key Storage Provider** from the **Provider Category** list. Select **RSA** from the **Algorithm name** list. Type **2048** in the **Minimum key size** text box. Select **SHA256** from the **Request hash** list
1. On the **Extensions** tab, verify the **Application Policies** extension includes **Smart Card Logon**
1. On the **Subject** tab, select **Supply in the request**
1. On the **Request Handling** tab, select **Signature and encryption** from the **Purpose** list. Select the **Renew with same key** check box. Select **Enroll subject without requiring any user input**
1. On the **Security** tab, select **Add**. Type **NDESSvc** in the **Enter the object names to select** text box and select **OK**
1. Select  **NDESSvc** from the **Group or users names** list. In the **Permissions for NDES Servers** section, select the **Allow** check box for **Read** and **Enroll**. Clear the **Allow** check box for the **Enroll** and **Autoenroll** permissions for all other entries in the **Group or users names** section if the check boxes aren't already cleared. Select **OK**
1. Close the console

### Publish certificate templates

The certificate authority may only issue certificates for certificate templates that are published to that certificate authority. If you have more than one certificate authority and you want that certificate authority to issue certificates based on a specific certificate template, then you must publish the certificate template to all certificate authorities that are expected to issue the certificate.

> [!Important]
> Ensure you publish the **ENTRA JOINED WHFB Authentication** certificate templates to the certificate authority that Microsoft Intune uses by way of the NDES servers. The NDES configuration asks you to choose a certificate authority from which it requests certificates. You need to publish that certificate templates to that issuing certificate authority. The **NDES-Intune Authentication** certificate is directly enrolled and can be published to any certificate authority.

Sign in to the certificate authority or management workstations with an *enterprise admin* -equivalent credential.

1. Open the **Certificate Authority** management console
1. Expand the parent node from the navigation pane
1. Select **Certificate Templates** in the navigation pane
1. Right-click the **Certificate Templates** node. Select **New**, and select **Certificate Template** to issue
1. In the **Enable Certificates Templates** window, select the **NDES-Intune Authentication** and **ENTRA JOINED WHFB Authentication** templates you created in the previous steps. Select **OK** to publish the selected certificate templates to the certificate authority
1. Close the console

## Install and Configure the NDES Role

This section includes the following articles:

- Install the Network Device Enrollment Service Role
- Configure the NDES service account
- Configure the NDES role and Certificate Templates
- Create a Web Application Proxy for the Internal NDES URL
- Enroll for an NDES-Intune Authentication Certificate
- Configure the Web Server Certificate for NDES
- Verify the configuration

### Install the Network Device Enrollment Services Role

Install the Network Device Enrollment Service role on a computer other than the issuing certificate authority.

Sign-in to the certificate authority or management workstations with an *Enterprise Admin* equivalent credential.

1. Open **Server Manager** on the NDES server
1. Select **Manage**. Select **Add Roles and Features**
1. In the **Add Roles and Features Wizard**, on the **Before you begin** page, select **Next**. Select **Role-based or feature-based installation** on the **Select installation type** page. Select **Next**. Select **Select a server from the server pool**. Select the local server from the **Server Pool** list. Select **Next**

   ![Server Manager destination server.](images/aadjCert/servermanager-destination-server-ndes.png)

1. On the **Select server roles** page, select **Active Directory Certificate Services** from the **Roles** list

   ![Server Manager AD CS Role.](images/aadjCert/servermanager-adcs-role.png)

   Select **Add Features** on the **Add Roles and Feature Wizard** dialog box. Select **Next**

   ![Server Manager Add Features.](images/aadjcert/servermanager-adcs-add-features.png)

1. On the **Features** page, expand **.NET Framework 3.5 Features**. Select **HTTP Activation**. Select **Add Features** on the **Add Roles and Feature Wizard** dialog box. Expand **.NET Framework 4.5 Features**. Expand **WCF Services**. Select **HTTP Activation**. Select **Add Features** on the **Add Roles and Feature Wizard** dialog box. Select **Next**

   ![Server Manager Feature HTTP Activation.](images/aadjcert/servermanager-adcs-http-activation.png)

1. On the **Select role services** page, clear the **Certificate Authority** check box. Select the **Network Device Enrollment Service**. Select **Add Features** on the **Add Roles and Features Wizard** dialog box. Select **Next**

   ![Server Manager ADCS NDES Role.](images/aadjcert/servermanager-adcs-ndes-role-checked.png)

1. Select **Next** on the **Web Server Role (IIS)** page
1. On the **Select role services** page for the Web Serve role, Select the following additional services if they aren't already selected and then select **Next**

   - **Web Server > Security > Request Filtering**
   - **Web Server > Application Development > ASP.NET 3.5**
   - **Web Server > Application Development > ASP.NET 4.5**
   - **Management Tools > IIS 6 Management Compatibility > IIS 6 Metabase Compatibility**
   - **Management Tools > IIS 6 Management Compatibility > IIS 6 WMI Compatibility**

   ![Server Manager Web Server Role.](images/aadjcert/servermanager-adcs-webserver-role.png)

1. Select **Install**. When the installation completes, continue with the next procedure. **Do not click Close**

   > [!IMPORTANT]
   > .NET Framework 3.5 is not included in the typical installation. If the server is connected to the Internet, the installation attempts to get the files using Windows Update. If the server is not connected to the Internet, you need to **Specify an alternate source path** such as \<driveLetter>:\\Sources\SxS\

   ![.NET Side by Side.](images/aadjcert/dotnet35sidebyside.png)

### Configure the NDES service account

This task adds the NDES service account to the local IIS_USRS group. The task also configures the NDES service account for Kerberos authentication and delegation

#### Add the NDES service account to the IIS_USRS group

Sign-in the NDES server with access equivalent to *local administrator*.

1. Start the **Local Users and Groups** management console (`lusrmgr.msc`)
1. Select **Groups** from the navigation pane. Double-click the IIS_IUSRS group
1. In the **IIS_IUSRS Properties** dialog box, select **Add**. Type **NDESSvc** or the name of your NDES service account. Select **Check Names** to verify the name and then select **OK**. Select **OK** to close the properties dialog box
1. Close the management console.

#### Register a Service Principal Name on the NDES Service account

Sign-in the NDES server with access equivalent to *Domain Admins*.

1. Open an elevated command prompt
1. Type the following command to register the service principal name

   ```cmd
   setspn -s http/[FqdnOfNdesServer] [DomainName\\NdesServiceAccount]
   ```

   where **[FqdnOfNdesServer]** is the fully qualified domain name of the NDES server and **[DomainName\NdesServiceAccount]** is the domain name and NDES service account name separated by a backslash (\\). An example of the command looks like the following:

   ```cmd
   setspn -s http/ndes.corp.contoso.com contoso\ndessvc
   ```

> [!NOTE]
> If you use the same service account for multiple NDES Servers, repeat the following task for each NDES server under which the NDES service runs.

![Set SPN command prompt.](images/aadjcert/setspn-commandprompt.png)

#### Configure the NDES Service account for delegation

The NDES service enrolls certificates on behalf of users. Therefore, you want to limit the actions it can perform on behalf of the user. You do this through delegation.

Sign-in a domain controller with a minimum access equivalent to *Domain Admins*.

1. Open **Active Directory Users and Computers**

1. Locate the NDES Service account (NDESSvc). Right-click and select **Properties**. Select the **Delegation** tab.

   ![NDES Delegation Tab.](images/aadjcert/ndessvcdelegationtab.png)

1. Select **Trust this user for delegation to specified services only**
1. Select **Use any authentication protocol**
1. Select **Add**
1. Select **Users or Computers...**  Type the name of the *NDES Server* you use to issue Windows Hello for Business authentication certificates to Microsoft Entra joined devices. From the **Available services** list, select **HOST**. Select **OK**

   ![NDES Service delegation to NDES host.](images/aadjcert/ndessvcdelegation-host-ndes-spn.png)

1. Repeat steps 5 and 6 for each NDES server using this service account. Select **Add**
1. Select **Users or computers...**  Type the name of the issuing certificate authority this NDES service account uses to issue Windows Hello for Business authentication certificates to Microsoft Entra joined devices. From the **Available services** list, select **dcom**. Hold the **CTRL** key and select **HOST**. Select **OK**
1. Repeat steps 8 and 9 for each issuing certificate authority from which one or more NDES servers request certificates

   ![NDES Service delegation complete.](images/aadjcert/ndessvcdelegation-host-ca-spn.png)

1. Select **OK**. Close **Active Directory Users and Computers**

### Configure the NDES Role and Certificate Templates

This task configures the NDES role and the certificate templates the NDES server issues.

#### Configure the NDES Role

Sign-in to the certificate authority or management workstations with an *Enterprise Admin* equivalent credential.

> [!NOTE]
> If you closed Server Manger from the last set of tasks, start Server Manager and click the action flag that shows a yellow exclamation point.

:::image type="content" alt-text="Server Manager Post-Install Yellow flag." source="images/aadjcert/servermanager-post-ndes-yellowactionflag.png" lightbox="images/aadjcert/servermanager-post-ndes-yellowactionflag.png":::

1. Select the **Configure Active Directory Certificate Services on the destination server** link
1. On the **Credentials** page, select **Next**.

   ![NDES Installation Credentials.](images/aadjcert/ndesconfig01.png)

1. On the **Role Services** page, select **Network Device Enrollment Service** and then select **Next**

   ![NDES Role Services.](images/aadjcert/ndesconfig02.png)

1. On the **Service Account for NDES** page, select **Specify service account (recommended)**. Select **Select...**. Type the user name and password for the NDES service account in the **Windows Security** dialog box. Select **Next**

   ![NDES Service Account for NDES.](images/aadjcert/ndesconfig03b.png)

1. On the **CA for NDES** page, select **CA name**. Select **Select...**. Select the issuing certificate authority from which the NDES server requests certificates. Select **Next**

   ![NDES CA selection.](images/aadjcert/ndesconfig04.png)

1. On the **RA Information**, select **Next**
1. On the **Cryptography for NDES** page, select **Next**
1. Review the **Confirmation** page. Select **Configure**

   ![NDES Confirmation.](images/aadjcert/ndesconfig05.png)

1. Select **Close** after the configuration completes

#### Configure Certificate Templates on NDES

A single NDES server can request a maximum of three certificate templates. The NDES server determines which certificate to issue based on the incoming certificate request that is assigned in the Microsoft Intune SCEP certificate profile. The Microsoft Intune SCEP certificate profile has three values.

- Digital Signature
- Key Encipherment
- Key Encipherment, Digital Signature

Each value maps to a registry value name in the NDES server. The NDES server translates an incoming SCEP provided value into the corresponding certificate template. The table below shows the SCEP profile values of the NDES certificate template registry value names.

| SCEP Profile Key usage| NDES Registry Value Name |
| :-------------------: | :----------------------: |
| Digital Signature | SignatureTemplate |
| Key Encipherment | EncryptionTemplate |
| Key Encipherment<br>Digital Signature | GeneralPurposeTemplate |

Ideally, you should match the certificate request with the registry value name to keep the configuration intuitive (encryption certificates use the encryption template, signature certificates use the signature template, etc.). A result of this intuitive design is the potential exponential growth in the NDES server. Imagine an organization that needs to issue nine unique signature certificates across their enterprise.

If the need arises, you can configure a signature certificate in the encryption registry value name or an encryption certificate in the signature registry value to maximize the use of your NDES infrastructure. This unintuitive design requires current and accurate documentation of the configuration to ensure the SCEP certificate profile is configured to enroll the correct certificate, regardless of the actual purpose. Each organization needs to balance ease of configuration and administration with additional NDES infrastructure and the management overhead that comes with it.

Sign-in to the NDES Server with *local administrator* equivalent credentials.

1. Open an elevated command prompt
1. Using the table above, decide which registry value name you'll use to request Windows Hello for Business authentication certificates for Microsoft Entra joined devices
1. Type the following command:

   ```cmd
   reg add HKLM\Software\Microsoft\Cryptography\MSCEP /v [registryValueName] /t REG_SZ /d [certificateTemplateName]
   ```

   where **registryValueName** is one of the three value names from the above table and where **certificateTemplateName** is the name of the certificate template you created for Windows Hello for Business Microsoft Entra joined devices. Example:

   ```cmd
   reg add HKLM\Software\Microsoft\Cryptography\MSCEP /v SignatureTemplate /t REG_SZ /d ENTRAJOINEDWHFBAuthentication
   ```

1. Type **Y** when the command asks for permission to overwrite the existing value
1. Close the command prompt.

> [!IMPORTANT]
> Use the **name** of the certificate template; not the **display name**. The certificate template name does not include spaces. You can view the certificate names by looking at the **General** tab of the certificate template's properties in the **Certificates Templates** management console (`certtmpl.msc`).

### Create a Web Application Proxy for the internal NDES URL.

Certificate enrollment for Microsoft Entra joined devices occurs over the Internet. As a result, the internal NDES URLs must be accessible externally. You can do this easily and securely using Microsoft Entra application proxy. Microsoft Entra application proxy provides single sign-on and secure remote access for web applications hosted on-premises, such as Network Device Enrollment Services.

Ideally, you configure your Microsoft Intune SCEP certificate profile to use multiple external NDES URLs. This enables Microsoft Intune to round-robin load balance the certificate requests to identically configured NDES Servers (each NDES server can accommodate approximately 300 concurrent requests). Microsoft Intune sends these requests to Microsoft Entra Application Proxies.

Microsoft Entra Application proxies are serviced by lightweight Application Proxy Connector agents. See [What is Application Proxy](/entra/identity/app-proxy/#what-is-application-proxy) for more details. These agents are installed on your on-premises, domain joined devices and make authenticated secure outbound connection to Azure, waiting to process requests from Microsoft Entra Application Proxies. You can create connector groups in Microsoft Entra ID to assign specific connectors to service specific applications.

Connector group automatically round-robin, load balance the Microsoft Entra application proxy requests to the connectors within the assigned connector group. This ensures Windows Hello for Business certificate requests have multiple dedicated Microsoft Entra application proxy connectors exclusively available to satisfy enrollment requests. Load balancing the NDES servers and connectors should ensure users enroll their Windows Hello for Business certificates in a timely manner.

#### Download and Install the Application Proxy Connector Agent

Sign-in a workstation with access equivalent to a *domain user*.

1. Access to the [Microsoft Entra admin center](https://entra.microsoft.com) as at least an [Application Administrator](/entra/identity/role-based-access-control/permissions-reference#application-administrator)
1. Select **All Services**. Type **Microsoft Entra ID** to filter the list of services. Under **SERVICES**, select **Microsoft Entra ID**
1. Under **MANAGE**, select **Application proxy**
1. Select **Download connector service**. Select **Accept terms & Download**. Save the file (AADApplicationProxyConnectorInstaller.exe) in a location accessible by others on the domain
   :::image type="content" alt-text="Azure Application Proxy Connectors." source="images/aadjcert/azureconsole-applicationproxy-connectors-empty.png" lightbox="images/aadjcert/azureconsole-applicationproxy-connectors-empty.png":::
1. Sign-in the computer that will run the connector with access equivalent to a *domain user*
   > [!IMPORTANT]
   > Install a minimum of two Microsoft Entra ID Proxy connectors for each NDES Application Proxy. Strategically locate Microsoft Entra application proxy connectors throughout your organization to ensure maximum availability. Remember, devices running the connector must be able to communicate with Azure and the on-premises NDES servers
1. Start **AADApplicationProxyConnectorInstaller.exe**
1. Read the license terms and then select **I agree to the license terms and conditions**. Select **Install**
   ![Azure Application Proxy Connector: license terms](images/aadjcert/azureappproxyconnectorinstall-01.png)
1. Sign-in as at least an [Application Administrator](/entra/identity/role-based-access-control/permissions-reference#application-administrator)
   ![Azure Application Proxy Connector: sign-in](images/aadjcert/azureappproxyconnectorinstall-02.png)
1. When the installation completes. Read the information regarding outbound proxy servers. Select **Close**
   ![Azure Application Proxy Connector: read](images/aadjcert/azureappproxyconnectorinstall-03.png)
1. Repeat steps 5 - 10 for each device that will run the Microsoft Entra application proxy connector for Windows Hello for Business certificate deployments

#### Create a Connector Group

Sign-in a workstation with access equivalent to a *domain user*.

1. Access to the [Microsoft Entra admin center](https://entra.microsoft.com) as at least an [Application Administrator](/entra/identity/role-based-access-control/permissions-reference#application-administrator)
1. Select **All Services**. Type **Microsoft Entra ID** to filter the list of services. Under **SERVICES**, select **Microsoft Entra ID**
1. Under **MANAGE**, select **Application proxy**.

   :::image type="content" alt-text="Azure Application Proxy Connector groups." source="images/aadjcert/azureconsole-applicationproxy-connectors-default.png" lightbox="images/aadjcert/azureconsole-applicationproxy-connectors-default.png":::

1. Select **New Connector Group**. Under **Name**, type **NDES WHFB Connectors**.

   :::image type="content" alt-text="Azure Application New Connector Group." source="images/aadjcert/azureconsole-applicationproxy-connectors-newconnectorgroup.png" lightbox="images/aadjcert/azureconsole-applicationproxy-connectors-newconnectorgroup.png":::

1. Select each connector agent in the **Connectors** list that will service Windows Hello for Business certificate enrollment requests
1. Select **Save**.

#### Create the Azure Application Proxy

Sign-in a workstation with access equivalent to a *domain user*.

1. Access to the [Microsoft Entra admin center](https://entra.microsoft.com) as at least an [Application Administrator](/entra/identity/role-based-access-control/permissions-reference#application-administrator)
1. Select **All Services**. Type **Microsoft Entra ID** to filter the list of services. Under **SERVICES**, select **Microsoft Entra ID**
1. Under **MANAGE**, select **Application proxy**
1. Select **Configure an app**
1. Under **Basic Settings** next to **Name**, type **WHFB NDES 01**. Choose a name that correlates this Microsoft Entra application proxy setting with the on-premises NDES server. Each NDES server must have its own Microsoft Entra application proxy as two NDES servers can't share the same internal URL
1. Next to **Internal URL**, type the internal, fully qualified DNS name of the NDES server associated with this Microsoft Entra application proxy. For example, ```https://ndes.corp.mstepdemo.net```. You need to match the primary host name (AD Computer Account name) of the NDES server, and prefix the URL with **https**
1. Under **Internal URL**, select **https://** from the first list. In the text box next to **https://**, type the hostname you want to use as your external hostname for the Microsoft Entra application proxy. In the list next to the hostname you typed, select a DNS suffix you want to use externally for the Microsoft Entra application proxy. It's recommended to use the default, -[tenantName].msapproxy.net where **[tenantName]** is your current Microsoft Entra tenant name (-mstephendemo.msappproxy.net).

   :::image type="content" alt-text="Azure NDES Application Proxy Configuration." source="images/aadjcert/azureconsole-appproxyconfig.png" lightbox="images/aadjcert/azureconsole-appproxyconfig.png":::

1. Select **Passthrough** from the **Pre Authentication** list
1. Select **NDES WHFB Connectors** from the **Connector Group** list
1. Under **Additional Settings**, select **Default** from **Backend Application Timeout**. Under the **Translate URLs In** section, select **Yes** next to **Headers** and select **No** next to **Application Body**
1. Select **Add**
1. Sign-out of the Azure portal.

    > [!IMPORTANT]
    > Write down the internal and external URLs. You will need this information when you enroll the NDES-Intune Authentication certificate.

### Enroll the NDES-Intune Authentication certificate

This task enrolls a client and server authentication certificate used by the Intune connector and the NDES server.

Sign-in the NDES server with access equivalent to *local administrators*.

1. Start the Local Computer **Certificate Manager** (certlm.msc)
1. Expand the **Personal** node in the navigation pane
1. Right-click **Personal**. Select **All Tasks** and **Request New Certificate**
1. Select **Next** on the **Before You Begin** page
1. Select **Next** on the **Select Certificate Enrollment Policy** page
1. On the **Request Certificates** page, Select the **NDES-Intune Authentication** check box
1. Select the **More information is required to enroll for this certificate. Click here to configure settings** link

   ![Example of Certificate Properties Subject Tab - This is what shows when you click the above link.](images/aadjcert/ndes-TLS-Cert-Enroll-subjectNameWithExternalName.png)

1. Under **Subject name**, select **Common Name** from the **Type** list. Type the internal URL used in the previous task (without the https://, for example **ndes.corp.mstepdemo.net**) and then select **Add**
1. Under **Alternative name**, select **DNS** from the **Type** list. Type the internal URL used in the previous task (without the https://, for example **ndes.corp.mstepdemo.net**). Select **Add**. Type the external URL used in the previous task (without the https://, for example **ndes-mstephendemo.msappproxy.net**). Select **Add**. Select **OK** when finished
1. Select **Enroll**
1. Repeat these steps for all NDES Servers used to request Windows Hello for Business authentication certificates for Microsoft Entra joined devices

### Configure the Web Server Role

This task configures the Web Server role on the NDES server to use the server authentication certificate.

Sign-in the NDES server with access equivalent to *local administrator*.

1. Start **Internet Information Services (IIS) Manager** from **Administrative Tools**
1. Expand the node that has the name of the NDES server. Expand **Sites** and select **Default Web Site**

   :::image type="content" alt-text="NDES IIS Console" source="images/aadjcert/ndes-iis-console.png" lightbox="images/aadjcert/ndes-iis-console.png":::

1. Select **Bindings...** under **Actions**. Select **Add**.

   ![NDES IIS Console: Add](images/aadjcert/ndes-iis-bindings.png)

1. Select **https** from **Type**. Confirm the value for **Port** is **443**
1. Select the certificate you previously enrolled from the **SSL certificate** list. Select **OK**

   ![NDES IIS Console: Certificate List](images/aadjcert/ndes-iis-bindings-add-443.png)

1. Select **http** from the **Site Bindings** list. Select **Remove**
1. Select **Close** on the **Site Bindings** dialog box
1. Close **Internet Information Services (IIS) Manager**

### Verify the configuration

This task confirms the TLS configuration for the NDES server.

Sign-in the NDES server with access equivalent to *local administrator*.

#### Disable Internet Explorer Enhanced Security Configuration

1. Open **Server Manager**. Select **Local Server** from the navigation pane
1. Select **On** next to **IE Enhanced Security Configuration** in the **Properties** section
1. In the **Internet Explorer Enhanced Security Configuration** dialog, under **Administrators**, select **Off**. Select **OK**
1. Close **Server Manager**

#### Test the NDES web server

1. Open **Internet Explorer**
1. In the navigation bar, type

   ```https
   https://[fqdnHostName]/certsrv/mscep/mscep.dll
   ```

   where **[fqdnHostName]** is the fully qualified internal DNS host name of the NDES server.

A web page similar to the following should appear in your web browser. If you don't see a similar page, or you get a **503 Service unavailable** message, ensure the NDES Service account has the proper user rights. You can also review the Application event log for events with the **NetworkDeviceEnrollmentService** source.

![NDES IIS Console: Source](images/aadjcert/ndes-https-website-test-01.png)

Confirm the web site uses the server authentication certificate.

![NDES IIS Console: Confirm](images/aadjcert/ndes-https-website-test-01-show-cert.png)

## Configure Network Device Enrollment Services to work with Microsoft Intune

You have successfully configured the Network Device Enrollment Services. You must now modify the configuration to work with the Intune Certificate Connector. In this task, you'll enable the NDES server and http.sys to handle long URLs.

- Configure NDES to support long URLs

### Configure NDES and HTTP to support long URLs

Sign-in the NDES server with access equivalent to *local administrator*.

#### Configure the Default Web Site

1. Start **Internet Information Services (IIS) Manager** from **Administrative Tools**
1. Expand the node that has the name of the NDES server. Expand **Sites** and select **Default Web Site**
1. In the content pane, double-click **Request Filtering**. Select **Edit Feature Settings...** in the action pane

   :::image type="content" alt-text="Intune NDES Request filtering." source="images/aadjcert/NDES-IIS-RequestFiltering.png" lightbox="images/aadjcert/NDES-IIS-RequestFiltering.png":::

1. Select **Allow unlisted file name extensions**
1. Select **Allow unlisted verbs**
1. Select **Allow high-bit characters**
1. Type **30000000** in **Maximum allowed content length (Bytes)**
1. Type **65534** in **Maximum URL length (Bytes)**
1. Type **65534** in **Maximum query string (Bytes)**
1. Select **OK**. Close **Internet Information Services (IIS) Manager**

#### Configure Parameters for HTTP.SYS

1. Open an elevated command prompt
1. Run the following commands:

   ```cmd
   reg add HKLM\SYSTEM\CurrentControlSet\Services\HTTP\Parameters /v MaxFieldLength /t REG_DWORD /d 65534
   reg add HKLM\SYSTEM\CurrentControlSet\Services\HTTP\Parameters /v MaxRequestBytes /t REG_DWORD /d 65534
   ```

1. Restart the NDES server

## Download, Install and Configure the Intune Certificate Connector

The Intune Certificate Connector application enables Microsoft Intune to enroll certificates using your on-premises PKI for users on devices managed by Microsoft Intune.

To learn how to download, install, and configure the Intune Certificate Connector, see [Install the Certificate Connector for Microsoft Intune](/mem/intune/protect/certificate-connector-install).

### Configure the NDES Connector for certificate revocation (**Optional**)

Optionally (not required), you can configure the Intune connector for certificate revocation when a device is wiped, unenrolled, or when the certificate profile falls out of scope for the targeted user (users are removed, deleted, or the profile is deleted). You need to select the **Certificate revocation** option during the connector configuration to enable automatic certificate revocation for certificates issued from a Microsoft Active Directory Certification Authority. Additionally, you need to enable the NDES Service account for revocation.

1. Sign in the certificate authority used by the NDES Connector with access equivalent to *domain administrator*
1. Start the **Certification Authority** management console
1. In the navigation pane, right-click the name of the certificate authority and select **Properties**
1. Select the **Security** tab, then select **Add**. In the **Enter the object names to select** box, enter **NDESSvc** (or the name you gave the NDES Service account). Select **Check Names**, then select **OK**. Select the NDES Service account from the **Group or user names** list. Select **Allow** for the **Issue and Manage Certificates** permission. Select **OK**

   ![Configure Intune certificate revocation 02.](images/aadjcert/intuneconfigcertrevocation-02.png)

1. Close the **Certification Authority**

## Create and Assign a Simple Certificate Enrollment Protocol (SCEP) Certificate Profile

### Create an ENTRA JOINED WHFB Certificate Users Group

Sign-in a workstation with access equivalent to a *domain user*.

1. Access to the [Microsoft Entra admin center](https://entra.microsoft.com) as at least an [Application Administrator](/entra/identity/role-based-access-control/permissions-reference#application-administrator)
1. Select **All Services**. Type **Microsoft Entra ID** to filter the list of services. Under **SERVICES**, select **Microsoft Entra ID**
1. Select **Groups**. Select **New group**
1. Select **Security** from the **Group type** list
1. Under **Group Name**, type the name of the group. For example, **ENTRA JOINED WHFB Certificate Users**
1. Provide a **Group description**, if applicable
1. Select **Assigned** from the **Membership type** list

   :::image type="content" alt-text="Microsoft Entra new group creation." source="images/aadjcert/azureadcreatewhfbcertgroup.png" lightbox="images/aadjcert/azureadcreatewhfbcertgroup.png":::

1. Select **Members**. Use the  **Select members** pane to add members to this group. When finished, select **Select**
1. Select **Create**.

### Create a SCEP Certificate Profile

Sign-in a workstation with access equivalent to a *domain user*.

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431)
1. Select **Devices**, and then select **Configuration Profiles**
1. Select **Create Profile**.
   ![Intune Device Configuration Create Profile.](images/aadjcert/profile02.png)
1. Select **Windows 10 and later** from the **Platform** list
1. Choose **SCEP certificate** from the **Profile** list, and select **Create**
1. The **SCEP Certificate** wizard should open. Next to **Name**, type **WHFB Certificate Enrollment**
1. Next to **Description**, provide a description meaningful for your environment, then select **Next**
1. Select **User** as a certificate type
1. Configure **Certificate validity period** to match your organization.
   > [!IMPORTANT]
   > Remember that you need to configure your certificate authority to allow Microsoft Intune to configure certificate validity
1. Select **Enroll to Windows Hello for Business, otherwise fail (Windows 10 and later)** from the **Key storage provider (KSP)** list
1. Next to **Subject name format**, type **CN={{OnPrem_Distinguished_Name}}** to make the on-premises distinguished name the subject of the issued certificate
    > [!NOTE]
    > If the distinguished name contains special characters like a plus sign ("+"), comma (","), semicolon (";"), or equal sign ("="), the bracketed name must be enclosed in quotation marks: `CN="{{OnPrem_Distinguished_Name}}"`.
    >
    > If the length of the distinguished name is more than 64 characters, the name length enforcement on the Certification Authority [must be disabled](/previous-versions/windows/it-pro/windows-server-2003/cc784789(v=ws.10)?#disable-dn-length-enforcement).
1. Specify **User Principal Name (UPN)** as a **Subject Alternative Name** parameter. Set its value as {{UserPrincipalName}}
1. Refer to the "Configure Certificate Templates on NDES" task for how you configured the **ENTRA JOINED WHFB Authentication** certificate template in the registry. Select the appropriate combination of key usages from the **Key Usages** list that map to the configured NDES template in the registry. In this example, the **ENTRA JOINED WHFB Authentication** certificate template was added to the **SignatureTemplate** registry value name. The **Key usage** that maps to that registry value name is **Digital Signature**
1. Select a previously configured **Trusted certificate** profile that matches the root certificate of the issuing certificate authority as a root certificate for the profile
1. Under **Extended key usage**, type **Smart Card Logon** under **Name**. Type **1.3.6.1.4.1.311.20.2.2** under **Object identifier**. Select **Add**
1. Type a percentage (without the percent sign) next to **Renewal Threshold** to determine when the certificate should attempt to renew. The recommended value is **20**
    :::image type="content" alt-text="WHFB SCEP certificate Profile EKUs." source="images/aadjcert/profile03.png" lightbox="images/aadjcert/profile03.png":::
1. Under **SCEP Server URLs**, type the fully qualified external name of the Microsoft Entra application proxy you configured. Append to the name **/certsrv/mscep/mscep.dll**. For example, ```https://ndes-mtephendemo.msappproxy.net/certsrv/mscep/mscep.dll```. Select **Add**. Repeat this step for each additional NDES Microsoft Entra application proxy you configured to issue Windows Hello for Business certificates. Microsoft Intune round-robin load balances requests among the URLs listed in the SCEP certificate profile
1. Select **Next**
1. Select **Next** several times to skip the **Scope tags**, **Assignments**, and **Applicability Rules** steps of the wizard and select **Create**

### Assign Group to the WHFB Certificate Enrollment Certificate Profile

Sign-in a workstation with access equivalent to a *domain user*.

1. Sign-in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431)
1. Select **Devices**, and then select **Configuration Profiles**
1. Select **WHFB Certificate Enrollment**
1. Select **Properties**, and then select **Edit** next to the **Assignments** section
1. In the **Assignments** pane, select **Selected Groups** from the **Assign to** list. Select **Select groups to include**.
   :::image type="content" alt-text="WHFB SCEP Profile Assignment." source="images/aadjcert/profile04.png" lightbox="images/aadjcert/profile04.png":::
1. Select the **ENTRA JOINED WHFB Certificate Users** group. Select **Select**
1. Select **Review + Save**, and then **Save**

You have successfully completed the configuration. Add users that need to enroll a Windows Hello for Business authentication certificate to the **ENTRA JOINED WHFB Certificate Users** group. This group, combined with the device enrollment Windows Hello for Business configuration prompts the user to enroll for Windows Hello for Business and enroll a certificate that can be used to authentication to on-premises resources.

> [!NOTE]
> The Passport for Work configuration service provider (CSP) which is used to manage Windows Hello for Business with Mobile Device Management (MDM) contains a policy called UseCertificateForOnPremAuth. This policy is not needed when deploying certificates to Windows Hello for Business users through the instructions outlined in this document and should not be configured. Devices managed with MDM where UseCertificateForOnPremAuth is enabled will fail a prerequisite check for Windows Hello for Business provisioning. This failure will block users from setting up Windows Hello for Business if they don't already have it configured.

## Section Review

> [!div class="checklist"]
> - Requirements
> - Prepare Microsoft Entra Connect
> - Prepare the Network Device Enrollment Services (NDES) Service Account
> - Prepare Active Directory Certificate Authority
> - Install and Configure the NDES Role
> - Configure Network Device Enrollment Services to work with Microsoft Intune
> - Download, Install, and Configure the Intune Certificate Connector
> - Create and Assign a Simple Certificate Enrollment Protocol (SCEP Certificate Profile)

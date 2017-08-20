---
title: Configure Windows Hello for Business Settings
description: Configure Windows Hello for Business Settings 
keywords: identity, PIN, biometric, Hello, passport, WHFB, hybrid, certificate-trust
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
author: DaniHalfin
ms.author: mstephen
localizationpriority: high
---
# Configure Windows Hello for Business

**Applies to**
-   Windows 10

> This guide only applies to Windows 10, version 1703 or higher.

## Active Directory ##
The key registration process for the hybrid deployment of Windows Hello for Business needs the Windows Server 2016 Active Directory schema.  The key-trust model receives the schema extension when the first Windows Server 2016 domain controller is added to the forest.  The certificate trust model requires manually updating the current schema to the Windows Server 2016 schema. 

> [!IMPORTANT]
> If you already have a Windows Server 2016 domain controller in your forest, you can skip **Upgrading Active Directory to the Windows Server 2016 Schema**.

### Upgrading Active Directory to the Windows Server 2016 Schema

Manually updating Active Directory uses the command-line utility **adprep.exe** located at **<drive>:\support\adprep** on the Windows Server 2016 DVD or ISO.  Before running adprep.exe, you must identify the domain controller hosting the schema master role.

#### Discovering schema role

To locate the schema master role holder, open and command prompt and type:

```Netdom query fsmo | findstr -i “schema”```

![Netdom example output](images\hello-cmd-netdom.png)

The command should return the name of the domain controller where you need to adprep.exe.  Update the schema locally on the domain controller hosting the Schema master role.

#### Updating the Schema

Windows Hello for Business uses asymmetric keys as user credentials (rather than passwords).  During enrollment, the public key is registered in an attribute on the user object in Active Directory.  The schema update adds this new attribute to Active Directory.  

Sign-in to the domain controller hosting the schema master operational role using Enterprise Admin equivalent credentials.

1.	Open an elevated command prompt.
2.	Type ```cd /d x:\support\adprep``` where *x* is the drive letter of the DVD or mounted ISO.
3.	To update the schema, type ```adprep /forestprep```.
4.	Read the Adprep Warning.  Type the letter **C*** and press **Enter** to update the schema.
5.	Close the Command Prompt and sign-out.

### Creating Security Groups

Windows Hello for Business uses several security groups to simplify the deployment and managment.

If your environment has one or more Windows Server 2016 domain controllers in the domain to which you are deploying Windows Hello for Business, then skip the **Create the KeyCrednetials Admins Security Group**.

#### Create the KeyCredential Admins Security Group

Azure Active Directory Connect synchronizes the public key on the user object created during provisioning.  You assign write and read permission to this group to the Active Directory attribute to ensure the Azure AD Connect service can add and remove keys as part of its normal workflow.

Sign-in a domain controller or management workstation with *Domain Admin* equivalent credentials.

1.	Open **Active Directory Users and Computers**.
2.	Click **View** and click **Advance Features**.
3.	Expand the domain node from the navigation pane.
4.	Right-click the **Users** container. Click **New**. Click **Group**.
5.	Type **KeyCredential Admins** in the **Group Name** text box.
6.	Click **OK**.

#### Create the Windows Hello for Business Users Security Group

The Windows Hello for Business Users group is used to make it easy to deploy Windows Hello for Business in phases.  You assign Group Policy and Certificate template permissions to this group to simplify the deployment by simply adding the users to the group.  This provides them the proper permissions to provision Windows Hello for Business and to enroll in the Windows Hello for Business authentication certificate.

Sign-in a domain controller or management workstation with *Domain Admin* equivalent credentials.

1.	Open **Active Directory Users and Computers**.
2.	Click **View** and click **Advanced Features**.
3.	Expand the domain node from the navigation pane.
4.	Right-click the **Users** container. Click **New**. Click **Group**.
5.	Type **Windows Hello for Business Users** in the **Group Name** text box.
6.	Click **OK**.

### Section Review
- [x] Active Directory
- [x] Public Key Infrastructure
- [x] Azure Active Directory
- [x] Directory Synchronization
- [x] Active Directory Federation Services
- [x] Federation Services
  - [x]	Federation Proxy Servers
  - [x]	Multiple top-level domains
  - [x]	Azure Device Registration
  - [x]	Device Writeback
- [x] Multifactor Authentication
- [x] Windows Hello for Business
  - [ ] Active Directory
  - [ ] Directory Synchronization
  - [ ] Public Key Infrastructure
  - [ ] AD FS RA
  - [ ] Group Policy
- [ ] Sign-in and Provision

## Directory Syncrhonization

In hybrid deployments, users register the public portion of their Windows Hello for Business crednetial with Azure.  Azure AD Connect syncrhonizes the Windows Hello for Business public key to Active Directory.  

The key-trust model needs Windows Server 2016 domain controllers, which configures the key registration permissions automatically; however, the certificate-trust model does not and requires you to add the permissions manually.

> [!IMPORTANT]
> If you already have a Windows Server 2016 domain controller in your forest, you can skip **Configure Permissions for Key Synchronization**.

### Configure Permissions for Key Syncrhonization

Sign-in a domain controller or management workstations with *Domain Admin* equivalent credentials.

1. Open **Active Directory Users and Computers**.
2. Right-click your domain name from the navigation pane and click **Properties**.
3. Click **Security** (if the Security tab is missing, turn on Advanced Features from the View menu).
4. Click **Advanced**. Click **Add**. Click **Select a principal**.
5. The **Select User, Computer, Service Account, or Group** dialog box appears. In the **Enter the object name to select** text box, type **KeyCredential Admins**.  Click **OK**.
6. In the **Applies to** list box, select **Descendant User objects**.
7. Using the scroll bar, scroll to the bottom of the page and click **Clear all**.
8. In the **Properties** section, select **Read msDS-KeyCredentialLink** and **Write msDS-KeyCrendentialLink**.
9. Click **OK** three times to complete the task. 

### Section Review
- [x] Active Directory
- [x] Public Key Infrastructure
- [x] Azure Active Directory
- [x] Directory Synchronization
- [x] Active Directory Federation Services
- [x] Federation Services
  - [x]	Federation Proxy Servers
  - [x]	Multiple top-level domains
  - [x]	Azure Device Registration
  - [x]	Device Writeback
- [x] Multifactor Authentication
- [x] Windows Hello for Business
  - [x]Active Directory
  - [x] Directory Synchronization
  - [ ] Public Key Infrastructure
  - [ ] AD FS RA
  - [ ] Group Policy
- [ ] Sign-in and Provision

## Public Key Infrastructure

Windows Hello for Business deployments rely on certificates.  Hybrid deployments uses publicly issued server authentication certifcates to validate the name of the server to which they are connecting and to encyrpt the data that flows them and the client computer.

All deployments use enterprise issed certificates for domain controllers as a root of trust.  Hybrid certificate trust deployments issue users sign-in certificate that enables them to authenticate using Windows Hello for Business credentials to non-Windows Server 2016 domain controllers.  Additionally, hybrid certificate trust deployments issue certificate to registration authorites to provide defenese-in-depth security for issueing user authentication certificates. 

### Certifcate Templates

This section has you configure certificate templates on your Windows Server 2012 or later issuing certificate authtority. 

#### Domain Controller certificate template

Clients need to trust domain controllers and the best way to do this is to ensure each domain controller has a Kerberos Authentication certificate.  Installing a certificate on the domain controller enables the Key Distribution Center (KDC) to prove its identity to other members of the domain.  This provides clients a root of trust external to the domain—namely the enterprise certificate authority.

Domain controllers automatically request a domain controller certificate (if published) when they discover an enterprise certificate authority is added to Active Directory.  However, certificates based on the *Domain Controller* and *Domain Controller Authentication* certificate templates do not include the **KDC Authentication** object identifier (OID), which was later added to the Kerberos RFC.  Therefore, domain controllers need to request a certificate based on the Kerberos Authentication certificate template.

By default, the Active Directory Certificate Authority provides and publishes the Kerberos Authentication certificate template.  However, the cryptography configuration included in the provided template is based on older and less performant cryptography APIs.  To ensure domain controllers request the proper certificate with the best available cryptography, use the **Kerberos Authentication** certificate template a baseline to create an updated domain controller certificate template.

##### Create a Domain Controller Authentication (Kerberos) Certificate Template

Sign-in a certificate authority or management workstations with _Domain Admin_ equivalent credentials.

1.	Open the **Certificate Authority** management console.
2.	Right-click **Certificate Templates** and click **Manage**.
3.	In the **Certificate Template Console**, right-click the **Kerberos Authentication** template in the details pane and click **Duplicate Template**.
4.	On the **Compatibility** tab, clear the **Show resulting changes** check box.  Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Authority** list. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Recipient** list.
5.	On the **General** tab, type **Domain Controller Authentication (Kerberos)** in Template display name.  Adjust the validity and renewal period to meet your enterprise’s needs.   
    **Note**If you use different template names, you’ll need to remember and substitute these names in different portions of the lab.
6.	On the **Subject** tab, select the **Build from this Active Directory information** button if it is not already selected.  Select **None** from the **Subject name format** list.  Select **DNS name** from the **Include this information in alternate subject** list. Clear all other items.
7.	On the **Cryptography** tab, select **Key Storage Provider** from the **Provider Category** list.  Select **RSA** from the **Algorithm name** list.  Type **2048** in the **Minimum key size** text box.  Select **SHA256** from the **Request hash** list.  Click **OK**. 
8.	Close the console.

##### Superseding the existing Domain Controller certificate

Many domain controllers may have an existing domain controller certificate.  The Active Directory Certificate Services provides a default certificate template from domain controllers—the domain controller certificate template.  Later releases provided a new certificate template—the domain controller authentication certificate template.  These certificate templates were provided prior to update of the Kerberos specification that stated Key Distribution Centers (KDCs) performing certificate authentication needed to include the **KDC Authentication** extension.  

The Kerberos Authentication certificate template is the most current certificate template designated for domain controllers and should be the one you deploy to all your domain controllers (2008 or later).

The autoenrollment feature in Windows enables you to effortlessly replace these domain controller certificates.  You can use the following configuration to replace older domain controller certificates with a new certificate using the Kerberos Authentication certificate template. 

###### Configure Certificate Suspeding for the Domain Controller Authentication (Kerberos) Certificate Template

Sign-in a certificate authority or management workstations with _Enterprise Admin_ equivalent credentials.

1.	Open the **Certificate Authority** management console.
2.	Right-click **Certificate Templates** and click **Manage**.
3.	In the **Certificate Template Console**, right-click the **Domain Controller Authentication (Kerberos)** (or the name of the certificate template you created in the previous section) template in the details pane and click **Properties**.
4.	Click the **Superseded Templates** tab. Click **Add**.
5.	From the **Add Superseded Template** dialog, select the **Domain Controller** certificate template and click **OK**.  Click **Add**.
6.	From the **Add Superseded Template** dialog, select the **Domain Controller Authentication** certificate template and click **OK**.
7.	From the **Add Superseded Template dialog**, select the **Kerberos Authentication** certificate template and click **OK**. 
8.	Add any other enterprise certificate templates that were previously configured for domain controllers to the **Superseded Templates** tab.
9.	Click **OK** and close the **Certificate Templates** console.

The certificate template is configured to supersede all the certificate templates provided in the certificate templates superseded templates list.  However, the certificate template and the superseding of certificate templates is not active until you publish the certificate template to one or more certificate authorities.

#### Enrollment Agent certificate template

Active Directory Federation Server used for Windows Hello for Business certificate enrollment performs its own certificate lifecycle management.  Once the registration authority is configured with the proper certificate template, the AD FS server attempts to enroll the certificate on the first certificate request or when the service first starts.

Approximately 60 days prior to enrollment agent certificate’s expiration, the AD FS service attempts to renew the certificate until it is successful.  If the certificate fails to renew, and the certificate expires, the AD FS server will request a new enrollment agent certificate.  You can view the AD FS event logs to determine the status of the enrollment agent certificate.

> [!IMPORTANT]
> Follow the procedures below based on the AD FS service account used in your  environment. 

#### Creating an Enrollment Agent certificate for Group Managed Service Accounts

Sign-in a certificate authority or management workstations with _Domain Admin_ equivalent credentials.

1. Open the **Certificate Authority Management** console.
2. Right-click **Certificate Templates** and click **Manage**.
3. In the **Certificate Template Console**, right click on the **Exchange Enrollment Agent (Offline request)** template details pane and click **Duplicate Template**.
4. On the **Compatibility** tab, clear the **Show resulting changes** check box. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Authority** list. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Recipient** list.
5. On the **General** tab, type **WHFB Enrollment Agent** in **Template display name**.  Adjust the validity and renewal period to meet your enterprise’s needs.
6. On the **Subject** tab, select the **Supply in the request** button if it is not already selected.   
    **Note:** The preceding step is very important.  Group Managed Service Accounts (GMSA) do not support the Build from this Active Directory information option and will result in the AD FS server failing to enroll the enrollment agent certificate.  You must configure the certificate template with Supply in the request to ensure that AD FS servers can perform the automatic enrollment and renewal of the enrollment agent certificate.

7. On the **Cryptography** tab, select **Key Storage Provider** from the **Provider Category** list.  Select **RSA** from the **Algorithm name** list.  Type **2048** in the **Minimum key size** text box.  Select **SHA256** from the **Request hash** list.
8. On the **Security** tab, click **Add**. 
9. Click **Object Types**.  Select the **Service Accounts** check box and click **OK**.
10.	Type **adfssvc** in the **Enter the object names to select** text box and click **OK**.
11.	Click the **adfssvc** from the **Group or users names** list. In the **Permissions for adfssvc** section, In the **Permissions for adfssvc** section, select the **Allow** check box for the **Enroll** permission. Excluding the **adfssvc** user, clear the **Allow** check box for the **Enroll** and **Autoenroll** permissions for all other items in the **Group or users names** list if the check boxes are not already cleared. Click **OK**. 
12.	Close the console.

#### Creating an Enrollment Agent certificate for typical Service Acconts

Sign-in a certificate authority or management workstations with *Domain Admin* equivalent credentials.

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

#### Windows Hello for Business authentication certificate template

During Windows Hello for Business provisioning, the Windows 10, version 1703 client requests an authentication certificate from the Active Directory Federation Service, which requests the authentication certificate on behalf of the user.  This task configures the Windows Hello for Business authentication certificate template.  You use the name of the certificate template when configuring.

##### Creating Windows Hello for Business authentication certiicate template

Sign-in a certificate authority or management workstations with _Domain Admin equivalent_ credentials.

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

##### Mark the template as the Windows Hello Sign-in template

Sign-in to an **AD FS Windows Server 2016** computer with _Enterprise Admin_ equivalent credentials.
1. Open an elevated command prompt.
2. Run `certutil –dsTemplate WHFBAuthentication msPKI-Private-Key-Flag +CTPRIVATEKEY_FLAG_HELLO_LOGON_KEY`

>[!NOTE]
>If you gave your Windows Hello for Business Authentication certificate template a different name, then replace **WHFBAuthentication** in the above command with the name of your certificate template. It’s important that you use the template name rather than the template display name. You can view the template name on the **General** tab of the certificate template using the Certificate Template management console (certtmpl.msc).  Or, you can view the template name using the **Get-CATemplate** ADCS Administration Windows PowerShell cmdlet on our Windows Server 2012 or later certificate authority.
Publish Templates

### Publishing Certificate Templates

The certificate authority may only issue certificates for certificate templates that are published to that certificate authority.  If you have more than one certificate authority and you want that certificate authority to issue certificates based on a specific certificate template, then you must publish the certificate template to all certificate authorities that are expected to issue the certificate.

#### Publish Certificate Templates to a Certificate Authority

Sign-in a certificate authority or management workstations with _Enterprise Admin_ equivalent credentials.

1. Open the **Certificate Authority** management console.
2. Expand the parent node from the navigation pane.
3. Click **Certificate Templates** in the navigation pane.
4. Right-click the **Certificate Templates** node.  Click **New**, and click **Certificate Template to issue**.
5. In the **Enable Certificates Templates** window, select the **Domain Controller Authentication (Kerberos)** template you created in the previous steps.  Click **OK** to publish the selected certificate templates to the certificate authority.
6. Publish the **WHFB Enrollment Agent**, **WHFB Authentication** certificate template using step 5. 
7. Close the console.


### Unpublishing Superseded Certificate Templates

The certificate authority only issues certificates based on published certificate templates.  For defense in depth security, it is a good practice to unpublish certificate templates that the certificate authority is not configured to issue.  This includes the pre-published certificate template from the role installation and any superseded certificate templates.

The newly created domain controller authentication certificate template supersedes previous domain controller certificate templates.  Therefore, you need to unpublish these certificate templates from all issuing certificate authorities.

#### Unpublish Superseded Certificate Templates

Sign-in to the certificate authority or management workstation with _Enterprise Admin_ equivalent credentials.

1.	Open the **Certificate Authority** management console.
2.	Expand the parent node from the navigation pane.
3.	Click **Certificate Templates** in the navigation pane.
4.	Right-click the **Domain Controller** certificate template in the content pane and select **Delete**.  Click **Yes** on the **Disable certificate templates** window.
5.	Repeat step 4 for the **Domain Controller Authentication** and **Kerberos Authentication** certificate templates.

### Section Review
- [x] Active Directory
- [x] Public Key Infrastructure
- [x] Azure Active Directory
- [x] Directory Synchronization
- [x] Active Directory Federation Services
- [x] Federation Services
  - [x]	Federation Proxy Servers
  - [x]	Multiple top-level domains
  - [x]	Azure Device Registration
  - [x]	Device Writeback
- [x] Multifactor Authentication
- [x] Windows Hello for Business
  - [x]Active Directory
  - [x] Directory Synchronization
  - [x] Public Key Infrastructure
  - [ ] Federation Services
  - [ ] Group Policy
- [ ] Sign-in and Provision


## Federation Services

The Windows Server 2016 Active Directory Fedeartion Server Certificate Registration Authority (AD FS RA) enrolls for an enrollment agent certificate. Once the registration authority verifies the certificate request, it signs the certificate request using its enrollment agent certificate and sends it to the certificate authority. 

The Windows Hello for Business Authentication certificate template is configured to only issue certificates to certificate requests that have been signed with an enrollment agent certificate.

### Configure the Registration Authority

Sign-in the AD FS server with *Domain Admin* equivalent credentials. 

1.	Open a **Windows PowerShell** prompt.
2.	Type the following command   
  
    ```PowerShell
    Set-AdfsCertificateAuthority -EnrollmentAgent -EnrollmentAgentCertificateTemplate WHFBEnrollmentAgent -WindowsHelloCertificateTemplate WHFBAuthentication
    ```


The `Set-AdfsCertificateAuthority` cmdlet should show the following warning:
>WARNING: PS0343: Issuing Windows Hello certificates requires enabling a permitted strong authentication provider, but no usable providers are currently configured.  These authentication providers are not supported for Windows Hello certificates: CertificateAuthentication,MicrosoftPassportAuthentication. Windows Hello certificates will not be issued until a permitted strong authentication provider is configured.

This warning indicates that you have not configured multi-factor authentication in AD FS and until it is configured, the AD FS server will not issue Windows Hello certificates.  Windows 10, version 1703 clients check this configuration during prerequisite checks.  If detected, the prerequisite check will not succeed and the user will not provision Windows Hello for Business on sign-in.

>[!NOTE]
> If you gave your Windows Hello for Business Enrollment Agent and Windows Hello for Business Authentication certificate templates different names, then replace **WHFBEnrollmentAgent** and WHFBAuthentication in the above command with the name of your certificate templates.  It’s important that you use the template name rather than the template display name.  You can view the template name on the **General** tab of the certificate template using the **Certificate Template** management console (certtmpl.msc).  Or, you can view the template name using the **Get-CATemplate** ADCS Administration Windows PowerShell cmdlet on a Windows Server 2012 or later certificate authority.


### Group Memberships for the AD FS Service Account

The KeyCredential Admins global group provides the AD FS service with the permissions needed to perform key registration.  The Windows Hello for Business group provides the AD FS service with the permissions needed to enroll a Windows Hello for Business authentication certificate on behalf of the provisioning user.

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

### Section Review
- [x] Active Directory
- [x] Public Key Infrastructure
- [x] Azure Active Directory
- [x] Directory Synchronization
- [x] Active Directory Federation Services
- [x] Federation Services
  - [x]	Federation Proxy Servers
  - [x]	Multiple top-level domains
  - [x]	Azure Device Registration
  - [x]	Device Writeback
- [x] Multifactor Authentication
- [x] Windows Hello for Business
  - [x]Active Directory
  - [x] Directory Synchronization
  - [x] Public Key Infrastructure
  - [x] Federation Services
  - [ ] Group Policy
- [ ] Sign-in and Provision

## Policy Configuration

You need a Windows 10, version 1703 workstation to run the Group Policy Management Console, which provides the latest Windows Hello for Business and PIN Complexity Group Policy settings.  To run the Group Policy Management Console, you need to install the Remote Server Administration Tools for Windows 10. You can download these tools from the [Microsoft Download Center](https://www.microsoft.com/en-us/download/details.aspx?id=45520).
Install the Remote Server Administration Tools for Windows 10 on a computer running Windows 10, version 1703.

Alternatively, you can create copy the .ADMX and .ADML files from a Windows 10 Creators Edition (1703) to their respective language folder on a Windows Server or you can create a Group Policy Central Store and copy them their respective language folder. See [How to create and manage the Central Store for Group Policy Administrative Templates in Windows](https://support.microsoft.com/help/3087759/how-to-create-and-manage-the-central-store-for-group-policy-administrative-templates-in-windows) for more information.

Domain controllers of Windows Hello for Business deployments need one Group Policy setting, which enables automatic certificate enrollment for the newly create domain controller authentication certificate. This policy setting ensures domain controllers (new and existing) autoamtically request and renew the correct domain controller certifcate.  

Domain joined clients of hybrid certificate-based deployments of Windows Hello for Business needs three Group Policy settings:
* Enable Windows Hello for Business
* Use certificate for on-premises authentication
* Enable automatic enrollment of certificates

### Configure Domain Controllers for Automatic Certificate Enrollment

Domain controllers automatically request a certificate from the *Domain Controller* certificate template.  However, the domain controller is unaware of newer certificate templates or superseded configurations on certificate templates.  

To continue automatic enrollment and renewal of domain controller certificates that understand newer certificate template and superseded certificate template configurations, create and configure a Group Policy object for automatic certificate enrollment and link the Group Policy object to the Domain Controllers OU.

#### Create a Domain Controller Automatic Certifiacte Enrollment Group Policy object

Sign-in a domain controller or management workstations with _Domain Admin_ equivalent credentials.

1.	Start the **Group Policy Management Console** (gpmc.msc)
2.	Expand the domain and select the **Group Policy Object** node in the navigation pane.
3.	Right-click **Group Policy object** and select **New**
4.	Type *Domain Controller Auto Certificate Enrollment* in the name box and click **OK**.
5.	Right-click the **Domain Controller Auto Certificate Enrollment** Group Policy object and click **Edit**.
6.	In the navigation pane, expand **Policies** under **Computer Configuration**.
7.	Expand **Windows Settings**, **Security Settings**, and click **Public Key Policies**.
8.	In the details pane, right-click **Certificate Services Client – Auto-Enrollment** and select **Properties**.
9.	Select **Enabled** from the **Configuration Model** list.
10.	Select the **Renew expired certificates**, **update pending certificates**, and **remove revoked certificates** check box.
11.	Select the **Update certificates that use certificate templates** check box.
12.	Click **OK**. Close the **Group Policy Management Editor**.

#### Deploy the Domain Controller Auto Certificate Enrollment Group Policy Object

Sign-in a domain controller or management workstations with _Domain Admin_ equivalent credentials.

1.	Start the **Group Policy Management Console** (gpmc.msc)
2.	In the navigation pane, expand the domain and expand the node that has your Active Directory domain name.  Right-click the **Domain Controllers** organizational unit and click **Link an existing GPO…**
3.	In the **Select GPO** dialog box, select **Domain Controller Auto Certificate Enrollment** or the name of the domain controller certificate enrollment Group Policy object you previously created and click **OK**.

### Windows Hello for Business Group Policy

The Windows Hello for Business Group Policy object delivers the correct Group Policy settings to the user, which enables them to enroll and use Windows Hello for Business to authenticate to Azure and Active Directory

#### Enable Windows Hello for Business

The Enable Windows Hello for Business Group Policy setting is the configuration needed for Windows to determine if a user should be attempt to enroll for Windows Hello for Business.  A user will only attempt enrollment if this policy setting is configured to enabled.  

You can configure the Enable Windows Hello for Business Group Policy setting for computer or users. Deploying this policy setting to computers results in ALL users that sign-in that computer to attempt a Windows Hello for Business enrollment. Deploying this policy setting to a user results in only that user attempting a Windows Hello for Business enrollment.  Additionally, you can deploy the policy setting to a group of users so only those users attempt a Windows Hello for Business enrollment. If both user and computer policy settings are deployed, the user policy setting has precedence.

#### Use certificate for on-premises authentication

The Use certificate for on-premises authentication Group Policy setting determines if the on-premises deployment uses the key-trust or certificate trust on-premises authentication model.  You must configure this Group Policy setting to configure Windows to enroll for a Windows Hello for Business authentication certificate. If you do not configure this policy setting, Windows considers the deployment to use key-trust on-premises authentication, which requires a sufficient number of Windows Server 2016 domain controllers to handle the Windows Hello for Business key-trust authentication requests.

You can configure this Group Policy setting for computer or users. Deploying this policy setting to computers results in ALL users requesting a Windows Hello for Business authentication certificate.  Deploying this policy setting to a user results in only that user requesting a Windows Hello for Business authentication certificate. Additionally, you can deploy the policy setting to a group of users so only those users request a Windows Hello for Business authentication certificate. If both user and computer policy settings are deployed, the user policy setting has precedence.

#### Enable automatic enrollment of certificates

Windows Hello for Business provisioning performs the initial enrollment of the Windows Hello for Business authentication certificate. This certificate expires based on the duration configured in the Windows Hello for Business authentication certificate template. The Windows 10, version 1703 certificate auto enrollment was updated to renew these certificates before they expire, which significantly reduces user authentication failures from expired user certificates. 

The process requires no user interaction provided the user signs-in using Windows Hello for Business.  The certificate is renewed in the background before it expires.

#### Create the Windows Hello for Business Group Policy object

The Group Policy object contains the policy settings needed to trigger Windows Hello for Business provisioning and to ensure Windows Hello for Business authentication certificates are automatically renewed.

Sign-in a domain controller or management workstations with _Domain Admin_ equivalent credentials.

1. Start the **Group Policy Management Console** (gpmc.msc)
2. Expand the domain and select the **Group Policy Object** node in the navigation pane.
3. Right-click **Group Policy object** and select **New**.
4. Type *Enable Windows Hello for Business* in the name box and click **OK**.
5. In the content pane, right-click the **Enable Windows Hello for Business** Group Policy object and click **Edit**.
6. In the navigation pane, expand **Policies** under **User Configuration**.
7. Expand **Administrative Templates > Windows Component**, and select **Windows Hello for Business**.
8. In the content pane, double-click **Use Windows Hello for Business**. Click **Enable** and click **OK**.
9. Double-click **Use certificate for on-premises authentication**. Click **Enable** and click **OK**.  Close the **Group Policy Management Editor**.

#### Configure Automatic Certificate Enrollment

1. Start the **Group Policy Management Console** (gpmc.msc).
2. Expand the domain and select the **Group Policy Object** node in the navigation pane.
3. Right-click the **Enable Windows Hello for Business** Group Policy object and click **Edit**.
4. In the navigation pane, expand **Policies** under **User Configuration**.
5. Expand **Windows Settings > Security Settings**, and click **Public Key Policies**.
6. In the details pane, right-click **Certificate Services Client – Auto-Enrollment** and select **Properties**.
7. Select **Enabled** from the **Configuration Model** list.
8. Select the **Renew expired certificates**, **update pending certificates**, and **remove revoked certificates** check box.
9. Select the **Update certificates that use certificate templates** check box.
10.	Click **OK**. Close the **Group Policy Management Editor**.

#### Configure Security in the Windows Hello for Business Group Policy object

The best way to deploy the Windows Hello for Business Group Policy object is to use security group filtering. The enables you to easily manage the users that should receive Windows Hello for Business by simply adding them to a group. This enables you to deploy Windows Hello for Business in phases.
1. Start the **Group Policy Management Console** (gpmc.msc)
2. Expand the domain and select the **Group Policy Object** node in the navigation pane.
3. Double-click the **Enable Windows Hello for Business** Group Policy object.
4. In the **Security Filtering** section of the content pane, click **Add**.  Type *Windows Hello for Business Users* or the name of the security group you previously created and click **OK**.
5. Click the **Delegation** tab. Select **Authenticated Users** and click **Advanced**.
6. In the **Group or User names** list, select **Authenticated Users**.  In the **Permissions for Authenticated Users** list, clear the **Allow** check box for the **Apply Group Policy** permission. Click **OK**.

#### Deploy the Windows Hello for Business Group Policy object

The application of the Windows Hello for Business Group Policy object uses security group filtering.  This enables you to link the Group Policy object at the domain, ensuring the Group Policy object is within scope to all users. However, the security group filtering ensures only the users included in the *Windows Hello for Business Users* global group receive and apply the Group Policy object, which results in the provisioning of Windows Hello for Business.
1. Start the **Group Policy Management Console** (gpmc.msc)
2. In the navigation pane, expand the domain and right-click the node that has your Active Directory domain name and click **Link an existing GPO…**
3. In the **Select GPO** dialog box, select **Enable Windows Hello for Business** or the name of the Windows Hello for Business Group Policy object you previously created and click **OK**.

Just to reassure, linking the **Windows Hello for Business** Group Policy object to the domain ensures the Group Policy object is in scope for all domain users. However, not all users will have the policy settings applied to them. Only users who are members of the Windows Hello for Business group receive the policy settings. All others users ignore the Group Policy object. 

### Other Related Group Policy settings

#### Windows Hello for Business

There are other Windows Hello for Business policy settings you can configure to manage your Windows Hello for Business deployment.  These policy settings are computer-based policy setting; so they are applicable to any user that sign-in from a computer with these policy settings. 

##### Use a hardware security device

The default configuration for Windows Hello for Business is to prefer hardware protected credentials; however, not all computers are able to create hardware protected credentials.  When Windows Hello for Business enrollment encounters a computer that cannot create a hardware protected credential, it will create a software-based credential.

You can enable and deploy the **Use a hardware security device** Group Policy Setting to force Windows Hello for Business to only create hardware protected credentials.  Users that sign-in from a computer incapable of creating a hardware protected credential do not enroll for Windows Hello for Business.

Another policy setting becomes available when you enable the **Use a hardware security device** Group Policy setting that enables you to prevent Windows Hello for Business enrollment from using version 1.2 Trusted Platform Modules (TPM). Version 1.2 TPMs typically perform cryptographic operations slower than version 2.0 TPMs and are more unforgiven during anti-hammering and PIN lockout activities. Therefore, some organization may want not want slow sign-in performance and management overhead associated with version 1.2 TPMs. To prevent Windows Hello for Business from using version 1.2 TPMs, simply select the TPM 1.2 check box after you enable the Use a hardware security device Group Policy object.

##### Use biometrics

Windows Hello for Business provides a great user experience when combined with the use of biometrics.  Rather than providing a PIN to sign-in, a user can use a fingerprint or facial recognition to sign-in to Windows, without sacrificing security.  

The default Windows Hello for Business enables users to enroll and use biometrics. However, some organization may want more time before using biometrics and want to disable their use until they are ready. To not allow users to use biometrics, configure the **Use biometrics** Group Policy setting to disabled and apply it to your computers.  The policy setting disabled all biometrics. Currently, Windows does not provide granular policy setting that enable you to disable specific modalities of biometrics such as allow facial recognition, but disallow fingerprint.

#### PIN Complexity

PIN complexity is not specific to Windows Hello for Business. Windows 10 enables users to use PINs outside of Windows Hello for Business. PIN Complexity Group Policy settings apply to all uses of PINs, even when Windows Hello for Business is not deployed. 

Windows 10 provides eight PIN Complexity Group Policy settings that give you granular control over PIN creation and management. You can deploy these policy settings to computers, where they affect all users creating PINs on that computer; or, you can deploy these settings to users, where they affect those users creating PINs regardless of the computer they use.  If you deploy both computer and user PIN complexity Group Policy settings, the user policy settings have precedence over computer policy settings. Also, this conflict resolution is based on the last applied policy. Windows does not merge the policy settings automatically; however, you can deploy Group Policy to provide to accomplish a variety of configurations.  The policy settings included are:
* Require digits
* Require lowercase letters
* Maximum PIN length
* Minimum PIN length
* Expiration
* History
* Require special characters
* Require uppercase letters

Starting with Windows 10, version 1703, the PIN complexity Group Policy settings have moved to remove misunderstanding that PIN complexity policy settings were exclusive to Windows Hello for Business. The new location of these Group Policy settings is under **Computer Configuration\Administrative Templates\System\PIN Complexity**  of the Group Policy editor.

### Add users to the Windows Hello for Business Users group

Users must receive the Windows Hello for Business group policy settings and have the proper permission to enroll for the Wwindows Hello for Business Authentication certificate. You can provide users with these settings and permissions by adding the group used synchronize users to the Windows Hello for Business Users group.   Users and groups who are not members of this group will not attempt to enroll for Windows Hello for Business.

### Section Review
- [x] Active Directory
- [x] Public Key Infrastructure
- [x] Azure Active Directory
- [x] Directory Synchronization
- [x] Active Directory Federation Services
- [x] Federation Services
  - [x]	Federation Proxy Servers
  - [x]	Multiple top-level domains
  - [x]	Azure Device Registration
  - [x]	Device Writeback
- [x] Multifactor Authentication
- [x] Windows Hello for Business
  - [x]Active Directory
  - [x] Directory Synchronization
  - [x] Public Key Infrastructure
  - [x] Federation Services
  - [x] Group Policy
- [ ] Sign-in and Provision

## Next Steps ###
\<TBD>

<br><br>

<hr>

## Follow the Windows Hello for Business on premises certificate trust deployment guide
1. [Overview](hello-hybrid-cert-trust-overview)
2. [Prerequistes](hello-hybrid-cert-trust-prereqs.md)
3. [New Installation Baseline](hello-hybrid-cert-new-install.md)
4. Configure Windows Hello for Business settings (*You are here*)
5. Sign-in and Provision
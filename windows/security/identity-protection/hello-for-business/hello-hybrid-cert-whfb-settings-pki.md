---
title: Configuring Hybrid Windows Hello for Business - Public Key Infrastructure (PKI)
description: Discussing the configuration of the Public Key Infrastructure (PKI) in a Hybrid deployment of Windows Hello for Business
keywords: identity, PIN, biometric, Hello, passport, WHFB, PKI
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
---

# Configure Hybrid Windows Hello for Business: Public Key Infrastructure

**Applies to**
-   Windows 10, version 1703 or later
-   Hybrid Deployment
-   Certificate Trust


Windows Hello for Business deployments rely on certificates.  Hybrid deployments uses publicly issued server authentication certificates to validate the name of the server to which they are connecting and to encrypt the data that flows them and the client computer.

All deployments use enterprise issued certificates for domain controllers as a root of trust.  Hybrid certificate trust deployments issue users sign-in certificate that enables them to authenticate using Windows Hello for Business credentials to non-Windows Server 2016 domain controllers.  Additionally, hybrid certificate trust deployments issue certificate to registration authorities to provide defense-in-depth security for issuing user authentication certificates. 

## Certificate Templates

This section has you configure certificate templates on your Windows Server 2012 or later issuing certificate authority. 

### Domain Controller certificate template

Clients need to trust domain controllers and the best way to do this is to ensure each domain controller has a Kerberos Authentication certificate.  Installing a certificate on the domain controller enables the Key Distribution Center (KDC) to prove its identity to other members of the domain.  This provides clients a root of trust external to the domain - namely the enterprise certificate authority.

Domain controllers automatically request a domain controller certificate (if published) when they discover an enterprise certificate authority is added to Active Directory.  However, certificates based on the *Domain Controller* and *Domain Controller Authentication* certificate templates do not include the **KDC Authentication** object identifier (OID), which was later added to the Kerberos RFC.  Therefore, domain controllers need to request a certificate based on the Kerberos Authentication certificate template.

By default, the Active Directory Certificate Authority provides and publishes the Kerberos Authentication certificate template.  However, the cryptography configuration included in the provided template is based on older and less performant cryptography APIs.  To ensure domain controllers request the proper certificate with the best available cryptography, use the **Kerberos Authentication** certificate template a baseline to create an updated domain controller certificate template.

#### Create a Domain Controller Authentication (Kerberos) Certificate Template

Sign-in a certificate authority or management workstations with _Domain Admin_ equivalent credentials.

1.	Open the **Certificate Authority** management console.
2.	Right-click **Certificate Templates** and click **Manage**.
3.	In the **Certificate Template Console**, right-click the **Kerberos Authentication** template in the details pane and click **Duplicate Template**.
4.	On the **Compatibility** tab, clear the **Show resulting changes** check box.  Select **Windows Server 2008 R2** from the **Certification Authority** list. Select **Windows 7.Server 2008 R2** from the **Certification Recipient** list.
5.	On the **General** tab, type **Domain Controller Authentication (Kerberos)** in Template display name.  Adjust the validity and renewal period to meet your enterprise's needs.   
    **Note**If you use different template names, you'll need to remember and substitute these names in different portions of the lab.
6.	On the **Subject** tab, select the **Build from this Active Directory information** button if it is not already selected.  Select **None** from the **Subject name format** list.  Select **DNS name** from the **Include this information in alternate subject** list. Clear all other items.
7.	On the **Cryptography** tab, select **Key Storage Provider** from the **Provider Category** list.  Select **RSA** from the **Algorithm name** list.  Type **2048** in the **Minimum key size** text box.  Select **SHA256** from the **Request hash** list.  Click **OK**. 
8.	Close the console.

#### Configure Certificate Suspeding for the Domain Controller Authentication (Kerberos) Certificate Template

Many domain controllers may have an existing domain controller certificate.  The Active Directory Certificate Services provides a default certificate template for domain controllers--the domain controller certificate template.  Later releases provided a new certificate template--the domain controller authentication certificate template.  These certificate templates were provided prior to update of the Kerberos specification that stated Key Distribution Centers (KDCs) performing certificate authentication needed to include the **KDC Authentication** extension.  

The Kerberos Authentication certificate template is the most current certificate template designated for domain controllers and should be the one you deploy to all your domain controllers (2008 or later).

The auto-enrollment feature in Windows enables you to effortlessly replace these domain controller certificates.  You can use the following configuration to replace older domain controller certificates with a new certificate using the Kerberos Authentication certificate template. 

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

### Enrollment Agent certificate template

Active Directory Federation Server used for Windows Hello for Business certificate enrollment performs its own certificate life-cycle management.  Once the registration authority is configured with the proper certificate template, the AD FS server attempts to enroll the certificate on the first certificate request or when the service first starts.

Approximately 60 days prior to enrollment agent certificate's expiration, the AD FS service attempts to renew the certificate until it is successful.  If the certificate fails to renew, and the certificate expires, the AD FS server will request a new enrollment agent certificate.  You can view the AD FS event logs to determine the status of the enrollment agent certificate.

> [!IMPORTANT]
> Follow the procedures below based on the AD FS service account used in your  environment. 

#### Creating an Enrollment Agent certificate for Group Managed Service Accounts

Sign-in a certificate authority or management workstations with _Domain Admin_ equivalent credentials.

1. Open the **Certificate Authority Management** console.
2. Right-click **Certificate Templates** and click **Manage**.
3. In the **Certificate Template Console**, right click on the **Exchange Enrollment Agent (Offline request)** template details pane and click **Duplicate Template**.
4. On the **Compatibility** tab, clear the **Show resulting changes** check box. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Authority** list. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Recipient** list.
5. On the **General** tab, type **WHFB Enrollment Agent** in **Template display name**.  Adjust the validity and renewal period to meet your enterprise's needs.
6. On the **Subject** tab, select the **Supply in the request** button if it is not already selected.   
    **Note:** The preceding step is very important.  Group Managed Service Accounts (GMSA) do not support the Build from this Active Directory information option and will result in the AD FS server failing to enroll the enrollment agent certificate.  You must configure the certificate template with Supply in the request to ensure that AD FS servers can perform the automatic enrollment and renewal of the enrollment agent certificate.

7. On the **Cryptography** tab, select **Key Storage Provider** from the **Provider Category** list.  Select **RSA** from the **Algorithm name** list.  Type **2048** in the **Minimum key size** text box.  Select **SHA256** from the **Request hash** list.
8. On the **Security** tab, click **Add**. 
9. Click **Object Types**.  Select the **Service Accounts** check box and click **OK**.
10.	Type **adfssvc** in the **Enter the object names to select** text box and click **OK**.
11.	Click the **adfssvc** from the **Group or users names** list. In the **Permissions for adfssvc** section, select the **Allow** check box for the **Enroll** permission. Excluding the **adfssvc** user, clear the **Allow** check box for the **Enroll** and **Autoenroll** permissions for all other items in the **Group or users names** list if the check boxes are not already cleared. Click **OK**. 
12.	Close the console.

#### Creating an Enrollment Agent certificate for typical Service Acconts

Sign-in a certificate authority or management workstations with *Domain Admin* equivalent credentials.

1. Open the **Certificate Authority** management console.
2. Right-click **Certificate Templates** and click **Manage**.
3. In the **Certificate Template** console, right-click the **Exchange Enrollment Agent** template in the details pane and click **Duplicate Template**.
4. On the **Compatibility** tab, clear the **Show resulting changes** check box.  Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Authority** list. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Recipient** list.
5. On the **General** tab, type **WHFB Enrollment Agent** in **Template display name**.  Adjust the validity and renewal period to meet your enterprise's needs.
6. On the **Subject** tab, select the **Build from this Active Directory information** button if it is not already selected. Select **Fully distinguished name** from the **Subject name format** list if **Fully distinguished name** is not already selected.  Select the **User Principal Name (UPN)** check box under **Include this information in alternative subject name**.
7. On the **Cryptography** tab, select **Key Storage Provider** from the **Provider Category** list.  Select **RSA** from the **Algorithm name** list.  Type **2048** in the **Minimum key size** text box.  Select **SHA256** from the **Request hash** list.
8. On the **Security** tab, click **Add**. Type **adfssvc** in the **Enter the object names to select text box** and click **OK**.
9. Click the **adfssvc** from the **Group or users names** list. In the **Permissions for adfssvc** section, select the **Allow** check box for the **Enroll** permission. Excluding the **adfssvc** user, clear the **Allow** check boxes for the **Enroll** and **Autoenroll** permissions for all other items in the **Group or users names** list if the check boxes are not already cleared. Click **OK**. 
10.	Close the console.

### Creating Windows Hello for Business authentication certificate template

During Windows Hello for Business provisioning, the Windows 10, version 1703 client requests an authentication certificate from the Active Directory Federation Service, which requests the authentication certificate on behalf of the user.  This task configures the Windows Hello for Business authentication certificate template.  You use the name of the certificate template when configuring.

Sign-in a certificate authority or management workstations with _Domain Admin equivalent_ credentials.

1. Open the **Certificate Authority** management console.
2. Right-click **Certificate Templates** and click **Manage**.
3. Right-click the **Smartcard Logon** template and choose **Duplicate Template**.
4. On the **Compatibility** tab, clear the **Show resulting changes** check box.  Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Authority** list. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Recipient** list.
5. On the **General** tab, type **WHFB Authentication** in **Template display name**.  Adjust the validity and renewal period to meet your enterprise's needs.   
    **Note:** If you use different template names, you'll need to remember and substitute these names in different portions of the deployment.
6. On the **Cryptography** tab, select **Key Storage Provider** from the **Provider Category** list.  Select **RSA** from the **Algorithm name** list.  Type **2048** in the **Minimum key size** text box.  Select **SHA256** from the **Request hash** list.  
7. On the **Extensions** tab, verify the **Application Policies** extension includes **Smart Card Logon**.
8. On the **Issuance Requirements** tab, select the **This number of authorized signatures** check box.  Type **1** in the text box.   
    * Select **Application policy** from the **Policy type required in signature**.	Select **Certificate Request Agent** from in the **Application policy** list. Select the **Valid existing certificate** option.
9. On the **Subject** tab, select the **Build from this Active Directory information** button if it is not already selected. Select **Fully distinguished name** from the **Subject name format** list if **Fully distinguished name** is not already selected. Select the **User Principal Name (UPN)** check box under **Include this information in alternative subject name**.
10.	On the **Request Handling** tab, select the **Renew with same key** check box.
11.	On the **Security** tab, click **Add**. Type **Window Hello for Business Users** in the **Enter the object names to select** text box and click **OK**.
12.	Click the **Windows Hello for Business Users** from the **Group or users names** list. In the **Permissions for Windows Hello for Business Users** section, select the **Allow** check box for the **Read**, **Enroll**, and **AutoEnroll** permissions. Excluding the **Windows Hello for Business Users** group, clear the **Allow** check box for the **Enroll** and **Autoenroll** permissions for all other entries in the **Group or users names** section if the check boxes are not already cleared. Click **OK**. 
13.	If you previously issued Windows Hello for Business sign-in certificates using Configuration Manger and are switching to an AD FS registration authority, then on the **Superseded Templates** tab, add the previously used **Windows Hello for Business Authentication** template(s), so they will be superseded by this template for the users that have Enroll permission for this template.
14.	Click on the **Apply** to save changes and close the console.

#### Mark the template as the Windows Hello Sign-in template

Sign-in to an **AD FS Windows Server 2016** computer with _Enterprise Admin_ equivalent credentials.
1. Open an elevated command prompt.
2. Run `certutil -dsTemplate WHFBAuthentication msPKI-Private-Key-Flag +CTPRIVATEKEY_FLAG_HELLO_LOGON_KEY`

>[!NOTE]
>If you gave your Windows Hello for Business Authentication certificate template a different name, then replace **WHFBAuthentication** in the above command with the name of your certificate template. It's important that you use the template name rather than the template display name. You can view the template name on the **General** tab of the certificate template using the Certificate Template management console (certtmpl.msc).  Or, you can view the template name using the **Get-CATemplate** ADCS Administration Windows PowerShell cmdlet on our Windows Server 2012 or later certificate authority.

## Publish Templates

### Publish Certificate Templates to a Certificate Authority

The certificate authority may only issue certificates for certificate templates that are published to that certificate authority.  If you have more than one certificate authority and you want that certificate authority to issue certificates based on a specific certificate template, then you must publish the certificate template to all certificate authorities that are expected to issue the certificate.

#### Publish Certificate Templates to the Certificate Authority

Sign-in to the certificate authority or management workstations with an _Enterprise Admin_ equivalent credentials.
1.	Open the **Certificate Authority** management console.
2.	Expand the parent node from the navigation pane.
3.	Click **Certificate Templates** in the navigation pane.
4.	Right-click the **Certificate Templates** node.  Click **New**, and click **Certificate Template** to issue.
5.	In the **Enable Certificates Templates** window, select the **Domain Controller Authentication (Kerberos)**, **WHFB Enrollment Agent** and **WHFB Authentication** templates you created in the previous steps.  Click **OK** to publish the selected certificate templates to the certificate authority.   
6.	Close the console.


#### Unpublish Superseded Certificate Templates

The certificate authority only issues certificates based on published certificate templates.  For defense in depth security, it is a good practice to unpublish certificate templates that the certificate authority is not configured to issue.  This includes the pre-published certificate template from the role installation and any superseded certificate templates.

The newly created domain controller authentication certificate template supersedes previous domain controller certificate templates.  Therefore, you need to unpublish these certificate templates from all issuing certificate authorities.

Sign-in to the certificate authority or management workstation with _Enterprise Admin_ equivalent credentials.

1.	Open the **Certificate Authority** management console.
2.	Expand the parent node from the navigation pane.
3.	Click **Certificate Templates** in the navigation pane.
4.	Right-click the **Domain Controller** certificate template in the content pane and select **Delete**.  Click **Yes** on the **Disable certificate templates** window.
5.	Repeat step 4 for the **Domain Controller Authentication** and **Kerberos Authentication** certificate templates.

### Section Review
> [!div class="checklist"]
> * Domain Controller certificate template
> * Configure superseded domain controller certificate templates
> * Enrollment Agent certificate template
> * Windows Hello for Business Authentication certificate template
> * Mark the certificate template as Windows Hello for Business sign-in template
> * Publish Certificate templates to certificate authorities
> * Unpublish superseded certificate templates


> [!div class="step-by-step"]
[< Configure Azure AD Connect](hello-hybrid-cert-whfb-settings-dir-sync.md)
[Configure AD FS >](hello-hybrid-cert-whfb-settings-adfs.md)

<br><br>

<hr>

## Follow the Windows Hello for Business hybrid certificate trust deployment guide
1. [Overview](hello-hybrid-cert-trust.md)
2. [Prerequisites](hello-hybrid-cert-trust-prereqs.md)
3. [New Installation Baseline](hello-hybrid-cert-new-install.md)
4. [Configure Azure Device Registration](hello-hybrid-cert-trust-devreg.md)
5. Configure Windows Hello for Business settings: PKI (*You are here*)
6. [Sign-in and Provision](hello-hybrid-cert-whfb-provision.md)


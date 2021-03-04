---
title: Configuring Hybrid Windows Hello for Business - Public Key Infrastructure (PKI)
description: Discussing the configuration of the Public Key Infrastructure (PKI) in a Hybrid deployment of Windows Hello for Business
keywords: identity, PIN, biometric, Hello, passport, WHFB, PKI
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
audience: ITPro
author: mapalko
ms.author: mapalko
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 01/14/2021
ms.reviewer: 
---

# Configure Hybrid Windows Hello for Business: Public Key Infrastructure

**Applies to**

- Windows 10, version 1703 or later
- Hybrid Deployment
- Certificate Trust

Windows Hello for Business deployments rely on certificates. Hybrid deployments use publicly-issued server authentication certificates to validate the name of the server to which they are connecting and to encrypt the data that flows between them and the client computer.

All deployments use enterprise issued certificates for domain controllers as a root of trust. Hybrid certificate trust deployments issue users with a sign-in certificate that enables them to authenticate using Windows Hello for Business credentials to non-Windows Server 2016 domain controllers. Additionally, hybrid certificate trust deployments issue certificates to registration authorities to provide defense-in-depth security when issuing user authentication certificates.

## Certificate Templates

This section has you configure certificate templates on your Windows Server 2012 (or later) Active Directory Certificate Services issuing certificate authority.

### Domain Controller certificate template

Clients need to trust domain controllers and the best way to do this is to ensure each domain controller has a Kerberos Authentication certificate.  Installing a certificate on the domain controller enables the Key Distribution Center (KDC) to prove its identity to other members of the domain.  This provides clients a root of trust external to the domain - namely the enterprise certificate authority.

Domain controllers automatically request a domain controller certificate (if published) when they discover an enterprise certificate authority is added to Active Directory.  However, certificates based on the *Domain Controller* and *Domain Controller Authentication* certificate templates do not include the **KDC Authentication** object identifier (OID), which was later added to the Kerberos RFC. Inclusion of the **KDC Authentication** OID in domain controller certificate is not required for key trust authentication from Hybrid Azure AD joined devices. The OID is required for enabling authentication with Windows Hello for Business to on-premises resources by Azure AD joined devices. The steps below to *Create a Domain Controller Authentication (Kerberos) Certificate Template* and *Configure Certificate Superseding for the Domain Controller Authentication (Kerberos) Certificate Template* to include the **KDC Authentication** OID in the domain controller certificate may be skipped if you only have Hybrid Azure AD Joined devices in your environment, but we recommend completing these steps if you are considering adding Azure AD joined devices to your environment in the future.

By default, the Active Directory Certificate Authority provides and publishes the Kerberos Authentication certificate template. However, the cryptography configuration included in the provided template is based on older and less performant cryptography APIs. To ensure domain controllers request the proper certificate with the best available cryptography, use the **Kerberos Authentication** certificate template as a baseline to create an updated domain controller certificate template.

#### Create a Domain Controller Authentication (Kerberos) Certificate Template

Sign-in a certificate authority or management workstations with _Domain Admin_ equivalent credentials.

1. Open the **Certification Authority** management console.

2. Right-click **Certificate Templates** and click **Manage**.

3. In the **Certificate Template Console**, right-click the **Kerberos Authentication** template in the details pane and click **Duplicate Template**.

4. On the **Compatibility** tab, clear the **Show resulting changes** check box.  Select **Windows Server 2008 R2** from the **Certification Authority** list. Select **Windows 7.Server 2008 R2** from the **Certification Recipient** list.

5. On the **General** tab, type **Domain Controller Authentication (Kerberos)** in Template display name.  Adjust the validity and renewal period to meet your enterprise's needs.

   > [!NOTE]
   > If you use different template names, you'll need to remember and substitute these names in different portions of the lab.

6. On the **Subject** tab, select the **Build from this Active Directory information** button if it is not already selected.  Select **None** from the **Subject name format** list.  Select **DNS name** from the **Include this information in alternate subject** list. Clear all other items.

7. On the **Cryptography** tab, select **Key Storage Provider** from the **Provider Category** list.  Select **RSA** from the **Algorithm name** list.  Type **2048** in the **Minimum key size** text box.  Select **SHA256** from the **Request hash** list.  Click **OK**.

8. Close the console.

#### Configure Certificate Superseding for the Domain Controller Authentication (Kerberos) Certificate Template

Many domain controllers may have an existing domain controller certificate. Active Directory Certificate Services provides a default certificate template for domain controllers--the Domain Controller certificate template.  Later releases provided a new certificate template--the Domain Controller Authentication certificate template. These certificate templates were provided prior to update of the Kerberos specification that stated Key Distribution Centers (KDCs) performing certificate authentication needed to include the **KDC Authentication** extension.

The Kerberos Authentication certificate template is the most current certificate template designated for domain controllers, and should be the one you deploy to all your domain controllers (2008 or later).

The auto-enrollment feature in Windows enables you to effortlessly replace these domain controller certificates. You can use the following configuration to replace older domain controller certificates with a new certificate based on the Kerberos Authentication certificate template.

Sign-in a certificate authority or management workstations with _Enterprise Admin_ equivalent credentials.

1. Open the **Certification Authority** management console.

2. Right-click **Certificate Templates** and click **Manage**.

3. In the **Certificate Template Console**, right-click the **Domain Controller Authentication (Kerberos)** (or the name of the certificate template you created in the previous section) template in the details pane and click **Properties**.

4. Click the **Superseded Templates** tab. Click **Add**.

5. From the **Add Superseded Template** dialog, select the **Domain Controller** certificate template and click **OK**.  Click **Add**.

6. From the **Add Superseded Template** dialog, select the **Domain Controller Authentication** certificate template and click **OK**.

7. From the **Add Superseded Template dialog**, select the **Kerberos Authentication** certificate template, and click **OK**.

8. Add any other enterprise certificate templates that were previously configured for domain controllers to the **Superseded Templates** tab.

9. Click **OK** and close the **Certificate Templates** console.

The certificate template is configured to supersede all the certificate templates listed in the superseded templates list. However, the certificate template and the superseding of certificate templates is not active until you publish the certificate template to one or more certificate authorities.

> [!NOTE]
> A domain controller's certificate must chain to a certificate in the NTAuth store in Active Directory. By default, online "Enterprise" Active Directory Certificate Authority certificates are added to the NTAuth store at installation time. If you are using a third-party CA, this is not done by default. If the domain controller certificate does not chain to a trusted CA in the NTAuth store, user authentication will fail. 
> You can view an AD forest's NTAuth store (NTAuthCertificates) using PKIVIEW.MSC from an ADCS CA. Open PKIView.msc, then click the Action menu -> Manage AD Containers.

### Enrollment Agent certificate template

Active Directory Federation Server used for Windows Hello for Business certificate enrollment performs its own certificate lifecycle management. Once the registration authority is configured with the proper certificate template, the AD FS server attempts to enroll the certificate on the first certificate request, or when the service first starts.

Approximately 60 days prior to the enrollment agent certificate's expiration, the AD FS service attempts to renew the certificate until it is successful. If the certificate fails to renew and expires, the AD FS server will request a new enrollment agent certificate. You can view the AD FS event logs to determine the status of the enrollment agent certificate.

> [!IMPORTANT]
> Follow the procedures below based on the AD FS service account used in your environment.

#### Creating an Enrollment Agent certificate for Group Managed Service Accounts

Sign-in to a certificate authority or management workstation with _Domain Admin_ equivalent credentials.

1. Open the **Certification Authority Management** console.

2. Right-click **Certificate Templates** and click **Manage**.

3. In the **Certificate Template Console**, right click on the **Exchange Enrollment Agent (Offline request)** template details pane and click **Duplicate Template**.

4. On the **Compatibility** tab, clear the **Show resulting changes** check box. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Authority** list. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Recipient** list.

5. On the **General** tab, type **WHFB Enrollment Agent** in **Template display name**.  Adjust the validity and renewal period to meet your enterprise's needs.

6. On the **Subject** tab, select the **Supply in the request** button if it is not already selected.

   > [!NOTE]
   > The preceding step is very important. Group Managed Service Accounts (GMSA) do not support the _Build from this Active Directory information_ option, which will result in the AD FS server failing to enroll the enrollment agent certificate. You must configure the certificate template with _Supply in the request_ to ensure that AD FS servers can perform the automatic enrollment and renewal of the enrollment agent certificate.

7. On the **Cryptography** tab, select **Key Storage Provider** from the **Provider Category** list.  Select **RSA** from the **Algorithm name** list.  Type **2048** in the **Minimum key size** text box.  Select **SHA256** from the **Request hash** list.

8. On the **Security** tab, click **Add**.

9. Click **Object Types**.  Select the **Service Accounts** check box and click **OK**.

10. Type **adfssvc** in the **Enter the object names to select** text box and click **OK**.

11. Click the **adfssvc** from the **Group or users names** list. In the **Permissions for adfssvc** section, select the **Allow** check box for the **Enroll** permission. Excluding the **adfssvc** user, clear the **Allow** check box for the **Enroll** and **Autoenroll** permissions for all other items in the **Group or users names** list if the check boxes are not already cleared. Click **OK**.

12. Close the console.

#### Creating an Enrollment Agent certificate for typical Service Accounts

Sign-in to a certificate authority or management workstation with *Domain Admin* equivalent credentials.

1. Open the **Certification Authority** management console.

2. Right-click **Certificate Templates** and click **Manage**.

3. In the **Certificate Template** console, right-click the **Exchange Enrollment Agent (Offline request)** template in the details pane and click **Duplicate Template**.

4. On the **Compatibility** tab, clear the **Show resulting changes** check box.  Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Authority** list. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Recipient** list.

5. On the **General** tab, type **WHFB Enrollment Agent** in **Template display name**.  Adjust the validity and renewal period to meet your enterprise's needs.

6. On the **Subject** tab, select the **Build from this Active Directory information** button if it is not already selected. Select **Fully distinguished name** from the **Subject name format** list if **Fully distinguished name** is not already selected.  Select the **User Principal Name (UPN)** check box under **Include this information in alternative subject name**.

7. On the **Cryptography** tab, select **Key Storage Provider** from the **Provider Category** list.  Select **RSA** from the **Algorithm name** list.  Type **2048** in the **Minimum key size** text box.  Select **SHA256** from the **Request hash** list.

8. On the **Security** tab, click **Add**. Type **adfssvc** in the **Enter the object names to select text box** and click **OK**.

9. Click the **adfssvc** from the **Group or users names** list. In the **Permissions for adfssvc** section, select the **Allow** check box for the **Enroll** permission. Excluding the **adfssvc** user, clear the **Allow** check boxes for the **Enroll** and **Autoenroll** permissions for all other items in the **Group or users names** list if the check boxes are not already cleared. Click **OK**.

10. Close the console.

### Creating Windows Hello for Business authentication certificate template

During Windows Hello for Business provisioning, a Windows 10 client requests an authentication certificate from the Active Directory Federation Service, which requests an authentication certificate on behalf of the user. This task configures the Windows Hello for Business authentication certificate template. You set the name of the certificate template when configuring it.

Sign-in to a certificate authority or management workstation with _Domain Admin equivalent_ credentials.

1. Open the **Certification Authority** management console.

2. Right-click **Certificate Templates** and click **Manage**.

3. Right-click the **Smartcard Logon** template and choose **Duplicate Template**.

4. On the **Compatibility** tab, clear the **Show resulting changes** check box.  Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Authority** list. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Recipient** list.

5. On the **General** tab, type **WHFB Authentication** or your choice of template name in **Template display name**. Note the short template name for later use with CertUtil. Adjust the validity and renewal period to meet your enterprise's needs.

   > [!NOTE]
   > If you use different template names, you'll need to remember and substitute these names in the relevant portions of the deployment. 

6. On the **Cryptography** tab, select **Key Storage Provider** from the **Provider Category** list.  Select **RSA** from the **Algorithm name** list.  Type **2048** in the **Minimum key size** text box.  Select **SHA256** from the **Request hash** list.

7. On the **Extensions** tab, verify the **Application Policies** extension includes **Smart Card Logon**.

8. On the **Issuance Requirements** tab, select the **This number of authorized signatures** check box.  Type **1** in the text box.   

   Select **Application policy** from the **Policy type required in signature**. Select **Certificate Request Agent** from in the **Application policy** list. Select the **Valid existing certificate** option.

9. On the **Subject** tab, select the **Build from this Active Directory information** button if it is not already selected. Select **Fully distinguished name** from the **Subject name format** list if **Fully distinguished name** is not already selected. Select the **User Principal Name (UPN)** check box under **Include this information in alternative subject name**.

10. On the **Request Handling** tab, select the **Renew with same key** check box.

11. On the **Security** tab, click **Add**. Type **Window Hello for Business Users** in the **Enter the object names to select** text box and click **OK**.

12. Click the **Windows Hello for Business Users** from the **Group or users names** list. In the **Permissions for Windows Hello for Business Users** section, select the **Allow** check box for the **Read**, **Enroll**, and **AutoEnroll** permissions. Excluding the **Windows Hello for Business Users** group, clear the **Allow** check box for the **Enroll** and **Autoenroll** permissions for all other entries in the **Group or users names** section if the check boxes are not already cleared. Click **OK**. 

13. If you previously issued Windows Hello for Business sign-in certificates using Configuration Manger and are switching to an AD FS registration authority, then on the **Superseded Templates** tab, add the previously used **Windows Hello for Business Authentication** template(s), so they will be superseded by this template for the users that have Enroll permission for this template.

14. Click on the **Apply** to save changes and close the console.

#### Mark the template as the Windows Hello Sign-in template

Sign-in to an **AD FS Windows Server 2016** computer with _Enterprise Admin_ equivalent credentials.

1. Open an elevated command prompt.

2. Run `certutil -dsTemplate WHFBAuthentication msPKI-Private-Key-Flag +CTPRIVATEKEY_FLAG_HELLO_LOGON_KEY`

If the template was changed successfully, the output of the command will contain old and new values of the template parameters. The new value must contain the **CTPRIVATEKEY_FLAG_HELLO_LOGON_KEY** parameter. Example:

```console
CN=Certificate Templates,CN=Public Key Services,CN=Services,CN=Configuration,DC=[yourdomain]:WHFBAuthentication

Old Value:
msPKI-Private-Key-Flag REG_DWORD = 5050080 (84213888)
CTPRIVATEKEY_FLAG_REQUIRE_SAME_KEY_RENEWAL -- 80 (128)
CTPRIVATEKEY_FLAG_ATTEST_NONE -- 0
TEMPLATE_SERVER_VER_WINBLUE<<CTPRIVATEKEY_FLAG_SERVERVERSION_SHIFT -- 50000 (327680)
TEMPLATE_CLIENT_VER_WINBLUE<<CTPRIVATEKEY_FLAG_CLIENTVERSION_SHIFT -- 5000000 (83886080)

New Value:
msPKI-Private-Key-Flag REG_DWORD = 5250080 (86311040)
CTPRIVATEKEY_FLAG_REQUIRE_SAME_KEY_RENEWAL -- 80 (128)
CTPRIVATEKEY_FLAG_ATTEST_NONE -- 0
TEMPLATE_SERVER_VER_WINBLUE<<CTPRIVATEKEY_FLAG_SERVERVERSION_SHIFT -- 50000 (327680)
CTPRIVATEKEY_FLAG_HELLO_LOGON_KEY -- 200000 (2097152)
TEMPLATE_CLIENT_VER_WINBLUE<<CTPRIVATEKEY_FLAG_CLIENTVERSION_SHIFT -- 5000000 (83886080)
CertUtil: -dsTemplate command completed successfully."
```

> [!NOTE]
> If you gave your Windows Hello for Business Authentication certificate template a different name, then replace **WHFBAuthentication** in the above command with the name of your certificate template. It's important that you use the template name rather than the template display name. You can view the template name on the **General** tab of the certificate template using the Certificate Template management console (certtmpl.msc). Or, you can view the template name using the **Get-CATemplate** ADCS Administration Windows PowerShell cmdlet on a Windows Server 2012 or later certificate authority.

## Publish Templates

### Publish Certificate Templates to a Certificate Authority

The certificate authority only issues certificates for certificate templates which are published by that certificate authority. If you have more than one certificate authority and you want that certificate authority to issue certificates based on a specific certificate template, then you must publish the certificate template to all certificate authorities that are expected to issue the certificate.

#### Publish Certificate Templates to the Certificate Authority

Sign-in to the certificate authority or management workstations with an _Enterprise Admin_ equivalent credentials.

1. Open the **Certification Authority** management console.

2. Expand the parent node from the navigation pane.

3. Click **Certificate Templates** in the navigation pane.

4. Right-click the **Certificate Templates** node. Click **New**, and click **Certificate Template to issue**.

5. In the **Enable Certificates Templates** window, Ctrl-select the **Domain Controller Authentication (Kerberos)**, **WHFB Enrollment Agent** and **WHFB Authentication** templates you created in the previous steps. Click **OK** to publish the selected certificate templates to the certificate authority.

6. Close the console.

#### Unpublish Superseded Certificate Templates

The certificate authority only issues certificates based on published certificate templates. For defense-in-depth security, it is a good practice to unpublish certificate templates that the certificate authority is not configured to issue. This includes any pre-published certificate templates from the role installation and any superseded certificate templates.

The newly-created Kerberos authentication-based Domain Controller certificate template supersedes any previous domain controller certificate templates. Therefore, you should unpublish these certificate templates from all issuing certificate authorities.

Sign-in to each certificate authority, or a management workstation with _Enterprise Admin_ equivalent credentials.

1. Open the **Certification Authority** management console.

2. Expand the parent node from the navigation pane.

3. Click **Certificate Templates** in the navigation pane.

4. Right-click the **Domain Controller** certificate template in the content pane and select **Delete**.  Click **Yes** on the **Disable certificate templates** window.

5. Repeat step 4 for the **Domain Controller Authentication** and **Kerberos Authentication** certificate templates.

### Section Review

> [!div class="checklist"]
> * Domain Controller certificate template
> * Configure superseded domain controller certificate templates
> * Enrollment Agent certificate template
> * Windows Hello for Business Authentication certificate template
> * Mark the certificate template as Windows Hello for Business sign-in template
> * Publish Certificate templates to certificate authorities
> * Unpublish superseded certificate templates
> 
> [!div class="step-by-step"]
> [< Configure Azure AD Connect](hello-hybrid-cert-whfb-settings-dir-sync.md)
> [Configure AD FS >](hello-hybrid-cert-whfb-settings-adfs.md)

<br><br>

<hr>

## Follow the Windows Hello for Business hybrid certificate trust deployment guide

1. [Overview](hello-hybrid-cert-trust.md)
2. [Prerequisites](hello-hybrid-cert-trust-prereqs.md)
3. [New Installation Baseline](hello-hybrid-cert-new-install.md)
4. [Configure Azure Device Registration](hello-hybrid-cert-trust-devreg.md)
5. Configure Windows Hello for Business settings: PKI (*You are here*)
6. [Sign-in and Provision](hello-hybrid-cert-whfb-provision.md)

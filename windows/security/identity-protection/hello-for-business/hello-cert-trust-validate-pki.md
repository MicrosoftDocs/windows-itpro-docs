---
title: Configure and validate the Public Key Infrastructure in an on-premises certificate trust model
description: Configure and validate the Public Key Infrastructure the Public Key Infrastructure when deploying Windows Hello for Business in a certificate trust model.
ms.date: 12/12/2022
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10 and later</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2016 and later</a>
ms.topic: tutorial
---
# Configure and validate the Public Key Infrastructure - on-premises certificate trust

[!INCLUDE [hello-on-premises-cert-trust](../../includes/hello-on-premises-cert-trust.md)]

Windows Hello for Business must have a Public Key Infrastructure (PKI) when using the *key trust* or *certificate trust* models. The domain controllers must have a certificate, which serves as a root of trust for clients. The certificate ensures that clients don't communicate with rogue domain controllers. The certificate trust model extends certificate issuance to client computers. During Windows Hello for Business provisioning, the user receives a sign-in certificate.

## Deploy an enterprise certification authority

This guide assumes most enterprises have an existing public key infrastructure. Windows Hello for Business depends on an enterprise PKI running the Windows Server *Active Directory Certificate Services* role.

### Lab-based PKI

The following instructions may be used to deploy simple public key infrastructure that is suitable **for a lab environment**.

Sign in using *Enterprise Administrator* equivalent credentials on a Windows Server where you want the certification authority (CA) installed.

>[!NOTE]
>Never install a certification authority on a domain controller in a production environment.

1. Open an elevated Windows PowerShell prompt
1. Use the following command to install the Active Directory Certificate Services role.
    ```PowerShell
    Add-WindowsFeature Adcs-Cert-Authority -IncludeManagementTools
    ```
3. Use the following command to configure the CA using a basic certification authority configuration
    ```PowerShell
    Install-AdcsCertificationAuthority
    ```

## Configure a PKI

If you have an existing PKI, review [Certification Authority Guidance](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh831574(v=ws.11)) to properly design your infrastructure.  Then, consult the [Test Lab Guide: Deploying an AD CS Two-Tier PKI Hierarchy](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh831348(v=ws.11)) for instructions on how to configure your PKI using the information from your design session.

Expand the following sections to configure the PKI for Windows Hello for Business.

<br>
<details>
<summary><b>Configure domain controller certificates</b></summary>

[!INCLUDE [dc-certificate-template](includes/dc-certificate-template.md)]

</details>

<br>
<details>
<summary><b>Supersede existing domain controller certificates</b></summary>

[!INCLUDE [dc-certificate-template-supersede](includes/dc-certificate-supersede.md)]

</details>

<br>
<details>
<summary><b>Configure an internal web server certificate template</b></summary>

[!INCLUDE [web-server-certificate-template](includes/web-server-certificate-template.md)]

</details>

<br>
<details>
<summary><b>Configure a certificate registration authority template</b></summary>

A certificate registration authority (CRA) is a trusted authority that validates certificate request. Once it validates the request, it presents the request to the certification authority (CA) for issuance. The CA issues the certificate, returns it to the CRA, which returns the certificate to the requesting user. The Windows Hello for Business on-premises certificate-based deployment uses AD FS as the CRA.

The CRA enrolls for an *enrollment agent* certificate. Once the CRA verifies the certificate request, it signs the certificate request using its enrollment agent certificate and sends it to the CA. The Windows Hello for Business Authentication certificate template is configured to only issue certificates to certificate requests that have been signed with an enrollment agent certificate. The CA only issues a certificate for that template if the registration authority signs the certificate request.

Sign in to a CA or management workstations with *Domain Administrator* equivalent credentials.

1. Open the **Certification Authority** management console
1. Right-click **Certificate Templates** and select **Manage**
1. In the **Certificate Template Console**, right-click on the **Exchange Enrollment Agent (Offline request)** template details pane and select **Duplicate Template**
1. On the **Compatibility** tab:
   - Clear the **Show resulting changes** check box
   - Select **Windows Server 2016** from the **Certification Authority** list. 
   - Select **Windows 10 / Windows Server 2016** from the **Certificate Recipient** list
1. On the **General** tab:
   - Type *WHFB Enrollment Agent* in **Template display name**
   - Adjust the validity and renewal period to meet your enterprise's needs
1. On the **Subject** tab, select the **Supply in the request** button if it is not already selected

   > [!NOTE]
   > Group Managed Service Accounts (GMSA) do not support the *Build from this Active Directory information* option and will result in the AD FS server failing to enroll the enrollment agent certificate. You must configure the certificate template with *Supply in the request* to ensure that AD FS servers can perform the automatic enrollment and renewal of the enrollment agent certificate.

1. On the **Cryptography** tab:
   - Select **Key Storage Provider** from the **Provider Category** list
   - Select **RSA** from the **Algorithm name** list
   - Type *2048* in the **Minimum key size** text box
   - Select **SHA256** from the **Request hash** list
1. On the **Security** tab, select **Add**
1. Select **Object Types** and select the **Service Accounts** check box. Select **OK**
1. Type *adfssvc* in the **Enter the object names to select** text box and select **OK**
1. Select the **adfssvc** from the **Group or users names** list. In the **Permissions for adfssvc** section:
   - In the **Permissions for adfssvc** section, select the **Allow** check box for the **Enroll** permission
   - Excluding the **adfssvc** user, clear the **Allow** check box for the **Enroll** and **Autoenroll** permissions for all other items in the **Group or users names** list if the check boxes are not already cleared
   - Select **OK**
1. Close the console

</details>

<br>
<details>
<summary><b>Configure a Windows Hello for Business authentication certificate template</b></summary>

During Windows Hello for Business provisioning, Windows clients request an authentication certificate from AD FS, which requests the authentication certificate on behalf of the user. This task configures the Windows Hello for Business authentication certificate template.

Sign in to a CA or management workstations with *Domain Administrator* equivalent credentials.

1. Open the **Certification Authority** management console
1. Right-click **Certificate Templates** and select **Manage**
1. Right-click the **Smartcard Logon** template and choose **Duplicate Template**
1. On the **Compatibility** tab:
   - Clear the **Show resulting changes** check box
   - Select **Windows Server 2016** from the **Certification Authority** list
   - Select **Windows 10 / Windows Server 2016** from the **Certificate Recipient** list
1. On the **General** tab:
   - Type *WHFB Authentication* in **Template display name**
   - Adjust the validity and renewal period to meet your enterprise's needs
   > [!NOTE]
   > If you use different template names, you'll need to remember and substitute these names in different portions of the deployment.
1. On the **Cryptography** tab
   - Select **Key Storage Provider** from the **Provider Category** list
   - Select **RSA** from the **Algorithm name** list
   - Type *2048* in the **Minimum key size** text box
   - Select **SHA256** from the **Request hash** list
1. On the **Extensions** tab, verify the **Application Policies** extension includes **Smart Card Logon**
1. On the **Issuance Requirements** tab, 
   - Select the **This number of authorized signatures** check box. Type *1* in the text box
   - Select **Application policy** from the **Policy type required in signature**
   - Select **Certificate Request Agent** from in the **Application policy** list
   - Select the **Valid existing certificate** option
1. On the **Subject** tab, 
   - Select the **Build from this Active Directory information** button
   - Select **Fully distinguished name** from the **Subject name format** list
   - Select the **User Principal Name (UPN)** check box under **Include this information in alternative subject name**
1. On the **Request Handling** tab, select the **Renew with same key** check box
1. On the **Security** tab, select **Add**. Type *Window Hello for Business Users* in the **Enter the object names to select** text box and select **OK**
1. Select the **Windows Hello for Business Users** from the **Group or users names** list. In the **Permissions for Windows Hello for Business Users** section:
   - Select the **Allow** check box for the **Enroll** permission
   - Excluding the **Windows Hello for Business Users** group, clear the **Allow** check box for the **Enroll** and **Autoenroll** permissions for all other entries in the **Group or users names** section if the check boxes are not already cleared
   - Select **OK**
1. If you previously issued Windows Hello for Business sign-in certificates using Configuration Manger and are switching to an AD FS registration authority, then on the **Superseded Templates** tab, add the previously used **Windows Hello for Business Authentication** template(s), so they will be superseded by this template for the users that have Enroll permission for this template
1. Select on the **Apply** to save changes and close the console

#### Mark the template as the Windows Hello Sign-in template

Sign in to a CA or management workstations with *Enterprise Administrator* equivalent credentials

Open an elevated command prompt end execute the following command

```cmd
certutil.exe -dsTemplate WHFBAuthentication msPKI-Private-Key-Flag +CTPRIVATEKEY_FLAG_HELLO_LOGON_KEY
```

>[!NOTE]
>If you gave your Windows Hello for Business Authentication certificate template a different name, then replace *WHFBAuthentication* in the above command with the name of your certificate template. It's important that you use the template name rather than the template display name. You can view the template name on the **General** tab of the certificate template using the Certificate Template management console (certtmpl.msc). Or, you can view the template name using the **Get-CATemplate** ADCS Administration Windows PowerShell cmdlet on your certification authority.


</details>

<br>
<details>
<summary><b>Unpublish Superseded Certificate Templates</b></summary>

[!INCLUDE [unpublish-superseded-templates](includes/unpublish-superseded-templates.md)]

</details>

<br>
<details>
<summary><b>Publish certificate templates to the CA</b></summary>

A certification authority can only issue certificates for certificate templates that are published to it. If you have more than one CA, and you want more CAs to issue certificates based on the certificate template, then you must publish the certificate template to them.

Sign in to the CA or management workstations with **Enterprise Admin** equivalent credentials.

1. Open the **Certification Authority** management console
1. Expand the parent node from the navigation pane
1. Select **Certificate Templates** in the navigation pane
1. Right-click the **Certificate Templates** node. Select **New > Certificate Template** to issue
1. In the **Enable Certificates Templates** window, select the *Domain Controller Authentication (Kerberos)*, *Internal Web Server*, *WHFB Enrollment Agent* and *WHFB Authentication* templates you created in the previous steps. Select **OK** to publish the selected certificate templates to the certification authority
1. If you published the *Domain Controller Authentication (Kerberos)* certificate template, then unpublish the certificate templates you included in the superseded templates list
   - To unpublish a certificate template, right-click the certificate template you want to unpublish and select **Delete**. Select **Yes** to confirm the operation
1. Close the console

</details>

## Configure and deploy certificates to domain controllers

[!INCLUDE [dc-certificate-deployment](includes/dc-certificate-deployment.md)]

## Validate the configuration

[!INCLUDE [dc-certificate-validate](includes/dc-certificate-validate.md)]

> [!div class="nextstepaction"]
> [Next: prepare and deploy AD FS >](hello-cert-trust-adfs.md)
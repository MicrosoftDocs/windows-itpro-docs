---
title: Deploy certificates for remote desktop sign-in
description: Learn how to deploy certificates to cloud Kerberos trust and key trust users, to enable remote desktop sign-in with supplied credentials.
ms.topic: how-to
ms.date: 07/25/2023
---

# Deploy certificates for remote desktop (RDP) sign-in

This document describes Windows Hello for Business functionalities or scenarios that apply to:
- **Deployment type:** [!INCLUDE [hybrid](./includes/hello-deployment-hybrid.md)]
- **Trust type:** [!INCLUDE [cloud-kerberos](./includes/hello-trust-cloud-kerberos.md)], [!INCLUDE [key](./includes/hello-trust-key.md)]
- **Join type:** [!INCLUDE [hello-join-aadj](./includes/hello-join-aad.md)], [!INCLUDE [hello-join-hybrid](./includes/hello-join-hybrid.md)]
---

Windows Hello for Business supports using a certificate as the supplied credential, when establishing a remote desktop connection to another Windows device. This document discusses three approaches for *cloud Kerberos trust* and *key trust* deployments, where authentication certificates can be deployed to an existing Windows Hello for Business user:

- Deploy certificates to hybrid joined devices using an on-premises Active Directory Certificate Services enrollment policy
- Deploy certificates to hybrid or Microsoft Entra joined devices using Intune
- Work with third-party PKIs

## Deploy certificates via Active Directory Certificate Services (AD CS)

> [!NOTE]
> This process is applicable to *Microsoft Entra hybrid joined* devices only.

To deploy certificates using an on-premises Active Directory Certificate Services enrollment policy, you must first create a *certificate template*, and then deploy certificates based on that template.

### Create a Windows Hello for Business certificate template

Follow these steps to create a certificate template:

1. Sign in to your issuing certificate authority (CA) and open *Server Manager*
1. Select **Tools > Certification Authority**. The Certification Authority Microsoft Management Console (MMC) opens
1. In the MMC, expand the CA name and right-click **Certificate Templates > Manage**
1. The Certificate Templates console opens. All of the certificate templates are displayed in the details pane
1. Right-click the **Smartcard Logon** template and select **Duplicate Template**
1. Use the following table to configure the template:

    | Tab Name | Configurations |
    | --- | --- |
    | *Compatibility* | <ul><li>Clear the **Show resulting changes** check box</li><li>Select **Windows Server 2012 or Windows Server 2012 R2** from the *Certification Authority list*</li><li>Select **Windows Server 2012 or Windows Server 2012 R2** from the *Certification Recipient list*</li></ul>|
    | *General* | <ul><li>Specify a **Template display name**, for example *WHfB Certificate Authentication*</li><li>Set the validity period to the desired value</li><li>Take note of the Template name for later, which should be the same as the Template display name minus spaces (*WHfBCertificateAuthentication* in this example)</li></ul>|
    | *Extensions* | Verify the **Application Policies** extension includes **Smart Card Logon**|
    | *Subject Name* | <ul><li> Select the **Build from this Active Directory** information button if it isn't already selected</li><li>Select **Fully distinguished name** from the **Subject name format** list if Fully distinguished name isn't already selected</li><li>Select the **User Principal Name (UPN)** check box under **Include this information in alternative subject name**</li></ul><br>**Note:** If you deploy certificates via Intune, select **Supply in the request** instead of *Build from this Active Directory*.|
    |*Request Handling*|<ul><li>Set the Purpose to **Signature and smartcard logon** and select **Yes** when prompted to change the certificate purpose</li><li>Select the **Renew with same key** check box</li><li>Select **Prompt the user during enrollment**</li></ul>|
    |*Cryptography*|<ul><li>Set the Provider Category to **Key Storage Provider**</li><li>Set the Algorithm name to **RSA**</li><li>Set the minimum key size to **2048**</li><li>Select **Requests must use one of the following providers**</li><li>Select **Microsoft Software Key Storage Provider**</li><li>Set the Request hash to **SHA256**</li></ul>|
    |*Security*|Add the security group that you want to give **Enroll** access to. For example, if you want to give access to all users, select the **Authenticated** users group, and then select Enroll permissions for them|

1. Select **OK** to finalize your changes and create the new template. Your new template should now appear in the list of Certificate Templates
1. Close the Certificate Templates console
1. Open an elevated command prompt and change to a temporary working directory
1. Execute the following command, replacing `<TemplateName>` with the **Template display name** noted above

    ```cmd
    certutil.exe -dstemplate <TemplateName> > <TemplateName.txt>
    ```

1. Open the text file created by the command above.
    - Delete the last line of the output from the file that reads\
      `CertUtil: -dsTemplate command completed successfully.`
    - Modify the line that reads\
      `pKIDefaultCSPs = "1,Microsoft Software Key Storage Provider"` to\
      `pKIDefaultCSPs = "1,Microsoft Passport Key Storage Provider"`
1. Save the text file
1. Update the certificate template by executing the following command:

    ```cmd
    certutil.exe -dsaddtemplate <TemplateName.txt>
    ```

1. In the Certificate Authority console, right-click **Certificate Templates**, select **New > Certificate Template to Issue**
1. From the list of templates, select the template you previously created (**WHFB Certificate Authentication**) and select **OK**. It can take some time for the template to replicate to all servers and become available in this list
1. After the template replicates, in the MMC, right-click in the Certification Authority list, select **All Tasks > Stop Service**. Right-click the name of the CA again, select **All Tasks > Start Service**

### Request a certificate

1. Sign in to a client that is Microsoft Entra hybrid joined, ensuring that the client has line of sight to a domain controller and the issuing CA
1. Open the **Certificates - Current User** Microsoft Management Console (MMC). To do so, you can execute the command `certmgr.msc`
1. In the left pane of the MMC, right-click **Personal > All Tasks > Request New Certificate…**
1. On the Certificate Enrollment screen, select **Next**
1. Under *Select Certificate Enrollment Policy*, select **Active Directory Enrollment Policy > Next**
1. Under *Request Certificates*, select the check-box for the certificate template you created in the previous section (*WHfB Certificate Authentication*) and then select **Enroll**
1. After a successful certificate request, select **Finish** on the Certificate Installation Results screen

## Deploy certificates via Intune

> [!CAUTION]
> This process is applicable to both *Microsoft Entra joined* and *Microsoft Entra hybrid joined* devices that are managed via Intune.
>
> If you deploy certificates via Intune and configure Windows Hello for Business via group policy, the devices will fail to obtain a certificate, logging the error code `0x82ab0011` in the `DeviceManagement-Enterprise-Diagnostic-Provider` log.\
> To avoid the error, configure Windows Hello for Business via Intune instead of group policy.

Deploying a certificate to Microsoft Entra joined or Microsoft Entra hybrid joined devices may be achieved using the Simple Certificate Enrollment Protocol (SCEP) or PKCS (PFX) via Intune. For guidance deploying the required infrastructure, refer to:

- [Configure infrastructure to support SCEP certificate profiles with Microsoft Intune][MEM-1]
- [Configure and use PKCS certificates with Intune][MEM-2]

Next, you should deploy the root CA certificate (and any other intermediate certificate authority certificates) to Microsoft Entra joined Devices using a *Trusted root certificate* policy with Intune. For guidance, refer to [Create trusted certificate profiles in Microsoft Intune][MEM-5].

Once these requirements are met, a policy can be configured in Intune that provisions certificates for the users on the targeted device.

### Create a policy in Intune

This section describes how to configure a SCEP policy in Intune. Similar steps can be followed to configure a PKCS policy.

1. Go to the <a href="https://go.microsoft.com/fwlink/?linkid=2109431" target="_blank"><b>Microsoft Intune admin center</b></a>
1. Select **Devices > Configuration profiles > Create profile**
1. Select **Platform > Windows 10 and later** and **Profile type > Templates > SCEP Certificate**
1. Select **Create**
1. In the *Basics* panel, provide a **Name** and, optionally, a **Description > Next**
1. In the *Configuration settings* panel, use the following table to configure the policy:

    | Setting| Configurations |
    | --- | --- |
    |*Certificate Type*| User |
    |*Subject name format* | `CN={{UserPrincipalName}}` |
    |*Subject alternative name* |From the dropdown, select **User principal name (UPN)** with a value of `{{UserPrincipalName}}`
    |*Certificate validity period* | Configure a value of your choosing|
    |*Key storage provider (KSP)* | **Enroll to Windows Hello for Business, otherwise fail (Windows 10 and later)**
    |*Key usage*| **Digital Signature**|
    |*Key size (bits)* | **2048**|
    |*For Hash algorithm*|**SHA-2**|
    |*Root Certificate*| Select **+Root Certificate** and select the trusted certificate profile created earlier for the Root CA Certificate|
    |*Extended key usage*| <ul><li>*Name:* **Smart Card Logon**</li><li>*Object Identifier:* `1.3.6.1.4.1.311.20.2.2`</li><li>*Predefined Values:* **Not configured**</li><br><li>*Name:* **Client Authentication**</li><li>*Object Identifier:* `1.3.6.1.5.5.7.3.2 `</li><li>*Predefined Values:* **Client Authentication**</li></ul>|
    |*Renewal threshold (%)*|Configure a value of your choosing|
    |*SCEP Server URLs*|Provide the public endpoint(s) that you configured during the deployment of your SCEP infrastructure|

1. Select **Next**
1. In the *Assignments* panel, assign the policy to a security group that contains as members the devices or users that you want to configure and select **Next**
1. In the *Applicability Rules* panel, configure issuance restrictions, if needed, and select **Next**
1. In the *Review + create* panel, review the policy configuration and select **Create**

For more information how to configure SCEP policies, see [Configure SCEP certificate profiles in Intune][MEM-3].
To configure PKCS policies, see [Configure and use PKCS certificate with Intune][MEM-4].

### Request a certificate for Intune clients

Once the Intune policy is created, targeted clients will request a certificate during their next policy refresh cycle. To validate that the certificate is present in the user store, follow these steps:

1. Sign in to a client targeted by the Intune policy
1. Open the **Certificates - Current User** Microsoft Management Console (MMC). To do so, you can execute the command `certmgr.msc`
1. In the left pane of the MMC, expand **Personal** and select **Certificates**
1. In the right-hand pane of the MMC, check for the new certificate

## Use third-party certification authorities

If you're using a non-Microsoft PKI, the certificate templates published to the on-premises Active Directory may not be available. For guidance with integration of Intune/SCEP with non-Microsoft PKI deployments, refer to [Use third-party certification authorities (CA) with SCEP in Microsoft Intune][MEM-6].

As an alternative to using SCEP or if none of the previously covered solutions will work in your environment, you can manually generate Certificate Signing Requests (CSR) for submission to your PKI. To assist with this approach, you can use the [Generate-CertificateRequest][HTTP-1] PowerShell commandlet.

The `Generate-CertificateRequest` commandlet will generate an *.inf* file for a pre-existing Windows Hello for Business key. The *.inf* can be used to generate a certificate request manually using `certreq.exe`. The commandlet will also generate a *.req* file, which can be submitted to your PKI for a certificate.

## RDP sign-in with Windows Hello for Business certificate authentication

After obtaining a certificate, users can RDP to any Windows devices in the same Active Directory forest as the user's Active Directory account.

> [!NOTE]
> The certificate chain of the issuing CA must be trusted by the target server.

1. Open the Remote Desktop Client (`mstsc.exe`) on the client where the authentication certificate has been deployed
1. Attempt an RDP session to a target server
1. Use the certificate credential protected by your Windows Hello for Business gesture to authenticate

[MEM-1]: /mem/intune/protect/certificates-scep-configure
[MEM-2]: /mem/intune/protect/certificates-pfx-configure
[MEM-3]: /mem/intune/protect/certificates-profile-scep
[MEM-4]: /mem/intune/protect/certificates-pfx-configure
[MEM-5]: /mem/intune/protect/certificates-trusted-root
[MEM-6]: /mem/intune/protect/certificate-authority-add-scep-overview

[HTTP-1]: https://www.powershellgallery.com/packages/Generate-CertificateRequest

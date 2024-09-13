---
title: Remote Desktop sign-in with Windows Hello for Business
description: Learn how to configure Remote Desktop (RDP) sign-in with Windows Hello for Business.
ms.date: 06/11/2024
ms.topic: how-to
---

# Remote Desktop sign-in with Windows Hello for Business

You can use Windows Hello for Business to sign in to a remote desktop session, using the redirected smart card capabilities of the Remote Desktop Protocol (RDP). This is possible by deploying a certificate to the user's device, which is then used as the supplied credential when establishing the RDP connection to another Windows device.

This article describes two certificate deployment approaches, where authentication certificates are deployed to the Windows Hello for Business container:

- Using Microsoft Intune with SCEP or PKCS connectors
- Using an Active Directory Certificate Services (AD CS) enrollment policy

>[!IMPORTANT]
> If you deploy the certificate using Microsoft Intune, and you have [User Account Control](../../application-security/application-control/user-account-control/index.md) configured to *Prompt for credentials on the secure desktop*, you won't be able to use the *run as* feature.
> In such scenario, when you try to execute an application with elevated privileges and choose the Windows Hello for Business credential, you'll receive the error message: **The username or password is incorrect**.

> [!TIP]
> Consider using Remote Credential Guard instead of Windows Hello for Business for RDP sign-in. Remote Credential Guard provides single sign-on (SSO) to RDP sessions using Kerberos authentication, and doesn't require the deployment of certificates. For more information, see [Remote Credential Guard](../remote-credential-guard.md).

## How it works

Windows generates and stores cryptographic keys using a software component called a *key storage provider* (KSP):

- Software-based keys are created and stored using the *Microsoft Software Key Storage Provider*
- Smart card keys are created and stored using the *Microsoft Smart Card Key Storage Provider*
- Keys created and protected by Windows Hello for Business are created and stored using the *Microsoft Passport Key Storage Provider*

A certificate on a smart card starts with creating an asymmetric key pair using the Microsoft Smart Card KSP. Windows requests a certificate based on the key pair from your enterprises issuing certificate authority, which returns a certificate that is stored in the user's Personal certificate store. The private key remains on the smart card and the public key is stored with the certificate. Metadata on the certificate (and the key) stores the key storage provider used to create the key (remember the certificate contains the public key).

The same concept applies to Windows Hello for Business, except that the keys are created using the Microsoft Passport KSP. The user's private key remains protected by the device's security module (TPM) and the user's gesture (PIN/biometric). The certificate APIs hide the complexity. When an application uses a certificate, the certificate APIs locate the keys using the saved key storage provider. The key storage providers direct the certificate APIs on which provider they use to find the private key associated with the certificate. This is how Windows knows you have a smart card certificate without the smart card inserted, and prompts you to insert the smart card.

Windows Hello for Business emulates a smart card for application compatibility, and the Microsoft Passport KSP prompts the user for their biometric gesture or PIN.

> [!NOTE]
> Remote Desktop with biometric doesn't work with [Dual Enrollment](hello-feature-dual-enrollment.md) or scenarios where the user provides alternative credentials.

## Requirements

Here's a list of requirements to enable RDP sign-in with Windows Hello for Business:

> [!div class="checklist"]
> * A PKI infrastructure based on AD CS or third-party
> * Windows Hello for Business deployed to the clients
> * If you plan to support Microsoft Entra joined devices, the domain controllers must have a certificate, which serves as a *root of trust* for the clients. The certificate ensures that clients don't communicate with rogue domain controllers

If you plan to deploy certificates using Microsoft Intune, here are more requirements:

> [!div class="checklist"]
> * Ensure you have the infrastructure to support either [SCEP][MEM-1] or [PKCS][MEM-2] deployment
> * Deploy the root CA certificate and any other intermediate certificate authority certificates to Microsoft Entra joined Devices using a [Trusted root certificate policy][MEM-5]

## Create a certificate template

The process of creating a certificate template is applicable to scenarios where you use an on-premises Active Directory Certificate Services (AD CS) infrastructure.\
You must first create a certificate template, and then deploy certificates based on that template to the Windows Hello for Business container.

The certificate template configuration is different depending on whether you deploy certificates using Microsoft Intune or an Active Directory enrollment policy. Select the option that best suits your needs.

# [:::image type="icon" source="../../images/icons/intune.svg" border="false"::: **Microsoft Intune**](#tab/intune)

1. Sign in to your issuing certificate authority (CA) and open *Server Manager*
1. Select **Tools > Certification Authority**. The Certification Authority Microsoft Management Console (MMC) opens
1. In the MMC, expand the CA name and right-click **Certificate Templates > Manage**
1. The Certificate Templates console opens. All of the certificate templates are displayed in the details pane
1. Right-click the **Smartcard Logon** template and select **Duplicate Template**
1. Use the following table to configure the template:

    | Tab Name | Configurations |
    | --- | --- |
    | *Compatibility* | <ul><li>Clear the **Show resulting changes** check box</li><li>Select **Windows Server 2012 or Windows Server 2012 R2** from the *Certification Authority list*</li><li>Select **Windows Server 2012 or Windows Server 2012 R2** from the *Certification Recipient list*</li></ul>|
    | *General* | <ul><li>Specify a **Template display name**, for example *WHfB Certificate Authentication*</li><li>Set the validity period to the desired value</li><li>Take note of the template name for later, which should be the same as the Template display name minus spaces (*WHfBCertificateAuthentication* in this example)</li></ul>|
    | *Extensions* | Verify the **Application Policies** extension includes **Smart Card Logon**.|
    | *Subject Name* | Select **Supply in the request**.|
    |*Request Handling*|<ul><li>Set the Purpose to **Signature and smartcard logon** and select **Yes** when prompted to change the certificate purpose</li><li>Select the **Renew with same key** check box</li><li>Select **Prompt the user during enrollment**</li></ul><br>**Note:** If you deploy certificates with a PKCS profile, select the option **Allow private key to be exported**|
    |*Cryptography*|<ul><li>Set the Provider Category to **Key Storage Provider**</li><li>Set the Algorithm name to **RSA**</li><li>Set the minimum key size to **2048**</li><li>Select **Requests must use one of the following providers**</li><li>Select **Microsoft Software Key Storage Provider**</li><li>Set the Request hash to **SHA256**</li>|
    |*Security*|Add the security principal used for SCEP or PKCS **Enroll** access|

1. Select **OK** to finalize your changes and create the new template. Your new template should now appear in the list of Certificate Templates
1. Close the Certificate Templates console

# [:::image type="icon" source="../../images/icons/certificate.svg" border="false"::: **AD CS policy**](#tab/adcs)

1. Sign in to your issuing certificate authority (CA) and open *Server Manager*
1. Select **Tools > Certification Authority**. The Certification Authority Microsoft Management Console (MMC) opens
1. In the MMC, expand the CA name and right-click **Certificate Templates > Manage**
1. The Certificate Templates console opens. All of the certificate templates are displayed in the details pane
1. Right-click the **Smartcard Logon** template and select **Duplicate Template**
1. Use the following table to configure the template:

    | Tab Name | Configurations |
    | --- | --- |
    | *Compatibility* | <ul><li>Clear the **Show resulting changes** check box</li><li>Select **Windows Server 2012 or Windows Server 2012 R2** from the *Certification Authority list*</li><li>Select **Windows Server 2012 or Windows Server 2012 R2** from the *Certification Recipient list*</li></ul>|
    | *General* | <ul><li>Specify a **Template display name**, for example *WHfB Certificate Authentication*</li><li>Set the validity period to the desired value</li><li>Take note of the template name for later, which should be the same as the Template display name minus spaces (*WHfBCertificateAuthentication* in this example)</li></ul>|
    | *Extensions* | Verify the **Application Policies** extension includes **Smart Card Logon**|
    | *Subject Name* | <ul><li> Select the **Build from this Active Directory** information button if it isn't already selected</li><li>Select **Fully distinguished name** from the **Subject name format** list if Fully distinguished name isn't already selected</li><li>Select the **User Principal Name (UPN)** check box under **Include this information in alternative subject name**</li></ul>|
    |*Request Handling*|<ul><li>Set the Purpose to **Signature and smartcard logon** and select **Yes** when prompted to change the certificate purpose</li><li>Select the **Renew with same key** check box</li><li>Select **Prompt the user during enrollment**</li></ul>|
    |*Cryptography*|<ul><li>Set the Provider Category to **Key Storage Provider**</li><li>Set the Algorithm name to **RSA**</li><li>Set the minimum key size to **2048**</li><li>Select **Requests must use one of the following providers**</li><li>Select **Microsoft Software Key Storage Provider**</li><li>Set the Request hash to **SHA256**</li>|
    |*Security*|Add the security group that you want to give **Enroll** access to. For example, if you want to give access to all users, select the **Authenticated** users group, and then select Enroll permissions for them.|

1. Select **OK** to finalize your changes and create the new template. Your new template should now appear in the list of Certificate Templates
1. Close the Certificate Templates console

### Add Microsoft Passport Key Storage Provider to the certificate template

1. Open an elevated Command Prompt and change to a temporary working directory
1. Execute the following command, replacing `<TemplateName>` with the **Template display name** noted in the table

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

:::row:::
    :::column span="3":::
    >[!NOTE]
    >You can verify that the template is updated by checking its properties.
    :::column-end:::
    :::column span="1":::
    :::image type="content" source="images/rdp/rdp-certificate-template.png" alt-text="Screenshot of the RDP certificate template updated with the Passport KSP." lightbox="images/rdp/rdp-certificate-template.png" border="false":::
    :::column-end:::
:::row-end:::

---

### Issue the certificate template

1. In the Certificate Authority console, right-click **Certificate Templates**, select **New > Certificate Template to Issue**
1. From the list of templates, select the template you previously created (**WHFB Certificate Authentication**) and select **OK**. It can take some time for the template to replicate to all servers and become available in this list
1. After the template replicates, in the MMC, right-click in the Certification Authority list, select **All Tasks > Stop Service**. Right-click the name of the CA again, select **All Tasks > Start Service**

## Deploy certificates

The process of deploying certificates is different depending on whether you use Microsoft Intune or an Active Directory enrollment policy. Select the option that best suits your needs.

# [:::image type="icon" source="../../images/icons/intune.svg" border="false"::: **Microsoft Intune**](#tab/intune)

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
    |*Subject name format* | `CN={{UserPrincipalName}}` <br><br>**Note:** if there's a mismatch between the user UPN suffix and the Active Directory domain FQDN, use `CN={{OnPrem_Distinguished_Name}}` instead.|
    |*Subject alternative name* |From the dropdown, select **User principal name (UPN)** with a value of `{{UserPrincipalName}}`|
    |*Certificate validity period* | Configure a value of your choosing|
    |*Key storage provider (KSP)* | **Enroll to Windows Hello for Business, otherwise fail**|
    |*Key usage*| **Digital Signature**|
    |*Key size (bits)* | **2048**|
    |*For Hash algorithm*|**SHA-2**|
    |*Root Certificate*| Select **+Root Certificate** and select the trusted certificate profile created earlier for the Root CA Certificate|
    |*Extended key usage*| <ul><li>*Name:* **Smart Card Logon**</li><li>*Object Identifier:* `1.3.6.1.4.1.311.20.2.2`</li><li>*Predefined Values:* **Not configured**</li><br><li>*Name:* **Client Authentication**</li><li>*Object Identifier:* `1.3.6.1.5.5.7.3.2`</li><li>*Predefined Values:* **Client Authentication**</li></ul>|
    |*Renewal threshold (%)*|Configure a value of your choosing|
    |*SCEP Server URLs*|Provide the public endpoint(s) that you configured during the deployment of your SCEP infrastructure|

1. Select **Next**
1. In the *Assignments* panel, assign the policy to a security group that contains as members the devices or users that you want to configure and select **Next**
1. In the *Applicability Rules* panel, configure issuance restrictions, if needed, and select **Next**
1. In the *Review + create* panel, review the policy configuration and select **Create**

For more information how to configure SCEP policies, see [Configure SCEP certificate profiles in Intune][MEM-3].
To configure PKCS policies, see [Configure and use PKCS certificate with Intune][MEM-4].

> [!CAUTION]
>
> If you deploy certificates via Intune and configure Windows Hello for Business via group policy, the devices will fail to obtain a certificate, logging the error code `0x82ab0011` in the `DeviceManagement-Enterprise-Diagnostic-Provider` log.\
> To avoid the error, configure Windows Hello for Business via Intune instead of group policy.

# [:::image type="icon" source="../../images/icons/certificate.svg" border="false"::: **AD CS policy**](#tab/adcs)

Here are the steps to manually request a certificate using an Active Directory Certificate Services enrollment policy:

1. Sign in to a client that is Microsoft Entra hybrid joined, ensuring that the client has line of sight to a domain controller and the issuing CA
1. Open the **Certificates - Current User** Microsoft Management Console (MMC). To do so, you can execute the command `certmgr.msc`
1. In the left pane of the MMC, right-click **Personal > All Tasks > Request New Certificate…**
1. On the Certificate Enrollment screen, select **Next**
1. Under *Select Certificate Enrollment Policy*, select **Active Directory Enrollment Policy > Next**
1. Under *Request Certificates*, select the check-box for the certificate template you created in the previous section (*WHfB Certificate Authentication*) and then select **Enroll**
1. After a successful certificate request, select **Finish** on the Certificate Installation Results screen

---

## Use non-Microsoft certification authorities

If you're using a non-Microsoft PKI, the certificate templates published to the on-premises Active Directory may not be available. For guidance with integration of Intune/SCEP with non-Microsoft PKI deployments, refer to [Use non-Microsoft certification authorities (CA) with SCEP in Microsoft Intune][MEM-6].

As an alternative to using SCEP, or if none of the previously covered solutions work in your environment, you can manually generate Certificate Signing Requests (CSR) for submission to your PKI. To assist with this approach, you can use the [Generate-CertificateRequest][HTTP-1] PowerShell commandlet.

The `Generate-CertificateRequest` commandlet generates an `.inf` file for a pre-existing Windows Hello for Business key. The `.inf` can be used to generate a certificate request manually using `certreq.exe`. The commandlet also generates a `.req` file, which can be submitted to your PKI for a certificate.

## Verify that the certificate is deployed

To verify that the certificate is correctly deployed to the Windows Hello for Business container, use the following command:

```cmd
certutil -store -user my
```

The output lists keys and certificates stored in the user store. If a certificate issued from your CA is deployed to the Windows Hello for Business container, the output displays the certificate with a `Provider` value of `Microsoft Passport Key Storage Provider`.

For example:

```cmd
C:\Users\amanda.brady>certutil -store -user my
my "Personal"
================ Certificate 0 ================
Serial Number: 110000001f4c4eccc46fc8f93a00000000001f
Issuer: CN=Contoso - Issuing CA, DC=CONTOSO, DC=COM
 NotBefore: 12/8/2023 6:16 AM
 NotAfter: 12/7/2024 6:16 AM
Subject: CN=amanda.brady@contoso.com
Non-root Certificate
Template: 1.3.6.1.4.1.311.21.8.2835349.12167323.7094945.1118853.678601.83.11484210.8005739
Cert Hash(sha1): 63c6ce5fc512933179d3c0a5e94ecba98092f93d
Key Container = S-1-12-1-../../login.windows.net/../amanda.brady@contoso.com
Provider = Microsoft Passport Key Storage Provider
Private key is NOT exportable
Encryption test passed
```

## User experience

Once users obtain their certificate, they can RDP to any Windows devices in the same Active Directory forest as the users' Active Directory account by opening Remote Desktop Connection (`mstsc.exe`). When connecting to the remote host, they're prompted to use Windows Hello for Business to unlock the private key of the certificate.

:::row:::
    :::column span="2":::
    **Microsoft Entra joined device**

    The user can authenticate using any available Windows Hello unlock gestures, including biometrics.
    :::column-end:::
    :::column span="2":::
    **Microsoft Entra hybrid joined device**

    The credential prompt identifies the Windows Hello credential provider as *Security device credential*. The user must use the PIN credential provider to unlock.
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="2":::
    :::image type="content" source="images/rdp/rdc-entra-joined.png" alt-text="Screenshot of Remote Desktop Connection authentication prompt using biometrics." border="false":::
    :::column-end:::
    :::column span="2":::
    :::image type="content" source="images/rdp/rdc-entra-hybrid-joined.png" alt-text="Screenshot of Remote Desktop Connection authentication prompt using a PIN." border="false":::
    :::column-end:::
:::row-end:::

Here's a brief video showing the user experience from a Microsoft Entra joined device using fingerprint as unlock factor:

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=b6e1038d-98b5-48dc-8afb-65523d12cfaf]

> [!NOTE]
> The user must be authorized to connect to the remote server using the Remote Desktop protocol, for example by being a member of the Remote Desktop Users local group on the remote host.

## Compatibility

While users appreciate the convenience of biometrics, and administrators value the security, you might experience compatibility issues with applications and Windows Hello for Business certificates. In such scenarios, you can deploy a policy setting to revert to the previous behavior for the users needing it.

For more information, see [Use Windows Hello for Business certificates as smart card certificate](policy-settings.md#use-windows-hello-for-business-certificates-as-smart-card-certificates)

## Known issues

There's a known issue when attempting to perform TLS 1.3 client authentication with a Hello certificate via RDP. The authentication fails with the error: `ERR_SSL_CLIENT_AUTH_SIGNATURE_FAILED`. Microsoft is investigating possible solutions.

<!-- links -->

[MEM-1]: /mem/intune/protect/certificates-scep-configure
[MEM-2]: /mem/intune/protect/certificates-pfx-configure
[MEM-3]: /mem/intune/protect/certificates-profile-scep
[MEM-4]: /mem/intune/protect/certificates-pfx-configure
[MEM-5]: /mem/intune/protect/certificates-trusted-root
[MEM-6]: /mem/intune/protect/certificate-authority-add-scep-overview

[HTTP-1]: https://www.powershellgallery.com/packages/Generate-CertificateRequest

[WIN-1]: /windows/client-management/mdm/passportforwork-csp#devicetenantidpoliciesusehellocertificatesassmartcardcertificates

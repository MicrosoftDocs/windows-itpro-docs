---
title: Configure and enroll in Windows Hello for Business in hybrid certificate trust model
description: Learn how to configure devices and enroll them in Windows Hello for Business in a hybrid certificate trust scenario.
ms.date: 09/26/2024
ms.topic: tutorial
---

# Configure and enroll in Windows Hello for Business in hybrid certificate trust model

[!INCLUDE [apply-to-hybrid-cert-trust](includes/apply-to-hybrid-cert-trust.md)]

> [!div class="checklist"]
> Once the prerequisites are met, and the PKI and AD FS configurations are validated, deploying Windows Hello for Business consists of the following steps:
>
> - [Configure Windows Hello for Business policy settings](#configure-windows-hello-for-business-policy-settings)
> - [Enroll in Windows Hello for Business](#enroll-in-windows-hello-for-business)

## Configure Windows Hello for Business policy settings

There are two policy settings required to enable Windows Hello for Business in a certificate trust model:

- [Use Windows Hello for Business](../policy-settings.md#use-windows-hello-for-business)
- [Use certificate for on-premises authentication](../policy-settings.md#use-certificate-for-on-premises-authentication)

Another optional, but recommended, policy setting is:

- [Use a hardware security device](../policy-settings.md#use-a-hardware-security-device)

Use the following instructions to configure your devices using either Microsoft Intune or group policy (GPO).

# [:::image type="icon" source="images/group-policy.svg"::: **GPO**](#tab/gpo)

[!INCLUDE [gpo-enable-whfb](includes/gpo-enable-whfb.md)]

> [!TIP]
> Use the same *Windows Hello for Business Users* security group to assign **Certificate template permissions** to ensure the same members can enroll in the Windows Hello for Business authentication certificate.

Windows Hello for Business provisioning performs the initial enrollment of the Windows Hello for Business authentication certificate. This certificate expires based on the duration configured in the Windows Hello for Business *authentication certificate* template.

The process requires no user interaction, provided the user signs in using Windows Hello for Business. The certificate is renewed in the background before it expires.

[!INCLUDE [gpo-settings-1](../../../../../includes/configure/gpo-settings-1.md)]

| Group policy path | Group policy setting | Value |
| - | - | - |
| **Computer Configuration\Administrative Templates\Windows Components\Windows Hello for Business**<br>or<br> **User Configuration\Administrative Templates\Windows Components\Windows Hello for Business** |Use Windows Hello for Business| **Enabled**|
| **Computer Configuration\Administrative Templates\Windows Components\Windows Hello for Business**<br>or<br> **User Configuration\Administrative Templates\Windows Components\Windows Hello for Business**|Use certificate for on-premises authentication| **Enabled**|
| **Computer Configuration\Windows Settings\Security Settings\Public Key Policies**<br>or<br> **User Configuration\Windows Settings\Security Settings\Public Key Policies** |Certificate Services Client - Auto-Enrollment| - Select **Enabled** from the **Configuration Model**<br>- Select the **Renew expired certificates, update pending certificates, and remove revoked certificates**<br>- Select **Update certificates that use certificate templates**|
| **Computer Configuration\Administrative Templates\Windows Components\Windows Hello for Business** |Use a hardware security device| **Enabled**|

> [!NOTE]
> The enablement of the *Use a hardware security device* policy setting is optional, but recommended.

[!INCLUDE [gpo-settings-2](../../../../../includes/configure/gpo-settings-2.md)]

> [!TIP]
> The best way to deploy the Windows Hello for Business GPO is to use security group filtering. Only members of the targeted security group will provision Windows Hello for Business, enabling a phased rollout. This solution allows linking the GPO to the domain, ensuring the GPO is scoped to all security principals. The security group filtering ensures that only the members of the global group receive and apply the GPO, which results in the provisioning of Windows Hello for Business.

# [:::image type="icon" source="images/intune.svg"::: **Intune/CSP**](#tab/intune)

> [!IMPORTANT]
> The information in this section applies to Microsoft Entra joined devices managed by Intune. Before proceeding, ensure that you completed the steps described in:
>
> - [Configure single sign-on for Microsoft Entra joined devices](../hello-hybrid-aadj-sso.md)
> - [Using Certificates for AADJ On-premises Single-sign On](../hello-hybrid-aadj-sso-cert.md)

> [!NOTE]
> Review the article [Configure Windows Hello for Business using Microsoft Intune](../configure.md#configure-windows-hello-for-business-using-microsoft-intune) to learn about the different options offered by Microsoft Intune to configure Windows Hello for Business.

If the Intune tenant-wide policy is enabled and configured to your needs, you can skip to [Enroll in Windows Hello for Business](#enroll-in-windows-hello-for-business).

[!INCLUDE [intune-settings-catalog-1](../../../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| **Windows Hello for Business** | Use Windows Hello For Business | true |
| **Windows Hello for Business** | Use Certificate For On Prem Auth | Enabled |
| **Windows Hello for Business** | Require Security Device | true |

[!INCLUDE [intune-settings-catalog-2](../../../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][MEM-1] with the [PassportForWork CSP][CSP-1].

| Setting |
|--------|
| - **OMA-URI:** `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/UsePassportForWork`<br>- **Data type:** `bool`<br>- **Value:** `True`|
| - **OMA-URI:** `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/UseCertificateForOnPremAuth`<br>- **Data type:** `bool`<br>- **Value:** `True`|
| - **OMA-URI:** `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/RequireSecurityDevice`<br>- **Data type:** `bool`<br>- **Value:** `True`|

For more information about the certificate trust policy, see [Windows Hello for Business policy settings](../policy-settings.md#use-certificate-for-on-premises-authentication).

---

If you deploy Windows Hello for Business configuration using both Group Policy and Intune, Group Policy settings take precedence, and Intune settings are ignored. For more information about policy conflicts, see [Policy conflicts from multiple policy sources](../configure.md#policy-conflicts-from-multiple-policy-sources)

More policy settings can be configured to control the behavior of Windows Hello for Business. For more information, see [Windows Hello for Business policy settings](../policy-settings.md).

## Enroll in Windows Hello for Business

The Windows Hello for Business provisioning process begins immediately after the user profile is loaded and before the user receives their desktop. For the provisioning process to begin, all prerequisite checks must pass.

You can determine the status of the prerequisite checks by viewing the **User Device Registration** admin log under **Applications and Services Logs > Microsoft > Windows**.\
This information is also available using the `dsregcmd.exe /status` command from a console. For more information, see [dsregcmd][AZ-4].

### User experience

[!INCLUDE [user-experience](includes/user-experience.md)]

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=36dc8679-0fcc-4abf-868d-97ec8b749da7 alt-text="Video showing the Windows Hello for Business enrollment steps after signing in with a password."]

After a successful key registration, Windows creates a certificate request using the same key pair to request a certificate. Windows sends the certificate request to the AD FS server for certificate enrollment.

The AD FS registration authority verifies the key used in the certificate request matches the key that was previously registered. On a successful match, the AD FS registration authority signs the certificate request using its enrollment agent certificate and sends it to the certificate authority.

> [!NOTE]
> In order for AD FS to verify the key used in the certificate request, it needs to be able to access the `https://enterpriseregistration.windows.net` endpoint.

The CA validates that the certificate is signed by the registration authority. On successful validation, it issues a certificate based on the request and returns the certificate to the AD FS registration authority. The registration authority returns the certificate to Windows where it then installs the certificate in the current user's certificate store. Once this process completes, the Windows Hello for Business provisioning workflow informs the user that they can use their PIN to sign-in through the Action Center.

> [!NOTE]
> Windows Server 2016 update [KB4088889 (14393.2155)](https://support.microsoft.com/help/4088889) provides synchronous certificate enrollment during hybrid certificate trust provisioning. With this update, users don't need to wait for Microsoft Entra Connect to sync their public key on-premises. Users enroll their certificate during provisioning and can use the certificate for sign-in immediately after completing the provisioning. The update needs to be installed on the federation servers.

### Sequence diagrams

To better understand the provisioning flows, review the following sequence diagrams based on the device join and authentication type:

- [Provisioning for Microsoft Entra joined devices with managed authentication](../how-it-works-provisioning.md#provisioning-for-microsoft-entra-joined-devices-with-managed-authentication)
- [Provisioning for Microsoft Entra joined devices with federated authentication](../how-it-works-provisioning.md#provisioning-for-microsoft-entra-joined-devices-with-federated-authentication)
- [Provisioning in a hybrid certificate trust deployment model with federated authentication](../how-it-works-provisioning.md#provisioning-in-a-hybrid-certificate-trust-deployment-model-with-federated-authentication)

To better understand the authentication flows, review the following sequence diagram:

- [Microsoft Entra join authentication to Active Directory using a certificate](../how-it-works-authentication.md#microsoft-entra-join-authentication-to-active-directory-using-a-certificate)
- [Microsoft Entra hybrid join authentication using a certificate](../how-it-works-authentication.md#microsoft-entra-hybrid-join-authentication-using-a-certificate)

<!--links-->

[AZ-4]: /entra/identity/devices/troubleshoot-device-dsregcmd
[CSP-1]: /windows/client-management/mdm/passportforwork-csp
[MEM-1]: /mem/intune/configuration/custom-settings-configure

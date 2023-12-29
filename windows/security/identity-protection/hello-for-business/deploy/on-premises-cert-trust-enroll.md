---
title: Configure Windows Hello for Business Policy settings in an on-premises certificate trust
description: Configure Windows Hello for Business Policy settings for Windows Hello for Business in an on-premises certificate trust scenario
ms.date: 12/15/2023
ms.topic: tutorial
---

# Configure and enroll in Windows Hello for Business in an on-premises certificate trust model

[!INCLUDE [apply-to-on-premises-cert-trust](includes/apply-to-on-premises-cert-trust.md)]

After the prerequisites are met and the PKI and AD FS configurations are validated, Windows Hello for business must be enabled on the Windows devices. Follow the instructions below to configure your devices using either Microsoft Intune or group policy (GPO).

[!INCLUDE [gpo-enable-whfb](includes/gpo-enable-whfb.md)]

> [!TIP]
> Use the same *Windows Hello for Business Users* security group to assign **Certificate template permissions** to ensure the same members can enroll in the Windows Hello for Business authentication certificate.

### Enable automatic enrollment of certificates group policy setting

Windows Hello for Business provisioning performs the initial enrollment of the Windows Hello for Business authentication certificate. This certificate expires based on the duration configured in the Windows Hello for Business *authentication certificate* template.

The process requires no user interaction, provided the user signs-in using Windows Hello for Business. The certificate is renewed in the background before it expires.

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

Additional policy settings can be configured to control the behavior of Windows Hello for Business. For more information, see [Windows Hello for Business policy settings](../policy-settings.md).

## Enroll in Windows Hello for Business

The Windows Hello for Business provisioning process begins immediately after the user profile is loaded and before the user receives their desktop. For the provisioning process to begin, all prerequisite checks must pass.

You can determine the status of the prerequisite checks by viewing the **User Device Registration** admin log under **Applications and Services Logs > Microsoft > Windows**.\
This information is also available using the `dsregcmd.exe /status` command from a console. For more information, see [dsregcmd][AZ-4].

### User experience

[!INCLUDE [user-experience](includes/user-experience.md)]

<!--links-->
[AZ-4]: /azure/active-directory/devices/troubleshoot-device-dsregcmd

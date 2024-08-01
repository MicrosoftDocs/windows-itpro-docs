---
title: Configure and enroll in Windows Hello for Business in a hybrid key trust model
description: Learn how to configure devices and enroll them in Windows Hello for Business in a hybrid key trust scenario.
ms.date: 03/12/2024
ms.topic: tutorial
---

# Configure and enroll in Windows Hello for Business in a hybrid key trust model

[!INCLUDE [apply-to-hybrid-key-trust](includes/apply-to-hybrid-key-trust.md)]

> [!div class="checklist"]
> Once the prerequisites are met and the PKI configuration is validated, deploying Windows Hello for Business consists of the following steps:
>
> - [Configure Windows Hello for Business policy settings](#configure-windows-hello-for-business-policy-settings)
> - [Enroll in Windows Hello for Business](#enroll-in-windows-hello-for-business)

## Configure Windows Hello for Business policy settings

There's one policy setting required to enable Windows Hello for Business in a key trust model:

- [Use Windows Hello for Business](../policy-settings.md#use-windows-hello-for-business)

Another optional, but recommended, policy setting is:

- [Use a hardware security device](../policy-settings.md#use-a-hardware-security-device)

The following instructions describe how to configure your devices using either Microsoft Intune or group policy (GPO).

# [:::image type="icon" source="images/intune.svg"::: **Intune/CSP**](#tab/intune)

> [!NOTE]
> Review the article [Configure Windows Hello for Business using Microsoft Intune](../configure.md#configure-windows-hello-for-business-using-microsoft-intune) to learn about the different options offered by Microsoft Intune to configure Windows Hello for Business.

If the Intune tenant-wide policy is enabled and configured to your needs, you can skip to [Enroll in Windows Hello for Business](#enroll-in-windows-hello-for-business).

[!INCLUDE [intune-settings-catalog-1](../../../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| **Windows Hello for Business** | Use Passport For Work | true |
| **Windows Hello for Business** | Require Security Device | true |

[!INCLUDE [intune-settings-catalog-2](../../../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][MEM-1] with the [PassportForWork CSP][CSP-1].

| Setting |
|--------|
| - **OMA-URI:** `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/UsePassportForWork`<br>- **Data type:** `bool`<br>- **Value:** `True`|
| - **OMA-URI:** `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/RequireSecurityDevice`<br>- **Data type:** `bool`<br>- **Value:** `True`|

# [:::image type="icon" source="images/group-policy.svg"::: **GPO**](#tab/gpo)

[!INCLUDE [gpo-enable-whfb](includes/gpo-enable-whfb.md)]

[!INCLUDE [gpo-settings-1](../../../../../includes/configure/gpo-settings-1.md)]

| Group policy path | Group policy setting | Value |
| - | - | - |
| **Computer Configuration\Administrative Templates\Windows Components\Windows Hello for Business**<br>or<br> **User Configuration\Administrative Templates\Windows Components\Windows Hello for Business**|Use Windows Hello for Business| **Enabled**|
| **Computer Configuration\Administrative Templates\Windows Components\Windows Hello for Business** |Use a hardware security device| **Enabled**|

[!INCLUDE [gpo-settings-2](../../../../../includes/configure/gpo-settings-2.md)]

> [!TIP]
> The best way to deploy the Windows Hello for Business GPO is to use security group filtering. Only members of the targeted security group will provision Windows Hello for Business, enabling a phased rollout. This solution allows linking the GPO to the domain, ensuring the GPO is scoped to all security principals. The security group filtering ensures that only the members of the global group receive and apply the GPO, which results in the provisioning of Windows Hello for Business.

---

If you deploy Windows Hello for Business configuration using both Group Policy and Intune, Group Policy settings take precedence, and Intune settings are ignored. For more information about policy conflicts, see [Policy conflicts from multiple policy sources](../configure.md#policy-conflicts-from-multiple-policy-sources)

Other policy settings can be configured to control the behavior of Windows Hello for Business. For more information, see [Windows Hello for Business policy settings](../policy-settings.md).

## Enroll in Windows Hello for Business

The Windows Hello for Business provisioning process begins immediately after the user profile is loaded and before the user receives their desktop. For the provisioning process to begin, all prerequisite checks must pass.

You can determine the status of the prerequisite checks by viewing the **User Device Registration** admin log under **Applications and Services Logs > Microsoft > Windows**.\
This information is also available using the `dsregcmd.exe /status` command from a console. For more information, see [dsregcmd][AZ-4].

:::image type="content" source="images/Event358.png" alt-text="Details about event ID 358 showing that the device is ready to enroll in Windows Hello for Business." border="false" lightbox="images/Event358.png":::

### User experience

[!INCLUDE [user-experience](includes/user-experience.md)]

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=36dc8679-0fcc-4abf-868d-97ec8b749da7 alt-text="Video showing the Windows Hello for Business enrollment steps after signing in with a password."]

After enrollment, Microsoft Entra Connect synchronizes the user's key from Microsoft Entra ID to Active Directory.

> [!IMPORTANT]
> The minimum time needed to synchronize the user's public key from Microsoft Entra ID to the on-premises Active Directory is 30 minutes. The Microsoft Entra Connect scheduler controls the synchronization interval.
> **This synchronization latency delays the user's ability to authenticate and use on-premises resources until the user's public key has synchronized to Active Directory.** Once synchronized, the user can authenticate and access on-premises resources.
> Read [Microsoft Entra Connect Sync: Scheduler][AZ-5] to view and adjust the **synchronization cycle** for your organization.

### Sequence diagrams

To better understand the provisioning flows, review the following sequence diagrams based on the device join and authentication type:

- [Provisioning for Microsoft Entra joined devices with managed authentication](../how-it-works-provisioning.md#provisioning-for-microsoft-entra-joined-devices-with-managed-authentication)
- [Provisioning for Microsoft Entra joined devices with federated authentication](../how-it-works-provisioning.md#provisioning-for-microsoft-entra-joined-devices-with-federated-authentication)
- [Provisioning in a hybrid key trust deployment model with managed authentication](../how-it-works-provisioning.md#provisioning-in-a-hybrid-key-trust-deployment-model-with-managed-authentication)

To better understand the authentication flows, review the following sequence diagram:

- [Microsoft Entra hybrid join authentication using a key](../how-it-works-authentication.md#microsoft-entra-hybrid-join-authentication-using-a-key)
- [Microsoft Entra join authentication to Active Directory using a key](../how-it-works-authentication.md#microsoft-entra-join-authentication-to-active-directory-using-a-key)

<!--links-->
[AZ-4]: /entra/identity/devices/troubleshoot-device-dsregcmd
[AZ-5]: /entra/identity/hybrid/connect/how-to-connect-sync-feature-scheduler
[CSP-1]: /windows/client-management/mdm/passportforwork-csp
[MEM-1]: /mem/intune/configuration/custom-settings-configure

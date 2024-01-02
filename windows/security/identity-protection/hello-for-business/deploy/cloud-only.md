---
title: Windows Hello for Business cloud-only deployment guide
description: Learn how to deplyo Windows Hello for Business in a cloud-only deployment scenario.
ms.date: 01/03/2024
ms.topic: how-to
---

# Cloud-only deployment guide

[!INCLUDE [apply-to-cloud](includes/apply-to-cloud.md)]

[!INCLUDE [requirements](includes/requirements.md)]

> [!div class="checklist"]
>
> - [Authentication](index.md#authentication)
> - [Device configuration](index.md#device-configuration)
> - [Licensing for cloud services](index.md#licensing-for-cloud-services)
> - [Prepare users to use Windows Hello](index.md#prepare-users-to-use-windows-hello)

## Deployment steps

> [!div class="checklist"]
> Once the prerequisites are met, deploying Windows Hello for Business consists of the following steps:
>
> - [Configure Windows Hello for Business policy settings](#configure-windows-hello-for-business-policy-settings)
> - [Enroll in Windows Hello for Business](#enroll-in-windows-hello-for-business)

## Configure Windows Hello for Business policy settings

When you Microsoft Entra join a device, the system attempts to automatically enroll you in Windows Hello for Business. If you want to use Windows Hello for Business in a cloud-only environment with its default settings, there's no additional configuration needed.

Cloud-only deployments use Microsoft Entra multifactor authentication (MFA) during Windows Hello for Business enrollment, and there's no additional MFA configuration needed. If you aren't already registered in MFA, you'll be guided through the MFA registration as part of the Windows Hello for Business enrollment process.

Policy settings can be configured to control the behavior of Windows Hello for Business, via configuration service provider (CSP) or group policy (GPO). In cloud-only deployments, devices are 
typically configured via an MDM solution like Microsoft Intune, using the [PassportForWork CSP][WIN-1].

> [!NOTE]
> Review the article [Configure Windows Hello for Business using Microsoft Intune](../configure.md#configure-windows-hello-for-business-using-microsoft-intune) to learn about the different options offered by Microsoft Intune to configure Windows Hello for Business.

If the Intune tenant-wide policy is configured to disable Windows Hello for Business, or if devices are deployed with Windows Hello disabled, tThere's one policy setting required to enable Windows Hello for Business in a cloud-only trust model:

- [Use Windows Hello for Business](../policy-settings.md#use-windows-hello-for-business)

Follow the instructions below to configure your devices using either Microsoft Intune or group policy (GPO).

# [:::image type="icon" source="images/intune.svg"::: **Intune/CSP**](#tab/intune)

[!INCLUDE [intune-settings-catalog-1](../../../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| **Windows Hello for Business** | Use Passport For Work | true |

[!INCLUDE [intune-settings-catalog-2](../../../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][MEM-1] with the [PassportForWork CSP][CSP-1].

| Setting |
|--------|
| - **OMA-URI:** `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/UsePassportForWork`<br>- **Data type:** `bool`<br>- **Value:** `True`|

# [:::image type="icon" source="images/group-policy.svg"::: **GPO**](#tab/gpo)

To configure a device with group policy, use the [Local Group Policy Editor](/previous-versions/windows/it-pro/windows-server-2008-r2-and-2008/cc731745(v=ws.10)).

| Group policy path | Group policy setting | Value |
| - | - | - |
| **Computer Configuration\Administrative Templates\Windows Components\Windows Hello for Business**<br>or<br> **User Configuration\Administrative Templates\Windows Components\Windows Hello for Business**|Use Windows Hello for Business| **Enabled**|
| **Computer Configuration\Administrative Templates\Windows Components\Windows Hello for Business** |Use a hardware security device| **Enabled**|

> [!NOTE]
> The enablement of the *Use a hardware security device* policy setting is optional, but recommended.

---


> [!TIP]
> If you're using Microsoft Intune, and you're not using the [tenant-wide policy](../configure.md#verify-the-tenant-wide-policy), enable the Enrollment Status Page (ESP) to ensure that the devices receive the Windows Hello for Business policy settings before users can access their desktop. For more information about ESP, see [Set up the Enrollment Status Page][MEM-1].

Additional policy settings can be configured to control the behavior of Windows Hello for Business. For more information, see [Windows Hello for Business policy settings](../policy-settings.md).

## Enroll in Windows Hello for Business

The Windows Hello for Business provisioning process begins immediately after a user signs in, if certain prerequisite checks are passed.

### User experience

[!INCLUDE [user-experience](includes/user-experience.md)]

## Disable automatic enrollment

If you want to disable the automatic Windows Hello for Business enrollment prompt, you can configure your devices with a policy setting or registry key. For more information, see [Disable Windows Hello for Business enrollment](../configure.md#disable-windows-hello-for-business-enrollment).

> [!NOTE]
> During the out-of-box experience (OOBE) flow of a Microsoft Entra join, you are guided to enroll in Windows Hello for Business when you don't have Intune. You can cancel the PIN screen and configure this cancellation with registry keys to prevent future prompts.

<!--links-->

[MEM-1]: /mem/intune/enrollment/windows-enrollment-status
[WIN-1]: /windows/client-management/mdm/passportforwork-csp

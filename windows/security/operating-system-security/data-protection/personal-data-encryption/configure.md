---
title: PDE settings and configuration
description: Learn about the available options to configure Personal Data Encryption (PDE) and how to configure them via Microsoft Intune or configuration Service Provider (CSP).
ms.topic: how-to
ms.date: 03/13/2023
---

# PDE settings and configuration

This article describes the Personal Data Encryption (PDE) settings and how to configure them via Microsoft Intune or configuration Service Provider (CSP).

## PDE settings list

The following table lists the required and suggested settings to use with PDE.

| Setting name | Description | Required? |
|-|-|-|
|Enable PDE|PDE isn't enabled by default. Before PDE can be used, you must enable it.| This setting is required.|
|Disable Winlogon automatic restart sign-on (ARSO)| Winlogon ARSO isn't supported for use with PDE. To use PDE, ARSO must be disabled.| This setting is required.|
|Disable kernel-mode crash dumps and live dumps|Kernel-mode crash dumps and live dumps can potentially cause the keys used by PDE to protect content to be exposed. For greatest security, disable kernel-mode crash dumps and live dumps.|This setting is recommended.|
|Disable Windows Error Reporting (WER)/user-mode crash dumps|Disabling Windows Error Reporting prevents user-mode crash dumps. User-mode crash dumps can potentially cause the keys used by PDE to protect content to be exposed. For greatest security, disable user-mode crash dumps.||
|Disable hibernation|Hibernation files can potentially cause the keys used by Personal Data Encryption (PDE) to protect content to be exposed. For greatest security, disable hibernation.||

> [!NOTE]
> Enabling the PDE policy on devices only enables the PDE feature. It does not protect any content. To protect content via PDE, use the [PDE APIs](/uwp/api/windows.security.dataprotection.userdataprotectionmanager). The PDE APIs can be used to create custom applications and scripts to specify which content to protect and at what level to protect the content. Additionally, the PDE APIs can't be used to protect content until the PDE policy has been enabled.

## Enable Personal Data Encryption (PDE) in Intune

**`./User/Vendor/MSFT/PDE/EnablePersonalDataEncryption`**
**Data type**, select **Integer**
**Value**, enter in **1**

### Configure PDE with Microsoft Intune

To configure devices using Microsoft Intune, [create a **Settings catalog** policy][MEM-1], and use the settings listed under the category **`Local Policies Security Options`**:

Assign the policy to a security group that contains as members the devices or users that you want to configure.  

### Configure PDE with CSP

Alternatively, you can configure devices using a [custom policy][MEM-2] with the [Name CSP][CSP-1].\

The policy settings are located under: `./Device/Vendor/MSFT/`.

|Setting|
| - |
| **Setting name**: Title<br>**Policy CSP name**: `Setting Name`|

## Disable Winlogon automatic restart sign-on (ARSO)

Settings Catalog:
Category: `Administrative Templates`
`Windows Components > Windows Logon Options\Sign-in and lock last interactive user automatically after a restart`

## Disable kernel-mode crash dumps and live dumps\

`Disable Kernel-Mode Crash Dumps``

Category: `Memory Dump`

`Allow Live Dump`:Block
`Allow Crash Dump`: Block

## Disable Windows Error Reporting (WER)/user-mode crash dumps for PDE

**Administrative Templates**, scroll down and expand **Windows Components**
Under **Windows Components**, scroll down and select **Windows Error Reporting**. Make sure to only select **Windows Error Reporting** and not to expand it
When the settings for the **Windows Error Reporting** subcategory appear under **Setting name** in the lower pane, select **Disable Windows Error Reporting**, and then select the **X** in the top right corner of the **Settings picker** window to close the window
Change **Disable Windows Error Reporting** from **Disabled** to **Enabled** by selecting the slider next to the option

## Disable hibernation

1. Under **Browse by category**, scroll down and select **Power**
      1. When the settings for the **Power** category appear under **Setting name** in the lower pane, select **Allow Hibernate**, and then select the **X** in the top right corner of the **Settings picker** window to close the window
   1. Change **Allow Hibernate** from **Allow** to **Block** by selecting the slider next to the option

## Disable allowing users to select when a password is required when resuming from connected standby for PDE

When the **Disable allowing users to select when a password is required when resuming from connected standby** policy isn't configured, the outcome between on-premises Active Directory joined devices and workgroup devices, including Azure Active Directory joined devices, is different:

- On-premises Active Directory joined devices:
  - A user can't change the amount of time after the device's screen turns off before a password is required when waking the device
  - A password is required immediately after the screen turns off
    The above is the desired outcome, but PDE isn't supported with on-premises Active Directory joined devices
- Workgroup devices, including Azure AD joined devices:
  - A user on a Connected Standby device can change the amount of time after the device´s screen turns off before a password is required to wake the device
  - During the time when the screen turns off but a password isn't required, the keys used by PDE to protect content could potentially be exposed. This outcome isn't a desired outcome

Because of this undesired outcome, it's recommended to explicitly disable this policy on Azure AD joined devices instead of leaving it at the default of **Not configured**.

## Disable allowing users to select when a password is required when resuming from connected standby in Intune

To disable the policy **Disable allowing users to select when a password is required when resuming from connected standby** using Intune, follow the below steps:

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431)
1. In the **Home** screen, select **Devices** in the left pane
1. In the **Devices | Overview** screen, under **Policy**, select **Configuration Profiles**
1. In the **Devices | Configuration profiles** screen, make sure **Profiles** is selected at the top, and then select **Create profile**
1. In the **Create profile** window that opens:
   1. Under **Platform**, select **Windows 10 and later**
   1. Under **Profile type**, select **Settings catalog**
   1. Select **Create** to close the **Create profile** window
1. The **Create profile** screen will open. In the **Basics** page:
    1. Next to **Name**, enter **Disable allowing users to select when a password is required when resuming from connected standby**
    1. Next to **Description**, enter a description
    1. Select **Next**.

1. In the **Configuration settings** page:
   1. Select **Add settings**
   1. In the **Settings picker** window that opens:
      1. Under **Browse by category**, expand **Administrative Templates**
      1. Under **Administrative Templates**, scroll down and expand **System**
      1. Under **System**, scroll down and select **Logon**
      1. When the settings for the **Logon** subcategory appear under **Setting name** in the lower pane, select **Allow users to select when a password is required when resuming from connected standby**, and then select the **X** in the top right corner of the **Settings picker** window to close the window
   1. Leave the slider for **Allow users to select when a password is required when resuming from connected standby** at the default of **Disabled**
   1. select **Next**


!INCLUDE [intune-settings-catalog-1](../../../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| Device Guard | Credential Guard | Select one of the options:<br>&emsp;- **Enabled with UEFI lock**<br>&emsp;- **Enabled without lock** |

>[!IMPORTANT]
> If you want to be able to turn off Windows Defender Credential Guard remotely, choose the option **Enabled without lock**.

[!INCLUDE [intune-settings-catalog-2](../../../../includes/configure/intune-settings-catalog-2.md)]

> [!TIP]
> You can also configure Credential Guard by using an *account protection* profile in endpoint security. For more information, see [Account protection policy settings for endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security-account-protection-profile-settings).

Alternatively, you can configure devices using a [custom policy][INT-1] with the [DeviceGuard Policy CSP][CSP-1].\
The policy settings are located under: `./Device/Vendor/MSFT/Policy/Config/DeviceGuard/`.

| Setting |
|--|
| **Setting name**: Turn On Virtualization Based Security<br>**Policy CSP name**: `EnableVirtualizationBasedSecurity` |
| **Setting name**: Credential Guard Configuration<br>**Policy CSP name**: `LsaCfgFlags` |



<!--links used in this document-->

[CSP-1]: /windows/client-management/mdm/policy-csp-localpoliciessecurityoptions

[MEM-1]: /mem/intune/configuration/settings-catalog
[MEM-2]: /mem/intune/configuration/custom-settings-windows-10
---
title: PDE settings and configuration
description: Learn about the available options to configure Personal Data Encryption (PDE) and how to configure them via Microsoft Intune or configuration Service Provider (CSP).
ms.topic: how-to
ms.date: 08/11/2023
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

## Disable Windows Error Reporting (WER)/user-mode crash dumps for PDE

## Disable hibernation

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

[!INCLUDE [intune-settings-catalog-1](../../../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
|`Memory Dump`|`Allow Live Dump`|Block||
|`Memory Dump`|`Allow Crash Dump`|Block||
|`Administrative Templates`| `System > Logon` | Select **Allow users to select when a password is required when resuming from connected standby:** <br>&emsp;- **Disabled**|
|**Power**|**Allow Hibernate**|Change **Allow Hibernate** from **Allow** to **Block** by selecting the slider next to the option|
|`Administrative Templates`| **Windows Components > Windows Error Reporting** | Change **Disable Windows Error Reporting** from **Disabled** to **Enabled** by selecting the slider next to the option|

[!INCLUDE [intune-settings-catalog-2](../../../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][INT-1] with the [Policy CSP][CSP-1].\

The policy settings are located under: `./Device/Vendor/MSFT/Policy/Config/DeviceGuard/`.

| Setting |
|--|
| **Setting name**: Turn On Virtualization Based Security<br>**Policy CSP name**: `EnableVirtualizationBasedSecurity` |
| **Setting name**: Credential Guard Configuration<br>**Policy CSP name**: `LsaCfgFlags` |

<!--links used in this document-->

[CSP-1]: /windows/client-management/mdm/policy-csp-localpoliciessecurityoptions

[MEM-1]: /mem/intune/configuration/settings-catalog
[MEM-2]: /mem/intune/configuration/custom-settings-windows-10
---
title: Configure Start menu
description: Learn about the available options to configure the Windows Start menu and how to configure them via Configuration Service Providers (CSP) or group policy (GPO).
ms.topic: how-to
ms.date: 01/30/2024
---

# Configure Start menu

To configure the Windows Start menu in your organization, you can use one of the following options:

- Configuration Service Provider (CSP): this option is commonly used for devices managed by a Mobile Device Management (MDM) solution, like Microsoft Intune. The [Policy CSP][WIN-1] is used to configure Start, and to report the status of its configuration to the MDM solution
- Group policy (GPO): this option can be used for devices that are joined to an Active Directory domain and aren't managed by a device management solution. Group policy can also be used for devices that aren't joined to an Active Directory domain, using the local group policy editor

## Start policy settings

This section describes the policy settings to configure Start via configuration service provider (CSP) and group policy (GPO).

### Policy settings list

The list of settings is sorted alphabetically and organized in two categories:

- **Common settings**:
- **Other**:

Select one of the tabs to see the list of available settings:

#### [:::image type="icon" source=""::: **Common settings**](#tab/common)

The following table lists the Start policy settings, indicating if they're applicable via configuration service provider (CSP) and/or group policy (GPO). Select the setting name for more details.

|Policy name| CSP | GPO |
|-|-|-|
|[Allow standard user encryption](#allow-standard-user-encryption)|✅|❌|
|[Choose default folder for recovery password](#choose-default-folder-for-recovery-password)|❌|✅|
|[Choose drive encryption method and cipher strength](#choose-drive-encryption-method-and-cipher-strength)|✅|✅|
|[Configure recovery password rotation](#configure-recovery-password-rotation)|✅|❌|
|[Disable new DMA devices when this computer is locked](#disable-new-dma-devices-when-this-computer-is-locked)|❌|✅|
|[Prevent memory overwrite on restart](#prevent-memory-overwrite-on-restart)|❌|✅|
|[Provide the unique identifiers for your organization](#provide-the-unique-identifiers-for-your-organization)|✅|✅|
|[Require device encryption](#require-device-encryption)|✅|❌|
|[Validate smart card certificate usage rule compliance](#validate-smart-card-certificate-usage-rule-compliance)|❌|✅|

[!INCLUDE [allow-standard-user-encryption](includes/allow-standard-user-encryption.md)]
[!INCLUDE [choose-default-folder-for-recovery-password](includes/choose-default-folder-for-recovery-password.md)]
[!INCLUDE [choose-drive-encryption-method-and-cipher-strength](includes/choose-drive-encryption-method-and-cipher-strength.md)]
[!INCLUDE [configure-recovery-password-rotation](includes/configure-recovery-password-rotation.md)]
[!INCLUDE [disable-new-dma-devices-when-this-computer-is-locked](includes/disable-new-dma-devices-when-this-computer-is-locked.md)]
[!INCLUDE [prevent-memory-overwrite-on-restart](includes/prevent-memory-overwrite-on-restart.md)]
[!INCLUDE [provide-the-unique-identifiers-for-your-organization](includes/provide-the-unique-identifiers-for-your-organization.md)]
[!INCLUDE [require-device-encryption](includes/require-device-encryption.md)]
[!INCLUDE [validate-smart-card-certificate-usage-rule-compliance](includes/validate-smart-card-certificate-usage-rule-compliance.md)]

#### [:::image type="icon" source="images/os-drive.svg"::: **Other**](#tab/os)

---

<!--links-->

[WIN-1]: /windows/client-management/mdm/policy-csp
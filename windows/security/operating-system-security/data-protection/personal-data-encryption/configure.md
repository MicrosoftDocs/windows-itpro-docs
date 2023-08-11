---
title: PDE settings and configuration
description: Learn about the available options to configure Personal Data Encryption (PDE) and how to configure them via Microsoft Intune or configuration Service Provider (CSP).
ms.topic: how-to
ms.date: 08/11/2023
---

# PDE settings and configuration

This article describes the Personal Data Encryption (PDE) settings and how to configure them via Microsoft Intune or configuration Service Provider (CSP).

> [!NOTE]
> PDE can be configured using MDM policies. The content to be protected by PDE can be specified using [PDE APIs](/uwp/api/windows.security.dataprotection.userdataprotectionmanager). There is no user interface in Windows to either enable PDE or protect content using PDE.

> [!NOTE]
> Enabling the PDE policy on devices only enables the PDE feature. It does not protect any content. To protect content via PDE, use the [PDE APIs](/uwp/api/windows.security.dataprotection.userdataprotectionmanager). The PDE APIs can be used to create custom applications and scripts to specify which content to protect and at what level to protect the content. Additionally, the PDE APIs can't be used to protect content until the PDE policy has been enabled.

### Security hardening recommendations

- [Kernel-mode crash dumps  and live dumps disabled](/windows/client-management/mdm/policy-csp-memorydump#memorydump-policies)

   Kernel-mode crash dumps and live dumps can potentially cause the keys used by PDE to protect content to be exposed. For greatest security, disable kernel-mode crash dumps and live dumps. For information on disabling crash dumps and live dumps via Intune, see [Disable kernel-mode crash dumps and live dumps](intune-disable-memory-dumps.md).

- [Windows Error Reporting (WER) disabled/User-mode crash dumps disabled](/windows/client-management/mdm/policy-csp-errorreporting#errorreporting-disablewindowserrorreporting)

   Disabling Windows Error Reporting prevents user-mode crash dumps. User-mode crash dumps can potentially cause the keys used by PDE to protect content to be exposed. For greatest security, disable user-mode crash dumps. For more information on disabling crash dumps via Intune, see [Disable Windows Error Reporting (WER)/user-mode crash dumps](intune-disable-wer.md).

- [Hibernation disabled](/windows/client-management/mdm/policy-csp-power#power-allowhibernate)

   Hibernation files can potentially cause the keys used by PDE to protect content to be exposed. For greatest security, disable hibernation. For more information on disabling crash dumps via Intune, see [Disable hibernation](intune-disable-hibernation.md).

- [Allowing users to select when a password is required when resuming from connected standby disabled](/windows/client-management/mdm/policy-csp-admx-credentialproviders#admx-credentialproviders-allowdomaindelaylock)

    When this policy isn't configured, the outcome between on-premises Active Directory joined devices and workgroup devices, including Azure Active Directory joined devices, is different:

  - On-premises Active Directory joined devices:

    - A user can't change the amount of time after the device´s screen turns off before a password is required when waking the device.

    - A password is required immediately after the screen turns off.

    The above is the desired outcome, but PDE isn't supported with on-premises Active Directory joined devices.

  - Workgroup devices, including Azure AD joined devices:

    - A user on a Connected Standby device can change the amount of time after the device´s screen turns off before a password is required to wake the device.

    - During the time when the screen turns off but a password isn't required, the keys used by PDE to protect content could potentially be exposed. This outcome isn't a desired outcome.

    Because of this undesired outcome, it's recommended to explicitly disable this policy on Azure AD joined devices instead of leaving it at the default of **Not configured**.

   For information on disabling this policy via Intune, see [Disable allowing users to select when a password is required when resuming from connected standby](intune-disable-password-connected-standby.md).

### Highly recommended

- [BitLocker Drive Encryption](../bitlocker/index.md) enabled

   Although PDE will work without BitLocker, it's recommended to also enable BitLocker. PDE is meant to work alongside BitLocker for increased security. PDE isn't a replacement for BitLocker.

- Backup solution such as [OneDrive in Microsoft 365](/sharepoint/onedrive-overview)

   In certain scenarios such as TPM resets or destructive PIN resets, the keys used by PDE to protect content will be lost. In such scenarios, any content protected with PDE will no longer be accessible. The only way to recover such content would be from backup.

- [Windows Hello for Business PIN reset service](../../../identity-protection/hello-for-business/hello-feature-pin-reset.md)

   Destructive PIN resets will cause keys used by PDE to protect content to be lost. A destructive PIN reset will make any content protected with PDE no longer accessible after the destructive PIN reset has occurred. Content protected with PDE will need to be recovered from a backup after a destructive PIN reset. For this reason Windows Hello for Business PIN reset service is recommended since it provides non-destructive PIN resets.

- [Windows Hello Enhanced Sign-in Security](/windows-hardware/design/device-experiences/windows-hello-enhanced-sign-in-security)

   Provides additional security when authenticating with Windows Hello for Business via biometrics or PIN

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


## Disable PDE and decrypt content

Once PDE is enabled, it isn't recommended to disable it. However if PDE does need to be disabled, it can be done so via the MDM policy described in the section [How to enable PDE](#how-to-enable-pde). The value of the OMA-URI needs to be changed from **`1`** to **`0`** as follows:

- Name: **Personal Data Encryption**
- OMA-URI: **./User/Vendor/MSFT/PDE/EnablePersonalDataEncryption**
- Data type: **Integer**
- Value: **0**

Disabling PDE doesn't decrypt any PDE protected content. It only prevents the PDE API from being able to protect any additional content. PDE protected files can be manually decrypted using the following steps:

1. Open the properties of the file
2. Under the **General** tab, select **Advanced...**
3. Uncheck the option **Encrypt contents to secure data**
4. Select **OK**, and then **OK** again

PDE protected files can also be decrypted using [WINS-1]. Using `cipher.exe` can be helpful to decrypt files in the following scenarios:

- Decrypting a large number of files on a device
- Decrypting files on a large number of devices.

To decrypt files on a device using `cipher.exe`:

- Decrypt all files under a directory including subdirectories:

    ```cmd
    cipher.exe /d /s:<path_to_directory>
    ```

- Decrypt a single file or all of the files in the specified directory, but not any subdirectories:

    ```cmd
    cipher.exe /d <path_to_file_or_directory>
    ```

> [!IMPORTANT]
> Once a user selects to manually decrypt a file, the user will not be able to manually protect the file again using PDE.

## Next steps

- Review the [Personal Data Encryption (PDE) FAQ](faq.yml)

<!--links used in this document-->

[CSP-1]: /windows/client-management/mdm/policy-csp-localpoliciessecurityoptions

[MEM-1]: /mem/intune/configuration/settings-catalog
[MEM-2]: /mem/intune/configuration/custom-settings-windows-10

[WINS-1]: /windows-server/administration/windows-commands/cipher
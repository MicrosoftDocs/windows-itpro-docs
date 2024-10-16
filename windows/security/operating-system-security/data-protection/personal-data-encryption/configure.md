---
title: PDE settings and configuration
description: Learn about the available options to configure Personal Data Encryption (PDE) and how to configure them via Microsoft Intune or Configuration Service Providers (CSP).
ms.topic: how-to
ms.date: 09/24/2024
---

# PDE settings and configuration

This article describes the Personal Data Encryption (PDE) settings and how to configure them via Microsoft Intune or Configuration Service Providers (CSP).

> [!NOTE]
> PDE can be configured using MDM policies. The content to be protected by PDE can be specified using [PDE APIs](/uwp/api/windows.security.dataprotection.userdataprotectionmanager). There is no user interface in Windows to either enable PDE or protect content using PDE.
>
> The PDE APIs can be used to create custom applications and scripts to specify which content to protect and at what level to protect the content. Additionally, the PDE APIs can't be used to protect content until the PDE policy has been enabled.

## PDE settings

The following table lists the required settings to enable PDE.

| Setting name | Description |
|-|-|
|Enable Personal Data Encryption|PDE isn't enabled by default. Before PDE can be used, you must enable it.|
|Sign-in and lock last interactive user automatically after a restart| Winlogon automatic restart sign-on (ARSO) isn't supported for use with PDE. To use PDE, ARSO must be disabled.|

## PDE hardening recommendations

The following table lists the recommended settings to improve PDE's security.

| Setting name | Description |
|-|-|
|Kernel-mode crash dumps and live dumps|Kernel-mode crash dumps and live dumps can potentially cause the keys used by PDE to protect content to be exposed. For greatest security, disable kernel-mode crash dumps and live dumps.|
|Windows Error Reporting (WER)/user-mode crash dumps|Disabling Windows Error Reporting prevents user-mode crash dumps. User-mode crash dumps can potentially cause the keys used by PDE to protect content to be exposed. For greatest security, disable user-mode crash dumps.|
|Hibernation|Hibernation files can potentially cause the keys used by Personal Data Encryption (PDE) to protect content to be exposed. For greatest security, disable hibernation.|
|Allow users to select when a password is required when resuming from connected standby |When this policy isn't configured on Microsoft Entra joined devices, users on a Connected Standby device can change the amount of time after the device´s screen turns off before a password is required to wake the device. During the time when the screen turns off but a password isn't required, the keys used by PDE to protect content could potentially be exposed. It's recommended to explicitly disable this policy on Microsoft Entra joined devices.|

## Configure PDE with Microsoft Intune

If you use Microsoft Intune to manage your devices, you can configure PDE using a disk encryption policy, a settings catalog policy, or a custom profile.

### Disk encryption policy

To configure devices using a [disk encryption policy](/mem/intune/protect/endpoint-security-disk-encryption-policy), go to **Endpoint security** > **Disk encryption** and select **Create policy**:

- **Platform** > **Windows**
- **Profile** > **Personal Data Encryption**

Provide a name, and select **Next**. In the **Configuration settings** page, select **Enable Personal Data Encryption** and configure the settings as needed.

Assign the policy to a group that contains as members the devices or users that you want to configure.

### Settings catalog policy

[!INCLUDE [intune-settings-catalog-1](../../../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
|**PDE**|Enable Personal Data Encryption (User)|Enable Personal Data Encryption|
|**Administrative Templates > Windows Components > Windows Logon Options**|Sign-in and lock last interactive user automatically after a restart|Disabled|
|**Memory Dump**|Allow Live Dump|Block|
|**Memory Dump**|Allow Crash Dump|Block|
|**Administrative Templates > Windows Components > Windows Error Reporting** | Disable Windows Error Reporting | Enabled|
|**Power**|Allow Hibernate|Block|
|**Administrative Templates > System > Logon** | Allow users to select when a password is required when resuming from connected standby | Disabled|

[!INCLUDE [intune-settings-catalog-2](../../../../../includes/configure/intune-settings-catalog-2.md)]

> [!TIP]
> Use the following Graph call to automatically create the settings catalog policy in your tenant without assignments nor scope tags.
>
> When using this call, authenticate to your tenant in the Graph Explorer window. If it's the first time using Graph Explorer, you may need to authorize the application to access your tenant or to modify the existing permissions. This graph call requires *DeviceManagementConfiguration.ReadWrite.All* permissions.

```msgraph-interactive
POST https://graph.microsoft.com/beta/deviceManagement/configurationPolicies
Content-Type: application/json

{ "id": "00-0000-0000-0000-000000000000", "name": "_MSLearn_PDE", "description": "", "platforms": "windows10", "technologies": "mdm", "roleScopeTagIds": [ "0" ], "settings": [ { "@odata.type": "#microsoft.graph.deviceManagementConfigurationSetting", "settingInstance": { "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance", "settingDefinitionId": "device_vendor_msft_policy_config_admx_credentialproviders_allowdomaindelaylock", "choiceSettingValue": { "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingValue", "value": "device_vendor_msft_policy_config_admx_credentialproviders_allowdomaindelaylock_0", "children": [] } } }, { "@odata.type": "#microsoft.graph.deviceManagementConfigurationSetting", "settingInstance": { "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance", "settingDefinitionId": "device_vendor_msft_policy_config_errorreporting_disablewindowserrorreporting", "choiceSettingValue": { "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingValue", "value": "device_vendor_msft_policy_config_errorreporting_disablewindowserrorreporting_1", "children": [] } } }, { "@odata.type": "#microsoft.graph.deviceManagementConfigurationSetting", "settingInstance": { "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance", "settingDefinitionId": "device_vendor_msft_policy_config_windowslogon_allowautomaticrestartsignon", "choiceSettingValue": { "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingValue", "value": "device_vendor_msft_policy_config_windowslogon_allowautomaticrestartsignon_0", "children": [] } } }, { "@odata.type": "#microsoft.graph.deviceManagementConfigurationSetting", "settingInstance": { "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance", "settingDefinitionId": "device_vendor_msft_policy_config_memorydump_allowcrashdump", "choiceSettingValue": { "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingValue", "value": "device_vendor_msft_policy_config_memorydump_allowcrashdump_0", "children": [] } } }, { "@odata.type": "#microsoft.graph.deviceManagementConfigurationSetting", "settingInstance": { "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance", "settingDefinitionId": "device_vendor_msft_policy_config_memorydump_allowlivedump", "choiceSettingValue": { "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingValue", "value": "device_vendor_msft_policy_config_memorydump_allowlivedump_0", "children": [] } } }, { "@odata.type": "#microsoft.graph.deviceManagementConfigurationSetting", "settingInstance": { "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance", "settingDefinitionId": "user_vendor_msft_pde_enablepersonaldataencryption", "choiceSettingValue": { "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingValue", "value": "user_vendor_msft_pde_enablepersonaldataencryption_1", "children": [] } } }, { "@odata.type": "#microsoft.graph.deviceManagementConfigurationSetting", "settingInstance": { "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance", "settingDefinitionId": "device_vendor_msft_policy_config_power_allowhibernate", "choiceSettingValue": { "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingValue", "value": "device_vendor_msft_policy_config_power_allowhibernate_0", "children": [] } } } ] }
```

## Configure PDE with CSP

Alternatively, you can configure devices using the [Policy CSP][CSP-1] and [PDE CSP][CSP-2].

|OMA-URI|Format|Value|
|-|-|-|
|`./User/Vendor/MSFT/PDE/EnablePersonalDataEncryption`|int|`1`|
|`./Device/Vendor/MSFT/Policy/Config/WindowsLogon/AllowAutomaticRestartSignOn`|string|`<disabled/>`|
|`./Device/Vendor/MSFT/Policy/Config/MemoryDump/AllowCrashDump`| int| `0`|
|`./Device/Vendor/MSFT/Policy/Config/MemoryDump/AllowLiveDump` |int| `0`|
|`./Device/Vendor/MSFT/Policy/Config/ErrorReporting/DisableWindowsErrorReporting`|string|`<enabled/>`|
|`./Device/Vendor/MSFT/Policy/Config/Power/AllowHibernate` |int| `0`|
|`./Device/Vendor/MSFT/Policy/Config/ADMX_CredentialProviders/AllowDomainDelayLock`|string|`<disabled/>`|

## Disable PDE

Once PDE is enabled, it isn't recommended to disable it. However if you need to disable PDE, you can do so using the following steps.

### Disable PDE with a disk encryption policy

To disable PDE devices using a [disk encryption policy](/mem/intune/protect/endpoint-security-disk-encryption-policy), go to **Endpoint security** > **Disk encryption** and select **Create policy**:

- **Platform** > **Windows**
- **Profile** > **Personal Data Encryption**

Provide a name, and select **Next**. In the **Configuration settings** page, select **Disable Personal Data Encryption**.

Assign the policy to a group that contains as members the devices or users that you want to configure.

### Disable PDE with a settings catalog policy in Intune

[!INCLUDE [intune-settings-catalog-1](../../../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
|**PDE**|**Enable Personal Data Encryption (User)**|Disable Personal Data Encryption|

[!INCLUDE [intune-settings-catalog-2](../../../../../includes/configure/intune-settings-catalog-2.md)]

### Disable PDE with CSP

You can disable PDE with CSP using the following setting:

|OMA-URI|Format|Value|
|-|-|-|
|`./User/Vendor/MSFT/PDE/EnablePersonalDataEncryption`|int|`0`|

## Decrypt PDE-encrypted content

Disabling PDE doesn't decrypt any PDE protected content. It only prevents the PDE API from being able to protect any additional content. PDE-protected files can be manually decrypted using the following steps:

1. Open the properties of the file
1. Under the **General** tab, select **Advanced...**
1. Uncheck the option **Encrypt contents to secure data**
1. Select **OK**, and then **OK** again

PDE-protected files can also be decrypted using [`cipher.exe`][WINS-1], which can be helpful in the following scenarios:

- Decrypting a large number of files on a device
- Decrypting files on multiple of devices

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
> Once a user selects to manually decrypt a file, the user won't be able to manually protect the file again using PDE.

## Next steps

- Review the [Personal Data Encryption (PDE) FAQ](faq.yml)

<!--links used in this document-->

[CSP-1]: /windows/client-management/mdm/policy-configuration-service-provider
[CSP-2]: /windows/client-management/mdm/personaldataencryption-csp

[WINS-1]: /windows-server/administration/windows-commands/cipher

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
>
> The PDE APIs can be used to create custom applications and scripts to specify which content to protect and at what level to protect the content. Additionally, the PDE APIs can't be used to protect content until the PDE policy has been enabled.

## PDE settings list

The following table lists the required settings to enable PDE.

| Setting name | Description |
|-|-|
|Enable PDE|PDE isn't enabled by default. Before PDE can be used, you must enable it.|
|Disable Winlogon automatic restart sign-on (ARSO)| Winlogon ARSO isn't supported for use with PDE. To use PDE, ARSO must be disabled.|

> [!NOTE]
> Enabling the PDE policy on devices only enables the PDE feature. It does not protect any content. To protect content via PDE, use the [PDE APIs](/uwp/api/windows.security.dataprotection.userdataprotectionmanager). The PDE APIs can be used to create custom applications and scripts to specify which content to protect and at what level to protect the content. Additionally, the PDE APIs can't be used to protect content until the PDE policy has been enabled.

## PDE hardening recommendations

The following table lists the recommended settings to improve PDE's security.

| Setting name | Description |
|-|-|
|Disable kernel-mode crash dumps and live dumps|Kernel-mode crash dumps and live dumps can potentially cause the keys used by PDE to protect content to be exposed. For greatest security, disable kernel-mode crash dumps and live dumps.|
|Disable Windows Error Reporting (WER)/user-mode crash dumps|Disabling Windows Error Reporting prevents user-mode crash dumps. User-mode crash dumps can potentially cause the keys used by PDE to protect content to be exposed. For greatest security, disable user-mode crash dumps.|
|Disable hibernation|Hibernation files can potentially cause the keys used by Personal Data Encryption (PDE) to protect content to be exposed. For greatest security, disable hibernation.|
|Allowing users to select when a password is required when resuming from connected standby disabled|When this policy isn't configured on Azure AD joined devices, users on a Connected Standby device can change the amount of time after the device´s screen turns off before a password is required to wake the device. During the time when the screen turns off but a password isn't required, the keys used by PDE to protect content could potentially be exposed. It's recommended to explicitly disable this policy on Azure AD joined devices.|

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


[!INCLUDE [intune-settings-catalog-1](../../../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
|**PDE**|**Enable Personal Data Encryption (User)**|Enable Personal Data Encryption|
|**Administrative Templates > Windows Components > Windows Logon Options**|**Sign-in and lock last interactive user automatically after a restart**|Enabled|
|**Memory Dump**|**Allow Live Dump**|Block||
|**Memory Dump**|**Allow Crash Dump**|Block||
|**Administrative Templates > System > Logon** | **Allow users to select when a password is required when resuming from connected standby** | Disabled|
|**Power**|**Allow Hibernate**|Block|
|**Administrative Templates > Windows Components > Windows Error Reporting** | **Disable Windows Error Reporting** | **Enabled**|

[!INCLUDE [intune-settings-catalog-2](../../../../../includes/configure/intune-settings-catalog-2.md)]


> [!TIP]
> Use the following Graph call to automatically create the settings catalog policy in your tenant without assignments nor scope tags. <sup>[1](#footnote1)</sup>

```msgraph-interactive
POST https://graph.microsoft.com/beta/deviceManagement/configurationPolicies
Content-Type: application/json

{
    "id": "00-0000-0000-0000-000000000000",
    "name": "_MSLearn_PDE",
    "description": "",
    "platforms": "windows10",
    "technologies": "mdm",
    "roleScopeTagIds": [
      "0"
    ],
    "settings": [
      {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSetting",
        "settingInstance": {
          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
          "settingDefinitionId": "device_vendor_msft_policy_config_admx_credentialproviders_allowdomaindelaylock",
          "choiceSettingValue": {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
            "value": "device_vendor_msft_policy_config_admx_credentialproviders_allowdomaindelaylock_0",
            "children": []
          }
        }
      },
      {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSetting",
        "settingInstance": {
          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
          "settingDefinitionId": "device_vendor_msft_policy_config_errorreporting_disablewindowserrorreporting",
          "choiceSettingValue": {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
            "value": "device_vendor_msft_policy_config_errorreporting_disablewindowserrorreporting_1",
            "children": []
          }
        }
      },
      {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSetting",
        "settingInstance": {
          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
          "settingDefinitionId": "device_vendor_msft_policy_config_windowslogon_allowautomaticrestartsignon",
          "choiceSettingValue": {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
            "value": "device_vendor_msft_policy_config_windowslogon_allowautomaticrestartsignon_0",
            "children": []
          }
        }
      },
      {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSetting",
        "settingInstance": {
          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
          "settingDefinitionId": "device_vendor_msft_policy_config_memorydump_allowcrashdump",
          "choiceSettingValue": {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
            "value": "device_vendor_msft_policy_config_memorydump_allowcrashdump_0",
            "children": []
          }
        }
      },
      {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSetting",
        "settingInstance": {
          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
          "settingDefinitionId": "device_vendor_msft_policy_config_memorydump_allowlivedump",
          "choiceSettingValue": {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
            "value": "device_vendor_msft_policy_config_memorydump_allowlivedump_0",
            "children": []
          }
        }
      },
      {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSetting",
        "settingInstance": {
          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
          "settingDefinitionId": "user_vendor_msft_pde_enablepersonaldataencryption",
          "choiceSettingValue": {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
            "value": "user_vendor_msft_pde_enablepersonaldataencryption_1",
            "children": []
          }
        }
      },
      {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSetting",
        "settingInstance": {
          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
          "settingDefinitionId": "device_vendor_msft_policy_config_power_allowhibernate",
          "choiceSettingValue": {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
            "value": "device_vendor_msft_policy_config_power_allowhibernate_0",
            "children": []
          }
        }
      }
    ]
  }
```

<sup><a name="footnote1"></a>1</sup> When using this call, authenticate to your tenant in the Graph Explorer window. If it's the first time using Graph Explorer, you may need to authorize the application to access your tenant or to modify the existing permissions. This graph call requires *DeviceManagementConfiguration.ReadWrite.All* permissions.


Alternatively, you can configure devices using a [custom policy][INT-1] with the [Policy CSP][CSP-1].\

|OMA-URI|Format|Value|
|-|-|-|
|`./User/Vendor/MSFT/PDE/EnablePersonalDataEncryption`|int|`1`|
|`./Device/Vendor/MSFT/Policy/Config/MemoryDump/AllowCrashDump`| int| `0`|
|`./Device/Vendor/MSFT/Policy/Config/MemoryDump/AllowLiveDump` |int| `0`|
|`./Device/Vendor/MSFT/Policy/Config/ErrorReporting/DisableWindowsErrorReporting`|string|`</disabled>`|
|`./Device/Vendor/MSFT/Policy/Config/ADMX_CredentialProviders/AllowDomainDelayLock`|string|`</disabled>`|


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
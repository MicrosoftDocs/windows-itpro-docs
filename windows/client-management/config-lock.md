---
title: Secured-core configuration lock
description: A secured-core PC (SCPC) feature that prevents configuration drift from secured-core PC features caused by unintentional misconfiguration.
ms.topic: conceptual
ms.date: 07/08/2024
appliesto:
- ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
---

# Secured-core PC configuration lock

In an enterprise organization, IT administrators enforce policies on their corporate devices to keep the devices in a compliant state and protect the OS by preventing users from changing configurations and creating config drift. Config drift occurs when users with local admin rights change settings and put the device out of sync with security policies. Devices in a noncompliant state can be vulnerable until the next sync and configuration reset with the MDM. Windows 11 with config lock enables IT administrators to prevent config drift and keep the OS configuration in the desired state. With config lock, the OS monitors the registry keys that configure each feature and when it detects a drift, reverts to the IT-desired state in seconds.

Secured-core configuration lock (config lock) is a new [secured-core PC (SCPC)](/windows-hardware/design/device-experiences/oem-highly-secure) feature that prevents configuration drift from secured-core PC features caused by unintentional misconfiguration. In short, it ensures a device intended to be a secured-core PC remains a secured-core PC.

To summarize, config lock:

- Enables IT to "lock" secured-core PC features when managed through MDM
- Detects drift remediates within seconds
- Doesn't prevent malicious attacks

[!INCLUDE [secured-core-configuration-lock](../../includes/licensing/secured-core-configuration-lock.md)]

## Configuration Flow

After a [secured-core PCs](/windows-hardware/design/device-experiences/oem-highly-secure) reaches the desktop, config lock will prevent configuration drift by detecting if the device is a secured-core PC or not. When the device isn't a secured-core PC, the lock doesn't apply. If the device is a secured-core PC, config lock locks the policies listed under [List of locked policies](#list-of-locked-policies).

## Enabling config lock using Microsoft Intune

Config lock isn't enabled by default, or turned on by the OS during boot. Rather, you need to turn it on.

The steps to turn on config lock using Microsoft Intune are as follows:

1. Ensure that the device to turn on config lock is enrolled in Microsoft Intune.
1. In the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), select **Devices** > **Configuration Profiles** > **Create a profile**.
1. Select the following and press **Create**:
    - **Platform**: `Windows 10 and later`
    - **Profile type**: `Templates`
    - **Template name**: Custom

    :::image type="content" source="images/configlock-mem-createprofile.png" alt-text="In Configuration profiles, the Create a profile page is showing, with the Platform set to Windows 10 and later, and a Profile Type of Templates.":::

1. Name your profile.
1. When you reach the Configuration Settings step, select "Add" and add the following information:
    - **OMA-URI**: `./Vendor/MSFT/DMClient/Provider/MS%20DM%20Server/ConfigLock/Lock`
    - **Data type**: `Integer`
    - **Value**: `1`

    To turn off config lock, change the value to 0.

    :::image type="content" source="images/configlock-mem-editrow.png" alt-text="In the Configuration settings step, the Edit Row page is shown with a Name of config lock, a Description of Turn-on config lock and the OMA-URI set, along with a Data type of Integer set to a Value of 1.":::

1. Select the devices to turn on config lock. If you're using a test tenant, you can select "+ Add all devices".
1. You don't need to set any applicability rules for test purposes.
1. Review the Configuration and select "Create" if everything is correct.
1. After the device syncs with the Microsoft Intune server, you can confirm if the config lock was successfully enabled.

    :::image type="content" source="images/configlock-mem-dev.png" alt-text="The Profile assignment status dashboard when viewing the config lock device configuration profile, showing one device has succeeded in having this profile applied.":::

    :::image type="content" source="images/configlock-mem-devstatus.png" alt-text="The Device Status for the config lock Device Configuration Profile, showing one device with a Deployment Status as Succeeded and two with Pending.":::

## Configuring secured-core PC features

Config lock is designed to ensure that a secured-core PC isn't unintentionally misconfigured. You keep the ability to enable or disable SCPC features, for example, firmware protection. You can make these changes with group policies or MDM services like Microsoft Intune.

:::image type="content" source="images/configlock-mem-firmwareprotect.png" alt-text="The Defender Firmware protection setting, with a description of System Guard protects your device from compromised firmware. The setting is set to Off.":::

## FAQ

- Can I disable config lock? Yes. You can use MDM to turn off config lock completely or put it in temporary unlock mode for helpdesk activities.

## List of locked policies

| **CSPs**                                                                      |
|-------------------------------------------------------------------------------|
| [BitLocker](mdm/bitlocker-csp.md)                                             |
| [PassportForWork](mdm/passportforwork-csp.md)                                 |
| [WindowsDefenderApplicationGuard](mdm/windowsdefenderapplicationguard-csp.md) |
| [ApplicationControl](mdm/applicationcontrol-csp.md)                           |

| **MDM policies**                                                                                                            | **Supported by Group Policy** |
|-----------------------------------------------------------------------------------------------------------------------------|-------------------------------|
| [DataProtection/AllowDirectMemoryAccess](mdm/policy-csp-dataprotection.md)                                                  | No                            |
| [DataProtection/LegacySelectiveWipeID](mdm/policy-csp-dataprotection.md)                                                    | No                            |
| [DeviceGuard/ConfigureSystemGuardLaunch](mdm/policy-csp-deviceguard.md)                                                     | Yes                           |
| [DeviceGuard/EnableVirtualizationBasedSecurity](mdm/policy-csp-deviceguard.md)                                              | Yes                           |
| [DeviceGuard/LsaCfgFlags](mdm/policy-csp-deviceguard.md)                                                                    | Yes                           |
| [DeviceGuard/RequirePlatformSecurityFeatures](mdm/policy-csp-deviceguard.md)                                                | Yes                           |
| [DeviceInstallation/AllowInstallationOfMatchingDeviceIDs](mdm/policy-csp-deviceinstallation.md)                             | Yes                           |
| [DeviceInstallation/AllowInstallationOfMatchingDeviceInstanceIDs](mdm/policy-csp-deviceinstallation.md)                     | Yes                           |
| [DeviceInstallation/AllowInstallationOfMatchingDeviceSetupClasses](mdm/policy-csp-deviceinstallation.md)                    | Yes                           |
| [DeviceInstallation/PreventDeviceMetadataFromNetwork](mdm/policy-csp-deviceinstallation.md)                                 | Yes                           |
| [DeviceInstallation/PreventInstallationOfDevicesNotDescribedByOtherPolicySettings](mdm/policy-csp-deviceinstallation.md)    | Yes                           |
| [DeviceInstallation/PreventInstallationOfMatchingDeviceIDs](mdm/policy-csp-deviceinstallation.md)                           | Yes                           |
| [DeviceInstallation/PreventInstallationOfMatchingDeviceInstanceIDs](mdm/policy-csp-deviceinstallation.md)                   | Yes                           |
| [DeviceInstallation/PreventInstallationOfMatchingDeviceSetupClasses](mdm/policy-csp-deviceinstallation.md)                  | Yes                           |
| [DmaGuard/DeviceEnumerationPolicy](mdm/policy-csp-dmaguard.md)                                                              | Yes                           |
| [WindowsDefenderSecurityCenter/CompanyName](mdm/policy-csp-windowsdefendersecuritycenter.md)                                | Yes                           |
| [WindowsDefenderSecurityCenter/DisableAccountProtectionUI](mdm/policy-csp-windowsdefendersecuritycenter.md)                 | Yes                           |
| [WindowsDefenderSecurityCenter/DisableAppBrowserUI](mdm/policy-csp-windowsdefendersecuritycenter.md)                        | Yes                           |
| [WindowsDefenderSecurityCenter/DisableClearTpmButton](mdm/policy-csp-windowsdefendersecuritycenter.md)                      | Yes                           |
| [WindowsDefenderSecurityCenter/DisableDeviceSecurityUI](mdm/policy-csp-windowsdefendersecuritycenter.md)                    | Yes                           |
| [WindowsDefenderSecurityCenter/DisableEnhancedNotifications](mdm/policy-csp-windowsdefendersecuritycenter.md)               | Yes                           |
| [WindowsDefenderSecurityCenter/DisableFamilyUI](mdm/policy-csp-windowsdefendersecuritycenter.md)                            | Yes                           |
| [WindowsDefenderSecurityCenter/DisableHealthUI](mdm/policy-csp-windowsdefendersecuritycenter.md)                            | Yes                           |
| [WindowsDefenderSecurityCenter/DisableNetworkUI](mdm/policy-csp-windowsdefendersecuritycenter.md)                           | Yes                           |
| [WindowsDefenderSecurityCenter/DisableNotifications](mdm/policy-csp-windowsdefendersecuritycenter.md)                       | Yes                           |
| [WindowsDefenderSecurityCenter/DisableTpmFirmwareUpdateWarning](mdm/policy-csp-windowsdefendersecuritycenter.md)            | Yes                           |
| [WindowsDefenderSecurityCenter/DisableVirusUI](mdm/policy-csp-windowsdefendersecuritycenter.md)                             | Yes                           |
| [WindowsDefenderSecurityCenter/DisallowExploitProtectionOverride](mdm/policy-csp-windowsdefendersecuritycenter.md)          | Yes                           |
| [WindowsDefenderSecurityCenter/Email](mdm/policy-csp-windowsdefendersecuritycenter.md)                                      | Yes                           |
| [WindowsDefenderSecurityCenter/EnableCustomizedToasts](mdm/policy-csp-windowsdefendersecuritycenter.md)                     | Yes                           |
| [WindowsDefenderSecurityCenter/EnableInAppCustomization](mdm/policy-csp-windowsdefendersecuritycenter.md)                   | Yes                           |
| [WindowsDefenderSecurityCenter/HideRansomwareDataRecovery](mdm/policy-csp-windowsdefendersecuritycenter.md)                 | Yes                           |
| [WindowsDefenderSecurityCenter/HideSecureBoot](mdm/policy-csp-windowsdefendersecuritycenter.md)                             | Yes                           |
| [WindowsDefenderSecurityCenter/HideTPMTroubleshooting](mdm/policy-csp-windowsdefendersecuritycenter.md)                     | Yes                           |
| [WindowsDefenderSecurityCenter/HideWindowsSecurityNotificationAreaControl](mdm/policy-csp-windowsdefendersecuritycenter.md) | Yes                           |
| [WindowsDefenderSecurityCenter/Phone](mdm/policy-csp-windowsdefendersecuritycenter.md)                                      | Yes                           |
| [WindowsDefenderSecurityCenter/URL](mdm/policy-csp-windowsdefendersecuritycenter.md)                                        | Yes                           |
| [SmartScreen/EnableAppInstallControl](mdm/policy-csp-smartscreen.md)                                                        | Yes                           |
| [SmartScreen/EnableSmartScreenInShell](mdm/policy-csp-smartscreen.md)                                                       | Yes                           |
| [SmartScreen/PreventOverrideForFilesInShell](mdm/policy-csp-smartscreen.md)                                                 | Yes                           |

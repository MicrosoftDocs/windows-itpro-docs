---
title: Secured-Core Configuration Lock
description: A Secured-Core PC (SCPC) feature that prevents configuration drift from Secured-Core PC features (shown below) caused by unintentional misconfiguration. 
manager: dansimp
keywords: mdm,management,administrator,config lock
ms.author: v-lsaldanha
ms.topic: article
ms.prod: w11
ms.technology: windows
author: lovina-saldanha
ms.date: 10/07/2021
---

# Secured-Core PC Configuration Lock 

**Applies to**

-   Windows 11

In an enterprise organization, IT administrators enforce policies on their corporate devices to keep the devices in a compliant state and protect the OS by preventing users from changing configurations and creating config drift. Config drift occurs when users with local admin rights change settings and put the device out of sync with security policies. Devices in a non-compliant state can be vulnerable until the next sync and configuration reset with the MDM. Windows 11 with Config Lock enables IT administrators to prevent config drift and keep the OS configuration in the desired state. With config lock, the OS monitors the registry keys that configure each feature and when it detects a drift, reverts to the IT-desired state in seconds.

Secured-Core Configuration Lock (Config Lock) is a new [Secured-Core PC (SCPC)](/windows-hardware/design/device-experiences/oem-highly-secure) feature that prevents configuration drift from Secured-Core PC features (shown below) caused by unintentional misconfiguration. In short, it ensures a device intended to be a Secured-Core PC remains a Secured-Core PC.

:::image type="content" source="../images/config-lock-mdsl.png" alt-text="mdsl":::

To summarize, Config Lock:

- Enables IT to “lock” Secured-Core PC features when managed through MDM
- Detects drift remediates within seconds
- DOES NOT prevent malicious attacks

## Configuration Flow

After a Secured-Core PC reaches the desktop, Config Lock will prevent configuration drift by detecting if the device is a Secured-Core PC or not. When the device isn't a Secured-Core PC, the lock won't apply. If the device is a Secured-Core PC, config lock will lock the policies listed here.

**List of locked policies**


|Policies  |
|---------|
|**CSPs**     |
|[BitLocker ](bitlocker-csp.md)      |
|[PassportForWork](passportforwork-csp.md)       |
|[WindowsDefenderApplicationGuard](windowsdefenderapplicationguard-csp.md)       |
|[ApplicationControl](applicationcontrol-csp.md) |
|     |
|**MDM policies**     |
|[DataProtection/AllowDirectMemoryAccess](policy-csp-dataprotection.md)      |
|[DataProtection/LegacySelectiveWipeID](policy-csp-dataprotection.md)      |
|[DeviceGuard/ConfigureSystemGuardLaunch](policy-csp-deviceguard.md)      |
|[DeviceGuard/EnableVirtualizationBasedSecurity](policy-csp-deviceguard.md)      |
|[DeviceGuard/LsaCfgFlags](policy-csp-deviceguard.md)      |
|[DeviceGuard/RequirePlatformSecurityFeatures](policy-csp-deviceguard.md)      |
|[DeviceInstallation/AllowInstallationOfMatchingDeviceIDs](policy-csp-deviceinstallation.md)      |
|[DeviceInstallation/AllowInstallationOfMatchingDeviceInstanceIDs](policy-csp-deviceinstallation.md)      |
|[DeviceInstallation/AllowInstallationOfMatchingDeviceSetupClasses](policy-csp-deviceinstallation.md) |
|[DeviceInstallation/PreventDeviceMetadataFromNetwork](policy-csp-deviceinstallation.md) |
|[DeviceInstallation/PreventInstallationOfDevicesNotDescribedByOtherPolicySettings](policy-csp-deviceinstallation.md) |
|[DeviceInstallation/PreventInstallationOfMatchingDeviceIDs](policy-csp-deviceinstallation.md) |
|[DeviceInstallation/PreventInstallationOfMatchingDeviceInstanceIDs](policy-csp-deviceinstallation.md) |
|[DeviceInstallation/PreventInstallationOfMatchingDeviceSetupClasses](policy-csp-deviceinstallation.md) |
|[DmaGuard/DeviceEnumerationPolicy](policy-csp-dmaguard.md) |
|[WindowsDefenderSecurityCenter/CompanyName](policy-csp-windowsdefendersecuritycenter.md) |
|[WindowsDefenderSecurityCenter/DisableAccountProtectionUI](policy-csp-windowsdefendersecuritycenter.md) |
|[WindowsDefenderSecurityCenter/DisableAppBrowserUI](policy-csp-windowsdefendersecuritycenter.md) |
|[WindowsDefenderSecurityCenter/DisableClearTpmButton](policy-csp-windowsdefendersecuritycenter.md) |
|[WindowsDefenderSecurityCenter/DisableDeviceSecurityUI](policy-csp-windowsdefendersecuritycenter.md) |
|[WindowsDefenderSecurityCenter/DisableEnhancedNotifications](policy-csp-windowsdefendersecuritycenter.md) |
|[WindowsDefenderSecurityCenter/DisableFamilyUI](policy-csp-windowsdefendersecuritycenter.md) |
|[WindowsDefenderSecurityCenter/DisableHealthUI](policy-csp-windowsdefendersecuritycenter.md) |
|[WindowsDefenderSecurityCenter/DisableNetworkUI](policy-csp-windowsdefendersecuritycenter.md) |
|[WindowsDefenderSecurityCenter/DisableNotifications](policy-csp-windowsdefendersecuritycenter.md) |
|[WindowsDefenderSecurityCenter/DisableTpmFirmwareUpdateWarning](policy-csp-windowsdefendersecuritycenter.md) |
|[WindowsDefenderSecurityCenter/DisableVirusUI](policy-csp-windowsdefendersecuritycenter.md) |
|[WindowsDefenderSecurityCenter/DisallowExploitProtectionOverride](policy-csp-windowsdefendersecuritycenter.md) |
|[WindowsDefenderSecurityCenter/Email](policy-csp-windowsdefendersecuritycenter.md) |
|[WindowsDefenderSecurityCenter/EnableCustomizedToasts](policy-csp-windowsdefendersecuritycenter.md) |
|[WindowsDefenderSecurityCenter/EnableInAppCustomization](policy-csp-windowsdefendersecuritycenter.md) |
|[WindowsDefenderSecurityCenter/HideRansomwareDataRecovery](policy-csp-windowsdefendersecuritycenter.md) |
|[WindowsDefenderSecurityCenter/HideSecureBoot](policy-csp-windowsdefendersecuritycenter.md) |
|[WindowsDefenderSecurityCenter/HideTPMTroubleshooting](policy-csp-windowsdefendersecuritycenter.md) |
|[WindowsDefenderSecurityCenter/HideWindowsSecurityNotificationAreaControl](policy-csp-windowsdefendersecuritycenter.md) |
|[WindowsDefenderSecurityCenter/Phone](policy-csp-windowsdefendersecuritycenter.md) |
|[WindowsDefenderSecurityCenter/URL](policy-csp-windowsdefendersecuritycenter.md) |
|[SmartScreen/EnableAppInstallControl](policy-csp-smartscreen.md)|
|[SmartScreen/EnableSmartScreenInShell](policy-csp-smartscreen.md) |
|[SmartScreen/PreventOverrideForFilesInShell](policy-csp-smartscreen.md) |

:::image type="content" source="images/flow_configlock.png" alt-text="config lock flow.":::

IT Admin scenario:

1. IT Admins use MDM to enable Config Lock
1. IT Admins use MDM service to set policies
1. Policies are targeted to user/device
1. Policies come down to device and get set
1. Configurations are locked
1. A local admin user attempts to override the policy
1. System quickly remediates policy to the desired SCPC state

Helpdesk scenario:

1. Helpdesk support engineer investigates the device
1. Helpdesk support engineer contacts the IT Admin to unlock the device
1. IT Admin unlocks the device to make configuration changes
1. Device returns to locked state after a defined time (default 30 minutes)

## System Requirements

Config Lock will be available for all Windows Professional and Enterprise Editions.  

## Enabling Config Lock using Microsoft Intune

Config Lock isn't enabled by default (or turned on by the OS during boot). Rather, an IT Admin must intentionally turn it on.
 
The steps to turn on Config Lock using Microsoft Endpoint Manager (MEM) are as follows:

1. Ensure that the device to turn on Config Lock is enrolled in MEM.
1. From the MEM portal main page, select **Devices** > **Configuration Profiles** > **Create a profile**.
1. Select the following and press **Create**:
    - **Platform**: Windows 10 and later
    - **Profile type**: Templates
    - **Template name**: Custom

    :::image type="content" source="images/configlock-mem-createprofile.png" alt-text="create profile":::

1. Name your profile.
1. When you reach the Configuration Settings step, select “Add” and add the following information:
    - **OMA-URI**: ./Vendor/MSFT/DMClient/Provider/MS%20DM%20Server/ConfigLock/Lock
    - **Data type**: Integer
    - **Value**: 1 </br>
    To turn off Config Lock. Change value to 0.

    :::image type="content" source="images/configlock-mem-editrow.png" alt-text="edit row":::

1. Select the devices to turn on Config Lock. If you're using a test tenant, you can select “+ Add all devices”.
1. You'll not need to set any applicability rules for test purposes.
1. Review the Configuration and select “Create” if everything is correct.
1. After the device syncs with the MEM server, you can confirm if the Config Lock was successfully enabled.

    :::image type="content" source="images/configlock-mem-dev.png" alt-text="status":::

    :::image type="content" source="images/configlock-mem-devstatus.png" alt-text="device status":::

## Disabling
Config Lock is designed to ensure that a Secured-Core PC isn't unintentionally misconfigured.  IT Admins retain the ability to change (enabled/disable) SCPC features via Group Policies and/or mobile device management (MDM) tools, such as MEM.

:::image type="content" source="images/configlock-mem-firmwareprotect.png" alt-text="firmware protect":::
 
## FAQ

**Can an IT Admin disable Config Lock ?** </br>
	Yes. IT Admin can use MDM to turn off Config Lock.</br>

**Could an end-user run the BuiltAsSecuredCorePC PowerShell command to disable Config Lock?** </br>
	The PowerShell script is accessible, but the BuiltAsSecuredCorePC becomes read-only after boot, so the command will fail when run from the OS.

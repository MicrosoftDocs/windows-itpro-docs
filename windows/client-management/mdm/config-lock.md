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

Secured-Core Configuration Lock (Config Lock) is a new Secured-Core PC (SCPC) feature that prevents configuration drift from Secured-Core PC features (shown below) caused by unintentional misconfiguration. In short, it ensures a device intended to be a Secured-Core PC remains a Secured-Core PC.

:::image type="content" source="../images/config-lock-mdsl.png" alt-text="mdsl":::

To summarize, Config Lock:

- Enables IT to “lock” a fixed set of configurations on Secured-Core PCs under MDM management
- Detects drift and quickly remediates
- Focuses on security features
- DOES NOT prevent malicious attacks

## Flow

After a Secured-Core PC reaches the desktop, Config lock will prevent configuration drift as follows:

- Detect whether the device is a Secured-Core PC
- If so, prevent the following Secured-Core PC features from being disabled without IT Admin permission:
    - Memory Access Protection (kDMA)
    - Memory Integrity (HVCI)
    - System Guard
        - DRTM
        - SMM

:::image type="content" source="images/flow_configlock.png" alt-text="flow":::

IT Admin scenario:

1. IT Admin use MDM to enable Config Lock
1. IT Admin use MDM service to set policies
1. Policies are targeted to user/device
1. Policies come down to device and get set
1. Configurations are locked
1. A local admin user attempts to override the policy
1. System quickly remediates policy to the desired SCPC state

Helpdesk scenario:

1. Helpdesk support engineer investigates the device
1. Helpdesk support engineer contacts the IT Admin to unlocks the device
1. IT Admin unlocks the device in order to make configuration changes
1. Device returns to locked state after a defined time (default 30 minutes)

## System Requirements

Config Lock will be available for all Windows Professional and Enterprise Editions.  

## Enabling

Config Lock is not enabled by default (or turned on by the OS during boot). Rather, an IT Admin must intentionally turn it ON.
 
Config Lock is controlled by the presence of the Secured-Core PC Device Identifier (the “BuiltAsSecuredCorePC” UEFI variable) inserted on the device by the OEM during initial device manufacturing. Config Lock can be enabled if the ByteArray value of this identifier is set to “1” and IT admin pushes the MDM policy to turn Config Lock ON. If it is “0” or the variable is not present at all, Config Lock cannot be enabled.

> [!NOTE]
> BuiltAsSecuredCorePC actually accepts ByteArray values of 0-9, and any value from 1-9 will indicate Secured-Core PC to the Config Lock feature.  While we recommend “1” for consistency, OEMs may optionally use any other value up to 9 for internal versioning reasons, or other purposes.  (Technically, any value from 1-255 should trigger Config Lock, since BuiltAsSecuredCorePC is a byte.)

The UEFI variable can be set however an OEM likes, but one option is to use the Set-UEFIVariable command from [PowerShell Gallery | UEFIv2 2.3](https://www.powershellgallery.com/packages/UEFIv2/2.3), per the following syntax:

```powershell
powershell.exe -ExecutionPolicy Bypass {Import-Module .\UEFIv2.psd1 ;  Set-UEFIVariable -VariableName BuiltAsSecuredCorePC -Namespace '{77fa9abd-0359-4d32-bd60-28f4e78f784b}' -ByteArray @(01) }. common ..]
```

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

1. Select the devices to turn on Config Lock. If you are using a test tenant, you can select “+ Add all devices”.
1. You will not need to set any applicability rules for test purposes.
1. Review the Configuration and select “Create” if everything is correct.
1. After the device syncs with the MEM server, you will be able to confirm if the Config Lock was successfully enabled.

    :::image type="content" source="images/configlock-mem-dev.png" alt-text="status":::

    :::image type="content" source="images/configlock-mem-devstatus.png" alt-text="device status":::

## Disabling
Config Lock is designed to ensure that a Secured-Core PC is not unintentionally misconfigured.  IT Admins retain the ability to change (enabled/disable) SCPC features via Group Policies and/or mobile device management (MDM) tools, such as MEM.

:::image type="content" source="images/configlock-mem-firmwareprotect.png" alt-text="firmware protect":::
 
## FAQ

**#1. Can an IT Admin disable Config Lock ?** </br>
	Yes. IT Admin can use MDM to turn off Config Lock.

**#2. Does the Secured-Core PC Device Identifier UEFI variable (BuiltAsSecuredCorePC) value matter after it’s been read by the OA3 tool in the OEM factory?** </br>
    Yes. Config Lock will always read this UEFI variable to know whether it pertains to a device or not. So, changing the variable changes the Config Lock even after the device has left the OEM factory.

**#3. Could an end-user run the BuiltAsSecuredCorePC PS command to disable Config Lock?** </br>
	The PS script is accessible, but the BuiltAsSecuredCorePC becomes read-only after boot, so the command will fail when run from the OS.

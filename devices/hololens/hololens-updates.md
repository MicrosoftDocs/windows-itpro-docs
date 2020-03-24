---
title: Manage HoloLens updates
description: Administrators can use mobile device management to manage updates to HoloLens devices.
ms.prod: hololens
ms.sitesec: library
author: Teresa-Motiv
ms.author: v-tea
audience: ITPro
ms.topic: article
ms.localizationpriority: high
ms.date: 03/24/2020
ms.reviewer: jarrettr
manager: jarrettr
ms.custom: 
- CI 115825
- CI 111456
- CSSTroubleshooting
appliesto:
- HoloLens (1st gen)
- HoloLens 2
---

# Manage HoloLens updates

HoloLens uses Windows Update, just like other Windows 10 devices. When an update is available, it will be automatically downloaded and installed the next time your device is plugged in and connected to the internet. This article describes how to manage updates in an enterprise or other managed environment. For information about managing updates to individual HoloLens devices, see [Update HoloLens](hololens-update-hololens.md).

## Manage updates automatically

Windows Holographic for Business can use [Windows Update for Business](https://docs.microsoft.com/windows/deployment/update/waas-manage-updates-wufb) to manage updates. All HoloLens 2 devices can use Windows Holographic for Business. If you have HoloLens (1st gen) devices, you have to [upgrade them to Windows Holographic for Business (build 10.0.18362.1042 or a later build)](hololens1-upgrade-enterprise.md) to manage their updates.

Windows Update for Business connects HoloLens devices directly to the Windows Update service. By using Windows Update for Business, you can control multiple aspects of the update process: which devices get which updates at what time. For example, you can roll out updates to a subset of devices for testing, then roll out updates to the remaining devices at a later date. Or you can define different update schedules for different types of updates.

> [!NOTE]  
> For HoloLens devices, You can automatically manage feature updates (released twice a year) and quality updates (released monthly or as needed, including critical security updates). For more information about update types, see [Types of updates managed by Windows Update for Business](https://docs.microsoft.com/windows/deployment/update/waas-manage-updates-wufb).

You can configure Windows Update for Business settings by using enterprise Group Policy or by using policies in a Mobile Device Management (MDM) solution such as Microsoft Intune.

For a detailed discussion of how to use Intune to configure Windows Update for Business, see [Manage Windows 10 software updates in Intune](https://docs.microsoft.com/intune/protect/windows-update-for-business-configure).

> [!IMPORTANT]  
> Intune provides two policy types for managing updates: *Windows 10 update ring* and *Windows 10 feature updates*. The Windows 10 feature update policy type is in public preview at this time and is not supported for HoloLens.
>  
> You can use Windows 10 update ring policies with HoloLens.

### Plan the update strategy

Windows Updates for Business supports deferral policies. A deferral policy specifies the number of days between the date that an update becomes available and the date that the update is offered to a device. By associating subsets of your devices (referred to as *update rings*) with deferral policies, you can coordinate an update rollout strategy for your organization.

For example, consider an organization that has 1,000 devices and has to update them in five ways. The organization can create five update rings, as shown in the following table:

|Group |Number of devices |Deferral (days) |
| ---| :---: | :---: |
|Grp 1 (IT Staff) |5 |0 |
|Grp 2 (Early Adopters) |50 |60 |
|Grp 3 (main 1) |250 |120 |
|Grp 4 (main 2) |300 |150 |
|Grp 5 (main 3) |395 |180 |

Here's how the rollout progresses over time to the entire organization:

![Timeline for deploying updates](./images/hololens-updates-timeline.png)

### Configure update policies

The [Policy configuration service provider (CSP)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update) defines the policies that configure Windows Update for Business.

> [!NOTE]  
> For details about specific policies that are supported by specific editions of HoloLens, see the following articles:
> - [Policies supported by HoloLens devices](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#policies-supported-by-hololens-devices)
> - [Policies supported by Windows Holographic for Business](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#a-href-idhololenspoliciesapolicies-supported-by-windows-holographic-for-business)

#### Configure automatic checks for updates

You can use the Update/AllowAutoUpdate policy to manage automatic update behavior, such as scanning, downloading, and installing updates.

The supported values for this policy are the following:

- **0** - Notify the user when there is an update that is ready to download that applies to the device.
- **1** - Automatically install the update and then notify the user to schedule a device restart.  
- **2** - Automatically install the update, and then restart the device. *This is the recommended value*, and is the default value for this policy.  

- **3** - Automatically install the update, and restart at a specified time. Specify the installation day and time. If no day and time are specified, the default is daily at 3 AM. 

- **4** - Automatically install the update, and then restart the device. This option also sets the Settings page to read-only.

- **5** - Turn off automatic updates.

For more details about the available settings for this policy, see [Update/AllowAutoUpdate](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-allowautoupdate).

> [!NOTE]  
> In Microsoft Intune, you can use **Automatic Update Behavior** to change this policy. For more information, see [Manage software updates in Microsoft Intune](https://docs.microsoft.com/intune/windows-update-for-business-configure).

#### Configure an update deferral

A deferral policy specifies the number of days between the date that an update becomes available and the date that the update is offered to a device.

You can configure different deferrals for feature updates and quality updates. The following table lists the specific policies to use for each type, as well as the maximum deferral for each.

|Category |Policy |Maximum deferral |
| --- | --- | --- |
|Feature updates |DeferFeatureUpdatesPeriodInDays |365 days |
|Quality updates |DeferQualityUpdatesPeriodInDays |30 days |

#### Configure an update schedule

To configure how and when updates are applied, use the following policies:

- [Update/ScheduledInstallDay](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduledinstallday).  
   - Values: **0** – **7** (0 = every day, 1 = Sunday, 7 = Saturday)
   - Default value: **0** (every day)
- [Update/ScheduledInstallTime](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduledinstalltime).
   - Values: 0 – 23 (0 = 12AM, 23 = 11PM)
   - Default value: 3pm

#### For devices that run Windows 10, version 1607 only

You can use the following update policies to configure devices to get updates from the Windows Server Update Service (WSUS), instead of Windows Update:

- [Update/AllowUpdateService](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-allowupdateservice)
- [Update/RequireUpdateApproval](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-requireupdateapproval)
- [Update/UpdateServiceUrl](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-updateserviceurl)

### Examples - using Intune to manage updates

#### Creating and assigning an update ring

For a more detailed version of this example, see [Create and assign update rings](https://docs.microsoft.com/mem/intune/protect/windows-update-for-business-configure#create-and-assign-update-rings).

1. Sign-in to the [Microsoft Endpoint Manager Admin Center](https://go.microsoft.com/fwlink/?linkid=2109431) and navigate to your Intune profiles.
1. Select **Software Updates** > **Windows 10 update rings** > **Create**.
1. Under **Basics**, specify a name, a description (optional) and then select **Next**.
1. Under **Update ring settings**, for **Servicing channel**, select **Semi-Annual Channel**, and then change **Feature update deferral period** to **120**. When finished, select **Next**.
1. Under **Assignments**, select **+ Select groups to include** and then assign the update ring to one or more groups. Use **+ Select groups to exclude** to fine-tune the assignments. When finished, select **Next**.
1. Under **Review + create**, review the settings. When you're ready to save the update ring configuration, select **Create**.

The list of update rings now includes the new Windows 10 update ring.

#### Pausing an update ring

If you discover a problem while deploying a feature or quality update, you can pause the update for 35 days (starting from a specified date). This pause prevents other devices from installing the update until you mitigate the issue. If you pause a feature update, quality updates are still offered to devices to ensure they stay secure. After the specified time period has passed, the pause automatically expires. At that point, the update process resumes.

To pause an update ring in Intune, follow these steps:

1. On the overview page for the update ring, select **Pause**.
1. Select the type of update (**Feature** or **Quality**) to pause, and then select **OK**.

When an update type is paused, the Overview pane for that ring displays how many days remain before that update type resumes.

While the update ring is paused, you can select either of the following options:

- To extend the pause period for an update type for 35 days, select **Extend**.
- To restore updates for that ring to active operation, select **Resume**. You can pause the update ring again if needed.

> [!NOTE]  
> The **Uninstall** operation for update rings is not supported for HoloLens 2 devices.

## Manually check for updates

While HoloLens periodically checks for system updates so you don't have to, there may be circumstances in which you want to manually check.

To manually check for updates, go to **Settings** > **Update & Security** > **Check for updates**. If the Settings app says your device is up to date, you have all the updates that are currently available.

## Manually revert an update

### Go back to a previous version (HoloLens 2)

In some cases, you might want to go back to a previous version of the HoloLens software. You can do this by using the Advanced Recovery Companion to reset your HoloLens to the earlier version.

> [!NOTE]
> Going back to an earlier version deletes your personal files and settings.

To go back to a previous version of HoloLens 2, follow these steps:

1. Make sure that you don't have any phones or Windows devices plugged in to your PC.
1. On your PC, download the [Advanced Recovery Companion](https://www.microsoft.com/p/advanced-recovery-companion/9p74z35sfrs8?activetab=pivot:overviewtab) from the Microsoft Store.
1. Download the [most recent HoloLens 2 release](https://aka.ms/hololens2download).
1. When you have finished these downloads, open **File explorer** > **Downloads**. Right-click the zipped folder that you just downloaded, and select **Extract all** > **Extract** to unzip it.
1. Connect your HoloLens to your PC using a USB-A to USB-C cable . (Even if you've been using other cables to connect your HoloLens, this one works best.)
1. The Advanced Recovery Companion automatically detects your HoloLens. Select the **Microsoft HoloLens** tile.
1. On the next screen, select **Manual package selection** and then select the installation file contained in the folder that you unzipped in step 4. (Look for a file with the .ffu extension.)
1. Select **Install software**, and follow the instructions.

### Go back to a previous version (HoloLens (1st gen))

In some cases, you might want to go back to a previous version of the HoloLens software. You can do this by using the Windows Device Recovery Tool to reset your HoloLens to the earlier version.

> [!NOTE]
> Going back to an earlier version deletes your personal files and settings.

To go back to a previous version of HoloLens (1st gen), follow these steps:

1. Make sure that you don't have any phones or Windows devices plugged in to your PC.
1. On your PC, download the [Windows Device Recovery Tool (WDRT)](https://support.microsoft.com/help/12379).
1. Download the [HoloLens Anniversary Update recovery package](https://aka.ms/hololensrecovery).
1. When the downloads finish, open **File explorer** > **Downloads**. Right-click the zipped folder you just downloaded, and select **Extract all** > **Extract** to unzip it.
1. Connect your HoloLens to your PC using the micro-USB cable that it came with. (Even if you've been using other cables to connect your HoloLens, this one works best.)
1. The WDRT will automatically detect your HoloLens. Select the **Microsoft HoloLens** tile.
1. On the next screen, select **Manual package selection** and choose the installation file contained in the folder you unzipped in step 4. (Look for a file with the .ffu extension.)
1. Select **Install software**, and follow the instructions.

> [!NOTE]
> If the WDRT doesn't detect your HoloLens, try restarting your PC. If that doesn't work, select **My device was not detected**, select **Microsoft HoloLens**, and then follow the instructions.

## Related articles

- [Deploy updates using Windows Update for Business](https://docs.microsoft.com/windows/deployment/update/waas-manage-updates-wufb)
- [Assign devices to servicing channels for Windows 10 updates](https://docs.microsoft.com/windows/deployment/update/waas-servicing-channels-windows-10-updates)
- [Manage Windows 10 software updates in Intune](https://docs.microsoft.com/mem/intune/protect/windows-update-for-business-configure)

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

## Automate update management

Windows Holographic for Business can use [Windows Update for Business](https://docs.microsoft.com/windows/deployment/update/waas-manage-updates-wufb) to manage updates. All HoloLens 2 devices use Windows Holographic for Business. If you have HoloLens (1st gen) devices, you have to [upgrade them to Windows Holographic for Business (build 10.0.18362.1042 or a later build)](hololens1-upgrade-enterprise.md) to manage their updates.

Windows Update for Business connects HoloLens devices directly to the Windows Update service. You can use Mobile Device Management (MDM) solutions such as Microsoft Intune to configure the Windows Update for Business settings that control how and when HoloLens devices are updated. You can configure these settings by using enterprise Group Policy or by using policies in a Mobile Device Management (MDM) solution such as [Microsoft Intune](https://docs.microsoft.com/intune/protect/windows-update-for-business-configure).

By using Windows Update for Business, you can control multiple aspects of the update process: which devices get which updates at what time. For example, you can roll out updates to a subset of devices for testing, then roll out updates to the remaining devices at a later date. 


For information about the specific policies that you can configure, see [Reference: Group policies that manage HoloLens updates](#reference).




Specifically, Windows Update for Business allows for control over update offering and experience to allow for reliability and performance testing on a subset of systems before rolling out updates across the organization as well as a positive update experience for those within your organization.


Utilizing Windows Update for Business, you can control which types of Windows Updates are offered to devices in your ecosystem, when updates are applied, and deploy to devices in your organization in waves.

Windows Update for Business provides management policies for several types of updates to Windows 10 devices:

* **Feature updates** Previously referred to as upgrades, feature updates contain not only security and quality revisions, but also significant feature additions and changes. They are released semi-annually in the fall and in the spring.
* **Quality updates**. These are traditional operating system updates, typically released the second Tuesday of each month (though they can be released at any time). These include security and critical updates.

## <a name="reference">Reference: Group policies that manage HoloLens updates

To configure how and when updates are applied, use the following policies:

* [Update/AllowAutoUpdate](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-allowautoupdate)
* [Update/ScheduledInstallDay](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduledinstallday)
* [Update/ScheduledInstallTime](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduledinstalltime)

To turn off the automatic check for updates, set the following policy to value **5** – Turn off Automatic Updates:

* [Update/AllowAutoUpdate](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-allowautoupdate)

In Microsoft Intune, you can use **Automatic Update Behavior** to change this policy. (See [Manage software updates in Microsoft Intune](https://docs.microsoft.com/intune/windows-update-for-business-configure))

For devices on Windows 10, version 1607 only: You can use the following update policies to configure devices and get updates from the Windows Server Update Service (WSUS), instead of Windows Update:

* [Update/AllowUpdateService](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-allowupdateservice)
* [Update/RequireUpdateApproval](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-requireupdateapproval)
* [Update/UpdateServiceUrl](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-updateserviceurl)

For more information about using policies to manage HoloLens, see the following articles:

* [Policies supported by HoloLens 2](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#policies-supported-by-hololens-2)
* [Policies supported by Windows Holographic for Business](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#a-href-idhololenspoliciesapolicies-supported-by-windows-holographic-for-business)
* [Manage software updates in Microsoft Intune](https://docs.microsoft.com/intune/windows-update-for-business-configure)


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

* [Assign devices to servicing channels for Windows 10 updates](https://docs.microsoft.com/windows/deployment/update/waas-servicing-channels-windows-10-updates)
* [Manage Windows 10 software updates in Intune](https://docs.microsoft.com/mem/intune/protect/windows-update-for-business-configure)

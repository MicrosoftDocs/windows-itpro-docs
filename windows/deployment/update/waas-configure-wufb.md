---
title: Configure Windows Update for Business (Windows 10)
ms.reviewer: 
manager: laurawi
description: You can use Group Policy or your mobile device management (MDM) service to configure Windows Update for Business settings for your devices.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.localizationpriority: medium
ms.author: greglin
ms.topic: article
---

# Configure Windows Update for Business


**Applies to**

- Windows 10
- Windows 10 Mobile
- Windows Server 2016
- Windows Server 2019

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 


You can use Group Policy or your mobile device management (MDM) service to configure Windows Update for Business settings for your devices. The sections in this topic provide the Group Policy and MDM policies for Windows 10, version 1511 and above. The MDM policies use the OMA-URI setting from the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx).  

>[!IMPORTANT]
>For Windows Update for Business policies to be honored, the diagnostic data level of the device must be set to **1 (Basic)** or higher. If it is set to **0 (Security)**, Windows Update for Business policies will have no effect. For instructions, see [Configure the operating system diagnostic data level](https://docs.microsoft.com/windows/configuration/configure-windows-diagnostic-data-in-your-organization#diagnostic-data-levels).

Some Windows Update for Business policies are not applicable or behave differently for devices running Windows 10 Mobile Enterprise. Specifically, policies pertaining to Feature Updates will not be applied to Windows 10 Mobile Enterprise. All Windows 10 Mobile updates are recognized as Quality Updates, and can only be deferred or paused using the Quality Update policy settings. Additional information is provided in this topic and in [Deploy updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile](waas-mobile-updates.md).

## Start by grouping devices

By grouping devices with similar deferral periods, administrators are able to cluster devices into deployment or validation groups which can be as a quality control measure as updates are deployed in Windows 10.  With deferral windows and the ability to pause updates, administrators can effectively control and measure update deployments, updating a small pool of devices first to verify quality, prior to a broader roll-out to their organization. For more information, see [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md).  

>[!TIP]
>In addition to setting up multiple rings for your update deployments, also incorporate devices enrolled in the Windows Insider Program as part of your deployment strategy. This will provide you the chance to not only evaluate new features before they are broadly available to the public, but it also increases the lead time to provide feedback and influence Microsoft’s design on functional aspects of the product. For more information on Windows Insider program, see [https://insider.windows.com/](https://insider.windows.com/). 

<span id="configure-devices-for-current-branch-or-current-branch-for-business"/>


## Configure devices for the appropriate service channel

With Windows Update for Business, you can set a device to be on either Windows Insider Preview or the Semi-Annual Channel servicing branch. For more information on this servicing model, see [Windows 10 servicing options](waas-overview.md#servicing-channels). 

**Release branch policies**

| Policy | Sets registry key under **HKLM\Software** |
| --- | --- |
| GPO for Windows 10, version 1607 or later: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > Defer Windows Updates > **Select when Feature Updates are received** | \Policies\Microsoft\Windows\WindowsUpdate\BranchReadinessLevel |
| GPO for Windows 10, version 1511: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > **Defer Upgrades and Updates** | \Policies\Microsoft\Windows\WindowsUpdate\DeferUpgrade |
| MDM for Windows 10, version 1607 or later: </br>../Vendor/MSFT/Policy/Config/Update/</br>**BranchReadinessLevel** | \Microsoft\PolicyManager\default\Update\BranchReadinessLevel |
| MDM for Windows 10, version 1511: </br>../Vendor/MSFT/Policy/Config/Update/</br>**RequireDeferUpgrade** | \Microsoft\PolicyManager\default\Update\RequireDeferUpgrade |

Starting with Windows 10, version 1703, users can configure the branch readiness level for their device by using **Settings > Update & security > Windows Update > Advanced options**.

![Branch readiness level setting](images/waas-wufb-settings-branch.jpg)

>[!NOTE]
>Users will not be able to change this setting if it was configured by policy.


## Configure when devices receive feature updates

After you configure the servicing branch (Windows Insider Preview or Semi-Annual Channel), you can then define if, and for how long, you would like to defer receiving Feature Updates following their availability from Microsoft on Windows Update. You can defer receiving these Feature Updates for a period of up to 365 days from their release by setting the `DeferFeatureUpdatesPeriodinDays` value.  

For example, a device on the Semi-Annual Channel with `DeferFeatureUpdatesPeriodinDays=30` will not install a feature update that is first publicly available on Windows Update in September until 30 days later, in October.


</br></br>
**Policy settings for deferring feature updates**

| Policy | Sets registry key under **HKLM\Software** |
| --- | --- |
| GPO for Windows 10, version 1607 later: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > Defer Windows Updates > **Select when Feature Updates are received** | \Policies\Microsoft\Windows\WindowsUpdate\DeferFeatureUpdates</br>\Policies\Microsoft\Windows\WindowsUpdate\DeferFeatureUpdatesPeriodInDays |
| GPO for Windows 10, version 1511: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > **Defer Upgrades and Updates** | \Policies\Microsoft\Windows\WindowsUpdate\DeferUpgradePeriod |
| MDM for Windows 10, version 1607 and later: </br>../Vendor/MSFT/Policy/Config/Update/</br>**DeferFeatureUpdatesPeriodInDays** | \Microsoft\PolicyManager\default\Update\DeferFeatureUpdatesPeriodInDays |
| MDM for Windows 10, version 1511: </br>../Vendor/MSFT/Policy/Config/Update/</br>**DeferUpgrade** | \Microsoft\PolicyManager\default\Update\RequireDeferUpgrade |

>[!NOTE]
>If not configured by policy, individual users can defer feature updates by using **Settings > Update & security > Windows Update > Advanced options**.

## Pause feature updates

You can also pause a device from receiving Feature Updates by a period of up to 35 days from when the value is set. After 35 days has passed, the pause setting will automatically expire and the device will scan Windows Update for applicable Feature Updates. Following this scan, you can then pause Feature Updates for the device again.

Starting with Windows 10, version 1703, when you configure a pause by using policy, you must set a start date for the pause to begin. The pause period is calculated by adding 35 days to this start date. 

In cases where the pause policy is first applied after the configured start date has passed, you can extend the pause period up to a total of 35 days by configuring a later start date.

>[!IMPORTANT]
>
>In Windows 10, version 1703 and later versions, you can pause feature updates to 35 days, similar to the number of days for quality updates.

**Policy settings for pausing feature updates**

| Policy | Sets registry key under **HKLM\Software** |
| --- | --- |
| GPO for Windows 10, version 1607 and later: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > Defer Windows Updates > **Select when Feature Updates are received** | **1607:** \Policies\Microsoft\Windows\WindowsUpdate\PauseFeatureUpdates</br>**1703 and later:** \Policies\Microsoft\Windows\WindowsUpdate\PauseFeatureUpdatesStartDate |
| GPO for Windows 10, version 1511: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > **Defer Upgrades and Updates** | \Policies\Microsoft\Windows\WindowsUpdate\Pause |
| MDM for Windows 10, version 1607 and later: </br>../Vendor/MSFT/Policy/Config/Update/</br>**PauseFeatureUpdates** | **1607:** \Microsoft\PolicyManager\default\Update\PauseFeatureUpdates</br> **1703 and later:** \Microsoft\PolicyManager\default\Update\PauseFeatureUpdatesStartDate |
| MDM for Windows 10, version 1511: </br>../Vendor/MSFT/Policy/Config/Update/</br>**DeferUpgrade** | \Microsoft\PolicyManager\default\Update\Pause |

You can check the date that Feature Updates were paused by checking the registry key **PausedFeatureDate** under **HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\Settings**. 

The local group policy editor (GPEdit.msc) will not reflect whether the Feature Update pause period has expired. Although the device will resume Feature Updates after 35 days automatically, the pause checkbox will remain selected in the policy editor. To check whether a device has automatically resumed taking Feature Updates, check the status registry key **PausedFeatureStatus** under **HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\Settings** for the following values:

| Value | Status|
| --- | --- |
| 0 | Feature Updates not paused |
| 1 | Feature Updates paused |
| 2 | Feature Updates have auto-resumed after being paused |

>[!NOTE]
>If not configured by policy, individual users can pause feature updates by using **Settings > Update & security > Windows Update > Advanced options**.

Starting with Windows 10, version 1703, using Settings to control the pause behavior provides a more consistent experience, specifically:
- Any active restart notification are cleared or closed.
- Any pending restarts are canceled.
- Any pending update installations are canceled.
- Any update installation running when pause is activated will attempt to roll back.

## Configure when devices receive Quality Updates

Quality Updates are typically published on the first Tuesday of every month, although they can be released at any time. You can define if, and for how long, you would like to defer receiving Quality Updates following their availability. You can defer receiving these Quality Updates for a period of up to 35 days from their release by setting the **DeferQualityUpdatesPeriodinDays** value.  

You can set your system to receive updates for other Microsoft products—known as Microsoft Updates (such as Microsoft Office, Visual Studio)—along with Windows Updates by setting the **AllowMUUpdateService** policy. When you do this, these Microsoft Updates will follow the same deferral and pause rules as all other Quality Updates.

>[!IMPORTANT]
>This policy defers both Feature and Quality Updates on Windows 10 Mobile Enterprise.

**Policy settings for deferring quality updates**

| Policy | Sets registry key under **HKLM\Software** |
| --- | --- |
| GPO for Windows 10, version 1607 and later: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > Defer Windows Updates > **Select when Quality Updates are received** | \Policies\Microsoft\Windows\WindowsUpdate\DeferQualityUpdates</br>\Policies\Microsoft\Windows\WindowsUpdate\DeferQualityUpdatesPeriodInDays  |
| GPO for Windows 10, version 1511: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > **Defer Upgrades and Updates** | \Policies\Microsoft\Windows\WindowsUpdate\DeferUpdatePeriod |
| MDM for Windows 10, version 1607 and later: </br>../Vendor/MSFT/Policy/Config/Update/</br>**DeferQualityUpdatesPeriodInDays** | \Microsoft\PolicyManager\default\Update\DeferQualityUpdatesPeriodInDays |
| MDM for Windows 10, version 1511: </br>../Vendor/MSFT/Policy/Config/Update/</br>**DeferUpgrade** | \Microsoft\PolicyManager\default\Update\RequireDeferUpdate  |

>[!NOTE]
>If not configured by policy, individual users can defer quality updates by using **Settings > Update & security > Windows Update > Advanced options**.

## Pause quality updates

You can also pause a system from receiving Quality Updates for a period of up to 35 days from when the value is set.   After 35 days has passed, the pause setting will automatically expire and the device will scan Windows Update for applicable quality Updates. Following this scan, you can then pause quality Updates for the device again.

Starting with Windows 10, version 1703, when you configure a pause by using policy, you must set a start date for the pause to begin. The pause period is calculated by adding 35 days to this start date. 

In cases where the pause policy is first applied after the configured start date has passed, you can extend the pause period up to a total of 35 days by configuring a later start date.

>[!NOTE]
>Starting with Windows 10, version 1809, IT administrators can prevent individual users from pausing updates.

**Policy settings for pausing quality updates**

| Policy | Sets registry key under **HKLM\Software** |
| --- | --- |
| GPO for Windows 10, version 1607 and later: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > Defer Windows Updates > **Select when Quality Updates are received** |**1607:** \Policies\Microsoft\Windows\WindowsUpdate\PauseQualityUpdates</br>**1703:** \Policies\Microsoft\Windows\WindowsUpdate\PauseQualityUpdatesStartTime  |
| GPO for Windows 10, version 1511: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > **Defer Upgrades and Updates** | \Policies\Microsoft\Windows\WindowsUpdate\Pause |
| MDM for Windows 10, version 1607 and later: </br>../Vendor/MSFT/Policy/Config/Update/</br>**PauseQualityUpdates** | **1607:** \Microsoft\PolicyManager\default\Update\PauseQualityUpdates</br>**1703:** \Microsoft\PolicyManager\default\Update\PauseQualityUpdatesStartTime |
| MDM for Windows 10, version 1511: </br>../Vendor/MSFT/Policy/Config/Update/</br>**DeferUpgrade** | \Microsoft\PolicyManager\default\Update\Pause |

You can check the date that quality Updates were paused by checking the registry key **PausedQualityDate** under **HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\Settings**. 

The local group policy editor (GPEdit.msc) will not reflect whether the quality Update pause period has expired. Although the device will resume quality Updates after 35 days automatically, the pause checkbox will remain selected in the policy editor. To check whether a device has automatically resumed taking quality Updates, check the status registry key **PausedQualityStatus** under **HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\Settings** for the following values:

| Value | Status|
| --- | --- |
| 0 | Quality Updates not paused |
| 1 | Quality Updates paused |
| 2 | Quality Updates have auto-resumed after being paused |

>[!NOTE]
>If not configured by policy, individual users can pause quality updates by using **Settings > Update & security > Windows Update > Advanced options**.

Starting with Windows 10, version 1703, using Settings to control the pause behavior provides a more consistent experience, specifically:
- Any active restart notification are cleared or closed
- Any pending restarts are canceled
- Any pending update installations are canceled
- Any update installation running when pause is activated will attempt to rollback

## Configure when devices receive Windows Insider Preview builds

Starting with Windows 10, version 1709, you can set policies to manage preview builds and their delivery:

The **Manage preview builds** setting gives administrators control over enabling or disabling preview build installation on a device. You can also decide to stop preview builds once the release is public.
* Group Policy: **Computer Configuration/Administrative Templates/Windows Components/Windows Update/Windows Update for Business** - *Manage preview builds*
* MDM: **Update/ManagePreviewBuilds**
* System Center Configuration Manager: **Enable dual scan, manage through Windows Update for Business policy**

>[!IMPORTANT]
>This policy replaces the "Toggle user control over Insider builds" policy under that is only supported up to Windows 10, version 1703. You can find the older policy here:
>* Group Policy: **Computer Configuration/Administrative Templates/Windows Components/Data Collection and Preview Builds/Toggle user control over Insider builds**
>* MDM: **System/AllowBuildPreview**

The policy settings to **Select when Feature Updates are received** allows you to choose between preview flight rings, and allows you to defer or pause their delivery.
* Group Policy: **Computer Configuration/Administrative Templates/Windows Components/Windows Update/ Windows Update for Business** - *Select when Preview Builds and Feature Updates are received*
* MDM: **Update/BranchReadinessLevel**

## Exclude drivers from Quality Updates

Starting with Windows 10, version 1607, you can selectively opt out of receiving driver update packages as part of your normal quality update cycle. This policy will not apply to updates to drivers provided with the operating system (which will be packaged within a security or critical update) or to Feature Updates, where drivers might be dynamically installed to ensure the Feature Update process can complete.

**Policy settings to exclude drivers**

| Policy | Sets registry key under **HKLM\Software** |
| --- | --- |
| GPO for Windows 10, version 1607 and later: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > **Do not include drivers with Windows Updates** | \Policies\Microsoft\Windows\WindowsUpdate\ExcludeWUDriversInQualityUpdate  |
| MDM for Windows 10, version 1607 and later: </br>../Vendor/MSFT/Policy/Config/Update/</br>**ExcludeWUDriversInQualityUpdate** | \Microsoft\PolicyManager\default\Update\ExcludeWUDriversInQualityUpdate |

## Summary: MDM and Group Policy settings for Windows 10, version 1703 and later

The following are quick-reference tables of the supported policy values for Windows Update for Business in Windows 10, version 1607 and later.

**GPO: HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate**

| GPO Key |	Key type | Value |
| --- | --- | --- |
| BranchReadinessLevel	| REG_DWORD | 16: systems take Feature Updates for the Current Branch (CB)</br>32: systems take Feature Updates for the Current Branch for Business (CBB)</br>Note: Other value or absent: receive all applicable updates (CB) |
| DeferQualityUpdates | REG_DWORD | 1: defer quality updates</br>Other value or absent: don’t defer quality updates | 
| DeferQualityUpdatesPeriodinDays | REG_DWORD | 0-35: defer quality updates by given days |
| PauseQualityUpdatesStartDate | REG_DWORD | 1: pause quality updates</br>Other value or absent: don’t pause quality updates |
|DeferFeatureUpdates | REG_DWORD | 1: defer feature updates</br>Other value or absent: don’t defer feature updates |
| DeferFeatureUpdatesPeriodinDays | REG_DWORD | 0-365: defer feature updates by given days |
| PauseFeatureUpdatesStartDate | REG_DWORD |1: pause feature updates</br>Other value or absent: don’t pause feature updates |
| ExcludeWUDriversInQualityUpdate | REG_DWORD | 1: exclude Windows Update drivers</br>Other value or absent: offer Windows Update drivers |


**MDM: HKEY_LOCAL_MACHINE\Software\Microsoft\PolicyManager\default\Update**

| MDM Key | Key type | Value |
| --- | --- | --- |
| BranchReadinessLevel | REG_DWORD | 16: systems take Feature Updates for the Current Branch (CB)</br>32: systems take Feature Updates for the Current Branch for Business (CBB)</br>Note: Other value or absent: receive all applicable updates (CB) |
| DeferQualityUpdatesPeriodinDays | REG_DWORD | 0-35: defer quality updates by given days |
| PauseQualityUpdatesStartDate | REG_DWORD | 1: pause quality updates</br>Other value or absent: don’t pause quality updates |
| DeferFeatureUpdatesPeriodinDays | REG_DWORD | 0-365: defer feature updates by given days |
| PauseFeatureUpdatesStartDate | REG_DWORD | 1: pause feature updates</br>Other value or absent: don’t pause feature updates |
| ExcludeWUDriversinQualityUpdate | REG_DWORD | 1: exclude Windows Update drivers</br>Other value or absent: offer Windows Update drivers |

## Update devices to newer versions

Due to the changes in Windows Update for Business, Windows 10, version 1607 uses different GPO and MDM keys than those available in version 1511. Windows 10, version 1703 also uses a few GPO and MDM keys that are different from those available in version 1607. However, Windows Update for Business devices running older versions will still see their policies honored after they update to a newer version; the old policy keys will continue to exist with their values ported forward during the update. Following the update to a newer version, only the old keys will be populated and not the new version keys, until the newer keys are explicitly defined on the device by the administrator.

### How older version policies are respected on newer versions

When a device running a newer version sees an update available on Windows Update, the device first evaluates and executes the Windows Updates for Business policy keys for its current (newer) version. If these are not present, it then checks whether any of the older version keys are set and defer accordingly. Update keys for newer versions will always supersede the older equivalent.


### Comparing keys in Windows 10, version 1607 to Windows 10, version 1703

| Version 1607 key | Version 1703 key |
| --- | --- |
| PauseFeatureUpdates | PauseFeatureUpdatesStartTime |
| PauseQualityUpdates | PauseQualityUpdatesStartTime |

## Related topics

- [Update Windows 10 in the enterprise](index.md)
- [Overview of Windows as a service](waas-overview.md)
- [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md)
- [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md)
- [Assign devices to servicing channels for Windows 10 updates](waas-servicing-channels-windows-10-updates.md)
- [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md)
- [Configure Delivery Optimization for Windows 10 updates](waas-delivery-optimization.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md)
- [Deploy updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile](waas-mobile-updates.md) 
- [Deploy updates using Windows Update for Business](waas-manage-updates-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](waas-wufb-intune.md)
- [Deploy Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)
- [Deploy Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md)
- [Manage device restarts after updates](waas-restart.md)

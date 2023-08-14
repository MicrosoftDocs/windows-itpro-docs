---
title: Configure Windows Update for Business
manager: aaroncz
description: You can use Group Policy or your mobile device management (MDM) service to configure Windows Update for Business settings for your devices.
ms.prod: windows-client
author: mestew
ms.localizationpriority: medium
ms.author: mstewart
ms.topic: article
ms.technology: itpro-updates
ms.date: 08/22/2023
---

# Configure Windows Update for Business


**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016
- Windows Server 2019
- Windows Server 2022

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 

> [!NOTE]
> Windows Server _doesn't_ get feature updates from Windows Update, so only the quality update policies apply. This behavior doesn't apply to [Azure Stack hyperconverged infrastructure (HCI)](/azure-stack/hci/).
 
You can use Group Policy or your mobile device management (MDM) service to configure Windows Update for Business settings for your devices. The sections in this article provide the Group Policy and MDM policies for Windows 10, version 1511 and later, including Windows 11. The MDM policies use the OMA-URI setting from the [Policy CSP](/windows/client-management/mdm/policy-configuration-service-provider).  

> [!IMPORTANT]
> Beginning with Windows 10, version 1903, organizations can use Windows Update for Business policies, regardless of the diagnostic data level chosen. If the diagnostic data level is set to **0 (Security)**, Windows Update for Business policies will still be honored. For instructions, see [Configure the operating system diagnostic data level](/windows/configuration/configure-windows-diagnostic-data-in-your-organization#diagnostic-data-levels).


## Start by grouping devices

By grouping devices with similar deferral periods, administrators are able to cluster devices into deployment or validation groups, which can be as a quality control measure as updates are deployed.  With deferral windows and the ability to pause updates, administrators can effectively control and measure update deployments, updating a small pool of devices first to verify quality, prior to a broader roll-out to their organization.  

>[!TIP]
>In addition to setting up multiple rings for your update deployments, also incorporate devices enrolled in the Windows Insider Program as part of your deployment strategy. This will provide you the chance to not only evaluate new features before they are broadly available to the public, but it also increases the lead time to provide feedback and influence Microsoft’s design on functional aspects of the product. For more information on Windows Insider program, see [https://insider.windows.com/](https://insider.windows.com/). 

<span id="configure-devices-for-current-branch-or-current-branch-for-business"/>


## Configure devices for the appropriate service channel

With Windows Update for Business, you can set a device to be on either Windows Insider Preview or the General Availability Channel servicing branch. For more information on this servicing model, see [Servicing channels](waas-overview.md#servicing-channels). 

**Release branch policies**

| Policy | Sets registry key under HKLM\Software |
| --- | --- |
| GPO for Windows 10, version 1607 or later: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update >  Windows Update for Business > **Select when feature updates are received** | \Policies\Microsoft\Windows\WindowsUpdate\BranchReadinessLevel |
| GPO for Windows 10, version 1511: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > **Defer Upgrades and Updates** | \Policies\Microsoft\Windows\WindowsUpdate\DeferUpgrade |
| MDM for Windows 10, version 1607 or later: </br>../Vendor/MSFT/Policy/Config/Update/</br>**BranchReadinessLevel** | \Microsoft\PolicyManager\default\Update\BranchReadinessLevel |
| MDM for Windows 10, version 1511: </br>../Vendor/MSFT/Policy/Config/Update/</br>**RequireDeferUpgrade** | \Microsoft\PolicyManager\default\Update\RequireDeferUpgrade |

Starting with Windows 10, version 1703, users can configure the branch readiness level for their device by using **Settings > Update & security > Windows Update > Advanced options**.

![Branch readiness level setting.](images/waas-wufb-settings-branch.jpg)

>[!NOTE]
>Users will not be able to change this setting if it was configured by policy.


## Configure when devices receive feature updates

After you configure the servicing branch (Windows Insider Preview or General Availability Channel), you can then define if, and for how long, you would like to defer receiving feature updates following their availability from Microsoft on Windows Update. You can defer receiving these feature updates for a period of up to 365 days from their release by setting the `DeferFeatureUpdatesPeriodinDays` value.  

For example, a device on the General Availability Channel with `DeferFeatureUpdatesPeriodinDays=30` won't install a feature update that is first publicly available on Windows Update in September until 30 days later, in October.


</br></br>
**Policy settings for deferring feature updates**

| Policy | Sets registry key under HKLM\Software |
| --- | --- |
| GPO for Windows 10, version 1607 or later: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update >  Windows Update for Business > **Select when feature updates are received** | \Policies\Microsoft\Windows\WindowsUpdate\DeferFeatureUpdates</br>\Policies\Microsoft\Windows\WindowsUpdate\DeferFeatureUpdatesPeriodInDays |
| GPO for Windows 10, version 1511: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > **Defer Upgrades and Updates** | \Policies\Microsoft\Windows\WindowsUpdate\DeferUpgradePeriod |
| MDM for Windows 10, version 1607 and later: </br>../Vendor/MSFT/Policy/Config/Update/</br>**DeferFeatureUpdatesPeriodInDays** | \Microsoft\PolicyManager\default\Update\DeferFeatureUpdatesPeriodInDays |
| MDM for Windows 10, version 1511: </br>../Vendor/MSFT/Policy/Config/Update/</br>**DeferUpgrade** | \Microsoft\PolicyManager\default\Update\RequireDeferUpgrade |

>[!NOTE]
>If not configured by policy, individual users can defer feature updates by using **Settings > Update & security > Windows Update > Advanced options**.

## Pause feature updates

You can also pause a device from receiving feature updates by a period of up to 35 days from when the value is set. After 35 days have passed, the pause setting will automatically expire and the device will scan Windows Update for applicable feature updates. Following this scan, you can then pause feature updates for the device again.

Starting with Windows 10, version 1703, when you configure a pause by using policy, you must set a start date for the pause to begin. The pause period is calculated by adding 35 days to this start date. 

In cases where the pause policy is first applied after the configured start date has passed, you can extend the pause period up to a total of 35 days by configuring a later start date.

>[!IMPORTANT]
>
>In Windows 10, version 1703 and later versions, you can pause feature updates to 35 days, similar to the number of days for quality updates.

**Policy settings for pausing feature updates**

| Policy | Sets registry key under HKLM\Software |
| --- | --- |
| GPO for Windows 10, version 1607 or later: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update >  Windows Update for Business > **Select when feature updates are received** | **1607:** \Policies\Microsoft\Windows\WindowsUpdate\PauseFeatureUpdates</br>**1703 and later:** \Policies\Microsoft\Windows\WindowsUpdate\PauseFeatureUpdatesStartTime |
| GPO for Windows 10, version 1511: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > **Defer Upgrades and Updates** | \Policies\Microsoft\Windows\WindowsUpdate\Pause |
| MDM for Windows 10, version 1607 or later: </br>../Vendor/MSFT/Policy/Config/Update/</br>**PauseFeatureUpdates** | **1607:** \Microsoft\PolicyManager\default\Update\PauseFeatureUpdates</br> **1703 and later:** \Microsoft\PolicyManager\default\Update\PauseFeatureUpdatesStartTime |
| MDM for Windows 10, version 1511: </br>../Vendor/MSFT/Policy/Config/Update/</br>**DeferUpgrade** | \Microsoft\PolicyManager\default\Update\Pause |

You can check the date that feature updates were paused by checking the registry key **PausedFeatureDate** under **HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\Settings**. 

The local group policy editor (GPEdit.msc) won't reflect whether the feature update pause period has expired. Although the device will resume feature updates after 35 days automatically, the pause check box will remain selected in the policy editor. To check whether a device has automatically resumed taking feature updates, check the status registry key **PausedFeatureStatus** under **HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\Settings** for the following values:

| Value | Status|
| --- | --- |
| 0 | feature updates not paused |
| 1 | feature updates paused |
| 2 | feature updates have auto-resumed after being paused |

>[!NOTE]
>If not configured by policy, individual users can pause feature updates by using **Settings > Update & security > Windows Update > Advanced options**.

Starting with Windows 10, version 1703, using Settings to control the pause behavior provides a more consistent experience, specifically:
- Any active restart notifications are cleared or closed.
- Any pending restarts are canceled.
- Any pending update installations are canceled.
- Any update installation running when pause is activated will attempt to roll back.

## Configure when devices receive quality updates

Quality updates are typically published on the second Tuesday of every month, although they can be released at any time. You can define if, and for how long, you would like to defer receiving quality updates following their availability. You can defer receiving these quality updates for a period of up to 30 days from their release by setting the **DeferQualityUpdatesPeriodinDays** value.  

You can set your system to receive updates for other Microsoft products—known as Microsoft updates (such as Microsoft Office, Visual Studio)—along with Windows updates by setting the **AllowMUUpdateService** policy. When you do this, these Microsoft updates will follow the same deferral and pause rules as all other quality updates.

**Policy settings for deferring quality updates**

| Policy | Sets registry key under HKLM\Software |
| --- | --- |
| GPO for Windows 10, version 1607 or later: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update >  Windows Update for Business > **Select when Quality Updates are received** | \Policies\Microsoft\Windows\WindowsUpdate\DeferQualityUpdates</br>\Policies\Microsoft\Windows\WindowsUpdate\DeferQualityUpdatesPeriodInDays  |
| GPO for Windows 10, version 1511: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > **Defer Upgrades and Updates** | \Policies\Microsoft\Windows\WindowsUpdate\DeferUpdatePeriod |
| MDM for Windows 10, version 1607 or later: </br>../Vendor/MSFT/Policy/Config/Update/</br>**DeferQualityUpdatesPeriodInDays** | \Microsoft\PolicyManager\default\Update\DeferQualityUpdatesPeriodInDays |
| MDM for Windows 10, version 1511: </br>../Vendor/MSFT/Policy/Config/Update/</br>**DeferUpgrade** | \Microsoft\PolicyManager\default\Update\RequireDeferUpdate  |

>[!NOTE]
>If not configured by policy, individual users can defer quality updates by using **Settings > Update & security > Windows Update > Advanced options**.

## Pause quality updates

You can also pause a system from receiving quality updates for a period of up to 35 days from when the value is set. After 35 days have passed, the pause setting will automatically expire and the device will scan Windows Update for applicable quality updates. Following this scan, you can then pause quality updates for the device again.

Starting with Windows 10, version 1703, when you configure a pause by using policy, you must set a start date for the pause to begin. The pause period is calculated by adding 35 days to this start date. 

In cases where the pause policy is first applied after the configured start date has passed, you can extend the pause period up to a total of 35 days by configuring a later start date.

>[!NOTE]
>Starting with Windows 10, version 1809, IT administrators can prevent individual users from pausing updates.

**Policy settings for pausing quality updates**

| Policy | Sets registry key under HKLM\Software |
| --- | --- |
| GPO for Windows 10, version 1607 or later: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update >  Windows Update for Business > **Select when Quality Updates are received** |**1607:** \Policies\Microsoft\Windows\WindowsUpdate\PauseQualityUpdates</br>**1703:** \Policies\Microsoft\Windows\WindowsUpdate\PauseQualityUpdatesStartTime  |
| GPO for Windows 10, version 1511: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > **Defer Upgrades and Updates** | \Policies\Microsoft\Windows\WindowsUpdate\Pause |
| MDM for Windows 10, version 1607 or later: </br>../Vendor/MSFT/Policy/Config/Update/</br>**PauseQualityUpdates** | **1607:** \Microsoft\PolicyManager\default\Update\PauseQualityUpdates</br>**1703:** \Microsoft\PolicyManager\default\Update\PauseQualityUpdatesStartTime |
| MDM for Windows 10, version 1511: </br>../Vendor/MSFT/Policy/Config/Update/</br>**DeferUpgrade** | \Microsoft\PolicyManager\default\Update\Pause |

You can check the date that quality updates were paused by checking the registry key **PausedQualityDate** under **HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\Settings**.

The local group policy editor (GPEdit.msc) won't reflect whether the quality update pause period has expired. Although the device will resume quality updates after 35 days automatically, the pause check box will remain selected in the policy editor. To check whether a device has automatically resumed taking quality Updates, check the status registry key **PausedQualityStatus** under **HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\Settings** for the following values:

| Value | Status|
| --- | --- |
| 0 | quality updates not paused |
| 1 | quality updates paused |
| 2 | quality updates have auto-resumed after being paused |

>[!NOTE]
>If not configured by policy, individual users can pause quality updates by using **Settings > Update & security > Windows Update > Advanced options**.

Starting with Windows 10, version 1703, using Settings to control the pause behavior provides a more consistent experience, specifically:
- Any active restart notifications are cleared or closed
- Any pending restarts are canceled
- Any pending update installations are canceled
- Any update installation running when pause is activated will attempt to roll back

## Configure when devices receive Windows Insider Preview builds

Starting with Windows 10, version 1709, you can set policies to manage preview builds and their delivery:

The **Manage preview builds** setting gives administrators control over enabling or disabling preview build installation on a device. You can also decide to stop preview builds once the release is public.
* Group Policy: **Computer Configuration/Administrative Templates/Windows Components/Windows Update/Windows Update for Business** - *Manage preview builds*
* MDM: **Update/ManagePreviewBuilds**
* Microsoft Configuration Manager: **Enable dual scan, manage through Windows Update for Business policy**

>[!IMPORTANT]
>This policy replaces the "Toggle user control over Insider builds" policy under that is only supported up to Windows 10, version 1703. You can find the older policy here:
>* Group Policy: **Computer Configuration/Administrative Templates/Windows Components/Data Collection and Preview Builds/Toggle user control over Insider builds**
>* MDM: **System/AllowBuildPreview**

The policy settings to **Select when feature updates are received** allows you to choose between preview flight rings, and allows you to defer or pause their delivery.
* Group Policy: **Computer Configuration/Administrative Templates/Windows Components/Windows Update/ Windows Update for Business** - *Select when Preview Builds and feature updates are received*
* MDM: **Update/BranchReadinessLevel**

## Exclude drivers from quality updates

Starting with Windows 10, version 1607, you can selectively opt out of receiving driver update packages as part of your normal quality update cycle. This policy won't apply to updates to drivers provided with the operating system (which will be packaged within a security or critical update) or to feature updates, where drivers might be dynamically installed to ensure the feature update process can complete.

**Policy settings to exclude drivers**

| Policy | Sets registry key under HKLM\Software |
| --- | --- |
| GPO for Windows 10, version 1607 or later: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > **Do not include drivers with Windows Updates** | \Policies\Microsoft\Windows\WindowsUpdate\ExcludeWUDriversInQualityUpdate  |
| MDM for Windows 10, version 1607 and later: </br>../Vendor/MSFT/Policy/Config/Update/</br>**ExcludeWUDriversInQualityUpdate** | \Microsoft\PolicyManager\default\Update\ExcludeWUDriversInQualityUpdate |

## Enable optional updates
<!--7991583-->
In addition to the monthly cumulative update, optional updates are available to provide new features and nonsecurity changes. Most optional updates are released on the fourth Tuesday of the month, known as optional nonsecurity preview releases. Optional updates can also include features that are gradually rolled out, known as controlled feature rollouts (CFRs). Installation of optional updates isn't enabled by default for devices that receive updates using Windows Update for Business. However, you can enable optional updates for devices by using the **Enable optional updates** policy.

To keep the timing of updates consistent, the **Enable optional updates** policy respects the [deferral period for quality updates](#configure-when-devices-receive-quality-updates). This policy allows you to choose if devices should receive CFRs in addition to the optional nonsecurity preview releases, or if the end-user can make the decision to install optional updates. This policy can change the behavior of the **Get the latest updates as soon as they're available** option in **Settings** > **Update & security** > ***Windows Update** > **Advanced options**. 

:::image type="content" source="media/7991583-update-seeker-enabled.png" alt-text="Screenshot of the Get the latest updates as soon as they're available option in the Windows updates page of Settings." lightbox="media/7991583-update-seeker-enabled.png":::

The following options are available for the policy:

- **Automatically receive optional updates (including CFRs)**:
   - The latest optional nonsecurity updates and CFRs are automatically installed on the device. The quality update deferral period is applied to the installation of these updates.
   - The **Get the latest updates as soon as they're available** option is selected and users can't change the setting.
   - Devices will receive CFRs in early phases of the rollout.

- **Automatically receive optional updates**:
   - The latest optional nonsecurity updates are automatically installed on the device but CFRs aren't. The quality update deferral period is applied to the installation of these updates.
   - The **Get the latest updates as soon as they're available** option isn't selected and users can't change the setting.

- **Users can select which optional updates to receive**:
   - Users can select which optional updates to install from **Settings** > **Update & security** > **Windows Update** > **Advanced options** > **Optional updates**.
     - Optional updates are offered to the device, but user interaction is required to install them unless the **Get the latest updates as soon as they're available** option is also enabled.  
     - CFRs are offered to the device, but not necessarily in the early phases of the rollout.
   - Users can enable the **Get the latest updates as soon as they're available** option in **Settings** > **Update & security** > ***Windows Update** > **Advanced options**. If the user enables the **Get the latest updates as soon as they're available**, then:
     - The device will receive CFRs in early phases of the rollout.
     - Optional updates are automatically installed on the device.

- **Not configured** (default):
  - Optional updates aren't installed on the device and the **Get the latest updates as soon as they're available** option is disabled.

**Policies to enable optional updates**

| Policy | Sets registry key under HKLM\Software |
| --- | --- |
| GPO for Windows 11, version 22H2 with [KBxxxxxxx](https://support.microsoft.com/en-us/topic/february-14-2023-kb5022845-os-build-22621-1265-90a807f4-d2e8-486e-8a43-d09e66319f38) and later: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > Manage updates offered from Windows Update > **Enable optional updates**| \Policies\Microsoft\Windows\WindowsUpdate\AllowOptionalContent |
| MDM for Windows 11, version 22H2 with [KBxxxxxxx](https://support.microsoft.com/en-us/topic/february-14-2023-kb5022845-os-build-22621-1265-90a807f4-d2e8-486e-8a43-d09e66319f38) and later: </br>./Device/Vendor/MSFT/Policy/Config/Update/</br>**[AllowOptionalContent](/windows/client-management/mdm/policy-csp-update?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#allowoptionalcontent)** | \Policies\Microsoft\Windows\WindowsUpdate\AllowOptionalContent |

## Enable features that are behind temporary enterprise feature control
<!--6544872-->

New features and enhancements are introduced through the monthly cumulative update to provide continuous innovation for Windows 11. To give organizations time to plan and prepare, some of these new features are temporarily turned off by default. Features that are turned off by default are listed in the KB article for the monthly cumulative update. Typically, a feature is selected to be off by default because it either impacts the user experience or IT administrators significantly. 

The features that are behind temporary enterprise feature control will be enabled in the next annual feature update. Organizations can choose to deploy feature updates at their own pace, to delay these features until they're ready for them. For a list of features that are turned off by default, see [Windows 11 features behind temporary enterprise control](/windows/whats-new/temporary-enterprise-feature-control).

**Policy settings to enable features that are behind temporary enterprise control**

| Policy | Sets registry key under HKLM\Software |
| --- | --- |
| GPO for Windows 11, version 22H2 with [KB5022845](https://support.microsoft.com/en-us/topic/february-14-2023-kb5022845-os-build-22621-1265-90a807f4-d2e8-486e-8a43-d09e66319f38) and later: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > Manage end user experience > **Enable features introduced via servicing that are off by default**| \Policies\Microsoft\Windows\WindowsUpdate\AllowTemporaryEnterpriseFeatureControl  |
| MDM for Windows 11, version 22H2 with [KB5022845](https://support.microsoft.com/en-us/topic/february-14-2023-kb5022845-os-build-22621-1265-90a807f4-d2e8-486e-8a43-d09e66319f38) and later: </br>./Device/Vendor/MSFT/Policy/Config/Update/</br>**[AllowTemporaryEnterpriseFeatureControl](/windows/client-management/mdm/policy-csp-update?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#allowtemporaryenterprisefeaturecontrol)** | \Microsoft\PolicyManager\default\Update\AllowTemporaryEnterpriseFeatureControl |


## Summary: MDM and Group Policy settings for Windows 10, version 1703 and later

The following are quick-reference tables of the supported policy values for Windows Update for Business in Windows 10, version 1607 and later.

**GPO: HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate**

| GPO Key |	Key type | Value |
| --- | --- | --- |
| AllowTemporaryEnterpriseFeatureControl </br> </br>*Added in Windows 11, version 22H2*| REG_DWORD | 1: Automatically receive optional updates (including CFRs)</br> 2: Automatically receive optional updates </br> 3: Users can select which optional updates to receive </br> Other value or absent: Don't receive optional updates|
| BranchReadinessLevel	| REG_DWORD | 2: Systems take feature updates for the Windows Insider build - Fast </br> 4: Systems take feature updates for the Windows Insider build - Slow </br> 8: Systems take feature updates for the Release Windows Insider build </br></br> Other value or absent: Receive all applicable updates |
| DeferFeatureUpdates | REG_DWORD | 1: Defer feature updates</br>Other value or absent: Don't defer feature updates |
| DeferFeatureUpdatesPeriodinDays | REG_DWORD | 0-365: Defer feature updates by given days |
| DeferQualityUpdates | REG_DWORD | 1: Defer quality updates</br>Other value or absent: Don't defer quality updates | 
| DeferQualityUpdatesPeriodinDays | REG_DWORD | 0-35: Defer quality updates by given days |
| ExcludeWUDriversInQualityUpdate | REG_DWORD | 1: Exclude Windows Update drivers</br>Other value or absent: Offer Windows Update drivers |
| PauseFeatureUpdatesStartTime | REG_DWORD |1: Pause feature updates</br>Other value or absent: Don't pause feature updates |
| PauseQualityUpdatesStartTime | REG_DWORD | 1: Pause quality updates</br>Other value or absent: Don't pause quality updates |


**MDM: HKEY_LOCAL_MACHINE\Software\Microsoft\PolicyManager\default\Update**

| MDM Key | Key type | Value |
| --- | --- | --- |
| AllowTemporaryEnterpriseFeatureControl </br> </br>*Added in Windows 11, version 22H2*| REG_DWORD | 1: Automatically receive optional updates (including CFRs)</br> 2: Automatically receive optional updates </br> 3: Users can select which optional updates to receive </br> Other value or absent: Don't receive optional updates|
| AllowTemporaryEnterpriseFeatureControl </br> </br>*Added in Windows 11, version 22H2*| REG_DWORD | 1: Allowed. All features in the latest monthly cumulative update are enabled.</br> Other value or absent: Features that are shipped turned off by default will remain off |
| BranchReadinessLevel | REG_DWORD |2: Systems take feature updates for the Windows Insider build - Fast </br> 4: Systems take feature updates for the Windows Insider build - Slow </br> 8: Systems take feature updates for the Release Windows Insider build  </br>32: Systems take feature updates from General Availability Channel </br>Note: Other value or absent: Receive all applicable updates |
| DeferFeatureUpdatesPeriodinDays | REG_DWORD | 0-365: Defer feature updates by given days |
| DeferQualityUpdatesPeriodinDays | REG_DWORD | 0-35: Defer quality updates by given days |
| ExcludeWUDriversinQualityUpdate | REG_DWORD | 1: Exclude Windows Update drivers</br>Other value or absent: Offer Windows Update drivers |
| PauseFeatureUpdatesStartTime | REG_DWORD | 1: Pause feature updates</br>Other value or absent: Don't pause feature updates |
| PauseQualityUpdatesStartTime | REG_DWORD | 1: Pause quality updates</br>Other value or absent: Don't pause quality updates |

## Update devices to newer versions

Due to the changes in Windows Update for Business, Windows 10, version 1607 uses different GPO and MDM keys than those available in version 1511. Windows 10, version 1703 also uses a few GPO and MDM keys that are different from those available in version 1607. However, Windows Update for Business devices running older versions will still see their policies honored after they update to a newer version; the old policy keys will continue to exist with their values ported forward during the update. Following the update to a newer version, only the old keys will be populated and not the new version keys, until the newer keys are explicitly defined on the device by the administrator.

### How older version policies are respected on newer versions

When a device running a newer version sees an update available on Windows Update, the device first evaluates and executes the Windows Updates for Business policy keys for its current (newer) version. If these aren't present, it then checks whether any of the older version keys are set and defer accordingly. Update keys for newer versions will always supersede the older equivalent.


### Comparing keys in Windows 10, version 1607 to Windows 10, version 1703

| Version 1607 key | Version 1703 key |
| --- | --- |
| PauseFeatureUpdates | PauseFeatureUpdatesStartTime |
| PauseQualityUpdates | PauseQualityUpdatesStartTime |

 
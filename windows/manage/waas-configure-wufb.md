---
title: Configure Windows Update for Business (Windows 10)
description: You can use Group Policy or your mobile device management (MDM) service to configure Windows Update for Business settings for your devices.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
localizationpriority: high
---

# Configure Windows Update for Business


**Applies to**

- Windows 10
- Windows 10 Mobile

You can use Group Policy or your mobile device management (MDM) service to configure Windows Update for Business settings for your devices. The sections in this topic provide the Group Policy and MDM policies for both Windows 10, version 1511, and Windows 10, version 1607. The MDM policies use the OMA-URI setting from the [Policy CSP](https://msdn.microsoft.com/en-us/library/windows/hardware/dn904962.aspx).  

>[!IMPORTANT]
>For Windows Update for Business policies to be honored, the Telemetry level of the device must be set to **1 (Basic)** or higher.  If it is set to **0 (Security)**, Windows Update for Business policies will have no effect. For instructions, see [Configure the operating system telemetry level](https://technet.microsoft.com/en-us/itpro/windows/manage/configure-windows-telemetry-in-your-organization#configure-the-operating-system-telemetry-level).

Configuration of Windows 10 Mobile devices is limited to the feature set pertaining to Quality Updates only.  That is, Windows Mobile Feature Updates are categorized the same as Quality Updates, and can only be deferred by setting the Quality Update deferral period, for a maximum period of 30 days.

## Start by grouping devices

By grouping devices with similar deferral periods, administrators are able to cluster devices into deployment or validation groups which can be as a quality control measure as updates are deployed in Windows 10.  With deferral windows and the ability to pause updates, administrators can effectively control and measure update deployments, updating a small pool of devices first to verify quality, prior to a broader roll-out to their organization. For more information, see [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md).  

>[!TIP]
>In addition to setting up multiple rings for your update deployments, also incorporate devices enrolled in the Windows Insider Program as part of your deployment strategy. This will provide you the chance to not only evaluate new features before they are broadly available to the public, but it also increases the lead time to provide feedback and influence Microsoft’s design on functional aspects of the product. For more information on Windows Insider program, see [https://insider.windows.com/](https://insider.windows.com/). 


## Configure devices for Current Branch (CB) or Current Branch for Business (CBB)

With Windows Update for Business, you can set a device to be on either the Current Branch (CB) or the Current Branch for Business (CBB) servicing branch. For more information on this servicing model, see [Windows 10 servicing options](https://technet.microsoft.com/en-us/itpro/windows/manage/introduction-to-windows-10-servicing). 

**Release branch policies**

| Policy | Sets registry key under **HKLM\Software** |
| --- | --- |
| GPO for version 1607: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > Defer Windows Updates > **Select when Feature Updates are received** | \Policies\Microsoft\Windows\WindowsUpdate\BranchReadinessLevel |
| GPO for version 1511: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > **Defer Upgrades and Updates** | \Policies\Microsoft\Windows\WindowsUpdate\DeferUpgrade |
| MDM for version 1607: </br>../Vendor/MSFT/Policy/Config/Update/</br>**BranchReadinessLevel** | \Microsoft\PolicyManager\default\Update\BranchReadinessLevel |
| MDM for version 1511: </br>../Vendor/MSFT/Policy/Config/Update/</br>**RequireDeferredUpgrade** | \Microsoft\PolicyManager\default\Update\RequireDeferUpgrade |


## Configure when devices receive Feature Updates

After you configure the servicing branch (CB or CBB), you can then define if, and for how long, you would like to defer receiving Feature Updates following their availability from Microsoft on Windows Update.  You can defer receiving these Feature Updates for a period of 180 days from their release by setting the `DeferFeatureUpdatesPeriodinDays` value.  

**Examples**

| Settings | Scenario and behavior |
| --- | --- |
| Device is on CB</br>DeferFeatureUpdatesPeriodinDays=30 | Feature Update X is first publically available on Windows Update as a CB in January. Device will not receive update until February, 30 days later. |
| Device is on CBB</br>DeferFeatureUpdatesPeriodinDays=30 | Feature Update X is first publically available on Windows Update as a CB in January. Four months later, in April, Feature Update X is released to CBB. Device will receive the Feature Update 30 days following this CBB release and will update in May. |

</br></br>
**Defer Feature Updates policies**

| Policy | Sets registry key under **HKLM\Software** |
| --- | --- |
| GPO for version 1607: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > Defer Windows Updates > **Select when Feature Updates are received** | \Policies\Microsoft\Windows\WindowsUpdate\DeferFeatureUpdates</br>\Policies\Microsoft\Windows\WindowsUpdate\DeferFeatureUpdatesPeriodInDays |
| GPO for version 1511: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > **Defer Upgrades and Updates** | \Policies\Microsoft\Windows\WindowsUpdate\DeferUpgradePeriod |
| MDM for version 1607: </br>../Vendor/MSFT/Policy/Config/Update/</br>**DeferFeatureUpdatesPeriodInDays** | \Microsoft\PolicyManager\default\Update\DeferFeatureUpdatesPeriodInDays |
| MDM for version 1511: </br>../Vendor/MSFT/Policy/Config/Update/</br>**DeferUpgrade** | \Microsoft\PolicyManager\default\Update\RequireDeferUpgrade |


## Pause Feature Updates

You can also pause a device from receiving Feature Updates by a period of up to 60 days from when the value is set. After 60 days has passed, pause functionality will automatically expire and the device will scan Windows Update for applicable Feature Updates. Following this scan, Feature Updates for the device can then be paused again.

**Pause Feature Updates policies**

| Policy | Sets registry key under **HKLM\Software** |
| --- | --- |
| GPO for version 1607: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > Defer Windows Updates > **Select when Feature Updates are received** | \Policies\Microsoft\Windows\WindowsUpdate\PauseFeatureUpdates  |
| GPO for version 1511: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > **Defer Upgrades and Updates** | \Policies\Microsoft\Windows\WindowsUpdate\Pause |
| MDM for version 1607: </br>../Vendor/MSFT/Policy/Config/Update/</br>**PauseFeatureUpdates** | \Microsoft\PolicyManager\default\Update\PauseFeatureUpdates |
| MDM for version 1511: </br>../Vendor/MSFT/Policy/Config/Update/</br>**DeferUpgrade** | \Microsoft\PolicyManager\default\Update\Pause |


You can check the date Feature Updates were paused at by checking the registry key **PausedFeatureDate** under **HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\Settings**. 

The local group policy editor (GPEdit.msc) will not reflect if your Feature Update Pause period has expired. Although the device will resume Feature Updates after 60 days automatically, the pause checkbox will remain checked in the policy editor.  To see if a device has auto-resumed taking Feature Updates, you can check the status registry key **PausedFeatureStatus** under **HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\Settings**.

| Value | Status|
| --- | --- |
| 0 | Feature Updates not paused |
| 1 | Feature Updates paused |
| 2 | Feature Updates have auto-resumed after being paused |


## Configure when devices receive Quality Updates

Quality Updates are typically published the first Tuesday of every month, though can be released at any time by Microsoft. You can define if, and for how long, you would like to defer receiving Quality Updates following their availability. You can defer receiving these Quality Updates for a period of up to 35 days from their release by setting the **DeferQualityUpdatesPeriodinDays** value.  

You can set your system to receive updates for other Microsoft products—known as Microsoft Updates (such as Microsoft Office, Visual Studio)—along with Windows Updates by setting the **AllowMUUpdateService** policy. When this is done, these Microsoft Updates will follow the same deferral and pause rules as all other Quality Updates.

**Defer Quality Updates policies**

| Policy | Sets registry key under **HKLM\Software** |
| --- | --- |
| GPO for version 1607: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > Defer Windows Updates > **Select when Quality Updates are received** | \Policies\Microsoft\Windows\WindowsUpdate\DeferQualityUpdates</br>\Policies\Microsoft\Windows\WindowsUpdate\DeferQualityUpdatesPeriodInDays  |
| GPO for version 1511: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > **Defer Upgrades and Updates** | \Policies\Microsoft\Windows\WindowsUpdate\DeferUpdatePeriod |
| MDM for version 1607: </br>../Vendor/MSFT/Policy/Config/Update/</br>**DeferQualityUpdates** | \Microsoft\PolicyManager\default\Update\DeferQualityUpdatesPeriodInDays |
| MDM for version 1511: </br>../Vendor/MSFT/Policy/Config/Update/</br>**DeferUpgrade** | \Microsoft\PolicyManager\default\Update\RequireDeferUpdate |


## Pause Quality Updates

You can also pause a system from receiving Quality Updates for a period of up to 35 days from when the value is set.  After 35 days has passed, pause functionality will automatically expire and the system will scan Windows Updates for applicable Quality Updates. Following this scan, Quality Updates for the device can then be paused again.

**Pause Quality Updates policies**

| Policy | Sets registry key under **HKLM\Software** |
| --- | --- |
| GPO for version 1607: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > Defer Windows Updates > **Select when Quality Updates are received** |\Policies\Microsoft\Windows\WindowsUpdate\PauseQualityUpdates  |
| GPO for version 1511: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > **Defer Upgrades and Updates** | \Policies\Microsoft\Windows\WindowsUpdate\Pause |
| MDM for version 1607: </br>../Vendor/MSFT/Policy/Config/Update/</br>**PauseQualityUpdates** | \Microsoft\PolicyManager\default\Update\PauseQualityUpdates |
| MDM for version 1511: </br>../Vendor/MSFT/Policy/Config/Update/</br>**DeferUpgrade** | \Microsoft\PolicyManager\default\Update\Pause |


You can check what date Quality Updates were paused at by checking the registry key **PausedQualityDate** under **HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\Settings**. 

The local group policy editor (GPEdit.msc) will not reflect if your Quality Update Pause period has expired. Although the device will resume Quality Updates after 60 days automatically, the pause checkbox will remain checked in the policy editor.  To see if a device has auto-resumed taking Quality Updates, you can check the status registry key **PausedQualityStatus** under **HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\Settings**.

| Value | Status|
| --- | --- |
| 0 | Quality Updates not paused |
| 1 | Quality Updates paused |
| 2 | Quality Updates have auto-resumed after being paused |

## Exclude drivers from Quality Updates

In Windows 10, version 1607, you can selectively option out of receiving driver update packages as part of your normal quality update cycle.  This policy will not pertain to updates to inbox drivers (which will be packaged within a security or critical update) or to Feature Updates, where drivers may be dynamically installed to ensure the Feature Update process can complete.

**Exclude driver policies**

| Policy | Sets registry key under **HKLM\Software** |
| --- | --- |
| GPO for version 1607: </br>Computer Configuration > Administrative Templates > Windows Components > Windows Update > **Do not include drivers with Windows Updates** | \Policies\Microsoft\Windows\WindowsUpdate\ExcludeWUDriversInQualityUpdate  |
| MDM for version 1607: </br>../Vendor/MSFT/Policy/Config/Update/</br>**ExcludeWUDriversInQualityUpdate** | \Microsoft\PolicyManager\default\Update\ExcludeWUDriversInQualityUpdate |



## Summary: MDM and Group Policy for version 1607

Below are quick-reference tables of the supported Windows Update for Business policy values for Windows 10, version 1607.

**GPO: HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate**

| GPO Key |	Key type | Value |
| --- | --- | --- |
| BranchReadinessLevel	| REG_DWORD | 16: systems take Feature Updates for the Current Branch (CB)</br>32: systems take Feature Updates for the Current Branch for Business (CBB)</br>Note: Other value or absent: receive all applicable updates (CB) |
| DeferQualityUpdates | REG_DWORD | 1: defer quality updates</br>Other value or absent: don’t defer quality updates | 
| DeferQualityUpdatesPeriodinDays | REG_DWORD | 0-30: defer quality updates by given days |
| PauseQualityUpdates | REG_DWORD | 1: pause quality updates</br>Other value or absent: don’t pause quality updates |
|DeferFeatureUpdates | REG_DWORD | 1: defer feature updates</br>Other value or absent: don’t defer feature updates |
| DeferFeatureUpdatesPeriodinDays | REG_DWORD | 0-180: defer feature updates by given days |
| PauseFeatureUpdates | REG_DWORD |1: pause feature updates</br>Other value or absent: don’t pause feature updates |
| ExcludeWUDriversInQualityUpdate | REG_DWORD | 1: exclude Windows Update drivers</br>Other value or absent: offer Windows Update drivers |


**MDM: HKEY_LOCAL_MACHINE\Software\Microsoft\PolicyManager\default\Update**

| MDM Key | Key type | Value |
| --- | --- | --- |
| BranchReadinessLevel | REG_DWORD | 16: systems take Feature Updates for the Current Branch (CB)</br>32: systems take Feature Updates for the Current Branch for Business (CBB)</br>Note: Other value or absent: receive all applicable updates (CB) |
| DeferQualityUpdatesPeriod | REG_DWORD | 0-30: defer quality updates by given days |
| PauseQualityUpdates | REG_DWORD | 1: pause quality updates</br>Other value or absent: don’t pause quality updates |
| DeferFeatureUpdatesPeriod | REG_DWORD | 0-180: defer feature updates by given days |
| PauseFeatureUpdates | REG_DWORD | 1: pause feature updates</br>Other value or absent: don’t pause feature updates |
| ExcludeWUDriversinQualityUpdate | REG_DWORD | 1: exclude Windows Update drivers</br>Other value or absent: offer Windows Update drivers |

## Update devices from Windows 10, version 1511 to version 1607

Due to the changes in the Windows Update for Business feature set, Windows 10, version 1607, uses different GPO and MDM keys than those available in version 1511.  However,Windows Update for Business clients running version 1511 will still see their policies honored after they update to version 1607; the old policy keys will continue to exist with their values ported forward during the update. Following the update to version 1607, it should be noted that only the version 1511 keys will be populated and not the new version 1607 keys, until the newer keys are explicitly defined on the device by the administrator.

### How version 1511 policies are respected on version 1607

When a client running version 1607 sees an update available on Windows Update, the client will first evaluate and execute against the Windows Updates for Business policy keys for version 1607.  If these are not present, it will then check to see if any of the version 1511 keys are set and defer accordingly.  Update keys for version 1607 will always supersede the version 1511 equivalent.

### Comparing the version 1511 keys to the version 1607 keys

In the Windows Update for Business policies in version 1511, all the deferral rules were grouped under a single policy where pausing affected both upgrades and updates.  In Windows 10, version 1607, this functionality has been broken out into separate polices: deferral of Feature and Quality Updates can be enabled and paused independently of one other.   

<table><caption>Group Policy keys</caption><thead><th>Version 1511 GPO keys</th><th>Version 1607 GPO keys</th></thead>
<tbody><tr><td valign="top">**DeferUpgrade**: *enable/disable*</br>&nbsp;&nbsp;&nbsp;
Enabling allows user to set deferral periods for upgrades and updates.  It also puts the device on CBB (no ability to defer updates while on the CB branch).</br></br>**DeferUpgradePeriod**: *0 - 8 months*</br></br>**DeferUpdatePeriod**: *1 – 4 weeks*</br></br>**Pause**: *enable/disable*</br>&nbsp;&nbsp;&nbsp;Enabling will pause both upgrades and updates for a max of 35 days</td><td>**DeferFeatureUpdates**: *enable/disable*</br></br>**BranchReadinessLevel**</br>&nbsp;&nbsp;&nbsp;Set device on CB or CBB</br></br>**DeferFeatureUpdatesPeriodinDays**: *1 - 180 days*</br></br>**PauseFeatureUpdates**: *enable/disable*</br>&nbsp;&nbsp;&nbsp;Enabling will pause Feature updates for a max of 60 days</br></br>**DeferQualityUpdates**: *Enable/disable*</br></br>**DeferQualityUpdatesPeriodinDays**: *0 - 30 days*</br></br>**PauseQualityUpdates**: *enable/disable*</br>&nbsp;&nbsp;&nbsp;Enabling will pause Quality updates for a max of 35 days</br></br>**ExcludeWUDrivers**: *enable/disable*</td></tr>
</table>

<table><caption>MDM keys</caption><thead><th>Version 1511 MDM keys</th><th>Version 1607 MDM keys</th></thead>
<tbody><tr><td valign="top">**RequireDeferUpgade**: *bool*</br>&nbsp;&nbsp;&nbsp;Puts the device on CBB (no ability to defer updates while on the CB branch).</br></br>**DeferUpgradePeriod**: *0 - 8 months*</br></br>**DeferUpdatePeriod**: *1 – 4 weeks*</br></br>**PauseDeferrals**: *bool*</br>&nbsp;&nbsp;&nbsp;Enabling will pause both upgrades and updates for a max of 35 days</td><td>**BranchReadinessLevel**</br>&nbsp;&nbsp;&nbsp;Set system on CB or CBB</br></br>**DeferFeatureUpdatesPeriodinDays**: *1 - 180 days*</br></br>**PauseFeatureUpdates**: *enable/disable*</br>&nbsp;&nbsp;&nbsp;Enabling will pause Feature updates for a max of 60 days</br></br>**DeferQualityUpdatesPeriodinDays**: *0 - 30 days*</br></br>**PauseQualityUpdates**: *enable/disable*</br>&nbsp;&nbsp;&nbsp;  Enabling will pause Quality updates for a max of 35 days</br></br>**ExcludeWUDriversInQualityUpdate**: *enable/disable<*/td></tr>
</tbody></table>





## Related topics

- [Update Windows 10 in the enterprise](waas-update-windows-10.md)
- [Overview of Windows as a service](waas-overview.md)
- [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md)
- [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md)
- [Assign devices to servicing branches for Windows 10 updates](waas-servicing-branches-windows-10-updates.md)
- [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md)
- [Configure Delivery Optimization for Windows 10 updates](waas-delivery-optimization.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md)
- [Manage updates for Windows 10 Mobile Enterprise](waas-mobile-updates.md) 
- [Manage updates using Windows Update for Business](waas-manage-updates-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](waas-wufb-intune.md)
- [Manage Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)
- [Manage Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md)
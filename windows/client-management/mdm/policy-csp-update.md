---
title: Update Policy CSP
description: Learn more about the Update Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- Update-Begin -->
# Policy CSP - Update

<!-- Update-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Update-Editable-End -->

Update CSP policies are listed below based on the group policy area:

- [Manage updates offered from Windows Update](#manage-updates-offered-from-windows-update)
  - [AllowNonMicrosoftSignedUpdate](#allownonmicrosoftsignedupdate)
  - [AllowOptionalContent](#allowoptionalcontent)
  - [AutomaticMaintenanceWakeUp](#automaticmaintenancewakeup)
  - [BranchReadinessLevel](#branchreadinesslevel)
  - [DeferFeatureUpdatesPeriodInDays](#deferfeatureupdatesperiodindays)
  - [DeferQualityUpdatesPeriodInDays](#deferqualityupdatesperiodindays)
  - [DisableWUfBSafeguards](#disablewufbsafeguards)
  - [ExcludeWUDriversInQualityUpdate](#excludewudriversinqualityupdate)
  - [ManagePreviewBuilds](#managepreviewbuilds)
  - [PauseFeatureUpdates](#pausefeatureupdates)
  - [PauseFeatureUpdatesStartTime](#pausefeatureupdatesstarttime)
  - [PauseQualityUpdates](#pausequalityupdates)
  - [PauseQualityUpdatesStartTime](#pausequalityupdatesstarttime)
  - [ProductVersion](#productversion)
  - [TargetReleaseVersion](#targetreleaseversion)
- [Manage updates offered from Windows Server Update Service](#manage-updates-offered-from-windows-server-update-service)
  - [AllowUpdateService](#allowupdateservice)
  - [DetectionFrequency](#detectionfrequency)
  - [DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection](#donotenforceenterprisetlscertpinningforupdatedetection)
  - [FillEmptyContentUrls](#fillemptycontenturls)
  - [SetPolicyDrivenUpdateSourceForDriverUpdates](#setpolicydrivenupdatesourcefordriverupdates)
  - [SetPolicyDrivenUpdateSourceForFeatureUpdates](#setpolicydrivenupdatesourceforfeatureupdates)
  - [SetPolicyDrivenUpdateSourceForOtherUpdates](#setpolicydrivenupdatesourceforotherupdates)
  - [SetPolicyDrivenUpdateSourceForQualityUpdates](#setpolicydrivenupdatesourceforqualityupdates)
  - [SetProxyBehaviorForUpdateDetection](#setproxybehaviorforupdatedetection)
  - [UpdateServiceUrl](#updateserviceurl)
  - [UpdateServiceUrlAlternate](#updateserviceurlalternate)
- [Manage end user experience](#manage-end-user-experience)
  - [ActiveHoursEnd](#activehoursend)
  - [ActiveHoursMaxRange](#activehoursmaxrange)
  - [ActiveHoursStart](#activehoursstart)
  - [AllowAutoUpdate](#allowautoupdate)
  - [AllowAutoWindowsUpdateDownloadOverMeteredNetwork](#allowautowindowsupdatedownloadovermeterednetwork)
  - [AllowMUUpdateService](#allowmuupdateservice)
  - [AllowTemporaryEnterpriseFeatureControl](#allowtemporaryenterprisefeaturecontrol)
  - [ConfigureDeadlineForFeatureUpdates](#configuredeadlineforfeatureupdates)
  - [ConfigureDeadlineForQualityUpdates](#configuredeadlineforqualityupdates)
  - [ConfigureDeadlineGracePeriod](#configuredeadlinegraceperiod)
  - [ConfigureDeadlineGracePeriodForFeatureUpdates](#configuredeadlinegraceperiodforfeatureupdates)
  - [ConfigureDeadlineNoAutoRebootForFeatureUpdates](#configuredeadlinenoautorebootforfeatureupdates)
  - [ConfigureDeadlineNoAutoRebootForQualityUpdates](#configuredeadlinenoautorebootforqualityupdates)
  - [ConfigureFeatureUpdateUninstallPeriod](#configurefeatureupdateuninstallperiod)
  - [NoUpdateNotificationsDuringActiveHours](#noupdatenotificationsduringactivehours)
  - [ScheduledInstallDay](#scheduledinstallday)
  - [ScheduledInstallEveryWeek](#scheduledinstalleveryweek)
  - [ScheduledInstallFirstWeek](#scheduledinstallfirstweek)
  - [ScheduledInstallFourthWeek](#scheduledinstallfourthweek)
  - [ScheduledInstallSecondWeek](#scheduledinstallsecondweek)
  - [ScheduledInstallThirdWeek](#scheduledinstallthirdweek)
  - [ScheduledInstallTime](#scheduledinstalltime)
  - [SetDisablePauseUXAccess](#setdisablepauseuxaccess)
  - [SetDisableUXWUAccess](#setdisableuxwuaccess)
  - [SetEDURestart](#setedurestart)
  - [UpdateNotificationLevel](#updatenotificationlevel)
- [Legacy Policies](#legacy-policies)
  - [AlwaysAutoRebootAtScheduledTimeMinutes](#alwaysautorebootatscheduledtimeminutes)
  - [AutoRestartDeadlinePeriodInDays](#autorestartdeadlineperiodindays)
  - [AutoRestartDeadlinePeriodInDaysForFeatureUpdates](#autorestartdeadlineperiodindaysforfeatureupdates)
  - [AutoRestartNotificationSchedule](#autorestartnotificationschedule)
  - [AutoRestartRequiredNotificationDismissal](#autorestartrequirednotificationdismissal)
  - [DeferUpdatePeriod](#deferupdateperiod)
  - [DeferUpgradePeriod](#deferupgradeperiod)
  - [DisableDualScan](#disabledualscan)
  - [EngagedRestartDeadline](#engagedrestartdeadline)
  - [EngagedRestartDeadlineForFeatureUpdates](#engagedrestartdeadlineforfeatureupdates)
  - [EngagedRestartSnoozeSchedule](#engagedrestartsnoozeschedule)
  - [EngagedRestartSnoozeScheduleForFeatureUpdates](#engagedrestartsnoozescheduleforfeatureupdates)
  - [EngagedRestartTransitionSchedule](#engagedrestarttransitionschedule)
  - [EngagedRestartTransitionScheduleForFeatureUpdates](#engagedrestarttransitionscheduleforfeatureupdates)
  - [IgnoreMOAppDownloadLimit](#ignoremoappdownloadlimit)
  - [IgnoreMOUpdateDownloadLimit](#ignoremoupdatedownloadlimit)
  - [PauseDeferrals](#pausedeferrals)
  - [PhoneUpdateRestrictions](#phoneupdaterestrictions)
  - [RequireDeferUpgrade](#requiredeferupgrade)
  - [RequireUpdateApproval](#requireupdateapproval)
  - [ScheduleImminentRestartWarning](#scheduleimminentrestartwarning)
  - [ScheduleRestartWarning](#schedulerestartwarning)
  - [SetAutoRestartNotificationDisable](#setautorestartnotificationdisable)

## Manage updates offered from Windows Update

<!-- AllowNonMicrosoftSignedUpdate-Begin -->
### AllowNonMicrosoftSignedUpdate

<!-- AllowNonMicrosoftSignedUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowNonMicrosoftSignedUpdate-Applicability-End -->

<!-- AllowNonMicrosoftSignedUpdate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/AllowNonMicrosoftSignedUpdate
```
<!-- AllowNonMicrosoftSignedUpdate-OmaUri-End -->

<!-- AllowNonMicrosoftSignedUpdate-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the IT admin to manage whether Automatic Updates accepts updates signed by entities other than Microsoft when the update is found at the UpdateServiceUrl location. This policy supports using WSUS for 3rd party software and patch distribution. This policy is specific to desktop and local publishing via WSUS for 3rd party updates (binaries and updates not hosted on Microsoft Update) and allows IT to manage whether Automatic Updates accepts updates signed by entities other than Microsoft when the update is found on an intranet Microsoft update service location.
<!-- AllowNonMicrosoftSignedUpdate-Description-End -->

<!-- AllowNonMicrosoftSignedUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowNonMicrosoftSignedUpdate-Editable-End -->

<!-- AllowNonMicrosoftSignedUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowNonMicrosoftSignedUpdate-DFProperties-End -->

<!-- AllowNonMicrosoftSignedUpdate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed or not configured. Updates from an intranet Microsoft update service location must be signed by Microsoft. |
| 1 (Default) | Allowed. Accepts updates received through an intranet Microsoft update service location, if they're signed by a certificate found in the 'Trusted Publishers' certificate store of the local computer. |
<!-- AllowNonMicrosoftSignedUpdate-AllowedValues-End -->

<!-- AllowNonMicrosoftSignedUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowNonMicrosoftSignedUpdate-Examples-End -->

<!-- AllowNonMicrosoftSignedUpdate-End -->

<!-- AllowOptionalContent-Begin -->
### AllowOptionalContent

<!-- AllowOptionalContent-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 21H2 [10.0.19044.3757] and later |
<!-- AllowOptionalContent-Applicability-End -->

<!-- AllowOptionalContent-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/AllowOptionalContent
```
<!-- AllowOptionalContent-OmaUri-End -->

<!-- AllowOptionalContent-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy enables devices to get optional updates (including gradual feature rollouts (CFRs) - learn more by visiting aka.ms/AllowOptionalContent)

When the policy is configured.

- If "Automatically receive optional updates (including CFRs)" is selected, the device will get the latest optional updates automatically in line with the configured quality update deferrals. This includes optional cumulative updates and gradual feature rollouts (CFRs).

- If "Automatically receive optional updates" is selected, the device will only get optional cumulative updates automatically, in line with the quality update deferrals.

- If "Users can select which optional updates to receive" is selected, users can select which optional updates to get by visiting Settings > Windows Update > Advanced options > Optional updates. Users can also enable the toggle "Get the latest updates as soon as they're available" to automatically receive optional updates and gradual feature rollouts.
<!-- AllowOptionalContent-Description-End -->

<!-- AllowOptionalContent-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowOptionalContent-Editable-End -->

<!-- AllowOptionalContent-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowOptionalContent-DFProperties-End -->

<!-- AllowOptionalContent-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Don't receive optional updates. |
| 1 | Automatically receive optional updates (including CFRs). |
| 2 | Automatically receive optional updates. |
| 3 | Users can select which optional updates to receive. |
<!-- AllowOptionalContent-AllowedValues-End -->

<!-- AllowOptionalContent-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowOptionalContent |
| Friendly Name | Enable optional updates |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Update |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| Registry Value Name | SetAllowOptionalContent |
| ADMX File Name | WindowsUpdate.admx |
<!-- AllowOptionalContent-GpMapping-End -->

<!-- AllowOptionalContent-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowOptionalContent-Examples-End -->

<!-- AllowOptionalContent-End -->

<!-- AutomaticMaintenanceWakeUp-Begin -->
### AutomaticMaintenanceWakeUp

<!-- AutomaticMaintenanceWakeUp-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- AutomaticMaintenanceWakeUp-Applicability-End -->

<!-- AutomaticMaintenanceWakeUp-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/AutomaticMaintenanceWakeUp
```
<!-- AutomaticMaintenanceWakeUp-OmaUri-End -->

<!-- AutomaticMaintenanceWakeUp-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure Automatic Maintenance wake up policy.

The maintenance wakeup policy specifies if Automatic Maintenance should make a wake request to the OS for the daily scheduled maintenance. Note, that if the OS power wake policy is explicitly disabled, then this setting has no effect.

- If you enable this policy setting, Automatic Maintenance will attempt to set OS wake policy and make a wake request for the daily scheduled time, if required.

- If you disable or don't configure this policy setting, the wake setting as specified in Security and Maintenance/Automatic Maintenance Control Panel will apply.
<!-- AutomaticMaintenanceWakeUp-Description-End -->

<!-- AutomaticMaintenanceWakeUp-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AutomaticMaintenanceWakeUp-Editable-End -->

<!-- AutomaticMaintenanceWakeUp-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AutomaticMaintenanceWakeUp-DFProperties-End -->

<!-- AutomaticMaintenanceWakeUp-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Enabled. |
<!-- AutomaticMaintenanceWakeUp-AllowedValues-End -->

<!-- AutomaticMaintenanceWakeUp-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | WakeUpPolicy |
| Friendly Name | Automatic Maintenance WakeUp Policy |
| Location | Computer Configuration |
| Path | Windows Components > Maintenance Scheduler |
| Registry Key Name | Software\Policies\Microsoft\Windows\Task Scheduler\Maintenance |
| Registry Value Name | WakeUp |
| ADMX File Name | msched.admx |
<!-- AutomaticMaintenanceWakeUp-GpMapping-End -->

<!-- AutomaticMaintenanceWakeUp-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AutomaticMaintenanceWakeUp-Examples-End -->

<!-- AutomaticMaintenanceWakeUp-End -->

<!-- BranchReadinessLevel-Begin -->
### BranchReadinessLevel

<!-- BranchReadinessLevel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- BranchReadinessLevel-Applicability-End -->

<!-- BranchReadinessLevel-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/BranchReadinessLevel
```
<!-- BranchReadinessLevel-OmaUri-End -->

<!-- BranchReadinessLevel-Description-Begin -->
<!-- Description-Source-ADMX -->
Enable this policy to specify when to receive Feature Updates.

Defer Updates | This enables devices to defer taking the next Feature Update available for their current product (or a new product if specified in the Select the target Feature Update version policy). You can defer a Feature Update for up to 14 days for all pre-release channels and up to 365 days for the General Availability Channel. To learn more about the current releases, please see aka.ms/WindowsTargetVersioninfo.

Pause Updates | To prevent Feature Updates from being offered to the device, you can temporarily pause Feature Updates. This pause will remain in effect for 35 days from the specified start date or until the field is cleared. Note, Quality Updates will still be offered even if Feature Updates are paused.
<!-- BranchReadinessLevel-Description-End -->

<!-- BranchReadinessLevel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BranchReadinessLevel-Editable-End -->

<!-- BranchReadinessLevel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 16 |
<!-- BranchReadinessLevel-DFProperties-End -->

<!-- BranchReadinessLevel-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 2 | {0x2}  - Windows Insider build - Fast (added in Windows 10, version 1709). |
| 4 | {0x4}  - Windows Insider build - Slow (added in Windows 10, version 1709). |
| 8 | {0x8}  - Release Windows Insider build (added in Windows 10, version 1709). |
| 16 (Default) | {0x10} - Semi-annual Channel (Targeted). Device gets all applicable feature updates from Semi-annual Channel (Targeted). |
| 32 | 2 {0x20} - Semi-annual Channel. Device gets feature updates from Semi-annual Channel. (*Only applicable to releases prior to 1903, for all releases 1903 and after the Semi-annual Channel and Semi-annual Channel (Targeted) into a single Semi-annual Channel with a value of 16). |
| 64 | {0x40} - Release Preview of Quality Updates Only. |
| 128 | {0x80} - Canary Channel. |
<!-- BranchReadinessLevel-AllowedValues-End -->

<!-- BranchReadinessLevel-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DeferFeatureUpdates |
| Friendly Name | Select when Preview Builds and Feature Updates are received |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Update |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- BranchReadinessLevel-GpMapping-End -->

<!-- BranchReadinessLevel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BranchReadinessLevel-Examples-End -->

<!-- BranchReadinessLevel-End -->

<!-- DeferFeatureUpdatesPeriodInDays-Begin -->
### DeferFeatureUpdatesPeriodInDays

<!-- DeferFeatureUpdatesPeriodInDays-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- DeferFeatureUpdatesPeriodInDays-Applicability-End -->

<!-- DeferFeatureUpdatesPeriodInDays-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/DeferFeatureUpdatesPeriodInDays
```
<!-- DeferFeatureUpdatesPeriodInDays-OmaUri-End -->

<!-- DeferFeatureUpdatesPeriodInDays-Description-Begin -->
<!-- Description-Source-ADMX -->
Enable this policy to specify when to receive Feature Updates.

Defer Updates | This enables devices to defer taking the next Feature Update available for their current product (or a new product if specified in the Select the target Feature Update version policy). You can defer a Feature Update for up to 14 days for all pre-release channels and up to 365 days for the General Availability Channel. To learn more about the current releases, please see aka.ms/WindowsTargetVersioninfo.

Pause Updates | To prevent Feature Updates from being offered to the device, you can temporarily pause Feature Updates. This pause will remain in effect for 35 days from the specified start date or until the field is cleared. Note, Quality Updates will still be offered even if Feature Updates are paused.
<!-- DeferFeatureUpdatesPeriodInDays-Description-End -->

<!-- DeferFeatureUpdatesPeriodInDays-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DeferFeatureUpdatesPeriodInDays-Editable-End -->

<!-- DeferFeatureUpdatesPeriodInDays-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-365]` |
| Default Value  | 0 |
<!-- DeferFeatureUpdatesPeriodInDays-DFProperties-End -->

<!-- DeferFeatureUpdatesPeriodInDays-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DeferFeatureUpdates |
| Friendly Name | Select when Preview Builds and Feature Updates are received |
| Element Name | How many days after a Feature Update is released would you like to defer the update before it's offered to the device? |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Update |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- DeferFeatureUpdatesPeriodInDays-GpMapping-End -->

<!-- DeferFeatureUpdatesPeriodInDays-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DeferFeatureUpdatesPeriodInDays-Examples-End -->

<!-- DeferFeatureUpdatesPeriodInDays-End -->

<!-- DeferQualityUpdatesPeriodInDays-Begin -->
### DeferQualityUpdatesPeriodInDays

<!-- DeferQualityUpdatesPeriodInDays-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- DeferQualityUpdatesPeriodInDays-Applicability-End -->

<!-- DeferQualityUpdatesPeriodInDays-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/DeferQualityUpdatesPeriodInDays
```
<!-- DeferQualityUpdatesPeriodInDays-OmaUri-End -->

<!-- DeferQualityUpdatesPeriodInDays-Description-Begin -->
<!-- Description-Source-ADMX -->
Enable this policy to specify when to receive quality updates.

You can defer receiving quality updates for up to 30 days.

To prevent quality updates from being received on their scheduled time, you can temporarily pause quality updates. The pause will remain in effect for 35 days or until you clear the start date field.

To resume receiving Quality Updates which are paused, clear the start date field.

If you disable or don't configure this policy, Windows Update won't alter its behavior.
<!-- DeferQualityUpdatesPeriodInDays-Description-End -->

<!-- DeferQualityUpdatesPeriodInDays-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DeferQualityUpdatesPeriodInDays-Editable-End -->

<!-- DeferQualityUpdatesPeriodInDays-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-30]` |
| Default Value  | 0 |
<!-- DeferQualityUpdatesPeriodInDays-DFProperties-End -->

<!-- DeferQualityUpdatesPeriodInDays-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DeferQualityUpdates |
| Friendly Name | Select when Quality Updates are received |
| Element Name | After a quality update is released, defer receiving it for this many days. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Update |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- DeferQualityUpdatesPeriodInDays-GpMapping-End -->

<!-- DeferQualityUpdatesPeriodInDays-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DeferQualityUpdatesPeriodInDays-Examples-End -->

<!-- DeferQualityUpdatesPeriodInDays-End -->

<!-- DisableWUfBSafeguards-Begin -->
### DisableWUfBSafeguards

<!-- DisableWUfBSafeguards-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 with [KB4577069](https://support.microsoft.com/help/4577069) [10.0.17763.1490] and later <br> ✅ Windows 10, version 1903 with [KB4577062](https://support.microsoft.com/help/4577062) [10.0.18362.1110] and later <br> ✅ Windows 10, version 1909 with [KB4577062](https://support.microsoft.com/help/4577062) [10.0.18363.1110] and later <br> ✅ Windows 10, version 2004 with [KB4577063](https://support.microsoft.com/help/4577063) [10.0.19041.546] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableWUfBSafeguards-Applicability-End -->

<!-- DisableWUfBSafeguards-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/DisableWUfBSafeguards
```
<!-- DisableWUfBSafeguards-OmaUri-End -->

<!-- DisableWUfBSafeguards-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting specifies that a Windows Update for Business device should skip safeguards.
<!-- DisableWUfBSafeguards-Description-End -->

<!-- DisableWUfBSafeguards-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Safeguard holds prevent a device with a known compatibility issue from being offered a new OS version. The offering will proceed once a fix is issued and is verified on a held device. The aim of safeguards is to protect the device and user from a failed or poor upgrade experience. The safeguard holds protection is provided by default to all the devices trying to update to a new Windows 10 Feature Update version via Windows Update.

IT admins can, if necessary, opt devices out of safeguard protections using this policy setting or via the **Disable safeguards for Feature Updates** Group Policy.

> [!NOTE]
> Opting out of the safeguards can put devices at risk from known performance issues. We recommend opting out only in an IT environment for validation purposes. Further, you can leverage the Windows Insider Program for Business Release Preview Channel in order to validate the upcoming Windows 10 Feature Update version without the safeguards being applied.
>
> The disable safeguards policy will revert to "Not Configured" on a device after moving to a new Windows 10 version, even if previously enabled. This ensures the admin is consciously disabling Microsoft's default protection from known issues for each new feature update.
>
> Disabling safeguards doesn't guarantee your device will be able to successfully update. The update may still fail on the device and will likely result in a bad experience post upgrade, as you're bypassing the protection given by Microsoft pertaining to known issues.
<!-- DisableWUfBSafeguards-Editable-End -->

<!-- DisableWUfBSafeguards-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableWUfBSafeguards-DFProperties-End -->

<!-- DisableWUfBSafeguards-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Safeguards are enabled and devices may be blocked for upgrades until the safeguard is cleared. |
| 1 | Safeguards aren't enabled and upgrades will be deployed without blocking on safeguards. |
<!-- DisableWUfBSafeguards-AllowedValues-End -->

<!-- DisableWUfBSafeguards-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableWUfBSafeguards-Examples-End -->

<!-- DisableWUfBSafeguards-End -->

<!-- ExcludeWUDriversInQualityUpdate-Begin -->
### ExcludeWUDriversInQualityUpdate

<!-- ExcludeWUDriversInQualityUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- ExcludeWUDriversInQualityUpdate-Applicability-End -->

<!-- ExcludeWUDriversInQualityUpdate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ExcludeWUDriversInQualityUpdate
```
<!-- ExcludeWUDriversInQualityUpdate-OmaUri-End -->

<!-- ExcludeWUDriversInQualityUpdate-Description-Begin -->
<!-- Description-Source-ADMX -->
Enable this policy to not include drivers with Windows quality updates.

If you disable or don't configure this policy, Windows Update will include updates that have a Driver classification.
<!-- ExcludeWUDriversInQualityUpdate-Description-End -->

<!-- ExcludeWUDriversInQualityUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ExcludeWUDriversInQualityUpdate-Editable-End -->

<!-- ExcludeWUDriversInQualityUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ExcludeWUDriversInQualityUpdate-DFProperties-End -->

<!-- ExcludeWUDriversInQualityUpdate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allow Windows Update drivers. |
| 1 | Exclude Windows Update drivers. |
<!-- ExcludeWUDriversInQualityUpdate-AllowedValues-End -->

<!-- ExcludeWUDriversInQualityUpdate-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ExcludeWUDriversInQualityUpdate |
| Friendly Name | Do not include drivers with Windows Updates |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Update |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| Registry Value Name | ExcludeWUDriversInQualityUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- ExcludeWUDriversInQualityUpdate-GpMapping-End -->

<!-- ExcludeWUDriversInQualityUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ExcludeWUDriversInQualityUpdate-Examples-End -->

<!-- ExcludeWUDriversInQualityUpdate-End -->

<!-- ManagePreviewBuilds-Begin -->
### ManagePreviewBuilds

<!-- ManagePreviewBuilds-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- ManagePreviewBuilds-Applicability-End -->

<!-- ManagePreviewBuilds-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ManagePreviewBuilds
```
<!-- ManagePreviewBuilds-OmaUri-End -->

<!-- ManagePreviewBuilds-Description-Begin -->
<!-- Description-Source-ADMX -->
Enable this policy to manage which updates you receive prior to the update being released to the world.

Dev Channel.

Ideal for highly technical users. Insiders in the Dev Channel will receive builds from our active development branch that's earliest in a development cycle. These builds aren't matched to a specific Windows 10 release.

Beta Channel.

Ideal for feature explorers who want to see upcoming Windows 10 features. Your feedback will be especially important here as it will help our engineers ensure key issues are fixed before a major release.

Release Preview Channel (default)
Insiders in the Release Preview Channel will have access to the upcoming release of Windows 10 prior to it being released to the world. These builds are supported by Microsoft. The Release Preview Channel is where we recommend companies preview and validate upcoming Windows 10 releases before broad deployment within their organization.

Release Preview Channel, Quality Updates Only.

Ideal for those who want to validate the features and fixes coming soon to their current version. Note, released feature updates will continue to be offered in accordance with configured policies when this option is selected.

> [!NOTE]
> Preview Build enrollment requires a telemetry level setting of 2 or higher and your domain registered on insider.windows.com. For additional information on Preview Builds, see: <https://aka.ms/wipforbiz>

If you disable or don't configure this policy, Windows Update won't offer you any pre-release updates and you'll receive such content once released to the world. Disabling this policy will cause any devices currently on a pre-release build to opt out and stay on the latest Feature Update once released.
<!-- ManagePreviewBuilds-Description-End -->

<!-- ManagePreviewBuilds-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ManagePreviewBuilds-Editable-End -->

<!-- ManagePreviewBuilds-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 3 |
<!-- ManagePreviewBuilds-DFProperties-End -->

<!-- ManagePreviewBuilds-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disable Preview builds. |
| 1 | Disable Preview builds once the next release is public. |
| 2 | Enable Preview builds. |
| 3 (Default) | Preview builds is left to user selection. |
<!-- ManagePreviewBuilds-AllowedValues-End -->

<!-- ManagePreviewBuilds-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ManagePreviewBuilds |
| Friendly Name | Manage preview builds |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Update |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- ManagePreviewBuilds-GpMapping-End -->

<!-- ManagePreviewBuilds-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ManagePreviewBuilds-Examples-End -->

<!-- ManagePreviewBuilds-End -->

<!-- PauseFeatureUpdates-Begin -->
### PauseFeatureUpdates

<!-- PauseFeatureUpdates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- PauseFeatureUpdates-Applicability-End -->

<!-- PauseFeatureUpdates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/PauseFeatureUpdates
```
<!-- PauseFeatureUpdates-OmaUri-End -->

<!-- PauseFeatureUpdates-Description-Begin -->
<!-- Description-Source-ADMX -->
Enable this policy to specify when to receive Feature Updates.

Defer Updates | This enables devices to defer taking the next Feature Update available for their current product (or a new product if specified in the Select the target Feature Update version policy). You can defer a Feature Update for up to 14 days for all pre-release channels and up to 365 days for the General Availability Channel. To learn more about the current releases, please see aka.ms/WindowsTargetVersioninfo.

Pause Updates | To prevent Feature Updates from being offered to the device, you can temporarily pause Feature Updates. This pause will remain in effect for 35 days from the specified start date or until the field is cleared. Note, Quality Updates will still be offered even if Feature Updates are paused.
<!-- PauseFeatureUpdates-Description-End -->

<!-- PauseFeatureUpdates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> We recommend that you use the Update/PauseFeatureUpdatesStartTime policy, if you're running Windows 10, version 1703 or later.
<!-- PauseFeatureUpdates-Editable-End -->

<!-- PauseFeatureUpdates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- PauseFeatureUpdates-DFProperties-End -->

<!-- PauseFeatureUpdates-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Feature Updates aren't paused. |
| 1 | Feature Updates are paused for 60 days or until value set to back to 0, whichever is sooner. |
<!-- PauseFeatureUpdates-AllowedValues-End -->

<!-- PauseFeatureUpdates-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DeferFeatureUpdates |
| Friendly Name | Select when Preview Builds and Feature Updates are received |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Update |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- PauseFeatureUpdates-GpMapping-End -->

<!-- PauseFeatureUpdates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PauseFeatureUpdates-Examples-End -->

<!-- PauseFeatureUpdates-End -->

<!-- PauseFeatureUpdatesStartTime-Begin -->
### PauseFeatureUpdatesStartTime

<!-- PauseFeatureUpdatesStartTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- PauseFeatureUpdatesStartTime-Applicability-End -->

<!-- PauseFeatureUpdatesStartTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/PauseFeatureUpdatesStartTime
```
<!-- PauseFeatureUpdatesStartTime-OmaUri-End -->

<!-- PauseFeatureUpdatesStartTime-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Specifies the date and time when the IT admin wants to start pausing the Feature Updates. Value type is string (yyyy-mm-dd, ex. 2018-10-28).
<!-- PauseFeatureUpdatesStartTime-Description-End -->

<!-- PauseFeatureUpdatesStartTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PauseFeatureUpdatesStartTime-Editable-End -->

<!-- PauseFeatureUpdatesStartTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PauseFeatureUpdatesStartTime-DFProperties-End -->

<!-- PauseFeatureUpdatesStartTime-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DeferFeatureUpdates |
| Friendly Name | Select when Preview Builds and Feature Updates are received |
| Element Name | Pause Preview Builds or Feature Updates starting. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Update |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- PauseFeatureUpdatesStartTime-GpMapping-End -->

<!-- PauseFeatureUpdatesStartTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PauseFeatureUpdatesStartTime-Examples-End -->

<!-- PauseFeatureUpdatesStartTime-End -->

<!-- PauseQualityUpdates-Begin -->
### PauseQualityUpdates

<!-- PauseQualityUpdates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- PauseQualityUpdates-Applicability-End -->

<!-- PauseQualityUpdates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/PauseQualityUpdates
```
<!-- PauseQualityUpdates-OmaUri-End -->

<!-- PauseQualityUpdates-Description-Begin -->
<!-- Description-Source-ADMX -->
Enable this policy to specify when to receive quality updates.

You can defer receiving quality updates for up to 30 days.

To prevent quality updates from being received on their scheduled time, you can temporarily pause quality updates. The pause will remain in effect for 35 days or until you clear the start date field.

To resume receiving Quality Updates which are paused, clear the start date field.

If you disable or don't configure this policy, Windows Update won't alter its behavior.
<!-- PauseQualityUpdates-Description-End -->

<!-- PauseQualityUpdates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> We recommend that you use the Update/PauseQualityUpdatesStartTime policy, if you're running Windows 10, version 1703 or later.
<!-- PauseQualityUpdates-Editable-End -->

<!-- PauseQualityUpdates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- PauseQualityUpdates-DFProperties-End -->

<!-- PauseQualityUpdates-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Quality Updates aren't paused. |
| 1 | Quality Updates are paused for 35 days or until value set back to 0, whichever is sooner. |
<!-- PauseQualityUpdates-AllowedValues-End -->

<!-- PauseQualityUpdates-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DeferQualityUpdates |
| Friendly Name | Select when Quality Updates are received |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Update |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- PauseQualityUpdates-GpMapping-End -->

<!-- PauseQualityUpdates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PauseQualityUpdates-Examples-End -->

<!-- PauseQualityUpdates-End -->

<!-- PauseQualityUpdatesStartTime-Begin -->
### PauseQualityUpdatesStartTime

<!-- PauseQualityUpdatesStartTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- PauseQualityUpdatesStartTime-Applicability-End -->

<!-- PauseQualityUpdatesStartTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/PauseQualityUpdatesStartTime
```
<!-- PauseQualityUpdatesStartTime-OmaUri-End -->

<!-- PauseQualityUpdatesStartTime-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Specifies the date and time when the IT admin wants to start pausing the Quality Updates. Value type is string (yyyy-mm-dd, ex. 2018-10-28).
<!-- PauseQualityUpdatesStartTime-Description-End -->

<!-- PauseQualityUpdatesStartTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> When this policy is configured, Quality Updates will be paused for 35 days from the specified start date.
<!-- PauseQualityUpdatesStartTime-Editable-End -->

<!-- PauseQualityUpdatesStartTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PauseQualityUpdatesStartTime-DFProperties-End -->

<!-- PauseQualityUpdatesStartTime-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DeferQualityUpdates |
| Friendly Name | Select when Quality Updates are received |
| Element Name | Pause Quality Updates starting. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Update |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- PauseQualityUpdatesStartTime-GpMapping-End -->

<!-- PauseQualityUpdatesStartTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PauseQualityUpdatesStartTime-Examples-End -->

<!-- PauseQualityUpdatesStartTime-End -->

<!-- ProductVersion-Begin -->
### ProductVersion

<!-- ProductVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ProductVersion-Applicability-End -->

<!-- ProductVersion-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ProductVersion
```
<!-- ProductVersion-OmaUri-End -->

<!-- ProductVersion-Description-Begin -->
<!-- Description-Source-ADMX -->
Enter the product and version as listed on the Windows Update target version page:

aka.ms/WindowsTargetVersioninfo.

The device will request that Windows Update product and version in subsequent scans.

Entering a target product and clicking OK or Apply means I accept the Microsoft Software License Terms for it found at aka.ms/WindowsTargetVersioninfo. If an organization is licensing the software, I am authorized to bind the organization.

If you enter an invalid value, you'll remain on your current version until you correct the values to a supported product and version.
<!-- ProductVersion-Description-End -->

<!-- ProductVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Supported value type is a string containing a Windows product. For example, "Windows 11" or "11" or "Windows 10". By using this Windows Update for Business policy to upgrade devices to a new product (for example, Windows 11) you're agreeing that when applying this operating system to a device:

1. The applicable Windows license was purchased through volume licensing, or
2. You're authorized to bind your organization and are accepting on its behalf the relevant [Microsoft Software License Terms](https://www.microsoft.com/Useterms).

> [!NOTE]
> If no product is specified, the device will continue receiving newer versions of the Windows product it's currently on.
<!-- ProductVersion-Editable-End -->

<!-- ProductVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ProductVersion-DFProperties-End -->

<!-- ProductVersion-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | TargetReleaseVersion |
| Friendly Name | Select the target Feature Update version |
| Element Name | Which Windows product version would you like to receive feature updates for? e.g., Windows 10. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Update |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- ProductVersion-GpMapping-End -->

<!-- ProductVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ProductVersion-Examples-End -->

<!-- ProductVersion-End -->

<!-- TargetReleaseVersion-Begin -->
### TargetReleaseVersion

<!-- TargetReleaseVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 with [KB4556807](https://support.microsoft.com/help/4556807) [10.0.17134.1488] and later <br> ✅ Windows 10, version 1809 with [KB4551853](https://support.microsoft.com/help/4551853) [10.0.17763.1217] and later <br> ✅ Windows 10, version 1903 with [KB4556799](https://support.microsoft.com/help/4556799) [10.0.18362.836] and later <br> ✅ Windows 10, version 1909 with [KB4556799](https://support.microsoft.com/help/4556799) [10.0.18363.836] and later <br> ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- TargetReleaseVersion-Applicability-End -->

<!-- TargetReleaseVersion-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/TargetReleaseVersion
```
<!-- TargetReleaseVersion-OmaUri-End -->

<!-- TargetReleaseVersion-Description-Begin -->
<!-- Description-Source-ADMX -->
Enter the product and version as listed on the Windows Update target version page:

aka.ms/WindowsTargetVersioninfo.

The device will request that Windows Update product and version in subsequent scans.

Entering a target product and clicking OK or Apply means I accept the Microsoft Software License Terms for it found at aka.ms/WindowsTargetVersioninfo. If an organization is licensing the software, I am authorized to bind the organization.

If you enter an invalid value, you'll remain on your current version until you correct the values to a supported product and version.
<!-- TargetReleaseVersion-Description-End -->

<!-- TargetReleaseVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Supported value type is a string containing Windows version number. For example, `1809`, `1903`, etc.

> [!NOTE]
> You need to set up the ProductVersion CSP along with the TargetReleaseVersion CSP for it to work.
<!-- TargetReleaseVersion-Editable-End -->

<!-- TargetReleaseVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TargetReleaseVersion-DFProperties-End -->

<!-- TargetReleaseVersion-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | TargetReleaseVersion |
| Friendly Name | Select the target Feature Update version |
| Element Name | Target Version for Feature Updates. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Update |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- TargetReleaseVersion-GpMapping-End -->

<!-- TargetReleaseVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TargetReleaseVersion-Examples-End -->

<!-- TargetReleaseVersion-End -->

## Manage updates offered from Windows Server Update Service

<!-- AllowUpdateService-Begin -->
### AllowUpdateService

<!-- AllowUpdateService-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowUpdateService-Applicability-End -->

<!-- AllowUpdateService-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/AllowUpdateService
```
<!-- AllowUpdateService-OmaUri-End -->

<!-- AllowUpdateService-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the device could use Microsoft Update, Windows Server Update Services (WSUS), or Microsoft Store. Even when Windows Update is configured to receive updates from an intranet update service, it will periodically retrieve information from the public Windows Update service to enable future connections to Windows Update, and other services like Microsoft Update or the Microsoft Store. Enabling this policy will disable that functionality, and may cause connection to public services such as the Microsoft Store to stop working.

> [!NOTE]
> This policy applies only when the desktop or device is configured to connect to an intranet update service using the Specify intranet Microsoft update service location policy.
<!-- AllowUpdateService-Description-End -->

<!-- AllowUpdateService-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowUpdateService-Editable-End -->

<!-- AllowUpdateService-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowUpdateService-DFProperties-End -->

<!-- AllowUpdateService-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowUpdateService-AllowedValues-End -->

<!-- AllowUpdateService-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | CorpWuURL |
| Friendly Name | Specify intranet Microsoft update service location |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Server Update Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- AllowUpdateService-GpMapping-End -->

<!-- AllowUpdateService-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowUpdateService-Examples-End -->

<!-- AllowUpdateService-End -->

<!-- DetectionFrequency-Begin -->
### DetectionFrequency

<!-- DetectionFrequency-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DetectionFrequency-Applicability-End -->

<!-- DetectionFrequency-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/DetectionFrequency
```
<!-- DetectionFrequency-OmaUri-End -->

<!-- DetectionFrequency-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the hours that Windows will use to determine how long to wait before checking for available updates. The exact wait time is a sum of the specific value and a random variant of 0-4 hours.

If the status is set to Enabled, Windows will check for available updates at the specified interval.

If the status is set to Disabled or Not Configured, Windows will check for available updates at the default interval of 22 hours.

> [!NOTE]
> The "Specify intranet Microsoft update service location" setting must be enabled for this policy to have effect.

> [!NOTE]
> If the "Configure Automatic Updates" policy is disabled, this policy has no effect.

> [!NOTE]
> This policy isn't supported on Windows RT. Setting this policy won't have any effect on Windows RT PCs.
<!-- DetectionFrequency-Description-End -->

<!-- DetectionFrequency-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This policy should be enabled only when [UpdateServiceUrl](#updateserviceurl) is configured to point the device at a WSUS server rather than Microsoft Update.

> [!NOTE]
> There is a random variant of 0-4 hours applied to the scan frequency, which cannot be configured.
<!-- DetectionFrequency-Editable-End -->

<!-- DetectionFrequency-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-22]` |
| Default Value  | 22 |
<!-- DetectionFrequency-DFProperties-End -->

<!-- DetectionFrequency-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DetectionFrequency_Title |
| Friendly Name | Automatic Updates detection frequency |
| Element Name | interval (hours) |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Server Update Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate\AU |
| ADMX File Name | WindowsUpdate.admx |
<!-- DetectionFrequency-GpMapping-End -->

<!-- DetectionFrequency-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DetectionFrequency-Examples-End -->

<!-- DetectionFrequency-End -->

<!-- DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection-Begin -->
### DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection

<!-- DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 with [KB4598231](https://support.microsoft.com/help/4598231) [10.0.10240.18818] and later <br> ✅ Windows 10, version 1607 with [KB4598243](https://support.microsoft.com/help/4598243) [10.0.14393.4169] and later <br> ✅ Windows 10, version 1703 with [KB4520010](https://support.microsoft.com/help/4520010) [10.0.15063.2108] and later <br> ✅ Windows 10, version 1709 with [KB4580328](https://support.microsoft.com/help/4580328) [10.0.16299.2166] and later <br> ✅ Windows 10, version 1803 with [KB4598245](https://support.microsoft.com/help/4598245) [10.0.17134.1967] and later <br> ✅ Windows 10, version 1809 with [KB4598230](https://support.microsoft.com/help/4598230) [10.0.17763.1697] and later <br> ✅ Windows 10, version 1903 [10.0.18362.1316] and later <br> ✅ Windows 10, version 1909 with [KB4598229](https://support.microsoft.com/help/4598229) [10.0.18363.1316] and later <br> ✅ Windows 10, version 2004 with [KB4598242](https://support.microsoft.com/help/4598242) [10.0.19041.746] and later <br> ✅ Windows 10, version 20H2 with [KB4598242](https://support.microsoft.com/help/4598242) [10.0.19042.746] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection-Applicability-End -->

<!-- DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection
```
<!-- DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection-OmaUri-End -->

<!-- DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection-Description-End -->

<!-- DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> By default, certificate pinning for Windows Update client isn't enforced. To ensure the highest levels of security, we recommended using WSUS TLS certificate pinning on all devices.
<!-- DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection-Editable-End -->

<!-- DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection-DFProperties-End -->

<!-- DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection-AllowedValues-End -->

<!-- DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | CorpWuURL |
| Friendly Name | Specify intranet Microsoft update service location |
| Element Name | Don't enforce TLS certificate pinning for Windows Update client for detecting updates. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Server Update Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection-GpMapping-End -->

<!-- DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection-Examples-End -->

<!-- DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection-End -->

<!-- FillEmptyContentUrls-Begin -->
### FillEmptyContentUrls

<!-- FillEmptyContentUrls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- FillEmptyContentUrls-Applicability-End -->

<!-- FillEmptyContentUrls-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/FillEmptyContentUrls
```
<!-- FillEmptyContentUrls-OmaUri-End -->

<!-- FillEmptyContentUrls-Description-Begin -->
<!-- Description-Source-DDF -->
Allows Windows Update Agent to determine the download URL when it's missing from the metadata. This scenario will occur when intranet update service stores the metadata files but the download contents are stored in the ISV file cache (specified as the alternate download URL).

> [!NOTE]
> This setting should only be used in combination with an alternate download URL and configured to use ISV file cache. This setting is used when the intranet update service doesn't provide download URLs in the update metadata for files which are available on the alternate download server.
<!-- FillEmptyContentUrls-Description-End -->

<!-- FillEmptyContentUrls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- FillEmptyContentUrls-Editable-End -->

<!-- FillEmptyContentUrls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- FillEmptyContentUrls-DFProperties-End -->

<!-- FillEmptyContentUrls-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- FillEmptyContentUrls-AllowedValues-End -->

<!-- FillEmptyContentUrls-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | CorpWuURL |
| Friendly Name | Specify intranet Microsoft update service location |
| Element Name | Download files with no Url in the metadata if alternate download server is set. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Server Update Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- FillEmptyContentUrls-GpMapping-End -->

<!-- FillEmptyContentUrls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- FillEmptyContentUrls-Examples-End -->

<!-- FillEmptyContentUrls-End -->

<!-- SetPolicyDrivenUpdateSourceForDriverUpdates-Begin -->
### SetPolicyDrivenUpdateSourceForDriverUpdates

<!-- SetPolicyDrivenUpdateSourceForDriverUpdates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.371] and later <br> ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 10, version 21H2 [10.0.19044.1288] and later <br> ✅ Windows 10, version 22H2 [10.0.19045.2130] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SetPolicyDrivenUpdateSourceForDriverUpdates-Applicability-End -->

<!-- SetPolicyDrivenUpdateSourceForDriverUpdates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/SetPolicyDrivenUpdateSourceForDriverUpdates
```
<!-- SetPolicyDrivenUpdateSourceForDriverUpdates-OmaUri-End -->

<!-- SetPolicyDrivenUpdateSourceForDriverUpdates-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- SetPolicyDrivenUpdateSourceForDriverUpdates-Description-End -->

<!-- SetPolicyDrivenUpdateSourceForDriverUpdates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Configure this policy to specify whether to receive **Windows Driver Updates** from Windows Update endpoint, managed by Windows Update for Business policies, or through your configured Windows Server Update Service (WSUS) server. If you configure this policy, also configure the scan source policies for other update types:

- SetPolicyDrivenUpdateSourceForFeatureUpdates
- SetPolicyDrivenUpdateSourceForQualityUpdates
- SetPolicyDrivenUpdateSourceForOtherUpdates

> [!NOTE]
> If you have not properly configured Update/UpdateServiceUrl correctly to point to your WSUS server, this policy will have no effect.
<!-- SetPolicyDrivenUpdateSourceForDriverUpdates-Editable-End -->

<!-- SetPolicyDrivenUpdateSourceForDriverUpdates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- SetPolicyDrivenUpdateSourceForDriverUpdates-DFProperties-End -->

<!-- SetPolicyDrivenUpdateSourceForDriverUpdates-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Detect, download and deploy Driver Updates from Windows Update. |
| 1 (Default) | Detect, download and deploy Driver Updates from Windows Server Update Services (WSUS). |
<!-- SetPolicyDrivenUpdateSourceForDriverUpdates-AllowedValues-End -->

<!-- SetPolicyDrivenUpdateSourceForDriverUpdates-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | CorpWuURL |
| Friendly Name | Specify intranet Microsoft update service location |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Server Update Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- SetPolicyDrivenUpdateSourceForDriverUpdates-GpMapping-End -->

<!-- SetPolicyDrivenUpdateSourceForDriverUpdates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetPolicyDrivenUpdateSourceForDriverUpdates-Examples-End -->

<!-- SetPolicyDrivenUpdateSourceForDriverUpdates-End -->

<!-- SetPolicyDrivenUpdateSourceForFeatureUpdates-Begin -->
### SetPolicyDrivenUpdateSourceForFeatureUpdates

<!-- SetPolicyDrivenUpdateSourceForFeatureUpdates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.371] and later <br> ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 10, version 21H2 [10.0.19044.1288] and later <br> ✅ Windows 10, version 22H2 [10.0.19045.2130] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SetPolicyDrivenUpdateSourceForFeatureUpdates-Applicability-End -->

<!-- SetPolicyDrivenUpdateSourceForFeatureUpdates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/SetPolicyDrivenUpdateSourceForFeatureUpdates
```
<!-- SetPolicyDrivenUpdateSourceForFeatureUpdates-OmaUri-End -->

<!-- SetPolicyDrivenUpdateSourceForFeatureUpdates-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- SetPolicyDrivenUpdateSourceForFeatureUpdates-Description-End -->

<!-- SetPolicyDrivenUpdateSourceForFeatureUpdates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Configure this policy to specify whether to receive **Windows Feature Updates** from Windows Update endpoint, managed by Windows Update for Business policies, or through your configured Windows Server Update Service (WSUS) server. If you configure this policy, also configure the scan source policies for other update types:

- SetPolicyDrivenUpdateSourceForQualityUpdates
- SetPolicyDrivenUpdateSourceForDriverUpdates
- SetPolicyDrivenUpdateSourceForOtherUpdates

> [!NOTE]
> - If you have not properly configured Update/UpdateServiceUrl correctly to point to your WSUS server, this policy will have no effect.
> - If you're also using the **Specify settings for optional component installation and component repair** ([ADMX_Servicing](policy-csp-admx-servicing.md)) policy to enable content for FoDs and language packs, see [How to make Features on Demand and language packs available when you're using WSUS or Configuration Manager](/windows/deployment/update/fod-and-lang-packs) to verify your policy configuration.
<!-- SetPolicyDrivenUpdateSourceForFeatureUpdates-Editable-End -->

<!-- SetPolicyDrivenUpdateSourceForFeatureUpdates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- SetPolicyDrivenUpdateSourceForFeatureUpdates-DFProperties-End -->

<!-- SetPolicyDrivenUpdateSourceForFeatureUpdates-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Detect, download and deploy Feature Updates from Windows Update. |
| 1 (Default) | Detect, download and deploy Feature Updates from Windows Server Update Services (WSUS). |
<!-- SetPolicyDrivenUpdateSourceForFeatureUpdates-AllowedValues-End -->

<!-- SetPolicyDrivenUpdateSourceForFeatureUpdates-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | CorpWuURL |
| Friendly Name | Specify intranet Microsoft update service location |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Server Update Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- SetPolicyDrivenUpdateSourceForFeatureUpdates-GpMapping-End -->

<!-- SetPolicyDrivenUpdateSourceForFeatureUpdates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetPolicyDrivenUpdateSourceForFeatureUpdates-Examples-End -->

<!-- SetPolicyDrivenUpdateSourceForFeatureUpdates-End -->

<!-- SetPolicyDrivenUpdateSourceForOtherUpdates-Begin -->
### SetPolicyDrivenUpdateSourceForOtherUpdates

<!-- SetPolicyDrivenUpdateSourceForOtherUpdates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.371] and later <br> ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 10, version 21H2 [10.0.19044.1288] and later <br> ✅ Windows 10, version 22H2 [10.0.19045.2130] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SetPolicyDrivenUpdateSourceForOtherUpdates-Applicability-End -->

<!-- SetPolicyDrivenUpdateSourceForOtherUpdates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/SetPolicyDrivenUpdateSourceForOtherUpdates
```
<!-- SetPolicyDrivenUpdateSourceForOtherUpdates-OmaUri-End -->

<!-- SetPolicyDrivenUpdateSourceForOtherUpdates-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- SetPolicyDrivenUpdateSourceForOtherUpdates-Description-End -->

<!-- SetPolicyDrivenUpdateSourceForOtherUpdates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Configure this policy to specify whether to receive **Other Updates** from Windows Update endpoint, managed by Windows Update for Business policies, or through your configured Windows Server Update Service (WSUS) server. If you configure this policy, also configure the scan source policies for other update types:

- SetPolicyDrivenUpdateSourceForFeatureUpdates
- SetPolicyDrivenUpdateSourceForQualityUpdates
- SetPolicyDrivenUpdateSourceForDriverUpdates

> [!NOTE]
> If you have not properly configured Update/UpdateServiceUrl correctly to point to your WSUS server, this policy will have no effect.
<!-- SetPolicyDrivenUpdateSourceForOtherUpdates-Editable-End -->

<!-- SetPolicyDrivenUpdateSourceForOtherUpdates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- SetPolicyDrivenUpdateSourceForOtherUpdates-DFProperties-End -->

<!-- SetPolicyDrivenUpdateSourceForOtherUpdates-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Detect, download and deploy other Updates from Windows Update. |
| 1 (Default) | Detect, download and deploy other Updates from Windows Server Update Services (WSUS). |
<!-- SetPolicyDrivenUpdateSourceForOtherUpdates-AllowedValues-End -->

<!-- SetPolicyDrivenUpdateSourceForOtherUpdates-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | CorpWuURL |
| Friendly Name | Specify intranet Microsoft update service location |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Server Update Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- SetPolicyDrivenUpdateSourceForOtherUpdates-GpMapping-End -->

<!-- SetPolicyDrivenUpdateSourceForOtherUpdates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetPolicyDrivenUpdateSourceForOtherUpdates-Examples-End -->

<!-- SetPolicyDrivenUpdateSourceForOtherUpdates-End -->

<!-- SetPolicyDrivenUpdateSourceForQualityUpdates-Begin -->
### SetPolicyDrivenUpdateSourceForQualityUpdates

<!-- SetPolicyDrivenUpdateSourceForQualityUpdates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.371] and later <br> ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 10, version 21H2 [10.0.19044.1288] and later <br> ✅ Windows 10, version 22H2 [10.0.19045.2130] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SetPolicyDrivenUpdateSourceForQualityUpdates-Applicability-End -->

<!-- SetPolicyDrivenUpdateSourceForQualityUpdates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/SetPolicyDrivenUpdateSourceForQualityUpdates
```
<!-- SetPolicyDrivenUpdateSourceForQualityUpdates-OmaUri-End -->

<!-- SetPolicyDrivenUpdateSourceForQualityUpdates-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- SetPolicyDrivenUpdateSourceForQualityUpdates-Description-End -->

<!-- SetPolicyDrivenUpdateSourceForQualityUpdates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Configure this policy to specify whether to receive **Windows Quality Updates** from Windows Update endpoint, managed by Windows Update for Business policies, or through your configured Windows Server Update Service (WSUS) server. If you configure this policy, also configure the scan source policies for other update types:

- SetPolicyDrivenUpdateSourceForFeatureUpdates
- SetPolicyDrivenUpdateSourceForDriverUpdates
- SetPolicyDrivenUpdateSourceForOtherUpdates

> [!NOTE]
> - If you have not properly configured Update/UpdateServiceUrl correctly to point to your WSUS server, this policy will have no effect.
> - If you're also using the **Specify settings for optional component installation and component repair** ([ADMX_Servicing](policy-csp-admx-servicing.md)) policy to enable content for FoDs and language packs, see [How to make Features on Demand and language packs available when you're using WSUS or Configuration Manager](/windows/deployment/update/fod-and-lang-packs) to verify your policy configuration.
<!-- SetPolicyDrivenUpdateSourceForQualityUpdates-Editable-End -->

<!-- SetPolicyDrivenUpdateSourceForQualityUpdates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- SetPolicyDrivenUpdateSourceForQualityUpdates-DFProperties-End -->

<!-- SetPolicyDrivenUpdateSourceForQualityUpdates-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Detect, download and deploy Quality Updates from Windows Update. |
| 1 (Default) | Detect, download and deploy Quality Updates from Windows Server Update Services (WSUS). |
<!-- SetPolicyDrivenUpdateSourceForQualityUpdates-AllowedValues-End -->

<!-- SetPolicyDrivenUpdateSourceForQualityUpdates-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | CorpWuURL |
| Friendly Name | Specify intranet Microsoft update service location |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Server Update Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- SetPolicyDrivenUpdateSourceForQualityUpdates-GpMapping-End -->

<!-- SetPolicyDrivenUpdateSourceForQualityUpdates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetPolicyDrivenUpdateSourceForQualityUpdates-Examples-End -->

<!-- SetPolicyDrivenUpdateSourceForQualityUpdates-End -->

<!-- SetProxyBehaviorForUpdateDetection-Begin -->
### SetProxyBehaviorForUpdateDetection

<!-- SetProxyBehaviorForUpdateDetection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 with [KB4577049](https://support.microsoft.com/help/4577049) [10.0.10240.18696] and later <br> ✅ Windows 10, version 1607 with [KB4577015](https://support.microsoft.com/help/4577015) [10.0.14393.3930] and later <br> ✅ Windows 10, version 1703 [10.0.15063.2500] and later <br> ✅ Windows 10, version 1709 with [KB4577041](https://support.microsoft.com/help/4577041) [10.0.16299.2107] and later <br> ✅ Windows 10, version 1803 with [KB4577032](https://support.microsoft.com/help/4577032) [10.0.17134.1726] and later <br> ✅ Windows 10, version 1809 with [KB4570333](https://support.microsoft.com/help/4570333) [10.0.17763.1457] and later <br> ✅ Windows 10, version 1903 with [KB4574727](https://support.microsoft.com/help/4574727) [10.0.18362.1082] and later <br> ✅ Windows 10, version 1909 with [KB4574727](https://support.microsoft.com/help/4574727) [10.0.18363.1082] and later <br> ✅ Windows 10, version 2004 with [KB4571756](https://support.microsoft.com/help/4571756) [10.0.19041.508] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SetProxyBehaviorForUpdateDetection-Applicability-End -->

<!-- SetProxyBehaviorForUpdateDetection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/SetProxyBehaviorForUpdateDetection
```
<!-- SetProxyBehaviorForUpdateDetection-OmaUri-End -->

<!-- SetProxyBehaviorForUpdateDetection-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- SetProxyBehaviorForUpdateDetection-Description-End -->

<!-- SetProxyBehaviorForUpdateDetection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
By default, HTTP WSUS servers scan only if system proxy is configured. This policy setting allows you to configure user proxy as a fallback for detecting updates while using an HTTP-based intranet server despite the vulnerabilities it presents.

This policy setting doesn't impact those customers who have, per Microsoft recommendation, secured their WSUS server with TLS/SSL protocol, thereby using HTTPS-based intranet servers to keep systems secure. That said, if a proxy is required, we recommend configuring a system proxy to ensure the highest level of security.

> [!NOTE]
> Configuring this policy setting to 1 exposes your environment to potential security risk and makes scans unsecure.
<!-- SetProxyBehaviorForUpdateDetection-Editable-End -->

<!-- SetProxyBehaviorForUpdateDetection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- SetProxyBehaviorForUpdateDetection-DFProperties-End -->

<!-- SetProxyBehaviorForUpdateDetection-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Only use system proxy for detecting updates (default). |
| 1 | Allow user proxy to be used as a fallback if detection using system proxy fails. |
<!-- SetProxyBehaviorForUpdateDetection-AllowedValues-End -->

<!-- SetProxyBehaviorForUpdateDetection-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | CorpWuURL |
| Friendly Name | Specify intranet Microsoft update service location |
| Element Name | Select the proxy behavior for Windows Update client for detecting updates. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Server Update Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- SetProxyBehaviorForUpdateDetection-GpMapping-End -->

<!-- SetProxyBehaviorForUpdateDetection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetProxyBehaviorForUpdateDetection-Examples-End -->

<!-- SetProxyBehaviorForUpdateDetection-End -->

<!-- UpdateServiceUrl-Begin -->
### UpdateServiceUrl

<!-- UpdateServiceUrl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- UpdateServiceUrl-Applicability-End -->

<!-- UpdateServiceUrl-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/UpdateServiceUrl
```
<!-- UpdateServiceUrl-OmaUri-End -->

<!-- UpdateServiceUrl-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the device to check for updates from a WSUS server instead of Microsoft Update. This is useful for on-premises MDMs that need to update devices that can't connect to the Internet.
<!-- UpdateServiceUrl-Description-End -->

<!-- UpdateServiceUrl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The following list shows the supported values:

- Not configured: The device checks for updates from Microsoft Update.
- Set to a URL, such as `http://abcd-srv:8530`: The device checks for updates from the WSUS server at the specified URL.
<!-- UpdateServiceUrl-Editable-End -->

<!-- UpdateServiceUrl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | CorpWSUS |
<!-- UpdateServiceUrl-DFProperties-End -->

<!-- UpdateServiceUrl-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | CorpWuURL |
| Friendly Name | Specify intranet Microsoft update service location |
| Element Name | Set the intranet update service for detecting updates. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Server Update Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- UpdateServiceUrl-GpMapping-End -->

<!-- UpdateServiceUrl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

```xml
<Replace>
    <CmdID>$CmdID$</CmdID>
    <Item>
        <Meta>
            <Format>chr</Format>
            <Type>text/plain</Type>
        </Meta>
        <Target>
            <LocURI>./Vendor/MSFT/Policy/Config/Update/UpdateServiceUrl</LocURI>
        </Target>
        <Data>http://abcd-srv:8530</Data>
    </Item>
</Replace>
```
<!-- UpdateServiceUrl-Examples-End -->

<!-- UpdateServiceUrl-End -->

<!-- UpdateServiceUrlAlternate-Begin -->
### UpdateServiceUrlAlternate

<!-- UpdateServiceUrlAlternate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- UpdateServiceUrlAlternate-Applicability-End -->

<!-- UpdateServiceUrlAlternate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/UpdateServiceUrlAlternate
```
<!-- UpdateServiceUrlAlternate-OmaUri-End -->

<!-- UpdateServiceUrlAlternate-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies an alternate intranet server to host updates from Microsoft Update. You can then use this update service to automatically update computers on your network. This setting lets you specify a server on your network to function as an internal update service. The Automatic Updates client will search this service for updates that apply to the computers on your network. To use this setting, you must set two server name values: the server from which the Automatic Updates client detects and downloads updates, and the server to which updated workstations upload statistics. You can set both values to be the same server. An optional server name value can be specified to configure Windows Update agent, and download updates from an alternate download server instead of WSUS Server. Value type is string and the default value is an empty string, . If the setting isn't configured, and if Automatic Updates isn't disabled by policy or user preference, the Automatic Updates client connects directly to the Windows Update site on the Internet.

> [!NOTE]
> If the Configure Automatic Updates Group Policy is disabled, then this policy has no effect. If the Alternate Download Server Group Policy isn't set, it will use the WSUS server by default to download updates. This policy isn't supported on Windows RT. Setting this policy won't have any effect on Windows RT PCs.
<!-- UpdateServiceUrlAlternate-Description-End -->

<!-- UpdateServiceUrlAlternate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UpdateServiceUrlAlternate-Editable-End -->

<!-- UpdateServiceUrlAlternate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- UpdateServiceUrlAlternate-DFProperties-End -->

<!-- UpdateServiceUrlAlternate-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | CorpWuURL |
| Friendly Name | Specify intranet Microsoft update service location |
| Element Name | Set the alternate download server. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage updates offered from Windows Server Update Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- UpdateServiceUrlAlternate-GpMapping-End -->

<!-- UpdateServiceUrlAlternate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UpdateServiceUrlAlternate-Examples-End -->

<!-- UpdateServiceUrlAlternate-End -->

## Manage end user experience

<!-- ActiveHoursEnd-Begin -->
### ActiveHoursEnd

<!-- ActiveHoursEnd-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- ActiveHoursEnd-Applicability-End -->

<!-- ActiveHoursEnd-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ActiveHoursEnd
```
<!-- ActiveHoursEnd-OmaUri-End -->

<!-- ActiveHoursEnd-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this policy, the PC won't automatically restart after updates during active hours. The PC will attempt to restart outside of active hours.

Note that the PC must restart for certain updates to take effect.

- If you disable or don't configure this policy and have no other reboot group policies, the user selected active hours will be in effect.

If any of the following two policies are enabled, this policy has no effect:

1. No auto-restart with logged-on users for scheduled automatic updates installations.

1. Always automatically restart at scheduled time.

Note that the default max active hours range is 18 hours from the active hours start time unless otherwise configured via the Specify active hours range for auto-restarts policy.
<!-- ActiveHoursEnd-Description-End -->

<!-- ActiveHoursEnd-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ActiveHoursEnd-Editable-End -->

<!-- ActiveHoursEnd-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-23]` |
| Default Value  | 17 |
<!-- ActiveHoursEnd-DFProperties-End -->

<!-- ActiveHoursEnd-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ActiveHours |
| Friendly Name | Turn off auto-restart for updates during active hours |
| Element Name | End. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- ActiveHoursEnd-GpMapping-End -->

<!-- ActiveHoursEnd-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ActiveHoursEnd-Examples-End -->

<!-- ActiveHoursEnd-End -->

<!-- ActiveHoursMaxRange-Begin -->
### ActiveHoursMaxRange

<!-- ActiveHoursMaxRange-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- ActiveHoursMaxRange-Applicability-End -->

<!-- ActiveHoursMaxRange-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ActiveHoursMaxRange
```
<!-- ActiveHoursMaxRange-OmaUri-End -->

<!-- ActiveHoursMaxRange-Description-Begin -->
<!-- Description-Source-ADMX -->
Enable this policy to specify the maximum number of hours from the start time that users can set their active hours.

The max active hours range can be set between 8 and 18 hours.

If you disable or don't configure this policy, the default max active hours range will be used.
<!-- ActiveHoursMaxRange-Description-End -->

<!-- ActiveHoursMaxRange-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ActiveHoursMaxRange-Editable-End -->

<!-- ActiveHoursMaxRange-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[8-18]` |
| Default Value  | 18 |
<!-- ActiveHoursMaxRange-DFProperties-End -->

<!-- ActiveHoursMaxRange-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ActiveHoursMaxRange |
| Friendly Name | Specify active hours range for auto-restarts |
| Element Name | Max range. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- ActiveHoursMaxRange-GpMapping-End -->

<!-- ActiveHoursMaxRange-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ActiveHoursMaxRange-Examples-End -->

<!-- ActiveHoursMaxRange-End -->

<!-- ActiveHoursStart-Begin -->
### ActiveHoursStart

<!-- ActiveHoursStart-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- ActiveHoursStart-Applicability-End -->

<!-- ActiveHoursStart-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ActiveHoursStart
```
<!-- ActiveHoursStart-OmaUri-End -->

<!-- ActiveHoursStart-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this policy, the PC won't automatically restart after updates during active hours. The PC will attempt to restart outside of active hours.

Note that the PC must restart for certain updates to take effect.

- If you disable or don't configure this policy and have no other reboot group policies, the user selected active hours will be in effect.

If any of the following two policies are enabled, this policy has no effect:

1. No auto-restart with logged-on users for scheduled automatic updates installations.

1. Always automatically restart at scheduled time.

Note that the default max active hours range is 18 hours from the active hours start time unless otherwise configured via the Specify active hours range for auto-restarts policy.
<!-- ActiveHoursStart-Description-End -->

<!-- ActiveHoursStart-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ActiveHoursStart-Editable-End -->

<!-- ActiveHoursStart-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-23]` |
| Default Value  | 8 |
<!-- ActiveHoursStart-DFProperties-End -->

<!-- ActiveHoursStart-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ActiveHours |
| Friendly Name | Turn off auto-restart for updates during active hours |
| Element Name | Start. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- ActiveHoursStart-GpMapping-End -->

<!-- ActiveHoursStart-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ActiveHoursStart-Examples-End -->

<!-- ActiveHoursStart-End -->

<!-- AllowAutoUpdate-Begin -->
### AllowAutoUpdate

<!-- AllowAutoUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowAutoUpdate-Applicability-End -->

<!-- AllowAutoUpdate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/AllowAutoUpdate
```
<!-- AllowAutoUpdate-OmaUri-End -->

<!-- AllowAutoUpdate-Description-Begin -->
<!-- Description-Source-DDF -->
Enables the IT admin to manage automatic update behavior to scan, download, and install updates. Important. This option should be used only for systems under regulatory compliance, as you won't get security updates as well. If the policy isn't configured, end-users get the default behavior (Auto install and restart).
<!-- AllowAutoUpdate-Description-End -->

<!-- AllowAutoUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowAutoUpdate-Editable-End -->

<!-- AllowAutoUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 2 |
<!-- AllowAutoUpdate-DFProperties-End -->

<!-- AllowAutoUpdate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Notify the user before downloading the update. This policy is used by the enterprise who wants to enable the end-users to manage data usage. With this option users are notified when there are updates that apply to the device and are ready for download. Users can download and install the updates from the Windows Update control panel. |
| 1 | Auto install the update and then notify the user to schedule a device restart. Updates are downloaded automatically on non-metered networks and installed during "Automatic Maintenance" when the device isn't in use and isn't running on battery power. If automatic maintenance is unable to install updates for two days, Windows Update will install updates immediately. If the installation requires a restart, the end-user is prompted to schedule the restart time. The end-user has up to seven days to schedule the restart and after that, a restart of the device is forced. Enabling the end-user to control the start time reduces the risk of accidental data loss caused by applications that don't shutdown properly on restart. |
| 2 (Default) | Auto install and restart. Updates are downloaded automatically on non-metered networks and installed during "Automatic Maintenance" when the device isn't in use and isn't running on battery power. If automatic maintenance is unable to install updates for two days, Windows Update will install updates right away. If a restart is required, then the device is automatically restarted when the device isn't actively being used. This is the default behavior for unmanaged devices. Devices are updated quickly, but it increases the risk of accidental data loss caused by an application that doesn't shutdown properly on restart. |
| 3 | Auto install and restart at a specified time. The IT specifies the installation day and time. If no day and time are specified, the default is 3 AM daily. Automatic installation happens at this time and device restart happens after a 15-minute countdown. If the user is logged in when Windows is ready to restart, the user can interrupt the 15-minute countdown to delay the restart. |
| 4 | Auto install and restart without end-user control. Updates are downloaded automatically on non-metered networks and installed during "Automatic Maintenance" when the device isn't in use and isn't running on battery power. If automatic maintenance is unable to install updates for two days, Windows Update will install updates right away. If a restart is required, then the device is automatically restarted when the device isn't actively being used. This setting option also sets the end-user control panel to read-only. |
| 5 | Turn off automatic updates. |
<!-- AllowAutoUpdate-AllowedValues-End -->

<!-- AllowAutoUpdate-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AutoUpdateCfg |
| Friendly Name | Configure Automatic Updates |
| Element Name | Configure automatic updating. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate\AU |
| ADMX File Name | WindowsUpdate.admx |
<!-- AllowAutoUpdate-GpMapping-End -->

<!-- AllowAutoUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowAutoUpdate-Examples-End -->

<!-- AllowAutoUpdate-End -->

<!-- AllowAutoWindowsUpdateDownloadOverMeteredNetwork-Begin -->
### AllowAutoWindowsUpdateDownloadOverMeteredNetwork

<!-- AllowAutoWindowsUpdateDownloadOverMeteredNetwork-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- AllowAutoWindowsUpdateDownloadOverMeteredNetwork-Applicability-End -->

<!-- AllowAutoWindowsUpdateDownloadOverMeteredNetwork-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/AllowAutoWindowsUpdateDownloadOverMeteredNetwork
```
<!-- AllowAutoWindowsUpdateDownloadOverMeteredNetwork-OmaUri-End -->

<!-- AllowAutoWindowsUpdateDownloadOverMeteredNetwork-Description-Begin -->
<!-- Description-Source-ADMX -->
Enabling this policy will automatically download updates, even over metered data connections (charges may apply)
<!-- AllowAutoWindowsUpdateDownloadOverMeteredNetwork-Description-End -->

<!-- AllowAutoWindowsUpdateDownloadOverMeteredNetwork-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
A significant number of devices primarily use cellular data and don't have Wi-Fi access, which leads to a lower number of devices getting updates. Since a large number of devices have large data plans or unlimited data, this policy can unblock devices from getting updates.

This policy is accessible through the Update setting in the user interface or Group Policy.
<!-- AllowAutoWindowsUpdateDownloadOverMeteredNetwork-Editable-End -->

<!-- AllowAutoWindowsUpdateDownloadOverMeteredNetwork-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowAutoWindowsUpdateDownloadOverMeteredNetwork-DFProperties-End -->

<!-- AllowAutoWindowsUpdateDownloadOverMeteredNetwork-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not allowed. |
| 1 | Allowed. |
<!-- AllowAutoWindowsUpdateDownloadOverMeteredNetwork-AllowedValues-End -->

<!-- AllowAutoWindowsUpdateDownloadOverMeteredNetwork-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowAutoWindowsUpdateDownloadOverMeteredNetwork |
| Friendly Name | Allow updates to be downloaded automatically over metered connections |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| Registry Value Name | AllowAutoWindowsUpdateDownloadOverMeteredNetwork |
| ADMX File Name | WindowsUpdate.admx |
<!-- AllowAutoWindowsUpdateDownloadOverMeteredNetwork-GpMapping-End -->

<!-- AllowAutoWindowsUpdateDownloadOverMeteredNetwork-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowAutoWindowsUpdateDownloadOverMeteredNetwork-Examples-End -->

<!-- AllowAutoWindowsUpdateDownloadOverMeteredNetwork-End -->

<!-- AllowMUUpdateService-Begin -->
### AllowMUUpdateService

<!-- AllowMUUpdateService-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowMUUpdateService-Applicability-End -->

<!-- AllowMUUpdateService-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/AllowMUUpdateService
```
<!-- AllowMUUpdateService-OmaUri-End -->

<!-- AllowMUUpdateService-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the IT admin to manage whether to scan for app updates from Microsoft Update.
<!-- AllowMUUpdateService-Description-End -->

<!-- AllowMUUpdateService-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> - For a list of other Microsoft products that might be updated, see [Update other Microsoft products](/windows/deployment/update/update-other-microsoft-products).
> - Setting this policy back to 0 or Not configured doesn't revert the configuration to receive updates from Microsoft Update automatically. In order to revert the configuration, you can run the PowerShell commands that are listed below to remove the Microsoft Update service:
>
> ```powershell
> $MUSM = New-Object -ComObject "Microsoft.Update.ServiceManager"
> $MUSM.RemoveService("7971f918-a847-4430-9279-4a52d1efe18d")
> ```
<!-- AllowMUUpdateService-Editable-End -->

<!-- AllowMUUpdateService-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowMUUpdateService-DFProperties-End -->

<!-- AllowMUUpdateService-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not allowed or not configured. |
| 1 | Allowed. Accepts updates received through Microsoft Update. |
<!-- AllowMUUpdateService-AllowedValues-End -->

<!-- AllowMUUpdateService-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AutoUpdateCfg |
| Friendly Name | Configure Automatic Updates |
| Element Name | Install updates for other Microsoft products. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate\AU |
| ADMX File Name | WindowsUpdate.admx |
<!-- AllowMUUpdateService-GpMapping-End -->

<!-- AllowMUUpdateService-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowMUUpdateService-Examples-End -->

<!-- AllowMUUpdateService-End -->

<!-- AllowTemporaryEnterpriseFeatureControl-Begin -->
### AllowTemporaryEnterpriseFeatureControl

<!-- AllowTemporaryEnterpriseFeatureControl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 with [KB5022913](https://support.microsoft.com/help/5022913) [10.0.22621.1344] and later |
<!-- AllowTemporaryEnterpriseFeatureControl-Applicability-End -->

<!-- AllowTemporaryEnterpriseFeatureControl-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/AllowTemporaryEnterpriseFeatureControl
```
<!-- AllowTemporaryEnterpriseFeatureControl-OmaUri-End -->

<!-- AllowTemporaryEnterpriseFeatureControl-Description-Begin -->
<!-- Description-Source-ADMX -->
Features introduced via servicing (outside of the annual feature update) are off by default for devices that have their Windows updates managed*.

- If this policy is configured to "Enabled", then all features available in the latest monthly quality update installed will be on.

- If this policy is set to "Not Configured" or "Disabled" then features that are shipped via a monthly quality update (servicing) will remain off until the feature update that includes these features is installed.

*Windows update managed devices are those that have their Windows updates managed via policy; whether via the cloud using Windows Update for Business or on-premises with Windows Server Update Services (WSUS).
<!-- AllowTemporaryEnterpriseFeatureControl-Description-End -->

<!-- AllowTemporaryEnterpriseFeatureControl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> In Intune, this setting is known as **Allow Temporary Enterprise Feature Control** and is available in the Settings Catalog. By default, all features introduced via servicing that are behind the commercial control are off for Windows-Update-managed devices. When set to Allowed, these features are enabled and turned on. For more information, see [Blog: Commercial control for continuous innovation](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/commercial-control-for-continuous-innovation/ba-p/3737575).
<!-- AllowTemporaryEnterpriseFeatureControl-Editable-End -->

<!-- AllowTemporaryEnterpriseFeatureControl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowTemporaryEnterpriseFeatureControl-DFProperties-End -->

<!-- AllowTemporaryEnterpriseFeatureControl-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not allowed. |
| 1 | Allowed. |
<!-- AllowTemporaryEnterpriseFeatureControl-AllowedValues-End -->

<!-- AllowTemporaryEnterpriseFeatureControl-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowTemporaryEnterpriseFeatureControl |
| Friendly Name | Enable features introduced via servicing that are off by default |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| Registry Value Name | AllowTemporaryEnterpriseFeatureControl |
| ADMX File Name | WindowsUpdate.admx |
<!-- AllowTemporaryEnterpriseFeatureControl-GpMapping-End -->

<!-- AllowTemporaryEnterpriseFeatureControl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowTemporaryEnterpriseFeatureControl-Examples-End -->

<!-- AllowTemporaryEnterpriseFeatureControl-End -->

<!-- ConfigureDeadlineForFeatureUpdates-Begin -->
### ConfigureDeadlineForFeatureUpdates

<!-- ConfigureDeadlineForFeatureUpdates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- ConfigureDeadlineForFeatureUpdates-Applicability-End -->

<!-- ConfigureDeadlineForFeatureUpdates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ConfigureDeadlineForFeatureUpdates
```
<!-- ConfigureDeadlineForFeatureUpdates-OmaUri-End -->

<!-- ConfigureDeadlineForFeatureUpdates-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Number of days before feature updates are installed on devices automatically regardless of active hours. Before the deadline passes, users will be able to schedule restarts, and automatic restarts can happen outside of active hours. When set to 0, updates will download and install immediately, but might not finish within the day due to device availability and network connectivity.
<!-- ConfigureDeadlineForFeatureUpdates-Description-End -->

<!-- ConfigureDeadlineForFeatureUpdates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
>
> - After the deadline passes, restarts will occur regardless of active hours and users won't be able to reschedule.
> - When this policy is used, the download, installation, and reboot settings from [Update/AllowAutoUpdate](#allowautoupdate) are ignored.
<!-- ConfigureDeadlineForFeatureUpdates-Editable-End -->

<!-- ConfigureDeadlineForFeatureUpdates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-30]` |
| Default Value  | 2 |
<!-- ConfigureDeadlineForFeatureUpdates-DFProperties-End -->

<!-- ConfigureDeadlineForFeatureUpdates-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ComplianceDeadlineForFU |
| Friendly Name | Specify deadline for automatic updates and restarts for feature update |
| Element Name | Deadline (days) |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- ConfigureDeadlineForFeatureUpdates-GpMapping-End -->

<!-- ConfigureDeadlineForFeatureUpdates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureDeadlineForFeatureUpdates-Examples-End -->

<!-- ConfigureDeadlineForFeatureUpdates-End -->

<!-- ConfigureDeadlineForQualityUpdates-Begin -->
### ConfigureDeadlineForQualityUpdates

<!-- ConfigureDeadlineForQualityUpdates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- ConfigureDeadlineForQualityUpdates-Applicability-End -->

<!-- ConfigureDeadlineForQualityUpdates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ConfigureDeadlineForQualityUpdates
```
<!-- ConfigureDeadlineForQualityUpdates-OmaUri-End -->

<!-- ConfigureDeadlineForQualityUpdates-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Number of days before quality updates are installed on devices automatically regardless of active hours. Before the deadline passes, users will be able to schedule restarts, and automatic restarts can happen outside of active hours. When set to 0, updates will download and install immediately, but might not finish within the day due to device availability and network connectivity.
<!-- ConfigureDeadlineForQualityUpdates-Description-End -->

<!-- ConfigureDeadlineForQualityUpdates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
>
> - After the deadline passes, restarts will occur regardless of active hours and users won't be able to reschedule.
> - When this policy is used, the download, installation, and reboot settings from [Update/AllowAutoUpdate](#allowautoupdate) are ignored.
<!-- ConfigureDeadlineForQualityUpdates-Editable-End -->

<!-- ConfigureDeadlineForQualityUpdates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-30]` |
| Default Value  | 7 |
<!-- ConfigureDeadlineForQualityUpdates-DFProperties-End -->

<!-- ConfigureDeadlineForQualityUpdates-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ComplianceDeadline |
| Friendly Name | Specify deadline for automatic updates and restarts for quality update |
| Element Name | Deadline (days) |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- ConfigureDeadlineForQualityUpdates-GpMapping-End -->

<!-- ConfigureDeadlineForQualityUpdates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureDeadlineForQualityUpdates-Examples-End -->

<!-- ConfigureDeadlineForQualityUpdates-End -->

<!-- ConfigureDeadlineGracePeriod-Begin -->
### ConfigureDeadlineGracePeriod

<!-- ConfigureDeadlineGracePeriod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- ConfigureDeadlineGracePeriod-Applicability-End -->

<!-- ConfigureDeadlineGracePeriod-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ConfigureDeadlineGracePeriod
```
<!-- ConfigureDeadlineGracePeriod-OmaUri-End -->

<!-- ConfigureDeadlineGracePeriod-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Minimum number of days from update installation until restarts occur automatically for quality updates. This policy only takes effect when Update/ConfigureDeadlineForQualityUpdates is configured. If Update/ConfigureDeadlineForQualityUpdates is configured but this policy is not, then the default value of 2 days will take effect.
<!-- ConfigureDeadlineGracePeriod-Description-End -->

<!-- ConfigureDeadlineGracePeriod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureDeadlineGracePeriod-Editable-End -->

<!-- ConfigureDeadlineGracePeriod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-7]` |
| Default Value  | 2 |
<!-- ConfigureDeadlineGracePeriod-DFProperties-End -->

<!-- ConfigureDeadlineGracePeriod-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ComplianceDeadline |
| Friendly Name | Specify deadline for automatic updates and restarts for quality update |
| Element Name | Grace period (days) |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- ConfigureDeadlineGracePeriod-GpMapping-End -->

<!-- ConfigureDeadlineGracePeriod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureDeadlineGracePeriod-Examples-End -->

<!-- ConfigureDeadlineGracePeriod-End -->

<!-- ConfigureDeadlineGracePeriodForFeatureUpdates-Begin -->
### ConfigureDeadlineGracePeriodForFeatureUpdates

<!-- ConfigureDeadlineGracePeriodForFeatureUpdates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 with [KB5000854](https://support.microsoft.com/help/5000854) [10.0.17763.1852] and later <br> ✅ Windows 10, version 1909 with [KB5000850](https://support.microsoft.com/help/5000850) [10.0.18363.1474] and later <br> ✅ Windows 10, version 2004 with [KB5000842](https://support.microsoft.com/help/5000842) [10.0.19041.906] and later <br> ✅ Windows 10, version 20H2 with [KB5000842](https://support.microsoft.com/help/5000842) [10.0.19042.906] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ConfigureDeadlineGracePeriodForFeatureUpdates-Applicability-End -->

<!-- ConfigureDeadlineGracePeriodForFeatureUpdates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ConfigureDeadlineGracePeriodForFeatureUpdates
```
<!-- ConfigureDeadlineGracePeriodForFeatureUpdates-OmaUri-End -->

<!-- ConfigureDeadlineGracePeriodForFeatureUpdates-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Minimum number of days from update installation until restarts occur automatically for feature updates. This policy only takes effect when Update/ConfigureDeadlineForFeatureUpdates is configured. If Update/ConfigureDeadlineForFeatureUpdates is configured but this policy is not, then the value configured by Update/ConfigureDeadlineGracePeriod will be used. If Update/ConfigureDeadlineGracePeriod is also not configured, then the default value of 7 days will take effect.
<!-- ConfigureDeadlineGracePeriodForFeatureUpdates-Description-End -->

<!-- ConfigureDeadlineGracePeriodForFeatureUpdates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureDeadlineGracePeriodForFeatureUpdates-Editable-End -->

<!-- ConfigureDeadlineGracePeriodForFeatureUpdates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-7]` |
| Default Value  | 7 |
<!-- ConfigureDeadlineGracePeriodForFeatureUpdates-DFProperties-End -->

<!-- ConfigureDeadlineGracePeriodForFeatureUpdates-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ComplianceDeadlineForFU |
| Friendly Name | Specify deadline for automatic updates and restarts for feature update |
| Element Name | Grace Period (days) |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- ConfigureDeadlineGracePeriodForFeatureUpdates-GpMapping-End -->

<!-- ConfigureDeadlineGracePeriodForFeatureUpdates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureDeadlineGracePeriodForFeatureUpdates-Examples-End -->

<!-- ConfigureDeadlineGracePeriodForFeatureUpdates-End -->

<!-- ConfigureDeadlineNoAutoRebootForFeatureUpdates-Begin -->
### ConfigureDeadlineNoAutoRebootForFeatureUpdates

<!-- ConfigureDeadlineNoAutoRebootForFeatureUpdates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- ConfigureDeadlineNoAutoRebootForFeatureUpdates-Applicability-End -->

<!-- ConfigureDeadlineNoAutoRebootForFeatureUpdates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ConfigureDeadlineNoAutoRebootForFeatureUpdates
```
<!-- ConfigureDeadlineNoAutoRebootForFeatureUpdates-OmaUri-End -->

<!-- ConfigureDeadlineNoAutoRebootForFeatureUpdates-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy lets you specify the number of days before feature updates are installed on devices automatically, and a grace period after which required restarts occur automatically.

Set deadlines for feature updates and quality updates to meet your compliance goals. Updates will be downloaded and installed as soon as they're offered and automatic restarts will be attempted outside of active hours. Once the deadline has passed, restarts will occur regardless of active hours, and users won't be able to reschedule. If the deadline is set to 0 days, the update will be installed immediately upon offering, but might not finish within the day due to device availability and network connectivity.

Set a grace period for feature updates to guarantee users a minimum time to manage their restarts once updates are installed. Users will be able to schedule restarts during the grace period and Windows can still automatically restart outside of active hours if users choose not to schedule restarts. The grace period might not take effect if users already have more than the number of days set as grace period to manage their restart, based on deadline configurations.

You can set the device to delay restarting until both the deadline and grace period have expired.

If you disable or don't configure this policy, devices will get updates and will restart according to the default schedule.

This policy will override the following policies:

1. Specify deadline before auto restart for update installation
1. Specify Engaged restart transition and notification schedule for updates.

1. Always automatically restart at the scheduled time
1. Configure Automatic Updates.
<!-- ConfigureDeadlineNoAutoRebootForFeatureUpdates-Description-End -->

<!-- ConfigureDeadlineNoAutoRebootForFeatureUpdates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureDeadlineNoAutoRebootForFeatureUpdates-Editable-End -->

<!-- ConfigureDeadlineNoAutoRebootForFeatureUpdates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ConfigureDeadlineNoAutoRebootForFeatureUpdates-DFProperties-End -->

<!-- ConfigureDeadlineNoAutoRebootForFeatureUpdates-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- ConfigureDeadlineNoAutoRebootForFeatureUpdates-AllowedValues-End -->

<!-- ConfigureDeadlineNoAutoRebootForFeatureUpdates-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ComplianceDeadlineForFU |
| Friendly Name | Specify deadline for automatic updates and restarts for feature update |
| Element Name | Don't auto-restart until end of grace period. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- ConfigureDeadlineNoAutoRebootForFeatureUpdates-GpMapping-End -->

<!-- ConfigureDeadlineNoAutoRebootForFeatureUpdates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureDeadlineNoAutoRebootForFeatureUpdates-Examples-End -->

<!-- ConfigureDeadlineNoAutoRebootForFeatureUpdates-End -->

<!-- ConfigureDeadlineNoAutoRebootForQualityUpdates-Begin -->
### ConfigureDeadlineNoAutoRebootForQualityUpdates

<!-- ConfigureDeadlineNoAutoRebootForQualityUpdates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- ConfigureDeadlineNoAutoRebootForQualityUpdates-Applicability-End -->

<!-- ConfigureDeadlineNoAutoRebootForQualityUpdates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ConfigureDeadlineNoAutoRebootForQualityUpdates
```
<!-- ConfigureDeadlineNoAutoRebootForQualityUpdates-OmaUri-End -->

<!-- ConfigureDeadlineNoAutoRebootForQualityUpdates-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy lets you specify the number of days before quality updates are installed on devices automatically, and a grace period after which required restarts occur automatically.

Set deadlines for quality updates to meet your compliance goals. Updates will be downloaded and installed as soon as they're offered and automatic restarts will be attempted outside of active hours. Once the deadline has passed, restarts will occur regardless of active hours, and users won't be able to reschedule. If the deadline is set to 0 days, the update will be installed immediately upon offering, but might not finish within the day due to device availability and network connectivity.

Set a grace period for quality updates to guarantee users a minimum time to manage their restarts once updates are installed. Users will be able to schedule restarts during the grace period and Windows can still automatically restart outside of active hours if users choose not to schedule restarts. The grace period might not take effect if users already have more than the number of days set as grace period to manage their restart, based on deadline configurations.

You can set the device to delay restarting until both the deadline and grace period have expired.

If you disable or don't configure this policy, devices will get updates and will restart according to the default schedule.

This policy will override the following policies:

1. Specify deadline before auto restart for update installation
1. Specify Engaged restart transition and notification schedule for updates.

1. Always automatically restart at the scheduled time
1. Configure Automatic Updates.
<!-- ConfigureDeadlineNoAutoRebootForQualityUpdates-Description-End -->

<!-- ConfigureDeadlineNoAutoRebootForQualityUpdates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureDeadlineNoAutoRebootForQualityUpdates-Editable-End -->

<!-- ConfigureDeadlineNoAutoRebootForQualityUpdates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ConfigureDeadlineNoAutoRebootForQualityUpdates-DFProperties-End -->

<!-- ConfigureDeadlineNoAutoRebootForQualityUpdates-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- ConfigureDeadlineNoAutoRebootForQualityUpdates-AllowedValues-End -->

<!-- ConfigureDeadlineNoAutoRebootForQualityUpdates-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ComplianceDeadline |
| Friendly Name | Specify deadline for automatic updates and restarts for quality update |
| Element Name | Don't auto-restart until end of grace period. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- ConfigureDeadlineNoAutoRebootForQualityUpdates-GpMapping-End -->

<!-- ConfigureDeadlineNoAutoRebootForQualityUpdates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureDeadlineNoAutoRebootForQualityUpdates-Examples-End -->

<!-- ConfigureDeadlineNoAutoRebootForQualityUpdates-End -->

<!-- ConfigureFeatureUpdateUninstallPeriod-Begin -->
### ConfigureFeatureUpdateUninstallPeriod

<!-- ConfigureFeatureUpdateUninstallPeriod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- ConfigureFeatureUpdateUninstallPeriod-Applicability-End -->

<!-- ConfigureFeatureUpdateUninstallPeriod-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ConfigureFeatureUpdateUninstallPeriod
```
<!-- ConfigureFeatureUpdateUninstallPeriod-OmaUri-End -->

<!-- ConfigureFeatureUpdateUninstallPeriod-Description-Begin -->
<!-- Description-Source-DDF -->
Enable enterprises/IT admin to configure feature update uninstall period.
<!-- ConfigureFeatureUpdateUninstallPeriod-Description-End -->

<!-- ConfigureFeatureUpdateUninstallPeriod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureFeatureUpdateUninstallPeriod-Editable-End -->

<!-- ConfigureFeatureUpdateUninstallPeriod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[2-60]` |
| Default Value  | 10 |
<!-- ConfigureFeatureUpdateUninstallPeriod-DFProperties-End -->

<!-- ConfigureFeatureUpdateUninstallPeriod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureFeatureUpdateUninstallPeriod-Examples-End -->

<!-- ConfigureFeatureUpdateUninstallPeriod-End -->

<!-- NoUpdateNotificationsDuringActiveHours-Begin -->
### NoUpdateNotificationsDuringActiveHours

<!-- NoUpdateNotificationsDuringActiveHours-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- NoUpdateNotificationsDuringActiveHours-Applicability-End -->

<!-- NoUpdateNotificationsDuringActiveHours-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/NoUpdateNotificationsDuringActiveHours
```
<!-- NoUpdateNotificationsDuringActiveHours-OmaUri-End -->

<!-- NoUpdateNotificationsDuringActiveHours-Description-Begin -->
<!-- Description-Source-ADMX -->
0 (default) - Use the default Windows Update notifications
1 - Turn off all notifications, excluding restart warnings
2 - Turn off all notifications, including restart warnings.

This policy allows you to define what Windows Update notifications users see. This policy doesn't control how and when updates are downloaded and installed.

Important if you choose not to get update notifications and also define other Group policy so that devices aren't automatically getting updates, neither you nor device users will be aware of critical security, quality, or feature updates, and your devices may be at risk.

If you select "Apply only during active hours" in conjunction with Option 1 or 2, then notifications will only be disabled during active hours. You can set active hours by setting "Turn off auto-restart for updates during active hours" or allow the device to set active hours based on user behavior. To ensure that the device stays secure, a notification will still be shown if this option is selected once "Specify deadlines for automatic updates and restarts" deadline has been reached if configured, regardless of active hours.
<!-- NoUpdateNotificationsDuringActiveHours-Description-End -->

<!-- NoUpdateNotificationsDuringActiveHours-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This policy can be used in conjunction with Update/ActiveHoursStart and Update/ActiveHoursEnd policies to ensure that the end user sees no update notifications during active hours until deadline is reached. If no active hour period is configured then this will apply to the intelligent active hours window calculated on the device.
<!-- NoUpdateNotificationsDuringActiveHours-Editable-End -->

<!-- NoUpdateNotificationsDuringActiveHours-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- NoUpdateNotificationsDuringActiveHours-DFProperties-End -->

<!-- NoUpdateNotificationsDuringActiveHours-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- NoUpdateNotificationsDuringActiveHours-AllowedValues-End -->

<!-- NoUpdateNotificationsDuringActiveHours-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | UpdateNotificationLevel |
| Friendly Name | Display options for update notifications |
| Element Name | Apply only during active hours. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- NoUpdateNotificationsDuringActiveHours-GpMapping-End -->

<!-- NoUpdateNotificationsDuringActiveHours-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoUpdateNotificationsDuringActiveHours-Examples-End -->

<!-- NoUpdateNotificationsDuringActiveHours-End -->

<!-- ScheduledInstallDay-Begin -->
### ScheduledInstallDay

<!-- ScheduledInstallDay-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- ScheduledInstallDay-Applicability-End -->

<!-- ScheduledInstallDay-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ScheduledInstallDay
```
<!-- ScheduledInstallDay-OmaUri-End -->

<!-- ScheduledInstallDay-Description-Begin -->
<!-- Description-Source-DDF -->
Enables the IT admin to schedule the day of the update installation. The data type is a integer.
<!-- ScheduledInstallDay-Description-End -->

<!-- ScheduledInstallDay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This policy will only take effect if [Update/AllowAutoUpdate](#allowautoupdate) has been configured to option 3 or 4 for scheduled installation.
<!-- ScheduledInstallDay-Editable-End -->

<!-- ScheduledInstallDay-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ScheduledInstallDay-DFProperties-End -->

<!-- ScheduledInstallDay-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Every day. |
| 1 | Sunday. |
| 2 | Monday. |
| 3 | Tuesday. |
| 4 | Wednesday. |
| 5 | Thursday. |
| 6 | Friday. |
| 7 | Saturday. |
<!-- ScheduledInstallDay-AllowedValues-End -->

<!-- ScheduledInstallDay-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AutoUpdateCfg |
| Friendly Name | Configure Automatic Updates |
| Element Name | Scheduled install day. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate\AU |
| ADMX File Name | WindowsUpdate.admx |
<!-- ScheduledInstallDay-GpMapping-End -->

<!-- ScheduledInstallDay-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ScheduledInstallDay-Examples-End -->

<!-- ScheduledInstallDay-End -->

<!-- ScheduledInstallEveryWeek-Begin -->
### ScheduledInstallEveryWeek

<!-- ScheduledInstallEveryWeek-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- ScheduledInstallEveryWeek-Applicability-End -->

<!-- ScheduledInstallEveryWeek-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ScheduledInstallEveryWeek
```
<!-- ScheduledInstallEveryWeek-OmaUri-End -->

<!-- ScheduledInstallEveryWeek-Description-Begin -->
<!-- Description-Source-DDF -->
Enables the IT admin to schedule the update installation on the every week. Value type is integer.
<!-- ScheduledInstallEveryWeek-Description-End -->

<!-- ScheduledInstallEveryWeek-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This policy will only take effect if [Update/AllowAutoUpdate](#allowautoupdate) has been configured to option 3 or 4 for scheduled installation.
<!-- ScheduledInstallEveryWeek-Editable-End -->

<!-- ScheduledInstallEveryWeek-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- ScheduledInstallEveryWeek-DFProperties-End -->

<!-- ScheduledInstallEveryWeek-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | No update in the schedule. |
| 1 (Default) | Update is scheduled every week. |
<!-- ScheduledInstallEveryWeek-AllowedValues-End -->

<!-- ScheduledInstallEveryWeek-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AutoUpdateCfg |
| Friendly Name | Configure Automatic Updates |
| Element Name | Every week. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate\AU |
| ADMX File Name | WindowsUpdate.admx |
<!-- ScheduledInstallEveryWeek-GpMapping-End -->

<!-- ScheduledInstallEveryWeek-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ScheduledInstallEveryWeek-Examples-End -->

<!-- ScheduledInstallEveryWeek-End -->

<!-- ScheduledInstallFirstWeek-Begin -->
### ScheduledInstallFirstWeek

<!-- ScheduledInstallFirstWeek-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- ScheduledInstallFirstWeek-Applicability-End -->

<!-- ScheduledInstallFirstWeek-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ScheduledInstallFirstWeek
```
<!-- ScheduledInstallFirstWeek-OmaUri-End -->

<!-- ScheduledInstallFirstWeek-Description-Begin -->
<!-- Description-Source-DDF -->
Enables the IT admin to schedule the update installation on the first week of the month. Value type is integer.
<!-- ScheduledInstallFirstWeek-Description-End -->

<!-- ScheduledInstallFirstWeek-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The ScheduledInstall*week policies operate on numeric days.

- [ScheduledInstallFirstWeek](#scheduledinstallfirstweek): First week of the month (Days 1-7).
- [ScheduledInstallSecondWeek](#scheduledinstallsecondweek): Second week of the month (Days 8-14).
- [ScheduledInstallThirdWeek](#scheduledinstallthirdweek): Third week of the month (Days 15-21).
- [ScheduledInstallFourthWeek](#scheduledinstallfourthweek): Fourth week of the month (Days 22-31).

These policies are not exclusive and can be used in any combination. Together with [ScheduledInstallDay](#scheduledinstallday), it defines the ordinal number of a weekday in a month. E.g. [ScheduledInstallSecondWeek](#scheduledinstallsecondweek) + [ScheduledInstallDay](#scheduledinstallday) = 3 is 2nd Tuesday of the month. If the device is unavailable at the scheduled time, it can postpone installation of updates until the next month.

> [!NOTE]
> This policy will only take effect if [Update/AllowAutoUpdate](#allowautoupdate) has been configured to option 3 or 4 for scheduled installation.
<!-- ScheduledInstallFirstWeek-Editable-End -->

<!-- ScheduledInstallFirstWeek-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ScheduledInstallFirstWeek-DFProperties-End -->

<!-- ScheduledInstallFirstWeek-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | No update in the schedule. |
| 1 | Update is scheduled every first week of the month. |
<!-- ScheduledInstallFirstWeek-AllowedValues-End -->

<!-- ScheduledInstallFirstWeek-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AutoUpdateCfg |
| Friendly Name | Configure Automatic Updates |
| Element Name | First week of the month. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate\AU |
| ADMX File Name | WindowsUpdate.admx |
<!-- ScheduledInstallFirstWeek-GpMapping-End -->

<!-- ScheduledInstallFirstWeek-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ScheduledInstallFirstWeek-Examples-End -->

<!-- ScheduledInstallFirstWeek-End -->

<!-- ScheduledInstallFourthWeek-Begin -->
### ScheduledInstallFourthWeek

<!-- ScheduledInstallFourthWeek-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- ScheduledInstallFourthWeek-Applicability-End -->

<!-- ScheduledInstallFourthWeek-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ScheduledInstallFourthWeek
```
<!-- ScheduledInstallFourthWeek-OmaUri-End -->

<!-- ScheduledInstallFourthWeek-Description-Begin -->
<!-- Description-Source-DDF -->
Enables the IT admin to schedule the update installation on the fourth week of the month. Value type is integer.
<!-- ScheduledInstallFourthWeek-Description-End -->

<!-- ScheduledInstallFourthWeek-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The ScheduledInstall*week policies operate on numeric days.

- [ScheduledInstallFirstWeek](#scheduledinstallfirstweek): First week of the month (Days 1-7).
- [ScheduledInstallSecondWeek](#scheduledinstallsecondweek): Second week of the month (Days 8-14).
- [ScheduledInstallThirdWeek](#scheduledinstallthirdweek): Third week of the month (Days 15-21).
- [ScheduledInstallFourthWeek](#scheduledinstallfourthweek): Fourth week of the month (Days 22-31).

These policies are not exclusive and can be used in any combination. Together with [ScheduledInstallDay](#scheduledinstallday), it defines the ordinal number of a weekday in a month. E.g. [ScheduledInstallSecondWeek](#scheduledinstallsecondweek) + [ScheduledInstallDay](#scheduledinstallday) = 3 is 2nd Tuesday of the month. If the device is unavailable at the scheduled time, it can postpone installation of updates until the next month.

> [!NOTE]
> This policy will only take effect if [Update/AllowAutoUpdate](#allowautoupdate) has been configured to option 3 or 4 for scheduled installation.
<!-- ScheduledInstallFourthWeek-Editable-End -->

<!-- ScheduledInstallFourthWeek-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ScheduledInstallFourthWeek-DFProperties-End -->

<!-- ScheduledInstallFourthWeek-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | No update in the schedule. |
| 1 | Update is scheduled every fourth week of the month. |
<!-- ScheduledInstallFourthWeek-AllowedValues-End -->

<!-- ScheduledInstallFourthWeek-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AutoUpdateCfg |
| Friendly Name | Configure Automatic Updates |
| Element Name | Fourth week of the month. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate\AU |
| ADMX File Name | WindowsUpdate.admx |
<!-- ScheduledInstallFourthWeek-GpMapping-End -->

<!-- ScheduledInstallFourthWeek-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ScheduledInstallFourthWeek-Examples-End -->

<!-- ScheduledInstallFourthWeek-End -->

<!-- ScheduledInstallSecondWeek-Begin -->
### ScheduledInstallSecondWeek

<!-- ScheduledInstallSecondWeek-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- ScheduledInstallSecondWeek-Applicability-End -->

<!-- ScheduledInstallSecondWeek-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ScheduledInstallSecondWeek
```
<!-- ScheduledInstallSecondWeek-OmaUri-End -->

<!-- ScheduledInstallSecondWeek-Description-Begin -->
<!-- Description-Source-DDF -->
Enables the IT admin to schedule the update installation on the second week of the month. Value type is integer.
<!-- ScheduledInstallSecondWeek-Description-End -->

<!-- ScheduledInstallSecondWeek-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The ScheduledInstall*week policies operate on numeric days.

- [ScheduledInstallFirstWeek](#scheduledinstallfirstweek): First week of the month (Days 1-7).
- [ScheduledInstallSecondWeek](#scheduledinstallsecondweek): Second week of the month (Days 8-14).
- [ScheduledInstallThirdWeek](#scheduledinstallthirdweek): Third week of the month (Days 15-21).
- [ScheduledInstallFourthWeek](#scheduledinstallfourthweek): Fourth week of the month (Days 22-31).

These policies are not exclusive and can be used in any combination. Together with [ScheduledInstallDay](#scheduledinstallday), it defines the ordinal number of a weekday in a month. E.g. [ScheduledInstallSecondWeek](#scheduledinstallsecondweek) + [ScheduledInstallDay](#scheduledinstallday) = 3 is 2nd Tuesday of the month. If the device is unavailable at the scheduled time, it can postpone installation of updates until the next month.

> [!NOTE]
> This policy will only take effect if [Update/AllowAutoUpdate](#allowautoupdate) has been configured to option 3 or 4 for scheduled installation.
<!-- ScheduledInstallSecondWeek-Editable-End -->

<!-- ScheduledInstallSecondWeek-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ScheduledInstallSecondWeek-DFProperties-End -->

<!-- ScheduledInstallSecondWeek-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | No update in the schedule. |
| 1 | Update is scheduled every second week of the month. |
<!-- ScheduledInstallSecondWeek-AllowedValues-End -->

<!-- ScheduledInstallSecondWeek-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AutoUpdateCfg |
| Friendly Name | Configure Automatic Updates |
| Element Name | Second week of the month. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate\AU |
| ADMX File Name | WindowsUpdate.admx |
<!-- ScheduledInstallSecondWeek-GpMapping-End -->

<!-- ScheduledInstallSecondWeek-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ScheduledInstallSecondWeek-Examples-End -->

<!-- ScheduledInstallSecondWeek-End -->

<!-- ScheduledInstallThirdWeek-Begin -->
### ScheduledInstallThirdWeek

<!-- ScheduledInstallThirdWeek-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- ScheduledInstallThirdWeek-Applicability-End -->

<!-- ScheduledInstallThirdWeek-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ScheduledInstallThirdWeek
```
<!-- ScheduledInstallThirdWeek-OmaUri-End -->

<!-- ScheduledInstallThirdWeek-Description-Begin -->
<!-- Description-Source-DDF -->
Enables the IT admin to schedule the update installation on the third week of the month. Value type is integer.
<!-- ScheduledInstallThirdWeek-Description-End -->

<!-- ScheduledInstallThirdWeek-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The ScheduledInstall*week policies operate on numeric days.

- [ScheduledInstallFirstWeek](#scheduledinstallfirstweek): First week of the month (Days 1-7).
- [ScheduledInstallSecondWeek](#scheduledinstallsecondweek): Second week of the month (Days 8-14).
- [ScheduledInstallThirdWeek](#scheduledinstallthirdweek): Third week of the month (Days 15-21).
- [ScheduledInstallFourthWeek](#scheduledinstallfourthweek): Fourth week of the month (Days 22-31).

These policies are not exclusive and can be used in any combination. Together with [ScheduledInstallDay](#scheduledinstallday), it defines the ordinal number of a weekday in a month. E.g. [ScheduledInstallSecondWeek](#scheduledinstallsecondweek) + [ScheduledInstallDay](#scheduledinstallday) = 3 is 2nd Tuesday of the month. If the device is unavailable at the scheduled time, it can postpone installation of updates until the next month.

> [!NOTE]
> This policy will only take effect if [Update/AllowAutoUpdate](#allowautoupdate) has been configured to option 3 or 4 for scheduled installation.
<!-- ScheduledInstallThirdWeek-Editable-End -->

<!-- ScheduledInstallThirdWeek-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ScheduledInstallThirdWeek-DFProperties-End -->

<!-- ScheduledInstallThirdWeek-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | No update in the schedule. |
| 1 | Update is scheduled every third week of the month. |
<!-- ScheduledInstallThirdWeek-AllowedValues-End -->

<!-- ScheduledInstallThirdWeek-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AutoUpdateCfg |
| Friendly Name | Configure Automatic Updates |
| Element Name | Third week of the month. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate\AU |
| ADMX File Name | WindowsUpdate.admx |
<!-- ScheduledInstallThirdWeek-GpMapping-End -->

<!-- ScheduledInstallThirdWeek-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ScheduledInstallThirdWeek-Examples-End -->

<!-- ScheduledInstallThirdWeek-End -->

<!-- ScheduledInstallTime-Begin -->
### ScheduledInstallTime

<!-- ScheduledInstallTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- ScheduledInstallTime-Applicability-End -->

<!-- ScheduledInstallTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ScheduledInstallTime
```
<!-- ScheduledInstallTime-OmaUri-End -->

<!-- ScheduledInstallTime-Description-Begin -->
<!-- Description-Source-DDF -->
 the IT admin to schedule the time of the update installation. The data type is a integer. Supported values are 0-23, where 0 = 12 AM and 23 = 11 PM. The default value is 3.
<!-- ScheduledInstallTime-Description-End -->

<!-- ScheduledInstallTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
>
> - This policy will only take effect if [Update/AllowAutoUpdate](#allowautoupdate) has been configured to option 3 or 4 for scheduled installation.
> - There is a window of approximately 30 minutes to allow for higher success rates of installation.
<!-- ScheduledInstallTime-Editable-End -->

<!-- ScheduledInstallTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-23]` |
| Default Value  | 3 |
<!-- ScheduledInstallTime-DFProperties-End -->

<!-- ScheduledInstallTime-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AutoUpdateCfg |
| Friendly Name | Configure Automatic Updates |
| Element Name | Scheduled install time. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate\AU |
| ADMX File Name | WindowsUpdate.admx |
<!-- ScheduledInstallTime-GpMapping-End -->

<!-- ScheduledInstallTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ScheduledInstallTime-Examples-End -->

<!-- ScheduledInstallTime-End -->

<!-- SetDisablePauseUXAccess-Begin -->
### SetDisablePauseUXAccess

<!-- SetDisablePauseUXAccess-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- SetDisablePauseUXAccess-Applicability-End -->

<!-- SetDisablePauseUXAccess-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/SetDisablePauseUXAccess
```
<!-- SetDisablePauseUXAccess-OmaUri-End -->

<!-- SetDisablePauseUXAccess-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting allows to remove access to "Pause updates" feature.

Once enabled user access to pause updates is removed.
<!-- SetDisablePauseUXAccess-Description-End -->

<!-- SetDisablePauseUXAccess-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SetDisablePauseUXAccess-Editable-End -->

<!-- SetDisablePauseUXAccess-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- SetDisablePauseUXAccess-DFProperties-End -->

<!-- SetDisablePauseUXAccess-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Enable. |
| 0 (Default) | Disable. |
<!-- SetDisablePauseUXAccess-AllowedValues-End -->

<!-- SetDisablePauseUXAccess-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisablePauseUXAccess |
| Friendly Name | Remove access to "Pause updates" feature |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| Registry Value Name | SetDisablePauseUXAccess |
| ADMX File Name | WindowsUpdate.admx |
<!-- SetDisablePauseUXAccess-GpMapping-End -->

<!-- SetDisablePauseUXAccess-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetDisablePauseUXAccess-Examples-End -->

<!-- SetDisablePauseUXAccess-End -->

<!-- SetDisableUXWUAccess-Begin -->
### SetDisableUXWUAccess

<!-- SetDisableUXWUAccess-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- SetDisableUXWUAccess-Applicability-End -->

<!-- SetDisableUXWUAccess-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/SetDisableUXWUAccess
```
<!-- SetDisableUXWUAccess-OmaUri-End -->

<!-- SetDisableUXWUAccess-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting allows you to remove access to scan Windows Update.

If you enable this setting user access to Windows Update scan, download and install is removed.
<!-- SetDisableUXWUAccess-Description-End -->

<!-- SetDisableUXWUAccess-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SetDisableUXWUAccess-Editable-End -->

<!-- SetDisableUXWUAccess-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- SetDisableUXWUAccess-DFProperties-End -->

<!-- SetDisableUXWUAccess-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- SetDisableUXWUAccess-AllowedValues-End -->

<!-- SetDisableUXWUAccess-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableUXWUAccess |
| Friendly Name | Remove access to use all Windows Update features |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| Registry Value Name | SetDisableUXWUAccess |
| ADMX File Name | WindowsUpdate.admx |
<!-- SetDisableUXWUAccess-GpMapping-End -->

<!-- SetDisableUXWUAccess-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetDisableUXWUAccess-Examples-End -->

<!-- SetDisableUXWUAccess-End -->

<!-- SetEDURestart-Begin -->
### SetEDURestart

<!-- SetEDURestart-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- SetEDURestart-Applicability-End -->

<!-- SetEDURestart-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/SetEDURestart
```
<!-- SetEDURestart-OmaUri-End -->

<!-- SetEDURestart-Description-Begin -->
<!-- Description-Source-ADMX -->
Enabling this policy for EDU devices that remain on Carts overnight will skip power checks to ensure update reboots will happen at the scheduled install time.
<!-- SetEDURestart-Description-End -->

<!-- SetEDURestart-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Enabling this policy will restrict updates to download and install outside of Active Hours. Updates will be allowed to start even if there is a signed-in user or the device is on battery power, providing there is more than 70% battery capacity. Windows will schedule the device to wake from sleep 1 hour after the [ActiveHoursEnd](#activehoursend) time with a 60-minute random delay. Devices will reboot immediately after the updates are installed. If there are still pending updates, the device will continue to retry every hour for 4 hours.

The following rules are followed regarding battery power:
- Above 70% - allowed to start work;
- Above 40% - allowed to reboot;
- Above 20% - allowed to continue work.

This setting overrides the install deferral behavior of [AllowAutoUpdate](#allowautoupdate).

These settings are designed for education devices that remain in carts overnight that are left in sleep mode. It is not designed for 1:1 devices.
<!-- SetEDURestart-Editable-End -->

<!-- SetEDURestart-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- SetEDURestart-DFProperties-End -->

<!-- SetEDURestart-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not configured. |
| 1 | Configured. |
<!-- SetEDURestart-AllowedValues-End -->

<!-- SetEDURestart-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SetEDURestart |
| Friendly Name | Update Power Policy for Cart Restarts |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| Registry Value Name | SetEDURestart |
| ADMX File Name | WindowsUpdate.admx |
<!-- SetEDURestart-GpMapping-End -->

<!-- SetEDURestart-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetEDURestart-Examples-End -->

<!-- SetEDURestart-End -->

<!-- UpdateNotificationLevel-Begin -->
### UpdateNotificationLevel

<!-- UpdateNotificationLevel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- UpdateNotificationLevel-Applicability-End -->

<!-- UpdateNotificationLevel-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/UpdateNotificationLevel
```
<!-- UpdateNotificationLevel-OmaUri-End -->

<!-- UpdateNotificationLevel-Description-Begin -->
<!-- Description-Source-ADMX -->
0 (default) - Use the default Windows Update notifications
1 - Turn off all notifications, excluding restart warnings
2 - Turn off all notifications, including restart warnings.

This policy allows you to define what Windows Update notifications users see. This policy doesn't control how and when updates are downloaded and installed.

Important if you choose not to get update notifications and also define other Group policy so that devices aren't automatically getting updates, neither you nor device users will be aware of critical security, quality, or feature updates, and your devices may be at risk.

If you select "Apply only during active hours" in conjunction with Option 1 or 2, then notifications will only be disabled during active hours. You can set active hours by setting "Turn off auto-restart for updates during active hours" or allow the device to set active hours based on user behavior. To ensure that the device stays secure, a notification will still be shown if this option is selected once "Specify deadlines for automatic updates and restarts" deadline has been reached if configured, regardless of active hours.
<!-- UpdateNotificationLevel-Description-End -->

<!-- UpdateNotificationLevel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UpdateNotificationLevel-Editable-End -->

<!-- UpdateNotificationLevel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- UpdateNotificationLevel-DFProperties-End -->

<!-- UpdateNotificationLevel-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Use the default Windows Update notifications. |
| 1 | Turn off all notifications, excluding restart warnings. |
| 2 | Turn off all notifications, including restart warnings. |
<!-- UpdateNotificationLevel-AllowedValues-End -->

<!-- UpdateNotificationLevel-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | UpdateNotificationLevel |
| Friendly Name | Display options for update notifications |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Manage end user experience |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| Registry Value Name | SetUpdateNotificationLevel |
| ADMX File Name | WindowsUpdate.admx |
<!-- UpdateNotificationLevel-GpMapping-End -->

<!-- UpdateNotificationLevel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UpdateNotificationLevel-Examples-End -->

<!-- UpdateNotificationLevel-End -->

## Legacy Policies

<!-- AlwaysAutoRebootAtScheduledTimeMinutes-Begin -->
### AlwaysAutoRebootAtScheduledTimeMinutes

<!-- AlwaysAutoRebootAtScheduledTimeMinutes-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- AlwaysAutoRebootAtScheduledTimeMinutes-Applicability-End -->

<!-- AlwaysAutoRebootAtScheduledTimeMinutes-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/AlwaysAutoRebootAtScheduledTimeMinutes
```
<!-- AlwaysAutoRebootAtScheduledTimeMinutes-OmaUri-End -->

<!-- AlwaysAutoRebootAtScheduledTimeMinutes-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this policy, a restart timer will always begin immediately after Windows Update installs important updates, instead of first notifying users on the login screen for at least two days.

The restart timer can be configured to start with any value from 15 to 180 minutes. When the timer runs out, the restart will proceed even if the PC has signed-in users.

- If you disable or don't configure this policy, Windows Update won't alter its restart behavior.

If the "No auto-restart with logged-on users for scheduled automatic updates installations" policy is enabled, then this policy has no effect.
<!-- AlwaysAutoRebootAtScheduledTimeMinutes-Description-End -->

<!-- AlwaysAutoRebootAtScheduledTimeMinutes-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AlwaysAutoRebootAtScheduledTimeMinutes-Editable-End -->

<!-- AlwaysAutoRebootAtScheduledTimeMinutes-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[15-180]` |
| Default Value  | 15 |
<!-- AlwaysAutoRebootAtScheduledTimeMinutes-DFProperties-End -->

<!-- AlwaysAutoRebootAtScheduledTimeMinutes-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AlwaysAutoRebootAtScheduledTime |
| Friendly Name | Always automatically restart at the scheduled time |
| Element Name | work (minutes) |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Legacy Policies |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate\AU |
| ADMX File Name | WindowsUpdate.admx |
<!-- AlwaysAutoRebootAtScheduledTimeMinutes-GpMapping-End -->

<!-- AlwaysAutoRebootAtScheduledTimeMinutes-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AlwaysAutoRebootAtScheduledTimeMinutes-Examples-End -->

<!-- AlwaysAutoRebootAtScheduledTimeMinutes-End -->

<!-- AutoRestartDeadlinePeriodInDays-Begin -->
### AutoRestartDeadlinePeriodInDays

<!-- AutoRestartDeadlinePeriodInDays-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AutoRestartDeadlinePeriodInDays-Applicability-End -->

<!-- AutoRestartDeadlinePeriodInDays-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/AutoRestartDeadlinePeriodInDays
```
<!-- AutoRestartDeadlinePeriodInDays-OmaUri-End -->

<!-- AutoRestartDeadlinePeriodInDays-Description-Begin -->
<!-- Description-Source-ADMX -->
Specify the deadline before the PC will automatically restart to apply updates. The deadline can be set 2 to 14 days past the default restart date.

The restart may happen inside active hours.

If you disable or don't configure this policy, the PC will restart according to the default schedule.

Enabling either of the following two policies will override the above policy:

1. No auto-restart with logged-on users for scheduled automatic updates installations.

1. Always automatically restart at scheduled time.
<!-- AutoRestartDeadlinePeriodInDays-Description-End -->

<!-- AutoRestartDeadlinePeriodInDays-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AutoRestartDeadlinePeriodInDays-Editable-End -->

<!-- AutoRestartDeadlinePeriodInDays-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[2-30]` |
| Default Value  | 7 |
<!-- AutoRestartDeadlinePeriodInDays-DFProperties-End -->

<!-- AutoRestartDeadlinePeriodInDays-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AutoRestartDeadline |
| Friendly Name | Specify deadline before auto-restart for update installation |
| Element Name | Quality Updates (days) |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Legacy Policies |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- AutoRestartDeadlinePeriodInDays-GpMapping-End -->

<!-- AutoRestartDeadlinePeriodInDays-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AutoRestartDeadlinePeriodInDays-Examples-End -->

<!-- AutoRestartDeadlinePeriodInDays-End -->

<!-- AutoRestartDeadlinePeriodInDaysForFeatureUpdates-Begin -->
### AutoRestartDeadlinePeriodInDaysForFeatureUpdates

<!-- AutoRestartDeadlinePeriodInDaysForFeatureUpdates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- AutoRestartDeadlinePeriodInDaysForFeatureUpdates-Applicability-End -->

<!-- AutoRestartDeadlinePeriodInDaysForFeatureUpdates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/AutoRestartDeadlinePeriodInDaysForFeatureUpdates
```
<!-- AutoRestartDeadlinePeriodInDaysForFeatureUpdates-OmaUri-End -->

<!-- AutoRestartDeadlinePeriodInDaysForFeatureUpdates-Description-Begin -->
<!-- Description-Source-ADMX-Forced -->
Specify the deadline before the PC will automatically restart to apply updates. The deadline can be set 2 to 14 days past the default restart date.

The restart may happen inside active hours.

If you disable or don't configure this policy, the PC will restart according to the default schedule.

Enabling either of the following two policies will override the above policy:

1. No auto-restart with logged-on users for scheduled automatic updates installations.

1. Always automatically restart at scheduled time.
<!-- AutoRestartDeadlinePeriodInDaysForFeatureUpdates-Description-End -->

<!-- AutoRestartDeadlinePeriodInDaysForFeatureUpdates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AutoRestartDeadlinePeriodInDaysForFeatureUpdates-Editable-End -->

<!-- AutoRestartDeadlinePeriodInDaysForFeatureUpdates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[2-30]` |
| Default Value  | 7 |
<!-- AutoRestartDeadlinePeriodInDaysForFeatureUpdates-DFProperties-End -->

<!-- AutoRestartDeadlinePeriodInDaysForFeatureUpdates-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AutoRestartDeadline |
| Friendly Name | Specify deadline before auto-restart for update installation |
| Element Name | Feature Updates (days) |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Legacy Policies |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- AutoRestartDeadlinePeriodInDaysForFeatureUpdates-GpMapping-End -->

<!-- AutoRestartDeadlinePeriodInDaysForFeatureUpdates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AutoRestartDeadlinePeriodInDaysForFeatureUpdates-Examples-End -->

<!-- AutoRestartDeadlinePeriodInDaysForFeatureUpdates-End -->

<!-- AutoRestartNotificationSchedule-Begin -->
### AutoRestartNotificationSchedule

<!-- AutoRestartNotificationSchedule-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AutoRestartNotificationSchedule-Applicability-End -->

<!-- AutoRestartNotificationSchedule-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/AutoRestartNotificationSchedule
```
<!-- AutoRestartNotificationSchedule-OmaUri-End -->

<!-- AutoRestartNotificationSchedule-Description-Begin -->
<!-- Description-Source-ADMX -->
Enable this policy to specify when auto-restart reminders are displayed.

You can specify the amount of time prior to a scheduled restart to notify the user.

If you disable or don't configure this policy, the default period will be used.
<!-- AutoRestartNotificationSchedule-Description-End -->

<!-- AutoRestartNotificationSchedule-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AutoRestartNotificationSchedule-Editable-End -->

<!-- AutoRestartNotificationSchedule-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 15 |
<!-- AutoRestartNotificationSchedule-DFProperties-End -->

<!-- AutoRestartNotificationSchedule-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 15 (Default) | 15 Minutes. |
| 30 | 30 Minutes. |
| 60 | 60 Minutes. |
| 120 | 120 Minutes. |
| 240 | 240 Minutes. |
<!-- AutoRestartNotificationSchedule-AllowedValues-End -->

<!-- AutoRestartNotificationSchedule-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AutoRestartNotificationConfig |
| Friendly Name | Configure auto-restart reminder notifications for updates |
| Element Name | Period (min) |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Legacy Policies |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- AutoRestartNotificationSchedule-GpMapping-End -->

<!-- AutoRestartNotificationSchedule-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AutoRestartNotificationSchedule-Examples-End -->

<!-- AutoRestartNotificationSchedule-End -->

<!-- AutoRestartRequiredNotificationDismissal-Begin -->
### AutoRestartRequiredNotificationDismissal

<!-- AutoRestartRequiredNotificationDismissal-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AutoRestartRequiredNotificationDismissal-Applicability-End -->

<!-- AutoRestartRequiredNotificationDismissal-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/AutoRestartRequiredNotificationDismissal
```
<!-- AutoRestartRequiredNotificationDismissal-OmaUri-End -->

<!-- AutoRestartRequiredNotificationDismissal-Description-Begin -->
<!-- Description-Source-ADMX -->
Enable this policy to specify the method by which the auto-restart required notification is dismissed. When a restart is required to install updates, the auto-restart required notification is displayed. By default, the notification is automatically dismissed after 25 seconds.

The method can be set to require user action to dismiss the notification.

If you disable or don't configure this policy, the default method will be used.
<!-- AutoRestartRequiredNotificationDismissal-Description-End -->

<!-- AutoRestartRequiredNotificationDismissal-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AutoRestartRequiredNotificationDismissal-Editable-End -->

<!-- AutoRestartRequiredNotificationDismissal-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AutoRestartRequiredNotificationDismissal-DFProperties-End -->

<!-- AutoRestartRequiredNotificationDismissal-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Auto Dismissal. |
| 2 | User Dismissal. |
<!-- AutoRestartRequiredNotificationDismissal-AllowedValues-End -->

<!-- AutoRestartRequiredNotificationDismissal-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AutoRestartRequiredNotificationDismissal |
| Friendly Name | Configure auto-restart required notification for updates |
| Element Name | Method. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Legacy Policies |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- AutoRestartRequiredNotificationDismissal-GpMapping-End -->

<!-- AutoRestartRequiredNotificationDismissal-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AutoRestartRequiredNotificationDismissal-Examples-End -->

<!-- AutoRestartRequiredNotificationDismissal-End -->

<!-- DeferUpdatePeriod-Begin -->
### DeferUpdatePeriod

<!-- DeferUpdatePeriod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- DeferUpdatePeriod-Applicability-End -->

<!-- DeferUpdatePeriod-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/DeferUpdatePeriod
```
<!-- DeferUpdatePeriod-OmaUri-End -->

<!-- DeferUpdatePeriod-Description-Begin -->
<!-- Description-Source-Manual-Forced -->
<!-- DeferUpdatePeriod-Description-End -->

<!-- DeferUpdatePeriod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](#changes-in-windows-10-version-1607). You can continue to use DeferUpdatePeriod for Windows 10, version 1511 devices.

Allows IT Admins to specify update delays for up to four weeks. Supported values are 0-4, which refers to the number of weeks to defer updates.

- If the **Specify intranet Microsoft update service location** policy is enabled, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.
- If the **Allow Telemetry** policy is enabled and the Options value is set to 0, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

OS upgrade:

- Maximum deferral: Eight months
- Deferral increment: One month
- Update type/notes:
  - Upgrade - 3689BDC8-B205-4AF4-8D4A-A63924C5E9D5

Update:

- Maximum deferral: One month
- Deferral increment: One week
- Update type/notes: If a machine has Microsoft Update enabled, any Microsoft Updates in these categories will also observe Defer / Pause logic:

  - Security Update - 0FA1201D-4330-4FA8-8AE9-B877473B6441
  - Critical Update - E6CF1350-C01B-414D-A61F-263D14D133B4
  - Update Rollup - 28BC880E-0592-4CBF-8F95-C79B17911D5F
  - Service Pack - 68C5B0A3-D1A6-4553-AE49-01D3A7827828
  - Tools - B4832BD8-E735-4761-8DAF-37F882276DAB
  - Feature Pack - B54E7D24-7ADD-428F-8B75-90A396FA584F
  - Update - CD5FFD1E-E932-4E3A-BF74-18BF0B1BBD83
  - Driver - EBFC1FC5-71A4-4F7B-9ACA-3B9A503104A0

Other/can't defer:

- Maximum deferral: No deferral
- Deferral increment: No deferral
- Update type/notes:
  Any update category not enumerated above falls into this category.
      - Definition Update - E0789628-CE08-4437-BE74-2495B842F43B
<!-- DeferUpdatePeriod-Editable-End -->

<!-- DeferUpdatePeriod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4]` |
| Default Value  | 0 |
<!-- DeferUpdatePeriod-DFProperties-End -->

<!-- DeferUpdatePeriod-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DeferUpgrade |
| Path | WindowsUpdate > AT > WindowsComponents > WindowsUpdateCat |
| Element Name | DeferUpdatePeriodId |
<!-- DeferUpdatePeriod-GpMapping-End -->

<!-- DeferUpdatePeriod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DeferUpdatePeriod-Examples-End -->

<!-- DeferUpdatePeriod-End -->

<!-- DeferUpgradePeriod-Begin -->
### DeferUpgradePeriod

<!-- DeferUpgradePeriod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- DeferUpgradePeriod-Applicability-End -->

<!-- DeferUpgradePeriod-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/DeferUpgradePeriod
```
<!-- DeferUpgradePeriod-OmaUri-End -->

<!-- DeferUpgradePeriod-Description-Begin -->
<!-- Description-Source-Manual-Forced -->
<!-- DeferUpgradePeriod-Description-End -->

<!-- DeferUpgradePeriod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Allows IT Admins to specify additional upgrade delays for up to 8 months. Supported values are 0-8, which refers to the number of months to defer upgrades.

- If the **Specify intranet Microsoft update service location** policy is enabled, then the Defer upgrades by, Defer updates by and Pause Updates and Upgrades settings have no effect.
- If the **Allow Telemetry** policy is enabled and the Options value is set to 0, then the Defer upgrades by, Defer updates by and Pause Updates and Upgrades settings have no effect.

> [!NOTE]
> Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](#changes-in-windows-10-version-1607). You can continue to use DeferUpgradePeriod for Windows 10, version 1511 devices.
<!-- DeferUpgradePeriod-Editable-End -->

<!-- DeferUpgradePeriod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-8]` |
| Default Value  | 0 |
<!-- DeferUpgradePeriod-DFProperties-End -->

<!-- DeferUpgradePeriod-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DeferUpgrade |
| Path | WindowsUpdate > AT > WindowsComponents > WindowsUpdateCat |
| Element Name | DeferUpgradePeriodId |
<!-- DeferUpgradePeriod-GpMapping-End -->

<!-- DeferUpgradePeriod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DeferUpgradePeriod-Examples-End -->

<!-- DeferUpgradePeriod-End -->

<!-- DisableDualScan-Begin -->
### DisableDualScan

<!-- DisableDualScan-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- DisableDualScan-Applicability-End -->

<!-- DisableDualScan-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/DisableDualScan
```
<!-- DisableDualScan-OmaUri-End -->

<!-- DisableDualScan-Description-Begin -->
<!-- Description-Source-ADMX -->
Enable this policy to not allow update deferral policies to cause scans against Windows Update.

- If this policy is disabled or not configured, then the Windows Update client may initiate automatic scans against Windows Update while update deferral policies are enabled.

> [!NOTE]
> This policy applies only when the intranet Microsoft update service this computer is directed to is configured to support client-side targeting. If the "Specify intranet Microsoft update service location" policy is disabled or not configured, this policy has no effect.
<!-- DisableDualScan-Description-End -->

<!-- DisableDualScan-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> For more information about dual scan, see [Demystifying "Dual Scan"](/archive/blogs/wsus/demystifying-dual-scan) and [Improving Dual Scan on 1607](/archive/blogs/wsus/improving-dual-scan-on-1607).
<!-- DisableDualScan-Editable-End -->

<!-- DisableDualScan-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableDualScan-DFProperties-End -->

<!-- DisableDualScan-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allow scan against Windows Update. |
| 1 | Don't allow update deferral policies to cause scans against Windows Update. |
<!-- DisableDualScan-AllowedValues-End -->

<!-- DisableDualScan-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableDualScan |
| Friendly Name | Do not allow update deferral policies to cause scans against Windows Update |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Legacy Policies |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| Registry Value Name | DisableDualScan |
| ADMX File Name | WindowsUpdate.admx |
<!-- DisableDualScan-GpMapping-End -->

<!-- DisableDualScan-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableDualScan-Examples-End -->

<!-- DisableDualScan-End -->

<!-- EngagedRestartDeadline-Begin -->
### EngagedRestartDeadline

<!-- EngagedRestartDeadline-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- EngagedRestartDeadline-Applicability-End -->

<!-- EngagedRestartDeadline-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/EngagedRestartDeadline
```
<!-- EngagedRestartDeadline-OmaUri-End -->

<!-- EngagedRestartDeadline-Description-Begin -->
<!-- Description-Source-ADMX-Forced -->
Enable this policy to control the timing before transitioning from Auto restarts scheduled outside of active hours to Engaged restart, which requires the user to schedule. The period can be set between 0 and 30 days from the time the restart becomes pending.

You can specify the number of days a user can snooze Engaged restart reminder notifications. The snooze period can be set between 1 and 3 days.

You can specify the deadline in days before automatically scheduling and executing a pending restart regardless of active hours. The deadline can be set between 2 and 30 days from the time the restart becomes pending. If configured, the pending restart will transition from Auto-restart to Engaged restart (pending user schedule) to automatically executed, within the specified period.

If you don't specify a deadline or if the deadline is set to 0, the PC won't automatically restart and will require the person to schedule it prior to restart.

If you disable or don't configure this policy, the PC will restart following the default schedule.

Enabling any of the following policies will override the above policy:

1. No auto-restart with logged-on users for scheduled automatic updates installations
1. Always automatically restart at scheduled time.

1. Specify deadline before auto-restart for update installation.
<!-- EngagedRestartDeadline-Description-End -->

<!-- EngagedRestartDeadline-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EngagedRestartDeadline-Editable-End -->

<!-- EngagedRestartDeadline-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[2-30]` |
| Default Value  | 14 |
<!-- EngagedRestartDeadline-DFProperties-End -->

<!-- EngagedRestartDeadline-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EngagedRestartTransitionSchedule |
| Friendly Name | Specify Engaged restart transition and notification schedule for updates |
| Element Name | Deadline (days) |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Legacy Policies |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- EngagedRestartDeadline-GpMapping-End -->

<!-- EngagedRestartDeadline-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EngagedRestartDeadline-Examples-End -->

<!-- EngagedRestartDeadline-End -->

<!-- EngagedRestartDeadlineForFeatureUpdates-Begin -->
### EngagedRestartDeadlineForFeatureUpdates

<!-- EngagedRestartDeadlineForFeatureUpdates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- EngagedRestartDeadlineForFeatureUpdates-Applicability-End -->

<!-- EngagedRestartDeadlineForFeatureUpdates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/EngagedRestartDeadlineForFeatureUpdates
```
<!-- EngagedRestartDeadlineForFeatureUpdates-OmaUri-End -->

<!-- EngagedRestartDeadlineForFeatureUpdates-Description-Begin -->
<!-- Description-Source-ADMX-Forced -->
Enable this policy to control the timing before transitioning from Auto restarts scheduled outside of active hours to Engaged restart, which requires the user to schedule. The period can be set between 0 and 30 days from the time the restart becomes pending.

You can specify the number of days a user can snooze Engaged restart reminder notifications. The snooze period can be set between 1 and 3 days.

You can specify the deadline in days before automatically scheduling and executing a pending restart regardless of active hours. The deadline can be set between 2 and 30 days from the time the restart becomes pending. If configured, the pending restart will transition from Auto-restart to Engaged restart (pending user schedule) to automatically executed, within the specified period.

If you don't specify a deadline or if the deadline is set to 0, the PC won't automatically restart and will require the person to schedule it prior to restart.

If you disable or don't configure this policy, the PC will restart following the default schedule.

Enabling any of the following policies will override the above policy:

1. No auto-restart with logged-on users for scheduled automatic updates installations
1. Always automatically restart at scheduled time.

1. Specify deadline before auto-restart for update installation.
<!-- EngagedRestartDeadlineForFeatureUpdates-Description-End -->

<!-- EngagedRestartDeadlineForFeatureUpdates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EngagedRestartDeadlineForFeatureUpdates-Editable-End -->

<!-- EngagedRestartDeadlineForFeatureUpdates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[2-30]` |
| Default Value  | 14 |
<!-- EngagedRestartDeadlineForFeatureUpdates-DFProperties-End -->

<!-- EngagedRestartDeadlineForFeatureUpdates-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EngagedRestartTransitionSchedule |
| Friendly Name | Specify Engaged restart transition and notification schedule for updates |
| Element Name | Deadline (days) |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Legacy Policies |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- EngagedRestartDeadlineForFeatureUpdates-GpMapping-End -->

<!-- EngagedRestartDeadlineForFeatureUpdates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EngagedRestartDeadlineForFeatureUpdates-Examples-End -->

<!-- EngagedRestartDeadlineForFeatureUpdates-End -->

<!-- EngagedRestartSnoozeSchedule-Begin -->
### EngagedRestartSnoozeSchedule

<!-- EngagedRestartSnoozeSchedule-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- EngagedRestartSnoozeSchedule-Applicability-End -->

<!-- EngagedRestartSnoozeSchedule-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/EngagedRestartSnoozeSchedule
```
<!-- EngagedRestartSnoozeSchedule-OmaUri-End -->

<!-- EngagedRestartSnoozeSchedule-Description-Begin -->
<!-- Description-Source-ADMX-Forced -->
Enable this policy to control the timing before transitioning from Auto restarts scheduled outside of active hours to Engaged restart, which requires the user to schedule. The period can be set between 0 and 30 days from the time the restart becomes pending.

You can specify the number of days a user can snooze Engaged restart reminder notifications. The snooze period can be set between 1 and 3 days.

You can specify the deadline in days before automatically scheduling and executing a pending restart regardless of active hours. The deadline can be set between 2 and 30 days from the time the restart becomes pending. If configured, the pending restart will transition from Auto-restart to Engaged restart (pending user schedule) to automatically executed, within the specified period.

If you don't specify a deadline or if the deadline is set to 0, the PC won't automatically restart and will require the person to schedule it prior to restart.

If you disable or don't configure this policy, the PC will restart following the default schedule.

Enabling any of the following policies will override the above policy:

1. No auto-restart with logged-on users for scheduled automatic updates installations
1. Always automatically restart at scheduled time.

1. Specify deadline before auto-restart for update installation.
<!-- EngagedRestartSnoozeSchedule-Description-End -->

<!-- EngagedRestartSnoozeSchedule-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EngagedRestartSnoozeSchedule-Editable-End -->

<!-- EngagedRestartSnoozeSchedule-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-3]` |
| Default Value  | 3 |
<!-- EngagedRestartSnoozeSchedule-DFProperties-End -->

<!-- EngagedRestartSnoozeSchedule-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EngagedRestartTransitionSchedule |
| Friendly Name | Specify Engaged restart transition and notification schedule for updates |
| Element Name | Snooze (days) |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Legacy Policies |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- EngagedRestartSnoozeSchedule-GpMapping-End -->

<!-- EngagedRestartSnoozeSchedule-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EngagedRestartSnoozeSchedule-Examples-End -->

<!-- EngagedRestartSnoozeSchedule-End -->

<!-- EngagedRestartSnoozeScheduleForFeatureUpdates-Begin -->
### EngagedRestartSnoozeScheduleForFeatureUpdates

<!-- EngagedRestartSnoozeScheduleForFeatureUpdates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- EngagedRestartSnoozeScheduleForFeatureUpdates-Applicability-End -->

<!-- EngagedRestartSnoozeScheduleForFeatureUpdates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/EngagedRestartSnoozeScheduleForFeatureUpdates
```
<!-- EngagedRestartSnoozeScheduleForFeatureUpdates-OmaUri-End -->

<!-- EngagedRestartSnoozeScheduleForFeatureUpdates-Description-Begin -->
<!-- Description-Source-ADMX-Forced -->
Enable this policy to control the timing before transitioning from Auto restarts scheduled outside of active hours to Engaged restart, which requires the user to schedule. The period can be set between 0 and 30 days from the time the restart becomes pending.

You can specify the number of days a user can snooze Engaged restart reminder notifications. The snooze period can be set between 1 and 3 days.

You can specify the deadline in days before automatically scheduling and executing a pending restart regardless of active hours. The deadline can be set between 2 and 30 days from the time the restart becomes pending. If configured, the pending restart will transition from Auto-restart to Engaged restart (pending user schedule) to automatically executed, within the specified period.

If you don't specify a deadline or if the deadline is set to 0, the PC won't automatically restart and will require the person to schedule it prior to restart.

If you disable or don't configure this policy, the PC will restart following the default schedule.

Enabling any of the following policies will override the above policy:

1. No auto-restart with logged-on users for scheduled automatic updates installations
1. Always automatically restart at scheduled time.

1. Specify deadline before auto-restart for update installation.
<!-- EngagedRestartSnoozeScheduleForFeatureUpdates-Description-End -->

<!-- EngagedRestartSnoozeScheduleForFeatureUpdates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EngagedRestartSnoozeScheduleForFeatureUpdates-Editable-End -->

<!-- EngagedRestartSnoozeScheduleForFeatureUpdates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-3]` |
| Default Value  | 3 |
<!-- EngagedRestartSnoozeScheduleForFeatureUpdates-DFProperties-End -->

<!-- EngagedRestartSnoozeScheduleForFeatureUpdates-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EngagedRestartTransitionSchedule |
| Friendly Name | Specify Engaged restart transition and notification schedule for updates |
| Element Name | Snooze (days) |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Legacy Policies |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- EngagedRestartSnoozeScheduleForFeatureUpdates-GpMapping-End -->

<!-- EngagedRestartSnoozeScheduleForFeatureUpdates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EngagedRestartSnoozeScheduleForFeatureUpdates-Examples-End -->

<!-- EngagedRestartSnoozeScheduleForFeatureUpdates-End -->

<!-- EngagedRestartTransitionSchedule-Begin -->
### EngagedRestartTransitionSchedule

<!-- EngagedRestartTransitionSchedule-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- EngagedRestartTransitionSchedule-Applicability-End -->

<!-- EngagedRestartTransitionSchedule-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/EngagedRestartTransitionSchedule
```
<!-- EngagedRestartTransitionSchedule-OmaUri-End -->

<!-- EngagedRestartTransitionSchedule-Description-Begin -->
<!-- Description-Source-ADMX-Forced -->
Enable this policy to control the timing before transitioning from Auto restarts scheduled outside of active hours to Engaged restart, which requires the user to schedule. The period can be set between 0 and 30 days from the time the restart becomes pending.

You can specify the number of days a user can snooze Engaged restart reminder notifications. The snooze period can be set between 1 and 3 days.

You can specify the deadline in days before automatically scheduling and executing a pending restart regardless of active hours. The deadline can be set between 2 and 30 days from the time the restart becomes pending. If configured, the pending restart will transition from Auto-restart to Engaged restart (pending user schedule) to automatically executed, within the specified period.

If you don't specify a deadline or if the deadline is set to 0, the PC won't automatically restart and will require the person to schedule it prior to restart.

If you disable or don't configure this policy, the PC will restart following the default schedule.

Enabling any of the following policies will override the above policy:

1. No auto-restart with logged-on users for scheduled automatic updates installations
1. Always automatically restart at scheduled time.

1. Specify deadline before auto-restart for update installation.
<!-- EngagedRestartTransitionSchedule-Description-End -->

<!-- EngagedRestartTransitionSchedule-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EngagedRestartTransitionSchedule-Editable-End -->

<!-- EngagedRestartTransitionSchedule-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-30]` |
| Default Value  | 7 |
<!-- EngagedRestartTransitionSchedule-DFProperties-End -->

<!-- EngagedRestartTransitionSchedule-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EngagedRestartTransitionSchedule |
| Friendly Name | Specify Engaged restart transition and notification schedule for updates |
| Element Name | Transition (days) |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Legacy Policies |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- EngagedRestartTransitionSchedule-GpMapping-End -->

<!-- EngagedRestartTransitionSchedule-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EngagedRestartTransitionSchedule-Examples-End -->

<!-- EngagedRestartTransitionSchedule-End -->

<!-- EngagedRestartTransitionScheduleForFeatureUpdates-Begin -->
### EngagedRestartTransitionScheduleForFeatureUpdates

<!-- EngagedRestartTransitionScheduleForFeatureUpdates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- EngagedRestartTransitionScheduleForFeatureUpdates-Applicability-End -->

<!-- EngagedRestartTransitionScheduleForFeatureUpdates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/EngagedRestartTransitionScheduleForFeatureUpdates
```
<!-- EngagedRestartTransitionScheduleForFeatureUpdates-OmaUri-End -->

<!-- EngagedRestartTransitionScheduleForFeatureUpdates-Description-Begin -->
<!-- Description-Source-ADMX-Forced -->
Enable this policy to control the timing before transitioning from Auto restarts scheduled outside of active hours to Engaged restart, which requires the user to schedule. The period can be set between 0 and 30 days from the time the restart becomes pending.

You can specify the number of days a user can snooze Engaged restart reminder notifications. The snooze period can be set between 1 and 3 days.

You can specify the deadline in days before automatically scheduling and executing a pending restart regardless of active hours. The deadline can be set between 2 and 30 days from the time the restart becomes pending. If configured, the pending restart will transition from Auto-restart to Engaged restart (pending user schedule) to automatically executed, within the specified period.

If you don't specify a deadline or if the deadline is set to 0, the PC won't automatically restart and will require the person to schedule it prior to restart.

If you disable or don't configure this policy, the PC will restart following the default schedule.

Enabling any of the following policies will override the above policy:

1. No auto-restart with logged-on users for scheduled automatic updates installations
1. Always automatically restart at scheduled time.

1. Specify deadline before auto-restart for update installation.
<!-- EngagedRestartTransitionScheduleForFeatureUpdates-Description-End -->

<!-- EngagedRestartTransitionScheduleForFeatureUpdates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EngagedRestartTransitionScheduleForFeatureUpdates-Editable-End -->

<!-- EngagedRestartTransitionScheduleForFeatureUpdates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-30]` |
| Default Value  | 7 |
<!-- EngagedRestartTransitionScheduleForFeatureUpdates-DFProperties-End -->

<!-- EngagedRestartTransitionScheduleForFeatureUpdates-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EngagedRestartTransitionSchedule |
| Friendly Name | Specify Engaged restart transition and notification schedule for updates |
| Element Name | Transition (days) |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Legacy Policies |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- EngagedRestartTransitionScheduleForFeatureUpdates-GpMapping-End -->

<!-- EngagedRestartTransitionScheduleForFeatureUpdates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EngagedRestartTransitionScheduleForFeatureUpdates-Examples-End -->

<!-- EngagedRestartTransitionScheduleForFeatureUpdates-End -->

<!-- IgnoreMOAppDownloadLimit-Begin -->
### IgnoreMOAppDownloadLimit

<!-- IgnoreMOAppDownloadLimit-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- IgnoreMOAppDownloadLimit-Applicability-End -->

<!-- IgnoreMOAppDownloadLimit-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/IgnoreMOAppDownloadLimit
```
<!-- IgnoreMOAppDownloadLimit-OmaUri-End -->

<!-- IgnoreMOAppDownloadLimit-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether to ignore the MO download limit (allow unlimited downloading) over a cellular network for apps and their updates. If lower-level limits (for example, mobile caps) are required, those limits are controlled by external policies.

> [!WARNING]
> Setting this policy might cause devices to incur costs from MO operators.
<!-- IgnoreMOAppDownloadLimit-Description-End -->

<!-- IgnoreMOAppDownloadLimit-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
To validate this policy:

1. Enable the policy and ensure the device is on a cellular network.
2. Run the scheduled task on your device to check for app updates in the background. For example, on a device, run the following commands in [TShell](/windows-hardware/manufacture/desktop/factoryos/connect-using-tshell):

    ```TShell
    exec-device schtasks.exe -arguments '/run /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /I'
    ```
<!-- IgnoreMOAppDownloadLimit-Editable-End -->

<!-- IgnoreMOAppDownloadLimit-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- IgnoreMOAppDownloadLimit-DFProperties-End -->

<!-- IgnoreMOAppDownloadLimit-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Don't ignore MO download limit for apps and their updates. |
| 1 | Ignore MO download limit (allow unlimited downloading) for apps and their updates. |
<!-- IgnoreMOAppDownloadLimit-AllowedValues-End -->

<!-- IgnoreMOAppDownloadLimit-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IgnoreMOAppDownloadLimit-Examples-End -->

<!-- IgnoreMOAppDownloadLimit-End -->

<!-- IgnoreMOUpdateDownloadLimit-Begin -->
### IgnoreMOUpdateDownloadLimit

<!-- IgnoreMOUpdateDownloadLimit-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- IgnoreMOUpdateDownloadLimit-Applicability-End -->

<!-- IgnoreMOUpdateDownloadLimit-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/IgnoreMOUpdateDownloadLimit
```
<!-- IgnoreMOUpdateDownloadLimit-OmaUri-End -->

<!-- IgnoreMOUpdateDownloadLimit-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether to ignore the MO download limit (allow unlimited downloading) over a cellular network for OS updates. If lower-level limits (for example, mobile caps) are required, those limits are controlled by external policies.

> [!WARNING]
> Setting this policy might cause devices to incur costs from MO operators.
<!-- IgnoreMOUpdateDownloadLimit-Description-End -->

<!-- IgnoreMOUpdateDownloadLimit-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
To validate this policy:

1. Enable the policy and ensure the device is on a cellular network.
2. Run the scheduled task on your device to check for app updates in the background. For example, on a device, run the following commands in [TShell](/windows-hardware/manufacture/desktop/factoryos/connect-using-tshell):

    ```TShell
    exec-device schtasks.exe -arguments '/run /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /I'
    ```
<!-- IgnoreMOUpdateDownloadLimit-Editable-End -->

<!-- IgnoreMOUpdateDownloadLimit-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- IgnoreMOUpdateDownloadLimit-DFProperties-End -->

<!-- IgnoreMOUpdateDownloadLimit-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Don't ignore MO download limit for OS updates. |
| 1 | Ignore MO download limit (allow unlimited downloading) for OS updates. |
<!-- IgnoreMOUpdateDownloadLimit-AllowedValues-End -->

<!-- IgnoreMOUpdateDownloadLimit-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IgnoreMOUpdateDownloadLimit-Examples-End -->

<!-- IgnoreMOUpdateDownloadLimit-End -->

<!-- PauseDeferrals-Begin -->
### PauseDeferrals

<!-- PauseDeferrals-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- PauseDeferrals-Applicability-End -->

<!-- PauseDeferrals-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/PauseDeferrals
```
<!-- PauseDeferrals-OmaUri-End -->

<!-- PauseDeferrals-Description-Begin -->
<!-- Description-Source-DDF -->

> [!NOTE]
> Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](#changes-in-windows-10-version-1607). You can continue to use PauseDeferrals for Windows 10, version 1511 devices. Allows IT Admins to pause updates and upgrades for up to 5 weeks. Paused deferrals will be reset after 5 weeks. If the Specify intranet Microsoft update service location policy is enabled, then the Defer upgrades by, Defer updates by and Pause Updates and Upgrades settings have no effect. If the Allow Telemetry policy is enabled and the Options value is set to 0, then the Defer upgrades by, Defer updates by and Pause Updates and Upgrades settings have no effect.
<!-- PauseDeferrals-Description-End -->

<!-- PauseDeferrals-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PauseDeferrals-Editable-End -->

<!-- PauseDeferrals-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- PauseDeferrals-DFProperties-End -->

<!-- PauseDeferrals-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Deferrals aren't paused. |
| 1 | Deferrals are paused. |
<!-- PauseDeferrals-AllowedValues-End -->

<!-- PauseDeferrals-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DeferUpgrade |
| Path | WindowsUpdate > AT > WindowsComponents > WindowsUpdateCat |
| Element Name | PauseDeferralsId |
<!-- PauseDeferrals-GpMapping-End -->

<!-- PauseDeferrals-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PauseDeferrals-Examples-End -->

<!-- PauseDeferrals-End -->

<!-- PhoneUpdateRestrictions-Begin -->
### PhoneUpdateRestrictions

<!-- PhoneUpdateRestrictions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- PhoneUpdateRestrictions-Applicability-End -->

<!-- PhoneUpdateRestrictions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/PhoneUpdateRestrictions
```
<!-- PhoneUpdateRestrictions-OmaUri-End -->

<!-- PhoneUpdateRestrictions-Description-Begin -->
<!-- Description-Source-DDF -->
This policy is deprecated. Use Update/RequireUpdateApproval instead.
<!-- PhoneUpdateRestrictions-Description-End -->

<!-- PhoneUpdateRestrictions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PhoneUpdateRestrictions-Editable-End -->

<!-- PhoneUpdateRestrictions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4]` |
| Default Value  | 4 |
<!-- PhoneUpdateRestrictions-DFProperties-End -->

<!-- PhoneUpdateRestrictions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PhoneUpdateRestrictions-Examples-End -->

<!-- PhoneUpdateRestrictions-End -->

<!-- RequireDeferUpgrade-Begin -->
### RequireDeferUpgrade

<!-- RequireDeferUpgrade-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- RequireDeferUpgrade-Applicability-End -->

<!-- RequireDeferUpgrade-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/RequireDeferUpgrade
```
<!-- RequireDeferUpgrade-OmaUri-End -->

<!-- RequireDeferUpgrade-Description-Begin -->
<!-- Description-Source-DDF -->

> [!NOTE]
> Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](#changes-in-windows-10-version-1607). You can continue to use RequireDeferUpgrade for Windows 10, version 1511 devices. Allows the IT admin to set a device to Semi-Annual Channel train.
<!-- RequireDeferUpgrade-Description-End -->

<!-- RequireDeferUpgrade-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RequireDeferUpgrade-Editable-End -->

<!-- RequireDeferUpgrade-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- RequireDeferUpgrade-DFProperties-End -->

<!-- RequireDeferUpgrade-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User gets upgrades from Semi-Annual Channel (Targeted). |
| 1 | User gets upgrades from Semi-Annual Channel. |
<!-- RequireDeferUpgrade-AllowedValues-End -->

<!-- RequireDeferUpgrade-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DeferUpgrade |
| Path | WindowsUpdate > AT > WindowsComponents > WindowsUpdateCat |
| Element Name | DeferUpgradePeriodId |
<!-- RequireDeferUpgrade-GpMapping-End -->

<!-- RequireDeferUpgrade-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RequireDeferUpgrade-Examples-End -->

<!-- RequireDeferUpgrade-End -->

<!-- RequireUpdateApproval-Begin -->
### RequireUpdateApproval

<!-- RequireUpdateApproval-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- RequireUpdateApproval-Applicability-End -->

<!-- RequireUpdateApproval-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/RequireUpdateApproval
```
<!-- RequireUpdateApproval-OmaUri-End -->

<!-- RequireUpdateApproval-Description-Begin -->
<!-- Description-Source-DDF -->

> [!NOTE]
> If you previously used the Update/PhoneUpdateRestrictions policy in previous versions of Windows, it has been deprecated. Please use this policy instead. Allows the IT admin to restrict the updates that are installed on a device to only those on an update approval list. It enables IT to accept the End User License Agreement (EULA) associated with the approved update on behalf of the end-user. EULAs are approved once an update is approved.
<!-- RequireUpdateApproval-Description-End -->

<!-- RequireUpdateApproval-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RequireUpdateApproval-Editable-End -->

<!-- RequireUpdateApproval-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- RequireUpdateApproval-DFProperties-End -->

<!-- RequireUpdateApproval-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not configured. The device installs all applicable updates. |
| 1 | The device only installs updates that are both applicable and on the Approved Updates list. Set this policy to 1 if IT wants to control the deployment of updates on devices, such as when testing is required prior to deployment. |
<!-- RequireUpdateApproval-AllowedValues-End -->

<!-- RequireUpdateApproval-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RequireUpdateApproval-Examples-End -->

<!-- RequireUpdateApproval-End -->

<!-- ScheduleImminentRestartWarning-Begin -->
### ScheduleImminentRestartWarning

<!-- ScheduleImminentRestartWarning-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- ScheduleImminentRestartWarning-Applicability-End -->

<!-- ScheduleImminentRestartWarning-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ScheduleImminentRestartWarning
```
<!-- ScheduleImminentRestartWarning-OmaUri-End -->

<!-- ScheduleImminentRestartWarning-Description-Begin -->
<!-- Description-Source-ADMX -->
Enable this policy to control when notifications are displayed to warn users about a scheduled restart for the update installation deadline. Users aren't able to postpone the scheduled restart once the deadline has been reached and the restart is automatically executed.

Specifies the amount of time prior to a scheduled restart to display the warning reminder to the user.

You can specify the amount of time prior to a scheduled restart to notify the user that the auto restart is imminent to allow them time to save their work.

If you disable or don't configure this policy, the default notification behaviors will be used.
<!-- ScheduleImminentRestartWarning-Description-End -->

<!-- ScheduleImminentRestartWarning-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ScheduleImminentRestartWarning-Editable-End -->

<!-- ScheduleImminentRestartWarning-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 15 |
<!-- ScheduleImminentRestartWarning-DFProperties-End -->

<!-- ScheduleImminentRestartWarning-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 15 (Default) | 15 Minutes. |
| 30 | 30 Minutes. |
| 60 | 60 Minutes. |
<!-- ScheduleImminentRestartWarning-AllowedValues-End -->

<!-- ScheduleImminentRestartWarning-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | RestartWarnRemind |
| Friendly Name | Configure auto-restart warning notifications schedule for updates |
| Element Name | Warning (mins) |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Legacy Policies |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- ScheduleImminentRestartWarning-GpMapping-End -->

<!-- ScheduleImminentRestartWarning-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ScheduleImminentRestartWarning-Examples-End -->

<!-- ScheduleImminentRestartWarning-End -->

<!-- ScheduleRestartWarning-Begin -->
### ScheduleRestartWarning

<!-- ScheduleRestartWarning-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- ScheduleRestartWarning-Applicability-End -->

<!-- ScheduleRestartWarning-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/ScheduleRestartWarning
```
<!-- ScheduleRestartWarning-OmaUri-End -->

<!-- ScheduleRestartWarning-Description-Begin -->
<!-- Description-Source-ADMX -->
Enable this policy to control when notifications are displayed to warn users about a scheduled restart for the update installation deadline. Users aren't able to postpone the scheduled restart once the deadline has been reached and the restart is automatically executed.

Specifies the amount of time prior to a scheduled restart to display the warning reminder to the user.

You can specify the amount of time prior to a scheduled restart to notify the user that the auto restart is imminent to allow them time to save their work.

If you disable or don't configure this policy, the default notification behaviors will be used.
<!-- ScheduleRestartWarning-Description-End -->

<!-- ScheduleRestartWarning-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ScheduleRestartWarning-Editable-End -->

<!-- ScheduleRestartWarning-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 4 |
<!-- ScheduleRestartWarning-DFProperties-End -->

<!-- ScheduleRestartWarning-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 2 | 2 Hours. |
| 4 (Default) | 4 Hours. |
| 8 | 8 Hours. |
| 12 | 12 Hours. |
| 24 | 24 Hours. |
<!-- ScheduleRestartWarning-AllowedValues-End -->

<!-- ScheduleRestartWarning-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | RestartWarnRemind |
| Friendly Name | Configure auto-restart warning notifications schedule for updates |
| Element Name | Reminder (hours) |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Legacy Policies |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- ScheduleRestartWarning-GpMapping-End -->

<!-- ScheduleRestartWarning-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ScheduleRestartWarning-Examples-End -->

<!-- ScheduleRestartWarning-End -->

<!-- SetAutoRestartNotificationDisable-Begin -->
### SetAutoRestartNotificationDisable

<!-- SetAutoRestartNotificationDisable-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- SetAutoRestartNotificationDisable-Applicability-End -->

<!-- SetAutoRestartNotificationDisable-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Update/SetAutoRestartNotificationDisable
```
<!-- SetAutoRestartNotificationDisable-OmaUri-End -->

<!-- SetAutoRestartNotificationDisable-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control whether users receive notifications for auto restarts for update installations including reminder and warning notifications.

Enable this policy to turn off all auto restart notifications.

If you disable or don't configure this policy, the default notification behaviors will be unchanged.
<!-- SetAutoRestartNotificationDisable-Description-End -->

<!-- SetAutoRestartNotificationDisable-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SetAutoRestartNotificationDisable-Editable-End -->

<!-- SetAutoRestartNotificationDisable-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- SetAutoRestartNotificationDisable-DFProperties-End -->

<!-- SetAutoRestartNotificationDisable-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Enabled. |
| 1 | Disabled. |
<!-- SetAutoRestartNotificationDisable-AllowedValues-End -->

<!-- SetAutoRestartNotificationDisable-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AutoRestartNotificationDisable |
| Friendly Name | Turn off auto-restart notifications for update installations |
| Location | Computer Configuration |
| Path | Windows Components > Windows Update > Legacy Policies |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsUpdate |
| ADMX File Name | WindowsUpdate.admx |
<!-- SetAutoRestartNotificationDisable-GpMapping-End -->

<!-- SetAutoRestartNotificationDisable-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetAutoRestartNotificationDisable-Examples-End -->

<!-- SetAutoRestartNotificationDisable-End -->

<!-- Update-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## Changes in Windows 10, version 1607

Here are the new policies added in Windows 10, version 1607. Use these policies for Windows 10, version 1607 devices instead of the older policies

- ActiveHoursEnd
- ActiveHoursStart
- AllowMUUpdateService
- BranchReadinessLevel
- DeferFeatureUpdatePeriodInDays
- DeferQualityUpdatePeriodInDays
- ExcludeWUDriversInQualityUpdate
- PauseFeatureUpdates
- PauseQualityUpdates

Here's the list of older policies that are still supported for backward compatibility. You can use these older policies for Windows 10, version 1511 devices.

- RequireDeferUpgrade
- DeferUpgradePeriod
- DeferUpdatePeriod
- PauseDeferrals

<!-- Update-CspMoreInfo-End -->

<!-- Update-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)

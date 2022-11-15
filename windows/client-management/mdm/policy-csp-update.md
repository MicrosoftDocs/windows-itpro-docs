---
title: Policy CSP - Update
description: The Policy CSP - Update allows the IT admin, when used with Update/ActiveHoursStart, to manage a range of active hours where update reboots aren't scheduled.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 06/15/2022
ms.reviewer: 
manager: aaroncz
ms.collection: highpri
---

# Policy CSP - Update


<hr/>

<!--Policies-->
## Update policies

<dl>
  <dd>
    <a href="#update-activehoursend">Update/ActiveHoursEnd</a>
  </dd>
  <dd>
    <a href="#update-activehoursmaxrange">Update/ActiveHoursMaxRange</a>
  </dd>
  <dd>
    <a href="#update-activehoursstart">Update/ActiveHoursStart</a>
  </dd>
  <dd>
    <a href="#update-allowautoupdate">Update/AllowAutoUpdate</a>
  </dd>
  <dd>
    <a href="#update-allowautowindowsupdatedownloadovermeterednetwork">Update/AllowAutoWindowsUpdateDownloadOverMeteredNetwork</a>
  </dd>
  <dd>
    <a href="#update-allowmuupdateservice">Update/AllowMUUpdateService</a>
  </dd>
  <dd>
    <a href="#update-allownonmicrosoftsignedupdate">Update/AllowNonMicrosoftSignedUpdate</a>
  </dd>
  <dd>
    <a href="#update-allowupdateservice">Update/AllowUpdateService</a>
  </dd>
  <dd>
    <a href="#update-autorestartdeadlineperiodindays">Update/AutoRestartDeadlinePeriodInDays</a>
  </dd>
  <dd>
    <a href="#update-autorestartdeadlineperiodindaysforfeatureupdates">Update/AutoRestartDeadlinePeriodInDaysForFeatureUpdates</a>
  </dd>
  <dd>
    <a href="#update-autorestartnotificationschedule">Update/AutoRestartNotificationSchedule</a>
  </dd>
  <dd>
    <a href="#update-autorestartrequirednotificationdismissal">Update/AutoRestartRequiredNotificationDismissal</a>
  </dd>
  <dd>
    <a href="#update-automaticmaintenancewakeup">Update/AutomaticMaintenanceWakeUp</a>
  </dd>
  <dd>
    <a href="#update-branchreadinesslevel">Update/BranchReadinessLevel</a>
  </dd>
  <dd>
    <a href="#update-configuredeadlineforfeatureupdates">Update/ConfigureDeadlineForFeatureUpdates</a>
  </dd>
  <dd>
    <a href="#update-configuredeadlineforqualityupdates">Update/ConfigureDeadlineForQualityUpdates</a>
  </dd>
  <dd>
    <a href="#update-configuredeadlinegraceperiod">Update/ConfigureDeadlineGracePeriod</a>
  </dd>
  <dd>
    <a href="#update-configuredeadlinegraceperiodforfeatureupdates">Update/ConfigureDeadlineGracePeriodForFeatureUpdates</a>
  </dd>
  <dd>
    <a href="#update-configuredeadlinenoautoreboot">Update/ConfigureDeadlineNoAutoReboot</a>
  </dd>
  <dd>
    <a href="#update-configurefeatureupdateuninstallperiod">Update/ConfigureFeatureUpdateUninstallPeriod</a>
  </dd>
  <dd>
    <a href="#update-deferfeatureupdatesperiodindays">Update/DeferFeatureUpdatesPeriodInDays</a>
  </dd>
  <dd>
    <a href="#update-deferqualityupdatesperiodindays">Update/DeferQualityUpdatesPeriodInDays</a>
  </dd>
  <dd>
    <a href="#update-deferupdateperiod">Update/DeferUpdatePeriod</a>
  </dd>
  <dd>
    <a href="#update-deferupgradeperiod">Update/DeferUpgradePeriod</a>
  </dd>
  <dd>
    <a href="#update-detectionfrequency">Update/DetectionFrequency</a>
  </dd>
  <dd>
    <a href="#update-disabledualscan">Update/DisableDualScan</a>
  </dd>
  <dd>
    <a href="#update-disablewufbsafeguards">Update/DisableWUfBSafeguards</a>
  </dd>
  <dd>
    <a href="#update-donotenforceenterprisetlscertpinningforupdatedetection">Update/DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection</a>
  </dd>
  <dd>
    <a href="#update-engagedrestartdeadline">Update/EngagedRestartDeadline</a>
  </dd>
  <dd>
    <a href="#update-engagedrestartdeadlineforfeatureupdates">Update/EngagedRestartDeadlineForFeatureUpdates</a>
  </dd>
  <dd>
    <a href="#update-engagedrestartsnoozeschedule">Update/EngagedRestartSnoozeSchedule</a>
  </dd>
  <dd>
    <a href="#update-engagedrestartsnoozescheduleforfeatureupdates">Update/EngagedRestartSnoozeScheduleForFeatureUpdates</a>
  </dd>
  <dd>
    <a href="#update-engagedrestarttransitionschedule">Update/EngagedRestartTransitionSchedule</a>
  </dd>
  <dd>
    <a href="#update-engagedrestarttransitionscheduleforfeatureupdates">Update/EngagedRestartTransitionScheduleForFeatureUpdates</a>
  </dd>
  <dd>
    <a href="#update-excludewudriversinqualityupdate">Update/ExcludeWUDriversInQualityUpdate</a>
  </dd>
  <dd>
    <a href="#update-fillemptycontenturls">Update/FillEmptyContentUrls</a>
  </dd>
  <dd>
    <a href="#update-ignoremoappdownloadlimit">Update/IgnoreMOAppDownloadLimit</a>
  </dd>
  <dd>
    <a href="#update-ignoremoupdatedownloadlimit">Update/IgnoreMOUpdateDownloadLimit</a>
  </dd>
  <dd>
    <a href="#update-managepreviewbuilds">Update/ManagePreviewBuilds</a>
  </dd>
  <dd>
    <a href="#update-NoUpdateNotificationDuringActiveHours">Update/NoUpdateNotificationDuringActiveHours</a>
  </dd>
  <dd>
    <a href="#update-pausedeferrals">Update/PauseDeferrals</a>
  </dd>
  <dd>
    <a href="#update-pausefeatureupdates">Update/PauseFeatureUpdates</a>
  </dd>
  <dd>
    <a href="#update-pausefeatureupdatesstarttime">Update/PauseFeatureUpdatesStartTime</a>
  </dd>
  <dd>
    <a href="#update-pausequalityupdates">Update/PauseQualityUpdates</a>
  </dd>
  <dd>
    <a href="#update-pausequalityupdatesstarttime">Update/PauseQualityUpdatesStartTime</a>
  </dd>
  <dd>
    <a href="#update-phoneupdaterestrictions">Update/PhoneUpdateRestrictions</a>
  </dd>
  <dd>
    <a href="#update-requiredeferupgrade">Update/RequireDeferUpgrade</a>
  </dd>
  <dd>
    <a href="#update-requireupdateapproval">Update/RequireUpdateApproval</a>
  </dd>
  <dd>
    <a href="#update-scheduleimminentrestartwarning">Update/ScheduleImminentRestartWarning</a>
  </dd>
  <dd>
    <a href="#update-schedulerestartwarning">Update/ScheduleRestartWarning</a>
  </dd>
  <dd>
    <a href="#update-scheduledinstallday">Update/ScheduledInstallDay</a>
  </dd>
  <dd>
    <a href="#update-scheduledinstalleveryweek">Update/ScheduledInstallEveryWeek</a>
  </dd>
  <dd>
    <a href="#update-scheduledinstallfirstweek">Update/ScheduledInstallFirstWeek</a>
  </dd>
  <dd>
    <a href="#update-scheduledinstallfourthweek">Update/ScheduledInstallFourthWeek</a>
  </dd>
  <dd>
    <a href="#update-scheduledinstallsecondweek">Update/ScheduledInstallSecondWeek</a>
  </dd>
  <dd>
    <a href="#update-scheduledinstallthirdweek">Update/ScheduledInstallThirdWeek</a>
  </dd>
  <dd>
    <a href="#update-scheduledinstalltime">Update/ScheduledInstallTime</a>
  </dd>
  <dd>
    <a href="#update-setautorestartnotificationdisable">Update/SetAutoRestartNotificationDisable</a>
  </dd>
  <dd>
    <a href="#update-setdisablepauseuxaccess">Update/SetDisablePauseUXAccess</a>
  </dd>
  <dd>
    <a href="#update-setdisableuxwuaccess">Update/SetDisableUXWUAccess</a>
  </dd>
  <dd>
    <a href="#update-setedurestart">Update/SetEDURestart</a>
  </dd>
  <dd>
    <a href="#update-setpolicydrivenupdatesourcefordriverupdates">Update/SetPolicyDrivenUpdateSourceForDriverUpdates</a>
  </dd>
  <dd>
    <a href="#update-setpolicydrivenupdatesourceforfeatureupdates">Update/SetPolicyDrivenUpdateSourceForFeatureUpdates</a>
  </dd>
  <dd>
    <a href="#update-setpolicydrivenupdatesourceforotherupdates">Update/SetPolicyDrivenUpdateSourceForOtherUpdates</a>
  </dd>
  <dd>
    <a href="#update-setpolicydrivenupdatesourceforqualityupdates">Update/SetPolicyDrivenUpdateSourceForQualityUpdates</a>
  </dd>
  <dd>
    <a href="#update-setproxybehaviorforupdatedetection">Update/SetProxyBehaviorForUpdateDetection</a>
  </dd>
  <dd>
    <a href="#update-productversion">Update/ProductVersion</a>
  </dd>
  <dd>
    <a href="#update-targetreleaseversion">Update/TargetReleaseVersion</a>
  </dd>
  <dd>
    <a href="#update-updatenotificationlevel">Update/UpdateNotificationLevel</a>
  </dd>
  <dd>
    <a href="#update-updateserviceurl">Update/UpdateServiceUrl</a>
  </dd>
  <dd>
    <a href="#update-updateserviceurlalternate">Update/UpdateServiceUrlAlternate</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="update-activehoursend"></a>**Update/ActiveHoursEnd**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows the IT admin (when used with **Update/ActiveHoursStart**) to manage a range of active hours where update reboots aren't scheduled. This value sets the end time. There's a 12-hour maximum from start time.

> [!NOTE]
> The default maximum difference from start time has been increased to 18 in Windows 10, version 1703. In this version of Windows 10, the maximum range of active hours can now be configured. See **Update/ActiveHoursMaxRange** below for more information.

Supported values are 0-23, where 0 is 12 AM, 1 is 1 AM, etc.

The default is 17 (5 PM).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Turn off auto-restart for updates during active hours*
- GP name: *ActiveHours*
- GP element: *ActiveHoursEndTime*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-activehoursmaxrange"></a>**Update/ActiveHoursMaxRange**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows the IT admin to specify the max active hours range. This value sets max number of active hours from start time.

Supported values are 8-18.

The default value is 18 (hours).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify active hours range for auto-restarts*
- GP name: *ActiveHoursMaxRange*
- GP element: *ActiveHoursMaxRange*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-activehoursstart"></a>**Update/ActiveHoursStart**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows the IT admin (when used with **Update/ActiveHoursEnd**) to manage a range of hours where update reboots aren't scheduled. This value sets the start time. There's a 12-hour maximum from end time.

> [!NOTE]
> The default maximum difference from end time has been increased to 18 in Windows 10, version 1703. In this version of Windows 10, the maximum range of active hours can now be configured. See **Update/ActiveHoursMaxRange** above for more information.

Supported values are 0-23, where 0 is 12 AM, 1 is 1 AM, etc.

The default value is 8 (8 AM).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Turn off auto-restart for updates during active hours*
- GP name: *ActiveHours*
- GP element: *ActiveHoursStartTime*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-allowautoupdate"></a>**Update/AllowAutoUpdate**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Enables the IT admin to manage automatic update behavior to scan, download, and install updates.

Supported operations are Get and Replace.

If the policy isn't configured, end-users get the default behavior (Auto download and install).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Configure Automatic Updates*
- GP name: *AutoUpdateCfg*
- GP element: *AutoUpdateMode*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0: Notify the user before downloading the update. This policy is used by the enterprise who wants to enable the end users to manage data usage. With this option, users are notified when there are updates that apply to the device and are ready for download. Users can download and install the updates from the Windows Update control panel.
- 1: Auto install the update and then notify the user to schedule a device restart. Updates are downloaded automatically on non-metered networks and installed during "Automatic Maintenance" when the device isn't in use and isn't running on battery power. If automatic maintenance is unable to install updates for two days, Windows Update will install updates immediately. If the installation requires a restart, the end user is prompted to schedule the restart. The end user has up to seven days to schedule the restart and after that, a restart of the device is forced. Enabling the end user to control the start time reduces the risk of accidental data loss caused by applications that don't shut down properly on restart. For more information, see [Automatic maintenance](/windows/win32/taskschd/task-maintenence).
- 2: Auto install and restart. Updates are downloaded automatically on non-metered networks and installed during "Automatic Maintenance" when the device isn't in use and isn't running on battery power. If automatic maintenance is unable to install updates for two days, Windows Update installs updates right away. If a restart is required, then the device is automatically restarted when the device isn't actively being used. This behavior is the default for unmanaged devices. Devices are updated quickly, but it increases the risk of accidental data loss caused by an application that doesn't shut down properly on restart. For more information, see [Automatic maintenance](/windows/win32/taskschd/task-maintenence).
- 3: Auto install and restart at a specified time. You specify the installation day and time. If no day and time is specified, the default is 3 AM daily. Automatic installation happens at this time and device restart happens after a 15-minute countdown. If the user is signed in when Windows is ready to restart, the user can interrupt the 15-minute countdown to delay the restart.
- 4: Auto install and restart at a specified time. You specify the installation day and time. If no day and time is specified, the default is 3 AM daily. Automatic installation happens at this time and device restart happens after a 15-minute countdown. If the user is signed in when Windows is ready to restart, the user can interrupt the 15-minute countdown to delay the restart. This option is the same as `3`, but restricts end user controls on the settings page.
- 5: Turn off automatic updates.
- 6 (default): Updates automatically download and install at an optimal time determined by the device. Restart occurs outside of active hours until the deadline is reached, if configured.

> [!IMPORTANT]
> This option should be used only for systems under regulatory compliance, as you won't get security updates as well.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-allowautowindowsupdatedownloadovermeterednetwork"></a>**Update/AllowAutoWindowsUpdateDownloadOverMeteredNetwork**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Option to download updates automatically over metered connections (off by default). The supported value type is integer.

A significant number of devices primarily use cellular data and don't have Wi-Fi access, which leads to a lower number of devices getting updates. Since a large number of devices have large data plans or unlimited data, this policy can unblock devices from getting updates.

This policy is accessible through the Update setting in the user interface or Group Policy.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Allow updates to be downloaded automatically over metered connections*
- GP name: *AllowAutoWindowsUpdateDownloadOverMeteredNetwork*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - Not allowed
- 1 - Allowed

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-allowmuupdateservice"></a>**Update/AllowMUUpdateService**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows the IT admin to manage whether to scan for app updates from Microsoft Update.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Configure Automatic Updates*
- GP name: *AutoUpdateCfg*
- GP element: *AllowMUUpdateServiceId*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - Not configured.
- 1 - Allowed. Accepts updates received through Microsoft Update.

> [!NOTE]
> Setting this policy back to **0** or **Not configured** doesn't revert the configuration to receive updates from Microsoft Update automatically. In order to revert the configuration, you can run the PowerShell commands that are listed below to remove the Microsoft Update service:.

```
$MUSM = New-Object -ComObject "Microsoft.Update.ServiceManager"
$MUSM.RemoveService("7971f918-a847-4430-9279-4a52d1efe18d")
```

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-allownonmicrosoftsignedupdate"></a>**Update/AllowNonMicrosoftSignedUpdate**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows the IT admin to manage whether Automatic Updates accepts updates signed by entities other than Microsoft when the update is found at the UpdateServiceUrl location. This policy supports using WSUS for third-party software and patch distribution.

Supported operations are Get and Replace.

This policy is specific to desktop and local publishing via WSUS for third-party updates (binaries and updates not hosted on Microsoft Update). This policy allows IT to manage whether Automatic Updates accepts updates signed by entities other than Microsoft, when the update is found on an intranet Microsoft update service location.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - Not allowed or not configured. Updates from an intranet Microsoft update service location must be signed by Microsoft.
- 1 - Allowed. Accepts updates received through an intranet Microsoft update service location, if they're signed by a certificate found in the "Trusted Publishers" certificate store of the local computer.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-allowupdateservice"></a>**Update/AllowUpdateService**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether the device could use Microsoft Update, Windows Server Update Services (WSUS), or Microsoft Store.

Even when Windows Update is configured to receive updates from an intranet update service. It will periodically retrieve information from the public Windows Update service to enable future connections to Windows Update, and other services like Microsoft Update or the Microsoft Store.

Enabling this policy will disable that functionality, and may cause connection to public services such as the Microsoft Store to stop working.

> [!NOTE]
> This policy applies only when the desktop or device is configured to connect to an intranet update service using the "Specify intranet Microsoft update service location" policy.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify intranet Microsoft update service location*
- GP name: *CorpWuURL*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - Update service isn't allowed.
- 1 (default) - Update service is allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-autorestartdeadlineperiodindays"></a>**Update/AutoRestartDeadlinePeriodInDays**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
For Quality Updates, this policy specifies the deadline in days before automatically executing a scheduled restart outside of active hours. The deadline can be set between 2 and 30 days from the time the restart is scheduled.

The system will reboot on or after the specified deadline. The reboot is prioritized over any configured Active Hours and any existing system, and user busy checks.

Supported value type is integer. Default is seven days.

Supported values range: 2-30.

The PC must restart for certain updates to take effect.

If you enable this policy, a restart will automatically occur the specified number of days after the restart was scheduled.

If you disable or don't configure this policy, the PC will restart according to the default schedule.

If any of the following two policies are enabled, this policy has no effect:

1. No autorestart with signed-in users for the scheduled automatic updates installations.
2. Always automatically restart at scheduled time.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify deadline before auto-restart for update installation*
- GP name: *AutoRestartDeadline*
- GP element: *AutoRestartDeadline*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-autorestartdeadlineperiodindaysforfeatureupdates"></a>**Update/AutoRestartDeadlinePeriodInDaysForFeatureUpdates**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
For Feature Updates, this policy specifies the deadline in days before automatically executing a scheduled restart outside of active hours. The deadline can be set between 2 and 30 days from the time the restart is scheduled.

The system will reboot on or after the specified deadline. The reboot is prioritized over any configured Active Hours and any existing system, and user busy checks.

Supported value type is integer. Default is 7 days.

Supported values range: 2-30.

The PC must restart for certain updates to take effect.

If you enable this policy, a restart will automatically occur the specified number of days after the restart was scheduled.

If you disable or don't configure this policy, the PC will restart according to the default schedule.

If any of the following two policies are enabled, this policy has no effect:

1. No autorestart with logged on users for the scheduled automatic updates installations.
2. Always automatically restart at scheduled time.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify deadline before auto-restart for update installation*
- GP name: *AutoRestartDeadline*
- GP element: *AutoRestartDeadlineForFeatureUpdates*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-autorestartnotificationschedule"></a>**Update/AutoRestartNotificationSchedule**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows the IT Admin to specify the period for autorestart reminder notifications.

The default value is 15 (minutes).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Configure auto-restart reminder notifications for updates*
- GP name: *AutoRestartNotificationConfig*
- GP element: *AutoRestartNotificationSchd*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values are 15, 30, 60, 120, and 240 (minutes).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-autorestartrequirednotificationdismissal"></a>**Update/AutoRestartRequiredNotificationDismissal**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows the IT Admin to specify the method by which the autorestart required notification is dismissed.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Configure auto-restart required notification for updates*
- GP name: *AutoRestartRequiredNotificationDismissal*
- GP element: *AutoRestartRequiredNotificationDismissal*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 1 (default) - Auto Dismissal.
- 2 - User Dismissal.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-automaticmaintenancewakeup"></a>**Update/AutomaticMaintenanceWakeUp**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to configure if Automatic Maintenance should make a wake request to the OS for the daily scheduled maintenance.

> [!Note]
> If the OS power wake policy is explicitly disabled, then this setting has no effect.

If you enable this policy setting, Automatic Maintenance attempts to set OS wake policy and make a wake request for the daily scheduled time, if necessary.

If you disable or don't configure this policy setting, the wake setting as specified in Security and Maintenance/Automatic Maintenance Control Panel applies.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Automatic Maintenance WakeUp Policy*
- GP name: *WakeUpPolicy*
- GP path: *Windows Components/Maintenance Scheduler*
- GP ADMX file name: *msched.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:
- 0  - Disable
- 1  - Enable (Default)
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-branchreadinesslevel"></a>**Update/BranchReadinessLevel**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows the IT admin to set which branch a device receives their updates from. As of 1903, the branch readiness levels of General Availability Channel (Targeted) and General Availability Channel have been combined into one General Availability Channel set with a value of 16. For devices on 1903 and later releases, the value of 32 isn't a supported value.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Select when Preview Builds and Feature Updates are received*
- GP name: *DeferFeatureUpdates*
- GP element: *BranchReadinessLevelId*
- GP path: *Windows Components/Windows Update/Windows Update for Business*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-  2  {0x2}  - Windows Insider build - Fast (added in Windows 10, version 1709)
-  4  {0x4}  - Windows Insider build - Slow (added in Windows 10, version 1709)
-  8  {0x8}  - Release Windows Insider build (added in Windows 10, version 1709)
-  16 {0x10} - (default) General Availability Channel (Targeted). Device gets all applicable feature updates from General Availability Channel (Targeted)
-  32 {0x20} - General Availability Channel. Device gets feature updates from General Availability Channel. (*Only applicable to releases prior to 1903, for all releases 1903 and after the General Availability Channel and General Availability Channel (Targeted) into a single General Availability Channel with a value of 16)

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-configuredeadlineforfeatureupdates"></a>**Update/ConfigureDeadlineForFeatureUpdates**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows admins to specify the number of days before feature updates are installed on the device automatically. Before the deadline, restarts can be scheduled by users or automatically scheduled outside of active hours, according to [Update/ConfigureDeadlineNoAutoReboot](#update-configuredeadlinenoautoreboot). After the deadline passes, restarts will occur regardless of active hours and users won't be able to reschedule.
<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify deadlines for automatic updates and restarts*
- GP name: *ConfigureDeadlineForFeatureUpdates*
- GP element: *ConfigureDeadlineForFeatureUpdates*
- GP path: *Administrative Templates\Windows Components\WindowsUpdate*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supports a numeric value from 0-30 (2-30 in Windows 10, versions 1803 and 1709), which indicates the number of days a device will wait until performing an aggressive installation of a required feature update. When set to 0, the update will download and install immediately upon offering, but might not finish within the day due to device availability and network connectivity.

Default value is 7.
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-configuredeadlineforqualityupdates"></a>**Update/ConfigureDeadlineForQualityUpdates**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows admins to specify the number of days before quality updates are installed on a device automatically. Before the deadline, restarts can be scheduled by users or automatically scheduled outside of active hours, according to [Update/ConfigureDeadlineNoAutoReboot](#update-configuredeadlinenoautoreboot). After deadline passes, restarts will occur regardless of active hours and users won't be able to reschedule.
<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify deadlines for automatic updates and restarts*
- GP name: *ConfigureDeadlineForQualityUpdates*
- GP element: *ConfigureDeadlineForQualityUpdates*
- GP path: *Administrative Templates\Windows Components\WindowsUpdate*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supports a numeric value from 0-30 (2-30 in Windows 10, versions 1803 and 1709), which indicates the number of days a device will wait until performing an aggressive installation of a required feature update. When set to 0, the update will download and install immediately upon offering, but might not finish within the day due to device availability and network connectivity.

Default value is 7.
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-configuredeadlinegraceperiod"></a>**Update/ConfigureDeadlineGracePeriod**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
When used with [Update/ConfigureDeadlineForQualityUpdates](#update-configuredeadlineforqualityupdates) allows the admin to specify a minimum number of days until restarts occur automatically for quality updates. Setting the grace period might extend the effective deadline set by the deadline policy. If [Update/ConfigureDeadlineForQualityUpdates](#update-configuredeadlineforqualityupdates) is configured but this policy isn't, then the default value of 2 will be used.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify deadlines for automatic updates and restarts*
- GP name: *ConfigureDeadlineGracePeriod*
- GP element: *ConfigureDeadlineGracePeriod*
- GP path: *Administrative Templates\Windows Components\WindowsUpdate*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supports a numeric value from 0-7, which indicates the minimum number of days a device will wait before it restarts automatically, after installing a required quality update.

Default value is 2.
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-configuredeadlinegraceperiodforfeatureupdates"></a>**Update/ConfigureDeadlineGracePeriodForFeatureUpdates**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

When used with [Update/ConfigureDeadlineForFeatureUpdates](#update-configuredeadlineforfeatureupdates) allows the admin to specify a minimum number of days until restarts occur automatically for feature updates. Setting the grace period may extend the effective deadline set by the deadline policy. If [Update/ConfigureDeadlineForFeatureUpdates](#update-configuredeadlineforfeatureupdates) is configured but this policy isn't, then the value from [Update/ConfigureDeadlineGracePeriod](#update-configuredeadlinegraceperiod) will be used; if that policy is also not configured, then the default value of 2 will be used.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify deadlines for automatic updates and restarts*
- GP name: *ConfigureDeadlineGracePeriodForFeatureUpdates*
- GP element: *ConfigureDeadlineGracePeriodForFeatureUpdates*
- GP path: *Administrative Templates\Windows Components\WindowsUpdate*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supports a numeric value from 0-7, which indicates the minimum number of days a device will wait before it restarts automatically, after installing a required feature update.

Default value is 2.
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-configuredeadlinenoautoreboot"></a>**Update/ConfigureDeadlineNoAutoReboot**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
When used with [Update/ConfigureDeadlineForFeatureUpdates](#update-configuredeadlineforfeatureupdates) or [Update/ConfigureDeadlineForQualityUpdates](#update-configuredeadlineforqualityupdates), devices will delay automatically restarting until both the deadline and grace period have expired, even if applicable updates are already installed and pending a restart.

When disabled, if the device has installed updates and is outside of active hours, it might attempt an automatic restart before the deadline.

<!---same ADMX info and rest of description>
<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify deadlines for automatic updates and restarts*
- GP name: *ConfigureDeadlineNoAutoReboot*
- GP element: *ConfigureDeadlineNoAutoReboot*
- GP path: *Administrative Templates\Windows Components\WindowsUpdate*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:
- 1 - Enabled
- 0 (default) - Disabled
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-configurefeatureupdateuninstallperiod"></a>**Update/ConfigureFeatureUpdateUninstallPeriod**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Enable IT admin to configure feature update uninstall period.

Values range 2 - 60 days.

Default is 10 days.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-deferfeatureupdatesperiodindays"></a>**Update/DeferFeatureUpdatesPeriodInDays**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

Defers Feature Updates for the specified number of days.

Supported values are 0-365 days.

> [!IMPORTANT]
> The default maximum number of days to defer an update has been increased from 180 (Windows 10, version 1607) to 365 in Windows 10, version 1703.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Select when Preview Builds and Feature Updates are received*
- GP name: *DeferFeatureUpdates*
- GP element: *DeferFeatureUpdatesPeriodId*
- GP path: *Windows Components/Windows Update/Windows Update for Business*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-deferqualityupdatesperiodindays"></a>**Update/DeferQualityUpdatesPeriodInDays**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Defers Quality Updates for the specified number of days.

Supported values are 0-30.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Select when Quality Updates are received*
- GP name: *DeferQualityUpdates*
- GP element: *DeferQualityUpdatesPeriodId*
- GP path: *Windows Components/Windows Update/Windows Update for Business*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-deferupdateperiod"></a>**Update/DeferUpdatePeriod**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](../device-update-management.md#windows10version1607forupdatemanagement). You can continue to use DeferUpdatePeriod for Windows 10, version 1511 devices.

Allows IT Admins to specify update delays for up to four weeks.

Supported values are 0-4, which refers to the number of weeks to defer updates.

If the "Specify intranet Microsoft update service location" policy is enabled, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

If the Allow Telemetry policy is enabled and the Options value is set to 0, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

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

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP name: *DeferUpgrade*
- GP element: *DeferUpdatePeriodId*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-deferupgradeperiod"></a>**Update/DeferUpgradePeriod**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](../device-update-management.md#windows10version1607forupdatemanagement). You can continue to use DeferUpgradePeriod for Windows 10, version 1511 devices.

Allows IT Admins to specify other upgrade delays for up to eight months.

Supported values are 0-8, which refers to the number of months to defer upgrades.

If the "Specify intranet Microsoft update service location" policy is enabled, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

If the "Allow Telemetry" policy is enabled and the Options value is set to 0, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP name: *DeferUpgrade*
- GP element: *DeferUpgradePeriodId*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-detectionfrequency"></a>**Update/DetectionFrequency**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies the scan frequency from every 1 - 22 hours with a random variant of 0 - 4 hours. Default is 22 hours. This policy should be enabled only when Update/UpdateServiceUrl is configured to point the device at a WSUS server rather than Microsoft Update.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Automatic Updates detection frequency*
- GP name: *DetectionFrequency_Title*
- GP element: *DetectionFrequency_Hour2*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-disabledualscan"></a>**Update/DisableDualScan**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Don't allow update deferral policies to cause scans against Windows Update. If this policy isn't enabled, then configuring deferral policies will result in the client unexpectedly scanning Windows update. With the policy enabled, those scans are prevented, and users can configure deferral policies as much as they like.

For more information about dual scan, see [Demystifying "Dual Scan"](/archive/blogs/wsus/demystifying-dual-scan) and [Improving Dual Scan on 1607](/archive/blogs/wsus/improving-dual-scan-on-1607).

This setting is the same as the Group Policy in **Windows Components** > **Windows Update**: "Do not allow update deferral policies to cause scans against Windows Update."

- Supported value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Do not allow update deferral policies to cause scans against Windows Update*
- GP name: *DisableDualScan*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - Allow scan against Windows Update
- 1 - Don't allow update deferral policies to cause scans against Windows Update

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-disablewufbsafeguards"></a>**Update/DisableWUfBSafeguards**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in Windows Update for Business devices running Windows 10, version 1809 and above and installed with October 2020 security update. This policy setting specifies that a Windows Update for Business device should skip safeguards.

Safeguard holds prevent a device with a known compatibility issue from being offered a new OS version. The offering will proceed once a fix is issued and is verified on a held device. The aim of safeguards is to protect the device and user from a failed or poor upgrade experience.

The safeguard holds protection is provided by default to all the devices trying to update to a new Windows 10 Feature Update version via Windows Update.

IT admins can, if necessary, opt devices out of safeguard protections using this policy setting or via the "Disable safeguards for Feature Updates" Group Policy.

> [!NOTE]
> Opting out of the safeguards can put devices at risk from known performance issues. We recommend opting out only in an IT environment for validation purposes. Further, you can leverage the Windows Insider Program for Business Release Preview Channel in order to validate the upcoming Windows 10 Feature Update version without the safeguards being applied.
>
> The disable safeguards policy will revert to "Not Configured" on a device after moving to a new Windows 10 version, even if previously enabled. This ensures the admin is consciously disabling Microsoft's default protection from known issues for each new feature update.
>
> Disabling safeguards doesn't guarantee your device will be able to successfully update. The update may still fail on the device and will likely result in a bad experience post upgrade, as you're bypassing the protection given by Microsoft pertaining to known issues.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Disable safeguards for Feature Updates*
- GP name: *DisableWUfBSafeguards*
- GP path: *Windows Components/Windows Update/Windows Update for Business*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - Safeguards are enabled and devices may be blocked for upgrades until the safeguard is cleared.
- 1 - Safeguards aren't enabled and upgrades will be deployed without blocking on safeguards.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-donotenforceenterprisetlscertpinningforupdatedetection"></a>**Update/DoNotEnforceEnterpriseTLSCertPinningForUpdateDetection**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
To ensure the highest levels of security, we recommended using WSUS TLS certificate pinning on all devices.

By default, certificate pinning for Windows Update client isn't enforced.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Allow user proxy to be used as a fallback if detection using system proxy fails*
- GP name: *Allow user proxy to be used as a fallback if detection using system proxy fails*
- GP path: *Windows Update\SpecifyintranetMicrosoftupdateserviceLocation*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - Enforce certificate pinning.
- 1 - Don't enforce certificate pinning.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-engagedrestartdeadline"></a>**Update/EngagedRestartDeadline**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
For Quality Updates, this policy specifies the deadline in days before automatically scheduling and executing a pending restart outside of active hours. The deadline can be set between 2 and 30 days from the time the restart becomes pending. If configured, the pending restart will transition from Autorestart to Engaged restart (pending user schedule) to be executed automatically, within the specified period.

The system will reboot on or after the specified deadline. The reboot is prioritized over any configured Active Hours and any existing system, and user busy checks.

> [!NOTE]
> If Update/EngagedDeadline is the only policy set (Update/EngagedRestartTransitionSchedule and Update/EngagedRestartSnoozeSchedule aren't set), the behavior goes from reboot required -> engaged behavior -> forced reboot after deadline is reached with a 3-day snooze period.

Supporting value type is integer.

Default is 14.

Supported value range: 2 - 30.

If no deadline is specified or deadline is set to 0, the restart won't be automatically executed, and will remain Engaged restart (for example, pending user scheduling).

If you disable or don't configure this policy, the default behaviors will be used.

If any of the following policies are configured, this policy has no effect:
1. No autorestart with logged on users for scheduled automatic updates installations.
2. Always automatically restart at scheduled time.
3. Specify deadline before autorestart for update installation.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify Engaged restart transition and notification schedule for updates*
- GP name: *EngagedRestartTransitionSchedule*
- GP element: *EngagedRestartDeadline*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-engagedrestartdeadlineforfeatureupdates"></a>**Update/EngagedRestartDeadlineForFeatureUpdates**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
For Feature Updates, this policy specifies the deadline in days before automatically scheduling and executing a pending restart outside of active hours. The deadline can be set between 2 and 30 days from the time the restart becomes pending. If configured, the pending restart will transition from Auto-restart to Engaged restart (pending user schedule) to be executed automatically, within the specified period.

Supported value type is integer.

Default is 14.

Supported value range: 2-30.

If no deadline is specified or deadline is set to 0, the restart won't be automatically executed and will remain Engaged restart (for example, pending user scheduling).

If you disable or don't configure this policy, the default behaviors will be used.

If any of the following policies are configured, this policy has no effect:
1. No autorestart with logged on users for scheduled automatic updates installations.
2. Always automatically restart at scheduled time.
3. Specify deadline before autorestart for update installation.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify Engaged restart transition and notification schedule for updates*
- GP name: *EngagedRestartTransitionSchedule*
- GP element: *EngagedRestartDeadlineForFeatureUpdates*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-engagedrestartsnoozeschedule"></a>**Update/EngagedRestartSnoozeSchedule**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
For Quality Updates, this policy specifies the number of days a user can snooze Engaged restart reminder notifications. The snooze period can be set between 1-3 days.

Supported value type is integer.

Default is three days.

Supported value range: 1-3.

If you disable or don't configure this policy, the default behaviors will be used.

If any of the following policies are configured, this policy has no effect:
1. No autorestart with logged on users for scheduled automatic updates installations.
2. Always automatically restart at scheduled time.
3. Specify deadline before autorestart for update installation.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify Engaged restart transition and notification schedule for updates*
- GP name: *EngagedRestartTransitionSchedule*
- GP element: *EngagedRestartSnoozeSchedule*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-engagedrestartsnoozescheduleforfeatureupdates"></a>**Update/EngagedRestartSnoozeScheduleForFeatureUpdates**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
For Feature Updates, this policy specifies the number of days a user can snooze Engaged restart reminder notifications. The snooze period can be set between 1-3 days.

Supported value type is integer.

Default is three days.

Supported value range: 1-3.

If you disable or don't configure this policy, the default behaviors will be used.

If any of the following policies are configured, this policy has no effect:
1. No autorestart with logged on users for scheduled automatic updates installations.
2. Always automatically restart at scheduled time.
3. Specify deadline before autorestart for update installation.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify Engaged restart transition and notification schedule for updates*
- GP name: *EngagedRestartTransitionSchedule*
- GP element: *EngagedRestartSnoozeScheduleForFeatureUpdates*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-engagedrestarttransitionschedule"></a>**Update/EngagedRestartTransitionSchedule**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
For Quality Updates, this policy specifies the timing before transitioning from Auto restarts scheduled outside of active hours to Engaged restart, which requires the user to schedule. The period can be set between 2 and 30 days from the time the restart becomes pending.

Supported value type is integer.

Default value is 7 days.

Supported value range: 2 - 30.

If you disable or don't configure this policy, the default behaviors will be used.

If any of the following policies are configured, this policy has no effect:
1. No autorestart with logged on users for scheduled automatic updates installations.
2. Always automatically restart at scheduled time.
3. Specify deadline before autorestart for update installation.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify Engaged restart transition and notification schedule for updates*
- GP name: *EngagedRestartTransitionSchedule*
- GP element: *EngagedRestartTransitionSchedule*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-engagedrestarttransitionscheduleforfeatureupdates"></a>**Update/EngagedRestartTransitionScheduleForFeatureUpdates**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
For Feature Updates, this policy specifies the timing before transitioning from Auto restarts scheduled_outside of active hours to Engaged restart, which requires the user to schedule. The period can be set between 2 and 30 days from the time the restart becomes pending.

Supported value type is integer.

Default value is seven days.

Supported value range: 2-30.

If you disable or don't configure this policy, the default behaviors will be used.

If any of the following policies are configured, this policy has no effect:
1. No autorestart with logged on users for scheduled automatic updates installations.
2. Always automatically restart at scheduled time.
3. Specify deadline before autorestart for update installation.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify Engaged restart transition and notification schedule for updates*
- GP name: *EngagedRestartTransitionSchedule*
- GP element: *EngagedRestartTransitionScheduleForFeatureUpdates*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-excludewudriversinqualityupdate"></a>**Update/ExcludeWUDriversInQualityUpdate**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

Allows IT Admins to exclude Windows Update (WU) drivers during updates.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Do not include drivers with Windows Updates*
- GP name: *ExcludeWUDriversInQualityUpdate*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - Allow Windows Update drivers.
- 1 - Exclude Windows Update drivers.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-fillemptycontenturls"></a>**Update/FillEmptyContentUrls**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows Windows Update Agent to determine the download URL when it's missing from the metadata. This scenario will occur when intranet update service stores the metadata files but the download contents are stored in the ISV file cache (specified as the <a href="#update-updateserviceurlalternate">alternate download URL</a>).

> [!NOTE]
> This setting should only be used in combination with an alternate download URL and configured to use ISV file cache. This setting is used when the intranet update service doesn't provide download URLs in the update metadata for files which are available on the alternate download server.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify intranet Microsoft update service location*
- GP name: *CorpWuURL*
- GP element: *CorpWUFillEmptyContentUrls*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - Disabled.
- 1 - Enabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-ignoremoappdownloadlimit"></a>**Update/IgnoreMOAppDownloadLimit**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether to ignore the MO download limit (allow unlimited downloading) over a cellular network for apps and their updates. If lower-level limits (for example, mobile caps) are required, those limits are controlled by external policies.

> [!WARNING]
> Setting this policy might cause devices to incur costs from MO operators.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - Don't ignore MO download limit for apps and their updates.
- 1 - Ignore MO download limit (allow unlimited downloading) for apps and their updates.

<!--/SupportedValues-->
<!--Validation-->
To validate this policy:

1.  Enable the policy and ensure the device is on a cellular network.
2.  Run the scheduled task on your device to check for app updates in the background. For example, on a device, run the following commands in TShell:
    ```TShell
       exec-device schtasks.exe -arguments '/run /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /I'
    ```

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-ignoremoupdatedownloadlimit"></a>**Update/IgnoreMOUpdateDownloadLimit**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether to ignore the MO download limit (allow unlimited downloading) over a cellular network for OS updates. If lower-level limits (for example, mobile caps) are required, those limits are controlled by external policies.

> [!WARNING]
> Setting this policy might cause devices to incur costs from MO operators.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - Don't ignore MO download limit for OS updates.
- 1 - Ignore MO download limit (allow unlimited downloading) for OS updates.

<!--/SupportedValues-->
<!--Validation-->
To validate this policy:

1.  Enable the policy and ensure the device is on a cellular network.
2.  Run the scheduled task on your device to check for app updates in the background. For example, on a device, run the following commands in TShell:
    ```TShell
       exec-device schtasks.exe -arguments '/run /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /I'
    ```

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-managepreviewbuilds"></a>**Update/ManagePreviewBuilds**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Used to manage Windows 10 Insider Preview builds.

Supported value type is integer.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Manage preview builds*
- GP name: *ManagePreviewBuilds*
- GP element: *ManagePreviewBuildsId*
- GP path: *Windows Components/Windows Update/Windows Update for Business*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - Disable Preview builds.
- 1 - Disable Preview builds once the next release is public.
- 2 - Enable Preview builds.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-NoUpdateNotificationDuringActiveHours"></a>**Update/NoUpdateNotificationDuringActiveHours**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy can be used in conjunction with Update/ActiveHoursStart and Update/ActiveHoursEnd policies to ensure that the end user sees no update notifications during active hours until deadline is reached.  Note - if no active hour period is configured then this will apply to the intelligent active hours window calculated on the device.

Supported value type is a boolean.

0 (Default) This configuration will provide the default behavior (notifications may display during active hours)
1: This setting will prevent notifications from displaying during active hours.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Display options for update notifications*
- GP name: *NoUpdateNotificationDuringActiveHours*
- GP element: *NoUpdateNotificationDuringActiveHours*
- GP path: *Windows Components\WindowsUpdate\Manage end user experience*
- GP ADMX file name: *WindowsUpdate.admx*
<!--/ADMXMapped-->

<!--/Policy-->
<hr/>


<!--Policy-->
<a href="" id="update-pausedeferrals"></a>**Update/PauseDeferrals**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](../device-update-management.md#windows10version1607forupdatemanagement). You can continue to use PauseDeferrals for Windows 10, version 1511 devices.

Allows IT Admins to pause updates and upgrades for up to five weeks. Paused deferrals will be reset after five weeks.

If the "Specify intranet Microsoft update service location" policy is enabled, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

If the "Allow Telemetry" policy is enabled and the Options value is set to 0, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP name: *DeferUpgrade*
- GP element: *PauseDeferralsId*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - Deferrals aren't paused.
- 1 - Deferrals are paused.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-pausefeatureupdates"></a>**Update/PauseFeatureUpdates**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

Allows IT Admins to pause feature updates for up to 35 days. We recommend that you use the *Update/PauseFeatureUpdatesStartTime* policy, if you're running Windows 10, version 1703 or later.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Select when Preview Builds and Feature Updates are received*
- GP name: *DeferFeatureUpdates*
- GP element: *PauseFeatureUpdatesId*
- GP path: *Windows Components/Windows Update/Windows Update for Business*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - Feature Updates aren't paused.
- 1 - Feature Updates are paused for 35 days or until value set to back to 0, whichever is sooner.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-pausefeatureupdatesstarttime"></a>**Update/PauseFeatureUpdatesStartTime**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies the date and time when the IT admin wants to start pausing the Feature Updates. When this policy is configured, Feature Updates will be paused for 35 days from the specified start date.

- Supported value type is string (yyyy-mm-dd, ex. 2018-10-28).
- Supported operations are Add, Get, Delete, and Replace.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Select when Preview Builds and Feature Updates are received*
- GP name: *DeferFeatureUpdates*
- GP element: *PauseFeatureUpdatesStartId*
- GP path: *Windows Components/Windows Update/Windows Update for Business*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-pausequalityupdates"></a>**Update/PauseQualityUpdates**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows IT Admins to pause quality updates. For those running Windows 10, version 1703 or later, we recommend that you use *Update/PauseQualityUpdatesStartTime* instead.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Select when Quality Updates are received*
- GP name: *DeferQualityUpdates*
- GP element: *PauseQualityUpdatesId*
- GP path: *Windows Components/Windows Update/Windows Update for Business*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - Quality Updates aren't paused.
- 1 - Quality Updates are paused for 35 days or until value set back to 0, whichever is sooner.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-pausequalityupdatesstarttime"></a>**Update/PauseQualityUpdatesStartTime**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies the date and time when the IT admin wants to start pausing the Quality Updates. When this policy is configured, Quality Updates will be paused for 35 days from the specified start date.

- Supported value type is string (yyyy-mm-dd, ex. 2018-10-28).
- Supported operations are Add, Get, Delete, and Replace.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Select when Quality Updates are received*
- GP name: *DeferQualityUpdates*
- GP element: *PauseQualityUpdatesStartId*
- GP path: *Windows Components/Windows Update/Windows Update for Business*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-phoneupdaterestrictions"></a>**Update/PhoneUpdateRestrictions**

<!--Description-->
This policy is deprecated. Use [Update/RequireUpdateApproval](#update-requireupdateapproval) instead.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-productversion"></a>**Update/ProductVersion**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in Windows 10, version 2004 and later. Enables IT administrators to specify which product they would like their device(s) to move to and/or stay on until they reach end of service or reconfigure the policy to target a new product.

If no product is specified, the device will continue receiving newer versions of the Windows product it's currently on. For details about different Windows 10 versions, see [release information](/windows/release-health/release-information).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Select the target Feature Update version*
- GP name: *TargetReleaseVersion*
- GP element: *ProductVersion*
- GP path: *Windows Components/Windows Update/Windows Update for Business*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported value type is a string containing a Windows product. For example, "Windows 11" or "11" or "Windows 10".
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
By using this Windows Update for Business policy to upgrade devices to a new product (for example, Windows 11) you're agreeing that when applying this operating system to a device, either:

1. The applicable Windows license was purchased through volume licensing, or

2. You're authorized to bind your organization and are accepting on its behalf the relevant Microsoft Software License Terms to be found here: (https://www.microsoft.com/Useterms).

<hr/>

<!--Policy-->
<a href="" id="update-requiredeferupgrade"></a>**Update/RequireDeferUpgrade**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](../device-update-management.md#windows10version1607forupdatemanagement). You can continue to use RequireDeferUpgrade for Windows 10, version 1511 devices.

Allows the IT admin to set a device to General Availability Channel train.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP name: *DeferUpgrade*
- GP element: *DeferUpgradePeriodId*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - User gets upgrades from General Availability Channel (Targeted).
- 1 - User gets upgrades from General Availability Channel.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-requireupdateapproval"></a>**Update/RequireUpdateApproval**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> If you previously used the **Update/PhoneUpdateRestrictions** policy in previous versions of Windows, it has been deprecated. Please use this policy instead.

Allows the IT admin to restrict the updates that are installed on a device to only those on an update approval list. It enables IT to accept the End User License Agreement (EULA) associated with the approved update on behalf of the end user. EULAs are approved once an update is approved.

Supported operations are Get and Replace.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - Not configured. The device installs all applicable updates.
- 1 - The device only installs updates that are both applicable and on the Approved Updates list. Set this policy to 1 if IT wants to control the deployment of updates on devices, such as when testing is required prior to deployment.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-scheduleimminentrestartwarning"></a>**Update/ScheduleImminentRestartWarning**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows the IT Admin to specify the period for autorestart imminent warning notifications.

The default value is 15 (minutes).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Configure auto-restart warning notifications schedule for updates*
- GP name: *RestartWarnRemind*
- GP element: *RestartWarn*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values are 15, 30, or 60 (minutes).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-schedulerestartwarning"></a>**Update/ScheduleRestartWarning**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education.

Allows the IT Admin to specify the period for autorestart warning reminder notifications.

The default value is 4 (hours).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Configure auto-restart warning notifications schedule for updates*
- GP name: *RestartWarnRemind*
- GP element: *RestartWarnRemind*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values are 2, 4, 8, 12, or 24 (hours).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-scheduledinstallday"></a>**Update/ScheduledInstallDay**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Enables the IT admin to schedule the day of the update installation.

Supported data type is an integer.

Supported operations are Add, Delete, Get, and Replace.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Configure Automatic Updates*
- GP name: *AutoUpdateCfg*
- GP element: *AutoUpdateSchDay*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - Every day
- 1 - Sunday
- 2 - Monday
- 3 - Tuesday
- 4 - Wednesday
- 5 - Thursday
- 6 - Friday
- 7 - Saturday

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-scheduledinstalleveryweek"></a>**Update/ScheduledInstallEveryWeek**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Enables the IT admin to schedule the update installation on every week.

Supported Value type is integer.

Supported values:
- 0 - no update in the schedule.
- 1 - update is scheduled every week.


<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Configure Automatic Updates*
- GP name: *AutoUpdateCfg*
- GP element: *AutoUpdateSchEveryWeek*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-scheduledinstallfirstweek"></a>**Update/ScheduledInstallFirstWeek**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Enables the IT admin to schedule the update installation on the first week of the month.

Supported value type is integer.

Supported values:
- 0 - no update in the schedule.
- 1 - update is scheduled every first week of the month.


<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Configure Automatic Updates*
- GP name: *AutoUpdateCfg*
- GP element: *AutoUpdateSchFirstWeek*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-scheduledinstallfourthweek"></a>**Update/ScheduledInstallFourthWeek**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Enables the IT admin to schedule the update installation on the fourth week of the month.

Supported value type is integer.

Supported values:
- 0 - no update in the schedule.
- 1 - update is scheduled every fourth week of the month.


<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Configure Automatic Updates*
- GP name: *AutoUpdateCfg*
- GP element: *ScheduledInstallFourthWeek*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-scheduledinstallsecondweek"></a>**Update/ScheduledInstallSecondWeek**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Enables the IT admin to schedule the update installation on the second week of the month.

Supported vlue type is integer.

Supported values:

- 0 - no update in the schedule.
- 1 - update is scheduled every second week of the month.


<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Configure Automatic Updates*
- GP name: *AutoUpdateCfg*
- GP element: *ScheduledInstallSecondWeek*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-scheduledinstallthirdweek"></a>**Update/ScheduledInstallThirdWeek**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Enables the IT admin to schedule the update installation on the third week of the month.

Supported value type is integer.

Supported values:
- 0 - no update in the schedule.
- 1 - update is scheduled every third week of the month.


<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Configure Automatic Updates*
- GP name: *AutoUpdateCfg*
- GP element: *ScheduledInstallThirdWeek*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-scheduledinstalltime"></a>**Update/ScheduledInstallTime**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Enables the IT admin to schedule the time of the update installation. Note that there is a window of approximately 30 minutes to allow for higher success rates of installation.

The supported data type is an integer.

Supported operations are Add, Delete, Get, and Replace.

Supported values are 0-23, where 0 = 12 AM and 23 = 11 PM.

The default value is 3.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Configure Automatic Updates*
- GP name: *AutoUpdateCfg*
- GP element: *AutoUpdateSchTime*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-setautorestartnotificationdisable"></a>**Update/SetAutoRestartNotificationDisable**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows the IT Admin to disable autorestart notifications for update installations.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Turn off auto-restart notifications for update installations*
- GP name: *AutoRestartNotificationDisable*
- GP element: *AutoRestartNotificationSchd*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - Enabled
- 1 - Disabled

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-setdisablepauseuxaccess"></a>**Update/SetDisablePauseUXAccess**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy allows the IT admin to disable the "Pause Updates" feature. When this policy is enabled, the user can't access the "Pause updates" feature.

Supported value type is integer.

Default is 0.

Supported values 0, 1.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP name: *SetDisablePauseUXAccess*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-setdisableuxwuaccess"></a>**Update/SetDisableUXWUAccess**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy allows the IT admin to remove access to scan Windows Update. When this policy is enabled, the user can't access the Windows Update scan, download, and install features.

Supported value type is integer.

Default is 0.

Supported values 0, 1.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP name: *SetDisableUXWUAccess*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-setedurestart"></a>**Update/SetEDURestart**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
For devices in a cart, this policy skips all restart checks to ensure that the reboot will happen at ScheduledInstallTime.

When you set this policy along with Update/ActiveHoursStart, Update/ActiveHoursEnd, and ShareCartPC, it will defer all the update processes (scan, download, install, and reboot) to a time after Active Hours. After a buffer period, after ActiveHoursEnd, the device will wake up several times to complete the processes. All processes are blocked before ActiveHoursStart.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Update Power Policy for Cart Restarts*
- GP name: *SetEDURestart*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - not configured
- 1 - configured

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-setpolicydrivenupdatesourcefordriverupdates"></a>**Update/SetPolicyDrivenUpdateSourceForDriverUpdates**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Configure this policy to specify whether to receive Windows Driver Updates from Windows Update endpoint, managed by Windows Update for Business policies, or through your configured Windows Server Update Service (WSUS) server.

If you configure this policy, also configure the scan source policies for other update types:
- SetPolicyDrivenUpdateSourceForFeatureUpdates
- SetPolicyDrivenUpdateSourceForQualityUpdates
- SetPolicyDrivenUpdateSourceForOtherUpdates

>[!NOTE]
>If you have not properly configured Update/UpdateServiceUrl correctly to point to your WSUS server, this policy will have no effect.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify source service for specific classes of Windows Updates*
- GP name: *SetPolicyDrivenUpdateSourceForDriver*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0: (Default) Detect, download, and deploy Drivers from Windows Update.
- 1: Enabled, Detect, download, and deploy Drivers from Windows Server Update Server (WSUS).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-setpolicydrivenupdatesourceforfeatureupdates"></a>**Update/SetPolicyDrivenUpdateSourceForFeatureUpdates**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Configure this policy to specify whether to receive Windows Feature Updates from Windows Update endpoint, managed by Windows Update for Business policies, or through your configured Windows Server Update Service (WSUS) server.

If you configure this policy, also configure the scan source policies for other update types:
- SetPolicyDrivenUpdateSourceForQualityUpdates
- SetPolicyDrivenUpdateSourceForDriverUpdates
- SetPolicyDrivenUpdateSourceForOtherUpdates

>[!NOTE]
>If you have not properly configured Update/UpdateServiceUrl correctly to point to your WSUS server, this policy will have no effect.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify source service for specific classes of Windows Updates*
- GP name: *SetPolicyDrivenUpdateSourceForFeature*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0: (Default) Detect, download, and deploy Feature Updates from Windows Update.
- 1: Enabled, Detect, download, and deploy Feature Updates from Windows Server Update Server (WSUS).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-setpolicydrivenupdatesourceforotherupdates"></a>**Update/SetPolicyDrivenUpdateSourceForOtherUpdates**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Configure this policy to specify whether to receive Other Updates from Windows Update endpoint, managed by Windows Update for Business policies, or through your configured Windows Server Update Service (WSUS) server.

If you configure this policy, also configure the scan source policies for other update types:
- SetPolicyDrivenUpdateSourceForFeatureUpdates
- SetPolicyDrivenUpdateSourceForQualityUpdates
- SetPolicyDrivenUpdateSourceForDriverUpdates

>[!NOTE]
>If you have not properly configured Update/UpdateServiceUrl correctly to point to your WSUS server, this policy will have no effect.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify source service for specific classes of Windows Updates*
- GP name: *SetPolicyDrivenUpdateSourceForOther*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0: (Default) Detect, download, and deploy Other updates from Windows Update.
- 1: Enabled, Detect, download, and deploy Other updates from Windows Server Update Server (WSUS).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-setpolicydrivenupdatesourceforqualityupdates"></a>**Update/SetPolicyDrivenUpdateSourceForQualityUpdates**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Configure this policy to specify whether to receive Windows Quality Updates from Windows Update endpoint, managed by Windows Update for Business policies, or through your configured Windows Server Update Service (WSUS) server.

If you configure this policy, also configure the scan source policies for other update types:
- SetPolicyDrivenUpdateSourceForFeatureUpdates
- SetPolicyDrivenUpdateSourceForDriverUpdates
- SetPolicyDrivenUpdateSourceForOtherUpdates

>[!NOTE]
>If you have not properly configured Update/UpdateServiceUrl correctly to point to your WSUS server, this policy will have no effect.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify source service for specific classes of Windows Updates*
- GP name: *SetPolicyDrivenUpdateSourceForQuality*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0: (Default) Detect, download, and deploy Quality Updates from Windows Update.
- 1: Enabled, Detect, download, and deploy Quality Updates from Windows Server Update Server (WSUS).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-setproxybehaviorforupdatedetection"></a>**Update/SetProxyBehaviorForUpdateDetection**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in Windows 10, version 1607 and later. By default, HTTP WSUS servers scan only if system proxy is configured. This policy setting allows you to configure user proxy as a fallback for detecting updates while using an HTTP-based intranet server despite the vulnerabilities it presents.

This policy setting doesn't impact those customers who have, per Microsoft recommendation, secured their WSUS server with TLS/SSL protocol, thereby using HTTPS-based intranet servers to keep systems secure. That said, if a proxy is required, we recommend configuring a system proxy to ensure the highest level of security.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Select the proxy behavior for Windows Update client for detecting updates with non-TLS (HTTP) based service*
- GP name: *Select the proxy behavior*
- GP element: *Select the proxy behavior*
- GP path: *Windows Components/Windows Update/Specify intranet Microsoft update service location*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - Allow system proxy only for HTTP scans.
- 1 - Allow user proxy to be used as a fallback if detection using system proxy fails.

> [!NOTE]
> Configuring this policy setting to 1 exposes your environment to potential security risk and makes scans unsecure.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-targetreleaseversion"></a>**Update/TargetReleaseVersion**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in Windows 10, version 1803 and later. Enables IT administrators to specify which version they would like their device(s) to move to and/or stay on until they reach end of service or reconfigure the policy. For details about different Windows 10 versions, see [Windows 10 release information](/windows/release-health/release-information/).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Select the target Feature Update version*
- GP name: *TargetReleaseVersion*
- GP element: *TargetReleaseVersionInfo*
- GP path: *Windows Components/Windows Update/Windows Update for Business*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported value type is a string containing Windows 10 version number. For example, 1809, 1903.
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-updatenotificationlevel"></a>**Update/UpdateNotificationLevel**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Display options for update notifications. This policy allows you to define what Windows Update notifications users see. This policy doesn't control how and when updates are downloaded and installed.

Options:

-  0 (default) - Use the default Windows Update notifications.
-  1 - Turn off all notifications, excluding restart warnings.
-  2 - Turn off all notifications, including restart warnings.

> [!IMPORTANT]
> If you choose not to get update notifications and also define other Group policies so that devices aren't automatically getting updates, neither you nor device users will be aware of critical security, quality, or feature updates, and your devices may be at risk.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Display options for update notifications*
- GP name: *UpdateNotificationLevel*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-updateserviceurl"></a>**Update/UpdateServiceUrl**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!IMPORTANT]
> Starting in Windows 10, version 1703 this policy isn't supported in IoT Mobile.

Allows the device to check for updates from a WSUS server instead of Microsoft Update. This setting is useful for on-premises MDMs that need to update devices that can't connect to the Internet.

Supported operations are Get and Replace.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify intranet Microsoft update service location*
- GP name: *CorpWuURL*
- GP element: *CorpWUURL_Name*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- Not configured. The device checks for updates from Microsoft Update.
- Set to a URL, such as `http://abcd-srv:8530`. The device checks for updates from the WSUS server at the specified URL.

<!--/SupportedValues-->
<!--Example-->
Example

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

<!--/Example-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-updateserviceurlalternate"></a>**Update/UpdateServiceUrlAlternate**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies an alternate intranet server to host updates from Microsoft Update. You can then use this update service to automatically update computers on your network.

This setting lets you specify a server on your network to function as an internal update service. The Automatic Updates client will search this service for updates that apply to the computers on your network.

To use this setting, you must set two server name values: the server from which the Automatic Updates client detects and downloads updates, and the server to which updated workstations upload statistics. You can set both values to be the same server. An optional server name value can be specified to configure Windows Update agent, and download updates from an alternate download server instead of WSUS Server.

Supported value type is string and the default value is an empty string, "". If the setting isn't configured, and if Automatic Updates isn't disabled by policy or user preference, the Automatic Updates client connects directly to the Windows Update site on the Internet.

> [!NOTE]
> If the "Configure Automatic Updates" Group Policy is disabled, then this policy has no effect.
> If the "Alternate Download Server" Group Policy isn't set, it will use the WSUS server by default to download updates.
> This policy isn't supported on Windows RT. Setting this policy won't have any effect on Windows RT PCs.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
- GP Friendly name: *Specify intranet Microsoft update service location*
- GP name: *CorpWuURL*
- GP element: *CorpWUContentHost_Name*
- GP path: *Windows Components/Windows Update*
- GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)

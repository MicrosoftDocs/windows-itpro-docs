---
title: Policy CSP - Update
description: Policy CSP - Update
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: MariciaAlforque
ms.date: 05/08/2019
---

# Policy CSP - Update

> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.


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

> [!NOTE]
> If the MSA service is disabled, Windows Update will no longer offer feature updates to devices running Windows 10 1709 or higher. See [Feature updates are not being offered while other updates are](https://docs.microsoft.com/windows/deployment/update/windows-update-troubleshooting#feature-updates-are-not-being-offered-while-other-updates-are).

<hr/>

<!--Policy-->
<a href="" id="update-activehoursend"></a>**Update/ActiveHoursEnd**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1607. Allows the IT admin (when used with **Update/ActiveHoursStart**) to manage a range of active hours where update reboots are not scheduled. This value sets the end time. There is a 12 hour maximum from start time.

> [!NOTE]
> The default maximum difference from start time has been increased to 18 in Windows 10, version 1703. In this version of Windows 10, the maximum range of active hours can now be configured.  See **Update/ActiveHoursMaxRange** below for more information.

Supported values are 0-23, where 0 is 12 AM, 1 is 1 AM, etc.

The default is 17 (5 PM).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Turn off auto-restart for updates during active hours*
-   GP name: *ActiveHours*
-   GP element: *ActiveHoursEndTime*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-activehoursmaxrange"></a>**Update/ActiveHoursMaxRange**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Allows the IT admin to specify the max active hours range. This value sets max number of active hours from start time.

Supported values are 8-18.

The default value is 18 (hours).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Specify active hours range for auto-restarts*
-   GP name: *ActiveHoursMaxRange*
-   GP element: *ActiveHoursMaxRange*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-activehoursstart"></a>**Update/ActiveHoursStart**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1607. Allows the IT admin (when used with **Update/ActiveHoursEnd**) to manage a range of hours where update reboots are not scheduled. This value sets the start time. There is a 12 hour maximum from end time.

> [!NOTE]
> The default maximum difference from end time has been increased to 18 in Windows 10, version 1703. In this version of Windows 10, the maximum range of active hours can now be configured.  See **Update/ActiveHoursMaxRange** above for more information.

Supported values are 0-23, where 0 is 12 AM, 1 is 1 AM, etc.

The default value is 8 (8 AM).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Turn off auto-restart for updates during active hours*
-   GP name: *ActiveHours*
-   GP element: *ActiveHoursStartTime*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-allowautoupdate"></a>**Update/AllowAutoUpdate**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Enables the IT admin to manage automatic update behavior to scan, download, and install updates.

Supported operations are Get and Replace.


> [!IMPORTANT]
> This option should be used only for systems under regulatory compliance, as you will not get security updates as well.
 

If the policy is not configured, end-users get the default behavior (Auto install and restart).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Automatic Updates*
-   GP name: *AutoUpdateCfg*
-   GP element: *AutoUpdateMode*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Notify the user before downloading the update. This policy is used by the enterprise who wants to enable the end-users to manage data usage. With this option users are notified when there are updates that apply to the device and are ready for download. Users can download and install the updates from the Windows Update control panel.
-   1 – Auto install the update and then notify the user to schedule a device restart. Updates are downloaded automatically on non-metered networks and installed during "Automatic Maintenance" when the device is not in use and is not running on battery power. If automatic maintenance is unable to install updates for two days, Windows Update will install updates immediately. If the installation requires a restart, the end-user is prompted to schedule the restart time. The end-user has up to seven days to schedule the restart and after that, a restart of the device is forced. Enabling the end-user to control the start time reduces the risk of accidental data loss caused by applications that do not shutdown properly on restart.
-   2 (default) – Auto install and restart. Updates are downloaded automatically on non-metered networks and installed during "Automatic Maintenance" when the device is not in use and is not running on battery power. If automatic maintenance is unable to install updates for two days, Windows Update will install updates right away. If a restart is required, then the device is automatically restarted when the device is not actively being used. This is the default behavior for unmanaged devices. Devices are updated quickly, but it increases the risk of accidental data loss caused by an application that does not shutdown properly on restart.
-   3 – Auto install and restart at a specified time. The IT specifies the installation day and time. If no day and time are specified, the default is 3 AM daily. Automatic installation happens at this time and device restart happens after a 15-minute countdown. If the user is logged in when Windows is ready to restart, the user can interrupt the 15-minute countdown to delay the restart.
-   4 – Auto install and restart without end-user control. Updates are downloaded automatically on non-metered networks and installed during "Automatic Maintenance" when the device is not in use and is not running on battery power. If automatic maintenance is unable to install updates for two days, Windows Update will install updates right away. If a restart is required, then the device is automatically restarted when the device is not actively being used. This setting option also sets the end-user control panel to read-only.
-   5 – Turn off automatic updates.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-allowautowindowsupdatedownloadovermeterednetwork"></a>**Update/AllowAutoWindowsUpdateDownloadOverMeteredNetwork**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1709. Option to download updates automatically over metered connections (off by default). Value type is integer.

A significant number of devices primarily use cellular data and do not have Wi-Fi access, which leads to a lower number of devices getting updates. Since a large number of devices have large data plans or unlimited data, this policy can unblock devices from getting updates.

This policy is accessible through the Update setting in the user interface or Group Policy.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow updates to be downloaded automatically over metered connections*
-   GP name: *AllowAutoWindowsUpdateDownloadOverMeteredNetwork*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1607. Allows the IT admin to manage whether to scan for app updates from Microsoft Update.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Automatic Updates*
-   GP name: *AutoUpdateCfg*
-   GP element: *AllowMUUpdateServiceId*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed or not configured.
-   1 – Allowed. Accepts updates received through Microsoft Update.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-allownonmicrosoftsignedupdate"></a>**Update/AllowNonMicrosoftSignedUpdate**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows the IT admin to manage whether Automatic Updates accepts updates signed by entities other than Microsoft when the update is found at the UpdateServiceUrl location. This policy supports using WSUS for 3rd party software and patch distribution.

Supported operations are Get and Replace.

This policy is specific to desktop and local publishing via WSUS for 3rd party updates (binaries and updates not hosted on Microsoft Update) and allows IT to manage whether Automatic Updates accepts updates signed by entities other than Microsoft when the update is found on an intranet Microsoft update service location.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed or not configured. Updates from an intranet Microsoft update service location must be signed by Microsoft.
-   1 – Allowed. Accepts updates received through an intranet Microsoft update service location, if they are signed by a certificate found in the "Trusted Publishers" certificate store of the local computer.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-allowupdateservice"></a>**Update/AllowUpdateService**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether the device could use Microsoft Update, Windows Server Update Services (WSUS), or Microsoft Store.

Even when Windows Update is configured to receive updates from an intranet update service, it will periodically retrieve information from the public Windows Update service to enable future connections to Windows Update, and other services like Microsoft Update or the Microsoft Store

Enabling this policy will disable that functionality, and may cause connection to public services such as the Microsoft Store to stop working.

> [!NOTE]
> This policy applies only when the desktop or device is configured to connect to an intranet update service using the "Specify intranet Microsoft update service location" policy.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Specify intranet Microsoft update service location*
-   GP name: *CorpWuURL*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Update service is not allowed.
-   1 (default) – Update service is allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-autorestartdeadlineperiodindays"></a>**Update/AutoRestartDeadlinePeriodInDays**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
For Quality Updates, this policy specifies the deadline in days before automatically executing a scheduled restart outside of active hours. The deadline can be set between 2 and 30 days from the time the restart is scheduled.

The system will reboot on or after the specified deadline. The reboot is prioritized over any configured Active Hours and any existing system and user busy checks.

Value type is integer. Default is 7 days. 

Supported values range: 2-30.

Note that the PC must restart for certain updates to take effect.

If you enable this policy, a restart will automatically occur the specified number of days after the restart was scheduled.

If you disable or do not configure this policy, the PC will restart according to the default schedule.

If any of the following two policies are enabled, this policy has no effect:
1. No auto-restart with logged on users for scheduled automatic updates installations.
2. Always automatically restart at scheduled time.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Specify deadline before auto-restart for update installation*
-   GP name: *AutoRestartDeadline*
-   GP element: *AutoRestartDeadline*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-autorestartdeadlineperiodindaysforfeatureupdates"></a>**Update/AutoRestartDeadlinePeriodInDaysForFeatureUpdates**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
For Feature Updates, this policy specifies the deadline in days before automatically executing a scheduled restart outside of active hours. The deadline can be set between 2 and 30 days from the time the restart is scheduled.

The system will reboot on or after the specified deadline. The reboot is prioritized over any configured Active Hours and any existing system and user busy checks.

Value type is integer. Default is 7 days. 

Supported values range: 2-30.

Note that the PC must restart for certain updates to take effect.

If you enable this policy, a restart will automatically occur the specified number of days after the restart was scheduled.

If you disable or do not configure this policy, the PC will restart according to the default schedule.

If any of the following two policies are enabled, this policy has no effect:
1. No auto-restart with logged on users for scheduled automatic updates installations.
2. Always automatically restart at scheduled time.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Specify deadline before auto-restart for update installation*
-   GP name: *AutoRestartDeadline*
-   GP element: *AutoRestartDeadlineForFeatureUpdates*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-autorestartnotificationschedule"></a>**Update/AutoRestartNotificationSchedule**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Allows the IT Admin to specify the period for auto-restart reminder notifications.

The default value is 15 (minutes).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure auto-restart reminder notifications for updates*
-   GP name: *AutoRestartNotificationConfig*
-   GP element: *AutoRestartNotificationSchd*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values are 15, 30, 60, 120, and 240 (minutes).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-autorestartrequirednotificationdismissal"></a>**Update/AutoRestartRequiredNotificationDismissal**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Allows the IT Admin to specify the method by which the auto-restart required notification is dismissed.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure auto-restart required notification for updates*
-   GP name: *AutoRestartRequiredNotificationDismissal*
-   GP element: *AutoRestartRequiredNotificationDismissal*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   1 (default) – Auto Dismissal.
-   2 – User Dismissal.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-automaticmaintenancewakeup"></a>**Update/AutomaticMaintenanceWakeUp**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
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

If you enable this policy setting, Automatic Maintenance attempts to set OS wake policy and make a wake request for the daily scheduled time, if required.

If you disable or do not configure this policy setting, the wake setting as specified in Security and Maintenance/Automatic Maintenance Control Panel applies.
<!--/Description-->

<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Automatic Maintenance WakeUp Policy*
-   GP category English path: *Windows Components/Maintenance Scheduler*
-   GP name: *WakeUpPolicy*
-   GP path: *Windows Components/Maintenance Scheduler*
-   GP ADMX file name: *msched.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:  
-   true - Enable
-   false - Disable (Default)
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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1607. Allows the IT admin to set which branch a device receives their updates from.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Select when Preview Builds and Feature Updates are received*
-   GP name: *DeferFeatureUpdates*
-   GP element: *BranchReadinessLevelId*
-   GP path: *Windows Components/Windows Update/Windows Update for Business*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-  2  {0x2}  - Windows Insider build - Fast (added in Windows 10, version 1709)
-  4  {0x4}  - Windows Insider build - Slow (added in Windows 10, version 1709)
-  8  {0x8}  - Release Windows Insider build (added in Windows 10, version 1709)
-  16 {0x10} - (default) Semi-annual Channel (Targeted). Device gets all applicable feature updates from Semi-annual Channel (Targeted).
-  32 {0x20} - Semi-annual Channel. Device gets feature updates from Semi-annual Channel.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-configuredeadlineforfeatureupdates"></a>**Update/ConfigureDeadlineForFeatureUpdates**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1903. Allows IT admins to specify the number of days a user has before feature updates are installed on their devices automatically. Updates and restarts will occur regardless of active hours and the user will not be able to reschedule.

<!--/Description-->

<!--SupportedValues-->
Supports a numeric value from 2 - 30, which indicates the number of days a device will wait until performing an aggressive installation of a required feature update.

Default value is 7.
<!--/SupportedValues-->

<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Specify deadlines for automatic updates and restarts*
-   GP category English path: *Administrative Templates\Windows Components\WindowsUpdate*
-   GP name: *ConfigureDeadlineForFeatureUpdates*
-   GP element: *ConfigureDeadlineForFeatureUpdates*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->

<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-configuredeadlineforqualityupdates"></a>**Update/ConfigureDeadlineForQualityUpdates**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1903. Allows IT admins to specify the number of days a user has before quality updates are installed on their devices automatically. Updates and restarts will occur regardless of active hours and the user will not be able to reschedule.
<!--/Description-->

<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Specify deadlines for automatic updates and restarts*
-   GP category English path: *Administrative Templates\Windows Components\WindowsUpdate*
-   GP name: *ConfigureDeadlineForQualityUpdates*
-   GP element: *ConfigureDeadlineForQualityUpdates*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supports a numeric value from 2 - 30, which indicates the number of days a device will wait until performing an aggressive installation of a required quality update.

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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1903. Allows the IT admin (when used with [Update/ConfigureDeadlineForFeatureUpdates](#update-configuredeadlineforfeatureupdates) or [Update/ConfigureDeadlineForQualityUpdates](#update-configuredeadlineforqualityupdates)) to specify a minimum number of days until restarts occur automatically. Setting the grace period may extend the effective deadline set by the deadline policies.
<!--/Description-->

<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Specify deadlines for automatic updates and restarts*
-   GP category English path: *Administrative Templates\Windows Components\WindowsUpdate*
-   GP name: *ConfigureDeadlineGracePeriod*
-   GP element: *ConfigureDeadlineGracePeriod*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supports a numeric value from 0 - 7, which indicates the minimum number of days a device will wait until performing an aggressive installation of a required update once deadline has been reached.

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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1903. If enabled (when used with [Update/ConfigureDeadlineForFeatureUpdates](#update-configuredeadlineforfeatureupdates) or [Update/ConfigureDeadlineForQualityUpdates](#update-configuredeadlineforqualityupdates)), devices will not automatically restart outside of active hours until the deadline is reached, even if applicable updates are already installed and pending a restart.

When disabled, if the device has installed the required updates and is outside of active hours, it may attempt an automatic restart before the deadline.
<!--/Description-->

<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Specify deadlines for automatic updates and restarts*
-   GP category English path: *Administrative Templates\Windows Components\WindowsUpdate*
-   GP name: *ConfigureDeadlineNoAutoReboot*
-   GP element: *ConfigureDeadlineNoAutoReboot*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:  
-   1 - Enabled
-   0 (default) - Disabled
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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. Enable IT admin to configure feature update uninstall period. Values range 2 - 60 days. Default is 10 days.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-configurefeatureupdateuninstallperiod"></a>**Update/ConfigureFeatureUpdateUninstallPeriod**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. Enable IT admin to configure feature update uninstall period. Values range 2 - 60 days. Default is 10 days.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-deferfeatureupdatesperiodindays"></a>**Update/DeferFeatureUpdatesPeriodInDays**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Since this policy is not blocked, you will not get a failure message when you use it to configure a Windows 10 Mobile device. However, the policy will not take effect.

Added in Windows 10, version 1607. Defers Feature Updates for the specified number of days.

Supported values are 0-365 days.

> [!IMPORTANT]
> The default maximum number of days to defer an update has been increased from 180 (Windows 10, version 1607) to 365 in Windows 10, version 1703.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Select when Preview Builds and Feature Updates are received*
-   GP name: *DeferFeatureUpdates*
-   GP element: *DeferFeatureUpdatesPeriodId*
-   GP path: *Windows Components/Windows Update/Windows Update for Business*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-deferqualityupdatesperiodindays"></a>**Update/DeferQualityUpdatesPeriodInDays**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1607. Defers Quality Updates for the specified number of days.

Supported values are 0-30.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Select when Quality Updates are received*
-   GP name: *DeferQualityUpdates*
-   GP element: *DeferQualityUpdatesPeriodId*
-   GP path: *Windows Components/Windows Update/Windows Update for Business*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-deferupdateperiod"></a>**Update/DeferUpdatePeriod**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](device-update-management.md#windows10version1607forupdatemanagement). You can continue to use DeferUpdatePeriod for Windows 10, version 1511 devices.


Allows IT Admins to specify update delays for up to 4 weeks.

Supported values are 0-4, which refers to the number of weeks to defer updates.

In Windows 10 Mobile Enterprise version 1511 devices set to automatic updates, for DeferUpdatePeriod to work, you must set the following:

-   Update/RequireDeferUpgrade must be set to 1
-   System/AllowTelemetry must be set to 1 or higher

If the "Specify intranet Microsoft update service location" policy is enabled, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

If the Allow Telemetry policy is enabled and the Options value is set to 0, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

OS upgrade:
-   Maximum deferral: 8 months
-   Deferral increment: 1 month
-   Update type/notes:
   - Upgrade - 3689BDC8-B205-4AF4-8D4A-A63924C5E9D5

Update:
-   Maximum deferral: 1 month
-   Deferral increment: 1 week
-   Update type/notes:
    If a machine has Microsoft Update enabled, any Microsoft Updates in these categories will also observe Defer / Pause logic.
        - Security Update - 0FA1201D-4330-4FA8-8AE9-B877473B6441
        - Critical Update - E6CF1350-C01B-414D-A61F-263D14D133B4
        - Update Rollup - 28BC880E-0592-4CBF-8F95-C79B17911D5F
        - Service Pack - 68C5B0A3-D1A6-4553-AE49-01D3A7827828
        - Tools - B4832BD8-E735-4761-8DAF-37F882276DAB
        - Feature Pack - B54E7D24-7ADD-428F-8B75-90A396FA584F
        - Update - CD5FFD1E-E932-4E3A-BF74-18BF0B1BBD83
        - Driver - EBFC1FC5-71A4-4F7B-9ACA-3B9A503104A0

Other/cannot defer:
-   Maximum deferral: No deferral
-   Deferral increment: No deferral
-   Update type/notes:
    Any update category not specifically enumerated above falls into this category.
        - Definition Update - E0789628-CE08-4437-BE74-2495B842F43B

<!--<table style="margin-left: 20px">
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Update category</th>
<th>Maximum deferral</th>
<th>Deferral increment</th>
<th>Update type/notes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>OS upgrade</p></td>
<td style="vertical-align:top"><p>8 months</p></td>
<td style="vertical-align:top"><p>1 month</p></td>
<td style="vertical-align:top"><p>Upgrade - 3689BDC8-B205-4AF4-8D4A-A63924C5E9D5</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Update</p></td>
<td style="vertical-align:top"><p>1 month</p></td>
<td style="vertical-align:top"><p>1 week</p></td>
<td style="vertical-align:top"><div class="alert">
<strong>Note</strong>
If a machine has Microsoft Update enabled, any Microsoft Updates in these categories will also observe Defer / Pause logic.
</div>
<ul>
<li>Security Update - 0FA1201D-4330-4FA8-8AE9-B877473B6441</li>
<li>Critical Update - E6CF1350-C01B-414D-A61F-263D14D133B4</li>
<li>Update Rollup - 28BC880E-0592-4CBF-8F95-C79B17911D5F</li>
<li>Service Pack - 68C5B0A3-D1A6-4553-AE49-01D3A7827828</li>
<li>Tools - B4832BD8-E735-4761-8DAF-37F882276DAB</li>
<li>Feature Pack - B54E7D24-7ADD-428F-8B75-90A396FA584F</li>
<li>Update - CD5FFD1E-E932-4E3A-BF74-18BF0B1BBD83</li>
<li>Driver - EBFC1FC5-71A4-4F7B-9ACA-3B9A503104A0</li>
</ul></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Other/cannot defer</p></td>
<td style="vertical-align:top"><p>No deferral</p></td>
<td style="vertical-align:top"><p>No deferral</p></td>
<td style="vertical-align:top"><p>Any update category not specifically enumerated above falls into this category.</p>
<p>Definition Update - E0789628-CE08-4437-BE74-2495B842F43B</p></td>
</tr>
</tbody>
</table>-->

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP name: *DeferUpgrade*
-   GP element: *DeferUpdatePeriodId*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-deferupgradeperiod"></a>**Update/DeferUpgradePeriod**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> Since this policy is not blocked, you will not get a failure message when you use it to configure a Windows 10 Mobile device. However, the policy will not take effect.
>
> Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](device-update-management.md#windows10version1607forupdatemanagement). You can continue to use DeferUpgradePeriod for Windows 10, version 1511 devices.


Allows IT Admins to specify additional upgrade delays for up to 8 months.

Supported values are 0-8, which refers to the number of months to defer upgrades.

If the "Specify intranet Microsoft update service location" policy is enabled, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

If the "Allow Telemetry" policy is enabled and the Options value is set to 0, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP name: *DeferUpgrade*
-   GP element: *DeferUpgradePeriodId*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-detectionfrequency"></a>**Update/DetectionFrequency**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Specifies the scan frequency from every 1 - 22 hours. Default is 22 hours.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Automatic Updates detection frequency*
-   GP name: *DetectionFrequency_Title*
-   GP element: *DetectionFrequency_Hour2*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-disabledualscan"></a>**Update/DisableDualScan**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1709, but was added to 1607 and 1703 service releases. Do not allow update deferral policies to cause scans against Windows Update. If this policy is not enabled, then configuring deferral policies will result in the client unexpectedly scanning Windows update.  With the policy enabled, those scans are prevented, and users can configure deferral policies as much as they like.

For more information about dual scan, see [Demystifying "Dual Scan"](https://blogs.technet.microsoft.com/wsus/2017/05/05/demystifying-dual-scan/) and [Improving Dual Scan on 1607](https://blogs.technet.microsoft.com/wsus/2017/08/04/improving-dual-scan-on-1607/).

This is the same as the Group Policy in Windows Components > Window Update "Do not allow update deferral policies to cause scans against Windows Update."

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Do not allow update deferral policies to cause scans against Windows Update*
-   GP name: *DisableDualScan*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - allow scan against Windows Update
- 1 - do not allow update deferral policies to cause scans against Windows Update

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-engagedrestartdeadline"></a>**Update/EngagedRestartDeadline**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
For Quality Updates, this policy specifies the deadline in days before automatically scheduling and executing a pending restart outside of active hours. The deadline can be set between 2 and 30 days from the time the restart becomes pending. If configured, the pending restart will transition from Auto-restart to Engaged restart (pending user schedule) to automatically executed, within the specified period.

The system will reboot on or after the specified deadline. The reboot is prioritized over any configured Active Hours and any existing system and user busy checks.

> [!Note]  
> If Update/EngagedDeadline is the only policy set (Update/EngagedRestartTransitionSchedule and Update/EngagedRestartSnoozeSchedule are not set), the behavior goes from reboot required -> engaged behavior -> forced reboot after deadline is reached with a 3-day snooze period.

Value type is integer. Default is 14.

Supported value range: 2 - 30.

If no deadline is specified or deadline is set to 0, the restart will not be automatically executed and will remain Engaged restart (e.g. pending user scheduling).

If you disable or do not configure this policy, the default behaviors will be used.

If any of the following policies are configured, this policy has no effect:
1. No auto-restart with logged on users for scheduled automatic updates installations
2. Always automatically restart at scheduled time
3. Specify deadline before auto-restart for update installation

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Specify Engaged restart transition and notification schedule for updates*
-   GP name: *EngagedRestartTransitionSchedule*
-   GP element: *EngagedRestartDeadline*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-engagedrestartdeadlineforfeatureupdates"></a>**Update/EngagedRestartDeadlineForFeatureUpdates**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
For Feature Updates, this policy specifies the deadline in days before automatically scheduling and executing a pending restart outside of active hours. The deadline can be set between 2 and 30 days from the time the restart becomes pending. If configured, the pending restart will transition from Auto-restart to Engaged restart (pending user schedule) to automatically executed, within the specified period.

Value type is integer. Default is 14.

Supported value range: 2 - 30.

If no deadline is specified or deadline is set to 0, the restart will not be automatically executed and will remain Engaged restart (e.g. pending user scheduling).

If you disable or do not configure this policy, the default behaviors will be used.

If any of the following policies are configured, this policy has no effect:
1. No auto-restart with logged on users for scheduled automatic updates installations
2. Always automatically restart at scheduled time
3. Specify deadline before auto-restart for update installation

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Specify Engaged restart transition and notification schedule for updates*
-   GP name: *EngagedRestartTransitionSchedule*
-   GP element: *EngagedRestartDeadlineForFeatureUpdates*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-engagedrestartsnoozeschedule"></a>**Update/EngagedRestartSnoozeSchedule**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
For Quality Updates, this policy specifies the number of days a user can snooze Engaged restart reminder notifications. The snooze period can be set between 1 and 3 days.

Value type is integer. Default is 3 days.

Supported value range: 1 - 3.

If you disable or do not configure this policy, the default behaviors will be used.

If any of the following policies are configured, this policy has no effect:
1. No auto-restart with logged on users for scheduled automatic updates installations
2. Always automatically restart at scheduled time
3. Specify deadline before auto-restart for update installation

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Specify Engaged restart transition and notification schedule for updates*
-   GP name: *EngagedRestartTransitionSchedule*
-   GP element: *EngagedRestartSnoozeSchedule*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-engagedrestartsnoozescheduleforfeatureupdates"></a>**Update/EngagedRestartSnoozeScheduleForFeatureUpdates**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
For Feature Updates, this policy specifies the number of days a user can snooze Engaged restart reminder notifications. The snooze period can be set between 1 and 3 days.

Value type is integer. Default is 3 days.

Supported value range: 1 - 3.

If you disable or do not configure this policy, the default behaviors will be used.

If any of the following policies are configured, this policy has no effect:
1. No auto-restart with logged on users for scheduled automatic updates installations
2. Always automatically restart at scheduled time
3. Specify deadline before auto-restart for update installation

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Specify Engaged restart transition and notification schedule for updates*
-   GP name: *EngagedRestartTransitionSchedule*
-   GP element: *EngagedRestartSnoozeScheduleForFeatureUpdates*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-engagedrestarttransitionschedule"></a>**Update/EngagedRestartTransitionSchedule**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
For Quality Updates, this policy specifies the timing before transitioning from Auto restarts scheduled outside of active hours to Engaged restart, which requires the user to schedule. The period can be set between 2 and 30 days from the time the restart becomes pending.

Value type is integer. Default value is 7 days.

Supported value range: 2 - 30. 

If you disable or do not configure this policy, the default behaviors will be used.

If any of the following policies are configured, this policy has no effect:
1. No auto-restart with logged on users for scheduled automatic updates installations
2. Always automatically restart at scheduled time
3. Specify deadline before auto-restart for update installation

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Specify Engaged restart transition and notification schedule for updates*
-   GP name: *EngagedRestartTransitionSchedule*
-   GP element: *EngagedRestartTransitionSchedule*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-engagedrestarttransitionscheduleforfeatureupdates"></a>**Update/EngagedRestartTransitionScheduleForFeatureUpdates**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
For Feature Updates, this policy specifies the timing before transitioning from Auto restarts scheduled_outside of active hours to Engaged restart, which requires the user to schedule. The period can be set between 2 and 30 days from the time the restart becomes pending.

Value type is integer. Default value is 7 days.

Supported value range: 2 - 30.

If you disable or do not configure this policy, the default behaviors will be used.

If any of the following policies are configured, this policy has no effect:
1. No auto-restart with logged on users for scheduled automatic updates installations
2. Always automatically restart at scheduled time
3. Specify deadline before auto-restart for update installation

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Specify Engaged restart transition and notification schedule for updates*
-   GP name: *EngagedRestartTransitionSchedule*
-   GP element: *EngagedRestartTransitionScheduleForFeatureUpdates*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-excludewudriversinqualityupdate"></a>**Update/ExcludeWUDriversInQualityUpdate**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> Since this policy is not blocked, you will not get a failure message when you use it to configure a Windows 10 Mobile device. However, the policy will not take effect.

Added in Windows 10, version 1607. Allows IT Admins to exclude Windows Update (WU) drivers during updates.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Do not include drivers with Windows Updates*
-   GP name: *ExcludeWUDriversInQualityUpdate*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Allow Windows Update drivers.
-   1 – Exclude Windows Update drivers.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-fillemptycontenturls"></a>**Update/FillEmptyContentUrls**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in the April service release of Windows 10, version 1607. Allows Windows Update Agent to determine the download URL when it is missing from the metadata.  This scenario will occur when intranet update service stores the metadata files but the download contents are stored in the ISV file cache (specified as the <a href="#update-updateserviceurlalternate">alternate download URL</a>).

> [!NOTE]
> This setting should only be used in combination with an alternate download URL and configured to use ISV file cache.  This setting is used when the intranet update service does not provide download URLs in the update metadata for files which are available on the alternate download server.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Specify intranet Microsoft update service location*
-   GP name: *CorpWuURL*
-   GP element: *CorpWUFillEmptyContentUrls*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Disabled.
-   1 – Enabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-ignoremoappdownloadlimit"></a>**Update/IgnoreMOAppDownloadLimit**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Specifies whether to ignore the MO download limit (allow unlimited downloading) over a cellular network for apps and their updates. If lower-level limits (for example, mobile caps) are required, those limits are controlled by external policies. 

> [!WARNING]
> Setting this policy might cause devices to incur costs from MO operators.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Do not ignore MO download limit for apps and their updates.
-   1 – Ignore MO download limit (allow unlimited downloading) for apps and their updates.

<!--/SupportedValues-->
<!--Validation-->
To validate this policy:

1.  Enable the policy ensure the device is on a cellular network.
2.  Run the scheduled task on your device to check for app updates in the background. For example, on a mobile device, run the following commands in TShell: 
      - `regd delete HKEY_USERS\S-1-5-21-2702878673-795188819-444038987-2781\software\microsoft\windows\currentversion\windowsupdate /v LastAutoAppUpdateSearchSuccessTime /f`

      - `exec-device schtasks.exe -arguments ""/run /tn """"\Microsoft\Windows\WindowsUpdate\Automatic App Update"""" /I""`

3.   Verify that any downloads that are above the download size limit will complete without being paused.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-ignoremoupdatedownloadlimit"></a>**Update/IgnoreMOUpdateDownloadLimit**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Specifies whether to ignore the MO download limit (allow unlimited downloading) over a cellular network for OS updates. If lower-level limits (for example, mobile caps) are required, those limits are controlled by external policies. 

> [!WARNING]
> Setting this policy might cause devices to incur costs from MO operators.


      - `exec-device schtasks.exe -arguments ""/run /tn """"\Microsoft\Windows\WindowsUpdate\AUScheduledInstall"""" /I""`

3.   Verify that any downloads that are above the download size limit will complete without being paused.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Do not ignore MO download limit for OS updates.
-   1 – Ignore MO download limit (allow unlimited downloading) for OS updates.

<!--/SupportedValues-->
<!--Validation-->
To validate this policy:

1.  Enable the policy and ensure the device is on a cellular network.
2.  Run the scheduled task on phone to check for OS updates in the background. For example, on a mobile device, run the following commands in TShell:

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-managepreviewbuilds"></a>**Update/ManagePreviewBuilds**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1709. Used to manage Windows 10 Insider Preview builds. Value type is integer.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Manage preview builds*
-   GP name: *ManagePreviewBuilds*
-   GP element: *ManagePreviewBuildsId*
-   GP path: *Windows Components/Windows Update/Windows Update for Business*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Disable Preview builds
-   1 - Disable Preview builds once the next release is public
-   2 - Enable Preview builds

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-pausedeferrals"></a>**Update/PauseDeferrals**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](device-update-management.md#windows10version1607forupdatemanagement). You can continue to use PauseDeferrals for Windows 10, version 1511 devices.


Allows IT Admins to pause updates and upgrades for up to 5 weeks. Paused deferrals will be reset after 5 weeks.


If the "Specify intranet Microsoft update service location" policy is enabled, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

If the "Allow Telemetry" policy is enabled and the Options value is set to 0, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP name: *DeferUpgrade*
-   GP element: *PauseDeferralsId*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Deferrals are not paused.
-   1 – Deferrals are paused.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-pausefeatureupdates"></a>**Update/PauseFeatureUpdates**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Since this policy is not blocked, you will not get a failure message when you use it to configure a Windows 10 Mobile device. However, the policy will not take effect.


Added in Windows 10, version 1607. Allows IT Admins to pause Feature Updates for up to 60 days.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Select when Preview Builds and Feature Updates are received*
-   GP name: *DeferFeatureUpdates*
-   GP element: *PauseFeatureUpdatesId*
-   GP path: *Windows Components/Windows Update/Windows Update for Business*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Feature Updates are not paused.
-   1 – Feature Updates are paused for 60 days or until value set to back to 0, whichever is sooner.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-pausefeatureupdatesstarttime"></a>**Update/PauseFeatureUpdatesStartTime**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Specifies the date and time when the IT admin wants to start pausing the Feature Updates.

Value type is string. Supported operations are Add, Get, Delete, and Replace.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Select when Preview Builds and Feature Updates are received*
-   GP name: *DeferFeatureUpdates*
-   GP element: *PauseFeatureUpdatesStartId*
-   GP path: *Windows Components/Windows Update/Windows Update for Business*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-pausequalityupdates"></a>**Update/PauseQualityUpdates**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1607. Allows IT Admins to pause Quality Updates.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Select when Quality Updates are received*
-   GP name: *DeferQualityUpdates*
-   GP element: *PauseQualityUpdatesId*
-   GP path: *Windows Components/Windows Update/Windows Update for Business*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Quality Updates are not paused.
-   1 – Quality Updates are paused for 35 days or until value set back to 0, whichever is sooner.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-pausequalityupdatesstarttime"></a>**Update/PauseQualityUpdatesStartTime**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Specifies the date and time when the IT admin wants to start pausing the Quality Updates.

Value type is string. Supported operations are Add, Get, Delete, and Replace.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Select when Quality Updates are received*
-   GP name: *DeferQualityUpdates*
-   GP element: *PauseQualityUpdatesStartId*
-   GP path: *Windows Components/Windows Update/Windows Update for Business*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-phoneupdaterestrictions"></a>**Update/PhoneUpdateRestrictions**  

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy is deprecated. Use [Update/RequireUpdateApproval](#update-requireupdateapproval) instead.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-requiredeferupgrade"></a>**Update/RequireDeferUpgrade**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](device-update-management.md#windows10version1607forupdatemanagement). You can continue to use RequireDeferUpgrade for Windows 10, version 1511 devices.


Allows the IT admin to set a device to Semi-Annual Channel train.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP name: *DeferUpgrade*
-   GP element: *DeferUpgradePeriodId*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – User gets upgrades from Semi-Annual Channel (Targeted).
-   1 – User gets upgrades from Semi-Annual Channel.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-requireupdateapproval"></a>**Update/RequireUpdateApproval**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> If you previously used the **Update/PhoneUpdateRestrictions** policy in previous versions of Windows, it has been deprecated. Please use this policy instead.


Allows the IT admin to restrict the updates that are installed on a device to only those on an update approval list. It enables IT to accept the End User License Agreement (EULA) associated with the approved update on behalf of the end-user. EULAs are approved once an update is approved.

Supported operations are Get and Replace.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not configured. The device installs all applicable updates.
-   1 – The device only installs updates that are both applicable and on the Approved Updates list. Set this policy to 1 if IT wants to control the deployment of updates on devices, such as when testing is required prior to deployment.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-scheduleimminentrestartwarning"></a>**Update/ScheduleImminentRestartWarning**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Allows the IT Admin to specify the period for auto-restart imminent warning notifications.

The default value is 15 (minutes).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure auto-restart warning notifications schedule for updates*
-   GP name: *RestartWarnRemind*
-   GP element: *RestartWarn*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values are 15, 30, or 60 (minutes).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-schedulerestartwarning"></a>**Update/ScheduleRestartWarning**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


Added in Windows 10, version 1703. Allows the IT Admin to specify the period for auto-restart warning reminder notifications.

The default value is 4 (hours).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure auto-restart warning notifications schedule for updates*
-   GP name: *RestartWarnRemind*
-   GP element: *RestartWarnRemind*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values are 2, 4, 8, 12, or 24 (hours).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-scheduledinstallday"></a>**Update/ScheduledInstallDay**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Enables the IT admin to schedule the day of the update installation.

The data type is a integer.

Supported operations are Add, Delete, Get, and Replace.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Automatic Updates*
-   GP name: *AutoUpdateCfg*
-   GP element: *AutoUpdateSchDay*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Every day
-   1 – Sunday
-   2 – Monday
-   3 – Tuesday
-   4 – Wednesday
-   5 – Thursday
-   6 – Friday
-   7 – Saturday

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-scheduledinstalleveryweek"></a>**Update/ScheduledInstallEveryWeek**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1709. Enables the IT admin to schedule the update installation on the every week. Value type is integer. Supported values:
<ul>
<li>0 - no update in the schedule</li>
<li>1 - update is scheduled every week</li>
</ul>

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Automatic Updates*
-   GP name: *AutoUpdateCfg*
-   GP element: *AutoUpdateSchEveryWeek*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-scheduledinstallfirstweek"></a>**Update/ScheduledInstallFirstWeek**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1709. Enables the IT admin to schedule the update installation on the first week of the month. Value type is integer. Supported values:
<ul>
<li>0 - no update in the schedule</li>
<li>1 - update is scheduled every first week of the month</li>
</ul>

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Automatic Updates*
-   GP name: *AutoUpdateCfg*
-   GP element: *AutoUpdateSchFirstWeek*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-scheduledinstallfourthweek"></a>**Update/ScheduledInstallFourthWeek**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1709. Enables the IT admin to schedule the update installation on the fourth week of the month. Value type is integer. Supported values:
<ul>
<li>0 - no update in the schedule</li>
<li>1 - update is scheduled every fourth week of the month</li>
</ul>

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Automatic Updates*
-   GP name: *AutoUpdateCfg*
-   GP element: *ScheduledInstallFourthWeek*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-scheduledinstallsecondweek"></a>**Update/ScheduledInstallSecondWeek**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1709. Enables the IT admin to schedule the update installation on the second week of the month. Value type is integer. Supported values:
<ul>
<li>0 - no update in the schedule</li>
<li>1 - update is scheduled every second week of the month</li>
</ul>

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Automatic Updates*
-   GP name: *AutoUpdateCfg*
-   GP element: *ScheduledInstallSecondWeek*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-scheduledinstallthirdweek"></a>**Update/ScheduledInstallThirdWeek**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1709. Enables the IT admin to schedule the update installation on the third week of the month. Value type is integer. Supported values:
<ul>
<li>0 - no update in the schedule</li>
<li>1 - update is scheduled every third week of the month</li>
</ul>

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Automatic Updates*
-   GP name: *AutoUpdateCfg*
-   GP element: *ScheduledInstallThirdWeek*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-scheduledinstalltime"></a>**Update/ScheduledInstallTime**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


Enables the IT admin to schedule the time of the update installation.

The data type is a integer.

Supported operations are Add, Delete, Get, and Replace.

Supported values are 0-23, where 0 = 12 AM and 23 = 11 PM.

The default value is 3.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Automatic Updates*
-   GP name: *AutoUpdateCfg*
-   GP element: *AutoUpdateSchTime*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-setautorestartnotificationdisable"></a>**Update/SetAutoRestartNotificationDisable**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Allows the IT Admin to disable auto-restart notifications for update installations.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Turn off auto-restart notifications for update installations*
-   GP name: *AutoRestartNotificationDisable*
-   GP element: *AutoRestartNotificationSchd*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Enabled
-   1 – Disabled

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-setdisablepauseuxaccess"></a>**Update/SetDisablePauseUXAccess**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy allows the IT admin to disable the "Pause Updates" feature. When this policy is enabled, the user cannot access the "Pause updates" feature.

Value type is integer. Default is 0. Supported values 0, 1.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP name: *SetDisablePauseUXAccess*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-setdisableuxwuaccess"></a>**Update/SetDisableUXWUAccess**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy allows the IT admin to remove access to scan Windows Update. When this policy is enabled, the user cannot access the Windows Update scan, download, and install features.

Value type is integer. Default is 0. Supported values 0, 1.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP name: *SetDisableUXWUAccess*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-setedurestart"></a>**Update/SetEDURestart**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. For devices in a cart, this policy skips all restart checks to ensure that the reboot will happen at ScheduledInstallTime.

When you set this policy along with Update/ActiveHoursStart, Update/ActiveHoursEnd, and ShareCartPC, it will defer all the update processes (scan, download, install, and reboot) to a time after Active Hours. After a buffer period after ActiveHoursEnd, the device will wake up several times to complete the processes. All processes are blocked before ActiveHoursStart.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Update Power Policy for Cart Restarts*
-   GP name: *SetEDURestart*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - not configured
- 1 - configured

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="update-updatenotificationlevel"></a>**Update/UpdateNotificationLevel**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Display options for update notifications. This policy allows you to define what Windows Update notifications users see. This policy doesn’t control how and when updates are downloaded and installed.

Options: 

-  0 (default) – Use the default Windows Update notifications
-  1 – Turn off all notifications, excluding restart warnings
-  2 – Turn off all notifications, including restart warnings

> [!Important]  
> If you choose not to get update notifications and also define other Group policies so that devices aren’t automatically getting updates, neither you nor device users will be aware of critical security, quality, or feature updates, and your devices may be at risk.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Display options for update notifications*
-   GP name: *UpdateNotificationLevel*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!Important]  
> Starting in Windows 10, version 1703 this policy is not supported in Windows 10 Mobile Enteprise and IoT Mobile.

Allows the device to check for updates from a WSUS server instead of Microsoft Update. This is useful for on-premises MDMs that need to update devices that cannot connect to the Internet.

Supported operations are Get and Replace.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Specify intranet Microsoft update service location*
-   GP name: *CorpWuURL*
-   GP element: *CorpWUURL_Name*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   Not configured. The device checks for updates from Microsoft Update.
-   Set to a URL, such as `http://abcd-srv:8530`. The device checks for updates from the WSUS server at the specified URL.

<!--/SupportedValues-->
<!--Example-->
Example

``` syntax
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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in the January service release of Windows 10, version 1607. Specifies an alternate intranet server to host updates from Microsoft Update. You can then use this update service to automatically update computers on your network.

This setting lets you specify a server on your network to function as an internal update service. The Automatic Updates client will search this service for updates that apply to the computers on your network.

To use this setting, you must set two server name values: the server from which the Automatic Updates client detects and downloads updates, and the server to which updated workstations upload statistics. You can set both values to be the same server.  An optional server name value can be specified to configure Windows Update agent, and download updates from an alternate download server instead of WSUS Server.

Value type is string and the default value is an empty string, "". If the setting is not configured, and if Automatic Updates is not disabled by policy or user preference, the Automatic Updates client connects directly to the Windows Update site on the Internet.

> [!Note]  
> If the "Configure Automatic Updates" Group Policy is disabled, then this policy has no effect.  
> If the "Alternate Download Server" Group Policy is not set, it will use the WSUS server by default to download updates.  
> This policy is not supported on Windows RT. Setting this policy will not have any effect on Windows RT PCs.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Specify intranet Microsoft update service location*
-   GP name: *CorpWuURL*
-   GP element: *CorpWUContentHost_Name*
-   GP path: *Windows Components/Windows Update*
-   GP ADMX file name: *WindowsUpdate.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<!--/Policies-->

<!--StartHoloLens-->
## <a href="" id="hololenspolicies"></a>Update policies supported by Windows Holographic

- [Update/AllowAutoUpdate](#update-allowautoupdate)
- [Update/AllowUpdateService](#update-allowupdateservice)
- [Update/ConfigureDeadlineForFeatureUpdates](#update-configuredeadlineforfeatureupdates)
- [Update/ConfigureDeadlineForQualityUpdates](#update-configuredeadlineforqualityupdates)
- [Update/ConfigureDeadlineGracePeriod](#update-configuredeadlinegraceperiod)
- [Update/ConfigureDeadlineNoAutoReboot](#update-configuredeadlinenoautoreboot)
- [Update/RequireUpdateApproval](#update-requireupdateapproval)
- [Update/ScheduledInstallDay](#update-scheduledinstallday)
- [Update/ScheduledInstallTime](#update-scheduledinstalltime)
- [Update/UpdateServiceUrl](#update-updateserviceurl)
- [Update/RequireDeferUpgrade](#update-requiredeferupgrade)
<!--EndHoloLens-->

<!--StartHoloLensBusiness-->
## <a href="" id="hololenbusinessspolicies"></a>Update policies supported by Windows Holographic for Business

- [Update/AllowAutoUpdate](#update-allowautoupdate)
- [Update/AllowUpdateService](#update-allowupdateservice)
- [Update/ConfigureDeadlineForFeatureUpdates](#update-configuredeadlineforfeatureupdates)
- [Update/ConfigureDeadlineForQualityUpdates](#update-configuredeadlineforqualityupdates)
- [Update/ConfigureDeadlineGracePeriod](#update-configuredeadlinegraceperiod)
- [Update/ConfigureDeadlineNoAutoReboot](#update-configuredeadlinenoautoreboot)
- [Update/RequireUpdateApproval](#update-requireupdateapproval)
- [Update/ScheduledInstallDay](#update-scheduledinstallday)
- [Update/ScheduledInstallTime](#update-scheduledinstalltime)
- [Update/UpdateServiceUrl](#update-updateserviceurl)
- [Update/RequireDeferUpgrade](#update-requiredeferupgrade)
<!--EndHoloLensBusiness-->

<!--StartIoTCore-->
## <a href="" id="iotcore"></a>Update policies supported by IoT Core  

- [Update/ConfigureDeadlineForFeatureUpdates](#update-configuredeadlineforfeatureupdates)
- [Update/ConfigureDeadlineForQualityUpdates](#update-configuredeadlineforqualityupdates)
- [Update/ConfigureDeadlineGracePeriod](#update-configuredeadlinegraceperiod)
- [Update/ConfigureDeadlineNoAutoReboot](#update-configuredeadlinenoautoreboot)
<!--EndIoTCore-->

<!--StartIoTEnterprise-->
## <a href="" id="iotcore"></a>Update policies supported by IoT Enterprise  

- [Update/ConfigureDeadlineForFeatureUpdates](#update-configuredeadlineforfeatureupdates)
- [Update/ConfigureDeadlineForQualityUpdates](#update-configuredeadlineforqualityupdates)
- [Update/ConfigureDeadlineGracePeriod](#update-configuredeadlinegraceperiod)
- [Update/ConfigureDeadlineNoAutoReboot](#update-configuredeadlinenoautoreboot)
<!--EndIoTEnterprise-->
<hr/>

Footnotes:

- 1 - Added in Windows 10, version 1607.
- 2 - Added in Windows 10, version 1703.
- 3 - Added in Windows 10, version 1709.
- 4 - Added in Windows 10, version 1803.
- 5 - Added in Windows 10, version 1809.
- 6 - Added in Windows 10, version 1903.
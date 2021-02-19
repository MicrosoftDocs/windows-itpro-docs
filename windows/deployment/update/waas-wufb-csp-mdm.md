---
title: Configure Windows Update for Business by using CSPs and MDM
description: Walk-through demonstration of how to configure Windows Update for Business settings using Configuration Service Providers and MDM.
ms.prod: w10
ms.mktglfcycl: manage
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.reviewer: 
manager: laurawi
ms.topic: article
---

# Walkthrough: Use CSPs and MDMs to configure Windows Update for Business


**Applies to**

- Windows 10

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 


## Overview 

You can use Configuration Service Provider (CSP) policies to control how Windows Update for Business works by using a Mobile Device Management (MDM) tool. You should consider and devise a deployment strategy for updates before you make changes to the Windows Update for Business settings.
 
An IT administrator can set policies for Windows Update for Business by using Microsoft Intune or a non-Microsoft MDM tool.

To manage updates with Windows Update for Business, you should prepare with these steps, if you haven't already:

- Create Active Directory security groups that align with the deployment rings you use to phase deployment of updates. See [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md) to learn more about deployment rings in Windows 10.
- Allow access to the Windows Update service.


## Manage Windows Update offerings

You can control when updates are applied, for example by deferring when an update is installed on a device or by pausing updates for a certain period of time.

### Determine which updates you want offered to your devices

Both Windows 10 feature and quality updates are automatically offered to devices that are connected to Windows Update using Windows Update for Business policies. However, you can choose whether you want the devices to additionally receive other Microsoft Updates or drivers that are applicable to that device.

To enable Microsoft Updates use [Update/AllwMUUpdateService](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-allowmuupdateservice).

Drivers are automatically enabled because they are beneficial to device systems. We recommend that you allow the driver policy to allow drivers to updated on devices (the default), but you can turn this setting off if you prefer to manage drivers manually. If you want to disable driver updates for some reason, use Update/[ExcludeWUDriversInQualityUpdate](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-excludewudriversinqualityupdate).

 We also recommend that you allow Microsoft product updates as discussed previously.

### Set when devices receive feature and quality updates

#### I want to receive pre-release versions of the next feature update

1. Ensure that you are enrolled in the Windows Insider Program for Business. This is a completely free program available to commercial customers to aid them in their validation of feature updates before they are released. Joining the program enables you to receive updates prior to their release as well as receive emails and content related to what is coming in the next updates. 

1. For any of test devices you want to install pre-release builds, use [Update/ManagePreviewBuilds](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-managepreviewbuilds). Set this to **Enable preview builds**.

1. Use [Update/BranchReadinessLevel](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-branchreadinesslevel) and select one of the preview Builds. Windows Insider Program Slow is the recommended channel for commercial customers who are using pre-release builds for validation.

1. Additionally, you can defer pre-release feature updates the same way as released updates, by setting a deferral period up to 14 days by using [Update/DeferFeatureUpdatesPeriodInDays](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-deferfeatureupdatesperiodindays). If you are testing with Windows Insider Program Slow builds, we recommend that you receive the preview updates to your IT department on day 0, when the update is released, and then have a 7-10 day deferral before rolling out to your group of testers. This ensures that if a problem is discovered, you can pause the rollout of the preview update before it reaches your tests.

#### I want to manage which released feature update my devices receive

A Windows Update for Business administrator can defer or pause updates. You can defer feature updates for up to 365 days and defer quality updates for up to 30 days. Deferring simply means that you will not receive the update until it has been released for at least the number of deferral days you specified (offer date = release date + deferral date). You can pause feature or quality updates for up to 35 days from a given start date that you specify.

- To defer a feature update: [Update/DeferFeatureUpdatesPeriodInDays](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-deferfeatureupdatesperiodindays)
- To pause a feature update: [Update/PauseFeatureUpdatesStartTime](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-pausefeatureupdatesstarttime)
- To defer a quality update: [Update/DeferQualityUpdatesPeriodInDays](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-deferqualityupdatesperiodindays)
- To pause a quality update: [Update/PauseQualityUpdatesStartTime](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-pausequalityupdatesstarttime)

#### Example

In this example, there are three rings for quality updates. The first ring ("pilot") has a deferral period of 0 days. The second ring ("fast") has a deferral of five days. The third ring ("slow") has a deferral of ten days.

![illustration of devices divided into three rings](images/waas-wufb-3-rings.png)

When the quality update is released, it is offered to devices in the pilot ring the next time they scan for updates.

##### Five days later
The devices in the fast ring are offered the quality update the next time they scan for updates.

![illustration of devices with fast ring deployed](images/waas-wufb-fast-ring.png)

##### Ten days later
Ten days after the quality update is released, it is offered to the devices in the slow ring the next time they scan for updates.

![illustration of devices with slow ring deployed](images/waas-wufb-slow-ring.png)

If no problems occur, all of the devices that scan for updates will be offered the quality update within ten days of its release, in three waves.

##### What if a problem occurs with the update?

In this example, some problem is discovered during the deployment of the update to the "pilot" ring.

![illustration of devices divided with pilot ring experiencing a problem](images/waas-wufb-pilot-problem.png)

At this point, the IT administrator can set a policy to pause the update. In this example, the admin selects the **Pause quality updates** check box.

![illustration of rings with pause quality update check box selected](images/waas-wufb-pause.png)

Now all devices are paused from updating for 35 days. When the pause is removed, they will be offered the *next* quality update, which ideally will not have the same issue. If there is still an issue, the IT admin can pause updates again.




#### I want to stay on a specific version

If you need a device to stay on a version beyond the point when deferrals on the next version would elapse or if you need to skip a version (for example, update fall release to fall release) use the [Update/TargetReleaseVersion](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-targetreleaseversion) (or Deploy Feature Updates Preview in Intune) instead of using feature update deferrals. When you use this policy, specify the version that you want your device(s) to move to or stay on (for example, "1909"). You can find version information at the [Windows 10 Release Information Page](https://docs.microsoft.com/windows/release-health/release-information).

### Manage how users experience updates

#### I want to manage when devices download, install, and restart after updates

We recommended that you allow to update automatically--this is the default behavior. If you don't set an automatic update policy, the device will attempt to download, install, and restart at the best times for the user by using built-in intelligence such as intelligent active hours and smart busy check.

For more granular control, you can set the maximum period of active hours the user can set with [Update/ActiveHoursMaxRange](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-activehoursmaxrange). You could also set specific start and end times for active ours with [Update/ActiveHoursEnd](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-activehoursend) and [Update/ActiveHoursStart](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-activehoursstart).

It's best to refrain from setting the active hours policy because it's enabled by default when automatic updates are not disabled and provides a better experience when users can set their own active hours.

To update outside of the active hours, use [Update/AllowAutoUpdate](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-allowautoupdate) with Option 2 (which is the default setting). For even more granular control, consider using automatic updates to schedule the install time, day, or week. To do this, use Option 3, and then set the following policies as appropriate for your plan:

- [Update/ScheduledInstallDay](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduledinstallday) 
- [Update/ScheduledInstallEveryWeek](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduledinstalleveryweek) 
- [Update/ScheduledInstallFirstWeek](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduledinstallfirstweek) 
- [Update/ScheduledInstallFourthWeek](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduledinstallfourthweek) 
- [Update/ScheduledInstallSecondWeek](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduledinstallsecondweek) 
- [Update/ScheduledInstallThirdWeek](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduledinstallthirdweek) 
- [Update/ScheduledInstallTime](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduledinstalltime)


When you set these policies, installation happens automatically at the specified time and the device will restart 15 minutes after installation is complete (unless it's interrupted by the user).

If you don't want to allow any automatic updates prior to the deadline, set [Update/AllowAutoUpdate](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-allowautoupdate) to Option 5, which turns off automatic updates.

#### I want to keep devices secure and compliant with update deadlines

We recommend that you use set specific deadlines for feature and quality updates to ensure that devices stay secure on Windows 10, version 1709 and later. This works by enabling you to specify the number of days that can elapse after an update is offered to a device before it must be installed. Also you can set the number of days that can elapse after a pending restart before the user is forced to restart. Use these settings:

- [Update/ConfigureDeadlineForFeatureUpdates](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-configuredeadlineforfeatureupdates) 
- [Update/ConfigureDeadlineForQualityUpdates ](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-configuredeadlineforqualityupdates)
- [Update/ConfigureDeadlineGracePeriod](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-configuredeadlinegraceperiod) 
- [Update/ConfigureDeadlineNoAutoReboot](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-configuredeadlinenoautoreboot)

These policies also offer an option to opt out of automatic restarts until a deadline is reached by presenting an "engaged restart experience" until the deadline has actually expired. At that point the device will automatically schedule a restart regardless of active hours.

These notifications are what the user sees depending on the settings you choose:

When **Specify deadlines for automatic updates and restarts** is set (For Windows 10, version 1709 and later):

 - **While restart is pending, before the deadline occurs:**

   - For the first few days, the user receives a toast notification

   - After this period, the user receives this dialog:

     ![The notification users get for an impending restart prior to deadline](images/wufb-update-deadline-warning.png)

   - If the user scheduled a restart, or if an auto restart is scheduled, 15 minutes before the scheduled time the user is receives this notification that the restart is about to occur:

     ![The notification users get for an impending restart 15 minutes prior to restart](images/wufb-restart-imminent-warning.png)

 - **If the restart is still pending after the deadline passes:**
 
   - Within 12 hours before the deadline passes, the user receives this notification that the deadline is approaching:

     ![The notification users get for an approaching restart deadline](images/wufb-pastdeadline-restart-warning.png)

   - Once the deadline has passed, the user is forced to restart to keep their devices in compliance and receives this notification:

     ![The notification users get for an imminent restart after the deadline](images/wufb-pastdeadline-restartnow.png)

#### I want to manage the notifications a user sees

There are additional settings that affect the notifications.

We recommend that you use the default notifications as they aim to provide the best user experience while adjusting for the compliance policies that you have set. If you do have further needs that are not met by the default notification settings, you can use the [Update/UpdateNotificationLevel](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-updatenotificationlevel) policy with these values:

**0** (default) – Use the default Windows Update notifications<br/>
**1** – Turn off all notifications, excluding restart warnings<br/>
**2** – Turn off all notifications, including restart warnings

> [!NOTE]
> Option **2** creates a poor experience for personal devices; it's only recommended for kiosk devices where automatic restarts have been disabled.

Still more options are available in [Update/ScheduleRestartWarning](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-schedulerestartwarning). This setting allows you to specify the period for auto-restart warning reminder notifications (from 2-24 hours; 4 hours is the default) before the update. You can also specify the period for auto-restart imminent warning notifications with [Update/ScheduleImminentRestartWarning](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-scheduleimminentrestartwarning) (15-60 minutes is the default). We recommend using the default notifications.

#### I want to manage the update settings a user can access

Every Windows device provides users with a variety of controls they can use to manage Windows Updates. They can access these controls by Search to find Windows Updates or by going selecting **Updates and Security** in **Settings**. We provide the ability to disable a variety of these controls that are accessible to users.
 
Users with access to update pause settings can prevent both feature and quality updates for 7 days. You can prevent users from pausing updates through the Windows Update settings page by using [Update/SetDisablePauseUXAccess](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-setdisablepauseuxaccess).
When you disable this setting, users will see **Some settings are managed by your organization** and the update pause settings are greyed out.

If you use Windows Server Update Server (WSUS), you can prevent users from scanning Windows Update. To do this, use [Update/SetDisableUXWUAccess](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-setdisableuxwuaccess).




## Related topics

- [Update Windows 10 in the enterprise](index.md)
- [Overview of Windows as a service](waas-overview.md)
- [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md)
- [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md)
- [Assign devices to servicing channels for Windows 10 updates](waas-servicing-channels-windows-10-updates.md)
- [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md)
- [Configure Delivery Optimization for Windows 10 updates](waas-delivery-optimization.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md) 
- [Deploy updates using Windows Update for Business](waas-manage-updates-wufb.md)
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Intune to configure Windows Update for Business](https://docs.microsoft.com/intune/windows-update-for-business-configure)
- [Deploy Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)
- [Deploy Windows 10 updates using Microsoft Endpoint Configuration Manager](waas-manage-updates-configuration-manager.md)
- [Manage device restarts after updates](waas-restart.md)






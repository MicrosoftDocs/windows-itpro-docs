---
title: Walkthrough: use Group Policy to configure Windows Update for Business (Windows 10)
description: Configure Windows Update for Business settings using Group Policy.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.topic: article
---

# Walkthrough: use Group Policy to configure Windows Update for Business


**Applies to**

- Windows 10

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 


## Overview 

You can use Group Policy, through the Group Policy Management Console (GPMC) to control how Windows Update for Business works. You should consider and devise a deployment strategy for updates before you make changes to the Windows Update for Business settings. See 

An IT administrator can set policies for Windows Update for Business by using Group Policy, or they can be set locally (per device). All of the relevant policies are under the path **Computer configuration > Administrative Templates > Windows Components > Windows Update**.



## Offering

### Manage which updates are offered

There are group policies that allow you to disable drivers and to turn on or off updates from other Microsoft products.

- Disable drivers:	**Computer configuration > Administrative Templates > Windows Components > Windows Update > Do not include drivers with Windows Updates**

   ![UI for do not include drivers](images/waas-wufb-gp-disable-drivers.png)

- Turn on or off Microsoft product updates: **Computer configuration > Administrative Templates > Windows Components > Windows Update > Get updates for other Microsoft Products**

### Manage when updates are offered

#### Defer or pause feature and quality updates
You can both defer or pause feature and quality updates from the "Slect when preview builds and feature updates are received" policy. Feature updates can be set for 365 days while Pause for feature or quality updates can be set for a maximum of 35 days with a set start date.

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Windows Update for Business > Select when Preview Builds and Feature Updates are Received**

![UI for defer or pause feature updates](images/waas-wufb-gp-defer-pause-feature.png)


For quality updates:

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Windows Update for Business > Select when Quality Updates are Received**

![UI for defer or pause quality updates](images/waas-wufb-gp-defer-pause-quality.png)

#### Set branch readiness level for feature updates

This policy only applies to feature updates. To enable preview builds for devices in your organization, set the "Enable preview builds" policy and then use the "Select when preview builds and feature updates are received" policy.

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Windows Update for Business > Manage Preview Builds**

 ![UI for manage preview builds](images/waas-wufb-gp-manage-preview-builds.png)

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Windows Update for Business > Select when Preview Builds and Feature Updates are Received**

![UI for select branch readiness](images/waas-wufb-gp-select-branch.png)

## Experience

### Manage update controls available to end users

Deferral policies and branch readiness level options are automatically removed for end users when the device is managed and has deferrals set by an administrator. Additionally, opting into update for other Microsoft products setting is greyed out when set by an IT administrator. This behavior is paired with red text in the end-users' **Advanced options** user interface stating that some settings are managed by their organization.

There is also a policy that enables IT Administrators to remove the end-user option to set pause, by greying it out in the Update Settings **Advanced options** user interface. When an IT administrator has set this policy on a device, there will be an asterisk with red text in the end-user’s interface stating that some settings are managed by their organization.

![Advanced options UI showing "some settings are managed by your organization"](images/waas-wufb-advanced-options-UI.png)

To remove the option for end users to pause updates, use this policy:

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Remove access to “Pause updates” feature**

![GP UI for removing pause option](images/waas-wufb-gp-remove-pause.png)

### Manage scan, download, install, and restart controls

#### Scan controls

The "Automatic Updates detection frequency" that allows you to set the frequency of scans for automatic update detection. This policy allows the admin to specify the hours that Windows will use to determine how long to wait before checking for available updates. If no value is set or the policy is not configured, Windows will check for available updates at the default interval of 22 hours.

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Automatic Updates detection frequency**

![UI for automatic updates detection frequency](images/waas-wufb-gp-AU-freq.png)


#### Download and install controls

##### Metered network control

This policy enables devices to automatically download updates, even over metered data connections (charges may apply).

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Allow updates to be downloaded automatically over metered connections**

![UI for metered network control](images/waas-wufb-gp-metered-network.png)

##### Notification controls

There is a policy that allows administrators to set the display options for update notifications. This policy provides three options: the default Windows Update for the operating system notifications, disable all notifications excluding restart notifications, and disable all notifications including restart notifications.

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Display options for update notifications**

![UI for displaying update notifications](images/waas-wufb-gp-update-notifications.png)


Two policies related to the “Install Updates and Shut Down” option enable the IT Administrator to either fully remove this option from the **Shut Down Windows** dialog box or to remove “Install Updates and Shut Down” option as the default selection in the Windows dialog box. 

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Do not adjust default option to “Install Updates and Shut Down” in Shut Down Windows dialog box**

![UI for removing install updates and shut down option](images/waas-wufb-gp-do-not-adjust-install-update.png)


**Computer configuration > Administrative Templates > Windows Components > Windows Update > Do not display “Install Updates and Shut Down” option in Shut Down Windows dialog box**

![UI for removing install updates and shut down option](images/waas-wufb-gp-do-not-display-install-update.png)

##### Automatic Update notification controls

The "Configure automatic updates" policy enables administrators to specify whether computers will receive security updates and other important downloads through the Windows automatic updating service. This policy also enables the ability to schedule installation.

Additionally, you can specify whether automatic updates should automatically install certain updates that neither interrupt Windows services nor restart windows. Yu can also allow non-administrators to receive update notifications based on the configure automatic updates policy.

 **Computer configuration > Administrative Templates > Windows Components > Windows Update > Configure Automatic Updates**

![UI for configure automatic updates](images/waas-wufb-gp-configure-automatic-updates.png)

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Allow Automatic Updates immediate installation**

![UI for allow automatic updates](images/waas-wufb-gp-allow-automatic-updates.png)

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Allow non-administrators to receive update notifications**

![UI for allow non-admin automatic updates](images/waas-wufb-gp-allow-automatic-updates.png)

##### Scheduling

Admins can enable Windows to automatically wake up systems to install scheduled updates.

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Enabling Windows Update Power Management to automatically wake up the system to install scheduled updates**

![UI for allowing updates to wake up devices](images/waas-wufb-gp-wake-up-updates.png)

#### Restart controls

##### Restart controls for scheduled installations

You can re-prompt to restart a device after scheduled installations. Specify the amount of time for Automatic Updates to wait before prompting again with a scheduled restart; the default is 10 minutes. YOu can also delay restart for scheduled installations or specify that to complete a scheduled installation, Automatic Updates will wait for the computer to be restarted by any user who is logged on, instead of causing the computer to restart automatically. 

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Re-prompt for restart with scheduled installations**

![UI for re-prompt for restart](images/waas-wufb-gp-re-prompt-restart.png)

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Delay Restart for scheduled installations**

![UI for delay restart](images/waas-wufb-gp-delay-restart.png)

**Computer configuration > Administrative Templates > Windows Components > Windows Update > No auto-restart with logged on users for scheduled automatic updates installations**

![UI for no auto-restart](images/waas-wufb-gp-no-auto-restart.png)

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Reschedule Automatic Updates scheduled installations**

![UI for resched-auto-updates](images/waas-wufb-gp-resched-auto-updates.png)

##### Auto-restart and deadline for auto-restart

You can control the restart experience of end users with a number of policies. When these policies are not configured, the users' active hours will be in effect. This enables the IT admin to turn off auto-restart for updates during active hours, set the maximum active hours range for auto-restarts, always automatically restart at the scheduled time instead of notifying for two or more days prior, specify a deadline before the device tries to auto-restart outside of active hours (this deadline can be set to varying days for feature and quality updates with a default at 7 days), and configure auto-restart reminder notifications or turn them off completely. 

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Turn off auto-restart for updates during active hours**

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Specify active hours range for auto-restarts**

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Always automatically restart at the scheduled time**

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Specify deadline before auto-restart for update installation**

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Configure auto-restart reminder notifications for updates**

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Turn off auto-restart notifications for update installations**

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Configure auto-restart required notification for updates**

##### Engaged restart and deadline for engaged restart

The engaged restart policy allows the administrator to control the timing before transitioning from an auto-restart scheduled outside of active hours to engaged restart, which requires the user to schedule the restart. With this one policy, you can schedule the transition (time before transitioning from auto to engaged), the snooze (how many days the user can snooze a restart reminder), and deadline (the deadline before a pending restart will automatically be executed outside of active hours). 

**Computer configuration > Administrative Templates > Windows Components > Windows Update > Specify Engaged restart transition and notification schedule for updates**

## Other policies for Windows Updates

All of these policies are under **Computer configuration > Administrative Templates > Windows Components > Windows Update**:

-	Enable Client Side targeting  
-	Update power policy for cart restarts 
-	Policies related to Microsoft update service location 
    - Allow signed updates from an intranet Microsoft service location
    - Specify intranet Microsoft update service location
    - Do not connect to any Windows Update Intranet locations 



## Known issues
The following article describes the known challenges that can occur when you manage a Windows 10 Group policy client base:
- [Known issues managing a Windows 10 Group Policy client in Windows Server 2012 R2](https://support.microsoft.com/help/4015786/known-issues-managing-a-windows-10-group-policy-client-in-windows-serv)

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
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Intune to configure Windows Update for Business](waas-wufb-intune.md)
- [Deploy Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)
- [Deploy Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md)
- [Manage device restarts after updates](waas-restart.md)

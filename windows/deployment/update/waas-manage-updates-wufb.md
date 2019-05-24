---
title: Deploy updates using Windows Update for Business (Windows 10)
description: Windows Update for Business lets you manage when devices received updates from Windows Update.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.topic: article
---

# Deploy updates using Windows Update for Business


**Applies to**

- Windows 10
- Windows 10 Mobile {DID YOU WANT TO REMOVE MOBILE?}
- Windows Server 2016
- Windows Server 2019

Windows Update for Business is a free service that is available for Windows Pro, Enterprise, Pro for Workstation, and Education editions. 

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 



Windows Update for Business enables IT administrators to keep the Windows 10 devices in their organization always up to date with the latest security defenses and Windows features by directly connecting these systems to Windows Update service. You can use Group Policy or MDM solutions such as Intune to configure the Windows Update for Business settings that control how and when Windows 10 devices are updated.
  
Specifically, Windows Update for Business allows for control over update offering and experience to allow for reliability and performance testing on a subset of systems before rolling out updates across the organization as well as a positive update experience for those within your organization. 
 
>[!NOTE] In order to use Windows Update for Business, you must allow access to the Windows Update service. 

>[!NOTE]
>See [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md) to learn more about deployment rings in Windows 10.

## Update types managed by Windows Update for Business

Windows Update for Business provides management policies for multiple types of updates to Windows 10 devices:
 
- **Feature updates:** previously referred to as *upgrades*, feature updates contain not only security and quality revisions, but also significant feature additions and changes; they are released semi-annually in the fall and in the spring. 
- **Quality updates:** these are traditional operating system updates, typically released on the second Tuesday of each month (though they can be released at any time). These include security, critical, and driver updates. Windows Update for Business also treats non-Windows updates (such as those for Microsoft Office or Visual Studio) as quality updates. These non-Windows updates are known as "Microsoft updates" and devices can be configured to receive or not receive such updates along with their Windows updates. 
- **Driver updates:** These are non-Microsoft drivers that are applicable to your devices. Driver updates can be turned off via Windows Update for Business policies.  
- **Microsoft product updates:** these are updates for other Microsoft products, such as Office. These updates can be enabled or disabled via Windows Update for Business policy.

## Offering

You can control when updates are applied, for example by deferring when an update is installed on a device or by pausing updates for a certain period of time.

### Manage which updates are offered

Windows Update for Business, offers you the ability to turn on or off both driver and Microsoft product updates.   

- Drivers (on/off) 
- Microsoft product updates (on/off) 

### Manage when updates are offered

#### Defer an update

A Windows Update for Business administrator can defer both feature and quality updates from deploying to client devices within a bounded range of time from when those updates are first made available on the Windows Update service. This deferral allows you time to validate deployments as they are pushed to client devices configured for Windows Update for Business. Deferrals work by allowing you to specify the number of days after an update is released before it is offered to a device (if you set a feature update deferral period of 365 days, the client will not take a feature update that has been released for less than 365 days). 


| Category | Maximum deferral |
| --- | ----- |
| Feature updates | 365 days |
| Quality updates | 30 days  |
| Non-deferrable | No deferral |

#### Pause an update

If you discover a problem while deploying a feature or quality Update, an IT Administrator has the ability to pause the update for 35 days to prevent other devices from taking the problematic update until the issue is mitigated. If feature updates are paused, quality updates will still be offered to devices to ensure they stay in a secure state. The pause period for both feature and quality updates is calculated from the set start date. For more details, see [Pause feature updates](waas-configure-wufb.md#pause-feature-updates) and [Pause quality updates](waas-configure-wufb.md#pause-quality-updates).

#### Select branch readiness level for feature updates
 
Branch readiness level enables administrators to specify which channel of feature updates they would like to receive. Today there are branch readiness level options for both pre-release and released updates:
 
- Windows Insider Program for Business pre-release updates 
    - Windows Insider Fast  
    - Windows Insider Slow  
    - Windows Insider Release Preview  
- The Semi-Annual Channel, released updates 
  
Prior to Windows 10, version 1903, there are two channels for released updates: Semi-Annual Channel (Targeted) and Semi-Annual Channel. Deferral days are calculated against the release date of the chosen channel (either a release’s Semi-Annual Channel (Targeted) release date or the release’s Semi-Annual Channel release date). Starting with Windows 10, version 1903 there is only one release channel, the Semi-Annual Channel. All deferral days are calculated against a release’s Semi-Annual Channel release date. To see release dates go to the [Windows Release Information Page](NEEDLINK).  

## Experience

### Manage end-user update controls 

When certain policies such as deferral policies, branch readiness level options, or turning on or off Microsoft product updates are set by an IT Administrator the corresponding settings in the **Update Settings Advanced Options** user interface on a managed end-users device will be greyed out. 
 
Additionally, there is a policy that enables IT Administrators to remove the end-user option to set pauses, by greying it out in the **Update Settings Advanced Options** user interface. When an IT administrator has set policy on a device, there will be an asterisk with red text in the end-user’s interface stating that some settings are managed by their organization.
  
### Manage update experience (scan, download, install, restart controls) 
   
#### Scan controls 
 
The "Automatic Updates detection frequency" policy allows you to set the frequency of scans for automatic update detection. This policy allows the admin to specify the hours that Windows will use to determine how long to wait before checking for available updates. If no value is set or the policy is not configured, Windows will check for available updates at the default interval of 22 hours. 

#### Download and install controls  

##### Metered network control
  
This policy enables devices to automatically download updates, even over metered data connections (charges may apply). 

##### Notification controls
  
This policy allows administrators to set the display options for update notifications. There are three options: the default operating system Windows Update notifications, disable all notifications excluding restart notifications, and disable all notifications including restart notifications.
 
We have two policies related to the “Install Updates and Shut Down” option that enable the IT Administrator to either fully remove this option from the Shut Down Windows dialog box or to remove “Install Updates and Shut Down” option as the default selection in the Windows dialog box. 
 
##### Automatic Update notification controls 

The "configure automatic updates policy" enables administrators to specify whether devices will receive security updates and other important downloads through the Windows Automatic Updating service. This policy also enables the ability to schedule when installation occurs. 

Additionally, there is the ability to specify whether automatic updates should automatically install certain updates that neither interrupt Windows services nor restart windows. There is also the ability to allow non-administrators to receive update notifications based off of the configure automatic updates policy discussed above. 
 
##### Scheduling  
As an administrator, you can enable Windows to automatically wake up systems to install scheduled updates.  

#### Restart controls 
 
##### Restart controls for if schedule install has been utilized {not sure I understand what this is trying to say?} 

The administrator can re-prompt for restart with scheduled installations. Specify the amount of time for Automatic Updates to wait before prompting again with a schedule restart; the default is 10 minutes. Additionally, administrators can delay restart for scheduled installations or specify that to complete a scheduled installation. Automatic Updates will wait for the computer to be restarted by any user who is logged on, instead of causing the computer to restart automatically.
  
##### Auto-restart and deadline for auto-restart 

There are a variety of policies that enable control over the restart experience of end users. When these policies are not configured, the user's active hours will be in effect. This enables the IT admin to turn off auto-restart for updates during active hours, set the maximum active hours range for auto-restarts, always automatically restart at the schedule time instead of notifying for two or more days prior, specify deadline before the device tries to auto-restart outside of active hours (this deadline can be set to varying days for feature and quality updates with a default at 7 days), and configure auto-restart reminder notifications or turn them off completely. 
 
##### Engaged restart and deadline for engaged restart 

The engaged restart policy allows the administrator to control the timing before transitioning from an auto-restart scheduled outside of active hours to engaged restart, which requires the user to schedule the restart. You can schedule the transition (the time before transitioning from auto to engaged), the snooze (how many days the user can snooze a restart reminder), and deadline (the deadline before a pending restart will automatically be executed outside of active hours).
  



## Monitor Windows Updates by using Update Compliance

Update Compliance provides a holistic view of operating system update compliance, update deployment progress, and failure troubleshooting for Windows 10 devices. This  service uses diagnostic data including installation progress, Windows Update configuration, and other information to provide such insights, at no extra cost and without additional infrastructure requirements. Whether used with Windows Update for Business or other management tools, you can be assured that your devices are properly updated.

![Update Compliance Dashboard](images/waas-wufb-update-compliance.png)

For more information about Update Compliance, see [Monitor Windows Updates using Update Compliance](update-compliance-monitor.md).


## Steps to manage updates for Windows 10

| | |
| --- | --- |
| ![done](images/checklistdone.png) | [Learn about updates and servicing channels](waas-overview.md) |
| ![done](images/checklistdone.png) | [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md) |
| ![done](images/checklistdone.png) | [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md) |
| ![done](images/checklistdone.png) | [Assign devices to servicing channels for Windows 10 updates](waas-servicing-channels-windows-10-updates.md) |
| ![done](images/checklistdone.png) | [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md) |
| ![done](images/checklistdone.png) | Deploy updates using Windows Update for Business (this topic) </br>or [Deploy Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)</br>or [Deploy Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md) |

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
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](waas-wufb-intune.md)
- [Deploy Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)
- [Deploy Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md)
- [Manage device restarts after updates](waas-restart.md)



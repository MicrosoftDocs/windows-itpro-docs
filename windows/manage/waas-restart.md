---
title: Manage device restarts after updates (Windows 10)
description: tbd
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
localizationpriority: high
---

# Manage device restarts after updates


**Applies to**

- Windows 10
- Windows 10 Mobile 

You can use Group Policy settings or mobile device management (MDM) to configure when devices running Windows 10 will restart after an update is installed. You can schedule update installation and set policies for restart, you can configure active hours for when restarts will not occur, or you can do both.

## Schedule update installation

When you set the **Configure Automatic Updates** policy to **Auto download and schedule the install**, you also configure the day and time for installation or you specify that installation will occur during the automatic maintenance time (configured using **Computer Configuration\Administrative Templates\Windows Components\Maintenance Scheduler**).

When **Configure Automatic Updates** is enabled, you can enable one of the following additional policies to manage device restart:

- **Turn off auto-restart for updates during active hours** prevents automatic restart during active hours.
- **Always automatically restart at the scheduled time** lets you configure a timer to warn a signed-in user that a restart is going to occur.
- **Specify deadline before auto-restart for update installation** ...I dunno why/when to use this?
- **No auto-restart with logged on users for scheduled automatic updates installations** prevents automatic restart when a user is signed in.

## Configure active hours

You can configure active hours for devices without setting the **Configure Automatic Updates** policy. *Active hours* identify the period of time when you expect the device to be in use. Automatic restarts after an update will occur outside of the active hours. 

To configure active hours using Group Policy, go to **Computer Configuration\Administrative Templates\Windows Components\Windows Update** and open the **Turn off auto-restart for updates during active hours** policy setting. When the policy is enabled, you can set the start and end times for active hours.

![Use Group Policy to configure active hours](images/waas-active-hours-policy.png)

MDM uses the [Update/ActiveHoursStart and Update/ActiveHoursEnd](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx#Update_ActiveHoursEnd) settings in the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx) to configure active hours.

To configure active hours manually on a single device, go to **Settings** > **Update & security** > **Windows Update** and select **Change active hours**.

![Change active hours](images/waas-active-hours.png)

## Group Policy settings for restart

In the Group Policy editor, you will see a number of policy settings that pertain to restart behavior in **Computer Configuration\Administrative Templates\Windows Components\Windows Update**. The following table shows which policies apply to Windows 10.

| Policy | Applies to Windows 10 | Notes |
| --- | --- | --- |
| Turn off auto-restart for updates during active hours | ![yes](images/checkmark.png) | Use this policy to configure active hours, during which the device will not be restarted. This policy has no effect if the **No auto-restart with logged on users for scheduled automatic updates installations** or **Always automatically restart at the scheduled time** policies are enabled.  |
| Always automatically restart at the scheduled time | ![yes](images/checkmark.png) | Use this policy to configure a restart timer (between 15 and 180 minutes) that will start immediately after Windows Update installs important updates. This policy has no effect if the **No auto-restart with logged on users for scheduled automatic updates installations** policy is enabled. |
| Specify deadline before auto-restart for update installation | ![yes](images/checkmark.png)  | Use this policy to specify how many days (between 2 and 14) an automatic restart can be delayed. This policy has no effect if the **No auto-restart with logged on users for scheduled automatic updates installations** or **Always automatically restart at the scheduled time** policies are enabled.  |
| No auto-restart with logged on users for scheduled automatic updates installations | ![yes](images/checkmark.png) | Use this policy to prevent automatic restart when a user is logged on. This policy applies only when the **Configure Automatic Updates** policy is configured to perform scheduled installations of updates, however this policy does not apply for **mandatory** updates.  |
| Re-prompt for restart with scheduled installations | ![no](images/crossmark.png) |   |
| Delay Restart for scheduled installations | ![no](images/crossmark.png) |   |
| Reschedule Automatic Updates scheduled installations | ![no](images/crossmark.png) |   |

>[!NOTE]
>If you set conflicting restart policies, the actual restart behavior may not be what you expected. 





## Related topics

- [Update Windows 10 in the enterprise](waas-update-windows-10.md)
- [Overview of Windows as a service](waas-overview.md)
- [Manage updates for Windows 10 Mobile Enterprise](waas-mobile-updates.md) 
- [Configure Delivery Optimization for Windows 10 updates](waas-delivery-optimization.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md)
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](waas-wufb-intune.md)









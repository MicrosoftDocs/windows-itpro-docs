---
title: What's in Set up School PCs provisioning package
description: Learn about the settings that are configured in the provisioning package created with the Set up School PCs app.
ms.date: 04/10/2024
ms.topic: reference
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# What's in my provisioning package?

The Set up School PCs app builds a specialized provisioning package with school-optimized settings.

A key feature of the provisioning package is SharedPC mode. To learn about the technical framework of SharedPC mode, including the description of each setting, see the [Manage multi-user and guest Windows devices with Shared PC](/windows/configuration/shared-pc-technical) article.

## Shared PC Mode policies

The following table outlines the policies applied to devices in SharedPC mode. If you select to optimize a device for use by a single student, you find differences in the policies applied:

- Disk level deletion
- Inactive threshold
- Restrict local storage

In the table, *True* means that the setting is enabled, allowed, or applied. Use the **Description** column to help you understand the context for each setting.

For a more detailed look at the policies, see the Windows article [Set up shared or guest PC](/windows/configuration/set-up-shared-or-guest-pc#policies-set-by-shared-pc-mode).

| Policy name | Default value | Description |
|--|--|--|
| Enable Shared PC mode | True | Configures the PCs so they're in shared PC mode. |
| Set education policies | True | School-optimized settings are applied to the PCs so that they're appropriate for an educational environment.|
| Account Model | Only guest, Domain-joined only, or Domain-joined and guest | Controls how users can sign in on the PC. Configurable from the Set up School PCs app. Choosing domain-joined enables any user in the domain to sign in. Specifying the guest option adds the Guest option to the sign-in screen and enable anonymous guest access to the PC. |
| Deletion policy | Delete at disk space threshold and inactive threshold | Delete at disk space threshold starts deleting accounts when available disk space falls below the threshold you set for disk level deletion. It stops deleting accounts when the available disk space reaches the threshold you set for disk level caching. Accounts are deleted in order of oldest accessed to most recently accessed. Also deletes accounts if they haven't signed in within the number of days specified by inactive threshold policy. |
| Disk level caching | 50% | Sets 50% of total disk space to be used as the disk space threshold for account caching. |
| Disk level deletion | For shared device setup, 25%; for single device-student setup, 0%. | When devices are optimized for shared use, the policy sets 25% of total disk space as the disk space threshold for account caching. When devices are optimized for use by a single student, the policy sets the value to 0% and doesn't delete accounts. |
| Enable account manager | True | Enables automatic account management. |
| Inactive threshold | For shared device setup, 30 days; for single device-student setup, 180 days. | After the threshold, if an account hasn't signed in, its user profile is deleted. |
| Kiosk Mode AMUID | `Microsoft.Windows.SecureAssessmentBrowser_cw5n1h2txyewy!App` | Configures the kiosk account on student devices to only run the Take a Test secure assessment browser. |
| Kiosk Mode User Tile Display Text | Take a Test | Displays "Take a Test" as the name of the kiosk account on student devices. |
| Restrict local storage | For shared device setup, True; for single device-student setup, False. | When devices are optimized for shared use across multiple PCs, this policy forces students to save to the cloud to prevent data loss. When your devices are optimized for use by a single student, this policy doesn't prevent students from saving on the PCs local hard drive. |
| Maintenance start time | 0 - midnight | The maintenance start time when automatic maintenance tasks, such as Windows Update, run on student devices. |
| Max page file size in MB | 1024 | Sets the maximum size of the paging file to 1,024 MB. Applies only to systems with less than 32-GB storage and at least 3 GB of RAM. |
| Set power policies | True | Prevents users from changing power settings and turns off hibernate. Also overrides all power state transitions to sleep, such as lid close. |
| Sign in on resume | True | Requires the device user to sign in with a password when the PC wakes from sleep. |
| Sleep timeout | 3,600 seconds | Specifies the maximum idle time before the PC should sleep. If you don't set sleep timeout, the default time, 3,600 seconds (1 hour), is applied. |

## MDM and local group policies

This section lists only the MDM and local group policies that are configured uniquely for the Set up School PCs app.

For a more detailed look of each policy listed, see [Policy CSP](/windows/client-management/mdm/policy-configuration-service-provider) in the Windows IT Pro Center documentation.

| Policy name | Default value | Description |
|--|--|--|
| Authority | User-defined | Authenticates the admin user. Value is set automatically when signed in to Microsoft Entra ID. |
| BPRT | User-defined | Value is set automatically when signed in to Microsoft Entra ID. Allows you to create the provisioning package. |
| WLAN Setting | XML is generated from the Wi-Fi profile in the Set up School PCs app. | Configures settings for wireless connectivity. |
| Hide OOBE for desktop | True | Hides the interactive OOBE flow for Windows 10. |
| Download Mode | 1 - HTTP blended with peering behind the same NAT | Specifies the download method that Delivery Optimization can use in downloads of Windows Updates, Apps, and App updates |
| Select when Preview Builds and Feature Updates are received | 32 - Semi-annual Channel. Device gets feature updates from Semi-annual Channel | Specifies how frequently devices receive preview builds and feature updates. |
| Allow auto update | 4 - Autoinstalls and restarts without device-user control | When an auto update is available, it autoinstalls and restarts the device without any input or action from the device user. |
| Configure automatic updates | 3 - Set to install at 3am | Scheduled time to install updates. |
| Update power policy for cart restarts | 1 - Configured | Skips all restart checks to ensure that the reboot will happen at the scheduled install time. |
| Select when Preview Builds and Feature Updates are received | 365 days | Defers Feature Updates for the specified number of days. When not specified, defaults to 365 days. |
| Allow all trusted apps | Disabled | Prevents untrusted apps from being installed to device |
| Allow developer unlock | Disabled | Students can't unlock the PC and use it in developer mode |
| Allow Cortana | Disabled | Cortana isn't allowed on the device. |
| Allow manual MDM unenrollment | Disabled | Students can't remove the mobile device manager from their device. |
| Settings page visibility | Enabled | Specific pages in the System Settings app aren't visible or accessible to students. |
| Allow add provisioning package | Disabled | Students can't add and upload new provisioning packages to their device. |
| Allow remove provisioning package | Disabled | Students can't remove packages that you've uploaded to their device, including the Set up School PCs app |
| Start Layout | Enabled | Lets you specify the Start layout for users and prevents them from changing the configuration. |
| Import Microsoft Edge Assets | Enabled | Import Microsoft Edge assets, such as PNG and JPG files, for secondary tiles on the Start layout. Tiles will appear as weblinks and will be tied to the relevant image asset files. |
| Allow pinned folder downloads | 1 - The shortcut is visible and disables the setting in the Settings app | Makes the Downloads shortcut on the Start menu visible to students. |
| Allow pinned folder File Explorer | 1 - The shortcut is visible and disables the setting in the Settings app | Makes the File Explorer shortcut on the Start menu visible to students. |
| Personalization | Deploy lock screen image | Set to the image you picked when you customized the lock screen during device setup. If you didn't customize the image, the computer will show the default. |
| Personalization | Lock screen image URL | Image filename |
| Update | Active hours end | 5 PM |
| Update | Active hours start | 7 AM |
| Updates Windows | Nightly | Sets Windows to update on a nightly basis. |

## Apps uninstalled from Windows devices

Set up School PCs app uses the Universal app uninstall policy. The policy identifies default apps that aren't relevant to the classroom experience, and uninstalls them from each device. The apps uninstalled from Windows devices are:

- Mixed Reality Viewer
- Weather
- Desktop App Installer
- Tips
- Messaging
- My Office
- Microsoft Solitaire Collection
- Mobile Plans
- Feedback Hub
- Xbox
- Mail/Calendar
- Skype

## Apps installed on Windows devices

Set up School PCs uses the Universal app install policy to install school-relevant apps on  all Windows 10 devices. The following apps are installed:

- OneDrive
- OneNote
- Sway

## Provisioning time estimates

The time it takes to install a package on a device depends on the:

- Strength of network connection
- Number of policies and apps within the package
- Other configurations made to the device

Review the table below to estimate your expected provisioning time. A package that only applies Set Up School PC's default configurations provisions the fastest. A package that removes preinstalled apps, through CleanPC, will take longer to provision.

| Configurations | Connection type | Estimated provisioning time |
|--|--|--|
| Default settings only | Wi-Fi | 3 to 5 minutes |
| Default settings + apps | Wi-Fi | 10 to 15 minutes |
| Default settings + remove preinstalled apps (CleanPC) | Wi-Fi | 60 minutes |
| Default settings + other settings (Not CleanPC) | Wi-Fi | 5 minutes |

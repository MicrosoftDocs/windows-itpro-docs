---
title: Assigned Access recommendations
description: Learn about the recommended kiosk and restricted user experience configuration options.
ms.topic: best-practice
ms.date: 03/11/2024
---

# Assigned Access recommendations

This article contains recommendations for devices configured with Assigned Access and Shell Launcher. Most of the recommendations include both group policy (GPO) and configuration service provider (CSP) settings to help you configure your kiosk devices.

## Kiosk user account

For kiosks devices located in public-facing environments, configure as a kiosk account a user account with the least privileges, such as a local, standard user account. Using an Active Directory user or Microsoft Entra user might allow an attacker to gain access to domain resources that are accessible to any domain accounts. When using domain accounts with assigned access, proceed with caution. Consider the domain resources potentially exposed by using a domain account.

### Automatic sign-in

Consider enabling *automatic sign-in* for your kiosk device. When the device restarts, from an update or power outage, you can configure the device to sign in with the Assigned Access account automatically. Ensure that policy settings applied to the device don't prevent automatic sign in from working as expected. For example, the policy settings [PreferredAadTenantDomainName](/windows/client-management/mdm/policy-csp-authentication#preferredaadtenantdomainname) prevents automatic sign-in from working.

You can configure the Assigned Access and Shell Launcher XML files with an account to sign-in automatically. For more information, review the articles:

- [Create an Assigned Access configuration XML file](configuration-file.md)
- [Create a Shell Launcher configuration file](shell-launcher/configuration-file.md)

Alternatively, you can edit the Registry to have an account sign in automatically:

| Path | Name | Type | Value |
|--|--|--|--|
| `HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon` | `AutoAdminLogon` | REG_DWORD | 1 |
| `HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon` | `DefaultUserName` | String | Set value as the account that you want signed in. |
| `HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon` | `DefaultPassword` | String | Set value as the password for the account. |
| `HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon` | `DefaultDomainName` | String | Set value for domain, only for domain accounts. For local accounts, don't add this key. |

Once automatic sign-in is configured, reboot the device. The account will sign in automatically.

> [!NOTE]
> If you are using [Custom Logon](/windows-hardware/customize/enterprise/custom-logon) with `HideAutoLogonUI` enabled, you might experience a black screen when the user account password expires. Consider [setting the password to never expire](/windows-hardware/customize/enterprise/troubleshooting-custom-logon#the-device-displays-a-black-screen-when-a-password-expiration-screen-is-displayed).

## Windows Update

Configure your kiosk devices so that they're always up to date, without disrupting the user experience. Here are some policy settings to consider, to configure Windows Update for your kiosk devices:

| Type | Path | Name/Description |
|--|--|--|
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/Update/`[ActiveHoursEnd](/windows/client-management/mdm/policy-csp-update#activehoursend) | Integer value that represents the end of active hours. For example, `22` represents 10PM |
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/Update/`[ActiveHoursStart](/windows/client-management/mdm/policy-csp-update#activehoursstart) | Integer value that represents the start of active hours. For example, `7` represents 7AM |
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/Update/`[AllowAutoUpdate](/windows/client-management/mdm/policy-csp-update#allowautoupdate) | Integer value. Set to `3` - Auto download and schedule the install |
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/Update/`[ScheduledInstallTime](/windows/client-management/mdm/policy-csp-update#scheduledinstalltime) | Integer value. Specify the time for the device to install updates. For example, `23` represents 11PM |
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/Update/`[UpdateNotificationLevel](/windows/client-management/mdm/policy-csp-update#update-updatenotificationlevel) | Integer value. Set to `2`: turn off all notifications, including restart warnings |
| **GPO** | Computer Configuration\Administrative Templates\Windows Components\Windows Update\Manage end user experience | Display options for update notifications > Set the value to **2 - Turn off all notifications, including restart warnings** |
| **GPO** | Computer Configuration\Administrative Templates\Windows Components\Windows Update\Manage end user experience\Configure Automatic Updates | **4 - Auto download and schedule the install** > specify an install time that is outside the active hours |
| **GPO** | Computer Configuration\Administrative Templates\Windows Components\Windows Update\Manage end user experience\Turn off autorestart for updates during active hours | Configure the start and end active hours, during which the kiosk device can't restart due to Windows Update |

## Power settings

You might want to prevent the kiosk device from going to sleep, or prevent users to shut down or restart the kiosk. Here are some options to consider:

| Type | Path | Name/Description |
|--|--|--|
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/ADMX_StartMenu/`[HidePowerOptions](/windows/client-management/mdm/policy-csp-admx-startmenu#hidepoweroptions) | String. Set to `<Enabled/>` |
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/`<br>[Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn](/windows/client-management/mdm/policy-csp-localpoliciessecurityoptions#shutdown_allowsystemtobeshutdownwithouthavingtologon) | Integer value. Set to `0` |
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/Power/`[DisplayOffTimeoutPluggedIn](/windows/client-management/mdm/policy-csp-power#displayofftimeoutpluggedin) | String. Set to `<Enabled/><Data ID="EnterVideoACPowerDownTimeOut" value="0"/>` |
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/Power/`[SelectPowerButtonActionPluggedIn](/windows/client-management/mdm/policy-csp-power#selectpowerbuttonactionpluggedin) | Integer. Set to `0` |
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/Power/`[SelectSleepButtonActionPluggedIn](/windows/client-management/mdm/policy-csp-power#SelectSleepButtonActionPluggedIn) | Integer. Set to `0` |
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/Power/`[StandbyTimeoutPluggedIn](/windows/client-management/mdm/policy-csp-power#standbytimeoutpluggedin) | String. Set to `<Enabled/><Data ID="EnterACStandbyTimeOut" value="0"/>` |
| **GPO** | Computer Configuration\Administrative Templates\Start Menu and Taskbar\Remove and prevent access to the Shut Down, Restart, Sleep, and Hibernate commands | **Enable** |
| **GPO** | Computer Configuration\Administrative Templates\System\Power Management\Button Settings\Select the Power button action | Select the action: **Take no action** |
| **GPO** | Computer Configuration\Administrative Templates\System\Power Management\Button Settings\Select the Sleep button action | Select the action: **Take no action** |
| **GPO** | Computer Configuration\Administrative Templates\System\Power Management\Specify the system sleep timeout | Set the value to **0** seconds. |
| **GPO** | Computer Configuration\Administrative Templates\System\Power Management\Video and Display Settings\Turn off the display | Set the value to **0** seconds. |
| **GPO** | Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options\Shutdown: Allow system to be shut down without having to log on | **Disabled** |
| **GPO** | Computer Configuration\Windows Settings\Security Settings\Local Policies\User Rights Assignment\Shut down the system | Remove the users or groups from this policy. To prevent this policy from affecting a member of the Administrators group, be sure to keep the Administrators group. |

> [!NOTE]
> You can also disable the power button from the security options screen using a feature called *Custom Logon*. For more information on removing the power button or disabling the physical power button, see [Custom Logon][WHW-1].

## Keyboard shortcuts

The following keyboard shortcuts aren't blocked for any user account that is configured with a restricted user experience:

- <kbd>Alt</kbd> + <kbd>F4</kbd>
- <kbd>Alt</kbd> + <kbd>Tab</kbd>
- <kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>Tab</kbd>
- <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>Delete</kbd>

You can use [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter) to block the key combinations. Keyboard Filter settings apply to other standard accounts.

### Accessibility shortcuts

Assigned access doesn't change accessibility settings. Use *Keyboard Filter* to block the following key combinations that open accessibility features:

  | Key combination | Blocked behavior |
  | --- | --- |
  | <kbd>Left Alt</kbd> + <kbd>Left Shift</kbd> + <kbd>Print Screen</kbd> | Open High Contrast dialog box |
  | <kbd>Left Alt</kbd> + <kbd>Left Shift</kbd> + <kbd>Num Lock</kbd> | Open Mouse Keys dialog box |
  | <kbd>WIN</kbd> + <kbd>U</kbd> | Open the Settings app accessibility panel |

> [!NOTE]
> If Keyboard Filter is turned ON, then some key combinations are blocked automatically without you having to explicitly block them. For more information, see [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter).

You can also disable the accessibility features and other options on the lock screen with [Custom Logon][WHW-1]. For example, to remove the Accessibility option, use the following registry key:

| Path | Name | Type | Value |
|--|--|--|--|
| `HKLM\Software\Microsoft\Windows Embedded\EmbeddedLogon\BrandingNeutral` | `BrandingNeutral` | REG_DWORD | 8 |

### Microsoft Edge shortcuts

To disable certain [Microsoft Edge default shortcuts](/deployedge/edge-learnmore-configurable-edge-commands), you can use the [ConfigureKeyboardShortcuts](/deployedge/microsoft-edge-policies#configurekeyboardshortcuts) policy.

## Choose an app for a kiosk experience

To create a kiosk experience with Assigned Access, you can choose UWP apps or Microsoft Edge. However, some applications might not provide a good user experience when used as a kiosk.

The following guidelines help you choose an appropriate Windows app for a kiosk experience:

- Windows apps must be provisioned or installed for the Assigned Access account before they can be selected as the Assigned Access app. [Learn how to provision and install apps](/windows/client-management/mdm/enterprise-app-management#install_your_apps)
- UWP app updates can sometimes change the Application User Model ID (AUMID) of the app. In such scenario, you must update the Assigned Access settings to execute the updated app, because Assigned Access uses the AUMID to determine the app to launch
- The app must be able to run above the lock screen. If the app can't run above the lock screen, it can't be used as a kiosk app
- Some apps can launch other apps. Assigned Access in kiosk mode prevents Windows apps from launching other apps. Avoid selecting Windows apps that are designed to launch other apps as part of their core functionality
- Microsoft Edge includes support for kiosk mode. To learn more, see [Microsoft Edge kiosk mode](/microsoft-edge/deploy/microsoft-edge-kiosk-mode-deploy)
- Don't select Windows apps that might expose information you don't want to show in your kiosk, since kiosk usually means anonymous access and locates in a public setting. For example, an app that has a file picker allows the user to gain access to files and folders on the user's system, avoid selecting these types of apps if they provide unnecessary data access
- Some apps might require more configurations before they can be used appropriately in Assigned Access. For example, Microsoft OneNote requires you to set up a Microsoft account for the Assigned Access user account before OneNote opens
- The kiosk profile is designed for public-facing kiosk devices. Use a local, nonadministrator account. If the device is connected to your organization network, using a domain or Microsoft Entra account could compromise confidential information

When planning to deploy a kiosk or a restricted user experience, consider the following recommendations:

- Evaluate all applications that users should use. If applications require user authentication, don't use a local or generic user account. Rather, target the group of users within the Assigned Access configuration file
- A multi-app kiosk is appropriate for devices that are shared by multiple people. When you configure a multi-app kiosk, certain policy settings that affect all nonadministrator users on the device. For a list of these policies, see [Assigned Access policy settings](policy-settings.md)

### Develop your kiosk app

Assigned Access uses the *Lock framework*. When an Assigned Access user signs in, the selected kiosk app is launched above the lock screen. The kiosk app is running as an *above lock* screen app. To learn more, see [best practices guidance for developing a kiosk app for assigned access](/windows-hardware/drivers/partnerapps/create-a-kiosk-app-for-assigned-access).

## Stop errors and recovery options

When a stop error occurs, Windows displays a blue screen with a stop error code. You can replace the standard screen with a blank screen for OS errors. For more information, see [Configure system failure and recovery options](/troubleshoot/windows-client/performance/configure-system-failure-and-recovery-options).

## Lock screen notifications

Consider removing notifications from the lock screen to prevent users from seeing notifications when the device is locked. Here are some options to consider:

| Type | Path | Name/Description |
|--|--|--|
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/AboveLock/`[AllowToasts](/windows/client-management/mdm/policy-csp-abovelock#abovelock-allowtoasts)| Integer. Set to `0` |
| **GPO** | Computer Configuration\Administrative Templates\System\Logon\Turn off app notifications on the lock screen | **Enabled**|

## Troubleshooting and logs

When testing Assigned Access, it can be useful to enable logging to help you troubleshoot issues. Logs can help you identify configuration and runtime issues. You can enable the following log: **Applications and Services Logs** > **Microsoft** > **Windows** > **AssignedAccess** > **Operational**.

The following registry keys contain the Assigned Access configurations:

- `HKLM\Software\Microsoft\Windows\AssignedAccessConfiguration`
- `HKLM\Software\Microsoft\Windows\AssignedAccessCsp`

The following registry key contains the configuration for each user with an Assigned Access policy:

- `HKCU\SOFTWARE\Microsoft\Windows\AssignedAccessConfiguration`

For more information about troubleshooting kiosk issues, see [Troubleshoot kiosk mode issues](/troubleshoot/windows-client/shell-experience/kiosk-mode-issues-troubleshooting).

## Next steps

> [!div class="nextstepaction"]
> Learn how to create an XML file to configure Assigned Access:
>
> [Create an Assigned Access configuration file](configuration-file.md)

<!--links-->

[WHW-1]: /windows-hardware/customize/enterprise/custom-logon
[WHW-2]: /windows-hardware/customize/enterprise/unified-write-filter

---
title: Assigned Access recommendations
description: Learn about the recommended kiosk and restricted useer experience configuration options.
ms.topic: best-practice
ms.date: 3/7/2024
---

# Assigned Access recommendations

This article contains recommendations for devices configured with Assigned Access.

## Kiosk user account

For kiosks devices located in public-facing environments, the recommendation is to use a user account with the least privileges, such as a local, standard user account. Using an Active Directory domain or Microsoft Entra user might allow an attacker to gain access to domain resources that are accessible to any domain account. When using domain accounts with assigned access, proceed with caution. Consider the domain resources potentially exposed by using a domain account.

### Automatic sign-in

Consider enabling *automatic sign-in* for your kiosk device. When the device restarts, from an update or power outage, you can configure the device to sign in with the Assigned Access account automatically. Ensure that policy settings applied to the device don't prevent automatic sign in from working as expected.

> [!NOTE]
> The policy settings [PreferredAadTenantDomainName](/windows/client-management/mdm/policy-csp-authentication#preferredaadtenantdomainname), prevents automatic sign-in from working.

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

Configure your kiosk devices so that they are always up to date, without disrupting the user experience. Here are some policy settings to consider:

|Setting|Description|
|-|-|
|Display options for update notifications|- **CSP**: `./Device/Vendor/MSFT/Policy/Config/Update/`[UpdateNotificationLevel](/windows/client-management/mdm/policy-csp-update#update-updatenotificationlevel) <br>- **GPO**: **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Windows Update** > **Display options for update notifications**|
|Enable and schedule automatic updates| - **CSP**: `./Device/Vendor/MSFT/Policy/Config/Update/`[AllowAutoUpdate](/windows/client-management/mdm/policy-csp-update#update-update-allowautoupdate) <br> Select **3 - Auto install and restart at a specified time** <br> - **GPO**: **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Windows Update** > **Configure Automatic Updates** |

## Shut down, restart, sleep, and hybernate commands

To prevent users to shut down, restart, sleep, or hybernate kiosk devices, here are some options:

|  | Path | Configuration|
|--|--|--|
| **CSP** | `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/`[RequireSecurityDevice](/windows/client-management/mdm/passportforwork-csp#devicetenantidpoliciesrequiresecuritydevice)<br><br>`./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/ExcludeSecurityDevices/`[TPM12](/windows/client-management/mdm/passportforwork-csp#devicetenantidpoliciesexcludesecuritydevicestpm12) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **System** > **Power Management** > **Button Settings**| Set **Select Power Button Action on Battery** and **Select Power Button Action on Plugged In** to **Take no action**.|
|**GPO**| **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** > **Remove and prevent access to the Shut Down, Restart, Sleep, and Hibernate commands** | This policy hides the buttons, but doesn't disable them.|
|**GPO**| **Computer Configuration** > **Windows Settings** > **Security Settings** > **Local Policies** > **User Rights Assignment** > **Shut down the system** | Remove the users or groups from this policy. To prevent this policy from affecting a member of the Administrators group, be sure to keep the Administrators group.|

## Keyboard shortcuts

The following keyboard shortcuts aren't blocked for any user account that is configured with a restricted user experience. You can use [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter) to block the key combinations:

- <kbd>Alt</kbd> + <kbd>F4</kbd>
- <kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>Tab</kbd>
- <kbd>Alt</kbd> + <kbd>Tab</kbd>

> [!NOTE]
> <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>Delete</kbd> is the default keyboard shortcut to break out of Assigned Access. You can also use *Keyboard Filter* to configure a different key combination to break out of Assigned Access by setting `BreakoutKeyScanCode` as described in [WEKF_Settings](/windows-hardware/customize/enterprise/wekf-settings).

> [!CAUTION]
> Keyboard Filter settings apply to other standard accounts.

### Accessibility shortcuts

Assigned access doesn't change accessibility settings. Use [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter) to block the following key combinations that open accessibility features:

  | Key combination | Blocked behavior |
  | --- | --- |
  | <kbd>Left Alt</kbd> + <kbd>Left Shift</kbd> + <kbd>Print Screen</kbd> | Open High Contrast dialog box |
  | <kbd>Left Alt</kbd> + <kbd>Left Shift</kbd> + <kbd>Num Lock</kbd> | Open Mouse Keys dialog box |
  | <kbd>WIN</kbd> + <kbd>U</kbd> | Open the Settings app accessibility panel |

- **Key sequences blocked by [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter)**: If Keyboard Filter is turned ON, then some key combinations are blocked automatically without you having to explicitly block them. For more information, see the [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter). Keyboard Filter is only available on the Enterprise and Education editions of Windows

- **Power button**: Customizations for the Power button complement assigned access, letting you implement features such as removing the power button from the Welcome screen. Removing the power button ensures the user can't turn off the device when it's in Assigned Access
  For more information on removing the power button or disabling the physical power button, see [Custom Logon][WHW-1]
- **Unified Write Filter (UWF)**: UWFsettings apply to all users, including users with assigned access
  For more information, see [Unified Write Filter][WHW-2]

For more information, see [Custom Logon][WHW-1].



## Choose an app for a kiosk experience

To create a kiosk experience with Assigned Access, you can choose UWP apps or Microsoft Edge. However, some applications might not provide a good user experience when used as a kiosk.

The following guidelines help you choose an appropriate Windows app for a kiosk experience:

- Windows apps must be provisioned or installed for the Assigned Access account before they can be selected as the Assigned Access app. [Learn how to provision and install apps](/windows/client-management/mdm/enterprise-app-management#install_your_apps)
- Updating a UWP app can sometimes change the Application User Model ID (AUMID) of the app. In such scenario, you must update the Assigned Access settings to execute the updated app, because Assigned Access uses the AUMID to determine the app to launch
- The app must be able to run above the lock screen. If the app can't run above the lock screen, it can't be used as a kiosk app
- Some apps can launch other apps. Assigned Access in kiosk mode prevents Windows apps from launching other apps. Avoid selecting Windows apps that are designed to launch other apps as part of their core functionality
- Microsoft Edge includes support for kiosk mode. To learn more, see [Microsoft Edge kiosk mode](/microsoft-edge/deploy/microsoft-edge-kiosk-mode-deploy)
- Avoid selecting Windows apps that might expose the information you don't want to show in your kiosk, since kiosk usually means anonymous access and locates in a public setting. For example, an app that has a file picker allows the user to gain access to files and folders on the user's system, avoid selecting these types of apps if they provide unnecessary data access
- Some apps might require more configurations before they can be used appropriately in Assigned Access. For example, Microsoft OneNote requires you to set up a Microsoft account for the Assigned Access user account before OneNote opens
- The kiosk profile is designed for public-facing kiosk devices. Use a local, non-administrator account. If the device is connected to your organization network, using a domain or Microsoft Entra account could compromise confidential information

When planning to deploy a kiosk or a restricted user experience, consider the following:

- Evaluate all applications that users should use. If applications require user authentication, don't use a local or generic
user account. Rather, target the group of users within the Assigned Access configuration file
- A multi-app kiosk is appropriate for devices that are shared by multiple people. When you configure a multi-app kiosk, certain policy settings that affects all non-administrator users on the device. For a list of these policies, see [Assigned Access policy settings](policy-settings.md)

### Develop your kiosk app

Assigned Access uses the *Lock framework*. When an Assigned Access user signs in, the selected kiosk app is launched above the lock screen. The kiosk app is running as an *above lock* screen app. To learn more, see [best practices guidance for developing a kiosk app for assigned access](/windows-hardware/drivers/partnerapps/create-a-kiosk-app-for-assigned-access).

## Troubleshoot

Event Viewer
Run "eventvwr.msc"
Navigate to "Applications and Services Logs"
There are 2 areas of your interests:
"Microsoft-Windows-AssignedAccess"
"Microsoft-Windows-AssignedAccessBroker"
Before any repro, it's recommended to enable "Operational" channel to get the most of logs.
TraceLogging

Registry Key
These locations contain the latest Assigned Access Configuration:

HKLM\SOFTWARE\Microsoft\Windows\AssignedAccessConfiguration
HKLM\SOFTWARE\Microsoft\Windows\AssignedAccessCsp
These locations contain the latest "evaluated" configuration for each sign-in user:

"HKCU\SOFTWARE\Microsoft\Windows\AssignedAccessConfiguration" (If it doesn't exist, it means no Assigned Access to be enforced for this user.)

## Assigned Access recommendations

Here are some options to help you to further customize the Assigned Access experience:

- Replace the *blue screen* with a blank screen for OS errors. For more information, see [Configure system failure and recovery options](/troubleshoot/windows-client/performance/configure-system-failure-and-recovery-options)
- Hide *Ease of access* feature on the sign-in screen
  - **Use an MDM provider**: In Intune, you can use the [Control Panel and Settings](/mem/intune/configuration/device-restrictions-windows-10#control-panel-and-settings) to manage this feature.
  - **Use the registry**: For more information, see [how to disable the Ease of Access button in the registry](/windows-hardware/customize/enterprise/complementary-features-to-custom-logon#welcome-screen)

## Power button

Remove the possibility to shut down kiosk devices by:

-

power button from the sign-in screen
  - **Use Group Policy**: `Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options\Shutdown: Allow system to be shut down without having to log on`. Select **Disabled**.
  - **Use MDM**: In Intune, you have the following option:
    - [Settings Catalog](/mem/intune/configuration/settings-catalog): This option lists all the settings you can configure, including the administrative templates used in on-premises Group Policy. Configure the following setting:
      - `Local Policies Security Options\Shutdown Allow System To Be Shut Down Without Having To Log On`: Set to **Disabled**


## Disable the camera

If the kiosk devices don't require the camera, use the following settings to disable it:



- **Use Group Policy**: `Computer Configuration\Administrative Templates\Windows Components\Camera: Allow use of camera`: Select **Disabled**
  - **Use an MDM provider**: This feature uses the [Policy CSP - Camera](/windows/client-management/mdm/policy-csp-camera). In Intune, you have the following options:
    - [General settings in a device configuration profile](/mem/intune/configuration/device-restrictions-windows-10#general): This option shows this setting, and more settings you can manage
    - [Settings Catalog](/mem/intune/configuration/settings-catalog): This option lists all the settings you can configure, including the administrative templates used in on-premises Group Policy. Configure the following setting:
      - `Camera\Allow camera`: Set to **Not allowed**
- Turn off app notifications on the lock screen

  - **Use Group policy**:
    - `Computer Configuration\Administrative Templates\System\Logon\Turn off app notifications on the lock screen`: Select **Enabled**.
    - `User Configuration\Administrative Templates\Start Menu and Taskbar\Notifications\Turn off toast notifications on the lock screen`: Select **Enabled**.
  - **Use an MDM provider**: This feature uses the [AboveLock/AllowToasts CSP](/windows/client-management/mdm/policy-csp-abovelock#abovelock-allowtoasts). In Intune, you have the following options:
    - [Locked screen experience device configuration profile](/mem/intune/configuration/device-restrictions-windows-10#locked-screen-experience): See this setting, and more settings you can manage.
    - [Administrative templates](/mem/intune/configuration/administrative-templates-windows): These templates are the administrative templates used in on-premises Group Policy. Configure the following settings:
      - `\Start Menu and Taskbar\Notifications\Turn off toast notifications on the lock screen`: Select **Enabled**.
      - `\System\Logon\Turn off app notifications on the lock screen`: Select **Enabled**.

## File Explorer customizations

Here are some options to help you to further customize the File Explorer experience:

|Setting|Description|
|-|-|
|Disable removable media|You can disable removable media, such as USB drives, from being used on the device. This can help prevent data theft or malware from being introduced to the device.<br>- CSP: `./Device/Vendor/MSFT/Policy/Config/`[ADMX_DeviceInstallation/DeviceInstall_AllowAdminInstall](/windows/client-management/mdm/policy-csp-admx-deviceinstallation#deviceinstall_allowadmininstall)<br>-**GPO**: **Computer Configuration** > **Administrative Templates** > **System** > **Device Installation** > **Device Installation Restrictions**<br><br>**Note**: to prevent this policy from affecting a member of the Administrators group, select **Allow administrators to override Device Installation Restriction policies** > **Enabled**|

## Troubleshooting and logs

When testing Assigned Access, it can be useful to enable logging to help you troubleshoot issues. Logs can help you identify configuration and runtime issues. You can enable the following log: **Applications and Services Logs** > **Microsoft** > **Windows** > **AssignedAccess** > **Operational**.

For more information about troubleshooting kiosk issues, see [Troubleshoot kiosk mode issues](/troubleshoot/windows-client/shell-experience/kiosk-mode-issues-troubleshooting).

## Next steps

> [!div class="nextstepaction"]
> Learn how to create an XML file to configure Assigned Access:
>
> [Create an Assigned Access configuration file](configuration-file.md)

<!--links-->

[WHW-1]: /windows-hardware/customize/enterprise/custom-logon
[WHW-2]: /windows-hardware/customize/enterprise/unified-write-filter
[WHW-3]: /windows-hardware/customize/enterprise/wedl-assignedaccess
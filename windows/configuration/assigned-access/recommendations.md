---
title: Assigned Access recommendations
description: Learn about the recommended kiosk and restricted useer experience configuration options.
ms.topic: article
ms.date: 2/29/2024
---

# Assigned Access recommendations

## Requirements

- [User account control (UAC)](/windows/security/identity-protection/user-account-control/user-account-control-overview) must be turned on to enable kiosk mode.
- Kiosk mode isn't supported over a remote desktop connection. Your kiosk users must sign in on the physical device that's set up as a kiosk.

Recommendations

- For kiosks in public-facing environments with auto sign-in enabled, you should use a user account with the least privileges, such as a local standard user account.

For a more secure kiosk experience, we recommend that you make the following configuration changes to the device before you configure it as a kiosk:

## Configure Windows updates

### Hide update notifications

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/Update/`[UpdateNotificationLevel](/windows/client-management/mdm/policy-csp-update#update-updatenotificationlevel) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Windows Update** > **Display options for update notifications**|

### Enable and schedule automatic updates

|  | Path | Value|
|--|--|--|
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/Update/`[AllowAutoUpdate](/windows/client-management/mdm/policy-csp-update#update-update-allowautoupdate) | Select **3 - Auto install and restart at a specified time**|
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Windows Update** > **Configure Automatic Updates** | Select **4 - Auto download and schedule the install**|



- Disable the hardware power button

  - **Use Group Policy**: Your options:

    - `Computer Configuration\Administrative Templates\System\Power Management\Button Settings`: Set `Select Power Button Action on Battery` and `Select Power Button Action on Plugged In` to **Take no action**.
    - `User Configuration\Administrative Templates\Start Menu and Taskbar\Remove and prevent access to the Shut Down, Restart, Sleep, and Hibernate commands`: This policy hides the buttons, but doesn't disable them.
    - `Computer Configuration\Windows Settings\Security Settings\Local Policies\User Rights Assignment\Shut down the system`: Remove the users or groups from this policy.

      To prevent this policy from affecting a member of the Administrators group, be sure to keep the Administrators group.

  - **Use an MDM provider**: In Intune, you have some options:

    - [Settings Catalog](/mem/intune/configuration/settings-catalog): This option lists all the settings you can configure, including the administrative templates used in on-premises Group Policy. Configure the following settings:

      - `Power\Select Power Button Action on Battery`: Set to **Take no action**.
      - `Power\Select Power Button Action on Plugged In`: Set to **Take no action**.
      - `Start\Hide Power Button`: Set to **Enabled**. This policy hides the button, but doesn't disable it.

    - [Administrative templates](/mem/intune/configuration/administrative-templates-windows): These templates are the administrative templates used in on-premises Group Policy. Configure the following setting:

      - `\Start menu and Taskbar\Remove and prevent access to the Shut Down, Restart, Sleep, and Hibernate commands`: This policy hides the buttons, but doesn't disable them.

      When looking at settings, check the supported OS for each setting to make sure it applies.

    - [Start settings in a device configuration profile](/mem/intune/configuration/device-restrictions-windows-10#start): This option shows this setting, and all the Start menu settings you can manage.




## Automatic logon

You may also want to set up **automatic logon** for your kiosk device. When your kiosk device restarts, from an update or power outage, you can sign in the Assigned Access account manually. Or, you can configure the device to sign in to the Assigned Access account automatically. Make sure that Group Policy settings applied to the device don't prevent automatic sign in.

> [!NOTE]
> If you are using a Windows client device restriction CSP to set "Preferred Microsoft Entra tenant domain", this will break the "User logon type" auto-login feature of the Kiosk profile.

How to edit the registry to have an account sign in automatically:

1. Open Registry Editor (regedit.exe).

   > [!NOTE]
   > If you are not familiar with Registry Editor, [learn how to modify the Windows registry](/troubleshoot/windows-server/performance/windows-registry-advanced-users).

1. Go to

   **HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon**

1. Set the values for the following keys.

   - *AutoAdminLogon*: set value as **1**.
   - *DefaultUserName*: set value as the account that you want signed in.
   - *DefaultPassword*: set value as the password for the account.

     > [!NOTE]
     > If *DefaultUserName* and *DefaultPassword* aren't there, add them as **New** > **String Value**.

   - *DefaultDomainName*: set value for domain, only for domain accounts. For local accounts, don't add this key.

1. Close Registry Editor. The next time the computer restarts, the account will sign in automatically.

> [!TIP]
> You can also configure automatic sign-in [using the Autologon tool from Sysinternals](/sysinternals/downloads/autologon).

> [!NOTE]
> If you are also using [Custom Logon](/windows-hardware/customize/enterprise/custom-logon) with **HideAutoLogonUI** enabled, you might experience a black screen after a password expires. We recommend that you consider [setting the password to never expire](/windows-hardware/customize/enterprise/troubleshooting-custom-logon#the-device-displays-a-black-screen-when-a-password-expiration-screen-is-displayed).



> [!WARNING]
> Assigned access can be configured via WMI or CSP to run its applications under a domain user or service account, rather than a local account. However, use of domain user or service accounts introduces risks that an attacker subverting the Assigned Access application might gain access to sensitive domain resources that have been inadvertently left accessible to any domain account. We recommend that customers proceed with caution when using domain accounts with assigned access, and consider the domain resources potentially exposed by the decision to do so.

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

### Accessibility

Assigned access doesn't change accessibility settings. We recommend that you use [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter) to block the following key combinations that open accessibility features:

  | Key combination | Blocked behavior |
  | --- | --- |
  | <kbd>Left Alt</kbd> + <kbd>Left Shift</kbd> + <kbd>Print Screen</kbd> | Open High Contrast dialog box |
  | <kbd>Left Alt</kbd> + <kbd>Left Shift</kbd> + <kbd>Num Lock</kbd> | Open Mouse Keys dialog box |
  | <kbd>WIN</kbd> + <kbd>U</kbd> | Open the Settings app accessibility panel |

## Develop your kiosk app

Assigned Access uses the *Lock framework*. When an Assigned Access user signs in, the selected kiosk app is launched above the lock screen. The kiosk app is running as an *above lock* screen app. To learn more, see [best practices guidance for developing a kiosk app for assigned access](/windows-hardware/drivers/partnerapps/create-a-kiosk-app-for-assigned-access).

## Test your Assigned Access experience

Thoroughly test the Assigned Access kiosk configuration, ensuring that your devices provide a good user experience.

> [!NOTE]
> The use of multiple monitors is supported for multi-app kiosk mode in Windows 11.

The Assigned Access feature is intended for dedicated devices, like kiosks. When the multi-app Assigned Access configuration is applied on the device, certain [policy settings](policy-settings.md) are enforced system-wide, impacting other users on the device. Deleting the kiosk configuration removes the Assigned Access lockdown profiles associated with the users, but it can't revert all the enforced policies (for example, the Start layout). To clear all the policy settings enforced by Assigned Access, you must reset Windows.

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

Apps that run in kiosk mode cannot use copy and paste.




The following keyboard shortcuts are't blocked for any user account with Assigned Access. You can use [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter) to block these key combinations:

| Keyboard shortcut | Action |
|--|--|
|<kbd>Alt</kbd> + <kbd>F4</kbd>||
|<kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>Tab</kbd>||
|<kbd>Alt</kbd> + <kbd>Tab</kbd>||

> [!NOTE]
> <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>Delete</kbd> is the default keyboard shortcut to break out of Assigned Access. You can use *Keyboard Filter* to configure a different key combination to break out of Assigned Access by setting *BreakoutKeyScanCode* as described in [WEKF_Settings](/windows-hardware/customize/enterprise/wekf-settings).

> [!CAUTION]
> Keyboard Filter settings apply to other standard accounts.

- **Key sequences blocked by [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter)**: If Keyboard Filter is turned ON, then some key combinations are blocked automatically without you having to explicitly block them. For more information, see the [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter). Keyboard Filter is only available on Windows client Enterprise or Education
- **Power button**: Customizations for the Power button complement assigned access, letting you implement features such as removing the power button from the Welcome screen. Removing the power button ensures the user can't turn off the device when it's in assigned access
  For more information on removing the power button or disabling the physical power button, see [Custom Logon][WHW-1]
- **Unified Write Filter (UWF)**: UWFsettings apply to all users, including users with assigned access
  For more information, see [Unified Write Filter][WHW-2]
- **WEDL_AssignedAccess class**: You can use this class to configure and manage basic lockdown features for assigned access. It's recommended to you use the Windows PowerShell cmdlets instead.
  If you need to use Assigned Access API, see [WEDL_AssignedAccess][WHW-3]
- **Welcome Screen**: Customizations for the Welcome screen let you personalize not only how the Welcome screen looks, but for how it functions. You can disable the power or language button, or remove all user interface elements. There are many options to make the Welcome screen your own

For more information, see [Custom Logon][WHW-1].

## Assigned Access recommendations

Here are some options to help you to further customize the Assigned Access experience:

- Replace the *blue screen* with a blank screen for OS errors. For more information, see [Configure system failure and recovery options](/troubleshoot/windows-client/performance/configure-system-failure-and-recovery-options)
- Hide *Ease of access* feature on the sign-in screen
  - **Use an MDM provider**: In Intune, you can use the [Control Panel and Settings](/mem/intune/configuration/device-restrictions-windows-10#control-panel-and-settings) to manage this feature.
  - **Use the registry**: For more information, see [how to disable the Ease of Access button in the registry](/windows-hardware/customize/enterprise/complementary-features-to-custom-logon#welcome-screen)
- Remove the power button from the sign-in screen
  - **Use Group Policy**: `Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options\Shutdown: Allow system to be shut down without having to log on`. Select **Disabled**.
  - **Use MDM**: In Intune, you have the following option:
    - [Settings Catalog](/mem/intune/configuration/settings-catalog): This option lists all the settings you can configure, including the administrative templates used in on-premises Group Policy. Configure the following setting:
      - `Local Policies Security Options\Shutdown Allow System To Be Shut Down Without Having To Log On`: Set to **Disabled**.
- Disable the camera
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

- Disable removable media
  - **Use Group policy**: `Computer Configuration\Administrative Templates\System\Device Installation\Device Installation Restrictions`. Review the available settings that apply to your situation.
    To prevent this policy from affecting a member of the Administrators group, select `Allow administrators to override Device Installation Restriction policies` > **Enabled**.
  - **Use an MDM provider**: In Intune, you have the following options:
    - [General settings in a device configuration profile](/mem/intune/configuration/device-restrictions-windows-10#general): See the **Removable storage** setting, and more settings you can manage.
    - [Administrative templates](/mem/intune/configuration/administrative-templates-windows): These templates are the administrative templates used in on-premises Group Policy. Configure the following settings:
      - `\System\Device Installation`: There are several policies you can manage, including restrictions in `\System\Device Installation\Device Installation Restrictions`.
        To prevent this policy from affecting a member of the Administrators group, select `Allow administrators to override Device Installation Restriction policies` > **Enabled**.
      When looking at settings, check the supported OS for each setting to make sure it applies.
    - [Settings Catalog](/mem/intune/configuration/settings-catalog): This option lists all the settings you can configure, including the administrative templates used in on-premises Group Policy. Configure the following settings:
      - `\Administrative Templates\System\Device Installation`: There are several policies you can manage, including restrictions in `\System\Device Installation\Device Installation Restrictions`.
        To prevent this policy from affecting a member of the Administrators group, select `Allow administrators to override Device Installation Restriction policies` > **Enabled**
- Enable logging: logs can help you [troubleshoot issues](/troubleshoot/windows-client/shell-experience/kiosk-mode-issues-troubleshooting) kiosk issues. Logs about configuration and runtime issues can be obtained by enabling the **Applications and Services Logs\Microsoft\Windows\AssignedAccess\Operational** channel, which is disabled by default.

## Next steps

> [!div class="nextstepaction"]
> Learn how to create an XML file to configure Assigned Access:
>
> [Create an Assigned Access configuration file](configuration-file.md)

<!--links-->

[WHW-1]: /windows-hardware/customize/enterprise/custom-logon
[WHW-2]: /windows-hardware/customize/enterprise/unified-write-filter
[WHW-3]: /windows-hardware/customize/enterprise/wedl-assignedaccess
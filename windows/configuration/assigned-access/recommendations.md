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

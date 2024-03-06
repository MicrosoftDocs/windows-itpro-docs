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

## Replace *blue screen* with blank screen for OS errors

  1. Open Registry Editor (regedit).
  1. Go to `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CrashControl`.
  1. Create a **New** > **DWORD (32-bit) Value**. Enter `DisplayDisabled`, and set its value to `1`.

### Hide *Ease of access* feature on the sign-in screen

  - **Use an MDM provider**: In Intune, you can use the [Control Panel and Settings](/mem/intune/configuration/device-restrictions-windows-10#control-panel-and-settings) to manage this feature.
  - **Use the registry**: For more information, see [how to disable the Ease of Access button in the registry](/windows-hardware/customize/enterprise/complementary-features-to-custom-logon#welcome-screen).

## Disable the hardware power button

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

## Remove the power button from the sign-in screen

  - **Use Group Policy**: `Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options\Shutdown: Allow system to be shut down without having to log on`. Select **Disabled**.

  - **Use MDM**: In Intune, you have the following option:

    - [Settings Catalog](/mem/intune/configuration/settings-catalog): This option lists all the settings you can configure, including the administrative templates used in on-premises Group Policy. Configure the following setting:

      - `Local Policies Security Options\Shutdown Allow System To Be Shut Down Without Having To Log On`: Set to **Disabled**.


## Disable the camera

  - **Use Group Policy**: `Computer Configuration\Administrative Templates\Windows Components\Camera: Allow use of camera`: Select **Disabled**.

  - **Use an MDM provider**: This feature uses the [Policy CSP - Camera](/windows/client-management/mdm/policy-csp-camera). In Intune, you have the following options:

    - [General settings in a device configuration profile](/mem/intune/configuration/device-restrictions-windows-10#general): This option shows this setting, and more settings you can manage.
    - [Settings Catalog](/mem/intune/configuration/settings-catalog): This option lists all the settings you can configure, including the administrative templates used in on-premises Group Policy. Configure the following setting:

      - `Camera\Allow camera`: Set to **Not allowed**.

## Turn off app notifications on the lock screen

  - **Use Group policy**:
    - `Computer Configuration\Administrative Templates\System\Logon\Turn off app notifications on the lock screen`: Select **Enabled**.
    - `User Configuration\Administrative Templates\Start Menu and Taskbar\Notifications\Turn off toast notifications on the lock screen`: Select **Enabled**.

  - **Use an MDM provider**: This feature uses the [AboveLock/AllowToasts CSP](/windows/client-management/mdm/policy-csp-abovelock#abovelock-allowtoasts). In Intune, you have the following options:

    - [Locked screen experience device configuration profile](/mem/intune/configuration/device-restrictions-windows-10#locked-screen-experience): See this setting, and more settings you can manage.

    - [Administrative templates](/mem/intune/configuration/administrative-templates-windows): These templates are the administrative templates used in on-premises Group Policy. Configure the following settings:

      - `\Start Menu and Taskbar\Notifications\Turn off toast notifications on the lock screen`: Select **Enabled**.
      - `\System\Logon\Turn off app notifications on the lock screen`: Select **Enabled**.

## Disable removable media

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
        To prevent this policy from affecting a member of the Administrators group, select `Allow administrators to override Device Installation Restriction policies` > **Enabled**.

## Enable logging

Logs can help you [troubleshoot issues](/troubleshoot/windows-client/shell-experience/kiosk-mode-issues-troubleshooting) kiosk issues. Logs about configuration and runtime issues can be obtained by enabling the **Applications and Services Logs\Microsoft\Windows\AssignedAccess\Operational** channel, which is disabled by default.

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
> Assigned access can be configured via WMI or CSP to run its applications under a domain user or service account, rather than a local account.  However, use of domain user or service accounts introduces risks that an attacker subverting the Assigned Access application might gain access to sensitive domain resources that have been inadvertently left accessible to any domain account. We recommend that customers proceed with caution when using domain accounts with assigned access, and consider the domain resources potentially exposed by the decision to do so.


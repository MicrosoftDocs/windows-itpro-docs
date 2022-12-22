---
title: Prepare a device for kiosk configuration on Windows 10/11 | Microsoft Docs
description: Learn how to prepare a device for kiosk configuration. Also, learn about the recommended kiosk configuration changes.
ms.reviewer: sybruckm
manager: aaroncz
ms.author: lizlong
ms.prod: windows-client
author: lizgt2000
ms.localizationpriority: medium
ms.topic: article
ms.technology: itpro-configure
ms.date: 12/31/2017
---

# Prepare a device for kiosk configuration


**Applies to**

- Windows 10 Pro, Enterprise, and Education
- Windows 11



## Before you begin

- [User account control (UAC)](/windows/security/identity-protection/user-account-control/user-account-control-overview) must be turned on to enable kiosk mode.
- Kiosk mode isn't supported over a remote desktop connection. Your kiosk users must sign in on the physical device that's set up as a kiosk.
- For kiosks in public-facing environments with auto sign-in enabled, you should use a user account with the least privileges, such as a local standard user account.

  Assigned access can be configured using Windows Management Instrumentation (WMI) or configuration service provider (CSP). Assigned access runs an application using a domain user or service account, not a local account. Using a domain user or service accounts has risks, and might allow an attacker to gain access to domain resources that are accessible to any domain account. When using domain accounts with assigned access, proceed with caution. Consider the domain resources potentially exposed by using a domain account.

- MDM providers, such as [Microsoft Intune](/mem/intune/fundamentals/what-is-intune), use the configuration service providers (CSP) exposed by the Windows OS to manage settings on devices. In this article, we mention these services. If you're not managing your devices using an MDM provider, the following resources may help you get started:

  - [Endpoint Management at Microsoft](/mem/endpoint-manager-getting-started)
  - [What is Microsoft Intune](/mem/intune/fundamentals/what-is-intune) and [Microsoft Intune planning guide](/mem/intune/fundamentals/intune-planning-guide)
  - [What is Configuration Manager?](/mem/configmgr/core/understand/introduction)

## Configuration recommendations

For a more secure kiosk experience, we recommend that you make the following configuration changes to the device before you configure it as a kiosk:

- **Hide update notifications**. Starting with Windows 10 version 1809, you can hide notifications from showing on the devices. To enable this feature, you have the following options:

  - **Use Group policy**: `Computer Configuration\Administrative Templates\Windows Components\Windows Update\Display options for update notifications`

  - **Use an MDM provider**: This feature uses the [Update/UpdateNotificationLevel CSP](/windows/client-management/mdm/policy-csp-update#update-updatenotificationlevel). In Intune, you can use the [Windows update settings](/mem/intune/protect/windows-update-settings) to manage this feature.

  - **Use the registry**:

    1. Open Registry Editor (regedit).
    2. Go to `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate`.
    3. Create a **New** > **DWORD (32-bit) Value**. Enter `SetUpdateNotificationLevel`, and set its value to `1`.
    4. Create a **New** > **DWORD (32-bit) Value**. Enter `UpdateNotificationLevel`. For value, you can enter:

        - `1`: Hides all notifications except restart warnings.
        - `2`: Hides all notifications, including restart warnings.

- **Enable and schedule automatic updates**. To enable this feature, you have the following options:

  - **Use Group policy**: `Computer Configuration\Administrative Templates\Windows Components\Windows Update\Configure Automatic Updates`. Select `4 - Auto download and schedule the install`.
  - **Use an MDM provider**: This feature uses the [Update/AllowAutoUpdate CSP](/windows/client-management/mdm/policy-csp-update#update-allowautoupdate). Select `3 - Auto install and restart at a specified time`. In Intune, you can use the [Windows update settings](/mem/intune/protect/windows-update-settings) to manage this feature.

  You can also schedule automatic updates, including **Schedule Install Day**, **Schedule Install Time**, and **Schedule Install Week**. Installations can take between 30 minutes and 2 hours, depending on the device. Schedule updates to occur when a block of 3-4 hours is available.

- **Enable automatic restart at the scheduled time**. To enable this feature, you have the following options:

  - **Use Group policy**: `Computer Configuration\Administrative Templates\Windows Components\Windows Update\Always automatically restart at the scheduled time`. Select `4 - Auto download and schedule the install`.

  - **Use an MDM provider**: This feature uses the [Update/ActiveHoursStart](/windows/client-management/mdm/policy-csp-update#update-activehoursstart) and [Update/ActiveHoursEnd](/windows/client-management/mdm/policy-csp-update#update-activehoursend) CSPs. In Intune, you can use the [Windows update settings](/mem/intune/protect/windows-update-settings) to manage this feature.

- **Replace "blue screen" with blank screen for OS errors**. To enable this feature, use the Registry Editor:

  1. Open Registry Editor (regedit).
  2. Go to `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CrashControl`.
  3. Create a **New** > **DWORD (32-bit) Value**. Enter `DisplayDisabled`, and set its value to `1`.

- **Put device in "Tablet mode"**. If you want users to use the touch screen, without using a keyboard or mouse, then turn on tablet mode using the Settings app. If users won't interact with the kiosk, such as for a digital sign, then don't turn on this setting.

  Applies to Windows 10 only. Currently, Tablet mode isn't supported on Windows 11.

  Your options:

  - Use the **Settings** app:
    1. Open the **Settings** app.
    2. Go to **System** > **Tablet mode**.
    3. Configure the settings you want.

  - Use the **Action Center**:
    1. On your device, swipe in from the left.
    2. Select **Tablet mode**.

- **Hide "Ease of access" feature on the sign-in screen**: To enable this feature, you have the following options:

  - **Use an MDM provider**: In Intune, you can use the [Control Panel and Settings](/mem/intune/configuration/device-restrictions-windows-10#control-panel-and-settings) to manage this feature.
  - **Use the registry**: For more information, see [how to disable the Ease of Access button in the registry](/windows-hardware/customize/enterprise/complementary-features-to-custom-logon#welcome-screen).

- **Disable the hardware power button**: To enable this feature, you have the following options:

  - **Use the Settings app**:
    1. Open the **Settings** app.
    2. Go to **System** > **Power & Sleep** > **Additional power settings** > **Choose what the power button does**.
    3. Select **Do nothing**.
    4. **Save changes**.

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

- **Remove the power button from the sign-in screen**. To enable this feature, you have the following options:

  - **Use Group Policy**: `Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options\Shutdown: Allow system to be shut down without having to log on`. Select **Disabled**.

  - **Use MDM**: In Intune, you have the following option:

    - [Settings Catalog](/mem/intune/configuration/settings-catalog): This option lists all the settings you can configure, including the administrative templates used in on-premises Group Policy. Configure the following setting:

      - `Local Policies Security Options\Shutdown Allow System To Be Shut Down Without Having To Log On`: Set to **Disabled**.

- **Disable the camera**: To enable this feature, you have the following options:

  - **Use the Settings app**: 
    1. Open the **Settings** app.
    2. Go to **Privacy** > **Camera**.
    3. Select **Allow apps use my camera** > **Off**.

  - **Use Group Policy**: `Computer Configuration\Administrative Templates\Windows Components\Camera: Allow use of camera`: Select **Disabled**.

  - **Use an MDM provider**: This feature uses the [Policy CSP - Camera](/windows/client-management/mdm/policy-csp-camera). In Intune, you have the following options:

    - [General settings in a device configuration profile](/mem/intune/configuration/device-restrictions-windows-10#general): This option shows this setting, and more settings you can manage.
    - [Settings Catalog](/mem/intune/configuration/settings-catalog): This option lists all the settings you can configure, including the administrative templates used in on-premises Group Policy. Configure the following setting:

      - `Camera\Allow camera`: Set to **Not allowed**.

- **Turn off app notifications on the lock screen**: To enable this feature, you have the following options:

  - **Use the Settings app**:

    1. Open the **Settings** app.
    2. Go to **System** > **Notifications & actions**.
    3. In **Show notifications on the lock screen**, select **Off**.

  - **Use Group policy**:
    - `Computer Configuration\Administrative Templates\System\Logon\Turn off app notifications on the lock screen`: Select **Enabled**.
    - `User Configuration\Administrative Templates\Start Menu and Taskbar\Notifications\Turn off toast notifications on the lock screen`: Select **Enabled**.

  - **Use an MDM provider**: This feature uses the [AboveLock/AllowToasts CSP](/windows/client-management/mdm/policy-csp-abovelock#abovelock-allowtoasts). In Intune, you have the following options:

    - [Locked screen experience device configuration profile](/mem/intune/configuration/device-restrictions-windows-10#locked-screen-experience): See this setting, and more settings you can manage.

    - [Administrative templates](/mem/intune/configuration/administrative-templates-windows): These templates are the administrative templates used in on-premises Group Policy. Configure the following settings:

      - `\Start Menu and Taskbar\Notifications\Turn off toast notifications on the lock screen`: Select **Enabled**.
      - `\System\Logon\Turn off app notifications on the lock screen`: Select **Enabled**.

      When looking at settings, check the supported OS for each setting to make sure it applies.

    - [Settings Catalog](/mem/intune/configuration/settings-catalog): This option lists all the settings you can configure, including the administrative templates used in on-premises Group Policy. Configure the following settings:

      - `\Start Menu and Taskbar\Notifications\Turn off toast notifications on the lock screen`: Select **Enabled**.
      - `\System\Logon\Turn off app notifications on the lock screen`: Select **Enabled**.

- **Disable removable media**:  To enable this feature, you have the following options:

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

:::image type="content" source="images/enable-assigned-access-log.png" alt-text="On Windows client, open Event Viewer, right-click Operational, select enable log to turn on logging to help troubleshoot.":::

## Automatic logon

You may also want to set up **automatic logon** for your kiosk device. When your kiosk device restarts, from an update or power outage, you can sign in the assigned access account manually. Or, you can configure the device to sign in to the assigned access account automatically. Make sure that Group Policy settings applied to the device don't prevent automatic sign in.

> [!NOTE]
> If you are using a Windows client device restriction CSP to set "Preferred Azure AD tenant domain", this will break the "User logon type" auto-login feature of the Kiosk profile.

> [!TIP]
> If you use the [kiosk wizard in Windows Configuration Designer](kiosk-single-app.md#wizard) or [XML in a provisioning package](lock-down-windows-10-to-specific-apps.md) to configure your kiosk, you can set an account to sign in automatically in the wizard or XML. 


**How to edit the registry to have an account sign in automatically**

1. Open Registry Editor (regedit.exe).

   > [!NOTE]
   > If you are not familiar with Registry Editor, [learn how to modify the Windows registry](/troubleshoot/windows-server/performance/windows-registry-advanced-users).
  
 
2. Go to

   **HKEY\_LOCAL\_MACHINE\SOFTWARE\\Microsoft\Windows NT\CurrentVersion\Winlogon**

3. Set the values for the following keys.

   - *AutoAdminLogon*: set value as **1**.

   - *DefaultUserName*: set value as the account that you want signed in.

   - *DefaultPassword*: set value as the password for the account.

     > [!NOTE]
     > If *DefaultUserName* and *DefaultPassword* aren't there, add them as **New** > **String Value**.

   - *DefaultDomainName*: set value for domain, only for domain accounts. For local accounts, don't add this key.

4. Close Registry Editor. The next time the computer restarts, the account will sign in automatically.

> [!TIP]
> You can also configure automatic sign-in [using the Autologon tool from Sysinternals](/sysinternals/downloads/autologon).

> [!NOTE]
> If you are also using [Custom Logon](/windows-hardware/customize/enterprise/custom-logon) with **HideAutoLogonUI** enabled, you might experience a black screen after a password expires. We recommend that you consider [setting the password to never expire](/windows-hardware/customize/enterprise/troubleshooting-custom-logon#the-device-displays-a-black-screen-when-a-password-expiration-screen-is-displayed).

## Interactions and interoperability

The following table describes some features that have interoperability issues we recommend that you consider when running assigned access.

- **Accessibility**: Assigned access doesn't change Ease of Access settings. We recommend that you use [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter) to block the following key combinations that bring up accessibility features:

  | Key combination | Blocked behavior |
  | --- | --- | 
  | Left Alt + Left Shift + Print Screen | Open High Contrast dialog box. |
  | Left Alt + Left Shift + Num Lock | Open Mouse Keys dialog box. |
  | Windows logo key + U | Open Ease of Access Center. | 

- **Assigned access Windows PowerShell cmdlets**: In addition to using the Windows UI, you can use the Windows PowerShell cmdlets to set or clear assigned access. For more information, see [Assigned access Windows PowerShell reference](/powershell/module/assignedaccess/)

- **Key sequences blocked by assigned access**: When in assigned access, some key combinations are blocked for assigned access users.

  Alt + F4, Alt + Shift + Tab, Alt + Tab aren't blocked by Assigned Access, it's recommended you use [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter) to block these key combinations.

  Ctrl + Alt + Delete is the key to break out of Assigned Access. If needed, you can use Keyboard Filter to configure a different key combination to break out of assigned access by setting BreakoutKeyScanCode as described in [WEKF_Settings](/windows-hardware/customize/enterprise/wekf-settings).

  | Key combination | Blocked behavior for assigned access users |
  | --- | --- | 
  | Alt + Esc | Cycle through items in the reverse order from which they were opened. |
  | Ctrl + Alt + Esc | Cycle through items in the reverse order from which they were opened. |
  | Ctrl + Esc | Open the Start screen. |
  | Ctrl + F4 | Close the window. |
  | Ctrl + Shift + Esc | Open Task Manager. |
  | Ctrl + Tab | Switch windows within the application currently open. |
  | LaunchApp1 | Open the app that is assigned to this key. |
  | LaunchApp2 | Open the app that is assigned to this key. On many Microsoft keyboards, the app is Calculator. |
  | LaunchMail | Open the default mail client. |
  | Windows logo key | Open the Start screen. |

  Keyboard Filter settings apply to other standard accounts.

- **Key sequences blocked by [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter)**: If Keyboard Filter is turned ON, then some key combinations are blocked automatically without you having to explicitly block them. For more information, see the [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter).

  [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter) is only available on Windows client Enterprise or Education.

- **Power button**: Customizations for the Power button complement assigned access, letting you implement features such as removing the power button from the Welcome screen. Removing the power button ensures the user can't turn off the device when it's in assigned access.

  For more information on removing the power button or disabling the physical power button, see [Custom Logon](/windows-hardware/customize/enterprise/custom-logon).

- **Unified Write Filter (UWF)**: UWFsettings apply to all users, including users with assigned access.

  For more information, see [Unified Write Filter](/windows-hardware/customize/enterprise/unified-write-filter).

- **WEDL_AssignedAccess class**: You can use this class to configure and manage basic lockdown features for assigned access. It's recommended to you use the Windows PowerShell cmdlets instead.

  If you need to use assigned access API, see [WEDL_AssignedAccess](/windows-hardware/customize/enterprise/wedl-assignedaccess).

- **Welcome Screen**: Customizations for the Welcome screen let you personalize not only how the Welcome screen looks, but for how it functions. You can disable the power or language button, or remove all user interface elements. There are many options to make the Welcome screen your own.

  For more information, see [Custom Logon](/windows-hardware/customize/enterprise/custom-logon).

## Testing your kiosk in a virtual machine (VM)

Customers sometimes use virtual machines (VMs) to test configurations before deploying those configurations to physical devices. If you use a VM to test your single-app kiosk configuration, you need to know how to connect to the VM properly.

A single-app kiosk configuration runs an app above the lock screen. It doesn't work when it's accessed remotely, which includes *enhanced* sessions in Hyper-V. 

When you connect to a VM configured as a single-app kiosk, you need a *basic* session rather than an enhanced session. In the following image, notice that **Enhanced session** isn't selected in the **View** menu; that means it's a basic session.

:::image type="content" source="images/vm-kiosk.png" alt-text="Use a basic session to connect a virtual machine. In the View menu, Extended session isn't selected, which means basic is used.":::

To connect to a VM in a basic session, don't select **Connect** in the connection dialog, as shown in the following image, but instead, select the **X** button in the upper-right corner to cancel the dialog:

:::image type="content" source="images/vm-kiosk-connect.png" alt-text="Don't select the connect button. Use the close X in the top corner to connect to a VM in basic session.":::

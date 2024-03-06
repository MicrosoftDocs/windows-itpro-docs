---
title: What is Assigned Access?
description: Learn about Assigned Access and how you can use it to configure a Windows device as a kiosk or restricted user experience.
ms.date: 03/04/2024
ms.topic: overview
---

# What is Assigned Access?

Assigned Access is a Windows feature that you can use to configure a device as a kiosk or with a restricted user experience.

:::row:::
    :::column span="1":::
    :::image type="content" source="images/kiosk.png" alt-text="Icon representing a kiosk." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Kiosk experience
    :::column-end:::
:::row-end:::

When you configure a kiosk experience, a single UWP application or Microsoft Edge is executed in full screen, above the lock screen. Users can only use that application. If the kiosk app is closed, it automatically restarts. Practical examples include:

- Public browsing
- Interactive digital signage

:::row:::
    :::column span="1":::
    :::image type="content" source="images/restricted-user-experience.png" alt-text="Icon representing a restricted user experience." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Restricted user experience
    :::column-end:::
:::row-end:::

When you configure a restricted user experience, users can execute a defined list of applications, with a tailored Start menu and Taskbar. Ideal for shared devices, multi-app kiosk mode can create different configurations for different users, ensuring they have access to only what is needed to use the device as intended. The locked down configurations present users with a familiar Windows desktop, while limiting their access, reducing distractions, and potential for inadvertent uses. Practical examples include:

- Frontline worker devices
- Student devices
- Lab devices

[!INCLUDE [assigned-access](../../../includes/licensing/assigned-access.md)]

## Locked-down experience

When applying an Assigned Access configuration to a device, different policy settings and AppLocker rules are enforced, creating a locked down experience to the users.

When Assigned Access is configured, different policy settings are applied to the device to provide a secured, locked-down experience. For more information, see [policy-settings](policy-settings.md).

## Develop your kiosk app

Assigned Access uses the *Lock framework*. When an Assigned Access user signs in, the selected kiosk app is launched above the lock screen. The kiosk app is running as an *above lock* screen app. To learn more, see [best practices guidance for developing a kiosk app for assigned access](/windows-hardware/drivers/partnerapps/create-a-kiosk-app-for-assigned-access).

## Test your Assigned Access experience

Thoroughly test the Assigned Access kiosk configuration, ensuring that your devices provide a good user experience.

> [!NOTE]
> The use of multiple monitors is supported for multi-app kiosk mode in Windows 11.

The Assigned Access feature is intended for dedicated devices, like kiosks. When the multi-app Assigned Access configuration is applied on the device, certain [policy settings](policy-settings.md) are enforced system-wide, impacting other users on the device. Deleting the kiosk configuration removes the Assigned Access lockdown profiles associated with the users, but it can't revert all the enforced policies (for example, the Start layout). To clear all the policy settings enforced by Assigned Access, you must reset Windows.


## Configure a device with Assigned Access

The configuration of Assigned Access is done using an XML file. The XML file is applied to the device via the [Assigned Access CSP](/windows/client-management/mdm/assignedaccess-csp#shelllauncher), using one of the following options:

- A Mobile Device Management (MDM) solution, like Microsoft Intune
- Provisioning packages
- The MDM Bridge WMI Provider

To learn how to configure the Shell Launcher XML file, see [Create an Assigned Access configuration file](configuration-file.md).

[!INCLUDE [tab-intro](../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../images/icons/intune.svg"::: **Intune/CSP**](#tab/intune)

You can configure devices using a [custom policy][MEM-1] with the [AssignedAccess CSP][WIN-3].

- **Setting:** `./Vendor/MSFT/AssignedAccess/Configuration`
- **Value:** content of the XML configuration file

Assign the policy to a group that contains as members the devices that you want to configure.

#### [:::image type="icon" source="../images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

[!INCLUDE [provisioning-package-1](../../../includes/configure/provisioning-package-1.md)]
<!--
- **Path:** `SMISettings/ShellLauncher`
- **Value:** depends on specific settings
-->
[!INCLUDE [provisioning-package-2](../../../includes/configure/provisioning-package-2.md)]

#### [:::image type="icon" source="../images/icons/powershell.svg"::: **PowerShell**](#tab/ps)

[!INCLUDE [powershell-wmi-bridge-1](../../../includes/configure/powershell-wmi-bridge-1.md)]

<!--
```PowerShell
$shellLauncherConfiguration = @"

# content of the XML configuration file

"@

$namespaceName="root\cimv2\mdm\dmmap"
$className="MDM_AssignedAccess"
$obj = Get-CimInstance -Namespace $namespaceName -ClassName $className
$obj.ShellLauncher = [System.Net.WebUtility]::HtmlEncode($shellLauncherConfiguration)
$obj = Set-CimInstance -CimInstance $obj
```

[!INCLUDE [powershell-wmi-bridge-2](../../../includes/configure/powershell-wmi-bridge-2.md)]
-->
---



## User experience

To test the kiosk or restricted user experience, sign in with the user account you specified in the configuration file.

The Assigned Access configuration takes effect the next time the targeted user signs in. If that user account is signed in when you apply the configuration, make sure the user signs out and signs back in to validate the experience.

### Auto-trigger touch keyboard

The touch keyboard is automatically triggered when there's an input needed and no physical keyboard is attached on touch-enabled devices. You don't need to configure any other setting to enforce this behavior.

### Sign out of assigned access

By default, to exit the kiosk experience, press <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>Del</kbd>. The kiosk app exits automatically. If you sign in again as the Assigned Access account, or wait for the sign in screen timeout, the kiosk app relaunches. The default timeout is 30 seconds, but you can change the timeout with the registry key:

`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI`

To change the default time for Assigned Access to resume, add *IdleTimeOut* (DWORD) and enter the value data as milliseconds in hexadecimal.

> [!NOTE]
> `IdleTimeOut` doesn't apply to the Microsoft Edge kiosk mode.

The Breakout Sequence of <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>Del</kbd> is the default, but this sequence can be configured to be a different sequence of keys. The breakout sequence uses the format **modifiers + keys**. An example breakout sequence would look something like <kbd>CTRL</kbd> + <kbd>ALT</kbd> + <kbd>A</kbd>, where <kbd>CTRL</kbd> and <kbd>ALT</kbd> are the modifiers, and <kbd>A</kbd> is the key value. To learn more, see [Create an Assigned Access configuration XML file](configuration-file.md).

### Keyboard shortcuts

The following keyboard shortcuts are blocked for any user account with Assigned Access:

| Keyboard shortcut | Action |
|--|--|
| <kbd>Ctrl</kbd> + <kbd>Shift</kbd>  + <kbd>Esc</kbd>  | Open Task Manager |
| <kbd>WIN</kbd> + <kbd>, (comma)</kbd> | Temporarily peek at the desktop |
| <kbd>WIN</kbd> + <kbd>A</kbd> | Open Action center |
| <kbd>WIN</kbd> + <kbd>Alt</kbd>  + <kbd> D</kbd> | Display and hide the date and time on the desktop |
| <kbd>WIN</kbd> + <kbd>Ctrl</kbd>  + <kbd> F</kbd> | Find computer objects in Active Directory |
| <kbd>WIN</kbd> + <kbd>D</kbd> | Display and hide the desktop |
| <kbd>WIN</kbd> + <kbd>E</kbd> | Open File Explorer |
| <kbd>WIN</kbd> + <kbd>F</kbd> | Open Feedback Hub |
| <kbd>WIN</kbd> + <kbd>G</kbd> | Open Game bar when a game is open |
| <kbd>WIN</kbd> + <kbd>I</kbd> | Open Settings |
| <kbd>WIN</kbd> + <kbd>J</kbd> | Set focus to a Windows tip when one is available |
| <kbd>WIN</kbd> + <kbd>O</kbd> | Lock device orientation |
| <kbd>WIN</kbd> + <kbd>Q</kbd> | Open search |
| <kbd>WIN</kbd> + <kbd>R</kbd> | Open the Run dialog box |
| <kbd>WIN</kbd> + <kbd>S</kbd> | Open search |
| <kbd>WIN</kbd> + <kbd>Shift</kbd>  + <kbd> C</kbd> | Open Cortana in listening mode |
| <kbd>WIN</kbd> + <kbd>X</kbd> | Open the Quick Link menu |
| LaunchApp1 | Open the app that is assigned to this key |
| LaunchApp2 | Open the app that is assigned to this key. On many Microsoft keyboards, the app is Calculator |
| LaunchMail | Open the default mail client |

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

- **Key sequences blocked by [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter)**: If Keyboard Filter is turned ON, then some key combinations are blocked automatically without you having to explicitly block them. For more information, see the [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter).
  [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter) is only available on Windows client Enterprise or Education
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

<!--links-->

[WHW-1]: /windows-hardware/customize/enterprise/custom-logon
[WHW-2]: /windows-hardware/customize/enterprise/unified-write-filter
[WHW-3]: /windows-hardware/customize/enterprise/wedl-assignedaccess

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

>[!IMPORTANT]
>[User account control (UAC)](/windows/security/identity-protection/user-account-control/user-account-control-overview) must be turned on to enable kiosk mode.
>
>Kiosk mode is not supported over a remote desktop connection. Your kiosk users must sign in on the physical device that is set up as a kiosk. Apps that run in kiosk mode cannot use copy and paste.

:::row:::
    :::column span="1":::
    :::image type="content" source="images/restricted-user-experience.png" alt-text="Icon representing a restricted user experience." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Restricted user experience
    :::column-end:::
:::row-end:::

When you configure a restricted user experience, users can only execute a defined list of applications, with a tailored Start menu and Taskbar. Different policy settings and AppLocker rules are enforced, creating a locked down experience. The users can access a familiar Windows desktop, while limiting their access, reducing distractions, and potential for inadvertent uses. Ideal for shared devices, you can create different configurations for different users. Practical examples include:

- Frontline worker devices
- Student devices
- Lab devices

> [!NOTE]
> When you configure a restricted user experience, different policy settings are applied to the device. Some policy settings apply to standard users, and some to administrators. For more information, see [policy-settings](policy-settings.md).

[!INCLUDE [assigned-access](../../../includes/licensing/assigned-access.md)]

## Configure a kiosk experience

There are several options to configure a kiosk experience. If you need to configure a single device with a local account, you can use:

- Settings: use this option when you need a simple method to configure a single device with a local standard user account
- PowerShell: you can use Windows PowerShell cmdlets to set up a single-app kiosk with a local standard account. First, you need to [create the user account](https://support.microsoft.com/help/4026923/windows-create-a-local-user-or-administrator-account-in-windows-10) on the device and install the kiosk app for that account

For advanced customizations, you can use the Assigned Access CSP to configure the kiosk experience. The CSP allows you to configure the kiosk app, the user account, and the kiosk app's behavior. When you use the CSP, you must create an XML configuration file that specifies the kiosk app and the user account. The XML file is applied to the device via the [Assigned Access CSP](/windows/client-management/mdm/assignedaccess-csp#shelllauncher), using one of the following options:

- A Mobile Device Management (MDM) solution, like Microsoft Intune
- Provisioning packages
- PowerShell, with the MDM Bridge WMI Provider

To learn how to configure the Shell Launcher XML file, see [Create an Assigned Access configuration file](configuration-file.md).

[!INCLUDE [tab-intro](../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../images/icons/settings.svg"::: **Settings**](#tab/settings)

Here are the steps to configure a kiosk using the Settings app:

1. Open the Settings app to view and configure a device as a kiosk. Go to **Settings > Accounts > Other Users**, or use the following shortcut:

    > [!div class="nextstepaction"]
    >
    > [Other Users](ms-settings:otherusers)

1. Under **Set up a kiosk**, select **Get Started**
1. In the **Create an account** dialog, enter the account name and select **Next**
    >[!NOTE]
    >If there are any local standard user accounts already, the **Create an account** dialog offers the option to **Choose an existing account**

1. Choose the application to run when the kiosk account signs in. Only apps that can run above the lock screen will be available in the list of apps to choose from. If you select **Microsoft Edge** as the kiosk app, you configure the following options:

    - Whether Microsoft Edge should display your website full-screen (digital sign) or with some browser controls available (public browser)
    - Which URL should be open when the kiosk accounts signs in
    - When Microsoft Edge should restart after a period of inactivity (if you select to run as a public browser)

1. Select **Close**

When the device isn't joined to an Active Directory domain or Microsoft Entra ID, automatic sign-in of the kiosk account is configured automatically:

- If you want the kiosk account to sign in automatically, and the kiosk app launched when the device restarts, then you don't need to do anything
- If you don't want the kiosk account to sign in automatically when the device restarts, then you must change the default setting before you configure the device as a kiosk. Sign in with the account that you want to use as the kiosk account. Open **Settings** > **Accounts** > **Sign-in options**. Set the **Use my sign-in info to automatically finish setting up my device after an update or restart** setting to **Off**. After you change the setting, you can apply the kiosk configuration to the device

#### [:::image type="icon" source="../images/icons/intune.svg"::: **Intune/CSP**](#tab/intune)

You can configure devices using a [custom policy][MEM-1] with the [AssignedAccess CSP][WIN-3].

- **Setting:** `./Vendor/MSFT/AssignedAccess/Configuration`
- **Value:** content of the XML configuration file

Assign the policy to a group that contains as members the devices that you want to configure.

#### [:::image type="icon" source="../images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

[!INCLUDE [provisioning-package-1](../../../includes/configure/provisioning-package-1.md)]

- **Path:** `AssignedAccess/AssignedAccessSettings`
- **Value:** Enter the account and the application you want to use for Assigned access, using the AUMID of the app. Example:
  - `{"Account":"domain\user", "AUMID":"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"}`

[!INCLUDE [provisioning-package-2](../../../includes/configure/provisioning-package-2.md)]

#### [:::image type="icon" source="../images/icons/powershell.svg"::: **PowerShell**](#tab/ps)

To configure a device using the Windows PowerShell cmdlet:

1. Sign in as administrator
1. [Create the user account](https://support.microsoft.com/help/4026923/windows-create-a-local-user-or-administrator-account-in-windows-10) for Assigned Access
1. Sign in as the Assigned Access user account
1. Install the required UWP app
1. Sign out as the Assigned Access user account
1. Sign in as administrator and from an elevated PowerShell prompt use one of the following commands:

    ```PowerShell
    #Configure Assigned Access by AppUserModelID and user name
    Set-AssignedAccess -AppUserModelId <AUMID> -UserName <username>

    #Configure Assigned Access by AppUserModelID and user SID
    Set-AssignedAccess -AppUserModelId <AUMID> -UserSID <usersid>

    #Configure Assigned Access by app name and user name
    Set-AssignedAccess -AppName <CustomApp> -UserName <username>

    #Configure Assigned Access by app name and user SID**:
    Set-AssignedAccess -AppName <CustomApp> -UserSID <usersid>

> [!NOTE]
> To set up Assigned Access using `-AppName`, the user account that you enter for Assigned Access must have signed in at least once.

For more innformation:

- [Find the Application User Model ID of an installed app](../store/find-aumid.md)
- [Set-AssignedAccess](/powershell/module/assignedaccess/set-assignedaccess)

To remove assigned access, using PowerShell, run the following cmdlet:

```powershell
Clear-AssignedAccess
```

For advanced customizations that use the XML configuration file, use the MDM Bridge WMI Provider.

[!INCLUDE [powershell-wmi-bridge-1](../../../includes/configure/powershell-wmi-bridge-1.md)]

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

---

> [!TIP]
> For practical examples, see the [Quickstart: Configure a kiosk with Assigned Access](quickstart-kiosk.md).

## Configure a restricted user experience

To configure a restricted user experience with Assigned Access, you must create an XML configuration file with the settings for the desired experience. The XML file is applied to the device via the [Assigned Access CSP](/windows/client-management/mdm/assignedaccess-csp#shelllauncher), using one of the following options:

- A Mobile Device Management (MDM) solution, like Microsoft Intune
- Provisioning packages
- PowerShell, with the MDM Bridge WMI Provider

To learn how to configure the Assigned Access XML file, see [Create an Assigned Access configuration file](configuration-file.md).

[!INCLUDE [tab-intro](../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../images/icons/settings.svg"::: **Settings**](#tab/settings)

This option is not available using Settings.

#### [:::image type="icon" source="../images/icons/intune.svg"::: **Intune/CSP**](#tab/intune)

You can configure devices using a [custom policy][MEM-1] with the [AssignedAccess CSP][WIN-3].

- **Setting:** `./Vendor/MSFT/AssignedAccess/ShellLauncher`
- **Value:** content of the XML configuration file

Assign the policy to a group that contains as members the devices that you want to configure.

#### [:::image type="icon" source="../images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

[!INCLUDE [provisioning-package-1](../../../includes/configure/provisioning-package-1.md)]

- **Path:** `AssignedAccess/MultiAppAssignedAccessSettings`
- **Value:**  content of the XML configuration file

[!INCLUDE [provisioning-package-2](../../../includes/configure/provisioning-package-2.md)]

#### [:::image type="icon" source="../images/icons/powershell.svg"::: **PowerShell**](#tab/ps)

[!INCLUDE [powershell-wmi-bridge-1](../../../includes/configure/powershell-wmi-bridge-1.md)]

```PowerShell
$assignedAccessConfiguration = @"

# content of the XML configuration file

"@

$namespaceName="root\cimv2\mdm\dmmap"
$className="MDM_AssignedAccess"
$obj = Get-CimInstance -Namespace $namespaceName -ClassName $className
$obj.Configuration = [System.Net.WebUtility]::HtmlEncode($assignedAccessConfiguration)
$obj = Set-CimInstance -CimInstance $obj -ErrorVariable cimSetError -ErrorAction SilentlyContinue
if($cimSetError) {
    Write-Output "An ERROR occurred. Displaying error record and attempting to retrieve error logs...`n"
    Write-Error -ErrorRecord $cimSetError[0]

    $timeout = New-TimeSpan -Seconds 30
    $stopwatch = [System.Diagnostics.Stopwatch]::StartNew()
    do{
        $events = Get-WinEvent -FilterHashtable $eventLogFilterHashTable -ErrorAction Ignore
    } until ($events.Count -or $stopwatch.Elapsed -gt $timeout) # wait for the log to be available

    if($events.Count) {
        $events | ForEach-Object {
            Write-Output "$($_.TimeCreated) [$($_.LevelDisplayName.ToUpper())] $($_.Message -replace "`n|`r")"
        }
    } else {
        Write-Warning "Timed-out attempting to retrieve event logs..."
    }

    Exit 1
}

Write-Output "Successfully applied Assigned Access configuration"
```

[!INCLUDE [powershell-wmi-bridge-2](../../../includes/configure/powershell-wmi-bridge-2.md)]
---

> [!TIP]
> For practical examples, see the [Quickstart: Configure a restricted user experience with Assigned Access](quickstart-restricted-user-experience.md)

## Remove Assigned Access

Deleting the multi-app configuration will remove the assigned access lockdown profiles associated with the users, but it can't revert all the enforced policies (for example, Start Layout).


<!--

## Develop your kiosk app

Assigned Access uses the *Lock framework*. When an Assigned Access user signs in, the selected kiosk app is launched above the lock screen. The kiosk app is running as an *above lock* screen app. To learn more, see [best practices guidance for developing a kiosk app for assigned access](/windows-hardware/drivers/partnerapps/create-a-kiosk-app-for-assigned-access).

## Test your Assigned Access experience

Thoroughly test the Assigned Access kiosk configuration, ensuring that your devices provide a good user experience.

> [!NOTE]
> The use of multiple monitors is supported for multi-app kiosk mode in Windows 11.

The Assigned Access feature is intended for dedicated devices, like kiosks. When the multi-app Assigned Access configuration is applied on the device, certain [policy settings](policy-settings.md) are enforced system-wide, impacting other users on the device. Deleting the kiosk configuration removes the Assigned Access lockdown profiles associated with the users, but it can't revert all the enforced policies (for example, the Start layout). To clear all the policy settings enforced by Assigned Access, you must reset Windows.

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

The Breakout Sequence of <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>Del</kbd> is the default, but this sequence can be configured to be a different sequence of keys. The breakout sequence uses the format **modifiers + keys**. An example breakout sequence is <kbd>CTRL</kbd> + <kbd>ALT</kbd> + <kbd>A</kbd>, where <kbd>CTRL</kbd> + <kbd>ALT</kbd> are the modifiers, and <kbd>A</kbd> is the key value. To learn more, see [Create an Assigned Access configuration XML file](configuration-file.md).

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

-->


<!--links-->

[WHW-1]: /windows-hardware/customize/enterprise/custom-logon
[WHW-2]: /windows-hardware/customize/enterprise/unified-write-filter
[WHW-3]: /windows-hardware/customize/enterprise/wedl-assignedaccess

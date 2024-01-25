---
title: Set up a multi-app kiosk on Windows 11
description: Learn how to configure a kiosk device running Windows 11 so that users can only run a few specific apps.
ms.date: 05/12/2023

ms.topic: how-to
---
# Set up a multi-app kiosk on Windows 11 devices

> [!NOTE]
> The use of multiple monitors is supported for multi-app kiosk mode in Windows 11.

An assigned access multi-app kiosk runs one or more apps from the desktop. People using the kiosk see a customized Start that shows only the apps that are allowed. With this approach, you can configure a locked-down experience for different account types. A multi-app kiosk is appropriate for devices that are shared by multiple people. Here's a guide on how to set up a multi-app kiosk.

> [!WARNING]
> The assigned access feature is intended for corporate-owned fixed-purpose devices, like kiosks. When the multi-app assigned access configuration is applied on the device, [certain policies](kiosk-policies.md) are enforced system-wide, and will impact other users on the device. Deleting the kiosk configuration will remove the assigned access lockdown profiles associated with the users, but it cannot revert all the enforced policies (such as Start layout). A factory reset is needed to clear all the policies enforced via assigned access.

> [!TIP]
> Be sure to check the [configuration recommendations](kiosk-prepare.md) before you set up your kiosk.

## Configure a Multi-App Kiosk

See the table below for the different methods to configure a multi-app kiosk in Windows 11.

|Configuration Method|Availability|
|--------------------|------------|
|[MDM WMI Bridge Provider](#configure-a-kiosk-using-wmi-bridge) | Available May 2023|

<!--

Commenting out the coming soon items
|Intune|Coming soon|
|Provisioning Package Using Windows Configuration Designer| Coming soon|
-->

> [!NOTE]
> For WMI Bridge/PowerShell and Provisioning package methods, you will need to create your own multi-app kiosk XML file as specified below.

## Create the XML file

Let's start by looking at the basic structure of the XML file.

- A configuration xml can define multiple *profiles*. Each profile has a unique **Id** and defines a set of applications that are allowed to run, whether the taskbar is visible, and can include a custom Start layout.

- A configuration xml can have multiple *config* sections. Each config section associates a non-admin user account to a default profile **Id**.

- Multiple config sections can be associated to the same profile.

- A profile has no effect if it's not associated to a config section.

You can start your file by pasting the following XML into an XML editor, and saving the file as *filename*.xml. Each section of this XML is explained in this article.

> [!NOTE]
> If you want to write a configuration file to be applied to both Windows 10 and Windows 11 devices, follow the [Windows 10 instructions](lock-down-windows-10-to-specific-apps.md) to add the StartLayout tag to your XML file, just above the StartPins tag. Windows will automatically ignore the sections that don't apply to the version running.

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration

  xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config" xmlns:win11="http://schemas.microsoft.com/AssignedAccess/2022/config">
    <Profiles>
        <Profile Id="">
            <AllAppsList>
                <AllowedApps/>
            </AllAppsList>
            <win11:StartPins/>
            <Taskbar/>
        </Profile>
    </Profiles>
    <Configs>
        <Config>
            <Account/>
            <DefaultProfile Id=""/>
        </Config>
    </Configs>
</AssignedAccessConfiguration>
```
#### Profile

There are two types of profiles that you can specify in the XML:

- **Lockdown profile**: Users assigned a lockdown profile will see the desktop in tablet mode with the specific apps on the Start screen.
- **Kiosk profile**: Starting with Windows 10 version 1803, this profile replaces the KioskModeApp node of the [AssignedAccess CSP](/windows/client-management/mdm/assignedaccess-csp). Users assigned a kiosk profile won't see the desktop, but only the kiosk app running in full-screen mode.

A lockdown profile section in the XML has the following entries:

- [**Id**](#id)

- [**AllowedApps**](#allowedapps)

- [**StartPins**](#startpins)

- [**Taskbar**](#taskbar)

A kiosk profile in the XML has the following entries:

- [**Id**](#id)

- [**KioskModeApp**](#kioskmodeapp)

##### Id

The profile **Id** is a GUID attribute to uniquely identify the profile. You can create a GUID using a GUID generator. The GUID just needs to be unique within this XML file.

```xml
<Profiles>
  <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}">…</Profile>
</Profiles>
```

##### AllowedApps

**AllowedApps** is a list of applications that are allowed to run. Apps can be Universal Windows Platform (UWP) apps or Windows desktop applications. Starting with Windows 10 version 1809, you can configure a single app in the **AllowedApps** list to run automatically when the assigned access user account signs in.

- For UWP apps, you need to provide the App User Model ID (AUMID). [Learn how to get the AUMID](./find-the-application-user-model-id-of-an-installed-app.md), or [get the AUMID from the Start Layout XML](#create-the-xml-file).
- For desktop apps, you need to specify the full path of the executable, which can contain one or more system environment variables in the form of `%variableName%`. For example, `%systemroot%` or `%windir%`.
- If an app has a dependency on another app, both must be included in the allowed apps list. For example, Internet Explorer 64-bit has a dependency on Internet Explorer 32-bit, so you must allow both `"C:\Program Files\internet explorer\iexplore.exe"` and `"C:\Program Files (x86)\Internet Explorer\iexplore.exe"`.
- To configure a single app to launch automatically when the user signs in, include `rs5:AutoLaunch="true"` after the AUMID or path. You can also include arguments to be passed to the app. For an example, see [the AllowedApps sample XML](#apps-sample).

When the multi-app kiosk configuration is applied to a device, AppLocker rules will be generated to allow the apps that are listed in the configuration. Here are the predefined assigned access AppLocker rules for **UWP apps**:

1. Default rule is to allow all users to launch the signed package apps.
1. The package app blocklist is generated at runtime when the assigned access user signs in. Based on the installed/provisioned package apps available for the user account, assigned access generates the blocklist. This list will exclude the default allowed inbox package apps, which are critical for the system to function. It then excludes the allowed packages that enterprises defined in the assigned access configuration. If there are multiple apps within the same package, all these apps will be excluded. This blocklist will be used to prevent the user from accessing the apps that are currently available for the user but not in the allowed list.

  > [!NOTE]
  > You can't manage AppLocker rules that are generated by the multi-app kiosk configuration in [MMC snap-ins](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh994629(v=ws.11)#BKMK_Using_Snapins). Avoid creating AppLocker rules that conflict with AppLocker rules that are generated by the multi-app kiosk configuration.
  > Multi-app kiosk mode doesn't block the enterprise or the users from installing UWP apps. When a new UWP app is installed during the current assigned access user session, this app will not be in the deny list. When the user signs out and signs in again, the app will be included in the blocklist. If this is an enterprise-deployed line-of-business app and you want to allow it to run, update the assigned access configuration to include it in the allowed app list.

Here are the predefined assigned access AppLocker rules for **desktop apps**:

1. Default rule is to allow all users to launch the desktop programs signed with Microsoft Certificate in order for the system to boot and function. The rule also allows the admin user group to launch all desktop programs.
1. There's a predefined inbox desktop app blocklist for the assigned access user account, and this blocklist is adjusted based on the desktop app allowlist that you defined in the multi-app configuration.
1. Enterprise-defined allowed desktop apps are added in the AppLocker allowlist.

The following example allows Photos, Weather, Calculator, Paint, and Notepad apps to run on the device, with Notepad configured to automatically launch and create a file called `123.text` when the user signs in.

<span id="apps-sample" />

```xml
<AllAppsList>
        <AllowedApps>
          <App AppUserModelId="Microsoft.Windows.Photos_8wekyb3d8bbwe!App" />
          <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
          <App AppUserModelId="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App" />
          <App DesktopAppPath="%windir%\system32\mspaint.exe" />
          <App DesktopAppPath="C:\Windows\System32\notepad.exe" rs5:AutoLaunch="true" rs5:AutoLaunchArguments="123.txt">
        </AllowedApps>
</AllAppsList>
```

##### StartPins

After you define the list of allowed applications, you can customize the Start layout for your kiosk experience. The easiest way to create a customized Start layout to apply to other Windows client devices is to set up the Start screen on a test device and then export the layout. Once you've decided, you can get the JSON needed for your kiosk configuration by following the steps to [Get the pinnedList JSON](../start/customize-and-export-start-layout.md). If you opt to do this using the PowerShell command, make sure that the system you run the command on has the same file structure as the device on which you will apply the kiosk (the path to the allowed apps must be the same). At the end of this step, you should have a JSON pinnedList that looks something like the below.

Add your pinnedList JSON into the StartPins tag in your XML file.

```xml
<win11:StartPins>
        <![CDATA[

          { "pinnedList":[
            {"packagedAppId":"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"},
            {"packagedAppId":"Microsoft.Windows.Photos_8wekyb3d8bbwe!App"},
            {"packagedAppId":"Microsoft.BingWeather_8wekyb3d8bbwe!App"},
            {"desktopAppLink":"%ALLUSERSPROFILE%\\Microsoft\\Windows\\StartMenu\\Programs\\Accessories\\Paint.lnk"},
            {"desktopAppLink":"%APPDATA%\\Microsoft\\Windows\\StartMenu\\Programs\\Accessories\\Notepad.lnk"}
          ] }
        ]]>
      </win11:StartPins>
```

> [!NOTE]
> If an app isn't installed for the user, but is included in the Start layout XML, the app isn't shown on the Start screen.

##### Taskbar

Define whether you want to have the taskbar present in the kiosk device. For tablet-based or touch-enabled all-in-one kiosks, when you don't attach a keyboard and mouse, you can hide the taskbar as part of the multi-app experience if you want.

The following example exposes the taskbar to the end user:

```xml
<Taskbar ShowTaskbar="true"/>
```

The following example hides the taskbar:

```xml
<Taskbar ShowTaskbar="false"/>
```

> [!NOTE]
> This is different from the **Automatically hide the taskbar** option in tablet mode, which shows the taskbar when swiping up from or moving the mouse pointer down to the bottom of the screen. Setting **ShowTaskbar** as **false** will always keep the taskbar hidden.

##### KioskModeApp

**KioskModeApp** is used for a [kiosk profile](#profile) only. Enter the AUMID for a single app. You can only specify one kiosk profile in the XML.

```xml
<KioskModeApp AppUserModelId="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"/>
```

> [!IMPORTANT]
> The kiosk profile is designed for public-facing kiosk devices. We recommend that you use a local, non-administrator account. If the device is connected to your company network, using a domain or Microsoft Entra account could potentially compromise confidential information.

#### Configs

Under **Configs**, define which user account will be associated with the profile. When this user account signs in on the device, the associated assigned access profile will be enforced. This behavior includes the allowed apps, Start layout, taskbar configuration, and other local group policies or mobile device management (MDM) policies set as part of the multi-app experience.

The full multi-app assigned access experience can only work for non-admin users. It's not supported to associate an admin user with the assigned access profile. Making this configuration in the XML file will result in unexpected or unsupported experiences when this admin user signs in.

You can assign:

- [A local standard user account that signs in automatically](#config-for-autologon-account) (Applies to Windows 10, version 1803 only)
- [An individual account, which can be local, domain, or Microsoft Entra ID](#config-for-individual-accounts)
- [A group account, which can be local, Active Directory (domain), or Microsoft Entra ID](#config-for-group-accounts) (Applies to Windows 10, version 1803 only).

> [!NOTE]
> Configs that specify group accounts cannot use a kiosk profile, only a lockdown profile. If a group is configured to a kiosk profile, the CSP will reject the request.

##### Config for AutoLogon Account

When you use `<AutoLogonAccount>` and the configuration is applied to a device, the specified account (managed by Assigned Access) is created on the device as a local standard user account. The specified account is signed in automatically after restart.

The following example shows how to specify an account to sign in automatically.

```xml
<Configs>
  <Config>
    <AutoLogonAccount/>
    <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
  </Config>
</Configs>
```

Starting with Windows 10 version 1809, you can configure the display name that will be shown when the user signs in. The following example shows how to create an AutoLogon Account that shows the name "Hello World".

```xml
<Configs>
  <Config>
    <AutoLogonAccount rs5:DisplayName="Hello World"/>
    <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
  </Config>
</Configs>
```

On domain-joined devices, local user accounts aren't shown on the sign-in screen by default. To show the **AutoLogonAccount** on the sign-in screen, enable the following Group Policy setting: **Computer Configuration > Administrative Templates > System > Logon > Enumerate local users on domain-joined computers**. (The corresponding MDM policy setting is [WindowsLogon/EnumerateLocalUsersOnDomainJoinedComputers in the Policy CSP](/windows/client-management/mdm/policy-csp-windowslogon#windowslogon-enumeratelocalusersondomainjoinedcomputers).)

>[!IMPORTANT]
>When Exchange Active Sync (EAS) password restrictions are active on the device, the autologon feature does not work. This behavior is by design. For more informations, see [How to turn on automatic logon in Windows](/troubleshoot/windows-server/user-profiles-and-logon/turn-on-automatic-logon).

##### Config for individual accounts

Individual accounts are specified using `<Account>`.

- Local account can be entered as `machinename\account` or `.\account` or just `account`.
- Domain account should be entered as `domain\account`.
- Microsoft Entra account must be specified in this format: `AzureAD\{email address}`. **AzureAD** must be provided _as is_, and consider it's a fixed domain name. Then follow with the Microsoft Entra ID email address. For example, `AzureAD\someone@contoso.onmicrosoft.com`

> [!WARNING]
> Assigned access can be configured via WMI or CSP to run its applications under a domain user or service account, rather than a local account.  However, use of domain user or service accounts introduces risks that an attacker subverting the assigned access application might gain access to sensitive domain resources that have been inadvertently left accessible to any domain account. We recommend that customers proceed with caution when using domain accounts with assigned access, and consider the domain resources potentially exposed by the decision to do so.

Before applying the multi-app configuration, make sure the specified user account is available on the device, otherwise it will fail.

> [!NOTE]
> For both domain and Microsoft Entra accounts, it's not required that target account is explicitly added to the device. As long as the device is AD-joined or Microsoft Entra joined, the account can be discovered in the domain forest or tenant that the device is joined to. For local accounts, it is required that the account exist before you configure the account for assigned access.

```xml
<Configs>
  <Config>
    <Account>MultiAppKioskUser</Account>
    <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
  </Config>
</Configs>
```

##### Config for group accounts

Group accounts are specified using `<UserGroup>`. Nested groups aren't supported. For example, if user A is member of Group 1, Group 1 is member of Group 2, and Group 2 is used in `<Config/>`, user A won't have the kiosk experience.

- Local group: Specify the group type as **LocalGroup** and put the group name in Name attribute. Any Microsoft Entra accounts that are added to the local group won't have the kiosk settings applied.

  ```xml
  <Config>
    <UserGroup Type="LocalGroup" Name="mygroup" />
    <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
  </Config>
  ```

- Domain group: Both security and distribution groups are supported. Specify the group type as <strong>ActiveDirectoryGroup</strong>. Use the domain name as the prefix in the name attribute.

  ```xml
  <Config>
    <UserGroup Type="ActiveDirectoryGroup" Name="mydomain\mygroup" />
    <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
  </Config>
  ```

- Microsoft Entra group: Use the group object ID from the Azure portal to uniquely identify the group in the Name attribute. You can find the object ID on the overview page for the group in **Users and groups** > **All groups**. Specify the group type as **AzureActiveDirectoryGroup**. The kiosk device must have internet connectivity when users that belong to the group sign-in.

  ```xml
  <Config>
    <UserGroup Type="AzureActiveDirectoryGroup" Name="a8d36e43-4180-4ac5-a627-fb8149bba1ac" />
    <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
  </Config>
  ```

  > [!NOTE]
  > If a Microsoft Entra group is configured with a lockdown profile on a device, a user in the Microsoft Entra group must change their password (after the account has been created with default password on the portal) before they can sign in to this device. If the user uses the default password to sign in to the device, the user will be immediately signed out.

<span id="add-xml" />

## Configure a kiosk using WMI Bridge

Environments that use [Windows Management Instrumentation (WMI)](/windows/win32/wmisdk/wmi-start-page) can use the [MDM Bridge WMI Provider](/windows/win32/dmwmibridgeprov/mdm-bridge-wmi-provider-portal) to configure the MDM_AssignedAccess class.

Here's an example of how to set AssignedAccess configuration:

1. Download the [psexec tool](/sysinternals/downloads/psexec).

1. Using an elevated command prompt, run `psexec.exe -i -s cmd.exe`.
1. In the command prompt launched by psexec.exe, enter `powershell.exe` to open PowerShell.
1. Save the following Powershell excerpt as a PowerShell script (.ps1), replacing the placeholder "your XML here" with the [Sample Assigned Access XML](#sample-assigned-access-xml) then run the script at the Powershell prompt from the previous step.

```powershell
$eventLogFilterHashTable = @{
    ProviderName = "Microsoft-Windows-AssignedAccess";
    StartTime    = Get-Date -Millisecond 0
}

$namespaceName="root\cimv2\mdm\dmmap"
$className="MDM_AssignedAccess"
$obj = Get-CimInstance -Namespace $namespaceName -ClassName $className
$obj.Configuration = [System.Net.WebUtility]::HtmlEncode(@"

<your XML here>

"@)

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

## Sample Assigned Access XML

This section contains a predefined XML file which can be used as a quickstart to get familiar with the Assigned Access multi-app kiosk feature on Windows 11.

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration

  xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"

  xmlns:win11="http://schemas.microsoft.com/AssignedAccess/2022/config">
  <Profiles>
    <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}">

      <AllAppsList>
        <AllowedApps>

          <App AppUserModelId="Microsoft.Windows.Photos_8wekyb3d8bbwe!App" />

          <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />

          <App AppUserModelId="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App" />
          <App DesktopAppPath="C:\Windows\system32\cmd.exe" />
          <App DesktopAppPath="%windir%\System32\WindowsPowerShell\v1.0\Powershell.exe" />
          <App DesktopAppPath="%windir%\explorer.exe" />

        </AllowedApps>

      </AllAppsList>

      <win11:StartPins>
        <![CDATA[

          { "pinnedList":[
            {"packagedAppId":"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"},
            {"packagedAppId":"Microsoft.Windows.Photos_8wekyb3d8bbwe!App"},
            {"packagedAppId":"Microsoft.BingWeather_8wekyb3d8bbwe!App"},
            {"desktopAppLink":"C:\\Users\\MultiAppKioskUser\\AppData\\Roaming\\Microsoft\\Windows\\Start Menu\\Programs\\File Explorer.lnk"},
            {"desktopAppLink":"C:\\Users\\MultiAppKioskUser\\AppData\\Roaming\\Microsoft\\Windows\\Start Menu\\Programs\\System Tools\\Command Prompt.lnk"},
            {"desktopAppLink":"C:\\Users\\MultiAppKioskUser\\AppData\\Roaming\\Microsoft\\Windows\\Start Menu\\Programs\\Windows PowerShell\\Windows PowerShell.lnk"}
          ] }
        ]]>
      </win11:StartPins>
      <Taskbar ShowTaskbar="true"/>
    </Profile>

  </Profiles>
  <Configs>
    <Config>
      <Account>MultiAppKioskUser</Account>
      <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
    </Config>
  </Configs>
</AssignedAccessConfiguration>

```

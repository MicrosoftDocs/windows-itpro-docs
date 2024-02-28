---
title: Create an Shell Launcher configuration file
description: Learn how to create an XML file to configure a device with Shell Launcher.
ms.date: 02/12/2024
ms.topic: how-to
---

# Create an Shell Launcher configuration file

This article provides practical examples of Shell Launcher XML configuration files.

Let's start by looking at the basic structure of the XML file.

- A configuration xml can define one or multiple `Profiles`
  - Each profile has a unique `Profile Id` and defines a `Shell` elemnt, which is the application that executes when the user signs in
  - A profile can define a default action to be taken when the application exits and may define actions to be taken when the application exits with a specific return code
  - A profile must be associated to a user account to have an effect
  - You can define a `Default profile` that is used when no other profile is associated to a user account
- A configuration xml can define one or multiple `configs`
  - Each config associates a user account to a `profile Id`
  - A profile has no effect if it's not associated to a user account

You can start your file by pasting the following XML code into a text editor, and saving the file with an xml extension. For example, `kiosk.xml`.

```xml
<?xml version="1.0" encoding="utf-8" ?>
<ShellLauncherConfiguration
    xmlns="http://schemas.microsoft.com/ShellLauncher/2018/Configuration"
    xmlns:V2="http://schemas.microsoft.com/ShellLauncher/2019/Configuration">
    <Profiles>
        <!-- Add configuration here as needed -->
    </Profiles>
    <Configs>
        <!-- Add configuration here as needed -->
    </Configs>
</ShellLauncherConfiguration>
```

## Profiles node

If you want to define a default profile, you can use the `DefaultProfile` element:

```xml
<Profiles>
    <DefaultProfile>
        <!-- Add configuration here as needed -->
    </DefaultProfile>
</Profiles>
```

Each profile is identified by a unique identifier `Profile Id`, for example:

```xml
<Profiles>
    <Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}">
        <!-- Add configuration here as needed -->
    </Profile>
</Profiles>
```

### Shell node

The `Shell` node defines the application that executes when the user signs in:

- The `Shell` attribute is the path to the application
- The `V2:AppType` attribute defines the type of application
- The `V2:AllAppsFullScreen` attribute is a boolean value that defines if all applications are executed in full screen

```xml
<Shell Shell="" V2:AppType="" V2:AllAppsFullScreen="">
    <ReturnCodeActions>
        <ReturnCodeAction ReturnCode="" Action=""/>
    </ReturnCodeActions>
    <DefaultAction Action=""/>
</Shell>
```


```xml
<?xml version="1.0" encoding="utf-8" ?>
<ShellLauncherConfiguration
    xmlns="http://schemas.microsoft.com/ShellLauncher/2018/Configuration"
    xmlns:V2="http://schemas.microsoft.com/ShellLauncher/2019/Configuration">
    <Profiles>
        <DefaultProfile>
            <Shell Shell=""/>
        </DefaultProfile>
        <Profile Id="">
            <Shell Shell="" V2:AppType="" V2:AllAppsFullScreen="">
                <ReturnCodeActions>
                    <ReturnCodeAction ReturnCode="" Action=""/>
                </ReturnCodeActions>
                <DefaultAction Action=""/>
            </Shell>
        </Profile>
    </Profiles>
    <Configs>
        <Config>
            <AutoLogonAccount/>
            <Profile Id=""/>
        </Config>
    </Configs>
</ShellLauncherConfiguration>
```

## Default action, custom action, exit code

Shell Launcher defines four actions to handle app exits. You can customize Shell Launcher and use the actions based on different exit code.

| Value | Description |
|--|--|
| 0 | Restart the shell |
| 1 | Restart the device |
| 2 | Shut down the device |
| 3 | Do nothing |

These actions can be used as default action, or can be mapped to a specific exit code. Refer to [Shell Launcher](/windows-hardware/customize/enterprise/wesl-usersettingsetcustomshell) to see how these codes with Shell Launcher WMI.

To configure these actions with Shell Launcher CSP, use below syntax in the Shell Launcher configuration xml. You can specify at most four custom actions mapping to four exit codes, and one default action for all other exit codes. When app exits and if the exit code is not found in the custom action mapping, or there is no default action defined, it will be no-op, i.e. nothing happens. So it's recommended to at least define DefaultAction. [Get XML examples for different Shell Launcher v2 configurations.](https://github.com/Microsoft/Windows-iotcore-samples/tree/develop/Samples/ShellLauncherV2)

``` xml
<ReturnCodeActions>
    <ReturnCodeAction ReturnCode="0" Action="RestartShell"/>
    <ReturnCodeAction ReturnCode="-1" Action="RestartDevice"/>
    <ReturnCodeAction ReturnCode="255" Action="ShutdownDevice"/>
    <ReturnCodeAction ReturnCode="1" Action="DoNothing"/>
</ReturnCodeActions>
<DefaultAction Action="RestartDevice"/>
```

## AllAppsFullScreen

In the XML for Shell Launcher v2, note the **AllAppsFullScreen** attribute. When set to **True**, Shell Launcher will run every app in full screen, or maximized for desktop apps. When this attribute is set to **False** or not set, only the custom shell app runs in full screen; other apps launched by the user will run in windowed mode.

### AppType

Allowed values are `Desktop` and `UWP`.

`AllAppsFullScreen` is a boolean value. If true, all applications are executed in full screen. If false...

:::row:::
    :::column span="1":::
    **Scenario**
    :::column-end:::
    :::column span="3":::
    **Sample Xml**
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="1":::
    **Desktop application**
    :::column-end:::
    :::column span="3":::
    In this example, Microsoft Edge is executed in full screen, opening a website. The website is reloaded after 2 minutes of inactivity.
    ```xml
    <Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}">
        <Shell Shell="%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe --kiosk https://www.contoso.com --edge-kiosk-type=fullscreen --kiosk-idle-timeout-minutes=2" V2:AppType="Desktop" V2:AllAppsFullScreen="true">
            <ReturnCodeActions>
                <ReturnCodeAction ReturnCode="0" Action="RestartShell"/>
                <ReturnCodeAction ReturnCode="-1" Action="RestartDevice"/>
                <ReturnCodeAction ReturnCode="255" Action="ShutdownDevice"/>
            </ReturnCodeActions>
            <DefaultAction Action="RestartShell"/>
        </Shell>
    </Profile>
    ```
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="1":::
    **UWP application**
    In this example, the Weather app is executed in full screen.
    :::column-end:::
    :::column span="3":::
    ```xml
    <?xml version="1.0" encoding="utf-8"?>
    <ShellLauncherConfiguration xmlns="http://schemas.microsoft.com/ShellLauncher/2018/Configuration"
    xmlns:V2="http://schemas.microsoft.com/ShellLauncher/2019/Configuration">
      <Profiles>
        <DefaultProfile>
          <Shell Shell="Microsoft.BingWeather_8wekyb3d8bbwe!App" V2:AppType="UWP">
            <DefaultAction Action="RestartShell"/>
          </Shell>
        </DefaultProfile>
      </Profiles>
      <Configs/>
    </ShellLauncherConfiguration>
    ```
    :::column-end:::
:::row-end:::

## Kiosk example

[!INCLUDE [shell-launcher-quickstart-xml](includes/shell-launcher-quickstart-xml.md)]



<!--troubleshooting
Event Viewer
Run "eventvwr.msc"
Navigate to "Applications and Services Logs"
There are 2 areas of your interests:
"Microsoft-Windows-AssignedAccess"
"Microsoft-Windows-AssignedAccessBroker"
Before any repro, it's recommended to enable "Operational" channel to get the most of logs.
TraceLogging
<TBD>

Registry Key
These locations contain the latest Assigned Access Configuration:

HKLM\SOFTWARE\Microsoft\Windows\AssignedAccessConfiguration
HKLM\SOFTWARE\Microsoft\Windows\AssignedAccessCsp
These locations contain the latest "evaluated" configuration for each sign-in user:

"HKCU\SOFTWARE\Microsoft\Windows\AssignedAccessConfiguration" (If it doesn't exist, it means no Assigned Access to be enforced for this user.)
-->

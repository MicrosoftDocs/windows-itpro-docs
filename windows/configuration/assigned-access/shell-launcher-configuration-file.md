---
title: Create an Shell Launcher configuration file
description: Learn how to create an XML file to configure a device with Shell Launcher.
ms.date: 02/12/2024
ms.topic: how-to
---

# Create an Shell Launcher configuration file

This article provides practical examples of Shell Launcher XML configuration files.

Let's start by looking at the basic structure of the XML file.

- A configuration xml can define multiple `profiles`. Each profile has a *profile Id* and defines a set of applications that are allowed to run
- A configuration xml can have multiple `configs`. Each config associates a non-admin user account to a default profile Id
- A profile has no effect if it's not associated to a user account

You can start your file by pasting the following XML code into a text editor, and saving the file with an xml extension. For example, `kiosk.xml`.

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

## Profiles node

An Shell Launcher configuration file can contain one or more profiles. Each profile is identified by a unique identified `Profile Id`, for example:

```xml
<Profiles>
    <Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}">
        ...
    </Profile>
</Profiles>
```

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

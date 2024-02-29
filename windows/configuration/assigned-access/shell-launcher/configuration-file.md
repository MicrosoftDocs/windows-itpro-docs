---
title: Create a Shell Launcher configuration file
description: Learn how to create an XML file to configure a device with Shell Launcher.
ms.date: 02/12/2024
ms.topic: how-to
---

# Create a Shell Launcher configuration file

To configure Shell Launcher, you must create and apply a configuration XML file to your devices. The configuration file must conform to a schema, as defined in [Shell Launcher XML Schema Definition (XSD)](xsd.md).

This article describes how to configure a Shell Launcher configuration file, including practical examples.

Let's start by looking at the basic structure of the XML file. A Shell Launcher configuration file contains:

- One or multiple `profiles`. Each `profile` defines:
  - the application that replaces the standard Windows shell (`Explorer.exe`), which is executed when a user signs in
  - default action to be taken when the application exits, and actions to be taken when the application exits with a specific return code
- One or multiple `configs`. Each `config` associates a user account to a `profile`

> [!NOTE]
> A profile has no effect if it's not associated to a user account.

Here's a basic example of a Shell Launcher configuration file, with one profile and one config:

```xml
<?xml version="1.0" encoding="utf-8" ?>
<ShellLauncherConfiguration
  xmlns="http://schemas.microsoft.com/ShellLauncher/2018/Configuration"
  xmlns:V2="http://schemas.microsoft.com/ShellLauncher/2019/Configuration">
  <Profiles>
    <Profile Id="{GUID}">
      <!-- Add configuration here as needed -->
    </Profile>
  </Profiles>
  <Configs>
    <Config>
      <!-- Add configuration here as needed -->
    </Config>
  </Configs>
</ShellLauncherConfiguration>
```

## Profiles

A configuration file can contain one or more profiles. Each profile is identified by a unique identified `Profile Id` and, optionally, a `Name`. For example:

```xml
<Profiles>
  <Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}" Name="Microsoft Learn example">
    <!-- Add configuration here as needed -->
  </Profile>
</Profiles>
```

> [!TIP]
> The `Profile Id` must be unique within the XML file. You can generate a GUID with the PowerShell cmdlet `New-Guid`.

You can define a `Defaultprofile` that is used when no other profile is associated to a user account. This ensures that every user using the device uses the same application. Example:

```xml
<Profiles>
  <DefaultProfile>
    <!-- Add configuration here as needed -->
  </DefaultProfile>
</Profiles>
```

### Shell

Each profile defines a `Shell` element, which contains details about the application to execute. The `Shell` element has the following properties:

| Property| Description | Details |
|-|-|-|
|`Shell`| Path to the application. ||
|`V2:AppType`| Defines the type of application. |Allowed values are `Desktop` and `UWP`.|
|`V2:AllAppsFullScreen` | Boolean value that defines if all applications are executed in full screen. |- When set to `True`, Shell Launcher will runs every app in full screen, or maximized for desktop apps<br>- When set to `False` or not set, only the custom shell app runs in full screen; other apps launched by the user run in windowed mode.|

Example:

```xml
<Profile Id="{GUID}">
  <Shell Shell="" V2:AppType="" V2:AllAppsFullScreen="">
    <!-- Add configuration here as needed -->
  </Shell>
</Profile>
```

#### ReturnCodeActions

Shell Launcher defines four actions to handle app exits. You can customize Shell Launcher and use the actions based on different exit code.

| Value | Description |
|--|--|
| `0` | Restart the shell |
| `1` | Restart the device |
| `2` | Shut down the device |
| `3` | Do nothing |

These actions can be used as default action, or can be mapped to a specific exit code. Refer to [Shell Launcher](/windows-hardware/customize/enterprise/wesl-usersettingsetcustomshell) to see how use these codes with Shell Launcher WMI.

To configure these actions with Shell Launcher CSP, use below syntax in the Shell Launcher configuration xml. You can specify at most four custom actions mapping to four exit codes, and one default action for all other exit codes. When app exits and if the exit code is not found in the custom action mapping, or there is no default action defined, it will be no-op, i.e. nothing happens. So it's recommended to at least define DefaultAction. [Get XML examples for different Shell Launcher v2 configurations.](https://github.com/Microsoft/Windows-iotcore-samples/tree/develop/Samples/ShellLauncherV2)

Example:

```xml
<Profile Id="{GUID}">
  <Shell Shell="" V2:AppType="" V2:AllAppsFullScreen="">
    <ReturnCodeActions>
      <ReturnCodeAction ReturnCode="0" Action="RestartShell"/>
      <ReturnCodeAction ReturnCode="-1" Action="RestartDevice"/>
      <ReturnCodeAction ReturnCode="255" Action="ShutdownDevice"/>
      <ReturnCodeAction ReturnCode="1" Action="DoNothing"/>
    </ReturnCodeActions>
    <DefaultAction Action="RestartDevice"/>
  </Shell>
</Profile>
```

### AppType


**Desktop application**

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


**UWP application**

In this example, the Weather app is executed in full screen.

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

## Configs

Under `Configs`, define one or more user accounts and their association with a profile.

You can specify a name, SID or AutologonAccount

When the user account signs in, the associated Shell Launcher profile is applied, loading the application specified in the profile.

```xml
<Configs>
  <Config>
    <AutoLogonAccount/>
    <Profile Id=""/>
  </Config>
</Configs>
```

## Example

[!INCLUDE [quickstart-xml](includes/quickstart-xml.md)]

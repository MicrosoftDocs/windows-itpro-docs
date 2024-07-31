---
title: Create a Shell Launcher configuration file
description: Learn how to create an XML file to configure a device with Shell Launcher.
ms.date: 02/12/2024
ms.topic: how-to
---

# Create a Shell Launcher configuration file

To configure Shell Launcher, you must create and apply a configuration XML file to your devices. The configuration file must conform to a *schema*, as defined in [Shell Launcher XML Schema Definition (XSD)](xsd.md).

This article describes how to configure a Shell Launcher configuration file, including practical examples.

Let's start by looking at the basic structure of the XML file. A Shell Launcher configuration file contains:

- One or multiple `profiles`. Each `profile` defines:
  - the application that replaces the standard Windows shell (`Explorer.exe`), which is executed when a user signs in
  - the default action to take when the application exits, and actions when the application exits with a specific return code
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

## Versioning

The Shell Launcher configuration XML is versioned. The version is defined in the XML root element, and it's used to determine which schema to use to validate the XML file. The version is also used to determine which features are available for the configuration. Here's a table of the versions, aliases used in the documentation examples, and namespaces:

| Version | Alias | Namespace |
|-|-|-|
|Windows 10|`V2`|http://schemas.microsoft.com/ShellLauncher/2019/Configuration|
|Windows 10|default|http://schemas.microsoft.com/ShellLauncher/2018/Configuration|

To authorize a compatible configuration XML that includes version-specific elements and attributes, always include the namespace of the add-on schemas, and decorate the attributes and elements accordingly with the namespace alias. For example, to configure the kiosk application to execute in full screen, use the below example. Note the alias `V2` associated to `http://schemas.microsoft.com/ShellLauncher/2019/Configuration` namespace, and the alias is tagged on the `AppType` and `AllAppsFullScreen` properties inline.

```xml
<?xml version="1.0" encoding="utf-8" ?>
<ShellLauncherConfiguration
  xmlns="http://schemas.microsoft.com/ShellLauncher/2018/Configuration"
  xmlns:V2="http://schemas.microsoft.com/ShellLauncher/2019/Configuration">
  <Profiles>
    <Profile Id="{GUID}">
      <!-- Add configuration here as needed -->
      <Shell Shell="%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" V2:AppType="Desktop" V2:AllAppsFullScreen="true">
    </Profile>
  </Profiles>
  <Configs>
    <Config>
      <!-- Add configuration here as needed -->
    </Config>
  </Configs>
</ShellLauncherConfiguration>
```

Here you can find the [Shell Launcher XML Schema Definitions (XSDs)](xsd.md).

## Profiles

A configuration file can contain one or more profiles. Each profile has a unique identifier `Profile Id` and, optionally, a `Name`. For example:

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
|`Shell`| Application that is used as a Windows shell. |- For Universal Windows Platform (UWP) apps, you must provide the App User Model ID (AUMID). Learn how to [Find the Application User Model ID of an installed app](../../store/find-aumid.md).<br>- For desktop apps, specify the full path of the executable, which can contain system environment variables in the form of `%variableName%`. You can also specify any parameters that the app might require. |
|`V2:AppType`| Defines the type of application. |Allowed values are `Desktop` and `UWP`.|
|`V2:AllAppsFullScreen` | Boolean value that defines if all applications are executed in full screen. |- When set to `true`, Shell Launcher runs every app in full screen, or maximized for desktop apps.<br>- When set to `false` or not set, only the custom shell app runs in full screen; other apps launched by the user run in windowed mode.|

Example:

```xml
<Profile Id="{GUID}">
  <Shell Shell="" V2:AppType="" V2:AllAppsFullScreen="">
    <!-- Add configuration here as needed -->
  </Shell>
</Profile>
```

In the next example, the Weather app is executed in full screen.

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

In the next example, Microsoft Edge is executed in full screen, opening a website. The website is reloaded after 2 minutes of inactivity.

```xml
<Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}">
    <Shell Shell="%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe --kiosk https://www.contoso.com --edge-kiosk-type=fullscreen --kiosk-idle-timeout-minutes=2" V2:AppType="Desktop" V2:AllAppsFullScreen="true">
        <DefaultAction Action="RestartShell"/>
    </Shell>
</Profile>
```

#### ReturnCodeActions

Shell Launcher defines four actions to handle app exits. You can customize Shell Launcher and use the actions based on different exit code. Here are the `ReturnCodeActions` enums:

- `RestartShell`
- `RestartDevice`
- `ShutdownDevice`
- `DoNothing`

The actions can be used as default action, or mapped to a specific exit code. Refer to [Shell Launcher](/windows-hardware/customize/enterprise/wesl-usersettingsetcustomshell) to learn how to use exit codes with Shell Launcher WMI.

You can specify at most four custom actions mapping to four exit codes, and one default action for all other exit codes. When an app exits, and if the exit code isn't found in the custom action mapping, or there's no default action defined, nothing happens. For this reason, you should at least define `DefaultAction`.

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

## Configs

Under `Configs`, define one or more user accounts and their association with a profile.

Individual accounts are specified using `<Account Name=""/>`.

> [!IMPORTANT]
> Before applying the Shell Launcher configuration, make sure the specified user account is available on the device, otherwise it fails.
>
> For both domain and Microsoft Entra accounts, as long as the device is Active Directory joined or Microsoft Entra joined, the account can be discovered in the domain forest or tenant that the device is joined to. For local accounts, it is required that the account exist before you configure the account for Shell Launcher.

### Local user

Local account can be entered as `devicename\user`, `.\user`, or just `user`.

```xml
<Config>
  <Account Name="Learn Example"/>
  <Profile Id="{GUID}"/>
</Config>
```

### Active Directory user

Domain accounts must be entered using the format `domain\samAccountName`.

```xml
<Config>
  <Account Name="contoso\user"/>
  <Profile Id="{GUID}"/>
</Config>
```

### Microsoft Entra user

Microsoft Entra accounts must be specified with the format: `AzureAD\{UPN}`. `AzureAD` must be provided *as is*, then follow with the Microsoft Entra user principal name (UPN).

```xml
<Config>
  <Account Name="azuread\user@contoso.onmicrosoft.com"/>
  <Profile Id="{GUID}"/>
</Config>
```

When the user account signs in, the associated Shell Launcher profile is applied, loading the application specified in the profile.

### Autologon account

With `<AutoLogonAccount>`, Shell Launcher creates and manages a user account to automatically sign in after a device restarts. The account is a local standard user named `Kiosk`.

Example:

```xml
<Configs>
  <Config>
    <!--account managed by Shell Launcher-->
    <AutoLogonAccount/>
    <Profile Id="{GUID}"/>
  </Config>
  <Configs>
    <!--local account-->
    <Account Name="Learn Example"/>
    <Profile ID="{GUID}"/>
  </Configs>
  <Configs>
    <!--Microsoft Entra account-->
    <Account Name="azuread\kiosk@contoso.com"/>
    <Profile ID="{GUID}"/>
  </Configs>
</Configs>
```

## Example

Here's a complete example of a Shell Launcher configuration file, with two profiles and three configs:

```xml
<?xml version="1.0" encoding="utf-8"?>
<ShellLauncherConfiguration xmlns="http://schemas.microsoft.com/ShellLauncher/2018/Configuration" xmlns:V2="http://schemas.microsoft.com/ShellLauncher/2019/Configuration">
  <Profiles>
    <DefaultProfile>
      <Shell Shell="%SystemRoot%\explorer.exe" />
    </DefaultProfile>
    <Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F79}" Name="Weather">
      <Shell Shell="Microsoft.BingWeather_8wekyb3d8bbwe!App" V2:AppType="UWP">
        <DefaultAction Action="RestartShell" />
      </Shell>
    </Profile>
    <Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}" Name="Edge">
      <Shell Shell="%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe --kiosk https://www.contoso.com --edge-kiosk-type=fullscreen --kiosk-idle-timeout-minutes=2" V2:AppType="Desktop" V2:AllAppsFullScreen="true">
        <ReturnCodeActions>
          <ReturnCodeAction ReturnCode="0" Action="RestartShell" />
          <ReturnCodeAction ReturnCode="-1" Action="RestartDevice" />
          <ReturnCodeAction ReturnCode="255" Action="ShutdownDevice" />
        </ReturnCodeActions>
        <DefaultAction Action="RestartShell" />
      </Shell>
    </Profile>
  </Profiles>
  <Configs>
    <Config>
      <AutoLogonAccount />
      <Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}" />
    </Config>
    <Config>
      <Account Name="azuread\kiosk1@contoso.onmicrosoft.com" />
      <Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F79}" />
    </Config>
    <Config>
      <Account Name="azuread\kiosk2@contoso.onmicrosoft.com" />
      <Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}" />
    </Config>
  </Configs>
</ShellLauncherConfiguration>
```

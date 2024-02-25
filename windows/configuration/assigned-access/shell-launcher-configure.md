---
title: Configure devices with Shell Launcher
description: Learn how to configure devices with Shell Launcher.
ms.date: 05/12/2023
ms.topic: how-to
---

## Configure devices with Shell Launcher

Shell Launcher is an Assigned Access configuration that replaces the default Windows Explorer shell (`explorer.exe`) with the `CustomShellHost.exe` application. CustomShellHost can launch a Windows desktop application or a UWP app.

>[!NOTE]
>Shell Launcher controls which application the user sees as the shell after sign-in. It doesn't prevent the user from accessing other desktop applications and system components.
>
>Methods of controlling access to other desktop applications and system components can be used in addition to using the Shell Launcher. These methods include, but are not limited to:
>- [Group Policy](https://www.microsoft.com/download/details.aspx?id=25250) - example: Prevent access to registry editing tools
>- [AppLocker](/windows/security/threat-protection/windows-defender-application-control/applocker/applocker-overview) - Application control policies
>- [Mobile Device Management](/windows/client-management/mdm) - Enterprise management of device security policies

You can configure Shell Launcher via [PowerShell](#configure-a-custom-shell-using-powershell) and [CSP](#configure-a-custom-shell-in-mdm).

Shell Launcher offers the following features:

- You can use a custom Windows desktop application that can then launch UWP apps, such as *Settings* or *Touch Keyboard*
- From a custom UWP shell, you can launch secondary views displayed on multiple monitors
- The custom shell app runs in full screen, and can run other apps in full screen on user's demand

For sample XML configurations for the different app combinations, see [Samples for Shell Launcher v2](https://github.com/Microsoft/Windows-iotcore-samples/tree/develop/Samples/ShellLauncherV2).

## Requirements

>[!WARNING]
>
>- Windows 10 doesn't support setting a custom shell prior to OOBE. If you do, you won't be able to deploy the resulting image.
>- Shell Launcher doesn't support a custom shell with an application that launches a different process and exits. For example, you cannot specify **write.exe** in Shell Launcher. Shell Launcher launches a custom shell and monitors the process to identify when the custom shell exits. **Write.exe** creates a 32-bit wordpad.exe process and exits. Because Shell Launcher is not aware of the newly created wordpad.exe process, Shell Launcher will take action based on the exit code of **Write.exe**, such as restarting the custom shell.

- A domain, Microsoft Entra ID, or local user account.
- A Windows application that is installed for that account. The app can be your own company application or a common app like Internet Explorer.

[See the technical reference for the shell launcher component.](/windows-hardware/customize/enterprise/shell-launcher)

## Configure a custom shell in MDM

You can use XML and a [custom OMA-URI setting](#custom-oma-uri-setting) to configure Shell Launcher in MDM.

### XML for Shell Launcher configuration

The following XML sample works for **Shell Launcher v1**:

```xml
<?xml version="1.0" encoding="utf-8"?>
<ShellLauncherConfiguration xmlns="http://schemas.microsoft.com/ShellLauncher/2018/Configuration">
  <Profiles>
    <Profile ID="{24A7309204F3F-44CC-8375-53F13FE213F7}">
      <Shell Shell="%ProgramFiles%\Internet Explorer\iexplore.exe -k www.bing.com" />
    </Profile>
  </Profiles>
  <Configs>
    <!--local account-->
    <Account Name="ShellLauncherUser"/>
    <Profile ID="{24A7309204F3F-44CC-8375-53F13FE213F7}"/>
  </Configs>
</ShellLauncherConfiguration>
```

For **Shell Launcher v2**, you can use UWP app type for `Shell` by specifying the v2 namespace, and use `rs5:AppType` to specify the type, as shown in the following example. If `rs5:AppType` isn't specified, it implies the shell is Win32 app.

```xml
<?xml version="1.0" encoding="utf-8"?>
<ShellLauncherConfiguration
xmlns="http://schemas.microsoft.com/ShellLauncher/2018/Configuration"
xmlns:rs5="http://schemas.microsoft.com/ShellLauncher/2019/Configuration">
  <Profiles>
    <DefaultProfile>
      <Shell Shell="Microsoft.BingWeather_8wekyb3d8bbwe!App" rs5:AppType="UWP" rs5:AllAppsFullScreen="true">
        <DefaultAction Action="RestartShell"/>
      </Shell>
    </DefaultProfile>
  </Profiles>
  <Configs/>
</ShellLauncherConfiguration>
```

>[!TIP]
>In the XML for Shell Launcher v2, note the **AllAppsFullScreen** attribute. When set to **True**, Shell Launcher will run every app in full screen, or maximized for desktop apps. When this attribute is set to **False** or not set, only the custom shell app runs in full screen; other apps launched by the user will run in windowed mode.

[Get XML examples for different Shell Launcher v2 configurations.](https://github.com/Microsoft/Windows-iotcore-samples/tree/develop/Samples/ShellLauncherV2)

### Custom OMA-URI setting

In your MDM service, you can create a [custom OMA-URI setting](/intune/custom-settings-windows-10) to configure Shell Launcher v1 or v1. (The [XML](#xml-for-shell-launcher-configuration) that you use for your setting determines whether you apply Shell Launcher v1 or v2.)

The OMA-URI path is `./Device/Vendor/MSFT/AssignedAccess/ShellLauncher`.

For the value, you can select data type `String` and paste the desired configuration file content into the value box. If you wish to upload the xml instead of pasting the content, choose data type `String (XML file)`.

![Screenshot of custom OMA-URI settings.](images/slv2-oma-uri.png)

After you configure the profile containing the custom Shell Launcher setting, select **All Devices** or selected groups of devices to apply the profile to. Don't assign the profile to users or user groups.

## Configure a custom shell using PowerShell


## default action, custom action, exit code

Shell launcher defines four actions to handle app exits, you can customize shell launcher and use these actions based on different exit code.

| Value | Description |
|--|--|
| 0 | Restart the shell |
| 1 | Restart the device |
| 2 | Shut down the device |
| 3 | Do nothing |

These actions can be used as default action, or can be mapped to a specific exit code. Refer to [Shell Launcher](/windows-hardware/customize/enterprise/wesl-usersettingsetcustomshell) to see how these codes with Shell Launcher WMI.

To configure these actions with Shell Launcher CSP, use below syntax in the shell launcher configuration xml. You can specify at most four custom actions mapping to four exit codes, and one default action for all other exit codes. When app exits and if the exit code is not found in the custom action mapping, or there is no default action defined, it will be no-op, i.e. nothing happens. So it's recommended to at least define DefaultAction. [Get XML examples for different Shell Launcher v2 configurations.](https://github.com/Microsoft/Windows-iotcore-samples/tree/develop/Samples/ShellLauncherV2)

``` xml
<ReturnCodeActions>
    <ReturnCodeAction ReturnCode="0" Action="RestartShell"/>
    <ReturnCodeAction ReturnCode="-1" Action="RestartDevice"/>
    <ReturnCodeAction ReturnCode="255" Action="ShutdownDevice"/>
    <ReturnCodeAction ReturnCode="1" Action="DoNothing"/>
</ReturnCodeActions>
<DefaultAction Action="RestartDevice"/>
```

---
title: What is Shell Launcher?
description: Learn how to configure devices with Shell Launcher.
ms.date: 06/18/2024
ms.topic: overview
---

# What is Shell Launcher?

Shell Launcher is a Windows feature that you can use to replace the default Windows Explorer shell (`Explorer.exe`) with a Windows desktop application or a Universal Windows Platform (UWP) app.

Practical examples include:

- Public browsing
- Interactive digital signage
- ATMs

Shell Launcher controls which application the user sees as the shell after sign-in. It doesn't prevent the user from accessing other desktop applications and system components. From a custom shell, you can launch secondary views displayed on multiple monitors, or launch other apps in full screen on user's demand.

With Shell Launcher, you can use features and methods to control access to other applications or system components. These methods include, but aren't limited to:

- Configuration Service Provider (CSP): you can use a Mobile Device Management (MDM) solution like Microsoft Intune
- Group policy (GPO)
- [AppLocker](/windows/security/threat-protection/windows-defender-application-control/applocker/applocker-overview)

Shell Launcher is part of the [Assigned Access](../overview.md) feature, which allows you to configure kiosks or restricted user experiences. To learn about the differences between Shell Launcher and the other options offered by Assigned Access, see [Windows kiosks and restricted user experiences](../index.md).

[!INCLUDE [shell-launcher](../../../../includes/licensing/shell-launcher.md)]

## Limitations

Here are some limitations to consider when using Shell Launcher:

- Windows doesn't support setting a custom shell before the out-of-box experience (OOBE). If you do, you can't deploy the resulting image
- Shell Launcher doesn't support a custom shell with an application that launches a different process and exits. For example, you can't specify `write.exe` in Shell Launcher. Shell Launcher launches a custom shell and monitors the process to identify when the custom shell exits. `Write.exe` creates a 32-bit `wordpad.exe` process and exits. Since Shell Launcher isn't aware of the newly created `wordpad.exe` process, Shell Launcher takes action based on the exit code of `Write.exe`, such as restarting the custom shell

## Configure a device with Shell Launcher

The configuration of Shell Launcher is done using an XML file. The XML file is applied to the device via the [Assigned Access CSP](/windows/client-management/mdm/assignedaccess-csp#shelllauncher), using one of the following options:

- A Mobile Device Management (MDM) solution, like Microsoft Intune
- Provisioning packages
- The MDM Bridge WMI Provider

To learn how to configure the Shell Launcher XML file, see [Create a Shell Launcher configuration file](configuration-file.md).

[!INCLUDE [tab-intro](../../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../../images/icons/intune.svg"::: **Intune/CSP**](#tab/intune)

You can configure devices using a [custom policy][MEM-1] with the [AssignedAccess CSP][WIN-3].

- **Setting:** `./Vendor/MSFT/AssignedAccess/ShellLauncher`
- **Value:** content of the XML configuration file

Assign the policy to a group that contains as members the devices that you want to configure.

#### [:::image type="icon" source="../../images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

[!INCLUDE [provisioning-package-1](../../../../includes/configure/provisioning-package-1.md)]

- **Path:** `SMISettings/ShellLauncher`
- **Value:** depends on specific settings

[!INCLUDE [provisioning-package-2](../../../../includes/configure/provisioning-package-2.md)]

#### [:::image type="icon" source="../../images/icons/powershell.svg"::: **PowerShell**](#tab/ps)

[!INCLUDE [powershell-wmi-bridge-1](../../../../includes/configure/powershell-wmi-bridge-1.md)]

```PowerShell
$shellLauncherConfiguration = @"

# content of the XML configuration file

"@

$namespaceName="root\cimv2\mdm\dmmap"
$className="MDM_AssignedAccess"
$obj = Get-CimInstance -Namespace $namespaceName -ClassName $className
$obj.Configuration = [System.Net.WebUtility]::HtmlEncode($shellLauncherConfiguration)
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

Write-Output "Successfully applied Shell Launcher configuration"
```

[!INCLUDE [powershell-wmi-bridge-2](../../../../includes/configure/powershell-wmi-bridge-2.md)]

---

> [!TIP]
> For practical examples, see the [Quickstart: configure a kiosk experience with Shell Launcher](quickstart-kiosk.md).

## User experience

After the settings are applied, the users that are configured to use Shell Launcher will execute the custom shell after sign-in.

Depending on your configuration, you can have a user to automatically sign in to the device.

## Next steps

> [!div class="nextstepaction"]
> Learn how to configure the Shell Launcher XML file:
>
> [Create a Shell Launcher configuration file](configuration-file.md)

<!--links-->

[MEM-1]: /mem/intune/configuration/custom-settings-windows-10
[MEM-2]: /mem/intune/fundamentals/licenses#device-only-licenses
[WIN-3]: /windows/client-management/mdm/assignedaccess-csp

---
title: What is Shell Launcher?
description: Learn how to configure devices with Shell Launcher.
ms.date: 05/12/2023
ms.topic: overview
---

# What is Shell Launcher?

Shell Launcher is a Windows feature that you can use to replace the default Windows Explorer shell (`explorer.exe`) with the `CustomShellHost.exe` application. CustomShellHost can launch a Windows desktop application or a UWP app.

Practical examples include:

- Public kiosks
- ATMs

Shell Launcher controls which application the user sees as the shell after sign-in. It doesn't prevent the user from accessing other desktop applications and system components. From a custom shell, you can launch secondary views displayed on multiple monitors, or launch other apps in full screen on user's demand.

Methods of controlling access to other desktop applications and system components can be used with Shell Launcher. These methods include, but are not limited to:

- Configuration Service Provider (CSP): you can use a Mobile Device Management (MDM) solution like Microsoft Intune
- Group policy (GPO)
- [AppLocker](/windows/security/threat-protection/windows-defender-application-control/applocker/applocker-overview)

[!INCLUDE [shell-launcher](../../../../includes/licensing/shell-launcher.md)]

## Limitations

Here are some limitations to consider when using Shell Launcher:

- Windows doesn't support setting a custom shell prior to out-of-box experience OOBE. If you do, you can't deploy the resulting image
- Shell Launcher doesn't support a custom shell with an application that launches a different process and exits. For example, you can't specify `write.exe` in Shell Launcher. Shell Launcher launches a custom shell and monitors the process to identify when the custom shell exits. `Write.exe` creates a 32-bit `wordpad.exe` process and exits. Since Shell Launcher is not aware of the newly created `wordpad.exe` process, Shell Launcher will take action based on the exit code of `Write.exe`, such as restarting the custom shell.

## Configure a device with Shell Launcher

[!INCLUDE [tab-intro](../../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../../images/icons/intune.svg"::: **Intune/CSP**](#tab/intune)

You can configure devices using a [custom policy][MEM-1] with the [AssignedAccess CSP][WIN-3].

- **Setting:** `./Vendor/MSFT/AssignedAccess/ShellLauncher`
- **Value:** content of the XML configuration file

#### [:::image type="icon" source="../../images/icons/powershell.svg"::: **PowerShell**](#tab/ps)

---

Depending on your configuration method, you can have a user to automatically sign in to the device.

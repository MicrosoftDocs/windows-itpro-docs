---
title: Understand App Control script enforcement
description: App Control script enforcement
ms.manager: jsuther
ms.date: 09/11/2024
ms.topic: conceptual
ms.localizationpriority: medium
---

# Script enforcement with App Control for Business

[!INCLUDE [Feature availability note](../includes/feature-availability-note.md)]

> [!IMPORTANT]
> Option **11 Disabled:Script Enforcement** is not supported on **Windows Server 2016** or on **Windows 10 1607 LTSB** and should not be used on those platforms. Doing so will result in unexpected script enforcement behaviors.

## Script enforcement overview

By default, script enforcement is enabled for all App Control policies unless the option **11 Disabled:Script Enforcement** is set in the policy. App Control script enforcement involves a handshake between an enlightened script host, such as PowerShell, and App Control. However, the script host handles the actual enforcement behavior. Some script hosts, like the Microsoft HTML Application Host (mshta.exe), block all code execution if any App Control UMCI policy is active. Most script hosts first ask App Control whether a script should be allowed to run based on the App Control policies currently active. The script host then either blocks, allows, or changes *how* the script is run to best protect the user and the device.

Validation for signed scripts is done using the [WinVerifyTrust API](/windows/win32/api/wintrust/nf-wintrust-winverifytrust). To pass validation, the signature root must be present in the trusted root store on the device and your App Control policy must allow it. This behavior is different from App Control validation for executable files, which doesn't require installation of the root certificate.

App Control shares the *AppLocker - MSI and Script* event log for all script enforcement events. Whenever a script host asks App Control if a script should be allowed, an event is logged with the answer App Control returned to the script host. For more information on App Control script enforcement events, see [Understanding App Control events](../operations/event-id-explanations.md#app-control-block-events-for-packaged-apps-msi-installers-scripts-and-com-objects).

> [!NOTE]
> When a script runs that is not allowed by policy, App Control raises an event indicating that the script was "blocked." However, the actual script enforcement behavior is handled by the script host and may not actually completely block the file from running.
>
> Also be aware that some script hosts may change how they behave even if an App Control policy is in audit mode only. You should review the script host specific information in this article and test thoroughly within your environment to ensure the scripts you need to run are working properly.

## Enlightened script hosts that are part of Windows

### PowerShell

Your App Control policies must allow all PowerShell scripts (.ps1), modules (.psm1), and manifests (.psd1) for them to run with Full Language rights.

Your App Control policies must also allow any **dependent modules** that are loaded by an allowed module, and module functions must be exported explicitly by name when App Control is enforced. Modules that don't specify any exported functions (no export name list) still load but no module functions are accessible. Modules that use wildcards (\*) in their name will fail to load.

Any PowerShell script that isn't allowed by App Control policy still runs, but only in Constrained Language Mode.

PowerShell **dot-sourcing** isn't recommended. Instead, scripts should use PowerShell modules to provide common functionality. If an allowed script file does try to run dot-sourced script files, those script files must also pass the policy.

App Control puts **interactive PowerShell** into Constrained Language Mode if any App Control UMCI policy is enforced and *any* active App Control policy enables script enforcement, even if that policy is in audit mode. To run interactive PowerShell with Full Language rights, you must disable script enforcement for *all* policies.

For more information, see [About Language Modes](/powershell/module/microsoft.powershell.core/about/about_language_modes) and [Constrained Language Mode](https://devblogs.microsoft.com/powershell/powershell-constrained-language-mode/).

### VBscript, cscript, and jscript

Your App Control policies must allow all scripts run using the Windows Based Script Host (wscript.exe) or the Microsoft Console Based Script Host (cscript.exe). If not, the script is blocked.

### Microsoft HTML Application Host (MSHTA) and MSXML

All code execution using MSHTA or MSXML is blocked if any App Control policy with script enforcement is active, even if that policy is in audit mode.

### COM objects

App Control additionally enforces a restricted allowlist for COM objects that your App Control policy can expand or further restrict. COM object enforcement **isn't** affected by option **11 Disabled:Script Enforcement**. For more information on how to allow or deny COM objects, see [Allow COM object registration](allow-com-object-registration-in-appcontrol-policy.md).

## Scripts that aren't directly controlled by App Control

App Control doesn't directly control code run via the Windows Command Processor (cmd.exe), including .bat/.cmd script files. However, anything that such a batch script tries to run is subject to App Control control. If you don't need to run cmd.exe, it's recommended to block it outright or allow it only by exception based on the calling process. See [Use an App Control for Business policy to control specific plug-ins, add-ins, and modules](use-appcontrol-policy-to-control-specific-plug-ins-add-ins-and-modules.md).

App Control doesn't control scripts run through an unenlightened script host, such as many 3rd-party Java or Python engines. If your App Control policy allows an unenlightened script host to run, then you implicitly allow all scripts run through that host. For non-Microsoft script hosts, you should check with the software vendor whether their script hosts are enlightened to App Control policy.

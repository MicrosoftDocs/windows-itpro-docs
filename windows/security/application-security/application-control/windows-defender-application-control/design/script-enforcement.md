---
title: Understand WDAC script enforcement
description: WDAC script enforcement
ms.manager: jsuther
ms.date: 05/26/2023
ms.topic: conceptual
ms.localizationpriority: medium
---

# Script enforcement with Windows Defender Application Control (WDAC)

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

> [!IMPORTANT]
> Option **11 Disabled:Script Enforcement** is not supported on **Windows Server 2016** or on **Windows 10 1607 LTSB** and should not be used on those platforms. Doing so will result in unexpected script enforcement behaviors.

## Script enforcement overview

By default, script enforcement is enabled for all WDAC policies unless the option **11 Disabled:Script Enforcement** is set in the policy. WDAC script enforcement involves a handshake between an enlightened script host, such as PowerShell, and WDAC. However, the script host handles the actual enforcement behavior. Some script hosts, like the Microsoft HTML Application Host (mshta.exe), block all code execution if any WDAC UMCI policy is active. Most script hosts first ask WDAC whether a script should be allowed to run based on the WDAC policies currently active. The script host then either blocks, allows, or changes *how* the script is run to best protect the user and the device.

Validation for signed scripts is done using the [WinVerifyTrust API](/windows/win32/api/wintrust/nf-wintrust-winverifytrust). To pass validation, the signature root must be present in the trusted root store on the device and your WDAC policy must allow it. This behavior is different from WDAC validation for executable files, which doesn't require installation of the root certificate.

WDAC shares the *AppLocker - MSI and Script* event log for all script enforcement events. Whenever a script host asks WDAC if a script should be allowed, an event is logged with the answer WDAC returned to the script host. For more information on WDAC script enforcement events, see [Understanding Application Control events](/windows/security/threat-protection/windows-defender-application-control/event-id-explanations#windows-applocker-msi-and-script-log).

> [!NOTE]
> When a script runs that is not allowed by policy, WDAC raises an event indicating that the script was "blocked." However, the actual script enforcement behavior is handled by the script host and may not actually completely block the file from running.
>
> Also be aware that some script hosts may change how they behave even if a WDAC policy is in audit mode only. You should review the script host specific information in this article and test thoroughly within your environment to ensure the scripts you need to run are working properly.

## Enlightened script hosts that are part of Windows

### PowerShell

Your WDAC policies must allow all PowerShell scripts (.ps1), modules (.psm1), and manifests (.psd1) for them to run with Full Language rights.

Your WDAC policies must also allow any **dependent modules** that are loaded by an allowed module, and module functions must be exported explicitly by name when WDAC is enforced. Modules that don't specify any exported functions (no export name list) still load but no module functions are accessible. Modules that use wildcards (\*) in their name will fail to load.

Any PowerShell script that isn't allowed by WDAC policy still runs, but only in Constrained Language Mode.

PowerShell **dot-sourcing** isn't recommended. Instead, scripts should use PowerShell modules to provide common functionality. If an allowed script file does try to run dot-sourced script files, those script files must also pass the policy.

WDAC puts **interactive PowerShell** into Constrained Language Mode if any WDAC UMCI policy is enforced and *any* active WDAC policy enables script enforcement, even if that policy is in audit mode. To run interactive PowerShell with Full Language rights, you must disable script enforcement for *all* policies.

For more information, see [About Language Modes](/powershell/module/microsoft.powershell.core/about/about_language_modes) and [Constrained Language Mode](https://devblogs.microsoft.com/powershell/powershell-constrained-language-mode/).

### VBscript, cscript, and jscript

Your WDAC policies must allow all scripts run using the Windows Based Script Host (wscript.exe) or the Microsoft Console Based Script Host (cscript.exe). If not, the script is blocked.

### Microsoft HTML Application Host (MSHTA) and MSXML

All code execution using MSHTA or MSXML is blocked if any WDAC policy with script enforcement is active, even if that policy is in audit mode.

### COM objects

WDAC additionally enforces a restricted allowlist for COM objects that your WDAC policy can expand or further restrict. COM object enforcement **isn't** affected by option **11 Disabled:Script Enforcement**. For more information on how to allow or deny COM objects, see [Allow COM object registration](/windows/security/threat-protection/windows-defender-application-control/allow-com-object-registration-in-windows-defender-application-control-policy).

## Scripts that aren't directly controlled by WDAC

WDAC doesn't directly control code run via the Windows Command Processor (cmd.exe), including .bat/.cmd script files. However, anything that such a batch script tries to run is subject to WDAC control. If you don't need to run cmd.exe, it's recommended to block it outright or allow it only by exception based on the calling process. See [Use a Windows Defender Application Control policy to control specific plug-ins, add-ins, and modules](/windows/security/threat-protection/windows-defender-application-control/use-windows-defender-application-control-policy-to-control-specific-plug-ins-add-ins-and-modules).

WDAC doesn't control scripts run through an unenlightened script host, such as many 3rd-party Java or Python engines. If your WDAC policy allows an unenlightened script host to run, then you implicitly allow all scripts run through that host. For non-Microsoft script hosts, you should check with the software vendor whether their script hosts are enlightened to WDAC policy.

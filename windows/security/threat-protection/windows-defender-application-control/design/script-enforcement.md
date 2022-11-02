---
title: Understand WDAC script enforcement
description: WDAC script enforcement
keywords: security, malware
ms.prod: windows-client
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: jogeurte
ms.author: jogeurte
ms.manager: jsuther
manager: aaroncz
ms.date: 11/02/2022
ms.technology: itpro-security
ms.topic: article
ms.localizationpriority: medium
---

# Script enforcement with Windows Defender Application Control (WDAC)

**Applies to:**

- Windows 10
- Windows 11
- Windows Server 2016 and above

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

## Script enforcement overview

By default, script enforcement is enabled for all WDAC policies unless the option **11 Disabled:Script Enforcement** is set in the policy. WDAC script enforcement involves a handshake between an enlightened script host, such as PowerShell, and WDAC. The actual enforcement behavior, however, is handled entirely by the script host. Some script hosts, like the Microsoft HTML Application Host (mshta.exe), simply block all code execution if any WDAC UMCI policy is active. Most script hosts first ask WDAC whether a script should be allowed to run based on the WDAC policies currently active. The script host then either blocks, allows, or changes *how* the script is run to best protect the user and the device.

WDAC shares the *AppLocker - MSI and Script* event log for all script enforcement events. Whenever a script host asks WDAC if a script should be allowed, an event will be logged with the answer WDAC returned to the script host. For more information on WDAC script enforcement events, see [Understanding Application Control events](/windows/security/threat-protection/windows-defender-application-control/event-id-explanations#windows-applocker-msi-and-script-log).

> [!IMPORTANT]
> When a script runs that is not allowed by policy, WDAC raises an event indicating that the script was "blocked". However, the actual script enforcement behavior is handled by the script host and may not actually completely block the file from running.
>
> Also be aware that some script hosts may change how they behave even if a WDAC policy is in audit mode only. You should review the information below for each script host and test thoroughly within your environment to ensure the scripts you need to run are working properly.

## Enlightened script hosts that are part of Windows

### PowerShell

All PowerShell scripts (.ps1), modules (.psm1), and manifests (.psd1) must be allowed by WDAC policy in order to run with Full Language rights.

Any **dependent modules** that are loaded by an allowed module must also be allowed by WDAC policy, and module functions must be exported explicitly by name when WDAC is enforced. Modules that do not specify any exported functions (no export name list) will still load but no module functions will be accessible. Modules that use wildcards (\*) in their name will fail to load.

Any PowerShell script that isn't allowed by WDAC policy will still run, but only in Constrained Language Mode.

PowerShell **dot-sourcing** isn't recommended. Instead, scripts should use PowerShell modules to provide common functionality. If a script file that is allowed by WDAC does try to run dot-sourced script files, those script files must also be allowed by the policy.

WDAC will put **interactive PowerShell** into Constrained Language Mode if any WDAC UMCI policy is enforced and *any* active WDAC policy enables script enforcement, even if that policy is in audit mode. To run interactive PowerShell with Full Language rights, you must disable script enforcement for *all* policies.

For more information on PowerShell language modes, see [About Language Modes](/powershell/module/microsoft.powershell.core/about/about_language_modes).

### VBscript, cscript, and jscript

All scripts run using the Windows Based Script Host (wscript.exe) or the Microsoft Console Based Script Host (cscript.exe) must be allowed by the WDAC policy. If not, the script will be blocked.

### Microsoft HTML Application Host (MSHTA) and MSXML

If any WDAC policy is active that enables script enforcement, even if that policy is in audit mode, all code execution using MSHTA or MSXML will be blocked.

### COM objects

WDAC additionally enforces a restricted allowlist for COM objects that can be expanded or further restricted by your WDAC policy. COM object enforcement **isn't** affected by option **11 Disabled:Script Enforcement**. For more information on how to allow or deny COM objects, see [Allow COM object registration](/windows/security/threat-protection/windows-defender-application-control/allow-com-object-registration-in-windows-defender-application-control-policy).

## Scripts that aren't directly controlled by WDAC

WDAC doesn't directly control code run via the Windows Command Processor (cmd.exe), including .bat/.cmd script files. However, anything that such a batch script tries to run will be subject to WDAC control. If you don't need to run cmd.exe, it's recommended to block it outright or allow it only by exception based on the calling process. See [Use a Windows Defender Application Control policy to control specific plug-ins, add-ins, and modules](/windows/security/threat-protection/windows-defender-application-control/use-windows-defender-application-control-policy-to-control-specific-plug-ins-add-ins-and-modules).

WDAC doesn't control scripts run through an unenlightened script host, such as many 3rd-party Java or Python engines. If your WDAC policy allows an unenlightened script host to run, then you implicitly allow all scripts run through that host. For non-Microsoft script hosts, you should check with the software vendor whether their script hosts are enlightened to WDAC policy.

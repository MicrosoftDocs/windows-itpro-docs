---
title: Determine your application control objectives
description: Determine which applications to control and how to control them by comparing Software Restriction Policies (SRP) and AppLocker.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/21/2017
---

# Determine your application control objectives

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This article helps with decisions you need to make to determine what applications to control and how to control them by comparing Software Restriction Policies (SRP) and AppLocker.

AppLocker is effective for organizations with app restriction requirements whose environments have a simple topography and whose application control policy goals are straightforward. For example, AppLocker can benefit an environment where non-employees have access to computers connected to the organizational network, such as a school or library. Large organizations also benefit from AppLocker policy deployment when the goal is a detailed level of control on the PCs they manage for a relatively small number of apps.

There are management and maintenance costs associated with a list of allowed apps. In addition, the purpose of application control policies is to allow or prevent employees from using apps that might actually be productivity tools. Keeping employees or users productive while implementing the policies can cost time and effort. Lastly, creating user support processes and network support processes to keep the organization productive are also concerns.

Use the following table to develop your own objectives and determine which application control feature best addresses those objectives.

|Application control function|SRP|AppLocker|
|--- |--- |--- |
|Scope|SRP policies can be applied to all Windows operating systems beginning with Windows XP and Windows Server 2003.|AppLocker policies apply only to the support versions of Windows listed in [Requirements to use AppLocker](requirements-to-use-applocker.md).|
|Policy creation|SRP policies are maintained through Group Policy and only the administrator of the GPO can update the SRP policy. The administrator on the local computer can modify the SRP policies defined in the local GPO.|AppLocker policies are maintained through Group Policy and only the administrator of the GPO can update the policy. The administrator on the local computer can modify the AppLocker policies defined in the local GPO.<br/><br/>AppLocker permits customization of error messages to direct users to a Web page for help.|
|Policy maintenance|SRP policies must be updated by using the Local Security Policy snap-in (if the policies are created locally) or the Group Policy Management Console (GPMC).|AppLocker policies can be updated by using the Local Security Policy snap-in, if the policies are created locally, or the GPMC, or the Windows PowerShell AppLocker cmdlets.|
|Policy application|SRP policies are distributed through Group Policy.|AppLocker policies are distributed through Group Policy.|
|Enforcement mode|SRP works in the "blocklist mode" where administrators can create rules for files that they don't want to allow in this Enterprise, but the rest of the files are allowed to run by default.<br/><br/>SRP can also be configured in the "allowlist mode" such that by default all files are blocked and administrators need to create allow rules for files that they want to allow.|By default, AppLocker works in allowlist mode. Only those files are allowed to run for which there's a matching allow rule.|
|File types that can be controlled|SRP can control the following file types:<li>Executables<li>DLLs<li>Scripts<li>Windows Installers<br/><br/>SRP can't control each file type separately. All SRP rules are in a single rule collection.|AppLocker can control the following file types:<li>Executables<li>DLLs<li>Scripts<li>Windows Installers<li>Packaged apps and installers<br/><br/>AppLocker maintains a separate rule collection for each of the five file types.|
|Designated file types|SRP supports an extensible list of file types that are considered executable. You can add extensions for files that should be considered executable.|AppLocker doesn't support this addition of extension. AppLocker currently supports the following file extensions:<li>Executables (.exe, .com)<li>DLLs (.ocx, .dll)<li>Scripts (.vbs, .js, .ps1, .cmd, .bat)<li>Windows Installers (.msi, .mst, .msp)<li>Packaged app installers (.appx)|
|Rule types|SRP supports four types of rules:<li>Hash<li>Path<li>Signature<br/><br/>Internet zone|AppLocker supports three types of rules:<li>Hash<li>Path<li>Publisher|
|Editing the hash value|SRP allows you to select a file to hash.|AppLocker computes the hash value itself. Internally it uses the SHA2 Authenticode hash for Portable Executables (exe and DLL) and Windows Installers and an SHA2 flat file hash for the rest.|
|Support for different security levels|With SRP, you can specify the permissions with which an app can run. Then configure a rule such that Notepad always runs with restricted permissions and never with administrative privileges.<br/><br/>SRP on Windows Vista and earlier supported multiple security levels. On Windows 7, that list was restricted to just two levels: Disallowed and Unrestricted (Basic User translates to Disallowed).|AppLocker doesn't support security levels.|
|Manage Packaged apps and Packaged app installers.|Unable|.appx is a valid file type which AppLocker can manage.|
|Targeting a rule to a user or a group of users|SRP rules apply to all users on a particular computer.|AppLocker rules can be targeted to a specific user or a group of users.|
|Support for rule exceptions|SRP doesn't support rule exceptions|AppLocker rules can have exceptions that allow administrators to create rules such as "Allow everything from Windows except for Regedit.exe".|
|Support for audit mode|SRP doesn't support audit mode. The only way to test SRP policies is to set up a test environment and run a few experiments.|AppLocker supports audit mode that allows administrators to test the effect of their policy in the real production environment without impacting the user experience. Once you're satisfied with the results, you can start enforcing the policy.|
|Support for exporting and importing policies|SRP doesn't support policy import/export.|AppLocker supports the importing and exporting of policies. This support by AppLocker allows you to create AppLocker policy on a sample computer, test it out and then export that policy and import it back into the desired GPO.|
|Rule enforcement|Internally, SRP rules enforcement happens in user-mode, which is less secure.|Internally, AppLocker rules for exes and dlls are enforced in kernel-mode, which is more secure than enforcing them in the user-mode.|
 
For more general info, see <a href="applocker-overview.md" data-raw-source="[AppLocker](applocker-overview.md)">AppLocker</a>.

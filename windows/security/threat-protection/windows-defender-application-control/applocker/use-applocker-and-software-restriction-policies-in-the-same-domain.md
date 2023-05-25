---
title: Use AppLocker and Software Restriction Policies in the same domain 
description: This article for IT professionals describes concepts and procedures to help you manage your application control strategy using Software Restriction Policies and AppLocker.
ms.assetid: 2b7e0cec-df62-49d6-a2b7-6b8e30180943
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.topic: conceptual
ms.date: 11/07/2022
ms.technology: itpro-security
---

# Use AppLocker and Software Restriction Policies in the same domain

**Applies to**

- Windows 10
- Windows Server 2016

This article for IT professionals describes concepts and procedures to help you manage your application control strategy using Software Restriction Policies and AppLocker.

> [!IMPORTANT]
> Software Restriction Policies were deprecated beginning with Windows 10 build 1803 and above, and also applies to Windows Server 2019 and above. You should use Windows Defender Application Control (WDAC) or AppLocker to control what software runs.

## Using AppLocker and Software Restriction Policies in the same domain

AppLocker is supported on systems running Windows 8.1. Software Restriction Policies (SRP) is supported on systems running Windows Vista or earlier. You can continue to use SRP for application control on your pre-Windows 7 computers, but use AppLocker for computers running Windows Server 2008 R2, Windows 7 and later. It's recommended that you author AppLocker and SRP rules in separate GPOs and target the GPO with SRP policies to systems running Windows Vista or earlier. When both SRP and AppLocker policies are applied to computers running Windows Server 2008 R2, Windows 7 and later, the SRP policies are ignored.

The following table compares the features and functions of Software Restriction Policies (SRP) and AppLocker.

|Application control function|SRP|AppLocker|
|--- |--- |--- |
|Scope|SRP policies can be applied to all Windows operating systems beginning with Windows XP and Windows Server 2003.|AppLocker policies apply only to Windows Server 2008 R2, Windows 7, and later.|
|Policy creation|SRP policies are maintained through Group Policy and only the administrator of the GPO can update the SRP policy. The administrator on the local computer can modify the SRP policies defined in the local GPO.|AppLocker policies are maintained through Group Policy and only the administrator of the GPO can update the policy. The administrator on the local computer can modify the AppLocker policies defined in the local GPO.<br/><br/>AppLocker permits customization of error messages to direct users to a Web page for help.|
|Policy maintenance|SRP policies must be updated by using the Local Security Policy snap-in (if the policies are created locally) or the Group Policy Management Console (GPMC).|AppLocker policies can be updated by using the Local Security Policy snap-in (if the policies are created locally), or the GPMC, or the Windows PowerShell AppLocker cmdlets.|
|Policy application|SRP policies are distributed through Group Policy.|AppLocker policies are distributed through Group Policy.|
|Enforcement mode|SRP works in the “blocklist mode” where administrators can create rules for files that they don't want to allow in this Enterprise whereas the rest of the file is allowed to run by default.<br/><br/>SRP can also be configured in the “allowlist mode” so that by default all files are blocked. In "allowlist mode", administrators need to create allow rules for files that they want to run.|AppLocker by default works in the “allowlist mode” where only those files are allowed to run for which there's a matching allow rule.|
|File types that can be controlled|SRP can control the following file types:<li>Executables<li>Dlls<li>Scripts<li>Windows Installers<br/><br/>SRP can't control each file type separately. All SRP rules are in a single rule collection.|AppLocker can control the following file types:<li>Executables<li>Dlls<li>Scripts<li>Windows Installers<li>Packaged apps and installers<br/><br/>AppLocker maintains a separate rule collection for each of the five file types.|
|Designated file types|SRP supports an extensible list of file types that are considered executable. Administrators can add extensions for files that should be considered executable.|AppLocker currently supports the following file extensions:<li>Executables (.exe, .com)<li>Dlls (.ocx, .dll)<li>Scripts (.vbs, .js, .ps1, .cmd, .bat)<li>Windows Installers (.msi, .mst, .msp)<li>Packaged app installers (.appx)|
|Rule types|SRP supports four types of rules:<li>Hash<li>Path<li>Signature<li>Internet zone|AppLocker supports three types of rules:<li>File hash<li>Path<li>Publisher|
|Editing the hash value|In Windows XP, you could use SRP to provide custom hash values.<br/><br/>Beginning with Windows 7 and Windows Server 2008 R2, you can only select the file to hash, and not provide the hash value.|AppLocker computes the hash value itself. Internally, it uses the SHA2 Authenticode hash for Portable Executables (exe and dll) and Windows Installers and an SHA2 flat file hash for the rest.|
|Support for different security levels|With SRP, you can specify the permissions with which an app can run. So, you can configure a rule such that Notepad always runs with restricted permissions and never with administrative privileges.<br/><br/>SRP on Windows Vista and earlier supported multiple security levels. On Windows 7, that list was restricted to just two levels: Disallowed and Unrestricted (Basic User translates to Disallowed).|AppLocker doesn't support security levels.|
|Manage Packaged apps and Packaged app installers.|Not supported|.appx is a valid file type which AppLocker can manage.|
|Targeting a rule to a user or a group of users|SRP rules apply to all users on a particular computer.|AppLocker rules can be targeted to a specific user or a group of users.|
|Support for rule exceptions|SRP doesn't support rule exceptions.|AppLocker rules can have exceptions, which allow you to create rules such as “Allow everything from Windows except for regedit.exe”.|
|Support for audit mode|SRP doesn't support audit mode. The only way to test SRP policies is to set up a test environment and run a few experiments.|AppLocker supports audit mode, which allows you to test the effect of their policy in the real production environment without impacting the user experience. Once you're satisfied with the results, you can start enforcing the policy.|
|Support for exporting and importing policies|SRP doesn't support policy import/export.|AppLocker supports the importing and exporting of policies. This support by AppLocker allows you to create AppLocker policy on a sample device, test it out and then export that policy and import it back into the desired GPO.|
|Rule enforcement|Internally, SRP rules enforcement happens in the user-mode, which is less secure.|Internally, AppLocker rules for .exe and .dll files are enforced in the kernel-mode, which is more secure than enforcing them in the user-mode.|

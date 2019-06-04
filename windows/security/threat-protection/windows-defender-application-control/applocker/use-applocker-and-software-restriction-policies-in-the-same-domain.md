---
title: Use AppLocker and Software Restriction Policies in the same domain (Windows 10)
description: This topic for IT professionals describes concepts and procedures to help you manage your application control strategy using Software Restriction Policies and AppLocker.
ms.assetid: 2b7e0cec-df62-49d6-a2b7-6b8e30180943
ms.reviewer: 
ms.author: macapara
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: mjcaparas
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
---

# Use AppLocker and Software Restriction Policies in the same domain

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic for IT professionals describes concepts and procedures to help you manage your application control strategy using Software Restriction Policies and AppLocker.

## Using AppLocker and Software Restriction Policies in the same domain

AppLocker is supported on systems running Windows 7 and above. Software Restriction Policies (SRP) is supported on systems running Windows Vista or earlier. You can continue to use SRP for application control on your pre-Windows 7 computers, but use AppLocker for computers running 
Windows Server 2008 R2, Windows 7 and later. It is recommended that you author AppLocker and SRP rules in separate GPOs and target the GPO with SRP policies to systems running Windows Vista or earlier. When both SRP and AppLocker policies are applied to computers running Windows Server 2008 R2, 
Windows 7 and later, the SRP policies are ignored.

The following table compares the features and functions of Software Restriction Policies (SRP) and AppLocker.
<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Application control function</th>
<th align="left">SRP</th>
<th align="left">AppLocker</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Scope</p></td>
<td align="left"><p>SRP policies can be applied to all Windows operating systems beginning with Windows XP and Windows Server 2003.</p></td>
<td align="left"><p>AppLocker policies apply only to Windows Server 2008 R2, Windows 7, and later.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Policy creation</p></td>
<td align="left"><p>SRP policies are maintained through Group Policy and only the administrator of the GPO can update the SRP policy. The administrator on the local computer can modify the SRP policies defined in the local GPO.</p></td>
<td align="left"><p>AppLocker policies are maintained through Group Policy and only the administrator of the GPO can update the policy. The administrator on the local computer can modify the AppLocker policies defined in the local GPO.</p>
<p>AppLocker permits customization of error messages to direct users to a Web page for help.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Policy maintenance</p></td>
<td align="left"><p>SRP policies must be updated by using the Local Security Policy snap-in (if the policies are created locally) or the Group Policy Management Console (GPMC).</p></td>
<td align="left"><p>AppLocker policies can be updated by using the Local Security Policy snap-in (if the policies are created locally), or the GPMC, or the Windows PowerShell AppLocker cmdlets.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Policy application</p></td>
<td align="left"><p>SRP policies are distributed through Group Policy.</p></td>
<td align="left"><p>AppLocker policies are distributed through Group Policy.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Enforcement mode</p></td>
<td align="left"><p>SRP works in the “deny list mode” where administrators can create rules for files that they do not want to allow in this Enterprise whereas the rest of the file are allowed to run by default.</p>
<p>SRP can also be configured in the “allow list mode” so that by default all files are blocked and administrators need to create allow rules for files that they want to allow.</p></td>
<td align="left"><p>AppLocker by default works in the “allow list mode” where only those files are allowed to run for which there is a matching allow rule.</p></td>
</tr>
<tr class="even">
<td align="left"><p>File types that can be controlled</p></td>
<td align="left"><p>SRP can control the following file types:</p>
<ul>
<li><p>Executables</p></li>
<li><p>Dlls</p></li>
<li><p>Scripts</p></li>
<li><p>Windows Installers</p></li>
</ul>
<p>SRP cannot control each file type separately. All SRP rules are in a single rule collection.</p></td>
<td align="left"><p>AppLocker can control the following file types:</p>
<ul>
<li><p>Executables</p></li>
<li><p>Dlls</p></li>
<li><p>Scripts</p></li>
<li><p>Windows Installers</p></li>
<li><p>Packaged apps and installers</p></li>
</ul>
<p>AppLocker maintains a separate rule collection for each of the five file types.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Designated file types</p></td>
<td align="left"><p>SRP supports an extensible list of file types that are considered executable. Administrators can add extensions for files that should be considered executable.</p></td>
<td align="left"><p>AppLocker currently supports the following file extensions:</p>
<ul>
<li><p>Executables (.exe, .com)</p></li>
<li><p>Dlls (.ocx, .dll)</p></li>
<li><p>Scripts (.vbs, .js, .ps1, .cmd, .bat)</p></li>
<li><p>Windows Installers (.msi, .mst, .msp)</p></li>
<li><p>Packaged app installers (.appx)</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Rule types</p></td>
<td align="left"><p>SRP supports four types of rules:</p>
<ul>
<li><p>Hash</p></li>
<li><p>Path</p></li>
<li><p>Signature</p></li>
<li><p>Internet zone</p></li>
</ul></td>
<td align="left"><p>AppLocker supports three types of rules:</p>
<ul>
<li><p>File hash</p></li>
<li><p>Path</p></li>
<li><p>Publisher</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Editing the hash value</p></td>
<td align="left"><p>In Windows XP, you could use SRP to provide custom hash values.</p>
<p>Beginning with Windows 7 and Windows Server 2008 R2, you can only select the file to hash, not provide the hash value.</p></td>
<td align="left"><p>AppLocker computes the hash value itself. Internally, it uses the SHA2 Authenticode hash for Portable Executables (exe and dll) and Windows Installers and a SHA2 flat file hash for the rest.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Support for different security levels</p></td>
<td align="left"><p>With SRP, you can specify the permissions with which an app can run. So, you can configure a rule such that Notepad always runs with restricted permissions and never with administrative privileges.</p>
<p>SRP on Windows Vista and earlier supported multiple security levels. On Windows 7, that list was restricted to just two levels: Disallowed and Unrestricted (Basic User translates to Disallowed).</p></td>
<td align="left"><p>AppLocker does not support security levels.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Manage Packaged apps and Packaged app installers.</p></td>
<td align="left"><p>Not supported</p></td>
<td align="left"><p>.appx is a valid file type which AppLocker can manage.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Targeting a rule to a user or a group of users</p></td>
<td align="left"><p>SRP rules apply to all users on a particular computer.</p></td>
<td align="left"><p>AppLocker rules can be targeted to a specific user or a group of users.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Support for rule exceptions</p></td>
<td align="left"><p>SRP does not support rule exceptions.</p></td>
<td align="left"><p>AppLocker rules can have exceptions which allow you to create rules such as “Allow everything from Windows except for regedit.exe”.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Support for audit mode</p></td>
<td align="left"><p>SRP does not support audit mode. The only way to test SRP policies is to set up a test environment and run a few experiments.</p></td>
<td align="left"><p>AppLocker supports audit mode which allows you to test the effect of their policy in the real production environment without impacting the user experience. Once you are satisfied with the results, you can start enforcing the policy.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Support for exporting and importing policies</p></td>
<td align="left"><p>SRP does not support policy import/export.</p></td>
<td align="left"><p>AppLocker supports the importing and exporting of policies. This allows you to create AppLocker policy on a sample device, test it out and then export that policy and import it back into the desired GPO.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Rule enforcement</p></td>
<td align="left"><p>Internally, SRP rules enforcement happens in the user-mode which is less secure.</p></td>
<td align="left"><p>Internally, AppLocker rules for .exe and .dll files are enforced in the kernel-mode which is more secure than enforcing them in the user-mode.</p></td>
</tr>
</tbody>
</table>
 
 
 

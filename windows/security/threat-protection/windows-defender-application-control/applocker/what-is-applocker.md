---
title: What Is AppLocker (Windows 10)
description: This topic for the IT professional describes what AppLocker is and how its features differ from Software Restriction Policies.
ms.assetid: 44a8a2bb-0f83-4f95-828e-1f364fb65869
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

# What Is AppLocker?

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic for the IT professional describes what AppLocker is and how its features differ from Software Restriction Policies.

AppLocker advances the app control features and functionality of Software Restriction Policies. AppLocker contains new capabilities and extensions that allow you to create rules to allow or deny apps from running based on unique identities of files and to specify which users or groups can run those apps.

Using AppLocker, you can:

-   Control the following types of apps: executable files (.exe and .com), scripts (.js, .ps1, .vbs, .cmd, and .bat), Windows Installer files (.mst, .msi and .msp), and DLL files (.dll and .ocx), and packaged apps and packaged app installers (appx).
-   Define rules based on file attributes derived from the digital signature, including the publisher, product name, file name, and file version. For example, you can create rules based on the publisher attribute that is persistent through updates, or you can create rules for a specific version of a file.
-   Assign a rule to a security group or an individual user.
-   Create exceptions to rules. For example, you can create a rule that allows all Windows processes to run except Registry Editor (Regedit.exe).
-   Use audit-only mode to deploy the policy and understand its impact before enforcing it.
-   Import and export rules. The import and export affects the entire policy. For example, if you export a policy, all of the rules from all of the rule collections are exported, including the enforcement settings for the rule collections. If you import a policy, all criteria in the existing policy are overwritten.
-   Streamline creating and managing AppLocker rules by using Windows PowerShell cmdlets.

AppLocker helps reduce administrative overhead and helps reduce the organization's cost of managing computing resources by decreasing the number of help desk calls that result from users running unapproved apps

For information about the application control scenarios that AppLocker addresses, see [AppLocker policy use scenarios](applocker-policy-use-scenarios.md).

## What features are different between Software Restriction Policies and AppLocker?

**Feature differences**

The following table compares AppLocker to Software Restriction Policies.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="left">Software Restriction Policies</th>
<th align="left">AppLocker</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Rule scope</p></td>
<td align="left"><p>All users</p></td>
<td align="left"><p>Specific user or group</p></td>
</tr>
<tr class="even">
<td align="left"><p>Rule conditions provided</p></td>
<td align="left"><p>File hash, path, certificate, registry path, and Internet zone</p></td>
<td align="left"><p>File hash, path, and publisher</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Rule types provided</p></td>
<td align="left"><p>Defined by the security levels:</p>
<ul>
<li><p>Disallowed</p></li>
<li><p>Basic User</p></li>
<li><p>Unrestricted</p></li>
</ul></td>
<td align="left"><p>Allow and deny</p></td>
</tr>
<tr class="even">
<td align="left"><p>Default rule action</p></td>
<td align="left"><p>Unrestricted</p></td>
<td align="left"><p>Implicit deny</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Audit-only mode</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>Yes</p></td>
</tr>
<tr class="even">
<td align="left"><p>Wizard to create multiple rules at one time</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>Yes</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Policy import or export</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>Yes</p></td>
</tr>
<tr class="even">
<td align="left"><p>Rule collection</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>Yes</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows PowerShell support</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>Yes</p></td>
</tr>
<tr class="even">
<td align="left"><p>Custom error messages</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>Yes</p></td>
</tr>
</tbody>
</table>
 
**Application control function differences**

The following table compares the application control functions of Software Restriction Policies (SRP) and AppLocker.
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
<td align="left"><p>Operating system scope</p></td>
<td align="left"><p>SRP policies can be applied to all Windows operating systems beginning with Windows XP and Windows Server 2003.</p></td>
<td align="left"><p>AppLocker policies apply only to those supported operating system versions and editions listed in [Requirements to use AppLocker](requirements-to-use-applocker.md). But these systems can also use SRP.</p>
<div class="alert">
<strong>Note</strong>  
<p>Use different GPOs for SRP and AppLocker rules.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>User support</p></td>
<td align="left"><p>SRP allows users to install applications as an administrator.</p></td>
<td align="left"><p>AppLocker policies are maintained through Group Policy, and only the administrator of the device can update an AppLocker policy.</p>
<p>AppLocker permits customization of error messages to direct users to a Web page for help.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Policy maintenance</p></td>
<td align="left"><p>SRP policies are updated by using the Local Security Policy snap-in or the Group Policy Management Console (GPMC).</p></td>
<td align="left"><p>AppLocker policies are updated by using the Local Security Policy snap-in or the GPMC.</p>
<p>AppLocker supports a small set of PowerShell cmdlets to aid in administration and maintenance.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Policy management infrastructure</p></td>
<td align="left"><p>To manage SRP policies, SRP uses Group Policy within a domain and the Local Security Policy snap-in for a local computer.</p></td>
<td align="left"><p>To manage AppLocker policies, AppLocker uses Group Policy within a domain and the Local Security Policy snap-in for a local computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Block malicious scripts</p></td>
<td align="left"><p>Rules for blocking malicious scripts prevents all scripts associated with the Windows Script Host from running, except those that are digitally signed by your organization.</p></td>
<td align="left"><p>AppLocker rules can control the following file formats: .ps1, .bat, .cmd, .vbs, and .js. In addition, you can set exceptions to allow specific files to run.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Manage software installation</p></td>
<td align="left"><p>SRP can prevent all Windows Installer packages from installing. It allows .msi files that are digitally signed by your organization to be installed.</p></td>
<td align="left"><p>The Windows Installer rule collection is a set of rules created for Windows Installer file types (.mst, .msi and .msp) to allow you to control the installation of files on client computers and servers.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Manage all software on the computer</p></td>
<td align="left"><p>All software is managed in one rule set. By default, the policy for managing all software on a device disallows all software on the user's device, except software that is installed in the Windows folder, Program Files folder, or subfolders.</p></td>
<td align="left"><p>Unlike SRP, each AppLocker rule collection functions as an allowed list of files. Only the files that are listed within the rule collection will be allowed to run. This configuration makes it easier for administrators to determine what will occur when an AppLocker rule is applied.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Different policies for different users</p></td>
<td align="left"><p>Rules are applied uniformly to all users on a particular device.</p></td>
<td align="left"><p>On a device that is shared by multiple users, an administrator can specify the groups of users who can access the installed software. Using AppLocker, an administrator can specify the user to whom a specific rule should apply.</p></td>
</tr>
</tbody>
</table>
 
## Related topics

- [AppLocker technical reference](applocker-technical-reference.md)
 
 

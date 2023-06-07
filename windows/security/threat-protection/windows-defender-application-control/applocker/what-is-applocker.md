---
title: What Is AppLocker 
description: This topic for the IT professional describes what AppLocker is and how its features differ from Software Restriction Policies.
ms.assetid: 44a8a2bb-0f83-4f95-828e-1f364fb65869
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
ms.date: 09/21/2017
ms.technology: itpro-security
---

# What Is AppLocker?

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

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

|Feature|Software Restriction Policies|AppLocker|
|--- |--- |--- |
|Rule scope|All users|Specific user or group|
|Rule conditions provided|File hash, path, certificate, registry path, and Internet zone|File hash, path, and publisher|
|Rule types provided|Defined by the security levels:<li>Disallowed<li>Basic User<li>Unrestricted|Allow and deny|
|Default rule action|Unrestricted|Implicit deny|
|Audit-only mode|No|Yes|
|Wizard to create multiple rules at one time|No|Yes|
|Policy import or export|No|Yes|
|Rule collection|No|Yes|
|Windows PowerShell support|No|Yes|
|Custom error messages|No|Yes|

<b>Application control function differences</b>

The following table compares the application control functions of Software Restriction Policies (SRP) and AppLocker.

|Application control function|SRP|AppLocker|
|--- |--- |--- |
|Operating system scope|SRP policies can be applied to all Windows operating systems beginning with Windows XP and Windows Server 2003.|AppLocker policies apply only to those supported operating system versions and editions listed in [Requirements to use AppLocker](requirements-to-use-applocker.md). But these systems can also use SRP.<div class="alert">**Note:** Use different GPOs for SRP and AppLocker rules.</div>|
|User support|SRP allows users to install applications as an administrator.|AppLocker policies are maintained through Group Policy, and only the administrator of the device can update an AppLocker policy.<p>AppLocker permits customization of error messages to direct users to a Web page for help.|
|Policy maintenance|SRP policies are updated by using the Local Security Policy snap-in or the Group Policy Management Console (GPMC).|AppLocker policies are updated by using the Local Security Policy snap-in or the GPMC.<p>AppLocker supports a small set of PowerShell cmdlets to aid in administration and maintenance.|
|Policy management infrastructure|To manage SRP policies, SRP uses Group Policy within a domain and the Local Security Policy snap-in for a local computer.|To manage AppLocker policies, AppLocker uses Group Policy within a domain and the Local Security Policy snap-in for a local computer.|
|Block malicious scripts|Rules for blocking malicious scripts prevent all scripts associated with the Windows Script Host from running, except those scripts that are digitally signed by your organization.|AppLocker rules can control the following file formats: .ps1, .bat, .cmd, .vbs, and .js. In addition, you can set exceptions to allow specific files to run.|
|Manage software installation|SRP can prevent all Windows Installer packages from installing. It allows .msi files that are digitally signed by your organization to be installed.|The Windows Installer rule collection is a set of rules created for Windows Installer file types (.mst, .msi and .msp) to allow you to control the installation of files on client computers and servers.|
|Manage all software on the computer|All software is managed in one rule set. By default, the policy for managing all software on a device disallows all software on the user's device, except software that is installed in the Windows folder, Program Files folder, or subfolders.|Unlike SRP, each AppLocker rule collection functions as an allowed list of files. Only the files that are listed within the rule collection will be allowed to run. This configuration makes it easier for administrators to determine what will occur when an AppLocker rule is applied.|
|Different policies for different users|Rules are applied uniformly to all users on a particular device.|On a device that is shared by multiple users, an administrator can specify the groups of users who can access the installed software. An administrator uses AppLocker to specify the user to whom a specific rule should apply.|

## Related topics

- [AppLocker technical reference](applocker-technical-reference.md)



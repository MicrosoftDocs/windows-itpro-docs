---
title: Administer AppLocker (Windows 10)
description: This topic for IT professionals provides links to specific procedures to use when administering AppLocker policies.
ms.assetid: 511a3b6a-175f-4d6d-a6e0-c1780c02e818
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 02/28/2019
---

# Administer AppLocker

**Applies to**
- Windows 10
- Windows Server

This topic for IT professionals provides links to specific procedures to use when administering AppLocker policies.

AppLocker helps administrators control how users can access and use files, such as executable files, packaged apps, scripts, Windows Installer files, and DLLs. Using AppLocker, you can:

- Define rules based on file attributes derived from the digital signature, including the publisher, product name, file name, and file version. For example, you can create rules based on the publisher attribute that is persistent through updates, or you can create rules for a specific version of a file.
- Assign a rule to a security group or an individual user.
- Create exceptions to rules. For example, you can create a rule that allows all Windows processes to run, except Registry Editor (regedit.exe).
- Use audit-only mode to deploy the policy and understand its impact before enforcing it.
- Import and export rules. The import and export affects the entire policy. For example, if you export a policy, all of the rules from all of the rule collections are exported, including the enforcement settings for the rule collections. If you import a policy, the existing policy is overwritten.
- Simplify creating and managing AppLocker rules by using AppLocker PowerShell cmdlets.
  > **Note**  For more info about enhanced capabilities of AppLocker to control Windows apps, see [Packaged apps and packaged app installer rules in AppLocker](packaged-apps-and-packaged-app-installer-rules-in-applocker.md).
 
## In this section

| Topic | Description |
| - | - |
| [Maintain AppLocker policies](maintain-applocker-policies.md) | This topic describes how to maintain rules within AppLocker policies. |
| [Edit an AppLocker policy](edit-an-applocker-policy.md) | This topic for IT professionals describes the steps required to modify an AppLocker policy. |
| [Test and update an AppLocker policy](test-and-update-an-applocker-policy.md) | This topic discusses the steps required to test an AppLocker policy prior to deployment. |
| [Deploy AppLocker policies by using the enforce rules setting](deploy-applocker-policies-by-using-the-enforce-rules-setting.md) | This topic for IT professionals describes the steps to deploy AppLocker policies by using the enforcement setting method. |
| [Use the AppLocker Windows PowerShell cmdlets](use-the-applocker-windows-powershell-cmdlets.md) | This topic for IT professionals describes how each AppLocker Windows PowerShell cmdlet can help you administer your AppLocker application control policies. |
| [Use AppLocker and Software Restriction Policies in the same domain](use-applocker-and-software-restriction-policies-in-the-same-domain.md) | This topic for IT professionals describes concepts and procedures to help you manage your application control strategy using Software Restriction Policies and AppLocker. |
| [Optimize AppLocker performance](optimize-applocker-performance.md) | This topic for IT professionals describes how to optimize AppLocker policy enforcement. |
| [Monitor app usage with AppLocker](monitor-application-usage-with-applocker.md) | This topic for IT professionals describes how to monitor app usage when AppLocker policies are applied. |
| [Manage packaged apps with AppLocker](manage-packaged-apps-with-applocker.md) | This topic for IT professionals describes concepts and lists procedures to help you manage Packaged apps with AppLocker as part of your overall application control strategy. |
| [Working with AppLocker rules](working-with-applocker-rules.md) | This topic for IT professionals describes AppLocker rule types and how to work with them for your application control policies. |
| [Working with AppLocker policies](working-with-applocker-policies.md) | This topic for IT professionals provides links to procedural topics about creating, maintaining, and testing AppLocker policies. |

## <a href="" id="bkmk-using-snapins"></a>Using the MMC snap-ins to administer AppLocker

You can administer AppLocker policies by using the Group Policy Management Console to create or edit a Group Policy Object (GPO), or to create or edit an AppLocker policy on a local computer by using the Local Group Policy Editor snap-in or the Local Security Policy snap-in (secpol.msc).

### Administer AppLocker using Group Policy

You must have Edit Setting permission to edit a GPO. By default, members of the **Domain Admins** group, the **Enterprise Admins** group, and the **Group Policy Creator Owners** group have this permission. Also, the Group Policy Management feature must be installed on the computer.

1.  Open the Group Policy Management Console (GPMC).
2.  Locate the GPO that contains the AppLocker policy to modify, right-click the GPO, and then click **Edit**.
3.  In the console tree, double-click **Application Control Policies**, double-click **AppLocker**, and then click the rule collection that you want to create the rule for.

### Administer AppLocker on the local PC

1.  Click **Start**, type **local security policy**, and then click **Local Security Policy**.
2.  If the **User Account Control** dialog box appears, confirm that the action it displays is what you want, and then click **Yes**.
3.  In the console tree of the snap-in, double-click **Application Control Policies**, double-click **AppLocker**, and then click the rule collection that you want to create the rule for.

## Using Windows PowerShell to administer AppLocker

For how-to info about administering AppLocker with Windows PowerShell, see [Use the AppLocker Windows PowerShell Cmdlets](use-the-applocker-windows-powershell-cmdlets.md). For reference info and examples how to administer AppLocker with Windows PowerShell, see the [AppLocker cmdlets](https://technet.microsoft.com/library/hh847210.aspx).

---
title: Administer AppLocker
description: This article for IT professionals provides links to specific procedures to use when administering AppLocker policies.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Administer AppLocker

This article for IT professionals provides links to specific procedures to use when administering AppLocker policies.

AppLocker helps administrators control how users can access and use files, such as executable files, packaged apps, scripts, Windows Installer files, and DLLs. Using AppLocker, you can:

- Define rules based on file attributes derived from the digital signature, including the publisher, product name, file name, and file version. For example, you can create rules based on the publisher attribute that is persistent through updates, or you can create rules for a specific version of a file.
- Assign a rule to a security group or an individual user.
- Create exceptions to rules. For example, you can create a rule that allows all Windows processes to run, except Registry Editor (regedit.exe).
- Use audit-only mode to deploy the policy and understand its effect before enforcing it.
- Import and export rules. The import and export affects the entire policy. For example, if you export a policy, all of the rules from all of the rule collections are exported, including the enforcement settings for the rule collections. If you import a policy, the existing policy is overwritten.
- Simplify creating and managing AppLocker rules by using AppLocker PowerShell cmdlets.

## In this section

| Article | Description |
| - | - |
| [Maintain AppLocker policies](maintain-applocker-policies.md) | This article describes how to maintain rules within AppLocker policies. |
| [Edit an AppLocker policy](edit-an-applocker-policy.md) | This article for IT professionals describes the steps required to modify an AppLocker policy. |
| [Test and update an AppLocker policy](test-and-update-an-applocker-policy.md) | This article discusses the steps required to test an AppLocker policy prior to deployment. |
| [Deploy AppLocker policies by using the enforce rules setting](deploy-applocker-policies-by-using-the-enforce-rules-setting.md) | This article for IT professionals describes the steps to deploy AppLocker policies by using the enforcement setting method. |
| [Use the AppLocker Windows PowerShell cmdlets](use-the-applocker-windows-powershell-cmdlets.md) | This article for IT professionals describes how each AppLocker Windows PowerShell cmdlet can help you administer your AppLocker policies. |
| [Optimize AppLocker performance](optimize-applocker-performance.md) | This article for IT professionals describes how to optimize AppLocker policy enforcement. |
| [Monitor app usage with AppLocker](monitor-application-usage-with-applocker.md) | This article for IT professionals describes how to monitor app usage when AppLocker policies are applied. |
| [Manage packaged apps with AppLocker](manage-packaged-apps-with-applocker.md) | This article for IT professionals describes concepts and lists procedures to help you manage Packaged apps with AppLocker as part of your overall application control strategy. |
| [Working with AppLocker rules](working-with-applocker-rules.md) | This article for IT professionals describes AppLocker rule types and how to work with them for your policies. |
| [Working with AppLocker policies](working-with-applocker-policies.md) | This article for IT professionals provides links to procedural articles about creating, maintaining, and testing AppLocker policies. |

## Using the MMC snap-ins to administer AppLocker

You can administer AppLocker policies using the Group Policy Management Console to create or edit a Group Policy Object (GPO). To create or edit an AppLocker policy on a local computer, use the Local Group Policy Editor snap-in or the Local Security Policy snap-in (secpol.msc).

### Administer AppLocker using Group Policy

You must have Edit Setting permission to edit a GPO. By default, members of the **Domain Admins** group, the **Enterprise Admins** group, and the **Group Policy Creator Owners** group have this permission. Also, the Group Policy Management feature must be installed on the computer.

1. Open the Group Policy Management Console (GPMC).
2. Locate the GPO that contains the AppLocker policy to modify, right-click the GPO, and then select **Edit**.
3. In the console tree, double-click **Application Control Policies**, double-click **AppLocker**, and then select the rule collection that you want to create the rule for.

### Administer AppLocker on the local PC

1. Select **Start**, type **local security policy**, and then select **Local Security Policy**.
2. If the **User Account Control** dialog box appears, confirm that the action it displays is what you want, and then select **Yes**.
3. In the console tree of the snap-in, double-click **Application Control Policies**, double-click **AppLocker**, and then select the rule collection that you want to create the rule for.

## Using Windows PowerShell to administer AppLocker

For how-to info about administering AppLocker with Windows PowerShell, see [Use the AppLocker Windows PowerShell Cmdlets](use-the-applocker-windows-powershell-cmdlets.md). For reference info and examples how to administer AppLocker with Windows PowerShell, see the [AppLocker cmdlets](/powershell/module/applocker/).

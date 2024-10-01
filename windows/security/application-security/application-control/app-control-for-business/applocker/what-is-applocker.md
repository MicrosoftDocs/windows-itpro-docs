---
title: What Is AppLocker
description: This article for the IT professional describes what AppLocker is.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# What Is AppLocker?

This article for the IT professional describes what AppLocker is.

Windows includes two technologies that can be used for application control, depending on your organization's specific scenarios and requirements: App Control for Business and AppLocker. For information to help you choose when to use App Control or AppLocker, see [App Control and AppLocker overview](../appcontrol-and-applocker-overview.md).

AppLocker helps you create rules to allow or deny apps from running based on information about the apps' files. You can also use AppLocker to control which users or groups can run those apps.

Using AppLocker, you can:

- Control the following types of apps and files: executable files (.exe and .com), scripts (.js, .ps1, .vbs, .cmd, and .bat), Windows Installer files (.mst, .msi and .msp), and DLL files (.dll and .ocx), and packaged apps and packaged app installers (appx).
- Define rules based on file attributes derived from the digital signature, including the publisher, product name, file name, and file version. For example, you can create rules based on the publisher attribute that is persistent through updates, or you can create rules for a specific version of a file.
- Assign a rule to a security group or an individual user.
- Create exceptions to rules. For example, you can create a rule that allows all Windows processes to run except Registry Editor (Regedit.exe).
- Use audit-only mode to deploy the policy and understand its effect before enforcing it.
- Import and export rules. The import and export affects the entire policy. For example, if you export a policy, all of the rules from all of the rule collections are exported, including the enforcement settings for the rule collections. If you import a policy, all criteria in the existing policy are overwritten.
- Streamline creating and managing AppLocker rules by using Windows PowerShell cmdlets.

For information about the application control scenarios that AppLocker addresses, see [AppLocker policy use scenarios](applocker-policy-use-scenarios.md).

## Related articles

- [AppLocker technical reference](applocker-technical-reference.md)

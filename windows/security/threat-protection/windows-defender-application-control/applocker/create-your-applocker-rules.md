---
title: Create Your AppLocker rules (Windows 10)
description: This topic for the IT professional describes what you need to know about AppLocker rules and the methods that you can to create rules.
ms.assetid: b684a3a5-929c-4f70-8742-04088022f232
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
ms.date: 09/21/2017
---

# Create Your AppLocker rules

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic for the IT professional describes what you need to know about AppLocker rules and the methods that you can to create rules.

## Creating AppLocker rules

AppLocker rules apply to the targeted app, and they are the components that make up the AppLocker policy. Depending on your IT environment and the business group that requires application control policies, setting these access rules for each application can be time-consuming and prone to error. With AppLocker, you can generate rules automatically or create rules individually. Creating rules that are derived from your planning document can help you avoid unintended results. For info about this planning document and other planning activities, see [AppLocker Design Guide](applocker-policies-design-guide.md).

### Automatically generate your rules

You can use a reference device to automatically create a set of default rules for each of the installed apps, test and modify each rule as necessary, and deploy the policies. Creating most of the rules for all the installed apps gives you a starting point to build and test your policies. For info about performing this task, see the following topics:

-   [Configure the AppLocker reference device](configure-the-appLocker-reference-device.md)
-   [Run the Automatically Generate Rules wizard](run-the-automatically-generate-rules-wizard.md)
-   [Create AppLocker default rules](create-applocker-default-rules.md)
-   [Edit AppLocker rules](edit-applocker-rules.md)
-   [Add exceptions for an AppLocker rule](configure-exceptions-for-an-applocker-rule.md)

### Create your rules individually

You can create rules and set the mode to **Audit only** for each installed app, test and update each rule as necessary, and then deploy the policies. Creating rules individually might be best when you are targeting a small number of applications within a business group.

>**Note:**  AppLocker includes default rules for each rule collection. These rules are intended to help ensure that the files that are required for Windows to operate properly are allowed in an AppLocker rule collection. You can also edit the default rules. For information about creating the default rules for the Windows operating system, see [Create AppLocker default rules](create-applocker-default-rules.md).
 
For information about performing this task, see:

1.  [Create a rule that uses a publisher condition](create-a-rule-that-uses-a-publisher-condition.md)
2.  [Create a rule that uses a path condition](create-a-rule-that-uses-a-path-condition.md)
3.  [Create a rule that uses a file hash condition](create-a-rule-that-uses-a-file-hash-condition.md)
4.  [Edit AppLocker rules](edit-applocker-rules.md)
5.  [Enforce AppLocker rules](enforce-applocker-rules.md)
6.  [Configure an AppLocker policy for audit only](configure-an-applocker-policy-for-audit-only.md)

## About selecting rules

AppLocker policies are composed of distinct rules for specific apps. These rules are grouped by collection, and they are implemented through an AppLocker policy definition. AppLocker policies are managed by using Group Policy or by using the Local Security Policy snap-in for a single computer.

When you determine what types of rules to create for each of your business groups or organizational units (OUs), you should also determine what enforcement setting to use for each group. Certain rule types are more applicable for some apps, depending on how the apps are deployed in a specific business group.

For info about how to determine and document your AppLocker rules, see [AppLocker Design Guide](applocker-policies-design-guide.md).

For info about AppLocker rules and AppLocker policies, see the following topics:

-   [Understanding AppLocker rule behavior](understanding-applocker-rule-behavior.md)
-   [Understanding AppLocker rule exceptions](understanding-applocker-rule-exceptions.md)
-   [Understanding AppLocker rule collections](understanding-applocker-rule-collections.md)
-   [Understanding AppLocker allow and deny actions on rules](understanding-applocker-allow-and-deny-actions-on-rules.md)
-   [Understanding AppLocker rule condition types](understanding-applocker-rule-condition-types.md)
-   [Understanding AppLocker default rules](understanding-applocker-default-rules.md)

## Next steps

1.  [Import an AppLocker policy into a GPO](import-an-applocker-policy-into-a-gpo.md)
2.  [Import an AppLocker policy from another computer](import-an-applocker-policy-from-another-computer.md)
3.  [Test and update an AppLocker policy](test-and-update-an-applocker-policy.md)
4.  [Deploy the AppLocker policy into production](deploy-the-applocker-policy-into-production.md)

## Related topics

- [Create Your AppLocker policies](create-your-applocker-policies.md)

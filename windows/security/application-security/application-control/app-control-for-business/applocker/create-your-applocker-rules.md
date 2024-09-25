---
title: Create Your AppLocker rules
description: This article for the IT professional describes what you need to know about AppLocker rules and the methods that you can to create rules.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Create Your AppLocker rules

This article for the IT professional describes what you need to know about AppLocker rules and the methods used to create rules.

## Creating AppLocker rules

AppLocker rules control what apps run in your organization. Depending on the complexity of your organization's application requirements, managing these application control rules can be time-consuming and error prone. With AppLocker, you can generate rules automatically or create rules individually. Creating rules that are derived from your planning document can help you avoid unintended results. For info about this planning document and other planning activities, see [AppLocker Design Guide](applocker-policies-design-guide.md).

### Automatically generate your rules

You can use a reference device to automatically create a set of default rules for each of the installed apps, test and modify each rule as necessary, and deploy the policies. Creating rules for all installed apps gives you a starting point to build and test your policies. For info about performing this task, see the following articles:

- [Configure the AppLocker reference device](configure-the-appLocker-reference-device.md)
- [Run the Automatically Generate Rules wizard](run-the-automatically-generate-rules-wizard.md)
- [Create AppLocker default rules](create-applocker-default-rules.md)
- [Edit AppLocker rules](edit-applocker-rules.md)
- [Add exceptions for an AppLocker rule](configure-exceptions-for-an-applocker-rule.md)

### Create your rules individually

Creating rules individually might be best when you're managing a few applications within a business group.

> [!NOTE]
> The AppLocker wizards can generate default rules for each rule collection. These rules are intended to help ensure that the files that are required for Windows to operate properly are allowed in an AppLocker rule collection. You can also edit the default rules. For information about creating the default rules for the Windows operating system, see [Create AppLocker default rules](create-applocker-default-rules.md).

For information about performing this task, see:

1. [Create a rule that uses a publisher condition](create-a-rule-that-uses-a-publisher-condition.md)
2. [Create a rule that uses a path condition](create-a-rule-that-uses-a-path-condition.md)
3. [Create a rule that uses a file hash condition](create-a-rule-that-uses-a-file-hash-condition.md)
4. [Edit AppLocker rules](edit-applocker-rules.md)
5. [Enforce AppLocker rules](enforce-applocker-rules.md)
6. [Configure an AppLocker policy for audit only](configure-an-applocker-policy-for-audit-only.md)

## About selecting rules

AppLocker policies are composed of rules to allow or deny specific app files. These rules are grouped into rule collections, and they're implemented through an AppLocker policy definition. AppLocker policies are managed by using Group Policy or by using the Local Security Policy snap-in for a single computer.

For info about how to determine and document your AppLocker rules, see [AppLocker Design Guide](applocker-policies-design-guide.md).

For info about AppLocker rules and AppLocker policies, see the following articles:

- [Understanding AppLocker rule behavior](understanding-applocker-rule-behavior.md)
- [Understanding AppLocker rule exceptions](understanding-applocker-rule-exceptions.md)
- [Understanding AppLocker rule collections](understanding-applocker-rule-collections.md)
- [Understanding AppLocker allow and deny actions on rules](understanding-applocker-allow-and-deny-actions-on-rules.md)
- [Understanding AppLocker rule condition types](understanding-applocker-rule-condition-types.md)
- [Understanding AppLocker default rules](understanding-applocker-default-rules.md)

## Next steps

1. [Import an AppLocker policy into a GPO](import-an-applocker-policy-into-a-gpo.md)
2. [Import an AppLocker policy from another computer](import-an-applocker-policy-from-another-computer.md)
3. [Test and update an AppLocker policy](test-and-update-an-applocker-policy.md)
4. [Deploy the AppLocker policy into production](deploy-the-applocker-policy-into-production.md)

## Related articles

- [Create Your AppLocker policies](create-your-applocker-policies.md)

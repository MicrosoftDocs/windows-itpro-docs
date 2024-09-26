---
title: Document your AppLocker rules
description: Learn how to document your AppLocker rules and associate rule conditions with files, permissions, rule source, and implementation.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Document your AppLocker rules

To complete this AppLocker planning document, you should first complete the following steps:

1. [Create a list of apps deployed to each business group](create-list-of-applications-deployed-to-each-business-group.md)
2. [Select the types of rules to create](select-types-of-rules-to-create.md)

Document the following items for each business group or organizational unit:

- Whether your organization uses the built-in default AppLocker rules to allow system files to run.
- The types of rule conditions that you use to create rules, stated in order of preference.

The following table details sample data for documenting rule type and rule condition findings. In addition, you should now consider whether to allow an app to run or deny permission for it to run. For info about these settings, see [Understanding AppLocker allow and deny actions on rules](understanding-applocker-allow-and-deny-actions-on-rules.md).

|Business group|Organizational unit|Implement AppLocker?|Applications|Installation path|Use default rule or define new rule condition|Allow or deny|
| --- | --- | --- | --- | --- | --- | --- |
|Bank Tellers|Teller-East and Teller-West|Yes|Teller Software|C:\Program Files\Woodgrove\Teller.exe|File is signed; create a publisher condition||
||||Windows files|C:\Windows|Create a path exception to the default rule to exclude \Windows\Temp||
|Human Resources|HR-All|Yes|Check Payout|C:\Program Files\Woodgrove\HR\Checkcut.exe|File is signed; create a publisher condition||
||||Time Sheet Organizer|C:\Program Files\Woodgrove\HR\Timesheet.exe|File isn't signed; create a file hash condition||
||||Internet Explorer 7|C:\Program Files\Internet Explorer</p>|File is signed; create a publisher condition||
||||Windows files|C:\Windows|Use the default rule for the Windows path||

## Next steps

For each rule, determine whether to use the allow or deny option, and then complete the following tasks:

- [Determine Group Policy structure and rule enforcement](determine-group-policy-structure-and-rule-enforcement.md)
- [Plan for AppLocker policy management](plan-for-applocker-policy-management.md)

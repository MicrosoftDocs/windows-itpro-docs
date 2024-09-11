---
title: Document Group Policy structure & AppLocker rule enforcement
description: This planning article describes what you need to include in your plan when you use AppLocker.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Document the Group Policy structure and AppLocker rule enforcement

This planning article describes what you should include in your plan when you use AppLocker.

## Record your findings

To complete this AppLocker planning document, you should first complete the following steps:

1. [Determine your application control objectives](../appcontrol-and-applocker-overview.md)
2. [Create a list of apps deployed to each business group](create-list-of-applications-deployed-to-each-business-group.md)
3. [Select the types of rules to create](select-types-of-rules-to-create.md)
4. [Determine the Group Policy structure and rule enforcement](determine-group-policy-structure-and-rule-enforcement.md)

After you determine how to structure your Group Policy Objects (GPOs) for AppLocker policies, you should record your findings. You can use the following table to determine how many GPOs to create (or edit) and which objects they're linked to. If you decide to create custom rules to allow system files to run, note the high-level rule configuration in the **Use default rule or define new rule condition** column.

The following table includes the sample data that was collected when you determined your enforcement settings and the GPO structure for your AppLocker policies.

|Business group|Organizational unit|Implement AppLocker?|Apps|Installation path|Use default rule or define new rule condition|Allow or deny|GPO name|
| --- | --- | --- | --- | --- | --- | --- | --- |
|Bank Tellers|Teller-East and Teller-West|Yes|Teller Software|C:\Program Files\Woodgrove\Teller.exe|File is signed; create a publisher condition|Allow|Tellers-AppLockerTellerRules|
||||Windows files|C:\Windows|Create a path exception to the default rule to exclude \Windows\Temp|Allow||
|Human Resources|HR-All|Yes|Check Payout|C:\Program Files\Woodgrove\HR\Checkcut.exe|File is signed; create a publisher condition|Allow|HR-AppLockerHRRules|
||||Time Sheet Organizer|C:\Program Files\Woodgrove\HR\Timesheet.exe|File isn't signed; create a file hash condition|Allow||
||||Internet Explorer 7|C:\Program Files\Internet Explorer</p>|File is signed; create a publisher condition|Deny||
||||Windows files|C:\Windows|Use a default rule for the Windows path|Allow||

## Next steps

After you determine the Group Policy structure and rule enforcement strategy for each business group's apps, the following tasks remain:

- [Plan for AppLocker policy management](plan-for-applocker-policy-management.md)

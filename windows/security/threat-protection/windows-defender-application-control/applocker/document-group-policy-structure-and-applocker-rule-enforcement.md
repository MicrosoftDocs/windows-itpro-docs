---
title: Document Group Policy structure & AppLocker rule enforcement 
description: This planning topic describes what you need to investigate, determine, and record in your application control policies plan when you use AppLocker.
ms.assetid: 389ffa8e-11fc-49ff-b0b1-89553e6fb6e5
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.topic: conceptual
ms.pagetype: security
ms.date: 09/21/2017
ms.technology: itpro-security
---

# Document the Group Policy structure and AppLocker rule enforcement

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This planning topic describes what you need to investigate, determine, and record in your application control policies plan when you use AppLocker.

## Record your findings

To complete this AppLocker planning document, you should first complete the following steps:

1.  [Determine your application control objectives](determine-your-application-control-objectives.md)
2.  [Create a list of apps deployed to each business group](create-list-of-applications-deployed-to-each-business-group.md)
3.  [Select the types of rules to create](select-types-of-rules-to-create.md)
4.  [Determine the Group Policy structure and rule enforcement](determine-group-policy-structure-and-rule-enforcement.md)

After you determine how to structure your Group Policy Objects (GPOs) so that you can apply AppLocker policies, you should record your findings. You can use the following table to determine how many GPOs to create (or edit) and which objects they're linked to. If you decided to create custom rules to allow system files to run, note the high-level rule configuration in the **Use default rule or define new rule condition** column.

The following table includes the sample data that was collected when you determined your enforcement settings and the GPO structure for your AppLocker policies.

|Business group|Organizational unit|Implement AppLocker?|Apps|Installation path|Use default rule or define new rule condition|Allow or deny|GPO name|
|--- |--- |--- |--- |--- |--- |--- |--- |
|Bank Tellers|Teller-East and Teller-West|Yes|Teller Software|C:\Program Files\Woodgrove\Teller.exe|File is signed; create a publisher condition|Allow|Tellers-AppLockerTellerRules|
||||Windows files|C:\Windows|Create a path exception to the default rule to exclude \Windows\Temp|Allow||
|Human Resources|HR-All|Yes|Check Payout|C:\Program Files\Woodgrove\HR\Checkcut.exe|File is signed; create a publisher condition|Allow|HR-AppLockerHRRules|
||||Time Sheet Organizer|C:\Program Files\Woodgrove\HR\Timesheet.exe|File isn't signed; create a file hash condition|Allow||
||||Internet Explorer 7|C:\Program Files\Internet Explorer</p>|File is signed; create a publisher condition|Deny||
||||Windows files|C:\Windows|Use a default rule for the Windows path|Allow||

## Next steps

After you've determined the Group Policy structure and rule enforcement strategy for each business group's apps, the following tasks remain:
-   [Plan for AppLocker policy management](plan-for-applocker-policy-management.md)

 
 

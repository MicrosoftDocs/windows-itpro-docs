---
title: Document your AppLocker rules (Windows 10)
description: This topic describes what rule conditions to associate with each file, how to associate the rule conditions with each file, the source of the rule, and whether the file should be included or excluded.
ms.assetid: 91a198ce-104a-45ff-b49b-487fb40cd2dd
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

# Document your AppLocker rules

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic describes what rule conditions to associate with each file, how to associate the rule conditions with each file, the source of the rule, and whether the file should be included or excluded.

## Record your findings

To complete this AppLocker planning document, you should first complete the following steps:

1.  [Determine your application control objectives](determine-your-application-control-objectives.md)
2.  [Create a list of apps deployed to each business group](create-list-of-applications-deployed-to-each-business-group.md)
3.  [Select the types of rules to create](select-types-of-rules-to-create.md)

Document the following items for each business group or organizational unit:

-   Whether your organization will use the built-in default AppLocker rules to allow system files to run.
-   The types of rule conditions that you will use to create rules, stated in order of preference.

The following table details sample data for documenting rule type and rule condition findings. In addition, you should now consider whether to allow an app to run or deny permission for it to run. For info about these settings, see [Understanding AppLocker allow and deny actions on rules](understanding-applocker-allow-and-deny-actions-on-rules.md).

<table style="width:100%;">
<colgroup>
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Business group</th>
<th align="left">Organizational unit</th>
<th align="left">Implement AppLocker?</th>
<th align="left">Applications</th>
<th align="left">Installation path</th>
<th align="left">Use default rule or define new rule condition</th>
<th align="left">Allow or deny</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Bank Tellers</p></td>
<td align="left"><p>Teller-East and Teller-West</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Teller Software</p></td>
<td align="left"><p>C:\Program Files\Woodgrove\Teller.exe</p></td>
<td align="left"><p>File is signed; create a publisher condition</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Windows files</p></td>
<td align="left"><p>C:\Windows</p></td>
<td align="left"><p>Create a path exception to the default rule to exclude \Windows\Temp</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Human Resources</p></td>
<td align="left"><p>HR-All</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Check Payout</p></td>
<td align="left"><p>C:\Program Files\Woodgrove\HR\Checkcut.exe</p></td>
<td align="left"><p>File is signed; create a publisher condition</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Time Sheet Organizer</p></td>
<td align="left"><p>C:\Program Files\Woodgrove\HR\Timesheet.exe</p></td>
<td align="left"><p>File is not signed; create a file hash condition</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Internet Explorer 7</p></td>
<td align="left"><p>C:\Program Files\Internet Explorer\</p></td>
<td align="left"><p>File is signed; create a publisher condition</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Windows files</p></td>
<td align="left"><p>C:\Windows</p></td>
<td align="left"><p>Use the default rule for the Windows path</p></td>
<td align="left"><p></p></td>
</tr>
</tbody>
</table>
 
## Next steps

For each rule, determine whether to use the allow or deny option. Then, three tasks remain:

-   [Determine Group Policy structure and rule enforcement](determine-group-policy-structure-and-rule-enforcement.md)
-   [Plan for AppLocker policy management](plan-for-applocker-policy-management.md)

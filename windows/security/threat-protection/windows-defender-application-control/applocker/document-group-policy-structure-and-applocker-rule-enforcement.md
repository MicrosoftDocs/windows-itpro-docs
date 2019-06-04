---
title: Document the Group Policy structure and AppLocker rule enforcement (Windows 10)
description: This planning topic describes what you need to investigate, determine, and record in your application control policies plan when you use AppLocker.
ms.assetid: 389ffa8e-11fc-49ff-b0b1-89553e6fb6e5
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.pagetype: security
ms.date: 09/21/2017
---

# Document the Group Policy structure and AppLocker rule enforcement

**Applies to**
 -   Windows 10 
 -   Windows Server

This planning topic describes what you need to investigate, determine, and record in your application control policies plan when you use AppLocker.

## Record your findings

To complete this AppLocker planning document, you should first complete the following steps:

1.  [Determine your application control objectives](determine-your-application-control-objectives.md)
2.  [Create a list of apps deployed to each business group](create-list-of-applications-deployed-to-each-business-group.md)
3.  [Select the types of rules to create](select-types-of-rules-to-create.md)
4.  [Determine the Group Policy structure and rule enforcement](determine-group-policy-structure-and-rule-enforcement.md)

After you determine how to structure your Group Policy Objects (GPOs) so that you can apply AppLocker policies, you should record your findings. You can use the following table to determine how many GPOs to create (or edit) and which objects they are linked to. If you decided to create custom rules to allow system files to run, note the high-level rule configuration in the **Use default rule or define new rule condition** column.

The following table includes the sample data that was collected when you determined your enforcement settings and the GPO structure for your AppLocker policies.
<table>
<colgroup>
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Business group</th>
<th align="left">Organizational unit</th>
<th align="left">Implement AppLocker?</th>
<th align="left">Apps</th>
<th align="left">Installation path</th>
<th align="left">Use default rule or define new rule condition</th>
<th align="left">Allow or deny</th>
<th align="left">GPO name</th>
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
<td align="left"><p>Allow</p></td>
<td align="left"><p>Tellers-AppLockerTellerRules</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Windows files</p></td>
<td align="left"><p>C:\Windows</p></td>
<td align="left"><p>Create a path exception to the default rule to exclude \Windows\Temp</p></td>
<td align="left"><p>Allow</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Human Resources</p></td>
<td align="left"><p>HR-All</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Check Payout</p></td>
<td align="left"><p>C:\Program Files\Woodgrove\HR\Checkcut.exe</p></td>
<td align="left"><p>File is signed; create a publisher condition</p></td>
<td align="left"><p>Allow</p></td>
<td align="left"><p>HR-AppLockerHRRules</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Time Sheet Organizer</p>
<p></p></td>
<td align="left"><p>C:\Program Files\Woodgrove\HR\Timesheet.exe</p>
<p></p></td>
<td align="left"><p>File is not signed; create a file hash condition</p>
<p></p></td>
<td align="left"><p>Allow</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Internet Explorer 7</p></td>
<td align="left"><p>C:\Program Files\Internet Explorer\</p></td>
<td align="left"><p>File is signed; create a publisher condition</p></td>
<td align="left"><p>Deny</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Windows files</p></td>
<td align="left"><p>C:\Windows</p></td>
<td align="left"><p>Use a default rule for the Windows path</p></td>
<td align="left"><p>Allow</p></td>
<td align="left"><p></p></td>
</tr>
</tbody>
</table>
 
## Next steps

After you have determined the Group Policy structure and rule enforcement strategy for each business group's apps, the following tasks remain:
-   [Plan for AppLocker policy management](plan-for-applocker-policy-management.md)

 
 

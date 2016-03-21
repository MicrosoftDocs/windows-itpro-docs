---
title: Determine the Group Policy structure and rule enforcement (Windows 10)
description: This overview topic describes the process to follow when you are planning to deploy AppLocker rules.
ms.assetid: f435fcbe-c7ac-4ef0-9702-729aab64163f
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Determine the Group Policy structure and rule enforcement


**Applies to**

-   Windows 10

This overview topic describes the process to follow when you are planning to deploy AppLocker rules.

## In this section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Topic</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>[Understand AppLocker enforcement settings](understand-applocker-enforcement-settings.md)</p></td>
<td align="left"><p>This topic describes the AppLocker enforcement settings for rule collections.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Understand AppLocker rules and enforcement setting inheritance in Group Policy](understand-applocker-rules-and-enforcement-setting-inheritance-in-group-policy.md)</p></td>
<td align="left"><p>This topic for the IT professional describes how application control policies configured in AppLocker are applied through Group Policy.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Document the Group Policy structure and AppLocker rule enforcement](document-group-policy-structure-and-applocker-rule-enforcement.md)</p></td>
<td align="left"><p>This planning topic describes what you need to investigate, determine, and record in your application control policies plan when you use AppLocker.</p></td>
</tr>
</tbody>
</table>

 

When you are determining how many Group Policy Objects (GPOs) to create when you apply an AppLocker policy in your organization, you should consider the following:

-   Whether you are creating new GPOs or using existing GPOs

-   Whether you are implementing Software Restriction Policies (SRP) policies and AppLocker policies in the same GPO

-   GPO naming conventions

-   GPO size limits

**Note**  
There is no default limit on the number of AppLocker rules that you can create. However, in Windows Server 2008 R2, GPOs have a 2 MB size limit for performance. In subsequent versions, that limit is raised to 100 MB.

 

 

 






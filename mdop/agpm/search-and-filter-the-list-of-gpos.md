---
title: Search and Filter the List of GPOs
description: Search and Filter the List of GPOs
author: mjcaparas
ms.assetid: 1bc58a38-033c-4aed-9eb4-c239827f5501
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Search and Filter the List of GPOs


In Advanced Group Policy Management (AGPM), you can search the list of Group Policy Objects (GPOs) and their attributes to filter the list of GPOs displayed. For example, you can search for GPOs with a particular name, state, or comment. You can also search for GPOs that were last changed by a particular Group Policy administrator or on a particular date.

## Performing a complex search


You can perform a complex search by using the format *GPO attribute 1: search string 1 GPO attribute 2: search string 2…all-column search strings*. The search is not case-sensitive.

-   **GPO attribute:** Any column heading in the list of GPOs in AGPM other than **Computer Version** or **User Version**. GPO attributes include the GPO name, state, user who most recently changed the GPO, date and time when the GPO was most recently changed, comment, GPO status, and WMI filter applied to the GPO.

-   **Search string:** Text for which to search in the specified column. If a string includes spaces, you must enclose the string with quotation marks.

-   **All-column search strings:** Text for which to search in all columns in the list of GPOs in AGPM other than **Computer Version** and **User Version**. You can include multiple strings separated by spaces. If a string includes spaces, you must enclose the string with quotation marks.

Each GPO attribute and search string pair and each all-column search string are combined by using a logical AND operation. The result is a list of all GPOs for which each specified attribute includes the specified search string and for which any all-column search strings appear in at least one column. The search returns any partial matches for strings so that you can enter part of a GPO name or user name and view a list of all GPOs that include that text in their name.

The following are examples of searches:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Description of search result</th>
<th align="left">Search query</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>All GPOs with names that include the text <strong>security</strong> and <strong>North America</strong>.</p></td>
<td align="left"><p><strong>name:</strong> <strong>security</strong> <strong>name:</strong> &quot;<strong>North America</strong>&quot;</p></td>
</tr>
<tr class="even">
<td align="left"><p>All checked out GPOs.</p></td>
<td align="left"><p><strong>state:</strong> &quot;<strong>checked out</strong>&quot;</p></td>
</tr>
<tr class="odd">
<td align="left"><p>All GPOs most recently changed by the user named <strong>Administrator</strong> and most recently changed within the previous month.</p></td>
<td align="left"><p><strong>changed by:</strong> <strong>Administrator</strong> <strong>change date:</strong> <strong>lastmonth</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p>All GPOs in which the word <strong>firewall</strong> is included in the most recent comment and in which the word <strong>security</strong> appears in any column.</p></td>
<td align="left"><p><strong>comment:</strong> <strong>firewall</strong> <strong>security</strong></p></td>
</tr>
<tr class="odd">
<td align="left"><p>All GPOs that have a status of <strong>All Settings Disabled</strong>.</p></td>
<td align="left"><p><strong>gpo status:</strong> <strong>all</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p>All GPOs that have a WMI filter named <strong>My WMI Filter</strong> applied and that have a status of <strong>User Configuration Settings Disabled</strong>.</p></td>
<td align="left"><p><strong>wmi filter:</strong> &quot;<strong>My WMI Filter</strong>&quot; <strong>gpo status:</strong> <strong>user</strong></p></td>
</tr>
</tbody>
</table>

 

## Specifying dates


You can search for GPOs changed on a specific date, at a specific time, or during a span of time by using the same special terms available when you search in Windows. If entering a specific date or time, you must use the format that is used in the **Change Date** column. The following are examples of searches of the **Change Date** column:

-   **change date:** **10/10/2009**

-   **change date:** **10/10/2009 9:00:00 AM**

-   **change date:** **thisweek**

You can use the following special terms, which are not case-sensitive, when you search the **Change Date** column:

-   **Today**

-   **Yesterday**

-   **ThisWeek**

-   **LastWeek**

-   **ThisMonth**

-   **LastMonth**

-   **TwoMonths**

-   **ThreeMonths**

-   **ThisYear**

-   **LastYear**

### Additional considerations

-   By default, you must be a Reviewer, an Editor, an Approver, or an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **List Contents** permission for the domain.

-   For more information about GPO attributes, see [Contents Tab Features](contents-tab-features-agpm40.md).

### Additional references

-   [Advanced Group Policy Management 4.0](advanced-group-policy-management-40.md)

 

 






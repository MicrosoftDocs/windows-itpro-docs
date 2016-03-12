---
title: Filtering Your Compatibility Data (Windows 10)
description: You can use Query Builder to filter your compatibility issue data or reports by selecting specific restriction criteria.
MSHAttr: PreferredLib /library
ms.assetid: b64267b5-83c0-4b4d-a075-0975d3a359c8
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: library
author: TrudyHa
---

# Filtering Your Compatibility Data


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

You can use Query Builder to filter your compatibility-issue data or reports by selecting specific restriction criteria.

The following table shows the columns in Query Builder.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Column</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>And/Or</p></td>
<td align="left"><p>If you select <strong>And</strong>, your data must match all query rows to appear as a returned result.</p>
<p>If you select <strong>Or</strong>, your data can match any query row to appear as a returned result.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Field</p></td>
<td align="left"><p>Select filter criteria.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Operator</p></td>
<td align="left"><p>Select an operator. The available operators depend on the field that you choose.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Value</p></td>
<td align="left"><p>Type or select a value.</p></td>
</tr>
</tbody>
</table>

 

## Creating Basic Queries


You can insert as many query clauses as you want to create a customized view of your compatibility data.

**Note**  
The following examples use the **&lt;Operating\_System&gt; - Application Report** screen. The process is the same for other report types.

 

**To create a basic query**

1.  On the **&lt;Operating\_System&gt; - Application Report** screen, click **Toggle Filter**.

2.  In the Query Builder, enter your filter criteria, pressing the Tab key to add clauses.

    To delete a clause, right-click the row, and then click **Delete Clause**.

3.  Click **Refresh**.

    Your filtered results appear. To close the Query Builder, click **Toggle Filter** again.

## Querying on Objects


You can query your compatibility data based on its relationship with other objects. For example, in the applications report, you can query for applications that have corresponding issues. Fields that have a (+) suffix in Query Builder are collections of objects.

**To query for a collection of objects**

1.  In Query Builder, in the **Field** column, click any field that contains a plus sign (+) as suffix.

2.  In the **Operator** column, select **Exists**, **Not Exists**, or **All Have**.

    Query Builder creates a group clause, which is shown by a bracket that spans the rows that are included in the group.

3.  Move your cursor to the next row in the group clause, and then in the **Field** column, select a field.

4.  In the **Operator** column, select an operator.

5.  In the **Value** column, enter a value, and then click **Refresh**.

## Related topics


[Example Filter Queries](example-filter-queries.md)

 

 






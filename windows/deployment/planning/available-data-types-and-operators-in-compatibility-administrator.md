---
title: Available Data Types and Operators in Compatibility Administrator (Windows 10)
description: The Compatibility Administrator tool provides a way to query your custom-compatibility databases.
ms.assetid: 67d9c03e-ab9d-4fda-8a55-8c5b90266d3b
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: appcompat
ms.sitesec: library
audience: itproauthor: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Available Data Types and Operators in Compatibility Administrator


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

The Compatibility Administrator tool provides a way to query your custom-compatibility databases.

## Available Data Types


Customized-compatibility databases in Compatibility Administrator contain the following data types.

-   **Integer**. A numerical value with no fractional part. All integers are unsigned because none of the attributes can have a negative value.

-   **String**. A series of alphanumeric characters manipulated as a group.

-   **Boolean**. A value of True or False.

## Available Attributes


The following table shows the attributes you can use for querying your customized-compatibility databases in Compatibility Administrator.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Attribute</th>
<th align="left">Description</th>
<th align="left">Data type</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>APP_NAME</p></td>
<td align="left"><p>Name of the application.</p></td>
<td align="left"><p>String</p></td>
</tr>
<tr class="even">
<td align="left"><p>DATABASE_GUID</p></td>
<td align="left"><p>Unique ID for your compatibility database.</p></td>
<td align="left"><p>String</p></td>
</tr>
<tr class="odd">
<td align="left"><p>DATABASE_INSTALLED</p></td>
<td align="left"><p>Specifies if you have installed the database.</p></td>
<td align="left"><p>Boolean</p></td>
</tr>
<tr class="even">
<td align="left"><p>DATABASE_NAME</p></td>
<td align="left"><p>Descriptive name of your database.</p></td>
<td align="left"><p>String</p></td>
</tr>
<tr class="odd">
<td align="left"><p>DATABASE_PATH</p></td>
<td align="left"><p>Location of the database on your computer.</p></td>
<td align="left"><p>String</p></td>
</tr>
<tr class="even">
<td align="left"><p>FIX_COUNT</p></td>
<td align="left"><p>Number of compatibility fixes applied to a specific application.</p></td>
<td align="left"><p>Integer</p></td>
</tr>
<tr class="odd">
<td align="left"><p>FIX_NAME</p></td>
<td align="left"><p>Name of your compatibility fix.</p></td>
<td align="left"><p>String</p></td>
</tr>
<tr class="even">
<td align="left"><p>MATCH_COUNT</p></td>
<td align="left"><p>Number of matching files for a specific, fixed application.</p></td>
<td align="left"><p>Integer</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MATCHFILE_NAME</p></td>
<td align="left"><p>Name of a matching file used to identify a specific, fixed application.</p></td>
<td align="left"><p>String</p></td>
</tr>
<tr class="even">
<td align="left"><p>MODE_COUNT</p></td>
<td align="left"><p>Number of compatibility modes applied to a specific, fixed application.</p></td>
<td align="left"><p>Integer</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MODE_NAME</p></td>
<td align="left"><p>Name of your compatibility mode.</p></td>
<td align="left"><p>String</p></td>
</tr>
<tr class="even">
<td align="left"><p>PROGRAM_APPHELPTYPE</p></td>
<td align="left"><p>Type of AppHelp message applied to an entry. The value can be 1 or 2, where 1 enables the program to run and 2 blocks the program.</p></td>
<td align="left"><p>Integer</p></td>
</tr>
<tr class="odd">
<td align="left"><p>PROGRAM_DISABLED</p></td>
<td align="left"><p>Specifies if you disabled the compatibility fix for an application. If True, Compatibility Administrator does not apply the fixes to the application.</p></td>
<td align="left"><p>Boolean</p></td>
</tr>
<tr class="even">
<td align="left"><p>PROGRAM_GUID</p></td>
<td align="left"><p>Unique ID for an application.</p></td>
<td align="left"><p>String</p></td>
</tr>
<tr class="odd">
<td align="left"><p>PROGRAM_NAME</p></td>
<td align="left"><p>Name of the application that you are fixing.</p></td>
<td align="left"><p>String</p></td>
</tr>
</tbody>
</table>



## Available Operators


The following table shows the operators that you can use for querying your customized-compatibility databases in the Compatibility Administrator.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Symbol</th>
<th align="left">Description</th>
<th align="left">Data type</th>
<th align="left">Precedence</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>&gt;</p></td>
<td align="left"><p>Greater than</p></td>
<td align="left"><p>Integer or string</p></td>
<td align="left"><p>1</p></td>
</tr>
<tr class="even">
<td align="left"><p>&gt;=</p></td>
<td align="left"><p>Greater than or equal to</p></td>
<td align="left"><p>Integer or string</p></td>
<td align="left"><p>1</p></td>
</tr>
<tr class="odd">
<td align="left"><p>&lt;</p></td>
<td align="left"><p>Less than</p></td>
<td align="left"><p>Integer or string</p></td>
<td align="left"><p>1</p></td>
</tr>
<tr class="even">
<td align="left"><p>&lt;=</p></td>
<td align="left"><p>Less than or equal to</p></td>
<td align="left"><p>Integer or string</p></td>
<td align="left"><p>1</p></td>
</tr>
<tr class="odd">
<td align="left"><p>&lt;&gt;</p></td>
<td align="left"><p>Not equal to</p></td>
<td align="left"><p>Integer or string</p></td>
<td align="left"><p>1</p></td>
</tr>
<tr class="even">
<td align="left"><p>=</p></td>
<td align="left"><p>Equal to</p></td>
<td align="left"><p>Integer, string, or Boolean</p></td>
<td align="left"><p>1</p></td>
</tr>
<tr class="odd">
<td align="left"><p>HAS</p></td>
<td align="left"><p>A special SQL operator used to check if the left-hand operand contains a substring specified by the right-hand operand.</p></td>
<td align="left"><p><strong>Left-hand operand</strong>. MATCHFILE_NAME, MODE_NAME, FIX_NAME</p>
<div class="alert">
<strong>Note</strong><br/><p>Only the HAS operator can be applied to the MATCHFILE_NAME, MODE_NAME, and FIX_NAME attributes.</p>
</div>
<div>

</div>
<p><strong>Right-hand operand</strong>. String</p></td>
<td align="left"><p>1</p></td>
</tr>
<tr class="even">
<td align="left"><p>OR</p></td>
<td align="left"><p>Logical OR operator</p></td>
<td align="left"><p>Boolean</p></td>
<td align="left"><p>2</p></td>
</tr>
<tr class="odd">
<td align="left"><p>AND</p></td>
<td align="left"><p>Logical AND operator</p></td>
<td align="left"><p>Boolean</p></td>
<td align="left"><p>2</p></td>
</tr>
</tbody>
</table>



## Related topics
[Using the Compatibility Administrator Tool](using-the-compatibility-administrator-tool.md)










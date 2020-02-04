---
title: Registry CSP
description: Registry CSP
ms.assetid: 2307e3fd-7b61-4f00-94e1-a639571f2c9d
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---

# Registry CSP


The Registry configuration service provider is used to update registry settings. However, if there is configuration service provider that is specific to the settings that need to be updated, use the specific configuration service provider.

>  **Note**   The Registry CSP is only supported in Windows 10 Mobile for OEM configuration. Do not use this CSP for enterprise remote management.
For Windows 10 Mobile only, this configuration service provider requires the ID\_CAP\_CSP\_FOUNDATION and ID\_CAP\_CSP\_OEM capabilities to be accessed from a network configuration application.

 

For the Registry CSP, you cannot use the Replace command unless the node already exists.

The Registry configuration service provider can be managed over both the OMA Client Provisioning and the OMA DM protocol. When using OMA DM to add a registry key, a child registry value must also be added in the XML code.

For OMA Client Provisioning, the follows notes apply:

-   Querying the registry at the top level is not allowed. All parameters must be queried individually. The underlying data store of the Registry is typed. Be sure to use the **datatype** attribute of the *&lt;parm&gt;* tag.

-   This documentation describes the default characteristics. Additional characteristics may be added.

-   Because the **Registry** configuration service provider uses the backslash (\) character as a separator between key names, backslashes which occur in the name of a registry key must be escaped. Backslashes can be escaped by using two sequential backslashes (\\\).

The default security role maps to each subnode unless specific permission is granted to the subnode. The security role for subnodes is implementation specific, and can be changed by OEMs and mobile operators.

## Microsoft Custom Elements


The following table shows the Microsoft custom elements that this configuration service provider supports for OMA Client Provisioning.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Elements</th>
<th>Available</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>parm-query</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>noparm</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>nocharacteristic</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>characteristic-query</p></td>
<td><p>Yes</p>
<p>Recursive query: Yes</p>
<p>Top level query: No</p></td>
</tr>
</tbody>
</table>

 

Use these elements to build standard OMA Client Provisioning configuration XML. For information about specific elements, see MSPROV DTD elements.

## Supported Data Types


The following table shows the data types this configuration service provider supports.

<table>
<colgroup>
<col width="15%" />
<col width="15%" />
<col width="70%" />
</colgroup>
<thead>
<tr class="header">
<th>XML Data Type</th>
<th>Native Registry Type</th>
<th>XML Format</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>integer</p></td>
<td><p>REG_DWORD</p></td>
<td><p>Integer. A query of this parameter returns an integer type.</p></td>
</tr>
<tr class="even">
<td><p>boolean</p></td>
<td><p>REG_DWORD</p></td>
<td><p>Integer value of 1 or 0. A query of this parameter returns an integer type.</p></td>
</tr>
<tr class="odd">
<td><p>float</p></td>
<td><p>REG_SZ</p></td>
<td><p>Float. A query of this parameter returns a string type.</p></td>
</tr>
<tr class="even">
<td><p>string</p></td>
<td><p>REG_SZ</p></td>
<td><p>String. A query of this parameter returns a string type.</p></td>
</tr>
<tr class="odd">
<td><p>multiplestring</p></td>
<td><p>REG_MULTI_SZ</p></td>
<td><p>Multiple strings are separated by <strong>&amp;#xF000;</strong> and ended with two <strong>&amp;#xF000;</strong> - A query of this parameter returns a multistring type.</p></td>
</tr>
<tr class="even">
<td><p>binary</p></td>
<td><p>REG_BINARY</p></td>
<td><p>Base64 encoded. A query of this parameter returns a binary type.</p></td>
</tr>
<tr class="odd">
<td><p>time</p></td>
<td><p>FILETIME in REG_BINARY</p></td>
<td><p>The time format conforms to the ISO8601 standard, with the date portion optional. If the date portion is omitted, also omit the &quot;T&quot; delimiter. A query of this parameter returns a binary type.</p></td>
</tr>
<tr class="even">
<td><p>date</p></td>
<td><p>FILETIME in REG_BINARY</p></td>
<td><p>The date format conforms to the ISO8601 standard, with the time portion optional. If the time portion is omitted, also omit the &quot;T&quot; delimiter. A query of this parameter returns a binary type.</p></td>
</tr>
</tbody>
</table>

 

It is not possible to access registry keys nested under the current path by using the Registry configuration service provider. Instead, the values of the subkey must be accessed separately by using a new characteristic.

## Related topics


[Configuration service provider reference](configuration-service-provider-reference.md)

 

 







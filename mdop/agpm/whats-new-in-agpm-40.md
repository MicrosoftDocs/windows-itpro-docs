---
title: What's New in AGPM 4.0
description: What's New in AGPM 4.0
author: dansimp
ms.assetid: 31775f7f-a59c-4e64-a875-0adc9f5bc835
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# What's New in AGPM 4.0


Microsoft Advanced Group Policy Management (AGPM) 4.0 includes new features that let you search for Group Policy Objects (GPOs), filter the list of GPOs displayed, export and import a GPO to a different forest, and install AGPM on computers running Windows 7 and Windows Server 2008 R2.

## Search and filter GPOs


In AGPM 4.0, you can search the list of GPOs for specific attributes to filter the list of GPOs displayed. For example, you can search for GPOs with a particular name, state, or comment. You can also search for GPOs that were last changed by a particular Group Policy administrator or on a particular date.

You can create a complex search string by using the format *GPO attribute 1: search text 1 GPO attribute 2: search text 2…*, where a GPO attribute is any column heading in the list of GPOs in AGPM. For example, to search for all GPOs with names including the text "MyGPO" that are checked in and were last changed by the user Editor03, you would type the following in the Search box: **name: MyGPO state:** **checked in** **changed by: Editor03**. The search returns partial matches so that you can enter part of a GPO name or user name and view a list of all GPOs that include that text in their name.

Additionally, you can use the same special terms available when you search in Windows to search for GPOs changed on a specific date or range of dates. For example, **change date:** **lastmonth** or **change date:** **thisweek**.

## Export and import GPOs to different forests


Using AGPM 4.0, you can copy a controlled GPO from a domain in one forest to a domain in a second forest. For example, you can export a GPO from a domain in one forest to a CAB file by using AGPM, copy that CAB file to a USB drive, plug the USB drive into a computer in a domain in a second forest, and import the GPO into AGPM in a domain in the second forest. You can either import the GPO as a new controlled GPO, or import it to replace the settings of an existing GPO that is checked out.

## Support for Windows Server 2008 R2 and Windows 7


AGPM 4.0 supports Windows Server 2008 R2 and Windows 7, yet still supports Windows Server 2008 and Windows Vista® with Service Pack 1 (SP1). However, there are limitations in a mixed environment that includes both the newer and older operating systems, as indicated in the following table.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating system on which AGPM Server 4.0 runs</th>
<th align="left">Operating system on which AGPM Client 4.0 runs</th>
<th align="left">Status of AGPM 4.0 support</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows Server 2008 R2 or Windows 7</p></td>
<td align="left"><p>Windows Server 2008 R2 or Windows 7</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 R2 or Windows 7</p></td>
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Supported, but cannot edit policy settings or preference items that exist only in Windows Server 2008 R2 or Windows 7</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Windows Server 2008 R2 or Windows 7</p></td>
<td align="left"><p>Unsupported</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Supported, but cannot report or edit policy settings or preference items that exist only in Windows Server 2008 R2 or Windows 7</p></td>
</tr>
</tbody>
</table>

 

 

 






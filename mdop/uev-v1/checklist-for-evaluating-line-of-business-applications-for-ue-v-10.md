---
title: Checklist for Evaluating Line-of-Business Applications for UE-V 1.0
description: Checklist for Evaluating Line-of-Business Applications for UE-V 1.0
author: levinec
ms.assetid: 3bfaab30-59f7-4099-abb1-d248ce0086b8
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Checklist for Evaluating Line-of-Business Applications for UE-V 1.0


To evaluate which line-of-business applications should be included in your UE-V deployment, consider the following:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"></th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Does this application contain settings that the user can customize?</p></td>
</tr>
<tr class="even">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Is it important for the user that these settings roam?</p></td>
</tr>
<tr class="odd">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Are these user settings already managed by an application management or settings policy solution? UE-V applies application settings at application launch and Windows settings at logon, unlock, or remote connect events. If you use UE-V with other settings policy solutions, users might experience inconsistency across roamed settings.</p></td>
</tr>
<tr class="even">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Are the application settings specific to the computer? Application preferences and customizations that are associated with hardware or specific computer configurations do not consistently roam across sessions and can cause a poor application experience.</p></td>
</tr>
<tr class="odd">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Does the application store settings in the Program Files directory or in the file directory that is located in the <strong>Users</strong> \ [User name] \ <strong>AppData</strong> \ <strong>LocalLow</strong> directory? Application data that is stored in either of these locations usually should not roam with the user, because this data is specific to the computer or because the data is too large to roam.</p></td>
</tr>
<tr class="even">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Does the application store any settings in a file that contains other application data that should not roam? UE-V synchronizes files as a single unit. If settings are stored in files that include application data other than settings, then synchronizing this additional data may cause a poor application experience.</p></td>
</tr>
<tr class="odd">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>How large are the files that contain the settings? The performance of the settings synchronization can be affected by large files. Including large files can impact the performance of settings synchronization.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Planning for UE-V Configuration Methods](planning-for-ue-v-configuration-methods.md)

[Planning for UE-V 1.0](planning-for-ue-v-10.md)

 

 






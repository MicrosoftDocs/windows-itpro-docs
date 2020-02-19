---
title: Microsoft Exchange properties (Surface Hub)
description: Some Microsoft Exchange properties of the device account must be set to particular values to have the best meeting experience on Microsoft Surface Hub.
ms.assetid: 3E84393B-C425-45BF-95A6-D6502BA1BF29
ms.reviewer: 
manager: dansimp
keywords: Microsoft Exchange properties, device account, Surface Hub, Windows PowerShell cmdlet
ms.prod: surface-hub
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.date: 06/20/2019
ms.localizationpriority: medium
---

# Microsoft Exchange properties (Surface Hub)


Some Microsoft Exchange properties of the device account must be set to particular values to have the best meeting experience on Microsoft Surface Hub. The following table lists various Exchange properties based on PowerShell cmdlet parameters, their purpose, and the values they should be set to.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Property</th>
<th align="left">Description</th>
<th align="left">Value</th>
<th align="left">Impact</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>AutomateProcessing</p></td>
<td align="left"><p>The AutomateProcessing parameter enables or disables calendar processing on the mailbox.</p></td>
<td align="left"><p>AutoAccept</p></td>
<td align="left"><p>The Surface Hub will be able to automatically accept or decline meeting requests based on its availability.</p></td>
</tr>
<tr class="even">
<td align="left"><p>AddOrganizerToSubject</p></td>
<td align="left"><p>The AddOrganizerToSubject parameter specifies whether the meeting organizer's name is used as the subject of the meeting request.</p></td>
<td align="left"><p>$False</p></td>
<td align="left"><p>The welcome screen will not show the meeting organizer twice (instead of showing it as both the organizer and in the meeting subject).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>AllowConflicts</p></td>
<td align="left"><p>The AllowConflicts parameter specifies whether to allow conflicting meeting requests.</p></td>
<td align="left"><p>$False</p></td>
<td align="left"><p>The Surface Hub will decline meeting requests that conflict with another meeting’s time.</p></td>
</tr>
<tr class="even">
<td align="left"><p>DeleteComments</p></td>
<td align="left"><p>The DeleteComments parameter specifies whether to remove or keep any text in the message body of incoming meeting requests.</p></td>
<td align="left"><p>$False</p></td>
<td align="left"><p>The message body of meetings can be retained and retrieved from a Surface Hub if you need it during a meeting.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>DeleteSubject</p></td>
<td align="left"><p>The DeleteSubject parameter specifies whether to remove or keep the subject of incoming meeting requests.</p></td>
<td align="left"><p>$False</p></td>
<td align="left"><p>Meeting request subjects can be shown on the Surface Hub.</p></td>
</tr>
<tr class="even">
<td align="left"><p>RemovePrivateProperty</p></td>
<td align="left"><p>The RemovePrivateProperty parameter specifies whether to clear the private flag for incoming meeting requests.</p></td>
<td align="left"><p>$False</p></td>
<td align="left"><p>Private meeting subjects will show as Private on the welcome screen.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>AddAdditionalResponse</p></td>
<td align="left"><p>The AddAdditionalResponse parameter specifies whether additional information will be sent from the resource mailbox when responding to meeting requests.</p></td>
<td align="left"><p>$True</p></td>
<td align="left"><p>When a response is sent to a meeting request, custom text will be provided in the response.</p></td>
</tr>
<tr class="even">
<td align="left"><p>AdditionalResponse</p></td>
<td align="left"><p>The AdditionalResponse parameter specifies the additional information to be included in responses to meeting requests.</p>
<div class="alert">
<strong>Note</strong>  This text will not be sent unless AddAdditionalResponse is set to $True.
</div>
<div>
 
</div></td>
<td align="left"><p>Your choice—the additional response can be used to inform people how to use a Surface Hub or point them towards resources.</p></td>
<td align="left"><p>Adding an additional response message can provide people an introduction to how they can use a Surface Hub in their meeting.</p></td>
</tr>
</tbody>
</table>

 

 

 






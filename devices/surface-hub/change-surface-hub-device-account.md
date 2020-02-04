---
title: Change the Microsoft Surface Hub device account
description: You can change the device account in Settings to either add an account if one was not already provisioned, or to change any properties of an account that was already provisioned.
ms.assetid: AFC43043-3319-44BC-9310-29B1F375E672
ms.reviewer: 
manager: dansimp
keywords: change device account, change properties, Surface Hub
ms.prod: surface-hub
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.date: 07/27/2017
ms.localizationpriority: medium
---

# Change the Microsoft Surface Hub device account


You can change the device account in Settings to either add an account if one was not already provisioned, or to change any properties of an account that was already provisioned.

## Details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Value</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>User Principal Name</p></td>
<td align="left"><p>The user principal name (UPN) of the device account.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Password</p></td>
<td align="left"><p>The corresponding password of the device account.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Domain</p></td>
<td align="left"><p>The domain that the device account belongs to. This field does not need to be provided for Office 365 accounts.</p></td>
</tr>
<tr class="even">
<td align="left"><p>User name</p></td>
<td align="left"><p>The user name of the device account. This field does not need to be provided for Office 365 accounts.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Session Initiation Protocol (SIP) address</p></td>
<td align="left"><p>The SIP address of the device account.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Exchange server</p></td>
<td align="left"><p>This is the Exchange server of the device account. The device account’s username and password must be able to authenticate to the specified Exchange server.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Enable Exchange services</p></td>
<td align="left"><p>When checked, all Exchange services will be enabled (for example, calendar on the welcome screen, emailing whiteboards). When not checked, all Exchange services will be disabled, and the Exchange server does not need to be provided.</p></td>
</tr>
</tbody>
</table>

 

## What happens?


The UPN and password are used to validate the account in AD or Azure AD. If the validation fails, you may need to provide the domain and user name.

Using the credentials provided, we will try to discover the SIP address. If a SIP address can't be found, then Skype for Business will use the UPN as the SIP address. If this is not the SIP address for the account, you will need to provide the SIP address.

The Exchange server address will need to be provided if the device can't find a server associated with the login credentials. Microsoft Surface Hub will use the Exchange server to talk to ActiveSync, which enables several key features on the device.

## Related topics


[Manage Microsoft Surface Hub](manage-surface-hub.md)

[Microsoft Surface Hub administrator's guide](surface-hub-administrators-guide.md)

 

 






---
title: IConfigServiceProvider2 ConfigManagerNotification
description: IConfigServiceProvider2 ConfigManagerNotification
ms.assetid: b1f0fe0f-afbe-4b36-a75d-34239a86a75c
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 06/26/2017
---

# IConfigServiceProvider2::ConfigManagerNotification


This method enables ConfigManager2 to send notifications of events to a configuration service provider, such as when the configuration service provider is loaded or unloaded, when rollbacks are performed, and when actions are called on nodes.

## Syntax


``` syntax
HRESULT ConfigManagerNotification([in] CFGMGR_NOTIFICATION cmnfyState, 
                                  [in] LPARAM lpParam);
```

## Parameters


<a href="" id="cmnfystate"></a>*cmnfyState*
<ul style="list-style-type:none">
<li>
The following events are supported by all configuration service providers.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Event</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>CFGMGR_NOTIFICATION_LOAD</p></td>
<td><p>First time the configuration service provider is loaded/instantiated.</p></td>
</tr>
<tr class="even">
<td><p>CFGMGR_NOTIFICATION_BEGINCOMMANDPROCESSING</p></td>
<td><p>About to run the first command of a transaction.</p></td>
</tr>
<tr class="odd">
<td><p>CFGMGR_NOTIFICATION_ENDCOMMANDPROCESSING</p></td>
<td><p>Last command of transaction has executed. This event is always raised if <code>BEGINCOMMANDPROCESSING</code> was raised, even if the handling of <code>BEGINCOMMANDPROCESSING</code> failed.</p></td>
</tr>
<tr class="even">
<td><p>CFGMGR_NOTIFICATION_BEGINCOMMIT</p></td>
<td><p>About to commit the first command of a transaction.</p></td>
</tr>
<tr class="odd">
<td><p>CFGMGR_NOTIFICATION_ENDCOMMIT</p></td>
<td><p>Last command of a transaction has been committed. This event is always raised if <code>BEGINCOMMIT</code> was raised, even if the handling of <code>BEGINCOMMIT</code> failed.</p></td>
</tr>
<tr class="even">
<td><p>CFGMGR_NOTIFICATION_BEGINROLLBACK</p></td>
<td><p>About to roll back the first command of the transaction.</p></td>
</tr>
<tr class="odd">
<td><p>CFGMGR_NOTIFICATION_ENDROLLBACK</p></td>
<td><p>Last command of the transaction has been rolled back. This event is always raised if <code>BEGINROLLBACK</code> was raised, even if the handling of <code>BEGINROLLBACK</code> failed.</p></td>
</tr>
<tr class="even">
<td><p>CFGMGR_NOTIFICATION_UNLOAD</p></td>
<td><p>The configuration service provider is about to be unloaded/deleted.</p></td>
</tr>
<tr class="odd">
<td><p>CFGMGR_NOTIFICATION_SETSESSIONOBJ</p></td>
<td><p>Session object is available for use; <em>lpParam</em> can be cast to an IConfigSession2 pointer.</p></td>
</tr>
<tr class="even">
<td><p>CFGMGR_NOTIFICATION_BEGINTRANSACTIONING</p></td>
<td><p>Primarily used for compatibility with v1 configuration service providers. Signals the beginning of a transactioning sequence.</p></td>
</tr>
<tr class="odd">
<td><p>CFGMGR_NOTIFICATION_ENDTRANSACTIONING</p></td>
<td><p>Primarily used for compatibility with v1 configuration service providers. Signals the end of a transactioning sequence.</p></td>
</tr>
</tbody>
</table>
</li>
</ul>
<br>


<a href="" id="lpparam"></a>*lpParam*
<ul style="list-style-type:none">
<li>
Normally NULL, but contains a pointer to an IConfigSession2 instance if *cmnfState* is CFGMGR\_NOTIFICATION\_SETSESSIONOBJ.
</li>
</ul>
<br>

## Return Value

A value of S\_OK indicates success.

## Remarks

ConfigManager2 guarantees that if it raised one of the BEGIN events

-   CFGMGR\_NOTIFICATION\_BEGINCOMMANDPROCESSING
-   CFGMGR\_NOTIFICATION\_BEGINCOMMIT
-   CFGMGR\_NOTIFICATION\_BEGINROLLBACK

then the corresponding END event will be raised, even if the handling of the BEGIN notification failed.
For each transaction, the sequence of notifications is:

1.  BEGINCOMMANDPROCESSING

2.  BEGINTRANSACTIONING

3.  ENDTRANSACTIONING

4.  ENDCOMMANDPROCESSING

5.  Either BEGINCOMMIT or BEGINROLLBACK, depending on whether the transaction succeeded or failed.

6.  Either ENDCOMMIT or ENDROLLBACK, depending on whether the transaction succeeded or failed.

Each configuration service provider will receive the relevant BEGIN/END notifications exactly once per each transaction that ConfigManager2 executes.

## Requirements

**Header:** None

 







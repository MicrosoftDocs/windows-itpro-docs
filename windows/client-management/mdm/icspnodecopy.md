---
title: ICSPNode Copy
description: ICSPNode Copy
ms.assetid: cd5ce0bc-a08b-4f82-802d-c7ff8701b41f
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 06/26/2017
---

# ICSPNode::Copy

This method makes a copy of the current node at the specified path within the configuration service provider. If the target node exists, it should be overwritten.

## Syntax

``` syntax
HRESULT Copy([in] IConfigManager2URI* puriDestination,
             [in, out] ICSPNode** ppNewNode, 
             [in, out] DWORD* pgrfNodeOptions);
```

## Parameters

<a href="" id="puridestination"></a>*puriDestination*  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Path and name of new node's location, relative to the configuration service provider's root node.

<a href="" id="ppnewnode"></a>*ppNewNode*  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New node created by the copy operation.

<a href="" id="pgrfnodeoptions"></a>*pgrfNodeOptions*  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Features supported on the new node.

<table style="margin-left:26px">
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Feature name</th>
<th>Bit value (in hex)</th>
<th>Notes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><code>CSPNODE_OPTION_NATIVESECURITY</code></p></td>
<td><p>0x01</p></td>
<td><p>The native security option signifies that the node handles its own security checking, and that ConfigManager2 does not have to manage security for this node.</p></td>
</tr>
<tr class="even">
<td><p><code>CSPNODE_OPTION_INTERNALTRANSACTION</code></p></td>
<td><p>0x02</p></td>
<td><p>The internal transactioning option tells ConfigManager2 that the configuration service provider handles the transactioning (rollback and commitment) for the node. To handle internal transactioning, the node must implement the [ICSPNodeTransactioning](icspnodetransactioning.md).</p></td>
</tr>
<tr class="odd">
<td><p><code>CSPNODE_OPTION_HANDLEALLPROPERTIES</code></p></td>
<td><p>0x04</p></td>
<td><p>Unused.</p></td>
</tr>
<tr class="even">
<td><p><code>CSPNODE_OPTION_SECRETDATA</code></p></td>
<td><p>0x08</p></td>
<td><p>Unused.</p></td>
</tr>
</tbody>
</table>

 
## Return Value

A value of S\_OK indicates that the node was successfully copied to the new location. CFGMGR\_E\_COMMANDNOTALLOWED indicates that this node does not support the **Copy** method.

## Remarks

For externally–transactioned nodes, if this method is implemented, then [ICSPNode::Add](icspnodeadd.md), [ICSPNode::SetValue](icspnodesetvalue.md), [ICSPNode::Clear](icspnodeclear.md), and [ICSPNode::DeleteChild](icspnodedeletechild.md) must also be implemented or rollback will fail.

## Requirements

**Header:** None

## Related topics

[Create a custom configuration service provider](create-a-custom-configuration-service-provider.md)







---
title: IConfigServiceProvider2 GetNode
description: IConfigServiceProvider2 GetNode
ms.assetid: 4dc10a59-f6a2-45c0-927c-d594afc9bb91
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 06/26/2017
---

# IConfigServiceProvider2::GetNode


This method returns a node from the configuration service provider based on the path that was passed in. The returned node is a descendent of the root node.

## Syntax


``` syntax
HRESULT GetNode([in] IConfigManager2URI* pURI, 
                [out] ICSPNode** ppNode,
                [in, out] DWORD* pgrfNodeOptions);
```

## Parameters

<a href="" id="puri"></a>*pUri*
<ul style="list-style-type:none">
<li>
URI of the child node, relative to the root node. For example, to access the "./Vendor/Contoso/SampleCSP/ContainerA/UserName" node, ConfigManager2 calls the configuration service provider's `GetNode` method and passes in an IConfigManager2URI instance representing the URI “SampleCSP/ContainerA/UserName”.
</li>
</ul>
<br>
<a href="" id="ppnode"></a>*ppNode*
<ul style="list-style-type:none">
<li>
If the query is successful, this returns the ICSPNode instance at the *pUri* location in the configuration service provider's tree.
</li>
</ul>
<br>
<a href="" id="pgrfnodeoptions"></a>*pgrfNodeOptions*
<ul style="list-style-type:none">
<li>
Nodes support the following features.

<table>
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
</li>
</ul>
<br>

## Return Value

This method returns an ICSPNode. If the function returns null, call GetLastError to get the error value.

A value of S\_OK indicates that a node was successfully found. CFGMGR\_E\_NODENOTFOUND indicates that the node does not exist. Note that this may be normal, as in the case of optional nodes.

## Requirements

**Header:** None

 







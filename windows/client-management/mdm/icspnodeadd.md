---
title: ICSPNode Add
description: ICSPNode Add
ms.assetid: 5f03d350-c82b-4747-975f-385fd8b5b3a8
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---

# ICSPNode::Add

This method adds an immediate child node to a configuration service provider node and returns a pointer to the new node.

## Syntax

``` syntax
HRESULT Add([in] IConfigManager2URI* pChildName,
            [in] CFG_DATATYPE DataType,
            [in] VARIANT varValue, 
            [in, out] ICSPNode** ppNewNode, 
            [in, out] DWORD* pgrfNodeOptions);
```

## Parameters

<a href="" id="pchildname"></a>*pChildName*  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name of child node to add.

<a href="" id="datatype"></a>*DataType*  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Data type of the child node to add. Supported types include:
-   CFG\_DATATYPE\_NODE

-   CFG\_DATATYPE\_NULL

-   CFG\_DATATYPE\_BINARY

-   CFG\_DATATYPE\_INTEGER

-   CFG\_DATATYPE\_STRING

-   CFG\_DATATYPE\_MULTIPLE\_STRING

<a href="" id="varvalue"></a>*varValue*  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Value of the child node to add.

<a href="" id="ppnewnode"></a>*ppNewNode*  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New child node to return.

<a href="" id="pgrfnodeoptions"></a>*pgrfNodeOptions*  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Features supported on the new child node.
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
<td style="vertical-align:top"><p><code>CSPNODE_OPTION_NATIVESECURITY</code></p></td>
<td style="vertical-align:top"><p>0x01</p></td>
<td style="vertical-align:top"><p>The native security option signifies that the node handles its own security checking, and that ConfigManager2 does not have to manage security for this node.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p><code>CSPNODE_OPTION_INTERNALTRANSACTION</code></p></td>
<td style="vertical-align:top"><p>0x02</p></td>
<td style="vertical-align:top"><p>The internal transactioning option tells ConfigManager2 that the configuration service provider handles the transactioning (rollback and commitment) for the node. To handle internal transactioning, the node must implement the [ICSPNodeTransactioning](icspnodetransactioning.md).</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p><code>CSPNODE_OPTION_HANDLEALLPROPERTIES</code></p></td>
<td style="vertical-align:top"><p>0x04</p></td>
<td style="vertical-align:top"><p>Unused.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p><code>CSPNODE_OPTION_SECRETDATA</code></p></td>
<td style="vertical-align:top"><p>0x08</p></td>
<td style="vertical-align:top"><p>Unused.</p></td>
</tr>
</tbody>
</table>

 
## Return Value

This method returns an ICSPNode and the feature options supported on that child node. If the method returns null, call GetLastError to get the error value.

A value of S\_OK indicates that a node was successfully found. CMN\_E\_ALREADY\_EXISTS indicates that a child node with the same name already exists. CFGMGR\_E\_COMMANDNOTALLOWED indicates that this node does not support the **Add** method.

## Remarks

For externally–transactioned nodes, if this method is implemented, then [ICSPNode::Clear](icspnodeclear.md) and [ICSPNode::DeleteChild](icspnodedeletechild.md) must also be implemented or rollback will fail.

## Requirements

**Header:** None

## Related topics

[Create a custom configuration service provider](create-a-custom-configuration-service-provider.md)

 







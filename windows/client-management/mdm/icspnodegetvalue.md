---
title: ICSPNode GetValue
description: ICSPNode GetValue
ms.assetid: c684036d-98be-4659-8ce8-f72436a39b90
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---

# ICSPNode::GetValue

This method gets the value and data type for the node. Interior (non-leaf) nodes may not have a value.

## Syntax

``` syntax
HRESULT GetValue([in,out] VARIANT* pvarValue);
```

## Parameters

<a href="" id="pvarvalue"></a>*pvarValue*  
<p style="margin-left: 25px">Data value to return. A node containing a password value returns 16 asterisks (‘*’) for this method. A leaf node whose value has not been set returns a variant whose type is <code>VT_NULL</code>.
</p>

## Return Value

A value of S\_OK indicates that a node was successfully found. CFGMGR\_E\_COMMANDNOTALLOWED indicates that this node does not support the **ICSP::GetValue** methods, or that this is an interior node.

## Remarks

For externally–transactioned nodes, this node is not required to implement any other methods for a successful rollback.

## Requirements

**Header:** None

## Related topics

[Create a custom configuration service provider](create-a-custom-configuration-service-provider.md)

 







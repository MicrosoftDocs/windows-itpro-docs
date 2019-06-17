---
title: ICSPNode SetValue
description: ICSPNode SetValue
ms.assetid: b218636d-fe8b-4a0f-b4e8-a621f65619d3
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---

# ICSPNode::SetValue

This method sets the value for the configuration service provider node. It is an error to attempt to set the value of an interior node.

## Syntax

``` syntax
HRESULT SetValue([in] VARIANT varValue);
```

## Parameters

<a href="" id="varvalue"></a>*varValue*  
<p style="margin-left: 25px">Value to set. To clear a leaf node’s value, set <em>varValue</em>’s type to <code>VT_NULL</code>.</p>

## Return Value

A value of S\_OK indicates that the value was set successfully. CFGMGR\_E\_COMMANDNOTALLOWED indicates that this node does not support the **ICSP::SetValue** method, or that it's an internal node.

## Remarks

For externally–transactioned nodes, no additional methods must be implemented to support rollback.

## Requirements

**Header:** None

## Related topics

[Create a custom configuration service provider](create-a-custom-configuration-service-provider.md)

 







---
title: ICSPNode Move
description: ICSPNode Move
ms.assetid: efb359c3-5c86-4975-bf6f-a1c33922442a
ms.reviewer: 
manager: dansimp
ms.author: manikadhiman
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---

# ICSPNode::Move

This method moves the node to a new location within the configuration service provider. If the target node already exists, it should be overwritten.

## Syntax

``` syntax
HRESULT Move([in] IConfigManager2URI* puriDestination);
```

## Parameters

<a href="" id="puridestination"></a>*puriDestination*  
<p style="margin-left: 25px">Path and name of the node's new location, relative to the configuration service provider's root node.</p>

## Return Value

A value of S\_OK indicates that the node was successfully moved. CFGMGR\_E\_COMMANDNOTALLOWED indicates that this node does not support the **ICSP::Move** method.

## Remarks

For externally–transactioned nodes, if this method is implemented, then [ICSPNode::Add](icspnodeadd.md) and [ICSPNode::SetValue](icspnodesetvalue.md) must also be implemented or rollback will fail.

## Requirements

**Header:** None

## Related topics

[Create a custom configuration service provider](create-a-custom-configuration-service-provider.md)

 







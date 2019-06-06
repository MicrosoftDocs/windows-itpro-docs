---
title: ICSPNode DeleteProperty
description: ICSPNode DeleteProperty
ms.assetid: 7e21851f-d663-4558-b3e8-590d24b4f6c4
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---

# ICSPNode::DeleteProperty

This method deletes a property from a configuration service provider node.

## Syntax

``` syntax
HRESULT DeleteProperty([in] REFGUID guidProperty);
```

## Parameters

<a href="" id="guidproperty"></a>*guidProperty*  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The GUID of the property to delete.

## Return Value

A value of S\_OK indicates that a node was successfully found. CFGMGR\_E\_PROPERTYNOTSUPPORTED indicates that this node does not manage or implement the property itself, but delegates it to ConfigManager2. E\_NOTIMPL indicates this method is not supported by this node.

## Remarks

For externally–transactioned nodes, if this method is implemented, then [ICSPNode::SetProperty](icspnodesetproperty.md) must also be implemented or rollback will fail.

## Requirements

**Header:** None

## Related topics

[Create a custom configuration service provider](create-a-custom-configuration-service-provider.md)

 







---
title: ICSPNode GetPropertyIdentifiers
description: ICSPNode GetPropertyIdentifiers
ms.assetid: 8a052cd3-d74c-40c4-845f-f804b920deb4
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---

# ICSPNode::GetPropertyIdentifiers

This method returns a list of non-standard properties supported by the node. The returned array must be allocated with `CoTaskMemAlloc`.

## Syntax

``` syntax
HRESULT GetPropertyIdentifiers([out] ULONG* pulCount,
                               [out,size_is(,*pulCount)] GUID** pguidProperties);
```

## Parameters

<a href="" id="pulcount"></a>*pulCount*  
<p style="margin-left: 25px">The number of non-standard properties to return.</p>

<a href="" id="pguidproperties"></a>*pguidProperties*  
<p style="margin-left: 25px">The array of property GUIDs to return. This array must be allocated with <code>CoTaskMemAlloc</code>.</p>

## Return Value

A value of S\_OK indicates that the properties were successfully returned. E\_NOTIMPL indicates that this method is not supported by the node.

## Remarks

For externally–transactioned nodes, no additional methods are required for successful rollback.

## Requirements

**Header:** None

## Related topics

[Create a custom configuration service provider](create-a-custom-configuration-service-provider.md)

 






---
title: ICSPNode GetChildNodeNames
description: ICSPNode GetChildNodeNames
ms.assetid: dc057f2b-282b-49ac-91c4-bb83bd3ca4dc
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 06/26/2017
---

# ICSPNode::GetChildNodeNames

This method returns the list of child nodes for a configuration service provider node.

## Syntax

``` syntax
HRESULT GetChildNodeNames([out] ULONG* pulCount,
                          [out,size_is(,*pulCount)] BSTR** pbstrNodeNames);
```

## Parameters

<a href="" id="pulcount"></a>*pulCount*
<p style="margin-left: 25px">The number of child nodes to return.</p>

<a href="" id="pbstrnodenames"></a>*pbstrNodeNames*
<p style="margin-left: 25px">The array of child node names. The returned array must be allocated with <code>CoTaskMemAlloc</code>. Each element of the array must be a valid, non-NULL <code>BSTR</code>, allocated by <code>SysAllocString</code> or <code>SysAllocStringLen</code>. The names returned must not be encoded in any way, including URI-encoding, for canonicalization reasons.</p>

## Return Value

A value of S\_OK indicates that a node was successfully found. CFGMGR\_E\_COMMANDNOTALLOWED indicates that this was called on a leaf node (no children will be returned).

## Remarks

For externally–transactioned nodes, no additional methods are required for successful rollback.

## Requirements

**Header:** None

## Related topics

[Create a custom configuration service provider](create-a-custom-configuration-service-provider.md)

 







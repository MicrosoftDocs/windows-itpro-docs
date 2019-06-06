---
title: ICSPNode SetProperty
description: ICSPNode SetProperty
ms.assetid: e235c38f-ea04-4cd8-adec-3c6c0ce7172d
ms.reviewer: 
manager: dansimp
ms.author: manikadhiman
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---

# ICSPNode::SetProperty

This method sets a property value for a configuration service provider node.

## Syntax

``` syntax
HRESULT SetProperty([in] REFGUID guidProperty, 
                    [in] VARIANT varValue);
```

## Parameters

<a href="" id="guidproperty"></a>*guidProperty*  
<p style="margin-left: 25px">The GUID of the property.</p>

<a href="" id="varvalue"></a>*varValue*  
<p style="margin-left: 25px">The value to return.</p>

## Return Value

A value of S\_OK indicates that a node was successfully found. CFGMGR\_E\_COMMANDNOTSUPPORTED indicates that this node delegates the management of the property to ConfigManager2.

## Remarks

Every node must properly handle the CFGMGR\_PROPERTY\_DATATYPE property.

For externally–transactioned nodes, no additional methods are required for successful rollback.

## Requirements

**Header:** None

## Related topics

[Create a custom configuration service provider](create-a-custom-configuration-service-provider.md)

 







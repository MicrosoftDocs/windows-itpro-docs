---
title: ICSPNode Execute
description: ICSPNode Execute
ms.assetid: 5916e7b7-256d-49fd-82b6-db0547a215ec
ms.reviewer: 
manager: dansimp
ms.author: manikadhiman
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---

# ICSPNode::Execute

This method runs a task on an internally-transactioned configuration service provider node by passing in the specified user data and returning a result. The exact meaning of **Execute** and whether it is even supported depends on the purpose of the node. For example, **Execute** called on a node that represents a file should probably **ShellExecute** the file, whereas calling **Execute** on a registry node generally does not make sense.

## Syntax

``` syntax
HRESULT Execute([in] VARIANT varUserData);
```

## Parameters

<a href="" id="varuserdata"></a>*varUserData*  
&nbsp;&nbsp;&nbsp;&nbsp;Data to pass into the execution.

## Return Value

A value of S\_OK indicates that the operation was performed successfully on the node. E\_NOTIMPL should be returned if this method is not implemented.

## Remarks

Externally–transactioned nodes do not support this method.

## Requirements

**Header:** None

## Related topics

[Create a custom configuration service provider](create-a-custom-configuration-service-provider.md)

 





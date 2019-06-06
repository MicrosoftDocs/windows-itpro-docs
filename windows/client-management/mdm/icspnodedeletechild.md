---
title: ICSPNode DeleteChild
description: ICSPNode DeleteChild
ms.assetid: 8cf3663d-a4cf-4d11-b03a-f1d096ad7f9c
ms.reviewer: 
manager: dansimp
ms.author: manikadhiman
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---

# ICSPNode::DeleteChild

Deletes the specified child node from the configuration service provider node. [ICSPNode::Clear](icspnodeclear.md) must always be called first on the child node that is to be deleted.

## Syntax

``` syntax
HRESULT DeleteChild([in] IConfigManager2URI* puriChildToDelete);
```

## Parameters

<a href="" id="purichildtodelete"></a>*puriChildToDelete*  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The name of the child node to delete.

## Return Values

| Return Value                 | Description                                      |
|------------------------------|--------------------------------------------------|
| CFGMGR\_E\_NODENOTFOUND      | The child node does not exist                    |
| CFGMGR\_E\_COMMANDNOTALLOWED | The child node to be deleted is a read-only node |
| S\_OK                        | Success.                                         |

 
A value of S\_OK indicates that a node was successfully deleted. CFGMGR\_E\_NODENOTFOUND indicates that the child node does not exist. CFGMGR\_E\_COMMANDNOTALLOWED indicates that this node does not support the **ICSP::DeleteChild** method, or that the child node to be deleted is a read-only node.

## Remarks

For externally–transactioned nodes, if this method is implemented, then [ICSPNode::Add](icspnodeadd.md) must also be implemented or rollback will fail.

## Requirements

**Header:** None

## Related topics

[Create a custom configuration service provider](create-a-custom-configuration-service-provider.md)

 







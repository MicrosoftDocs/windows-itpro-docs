---
title: ICSPNode Clear
description: ICSPNode Clear
ms.assetid: b414498b-110a-472d-95c0-2d5b38cd78a6
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 06/26/2017
---


# ICSPNode::Clear

This method deletes the contents and child nodes of the current configuration service provider node. This method is always called on the child node before [ICSPNode::DeleteChild](icspnodedeletechild.md) is called on the parent node.


## Syntax

``` syntax
HRESULT Clear();
```


## Return Value

A value of S\_OK indicates that the node was successfully cleared. CFGMGR\_E\_COMMANDNOTALLOWED indicates that this node does not support the **Clear** method.


## Remarks

For externally–transactioned nodes, if this method is implemented, then [ICSPNode::SetValue](icspnodesetvalue.md) and [ICSPNode::SetProperty](icspnodesetproperty.md) must also be implemented or rollback will fail.

Before calling **Clear** on the target node, ConfigManager2 attempts to gather the current state of the node; the parent node does not have to preserve the state of its child nodes if they are externally-transactioned.

## Requirements

**Header:** None


## Related topics

[Create a custom configuration service provider](create-a-custom-configuration-service-provider.md)

 






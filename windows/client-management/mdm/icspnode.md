---
title: ICSPNode
description: ICSPNode
ms.assetid: 023466e6-a8ab-48ad-8548-291409686ac2
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---

# ICSPNode

This interface does most of the work in a configuration service provider. Each individual node in a configuration service provider tree is represented by a separate implementation of this interface. The actions of a ConfigManager2 client are typically translated into calls to an instance of an ICSPNode.

These methods must be implemented so that, if they fail, the node's state at the end of the method matches the state before the method was called.

Some nodes will not be able to perform certain actions, and can return CFGMGR\_E\_COMMANDNOTALLOWED for those methods. For each method that is implemented for externally–transactioned nodes, the contrary method must also be implemented, as defined by "Determine node operations" in [Designing a custom configuration service provider](design-a-custom-windows-csp.md).

The following table shows the methods defined by this interface that OEMs must implement.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Method</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[ICSPNode::Add](icspnodeadd.md)</p></td>
<td><p>Adds an immediate child to a configuration service provider node and returns a pointer to the new child node.</p></td>
</tr>
<tr class="even">
<td><p>[ICSPNode::Clear](icspnodeclear.md)</p></td>
<td><p>Deletes the contents and children of the current configuration service provider node. Called before [ICSPNode::DeleteChild](icspnodedeletechild.md).</p></td>
</tr>
<tr class="odd">
<td><p>[ICSPNode::Copy](icspnodecopy.md)</p></td>
<td><p>Makes a copy of the current node at the specified path within the configuration service provider. If the target node exists, it should be overwritten.</p></td>
</tr>
<tr class="even">
<td><p>[ICSPNode::DeleteChild](icspnodedeletechild.md)</p></td>
<td><p>Deletes the specified child node from the configuration service provider node.</p></td>
</tr>
<tr class="odd">
<td><p>[ICSPNode::DeleteProperty](icspnodedeleteproperty.md)</p></td>
<td><p>Deletes a property from a configuration service provider node.</p></td>
</tr>
<tr class="even">
<td><p>[ICSPNode::Execute](icspnodeexecute.md)</p></td>
<td><p>Runs a task on an internally-transactioned configuration service provider node by passing in the specified user data and returning a result.</p></td>
</tr>
<tr class="odd">
<td><p>[ICSPNode::GetChildNodeNames](icspnodegetchildnodenames.md)</p></td>
<td><p>Returns the list of children for a configuration service provider node.</p></td>
</tr>
<tr class="even">
<td><p>[ICSPNode::GetProperty](icspnodegetproperty.md)</p></td>
<td><p>Returns a property value from a configuration service provider node.</p></td>
</tr>
<tr class="odd">
<td><p>[ICSPNode::GetPropertyIdentifiers](icspnodegetpropertyidentifiers.md)</p></td>
<td><p>Returns a list of non-standard properties supported by the node. The returned array must be allocated with <code>CoTaskMemAlloc</code>.</p></td>
</tr>
<tr class="even">
<td><p>[ICSPNode::GetValue](icspnodegetvalue.md)</p></td>
<td><p>Gets the value and data type for the node. Interior (non-leaf) nodes may not have a value.</p></td>
</tr>
<tr class="odd">
<td><p>[ICSPNode::Move](icspnodemove.md)</p></td>
<td><p>Moves this node to a new location within the configuration service provider. If the target node already exists, it should be overwritten.</p></td>
</tr>
<tr class="even">
<td><p>[ICSPNode::SetProperty](icspnodesetproperty.md)</p></td>
<td><p>Sets a property value for a configuration service provider node.</p></td>
</tr>
<tr class="odd">
<td><p>[ICSPNode::SetValue](icspnodesetvalue.md)</p></td>
<td><p>Sets the value for the configuration service provider node. It is an error to attempt to set the value of an interior node.</p></td>
</tr>
</tbody>
</table>

 

## Related topics

[Create a custom configuration service provider](create-a-custom-configuration-service-provider.md)

 







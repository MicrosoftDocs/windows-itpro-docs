---
title: IConfigServiceProvider2
description: IConfigServiceProvider2
ms.assetid: 8deec0fb-59a6-4d08-8ddb-6d0d3d868a10
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 06/26/2017
---

# IConfigServiceProvider2


OEMs are required to implement this interface once per configuration service provider. ConfigManager2 clients use this interface to instantiate the configuration service provider, to communicate general state information to the configuration service provider, and often to access or create nodes.

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
<td><p><a href="iconfigserviceprovider2configmanagernotification.md" data-raw-source="[IConfigServiceProvider2::ConfigManagerNotification](iconfigserviceprovider2configmanagernotification.md)">IConfigServiceProvider2::ConfigManagerNotification</a></p></td>
<td><p>Enables ConfigManager2 to send notifications to a configuration service provider of events such as when the configuration service provider is loaded or unloaded, when rollbacks are performed, and when actions are called on nodes.</p></td>
</tr>
<tr class="even">
<td><p><a href="iconfigserviceprovider2getnode.md" data-raw-source="[IConfigServiceProvider2::GetNode](iconfigserviceprovider2getnode.md)">IConfigServiceProvider2::GetNode</a></p></td>
<td><p>Returns a node from the configuration service provider based on the path relative to the root node.</p></td>
</tr>
</tbody>
</table>

 

## Related topics

[Create a custom configuration service provider](create-a-custom-configuration-service-provider.md)

 







---
title: How to Apply Network Settings to a MED-V Workspace
description: How to Apply Network Settings to a MED-V Workspace
author: dansimp
ms.assetid: 641f46b3-a56f-478a-823b-1d90aa1716b3
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Apply Network Settings to a MED-V Workspace


Administrators can define the network settings for each MED-V workspace.

All network settings are configured in the **Policy** module, on the **Network** tab.

**To apply network settings to a MED-V workspace**

1.  Click the MED-V workspace to configure.

2.  In the **Network** pane, configure the settings as described in the following table.

3.  On the **Policy** menu, select **Commit**.

**MED-V Workspace Network Properties**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Property</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>TCP/IP Properties</p></td>
<td align="left"><ul>
<li><p><strong>Use host's IP address (NAT)</strong>—The workspace will use NAT to share the host's IP for outgoing traffic.</p></li>
<li><p><strong>Use different IP address than host (Bridge)</strong>—The MED-V workspace will have its own network address, usually obtained via DHCP.</p></li>
</ul>
<p>Select the <strong>Map multiple adapters into Workspace</strong> check box when the host computer has multiple adapters. It is recommended to use this configuration when the host moves between different networks using different adapters.</p></td>
</tr>
<tr class="even">
<td align="left"><p>DNS Server</p></td>
<td align="left"><ul>
<li><p><strong>Don't change</strong>—DNS settings that are set within the MED-V workspace virtual machine will not be changed.</p></li>
<li><p><strong>Use Host's DNS address</strong>—MED-V workspace DNS settings will be synchronized to match the host's settings. The DNS synchronization is dynamic. It is synchronized periodically with the host so that if it is changed on the host, it will change dynamically in the MED-V workspace.</p></li>
<li><p><strong>Use specific DNS addresses</strong>—The MED-V workspace will use a specific DNS, as specified.</p>
<p>In the <strong>Primary</strong> and <strong>Secondary</strong> fields, enter the primary and secondary DNS addresses.</p>
<p>Select the <strong>Append Host's DNS addresses</strong> check box to append the host to the configured DNS addresses.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Assign DNS Suffixes</p></td>
<td align="left"><ul>
<li><p><strong>Assign the following suffixes</strong>—Select this check box to assign specific DNS suffixes; in the box, enter a suffix or multiple suffixes separated by commas.</p></li>
<li><p><strong>Append host suffixes</strong>—Select this check box to append the host suffixes to the DNS address.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

## Related topics


[Creating a MED-V Workspace](creating-a-med-v-workspacemedv-10-sp1.md)

[Using the MED-V Management Console User Interface](using-the-med-v-management-console-user-interface.md)

 

 






---
title: Using the App-V 5.0 Client Management Console
description: Using the App-V 5.0 Client Management Console
author: msfttracyp
ms.assetid: 36398307-57dd-40f3-9d4f-b09f44fd37c3
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Using the App-V 5.0 Client Management Console


This topic provides information about how you can configure and manage the App-V 5.0 client.

## Modify App-V 5.0 client configuration


The App-V 5.0 client has associated settings that can be configured to determine how the client will run in your environment. You can manage these settings on the computer that runs the client or by using PowerShell or Group Policy. For more information about how to modify the client using PowerShell or Group Policy configuration see, [How to Modify Client Configuration by Using PowerShell](how-to-modify-client-configuration-by-using-powershell.md).

## <a href="" id="the-app-v-5-0-client-management-console-"></a>The App-V 5.0 client management console


You can obtain information about the App-V 5.0 client or perform specific tasks by using the App-V 5.0 client management console. Many of the tasks that you can perform in the client management console you can also perform by using PowerShell. The associated PowerShell cmdlets for each action are also displayed in the following table. For more information about how to use PowerShell, see [Administering App-V by Using PowerShell](administering-app-v-by-using-powershell.md).

The client management console contains the following described main tabs.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Tab</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Overview</p></td>
<td align="left"><p>The <strong>Overview</strong> tab contains the following elements:</p>
<ul>
<li><p>Update – Use the <strong>Update</strong> tile to refresh a virtualized application or to receive a new virtualized package.</p>
<p>The <strong>Last Refresh</strong> displays the current version of the virtualized package.</p></li>
<li><p>Download all virtual applications – Use the <strong>Download</strong> tile to download all of the packages provisioned to the current user.</p>
<p>(Associated PowerShell cmdlet: <strong>Mount-AppvClientPackage</strong>)</p>
<p></p></li>
<li><p>Work Offline – Use this tile to disallow all automatic and manual virtual application updates.</p>
<p>(Associated PowerShell cmdlet: <strong>Set-AppvPublishServer –UserRefreshEnabled –GlobalRefreshEnabled</strong>)</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Virtual Apps</p></td>
<td align="left"><p>The <strong>VIRTUAL APPS</strong> tab displays all of the packages that have been published to the user. You can also click a specific package and see all of the applications that are part of that package. This displays information about packages that are currently in use and how much of each package has been downloaded to the computer. You can also start and stop package downloads. Additionally, you can repair the user state. A repair will delete all user data that is associated with a package.</p>
<p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>App Connection Groups</p></td>
<td align="left"><p>The <strong>APP CONNECTION GROUPS</strong> tab displays all of the connection groups that are available to the current user. Click a specific connection group to see all of the packages that are part of the selected group. This displays information about connection groups that are already in use and how much of the connection group contents have been downloaded to the computer. Additionally, you can start and stop connection group downloads. You can use this section to initiate a repair. A repair will remove all of the user state that is associated a connection group.</p>
<p>(Associated PowerShell cmdlets: Download - <strong>Mount-AppvClientConnectionGroup</strong>. Repair -<strong>AppvClientConnectionGroup</strong>.)</p>
<p></p></td>
</tr>
</tbody>
</table>

 

[How to Access the Client Management Console](how-to-access-the-client-management-console.md)

[How to Configure the Client to Receive Package and Connection Groups Updates From the Publishing Server](how-to-configure-the-client-to-receive-package-and-connection-groups-updates-from-the-publishing-server-beta.md)






## Related topics


[Operations for App-V 5.0](operations-for-app-v-50.md)

 

 






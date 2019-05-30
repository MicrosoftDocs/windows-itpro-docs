---
title: Using the App-V Client Management Console (Windows 10)
description: Using the App-V Client Management Console
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
---


# Using the App-V Client Management Console

**Applies to**
-   Windows 10, version 1607

This topic provides information about using the Application Virtualization (App-V) client management console to manage packages on the computer running the App-V client.

## Obtain the client management console

The client management console is separate from the App-V client itself. You can download the client management console from the [Microsoft Download Center](https://www.microsoft.com/en-us/download/details.aspx?id=41186).

> [!NOTE]  
To perform all of the actions available using the client management console, you must have administrative access on the computer running the App-V client.

## Options for managing the App-V client

The App-V client has associated settings that can be configured to determine how the client will run in your environment. You can manage these settings on the computer that runs the client, or you can use Windows PowerShell or Group Policy. For more information about configuring the client by using Windows PowerShell or Group Policy, see:

- [Deploying the App-V Sequencer and Configuring the Client](appv-deploying-the-appv-sequencer-and-client.md)

- [How to Modify Client Configuration by Using Windows PowerShell](appv-modify-client-configuration-with-powershell.md)

- [How to Configure the Client to Receive Package and Connection Groups Updates From the Publishing Server](appv-configure-the-client-to-receive-updates-from-the-publishing-server.md) 

## <a href="" id="the-app-v-5-1-client-management-console-"></a>The App-V client management console

You can obtain information about the App-V client or perform specific tasks by using the App-V client management console. Many of the tasks that you can perform in the client management console you can also perform by using Windows PowerShell. The associated Windows PowerShell cmdlets for each action are also displayed in the following table. For more information about how to use Windows PowerShell, see [Administering App-V by Using Windows PowerShell](appv-administering-appv-with-powershell.md).

The client management console contains the following described main tabs.

<table>
<colgroup>
<col width="20%" />
<col width="80%" />
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
<p>(Associated Windows PowerShell cmdlet: <strong>Mount-AppvClientPackage</strong>)</p>
<p></p></li>
<li><p>Work Offline – Use this tile to disallow all automatic and manual virtual application updates.</p>
<p>(Associated Windows PowerShell cmdlet: <strong>Set-AppvPublishServer –UserRefreshEnabled –GlobalRefreshEnabled</strong>)</p></li>
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
<p>(Associated Windows PowerShell cmdlets: Download - <strong>Mount-AppvClientConnectionGroup</strong>. Repair -<strong>AppvClientConnectionGroup</strong>.)</p>
<p></p></td>
</tr>
</tbody>
</table>




<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics

[Operations for App-V](appv-operations.md)

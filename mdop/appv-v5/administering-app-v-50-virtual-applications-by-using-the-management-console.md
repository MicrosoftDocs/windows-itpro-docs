---
title: Administering App-V 5.0 Virtual Applications by Using the Management Console
description: Administering App-V 5.0 Virtual Applications by Using the Management Console
author: manikadhiman
ms.assetid: e9280dbd-782b-493a-b495-daab25247795
ms.reviewer: 
manager: dansimp
ms.author: manikadhiman
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Administering App-V 5.0 Virtual Applications by Using the Management Console


Use the Microsoft Application Virtualization (App-V) 5.0 management server to manage packages, connection groups, and package access in your environment. The server publishes application icons, shortcuts, and file type associations to authorized computers that run the App-V 5.0 client. One or more management servers typically share a common data store for configuration and package information.

The management server uses Active Directory Domain Services (AD DS) groups to manage user authorization and has SQL Server installed to manage the database and data store.

Because the management servers stream applications to end users on demand, these servers are ideally suited for system configurations that have reliable, high-bandwidth LANs. The management server consists of the following components:

-   Management Server – Use the management server to manage packages and connection groups.

-   Publishing Server – Use the publishing server to deploy packages to computers that run the App-V 5.0 client.

-   Management Database - Use the management database to manage the package access and to publish the server’s synchronization with the management server.

## Management Console tasks


The most common tasks that you can perform with the App-V 5.0 Management console are:

-   [How to Connect to the Management Console](how-to-connect-to-the-management-console-beta.md)

-   [How to Add or Upgrade Packages by Using the Management Console](how-to-add-or-upgrade-packages-by-using-the-management-console-beta-gb18030.md)

-   [How to Configure Access to Packages by Using the Management Console](how-to-configure-access-to-packages-by-using-the-management-console-50.md)

-   [How to Publish a Package by Using the Management Console](how-to-publish-a-package-by-using-the-management-console-50.md)

-   [How to Delete a Package in the Management Console](how-to-delete-a-package-in-the-management-console-beta.md)

-   [How to Add or Remove an Administrator by Using the Management Console](how-to-add-or-remove-an-administrator-by-using-the-management-console.md)

-   [How to Register and Unregister a Publishing Server by Using the Management Console](how-to-register-and-unregister-a-publishing-server-by-using-the-management-console.md)

-   [How to Create a Custom Configuration File by Using the App-V 5.0 Management Console](how-to-create-a-custom-configuration-file-by-using-the-app-v-50-management-console.md)

-   [How to Transfer Access and Configurations to Another Version of a Package by Using the Management Console](how-to-transfer-access-and-configurations-to-another-version-of-a-package-by-using-the-management-console.md)

-   [How to Customize Virtual Applications Extensions for a Specific AD Group by Using the Management Console](how-to-customize-virtual-applications-extensions-for-a-specific-ad-group-by-using-the-management-console.md)

-   [How to View and Configure Applications and Default Virtual Application Extensions by Using the Management Console](how-to-view-and-configure-applications-and-default-virtual-application-extensions-by-using-the-management-console-beta.md)

The main elements of the App-V 5.0 Management Console are:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Management Console tab</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Overview</p></td>
<td align="left"><p></p>
<ul>
<li><p><strong>App-V Sequencer</strong> - Select this option to review general information about using the App-V 5.0 sequencer.</p></li>
<li><p><strong>Application Packages Library</strong> – Select this option to open the <strong>PACKAGES</strong> page of the Management Console. Use this page to review packages that have been added to the server. You can also manage the connection groups, as well as add or upgrade packages.</p></li>
<li><p><strong>SERVERS</strong> – Select this option to open the <strong>SERVERS</strong> page of the Management Console. Use this page to review the list of servers that have been registered with your App-V 5.0 infrastructure.</p></li>
<li><p><strong>CLIENTS</strong> – Select this option to review general information about App-V 5.0 clients.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Packages tab</p></td>
<td align="left"><p>Use the <strong>PACKAGES</strong> tab to add or upgrade packages. You can also manage connection groups by clicking <strong>CONNECTION GROUPS</strong>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Servers tab</p></td>
<td align="left"><p>Use the <strong>SERVERS</strong> tab to register a new server.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Administrators tab</p></td>
<td align="left"><p>Use the <strong>ADMINISTRATORS</strong> tab to register, add, or remove administrators in your App-V 5.0 environment.</p></td>
</tr>
</tbody>
</table>

 






## <a href="" id="other-resources-for-this-app-v-5-0-deployment-"></a>Other resources for this App-V 5.0 deployment


-   [Microsoft Application Virtualization 5.0 Administrator's Guide](microsoft-application-virtualization-50-administrators-guide.md)

-   [Operations for App-V 5.0](operations-for-app-v-50.md)

 

 






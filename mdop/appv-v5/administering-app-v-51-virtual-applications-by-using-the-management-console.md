---
title: Administering App-V 5.1 Virtual Applications by Using the Management Console
description: Administering App-V 5.1 Virtual Applications by Using the Management Console
author: manikadhiman
ms.assetid: a4d078aa-ec54-4fa4-9463-bfb3b971d724
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Administering App-V 5.1 Virtual Applications by Using the Management Console


Use the Microsoft Application Virtualization (App-V) 5.1 management server to manage packages, connection groups, and package access in your environment. The server publishes application icons, shortcuts, and file type associations to authorized computers that run the App-V 5.1 client. One or more management servers typically share a common data store for configuration and package information.

The management server uses Active Directory Domain Services (AD DS) groups to manage user authorization and has SQL Server installed to manage the database and data store.

Because the management servers stream applications to end users on demand, these servers are ideally suited for system configurations that have reliable, high-bandwidth LANs. The management server consists of the following components:

-   Management Server – Use the management server to manage packages and connection groups.

-   Publishing Server – Use the publishing server to deploy packages to computers that run the App-V 5.1 client.

-   Management Database - Use the management database to manage the package access and to publish the server’s synchronization with the management server.

## Management Console tasks


The most common tasks that you can perform with the App-V 5.1 Management console are:

-   [How to Connect to the Management Console](how-to-connect-to-the-management-console-51.md)

-   [How to Add or Upgrade Packages by Using the Management Console](how-to-add-or-upgrade-packages-by-using-the-management-console-51-gb18030.md)

-   [How to Configure Access to Packages by Using the Management Console](how-to-configure-access-to-packages-by-using-the-management-console-51.md)

-   [How to Publish a Package by Using the Management Console](how-to-publish-a-package-by-using-the-management-console-51.md)

-   [How to Delete a Package in the Management Console](how-to-delete-a-package-in-the-management-console-51.md)

-   [How to Add or Remove an Administrator by Using the Management Console](how-to-add-or-remove-an-administrator-by-using-the-management-console51.md)

-   [How to Register and Unregister a Publishing Server by Using the Management Console](how-to-register-and-unregister-a-publishing-server-by-using-the-management-console51.md)

-   [How to Create a Custom Configuration File by Using the App-V 5.1 Management Console](how-to-create-a-custom-configuration-file-by-using-the-app-v-51-management-console.md)

-   [How to Transfer Access and Configurations to Another Version of a Package by Using the Management Console](how-to-transfer-access-and-configurations-to-another-version-of-a-package-by-using-the-management-console51.md)

-   [How to Customize Virtual Applications Extensions for a Specific AD Group by Using the Management Console](how-to-customize-virtual-applications-extensions-for-a-specific-ad-group-by-using-the-management-console51.md)

-   [How to View and Configure Applications and Default Virtual Application Extensions by Using the Management Console](how-to-view-and-configure-applications-and-default-virtual-application-extensions-by-using-the-management-console-51.md)

The main elements of the App-V 5.1 Management Console are:

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
<td align="left"><p>Packages tab</p></td>
<td align="left"><p>Use the <strong>PACKAGES</strong> tab to add or upgrade packages.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Connection Groups tab</p></td>
<td align="left"><p>Use the <strong>CONNECTION GROUPS</strong> tab to manage connection groups.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Servers tab</p></td>
<td align="left"><p>Use the <strong>SERVERS</strong> tab to register a new server.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Administrators tab</p></td>
<td align="left"><p>Use the <strong>ADMINISTRATORS</strong> tab to register, add, or remove administrators in your App-V 5.1 environment.</p></td>
</tr>
</tbody>
</table>

 

**Important**  
JavaScript must be enabled on the browser that opens the Web Management Console.

 






## <a href="" id="other-resources-for-this-app-v-5-1-deployment-"></a>Other resources for this App-V 5.1 deployment


-   [Microsoft Application Virtualization 5.1 Administrator's Guide](microsoft-application-virtualization-51-administrators-guide.md)

-   [Operations for App-V 5.1](operations-for-app-v-51.md)

 

 






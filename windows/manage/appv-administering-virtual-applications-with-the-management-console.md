---
title: Administering App-V Virtual Applications by Using the Management Console (Windows 10)
description: Administering App-V Virtual Applications by Using the Management Console
author: jamiejdt
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# Administering App-V Virtual Applications by Using the Management Console


Use the Microsoft Application Virtualization (App-V) management server to manage packages, connection groups, and package access in your environment. The server publishes application icons, shortcuts, and file type associations to authorized computers that run the App-V client. One or more management servers typically share a common data store for configuration and package information.

The management server uses Active Directory Domain Services (AD DS) groups to manage user authorization and has SQL Server installed to manage the database and data store.

Because the management servers stream applications to end users on demand, these servers are ideally suited for system configurations that have reliable, high-bandwidth LANs. The management server consists of the following components:

-   Management Server – Use the management server to manage packages and connection groups.

-   Publishing Server – Use the publishing server to deploy packages to computers that run the App-V client.

-   Management Database - Use the management database to manage the package access and to publish the server’s synchronization with the management server.

## Management Console tasks


The most common tasks that you can perform with the App-V Management console are:

-   [How to Connect to the Management Console](appv-connect-to-the-management-console.md)

-   [How to Add or Upgrade Packages by Using the Management Console](appv-add-or-upgrade-packages-with-the-management-console.md)

-   [How to Configure Access to Packages by Using the Management Console](appv-configure-access-to-packages-with-the-management-console.md)

-   [How to Publish a Package by Using the Management Console](appv-publish-a-packages-with-the-management-console.md)

-   [How to Delete a Package in the Management Console](appv-delete-a-package-with-the-management-console.md)

-   [How to Add or Remove an Administrator by Using the Management Console](appv-add-or-remove-an-administrator-with-the-management-console.md)

-   [How to Register and Unregister a Publishing Server by Using the Management Console](appv-register-and-unregister-a-publishing-server-with-the-management-console.md)

-   [How to Create a Custom Configuration File by Using the App-V Management Console](appv-create-a-custom-configuration-file-with-the-management-console.md)

-   [How to Transfer Access and Configurations to Another Version of a Package by Using the Management Console](appv-transfer-access-and-configurations-to-another-version-of-a-package-with-the-management-console.md)

-   [How to Customize Virtual Applications Extensions for a Specific AD Group by Using the Management Console](appv-customize-virtual-application-extensions-with-the-management-console.md)

-   [How to View and Configure Applications and Default Virtual Application Extensions by Using the Management Console](appv-view-and-configure-applications-and-default-virtual-application-extensions-with-the-management-console.md)

The main elements of the App-V Management Console are:

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
<td align="left"><p>Use the <strong>ADMINISTRATORS</strong> tab to register, add, or remove administrators in your App-V environment.</p></td>
</tr>
</tbody>
</table>

 

**Important**  
JavaScript must be enabled on the browser that opens the Web Management Console.

 

## Got a suggestion for App-V?


Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## <a href="" id="other-resources-for-this-app-v-5-1-deployment-"></a>Other resources for this App-V deployment


-   [Microsoft Application Virtualization Administrator's Guide](appv-microsoft-application-virtualization-administrators-guide.md)

-   [Operations for App-V](appv-operations.md)

 

 






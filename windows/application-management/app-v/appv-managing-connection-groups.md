---
title: Managing Connection Groups (Windows 10/11)
description: Connection groups can allow administrators to manage packages independently and avoid having to add the same application multiple times to a client computer.
author: greg-lindsay
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: greglin
---


# Managing Connection Groups

[!INCLUDE [Applies to Windows client versions](../includes/applies-to-windows-client-versions.md)]

Connection groups enable the applications within a package to interact with each other in the virtual environment, while remaining isolated from the rest of the system. By using connection groups, administrators can manage packages independently and can avoid having to add the same application multiple times to a client computer.

**Note**  
In some previous versions of App-V, connection groups were referred to as Dynamic Suite Composition.

**In this section:**

|||
|--- |--- |
|[About the Connection Group Virtual Environment](appv-connection-group-virtual-environment.md)|Describes the connection group virtual environment.|
|[About the Connection Group File](appv-connection-group-file.md)|Describes the connection group file.|
|[How to Create a Connection Group](appv-create-a-connection-group.md)|Explains how to create a new connection group.|
|[How to Create a Connection Group with User-Published and Globally Published Packages](appv-create-a-connection-group-with-user-published-and-globally-published-packages.md)|Explains how to create a new connection group that contains a mix of packages that are published to the user and published globally.|
|[How to Delete a Connection Group](appv-delete-a-connection-group.md)|Explains how to delete a connection group.|
|[How to Publish a Connection Group](appv-publish-a-connection-group.md)|Explains how to publish a connection group.|
|[How to Make a Connection Group Ignore the Package Version](appv-configure-connection-groups-to-ignore-the-package-version.md)|Explains how to configure a connection group to accept any version of a package, which simplifies package upgrades and reduces the number of connection groups you need to create.|
[How to Allow Only Administrators to Enable Connection Groups](appv-allow-administrators-to-enable-connection-groups.md)|Explains how to configure the App-V client so that only administrators (not end users) can enable or disable connection groups.|

<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Other resources for App-V connection groups


-   [Operations for App-V](appv-operations.md)

 

 






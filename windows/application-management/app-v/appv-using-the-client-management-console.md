---
title: Using the App-V Client Management Console (Windows 10/11)
description: Learn how to use the Application Virtualization (App-V) client management console to manage packages on the computer running the App-V client.
author: aczechowski
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
---

# Using the App-V Client Management Console

[!INCLUDE [Applies to Windows client versions](../includes/applies-to-windows-client-versions.md)]

This article provides information about using the Application Virtualization (App-V) client management console to manage packages on the computer running the App-V client.

## Options for managing the App-V client

The App-V client has associated settings that can be configured to determine how the client will run in your environment. You can manage these settings on the computer that runs the client, or you can use Windows PowerShell or Group Policy. For more information about configuring the client by using Windows PowerShell or Group Policy, see:

- [Deploying the App-V Sequencer and Configuring the Client](appv-deploying-the-appv-sequencer-and-client.md)

- [How to Modify Client Configuration by Using Windows PowerShell](appv-modify-client-configuration-with-powershell.md)

- [How to Configure the Client to Receive Package and Connection Groups Updates From the Publishing Server](appv-configure-the-client-to-receive-updates-from-the-publishing-server.md) 

## <a href="" id="the-app-v-5-1-client-management-console-"></a>The App-V client management console

You can obtain information about the App-V client or perform specific tasks by using the App-V client management console. Many of the tasks that you can perform in the client management console you can also perform by using Windows PowerShell. The associated Windows PowerShell cmdlets for each action are also displayed in the following table. For more information about how to use Windows PowerShell, see [Administering App-V by Using Windows PowerShell](appv-administering-appv-with-powershell.md).

The client management console contains the following described main tabs.

- **Overview**: The **Overview** tab contains the following elements:

  - **Update**: Refreshes a virtualized application or to receive a new virtualized package.
  - **Last Refresh**: Displays the current version of the virtualized package.
  - **Download all virtual applications**: Use the Download tile to download all of the packages provisioned to the current user.

    Associated Windows PowerShell cmdlet: `Mount-AppvClientPackage`

  - **Work Offline**: Disallows all automatic and manual virtual application updates.

    Associated Windows PowerShell cmdlet: `-AppvPublishServer –UserRefreshEnabled –GlobalRefreshEnabled`

- **VIRTUAL APPS**: Displays all of the packages that have been published to the user.

  You can also click a specific package and see all of the applications that are part of that package. This option displays information about packages that are currently in use and how much of each package has been downloaded to the computer. You can also start and stop package downloads, and repair the user state. A repair will delete all user data that is associated with a package.

- **APP CONNECTION GROUPS**: Displays all of the connection groups that are available to the current user. Click a specific connection group to see all of the packages that are part of the selected group. This displays information about connection groups that are already in use and how much of the connection group contents have been downloaded to the computer. Additionally, you can start and stop connection group downloads. You can use this section to initiate a repair. A repair will remove all of the user state that is associated a connection group.

  Associated Windows PowerShell cmdlets:

  - Download: `Mount-AppvClientConnectionGroup`
  - Repair: `AppvClientConnectionGroup`

For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related articles

[Operations for App-V](appv-operations.md)

---
title: How to Install the App-V 5.0 Client for Shared Content Store Mode
description: How to Install the App-V 5.0 Client for Shared Content Store Mode
author: dansimp
ms.assetid: 88f09e6f-19e7-48ea-965a-907052d1a02f
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to Install the App-V 5.0 Client for Shared Content Store Mode


Use the following procedure to install the Microsoft Application Virtualization (App-V) 5.0 client so that it uses the App-V 5.0 Shared Content Store (SCS) mode. You should ensure that all required prerequisites are installed on the computer you plan to install to. Use the following link for a [App-V 5.0 Prerequisites](app-v-50-prerequisites.md).

**Note**  
Before performing this procedure if necessary uninstall any existing version of the App-V 5.0 client.

 

For more information about SCS mode, see [Shared Content Store in Microsoft App-V 5.0 – Behind the Scenes](https://go.microsoft.com/fwlink/?LinkId=316879) (https://go.microsoft.com/fwlink/?LinkId=316879).

**Install and configure the App-V 5.0 client for SCS mode**

1.  Copy the App-V 5.0 client installation files to the computer on which it will be installed. Open a command line and from the directory where the installation files are saved type one of the following options depending on the version of the client you are installing:

    -   To install the RDS version of the App-V 5.0 client type: **appv\_client\_setup\_rds.exe /SHAREDCONTENTSTOREMODE=1 /q**

    -   To install the standard version of the App-V 5.0 client type: **appv\_client\_setup.exe /SHAREDCONTENTSTOREMODE=1 /q**

        **Important**  
        You must perform a silent installation or the installation will fail.

         

2.  After you have completed the installation you can deploy packages to the computer running the client and all package contents will be streamed across the network.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issu**e? Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Deploying the App-V 5.0 Sequencer and Client](deploying-the-app-v-50-sequencer-and-client.md)

 

 






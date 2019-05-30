---
title: How to Install the App-V 5.1 Client for Shared Content Store Mode
description: How to Install the App-V 5.1 Client for Shared Content Store Mode
author: dansimp
ms.assetid: 6f3ecb1b-b5b5-4ae0-8de9-b4ffdfd2c216
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to Install the App-V 5.1 Client for Shared Content Store Mode


Use the following procedure to install the Microsoft Application Virtualization (App-V) 5.1 client so that it uses the App-V 5.1 Shared Content Store (SCS) mode. You should ensure that all required prerequisites are installed on the computer you plan to install to. Use the following link to see [App-V 5.1 Prerequisites](app-v-51-prerequisites.md).

**Note**  
Before performing this procedure if necessary uninstall any existing version of the App-V 5.1 client.

 

For more information about SCS mode, see [Shared Content Store in Microsoft App-V 5.0 – Behind the Scenes](https://go.microsoft.com/fwlink/?LinkId=316879) (https://go.microsoft.com/fwlink/?LinkId=316879).

**Install and configure the App-V 5.1 client for SCS mode**

1.  Copy the App-V 5.1 client installation files to the computer on which it will be installed. Open a command line and from the directory where the installation files are saved type one of the following options depending on the version of the client you are installing:

    -   To install the RDS version of the App-V 5.1 client type: **appv\_client\_setup\_rds.exe /SHAREDCONTENTSTOREMODE=1 /q**

    -   To install the standard version of the App-V 5.1 client type: **appv\_client\_setup.exe /SHAREDCONTENTSTOREMODE=1 /q**

        **Important**  
        You must perform a silent installation or the installation will fail.

         

2.  After you have completed the installation you can deploy packages to the computer running the client and all package contents will be streamed across the network.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Deploying the App-V 5.1 Sequencer and Client](deploying-the-app-v-51-sequencer-and-client.md)

 

 






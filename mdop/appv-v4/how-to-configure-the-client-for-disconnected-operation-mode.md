---
title: How to Configure the Client for Disconnected Operation Mode
description: How to Configure the Client for Disconnected Operation Mode
author: dansimp
ms.assetid: 3b48464a-b8b4-494b-93e3-9a6d9bd74652
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Configure the Client for Disconnected Operation Mode


The disconnected operation mode enables the Application Virtualization (App-V) Desktop Client or the Application Virtualization (App-V) Client for Remote Desktop Services (formerly Terminal Services) to run applications that are stored in the file system cache of the client when the client cannot connect to the App-V Management Server.

**Important**  
In a large organization where multiple Remote Desktop Session Host (RD°Session Host) servers (formerly Terminal Servers) are linked in a farm to support many users, using a single App-V Management Server to support the farm represents a single point of failure. To provide high availability to support the RD Session Host farm, consider linking two or more App-V Management Servers to use the same database.

 

**To enable disconnected operation mode**

-   Set the following registry key value equal to 1 to enable disconnected operation mode:

    HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\Network\\AllowDisconnectedOperation

**To set a time limit on disconnected operation mode use**

1.  Set the following registry key value to 1:

    HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\Network\\LimitDisconnectedOperation

2.  Set the following registry key value to the number of minutes you want to limit disconnected operation mode. The valid range of values is 1–999999. The default value is 90 days or 129,600 minutes.

    HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\Network\\DOTimeoutMinutes

**To configure the Client for Remote Desktop Services for disconnected operation mode**

1.  Set the following registry key value to 1 to enable disconnected operation mode:

    HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\Network\\AllowDisconnectedOperation

2.  Set the following registry key value to 0 (zero) to allow unlimited use of disconnected operation mode:

    HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\Network\\LimitDisconnectedOperation

3.  Ensure that all packages are preloaded into the cache to improve performance.

## Related topics


[Disconnected Operation Mode](disconnected-operation-mode.md)

[How to Configure the App-V Client Registry Settings by Using the Command Line](how-to-configure-the-app-v-client-registry-settings-by-using-the-command-line.md)

 

 






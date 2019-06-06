---
title: Disconnected Operation Mode
description: Disconnected Operation Mode
author: dansimp
ms.assetid: 3f9849ea-ba53-4c68-85d3-87a4218f59c6
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Disconnected Operation Mode


The disconnected operation mode settings—accessible by right-clicking the **Application Virtualization** node, selecting **Properties**, and clicking the **Connectivity** tab—enables the Application Virtualization Desktop Client or Client for Remote Desktop Services (formerly Terminal Services) to run applications that are stored in the file system cache of the client when the client is unable to connect to the Application Virtualization Management Server.

Reasons for failure to connect to the server include server failure, network outage, or disconnection from the network. If any failure occurs, the client will automatically switch to disconnected operation. After it is disconnected, if the client needs additional data from the server to continue to run an application or if the disconnected operation time-out expires, the client will attempt to reconnect to the server. If this connection attempt fails, the application will be shut down.

By default, disconnected operation is enabled and the time-out is set to 90 days. The time-out value is specified as the number of days you want to limit disconnected operation mode, and you can enter a value from 1–999.

## Related topics


[How to Disable or Modify Disconnected Operation Mode Settings](how-to-disable-or-modify-disconnected-operation-mode-settings.md)

 

 






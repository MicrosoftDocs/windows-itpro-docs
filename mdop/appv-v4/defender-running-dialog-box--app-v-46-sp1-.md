---
title: Defender Running Dialog Box (App-V 4.6 SP1)
description: Defender Running Dialog Box (App-V 4.6 SP1)
author: dansimp
ms.assetid: 716ec7f9-ddad-45dd-a3c7-4a9d81cfcfd0
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Defender Running Dialog Box (App-V 4.6 SP1)


Microsoft Windows Defender is running. You should stop Windows Defender before continuing with the installation. Windows Defender can interfere with creation of a package by accessing files that must be added to the virtual application package or by adding extraneous data to the virtual application package.

Use the following procedure to stop Microsoft Windows Defender from running during sequencing.

1.  On the computer running the App-V Sequencer, click **Start**, right-click **Computer**, and then click **Manage**.

2.  In the **Computer Management** console, double click **Services and Applications**, and then double-click **Services** to expand **Services**.

3.  Locate it in the list. Right-click Windows Defender, click **Stop** to stop Microsoft Windows Defender, and then click **Ok**.

## Related topics


[Dialog Boxes (AppV 4.6 SP1)](dialog-boxes--appv-46-sp1-.md)

 

 






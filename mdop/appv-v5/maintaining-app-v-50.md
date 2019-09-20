---
title: Maintaining App-V 5.0
description: Maintaining App-V 5.0
author: dansimp
ms.assetid: 66851ec3-c674-493b-ad6d-db8fcbf1956c
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Maintaining App-V 5.0


After you have completed all the necessary planning, and then deployment of App-V 5.0, you can use the following information to maintain the App-V 5.0 infrastructure.

## <a href="" id="move-the-app-v-5-0-server-"></a>Move the App-V 5.0 Server


The App-V 5.0 server connects to the App-V 5.0 database. Therefore you can install the management component to any computer on the network and then connect it to the App-V 5.0 database.

[How to Move the App-V Server to Another Computer](how-to-move-the-app-v-server-to-another-computer.md)

## <a href="" id="determine-if-an-app-v-5-0-application-is-running-virtualized-"></a>Determine if an App-V 5.0 Application is Running Virtualized


Independent software vendors (ISV) who want to determine if an application is running virtualized with App-V 5.0 or above, should open a named object called **AppVVirtual-&lt;PID&gt;** in the default namespace. For example, Windows API **GetCurrentProcessId()** can be used to obtain the current process's ID, for example 4052, and then if a named Event object called **AppVVirtual-4052** can be successfully opened using **OpenEvent()** in the default namespace for read access, then the application is virtual. If the **OpenEvent()** call fails, the application is not virtual.

Additionally, ISV’s who want to explicitly virtualize or not virtualize calls on specific API’s with App-V 5.0 and above, can use the **VirtualizeCurrentThread()** and **CurrentThreadIsVirtualized()** functions implemented in the AppEntSubsystems32.dll module. These provide a way of hinting at a downstream component that the call should or should not be virtualized.






## Other resources for maintaining App-V 5.0


[Operations for App-V 5.0](operations-for-app-v-50.md)

 

 






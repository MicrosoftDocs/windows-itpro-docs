---
title: Maintaining App-V (Windows 10)
description: Maintaining App-V
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 09/27/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---
# Maintaining App-V

>Applies to: Windows 10, version 1607

After you have deployed App-V for Windows 10, you can use the following information to maintain the App-V infrastructure.

## Moving the App-V server

The App-V server connects to the App-V database, which means you can install the management component and connect it to the App-V database on any computer on the network. For more information, see [How to move the App-V server to another computer](appv-move-the-appv-server-to-another-computer.md).

## Determine if an App-V application is running virtualized

Independent software vendors (ISV) who want to determine if an application is running virtualized with App-V should open a named object called **AppVVirtual-&lt;PID&gt;** in the default namespace (PID stands for process ID). To find the process ID of the process you're currently using, enter the Windows API **GetCurrentProcessId()**.

For example, let's say the process ID is 4052. If you can successfully open a named Event object called **AppVVirtual-4052** with the **OpenEvent()** API in the default read access namespace, then the application is virtual. If the **OpenEvent()** call fails, the application isn't virtual.

Additionally, ISVs who want to explicitly virtualize or not virtualize calls on specific APIs with App-V 5.1 and later can use the **VirtualizeCurrentThread()** and **CurrentThreadIsVirtualized()** functions implemented in the AppEntSubsystems32.dll module to hint to a downstream component whether the call should be virtualized or not.





## Other resources for maintaining App-V

* [Operations for App-V](appv-operations.md)

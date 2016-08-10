---
title: Maintaining App-V (Windows 10)
description: Maintaining App-V
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# Maintaining App-V


After you have deployed App-V for Windows 10, you can use the following information to maintain the App-V infrastructure.

## Moving the App-V server

The App-V server connects to the App-V database. Therefore you can install the management component on any computer on the network and then connect it to the App-V database.

[How to Move the App-V Server to Another Computer](appv-move-the-appv-server-to-another-computer.md)

## <a href="" id="determine-if-an-app-v-application-is-running-virtualized-"></a>Determine if an App-V Application is Running Virtualized


Independent software vendors (ISV) who want to determine if an application is running virtualized with App-V should open a named object called **AppVVirtual-&lt;PID&gt;** in the default namespace. For example, Windows API **GetCurrentProcessId()** can be used to obtain the current process's ID, for example 4052, and then if a named Event object called **AppVVirtual-4052** can be successfully opened using **OpenEvent()** in the default namespace for read access, then the application is virtual. If the **OpenEvent()** call fails, the application is not virtual.

Additionally, ISV’s who want to explicitly virtualize or not virtualize calls on specific API’s with App-V and above, can use the **VirtualizeCurrentThread()** and **CurrentThreadIsVirtualized()** functions implemented in the AppEntSubsystems32.dll module. These provide a way of hinting at a downstream component that the call should or should not be virtualized.

## Have a suggestion for App-V?


Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Other resources for maintaining App-V


[Operations for App-V](appv-operations.md)

 

 






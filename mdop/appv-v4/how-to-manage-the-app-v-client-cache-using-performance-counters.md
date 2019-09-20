---
title: How to Manage the App-V Client Cache Using Performance Counters
description: How to Manage the App-V Client Cache Using Performance Counters
author: dansimp
ms.assetid: 49d6c3f2-68b8-4c69-befa-7598a8737d05
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Manage the App-V Client Cache Using Performance Counters


You can use the following procedure to determine how much free space is available in the Application Virtualization (App-V) client cache by using Performance Monitor to display the information graphically. This information is captured on the client computer by a performance counter called “App Virt Client Cache,” and it includes the following counters: “Cache size (MB),” “Cache free space (MB),” and “% free space.”

**To determine client cache space usage**

1.  Open a command prompt as administrator, or click **Start**, **Run**, type **perfmon.exe**, and click **OK**.

2.  Depending on the Windows operating system being used, click the Performance Monitor or System Monitor tool after the MMC window opens.

3.  To add counters, right-click the graph area and select **Add Counters**.

4.  Click the drop-down to display the list of available counters, scroll to find **App Virt Client Cache**, and then add the three counters.

    **Important**  
    The App-V performance counters are implemented in a 32-bit DLL, so to see them, you must use the following command to start the 32-bit version of Performance Monitor: **mmc /32 perfmon.msc**. This command must be run directly on the computer being monitored and cannot be used to monitor a remote computer running a 64-bit operating system.

     

## Related topics


[How to Manage Virtual Applications by Using the Command Line](how-to-manage-virtual-applications-by-using-the-command-line.md)

 

 






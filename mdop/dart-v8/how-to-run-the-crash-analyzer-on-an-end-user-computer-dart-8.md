---
title: How to Run the Crash Analyzer on an End-user Computer
description: How to Run the Crash Analyzer on an End-user Computer
author: msfttracyp
ms.assetid: d36213e5-7719-44d7-be65-971c3ef7df2c
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to Run the Crash Analyzer on an End-user Computer


To run **Crash Analyzer** from the **Diagnostics and Recovery Toolset** window on an end-user computer that is experiencing problems, you must have the Microsoft Debugging Tools for Windows and the symbol files installed. To download the Windows Debugging Tools, see [Debugging Tools for Windows](https://go.microsoft.com/fwlink/?LinkId=266248).

**To run the Crash Analyzer on an end-user computer**

1.  On the **Diagnostics and Recovery Toolset** window on an end-user computer, click **Crash Analyzer**.

2.  Provide the required information for the Microsoft Debugging Tools for Windows.

3.  Provide the required information for the symbol files. For more information about symbol files, see [How to Ensure that Crash Analyzer Can Access Symbol Files](how-to-ensure-that-crash-analyzer-can-access-symbol-files.md).

4.  Provide the required information for a memory dump file. To determine the location of the memory dump file:

    1.  Open the **System Properties** window.

    2.  Click **Start**, type **sysdm.cpl**, and then press **Enter**.

    3.  Click the **Advanced** tab.

    4.  In the **Startup and Recovery** area, click **Settings**.

        If you do not have access to the **System Properties** window, you can search for dump files on the end-user computer by using the **Search** tool in Microsoft Diagnostics and Recovery Toolset (DaRT) 8.0.

    The **Crash Analyzer** scans the memory dump file and reports a probable cause of the problem. You can view more information about the failure, such as the specific memory dump message and description, the drivers loaded at the time of the failure, and the full output of the analysis.

5.  Identify the appropriate strategy to resolve the problem. The strategy may require disabling or updating the device driver that caused the failure by using the **Services and Drivers** node of the **Computer Management** tool in DaRT 8.0.

## Related topics


[Diagnosing System Failures with Crash Analyzer](diagnosing-system-failures-with-crash-analyzer--dart-8.md)

[Operations for DaRT 8.0](operations-for-dart-80-dart-8.md)

 

 






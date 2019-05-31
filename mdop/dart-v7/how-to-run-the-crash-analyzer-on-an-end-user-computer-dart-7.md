---
title: How to Run the Crash Analyzer on an End-user Computer
description: How to Run the Crash Analyzer on an End-user Computer
author: msfttracyp
ms.assetid: 40af4ead-6588-4a81-8eaa-3dc00c397e1d
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Run the Crash Analyzer on an End-user Computer


Typically, you run Microsoft Diagnostics and Recovery Toolset (DaRT) 7 Crash Analyzer from the Diagnostics and Recovery Toolset window on an end-user computer that has problems. The Crash Analyzer tries to locate the Debugging Tools for Windows on the problem computer. If the directory path dialog box is empty, you must enter the location or browse to the location of the Debugging Tools for Windows (you can download the files from Microsoft). You must also provide a path to where the symbol files are located.

**To open and run the Crash Analyzer on an end-user computer**

1.  On the **Diagnostics and Recovery Toolset** window on an end-user computer, click **Crash Analyzer**.

2.  Provide the required information for the following:

    -   Microsoft Debugging Tools for Windows

    -   Symbol files

        For more information about symbol files, see, [How to Ensure that Crash Analyzer Can Access Symbol Files](how-to-ensure-that-crash-analyzer-can-access-symbol-files-dart-7.md).

    -   A crash dump file

        Follow these steps to determine the location of the crash dump file:

        1.  Open the **System Properties** window.

            Click **Start**, type sysdm.cpl, and then press Enter.

        2.  Click the **Advanced** tab.

        3.  In the **Startup and Recovery** area, click **Settings**.

        **Note**  
        If you do not have access to the **System Properties** window, you can search for dump files on the end-user computer by using the **Search** tool in DaRT.

         

3.  The **Crash Analyzer** scans the crash dump file and reports a probable cause of the crash. You can view more information about the crash, such as the specific crash message and description, the drivers loaded at the time of the crash, and the full output of the analysis.

4.  Decide upon an appropriate strategy to resolve the problem. This may require disabling or updating the device driver that caused the crash by using the **Services and Drivers** node of the **Computer Management** tool in DaRT.

## Related topics


[Diagnosing System Failures with Crash Analyzer](diagnosing-system-failures-with-crash-analyzer--dart-7.md)

 

 






---
title: How to Run the Crash Analyzer in Stand-alone Mode on a Computer Other than an End-user Computer
description: How to Run the Crash Analyzer in Stand-alone Mode on a Computer Other than an End-user Computer
author: msfttracyp
ms.assetid: 881d573f-2f18-4c5f-838e-2f5320179f94
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Run the Crash Analyzer in Stand-alone Mode on a Computer Other than an End-user Computer


If you cannot access the Microsoft Debugging Tools for Windows or the symbol files on the end-user computer, you can copy the dump file from the problem computer and analyze it on a computer that has the stand-alone version of Crash Analyzer installed, such as a helpdesk administrator’s computer.

**To run the Crash Analyzer in stand-alone mode**

1.  On a computer with DaRT 7 installed, click **Start** / **All Programs** / **Microsoft DaRT 7**.

2.  Provide the required information for the following:

    -   Microsoft Debugging Tools for Windows

    -   Symbol files

        For more information about symbol files, see, [How to Ensure that Crash Analyzer Can Access Symbol Files](how-to-ensure-that-crash-analyzer-can-access-symbol-files-dart-7.md).

    -   A crash dump file

        **Note**  
        Use the Search tool in DaRT 7 to locate the copied crash dump file.

         

3.  The **Crash Analyzer** scans the crash dump file and reports a probable cause of the crash. You can view more information about the crash, such as the specific crash message and description, the drivers loaded at the time of the crash, and the full output of the analysis.

4.  Decide upon an appropriate strategy to resolve the problem. This may require disabling or updating the device driver that caused the crash by using the **Services and Drivers** node of the **Computer Management** tool in DaRT.

## Related topics


[Diagnosing System Failures with Crash Analyzer](diagnosing-system-failures-with-crash-analyzer--dart-7.md)

 

 






---
title: Diagnosing System Failures with Crash Analyzer
description: Diagnosing System Failures with Crash Analyzer
author: msfttracyp
ms.assetid: 170d40ef-4edb-4a32-a349-c285c0ea5e56
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Diagnosing System Failures with Crash Analyzer


The Crash Analyzer in Microsoft Diagnostics and Recovery Toolset (DaRT) 7 lets you debug a crash dump file on a Windows-based computer and then diagnose any related computer errors. The Crash Analyzer uses the Microsoft Debugging Tools for Windows to examine a crash dump file for the driver that caused the computer to fail.

## Run the Crash Analyzer on an End-user Computer


Typically, you run Crash Analyzer from the Diagnostics and Recovery Toolset window on an end-user computer that has problems. The Crash Analyzer tries to locate the Debugging Tools for Windows on the problem computer. If the directory path dialog box is empty, you must enter the location or browse to the location of the Debugging Tools for Windows (you can download the files from Microsoft). You must also provide a path to where the symbol files are located.

If you included the Microsoft Debugging Tools for Windows and the symbol files when you created the DaRT recovery image, they should be available when you run the Crash Analyzer on the problem computer.

[How to Run the Crash Analyzer on an End-user Computer](how-to-run-the-crash-analyzer-on-an-end-user-computer-dart-7.md)

## Run the Crash Analyzer in stand-alone mode on a computer other than an end-user computer


The Crash Analyzer tries to locate the Debugging Tools for Windows on the problem computer. If the directory path dialog box is empty, you must enter the location or browse to the location of the Debugging Tools for Windows (you can download the files from Microsoft). You must also provide a path to where the symbol files are located.

If you did not include the Microsoft Debugging Tools for Windows and the symbol files when you created the DaRT recovery image, or if disk size or network connectivity problems are preventing you from obtaining them, then you can copy the dump file from the problem computer and analyze it on a computer that has the stand-alone version of Crash Analyzer installed, such as a helpdesk administrator’s computer.

[How to Run the Crash Analyzer in Stand-alone Mode on a Computer Other than an End-user Computer](how-to-run-the-crash-analyzer-in-stand-alone-mode-on-a-computer-other-than-an-end-user-computer-dart-7.md)

## Ensure that Crash Analyzer can access symbol files


Typically, debugging information is stored in a symbol file that is separate from the executable. You must have access to the symbol information when you debug an application that has stopped responding, for example if it crashed.

Symbol files are automatically downloaded when you run Crash Analyzer. If the computer does not have an Internet connection or the network requires the computer to access an HTTP proxy server, the symbol files cannot be downloaded.

[How to Ensure that Crash Analyzer Can Access Symbol Files](how-to-ensure-that-crash-analyzer-can-access-symbol-files-dart-7.md)

## Other resources for diagnosing system failures with Crash Analyzer


[Operations for DaRT 7.0](operations-for-dart-70-new-ia.md)

 

 






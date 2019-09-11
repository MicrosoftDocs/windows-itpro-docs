---
title: Planning to Create the DaRT 7.0 Recovery Image
description: Planning to Create the DaRT 7.0 Recovery Image
author: dansimp
ms.assetid: e5d49bee-ae4e-467b-9976-c1203f6355f9
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Planning to Create the DaRT 7.0 Recovery Image


Use the information in this section when you plan for creating the Microsoft Diagnostics and Recovery Toolset (DaRT) 7 recovery image.

## Planning to Create the DaRT 7 Recovery Image


When you create the DaRT recovery image, you have to decide which tools to include on the image. When you make that decision, remember that end users might have access occasionally to the various DaRT tools. For more information about the DaRT tools, see [Overview of the Tools in DaRT 7.0](overview-of-the-tools-in-dart-70-new-ia.md). For more information about how to help create a secure recovery image, see [Security Considerations for DaRT 7.0](security-considerations-for-dart-70-dart-7.md).

When you create the DaRT recovery image, you will also specify whether you want to include additional drivers or files. Determine the locations of any additional drivers or files that you want to include on the DaRT recovery image.

## Prerequisites


The following items are required or recommended for creating the DaRT recovery image:

-   Windows 7 source files

    You must provide the path of a Windows 7 DVD or of Windows 7 source files. Windows 7 source files are required to create the DaRT recovery image.

-   Windows Debugging Tools for your platform

    Windows Debugging Tools are required when you run **Crash Analyzer** to determine the cause of a computer crash. We recommend that you specify the path of the Windows Debugging Tools at the time that you create the DaRT recovery image. If it is necessary, you can download the Windows Debugging Tools here: [Download and Install Debugging Tools for Windows](https://go.microsoft.com/fwlink/?LinkId=99934).

-   Optional: **Standalone System Sweeper** definitions

    The latest definitions for the **Standalone System Sweeper** are required when you run this tool. Although you can download the definitions when you run **Standalone System Sweeper**, we recommend that you download the latest definitions at the time you create the DaRT recovery image. In this manner, you can still run the tool with the latest definitions even if the problem computer does not have network connectivity.

-   Optional: Windows symbols files for use with **Crash Analyzer**

    Typically, debugging information is stored in a symbol file that is separate from the executable. You must have access to the symbol information when you debug an application that has stopped responding, for example if it crashed. For more information, see [Diagnosing System Failures with Crash Analyzer](diagnosing-system-failures-with-crash-analyzer--dart-7.md).

## Related topics


[Planning to Deploy DaRT 7.0](planning-to-deploy-dart-70.md)

 

 






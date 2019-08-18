---
title: About DaRT 8.0
description: About DaRT 8.0
author: msfttracyp
ms.assetid: ce91efd6-7d78-44cb-bb8f-1f43f768ebaa
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# About DaRT 8.0


Microsoft Diagnostics and Recovery Toolset (DaRT) 8.0 helps you troubleshoot and repair Windows-based computers. This includes those computers that cannot be started. DaRT 8.0 is a powerful set of tools that extend the Windows Recovery Environment (WinRE). By using DaRT, you can analyze an issue to determine its cause, for example, by inspecting the computer’s event log or system registry. DaRT supports the recovery of basic hard disks that contain partitions, for example, primary partitions and logical drives, and supports the recovery of volumes.

**Note**  
DaRT does not support the recovery of dynamic disks.

 

DaRT also provides tools to help you fix a problem as soon as you determine the cause. For example, you can use the tools in DaRT to disable a faulty device driver, remove hotfixes, restore deleted files, and scan the computer for malware even when you cannot or should not start the installed Windows operating system.

DaRT can help you quickly recover computers that are running either 32-bit or 64-bit versions of Windows 8, typically in less time than it would take to reimage the computer.

Functionality in DaRT lets you create a recovery image. The recovery image starts Windows Recovery Environment (Windows RE), from which you can start the **Diagnostics and Recovery Toolset** window and access the DaRT tools.

Use the **DaRT Recovery Image Wizard** to create the DaRT recovery image. By default, the wizard creates an International Organization for Standardization (ISO) image file and a Windows Imaging Format (WIM) file and let you burn the image to a CD, DVD, or USB. You can deploy the image locally at end user’s computers, or you can deploy it from a remote network partition or a recovery partition on the local hard drive.

## <a href="" id="what-s-new-in-dart-8-0"></a>What’s new in DaRT 8.0


DaRT 8.0 can help you quickly recover computers that are running either 32-bit or 64-bit versions of Windows 8, typically in less time than it would take to reimage the computer. DaRT 8.0 has the following new features.

### Create DaRT images by using Windows 8 or Windows Server 2012

DaRT 8.0 enables you to create DaRT images using either Windows® 8 or Windows Server® 2012. For versions of Windows earlier than Windows 8 and Windows Server 2012, customers should continue to use earlier versions of DaRT.

### Generate both 32- and 64-bit images from one computer

DaRT 8.0 enables you to generate both 32-bit and 64-bit images from a single computer that is running DaRT, regardless of whether the computer is a 32-bit or 64-bit computer. In DaRT 7, the image that was created had to be the same, bit-wise, as the computer that was running DaRT.

### Create one image that supports computers that have either a BIOS or UEFI interface

DaRT 8.0’s support for both the Unified Extensible Firmware Interface (UEFI) and BIOS interfaces enables you to create just one image that works with computers that have either interface.

### Use a GUID partition table (GPT) for partitioning

DaRT 8.0 tools now support Windows 8 GPT disks, which provide a more flexible mechanism for partitioning disks than the older master boot record (MBR) partitioning scheme. DaRT 8.0 tools continue to support MBR partitioning.

### Install Windows 8 and Windows Server 2012 on the local hard disk

DaRT 8.0 tools can be used only when Windows 8 and Windows Server 2012 are installed on the local hard disk. Currently, there is no support for Windows To Go.

### <a href="" id="-------------dart-8-0-release-notes"></a> DaRT 8.0 release notes

For more information, and for late-breaking news that did not make it into the documentation, see the [Release Notes for DaRT 8.0](release-notes-for-dart-80--dart-8.md).

## How to Get DaRT 8.0


This technology is a part of the Microsoft Desktop Optimization Pack (MDOP). MDOP is part of Microsoft Software Assurance. For more information about Microsoft Software Assurance and acquiring MDOP, see [How Do I Get MDOP](https://go.microsoft.com/fwlink/?LinkId=322049) (https://go.microsoft.com/fwlink/?LinkId=322049).

## Related topics


[Getting Started with DaRT 8.0](getting-started-with-dart-80-dart-8.md)

[Release Notes for DaRT 8.0](release-notes-for-dart-80--dart-8.md)

 

 






---
title: Overview of the Tools in DaRT 10
description: Overview of the Tools in DaRT 10
author: dansimp
ms.assetid: 752467dd-b646-4335-82ce-9090d4651f65
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Overview of the Tools in DaRT 10


From the **Diagnostics and Recovery Toolset** window in Microsoft Diagnostics and Recovery Toolset (DaRT) 10, you can start any of the individual tools that you include when you create the DaRT 10 recovery image. For information about how to access the **Diagnostics and Recovery Toolset** window, see [How to Recover Local Computers by Using the DaRT Recovery Image](how-to-recover-local-computers-by-using-the-dart-recovery-image-dart-10.md).

If it is available, you can use the **Solution Wizard** on the **Diagnostics and Recovery Toolset** window to select the tool that best addresses your particular issue, based on a brief interview that the wizard provides.

## Exploring the DaRT tools


A description of the DaRT 10 tools follows.

### Computer Management

**Computer Management** is a collection of Windows administrative tools that help you troubleshoot a problem computer. You can use the **Computer Management** tools in DaRT to view system information and event logs, manage disks, list autoruns, and manage services and drivers. The **Computer Management** console is customized to help you diagnose and repair problems that might be preventing the Windows operating system from starting.

**Note**  
The recovery of dynamic disks with DaRT is not supported.

 

### Crash Analyzer

Use the **Crash Analyzer Wizard** to quickly determine the cause of a computer failure by analyzing the memory dump file on the Windows operating system that you are repairing. **Crash Analyzer** examines the memory dump file for the driver that caused a computer to fail. You can then disable the problem device driver by using the **Services and Drivers** node in the **Computer Management** tool.

The **Crash Analyzer Wizard** requires the Debugging Tools for Windows and symbol files for the operating system that you are repairing. You can include both requirements when you create the DaRT recovery image. If they are not included on the recovery image and you do not have access to them on the computer that you are repairing, you can copy the memory dump file to another computer and use the stand-alone version of **Crash Analyzer** to diagnose the problem.

Running **Crash Analyzer** is a good idea even if you plan to reimage the computer. The image could have a defective driver that is causing problems in your environment. By running **Crash Analyzer**, you can identify problem drivers and improve the image stability.

For more information about **Crash Analyzer**, see [Diagnosing System Failures with Crash Analyzer](diagnosing-system-failures-with-crash-analyzer-dart-10.md).

### Disk Commander

**Disk Commander** lets you recover and repair disk partitions or volumes by using one of the following recovery processes:

-   Restore the master boot record (MBR)

-   Recover one or more lost volumes

-   Restore partition tables from **Disk Commander** backup

-   Save partition tables to **Disk Commander** backup

**Warning**  
We recommend that you back up a disk before you use **Disk Commander** to repair it. By using **Disk Commander**, you can potentially damage volumes and make them inaccessible. Additionally, changes to one volume can affect other volumes because volumes on a disk share a partition table.

 

**Note**  
The recovery of dynamic disks with DaRT is not supported.

 

### Disk Wipe

You can use **Disk Wipe** to delete all data from a disk or volume, even the data that is left behind after you reformat a hard disk drive. **Disk Wipe** lets you select from either a single-pass overwrite or a four-pass overwrite, which meets current U.S. Department of Defense standards.

**Warning**  
After wiping a disk or volume, you cannot recover the data. Verify the size and label of a volume before erasing it.

 

### Explorer

The **Explorer** tool lets you browse the computer’s file system and network shares so that you can remove important data that the user stored on the local drive before you try to repair or reimage the computer. And because you can map drive letters to network shares, you can easily copy and move files from the computer to the network for safekeeping or from the network to the computer to restore them.

### File Restore

**File Restore** lets you try to restore files that were accidentally deleted or that were too big to fit in the Recycle Bin. **File Restore** is not limited to regular disk volumes, but can find and restore files on lost volumes or on volumes that are encrypted by BitLocker.

**Note**  
The recovery of dynamic disks with DaRT is not supported.

 

### File Search

Before reimaging a computer, recovering files from the local hard disk is important, especially when the user might not have backed up or stored the files elsewhere.

The **Search** tool opens a **File Search** window that you can use to find documents when you do not know the file path or to search for general kinds of files across all local hard disks. You can search for specific file-name patterns in specific paths. You can also limit results to a date range or size range.

### Hotfix Uninstall

The **Hotfix Uninstall Wizard** lets you remove hotfixes or service packs from the Windows operating system on the computer that you are repairing. Use this tool when a hotfix or service pack is suspected in preventing the operating system from starting.

We recommend that you uninstall only one hotfix at a time, even though the tool lets you uninstall more than one.

**Important**  
Programs that were installed or updated after a hotfix was installed might not work correctly after you uninstall a hotfix.

 

### Locksmith

The **Locksmith Wizard** lets you set or change the password for any local account on the Windows operating system that you are analyzing or repairing. You do not have to know the current password. However, the password that you set must comply with any requirements that are defined by a local Group Policy Object. This includes password length and complexity.

You can use **Locksmith** when the password for a local account, such as the local Administrator account, is unknown. You cannot use **Locksmith** to set passwords for domain accounts.

### Registry Editor

You can use **Registry Editor** to access and change the registry of the Windows operating system that you are analyzing or repairing. This includes adding, removing, and editing keys and values, and importing registry (.reg) files.

**Warning**  
Serious problems can occur if you change the registry incorrectly by using **Registry Editor**. These problems might require you to reinstall the operating system. Before you make changes to the registry, you should back up any valued data on the computer. Change the registry at your own risk.

 

### SFC Scan

The **SFC Scan** tool starts the **System File Repair Wizard** and lets you repair system files that are preventing the installed Windows operating system from starting. The **System File Repair Wizard** can automatically repair system files that are corrupted or missing, or it can prompt you before it performs any repairs.

### Solution Wizard

The **Solution Wizard** presents a series of questions and then recommends the best tool for the situation, based on your answers. This wizard helps you determine which tool to use when you are not familiar with the tools in DaRT.

### TCP/IP Config

When you boot a problem computer into DaRT, it is set to automatically obtain its TCP/IP configuration (IP address and DNS server) from Dynamic Host Configuration Protocol (DHCP). If DHCP is unavailable, you can manually configure TCP/IP by using the **TCP/IP Config** tool. You first select a network adapter, and then configure the IP address and DNS server for that adapter.

## Related topics


[Getting Started with DaRT 10](getting-started-with-dart-10.md)

 

 






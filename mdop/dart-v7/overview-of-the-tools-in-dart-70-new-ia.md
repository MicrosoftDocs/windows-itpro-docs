---
title: Overview of the Tools in DaRT 7.0
description: Overview of the Tools in DaRT 7.0
author: dansimp
ms.assetid: 67c5991e-cbe6-4ce9-9fe5-f1761369d1fe
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Overview of the Tools in DaRT 7.0


From the **Diagnostics and Recovery Toolset** window in Microsoft Diagnostics and Recovery Toolset (DaRT) 7, you can start any of the individual tools that were included when the DaRT recovery image was created. For information about how to access the **Diagnostics and Recovery Toolset** window, see [How to Recover Local Computers Using the DaRT Recovery Image](how-to-recover-local-computers-using-the-dart-recovery-image-dart-7.md).

If it is available, you can use the **Solution Wizard** on the **Diagnostics and Recovery Toolset** window to select the tool that best addresses your particular issue, based on a brief interview.

## Exploring the DaRT Tools


This section describes the various tools that are part of DaRT.

### Registry Editor

You can use **Registry Editor** to access and change the registry of the Windows operating system that you are analyzing or repairing. This includes adding, removing, and editing keys and values, and importing registry (.reg) files.

**Caution**  
This topic describes how to change the Windows registry by using Registry Editor. If you change the Windows registry incorrectly, you can cause serious problems that might require you to reinstall Windows. You should make a backup copy of the registry files (System.dat and User.dat) before you change the registry. Microsoft cannot guarantee that the problems that might occur when you change the registry can be resolved. Change the registry at your own risk.

 

### Locksmith

The **Locksmith Wizard** lets you set or change the password for any local account on the Windows operating system that you are analyzing or repairing. You do not have to know the current password. However, the password that you set must comply with any requirements that are defined by a local Group Policy object. This includes password length and complexity.

You can use **Locksmith** when the password for a local account, such as the local Administrator account, is unknown. You cannot use **Locksmith** to set passwords for domain accounts.

### Crash Analyzer

Use the **Crash Analyzer Wizard** to quickly determine the cause of a computer crash by analyzing the memory dump file on the Windows operating system that you are repairing. **Crash Analyzer** examines the crash dump file for the driver that caused a computer to fail. Then, you can disable the problem device driver by using the **Services and Drivers** node in the **Computer Management** tool.

The **Crash Analyzer Wizard** requires the Debugging Tools for Windows and symbol files for the operating system that you are repairing. You can include both requirements when you create the DaRT recovery image. If they are not included on the recovery image and you do not have access to them on the computer that you are repairing, you can copy the memory dump file to another computer and use the stand-alone version of **Crash Analyzer** to diagnose the problem.

Running **Crash Analyzer** is a good idea even if you plan to reimage the computer. The image could have a defective driver that is causing problems in your environment. By running **Crash Analyzer**, you can identify problem drivers and improve the image stability.

For more information about **Crash Analyzer**, see [Diagnosing System Failures with Crash Analyzer](diagnosing-system-failures-with-crash-analyzer--dart-7.md).

### File Restore

**File Restore** lets you try to restore files that were accidentally deleted or that were too big to fit in the Recycle Bin. **File Restore** is not limited to regular disk volumes, but can find and restore files on lost volumes or on volumes that are encrypted by BitLocker.

### Disk Commander

**Disk Commander** lets you recover and repair disk partitions or volumes by using one of the following recovery processes:

-   Restore the master boot record (MBR)

-   Recover one or more lost volumes

-   Restore partition tables from **Disk Commander** backup

-   Save partition tables to **Disk Commander** backup

**Warning**  
We recommend that you back up a disk before you use **Disk Commander** to repair it. By using **Disk Commander**, you can potentially damage volumes and make them inaccessible. Additionally, changes to one volume can affect other volumes because volumes on a disk share a partition table.

 

### Disk Wipe

You can use **Disk Wipe** to delete all data from a disk or volume, even the data that is left behind after you reformat a hard disk drive. **Disk Wipe** lets you select from either a single-pass overwrite or a four-pass overwrite, which meets current U.S. Department of Defense standards.

**Warning**  
After wiping a disk or volume, you cannot recover the data. Verify the size and label of a volume before erasing it.

 

### Computer Management

**Computer Management** is a collection of Windows administrative tools that help you troubleshoot a problem computer. You can use the **Computer Management** tools in DaRT to view system information and event logs, manage disks, list autoruns, and manage services and drivers. The **Computer Management** console is customized to help you diagnose and repair problems that might be preventing the Windows operating system from starting.

### Explorer

The **Explorer** tool lets you browse the computer’s file system and network shares so that you can remove important data that the user stored on the local drive before you try to repair or reimage the computer. And because you can map drive letters to network shares, you can easily copy and move files from the computer to the network for safekeeping or from the network to the computer to restore them.

### Solution Wizard

The **Solution Wizard** presents a series of questions and then recommends the best tool for the situation, based on your answers. This wizard helps you determine which tool to use when you are not familiar with the tools in DaRT.

### TCP/IP Config

When you boot a problem computer into DaRT, it is set to automatically obtain its TCP/IP configuration (IP address and DNS server) from Dynamic Host Configuration Protocol (DHCP). If DHCP is unavailable, you can manually configure TCP/IP by using the **TCP/IP Config** tool. You first select a network adapter, and then configure the IP address and DNS server for that adapter.

### Hotfix Uninstall

The **Hotfix Uninstall Wizard** lets you remove hotfixes or service packs from the Windows operating system on the computer that you are repairing. Use this tool when a hotfix or service pack is suspected in preventing the operating system from starting.

We recommend that you uninstall only one hotfix at a time, even though the tool lets you uninstall more than one.

**Important**  
Programs that were installed or updated after a hotfix was installed might not work correctly after you uninstall a hotfix.

 

### SFC Scan

The **SFC Scan** tool starts the **System File Repair Wizard** and lets you repair system files that are preventing the installed Windows operating system from starting. The **System File Repair Wizard** can automatically repair system files that are corrupted or missing, or it can prompt you before it performs any repairs.

### Search

Before reimaging a computer, recovering files from the local hard disk is important, especially when the user might not have backed up or stored the files elsewhere.

The **Search** tool opens a **File Search** window that you can use to find documents when you do not know the file path or to search for general kinds of files across all local hard disks. You can search for specific file-name patterns in specific paths. You can also limit results to a date range or size range.

### Standalone System Sweeper

**Important**  
Environments with the Standalone System Sweeper deployed should instead use the Windows Defender Offline (WDO) protection image for malware detection. Because of how the Standalone System Sweeper tool integrates into DaRT, all supported DaRT version deployments cannot apply these anti-malware updates to their DaRT images.

 

The **Standalone System Sweeper** can help detect malware and unwanted software and warn you of security risks. You can use this tool to scan a computer for and remove malware even when the installed Windows operating system is not running. When the **Standalone System Sweeper** detects malicious or unwanted software, it prompts you to remove, quarantine, or allow for each item.

Malware that uses rootkits can mask itself from the running operating system. If a rootkit-enabled virus or spyware is in a computer, most real-time scanning and removal tools can no longer see it or remove it. Because you boot the problem computer into DaRT and the installed operating system is offline, you can detect the rootkit without it being able to mask itself.

### Remote Connection

The **Remote Connection** tool in DaRT lets you remotely run the DaRT tools on an end-user computer. After certain specific information is provided by the end user (or by a helpdesk professional working on the end-user computer), the IT administrator can take control of the end user's computer and run the necessary DaRT tools remotely.

**Important**  
The two computers establishing a remote connection must be part of the same network.

 

## Related topics


[Getting Started with DaRT 7.0](getting-started-with-dart-70-new-ia.md)

 

 






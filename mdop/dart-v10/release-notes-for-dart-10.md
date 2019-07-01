---
title: Release Notes for DaRT 10
description: Release Notes for DaRT 10
author: msfttracyp
ms.assetid: eb996980-f9c4-42cb-bde9-6b3d4b82b58c
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Release Notes for DaRT 10


**To search these release notes, press CTRL+F.**

Read these release notes thoroughly before you install Microsoft Diagnostics and Recovery Toolset (DaRT) 10.

These release notes contain information that is required to successfully install Diagnostics and Recovery Toolset 10. The release notes also contain information that is not available in the product documentation. If there is a difference between these release notes and other DaRT documentation, the latest change should be considered authoritative. These release notes supersede the content that is included with this product.

## Known issues with DaRT 10


### Disk Commander is unable to repair a corrupt master boot record in a physical partition in Windows 10

In Windows 10, the “Restore the Master Boot Record (MBR) or the header of the GUID Partition Table (GPT)” option in Disk Commander is unable to repair a corrupt master boot record in a physical partition, and therefore is unable to boot the client computer.

**Workaround:** Start **Startup Repair**, click **Troubleshoot**, click **Advanced options**, and then click **Start repair**.

### Multiple instances of Disk Wipe that target the same drive cause all instances except the last one to report a failure

If you start multiple instances of Disk Wipe, and then try to wipe the same drive by using two separate Disk Wipe instances, all instances except the last one report a failure to wipe the drive.

**Workaround:** None.

### Disk Wipe may not clear all data on solid-state drives that have flash memory

If you use Disk Wipe to clear data on a solid-state drive (SSD) that has flash memory, all of the data may not be erased. This issue occurs because the SSD firmware controls the physical location of writes while Disk Wipe is running.

**Workaround:** None.

### System restore fails when you run Locksmith Wizard or Registry Editor

If you run Locksmith Wizard, Registry Editor, and possibly other tools, System Restore fails.

**Workaround:** Close and restart DaRT, and then start System Restore.

### System File Checker (SFC) Scan fails to run after you start and close Locksmith Wizard or Computer Management

If you start and then close Locksmith Wizard or tools in Computer Management, System File Checker fails to run.

**Workaround:** Close and restart DaRT, and then start System File Checker.

### <a href="" id="-------------dart-installer-does-not-fail-when-the-windows-assessment-and-deployment-kit-is-not-installed"></a> DaRT installer does not fail when the Windows Assessment and Deployment Kit is not installed

If you install DaRT 10 by using the command line to run the Windows Installer (.msi), and the Windows Assessment and Deployment Kit (Windows ADK) has not been installed, the DaRT installation should fail. Currently, the DaRT 10 installer installs all components except the DaRT recovery image.

**Workaround:** None.

## Related topics


[About DaRT 10](about-dart-10.md)

 

 






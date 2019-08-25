---
title: Release Notes for DaRT 7.0
description: Release Notes for DaRT 7.0
author: msfttracyp
ms.assetid: fad227d0-5c22-4efd-9187-0e5922f7250b
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Release Notes for DaRT 7.0


**To search these release notes, press CTRL+F.**

Read these release notes thoroughly before you install Microsoft Diagnostics and Recovery Toolset (DaRT) 7.

## About Microsoft Diagnostics and Recovery Toolset 7.0


These release notes contain information that is required to successfully install DaRT 7 and contain information that is not available in the product documentation. If there is a difference between these release notes and other DaRT platform documentation, the latest change should be considered authoritative. These release notes supersede the content included with this product.

## About the Product Documentation


Documentation for Microsoft Diagnostics and Recovery Toolset (DaRT) 7 is distributed with the product and on the Connect site.

For detailed help about how to use the tools in DaRT 7, see the Help file available on the **Diagnostics and Recovery Toolset** menu.

## Providing feedback


We are interested in your feedback on DaRT 7. You can send your feedback to dart7feedback@microsoft.com. This email address is not a support channel, but your feedback will help us to plan future changes for these tools to make them more useful to you in the future.

## Protect Against Security Vulnerabilities and Viruses


To help protect against security vulnerabilities and viruses, we recommend that you install the latest available security updates for any new software being installed. For more information, see [Microsoft Security](https://go.microsoft.com/fwlink/?LinkId=3482) (https://go.microsoft.com/fwlink/?LinkId=3482).

## Known Issues with DaRT 7.0


### SFC Scan cannot start if Standalone System Sweeper is open

If the Standalone System Sweeper is running, SFC Scan cannot start or run because of a resource conflict between the two tools.

**Workaround:** Close the Standalone System Sweeper before you try to open or run the SFC Scan tool.

### Unicode characters may not be displayed in file names

If you delete a file that has Unicode characters in its file name and try to restore the file by using the File Restore tool, the file is not found. This only occurs when you use characters from a language other than the language of the Windows DVD that was used to create the recovery image.

**Workaround:** Make sure that the language that is used by DaRT matches the language that is used by the operating system from which it is trying to restore files.

### DaRT command-line installation may fail silently

DaRT command-line installation fails silently if run with the quiet mode option unless it is run by using elevated administrator permissions.

**Workaround:** Run the command-line installation by using elevated administrator permissions. DaRT installation supports the typical Windows Installer options for command-line installation. Please see [Command-Line Options](https://go.microsoft.com/fwlink/?LinkId=160689) for Windows Installer for more information about the several available switches.

### File Search cannot move a folder to a different volume

Moving folders between volumes is not supported by the File Search application. If you try to move a folder to a different volume in File Search, the following error is returned: "An error occurred while writing the file *&lt;filename&gt;*. Make sure that the drive has sufficient space and the destination path is accessible."

**Workaround:** Use the Explorer to move a folder to a different volume.

### Some data may not be available on computers where the drive letters are remapped

This problem can occur on BitLocker-enabled computers and multiboot computers. This occurs because some information in the offline registry has hard-coded drive letters, and DaRT uses different letters for the same volumes. The typical effects include not having access to certain local user accounts in Registry Editor. Additionally, some tools may be unable to obtain properties that rely on resolving file paths.

**Workaround:** Use the option to remap the drive letters as DaRT starts. This usually aligns the typical drive letters to what is expected.

### Hotfix Uninstall might not uninstall certain updates

Some updates and service packs cannot be uninstalled because they are marked as un-installable or because they need to be uninstalled from within Windows 7. In these instances, the Hotfix Uninstall tool may indicate that these updates have been uninstalled even though they have not been.

**Workaround:** Uninstall these problematic updates from Windows 7.

### Disk Wipe: Disks with spanned volumes, striped volumes, or mirrored volumes cannot be deleted

Disk Wipe does not support deleting disks that are spanned, mirrored, or striped across one or more volumes.

**Workaround:** Select and delete each disk in the volume separately.

## Release Notes Copyright Information


This document is provided “as-is”. Information and views expressed in this document, including URL and other Internet website references, may change without notice. You bear the risk of using it.

Some examples depicted herein are provided for illustration only and are fictitious. No real association or connection is intended or should be inferred.

This document does not provide you with any legal rights to any intellectual property in any Microsoft product. This document is confidential and proprietary to Microsoft. It is disclosed and can be used only pursuant to a nondisclosure agreement.



Microsoft, Active Directory, ActiveSync, MS-DOS, Windows, Windows Server, and Windows Vista are trademarks of the Microsoft group of companies.

All other trademarks are property of their respective owners.

## Related topics


[About DaRT 7.0](about-dart-70-new-ia.md)

 

 






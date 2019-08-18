---
title: Frequently Asked Questions (Windows 10)
description: Frequently Asked Questions
ms.assetid: 813c13a7-6818-4e6e-9284-7ee49493241b
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
audience: itproauthor: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Frequently Asked Questions


The following sections provide frequently asked questions and recommended solutions for migrations using User State Migration Tool (USMT) 10.0.

## <a href="" id="bkmk-generalquestions"></a>General


### <a href="" id="bkmk-1"></a>How much space is needed on the destination computer?

The destination computer needs enough available space for the following:

-   Operating system

-   Applications

-   Uncompressed store

### <a href="" id="bkmk-directly"></a>Can I store the files and settings directly on the destination computer or do I need a server?

You do not need to save the files to a server. If you are moving the user state to a new computer, you can create the store on a shared folder, on media that you can remove, such as a USB flash drive (UFD), or you can store it directly on the destination computer, as in the following steps:

1.  Create and share the directory C:\\store on the destination computer.

2.  Run the ScanState tool on the source computer and save the files and settings to \\\\*DestinationComputerName*\\store

3.  Run the LoadState tool on the destination computer and specify C:\\store as the store location.

### <a href="" id="no"></a>Can I migrate data between operating systems with different languages?

No. USMT does not support migrating data between operating systems with different languages; the source computer's operating-system language must match the destination computer's operating-system language.

### <a href="" id="bkmk-2"></a>Can I change the location of the temporary directory on the destination computer?

Yes. The environment variable USMT\_WORKING\_DIR can be changed to an alternative temporary directory. There are some offline migration scenarios where this is necessary, for example, when the USMT binaries are located on read-only Windows Preinstallation Environment (WinPE) boot media.

### How do I install USMT?

Because USMT is included in Windows Assessment and Deployment Kit (Windows ADK), you need to install the Windows ADK package on at least one computer in your environment. However, the USMT binaries are designed to be deployed using xcopy. This means that they are installed on a computer simply by recursively copying the USMT directory from the computer containing the Windows ADK to each client computer.

### <a href="" id="uninstall"></a>How do I uninstall USMT?

If you have installed the Windows ADK on the computer, uninstalling Windows ADK will uninstall USMT. For client computers that do not have the Windows ADK installed, you can simply delete the USMT directory to uninstall USMT.

## <a href="" id="bkmk-filesandsettings"></a>Files and Settings


### <a href="" id="bkmk-8"></a>How can I exclude a folder or a certain type of file from the migration?

You can use the **&lt;unconditionalExclude&gt;** element to globally exclude data from the migration. For example, you can use this element to exclude all MP3 files on the computer or to exclude all files from C:\\UserData. This element excludes objects regardless of any other &lt;include&gt; rules that are in the .xml files. For an example, see &lt;unconditionalExclude&gt; in the [Exclude Files and Settings](usmt-exclude-files-and-settings.md) topic. For the syntax of this element, see [XML Elements Library](usmt-xml-elements-library.md).

### <a href="" id="bkmk-location"></a>What happens to files that were located on a drive that does not exist on the destination computer?

USMT migrates the files to the %SystemDrive% while maintaining the correct folder hierarchy. For example, if E:\\data\\File.pst is on the source computer, but the destination computer does not have an E:\\ drive, the file will be migrated to C:\\data\\File.pst, if C:\\ is the system drive. This holds true even when &lt;locationModify&gt; rules attempt to move data to a drive that does not exist on the destination computer.

## <a href="" id="bkmk-usmtxmlfiles"></a>USMT .xml Files


### <a href="" id="bkmk-111"></a>Where can I get examples of USMT .xml files?

The following topics include examples of USMT .xml files:

-   [Exclude Files and Settings](usmt-exclude-files-and-settings.md)

-   [Reroute Files and Settings](usmt-reroute-files-and-settings.md)

-   [Include Files and Settings](usmt-include-files-and-settings.md)

-   [Custom XML Examples](usmt-custom-xml-examples.md)

### <a href="" id="bkmk-16"></a>Can I use custom .xml files that were written for USMT 5.0?

Yes. You can use custom .xml files that were written for USMT 5.0 with USMT for Windows 10. However, in order to use new USMT functionality, you must revisit your custom USMT files and refresh them to include the new command-line options and XML elements.

### <a href="" id="how"></a>How can I validate the .xml files?

You can use the USMT XML Schema (MigXML.xsd) to write and validate migration .xml files.

### <a href="" id="bkmk-3"></a>Why must I list the .xml files with both the ScanState and LoadState commands?

The .xml files are not copied to the store as in previous versions of USMT. Because the ScanState and LoadState tools need the .xml files to control the migration, you must specify the same set of .xml files for the **ScanState** and **LoadState** commands. If you used a particular set of mig\*.xml files in the ScanState tool, either called through the "/auto" option, or individually through the "/i" option, then you should use same option to call the exact same mig\*.xml files in the LoadState tool. However, you do not have to specify the Config.xml file, unless you want to exclude some of the files and settings that you migrated to the store. For example, you might want to migrate the My Documents folder to the store, but not to the destination computer. To do this, modify the Config.xml file and specify the updated file with the **LoadState** command. **LoadState** will migrate only the files and settings that you want to migrate.

If you exclude an .xml file from the **LoadState** command, then all of the data that is in the store that was migrated with the missing .xml files will be migrated. However, the migration rules that were specified for the **ScanState** command will not apply. For example, if you exclude a MigApp.xml file that has a rerouting rule such as `MigsysHelperFunction.RelativeMove("c:\data", "%CSIDL_PERSONAL%")`, USMT will not reroute the files. Instead, it will migrate them to C:\\data.

### <a href="" id="bkmk-4"></a>Which files can I modify and specify on the command line?

You can specify the MigUser.xml and MigApp.xml files on the command line. You can modify each of these files. The migration of operating system settings is controlled by the manifests, which you cannot modify. If you want to exclude certain operating-system settings or any other components, create and modify the Config.xml file.

### <a href="" id="bkmk-7"></a>What happens if I do not specify the .xml files on the command line?

-   **ScanState**

    If you do not specify any files with the **ScanState** command, all user accounts and default operating system components are migrated.

-   **LoadState**

    If you do not specify any files with the **LoadState** command, all data that is in the store is migrated. However, any target-specific migration rules that were specified in .xml files with the **ScanState** command will not apply. For example, if you exclude a MigApp.xml file that has a rerouting rule such as `MigsysHelperFunction.RelativeMove("c:\data", "%CSIDL_PERSONAL%")`, USMT will not reroute the files. Instead, it will migrate them to C:\\data.

## Conflicts and Precedence


### <a href="" id="conflicts"></a>What happens when there are conflicting XML rules or conflicting objects on the destination computer?

For more information, see [Conflicts and Precedence](usmt-conflicts-and-precedence.md).

## Related topics


[User State Migration Tool (USMT) Troubleshooting](usmt-troubleshooting.md)

[Extract Files from a Compressed USMT Migration Store](usmt-extract-files-from-a-compressed-migration-store.md)

[Verify the Condition of a Compressed Migration Store](verify-the-condition-of-a-compressed-migration-store.md)

 

 






---
title: Migration Store Types Overview (Windows 10)
description: Migration Store Types Overview
ms.assetid: 3b6ce746-76c6-43ff-8cd5-02ed0ae0cf70
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

# Migration Store Types Overview


When planning your migration, you should determine which migration store type best meets your needs. As part of these considerations, determine how much space is required to run the User State Migration Tool (USMT) 10.0 components on your source and destination computers. You should also determine the space needed to create and host the migration store, whether you are using a local share, network share, or storage device.

## In This Topic


[Migration Store Types](#bkmk-types)

[Local Store vs. Remote Store](#bkmk-localvremote)

[The /localonly Command-Line Option](#bkmk-localonly)

## <a href="" id="bkmk-types"></a>Migration Store Types


This section describes the three migration store types available in USMT.

### Uncompressed (UNC)

The uncompressed (UNC) migration store is an uncompressed directory with a mirror image of the folder hierarchy being migrated. Each directory and file retains the same access permissions that it has on the local file system. You can use Windows Explorer to view this migration store type. Settings are stored in a catalog file that also describes how to restore files on the destination computer.

### Compressed

The compressed migration store is a single image file that contains all files being migrated and a catalog file. This image file is often encrypted and protected with a password, and cannot be navigated with Windows Explorer.

### Hard-Link

A hard-link migration store functions as a map that defines how a collection of bits on the hard disk are “wired” into the file system. You use the new USMT hard-link migration store in the PC Refresh scenario only. This is because the hard-link migration store is maintained on the local computer while the old operating system is removed and the new operating system is installed. Using a hard-link migration store saves network bandwidth and minimizes the server use needed to accomplish the migration.

You use a command-line option,**/hardlink** , to create a hard-link migration store, which functions the same as an uncompressed migration store. Files are not duplicated on the local computer when user state is captured, nor are they duplicated when user state is restored. For more information, see [Hard-Link Migration Store](usmt-hard-link-migration-store.md).

The following flowchart illustrates the procedural differences between a local migration store and a remote migration store. In this example, a hard-link migration store is used for the local store.

![migration store comparison](images/dep-win8-l-usmt-migrationcomparemigstores.gif)

## <a href="" id="bkmk-localvremote"></a>Local Store vs. Remote Store


If you have enough space and you are migrating the user state back to the same computer, storing data on a local device is normally the best option to reduce server storage costs and network performance issues. You can store the data locally either on a different partition or on a removable device such as a USB flash drive (UFD). Also, depending on the imaging technology that you are using, you might be able to store the data on the partition that is being re-imaged, if the data will be protected from deletion during the process. To increase performance, store the data on high-speed drives that use a high-speed network connection. It is also good practice to ensure that the migration is the only task the server is performing.

If there is not enough local disk space, or if you are moving the user state to another computer, then you must store the data remotely. For example, you can store it in on a shared folder, on removable media such as a UFD drive, or you can store it directly on the destination computer. For example, create and share C:\\store on the destination computer. Then run the ScanState command on the source computer and save the files and settings to \\\\*DestinationComputerName*\\store. Then, run the **LoadState** command on the destination computer and specify **C:\\Store** as the store location. By doing this, you do not need to save the files to a server.

**Important**  
If possible, have users store their data within their %UserProfile%\\My Documents and %UserProfile%\\Application Data folders. This will reduce the chance of USMT missing critical user data that is located in a directory that USMT is not configured to check.

 

### <a href="" id="bkmk-localonly"></a>The /localonly Command-Line Option

You should use this option to exclude the data from removable drives and network drives mapped on the source computer. For more information about what is excluded when you specify **/LocalOnly**, see [ScanState Syntax](usmt-scanstate-syntax.md).

## Related topics


[Plan Your Migration](usmt-plan-your-migration.md)

 

 






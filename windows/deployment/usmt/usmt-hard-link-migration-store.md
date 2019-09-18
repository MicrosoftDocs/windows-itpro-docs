---
title: Hard-Link Migration Store (Windows 10)
description: Hard-Link Migration Store
ms.assetid: b0598418-4607-4952-bfa3-b6e4aaa2c574
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
audience: itpro
author: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Hard-Link Migration Store


A *hard-link migration store* enables you to perform an in-place migration where all user state is maintained on the computer while the old operating system is removed and the new operating system is installed; this is why it is best suited for the computer-refresh scenario. Use of a hard-link migration store for a computer-refresh scenario drastically improves migration performance and significantly reduces hard-disk utilization, reduces deployment costs and enables entirely new migration scenarios.

## In This Topic


[When to Use a Hard-Link Migration](#bkmk-when)

[Understanding a Hard-Link Migration](#bkmk-understandhardlinkmig)

[Scenario](#bkmk-scenario)

[Hard-Link Migration Store Details](#bkmk-hardlinkstoredetails)

[Hard Disk Space](#bkmk-harddiskspace)

[Hard-Link Store Size Estimation](#bkmk-hardlinkstoresizeest)

[Migration Store Path on Multiple Volumes](#bkmk-migstoremultvolumes)

[Location Modifications](#bkmk-locationmodify)

[Migrating Encrypting File System (EFS) Certificates and Files](#bkmk-efs)

[Migrating Locked Files With the Hard-Link Migration Store](#bkmk-miglockedfiles)

[XML Elements in the Config.xml File](#bkmk-xmlelementsinconfig)

## <a href="" id="bkmk-when"></a>When to Use a Hard-Link Migration


You can use a hard-link migration store when your planned migration meets both of the following criteria:

-   You are upgrading the operating system on existing hardware rather than migrating to new computers.

-   You are upgrading the operating system on the same volume of the computer.

You cannot use a hard-link migration store if your planned migration includes any of the following:

-   You are migrating data from one computer to a second computer.

-   You are migrating data from one volume on a computer to another volume, for example from C: to D:.

-   You are formatting or repartitioning the disk outside of Windows Setup, or specifying a disk format or repartition during Windows Setup that will remove the migration store.

## <a href="" id="bkmk-understandhardlinkmig"></a>Understanding a Hard-Link Migration


The hard-link migration store is created using the command-line option, **/hardlink**, and is equivalent to other migration-store types. However, it differs in that hard links are utilized to keep files stored on the source computer during the migration. Keeping the files in place on the source computer eliminates the redundant work of duplicating files. It also enables the performance benefits and reduction in disk utilization that define this scenario.

When you create a hard link, you give an existing file an additional path. For instance, you could create a hard link to c:\\file1.txt called c:\\hard link\\myFile.txt. These are two paths to the same file. If you open c:\\file1.txt, make changes, and save the file, you will see those changes when you open c:\\hard link\\myFile.txt. If you delete c:\\file1.txt, the file still exists on your computer as c:\\hardlink\\myFile.txt. You must delete both references to the file in order to delete the file.

**Note**  
A hard link can only be created for a file on the same volume. If you copy a hard-link migration store to another drive or external device, the files, and not the links, are copied, as in a non-compressed migration-store scenario.

 

For more information about hard links, please see [Hard Links and Junctions](https://go.microsoft.com/fwlink/p/?LinkId=132934)

In most aspects, a hard-link migration store is identical to an uncompressed migration store. It is located where specified by the Scanstate command-line tool and you can view the contents of the store by using Windows® Explorer. Once created, it can be deleted or copied to another location without changing user state. Restoring a hard-link migration store is similar to restoring any other migration store; however, as with creating the store, the same hard-link functionality is used to keep files in-place.

As a best practice, we recommend that you delete the hard-link migration store after you confirm that the Loadstate tool has successfully migrated the files. Since Loadstate has created new paths to the files on your new installation of a Windows operating system, deleting the hard links in the migration store will only delete one path to the files and will not delete the actual files or the paths to them from your new operating system.

**Important**  
Using the **/c** option will force the Loadstate tool to continue applying files when non-fatal errors occur. If you use the **/c** option, you should verify that no errors are reported in the logs before deleting the hard-link migration store in order to avoid data loss.

 

Keeping the hard-link migration store can result in additional disk space being consumed or problems with some applications for the following reasons:

-   Applications reporting file-system statistics, for example, space used and free space, might incorrectly report these statistics while the hard-link migration store is present. The file may be reported twice because of the two paths that reference that file.

-   A hard link may lose its connection to the original file. Some applications save changes to a file by creating a temporary file and then renaming the original to a backup filename. The path that was not used to open the file in this application will continue to refer to the unmodified file. The unmodified file that is not in use is taking up additional disk space. You should create the hard-link migration store just before you perform the migration, and not use applications once the store is created, in order to make sure you are migrating the latest versions of all files.

-   Editing the file by using different paths simultaneously may result in data corruption.

**Important**  
The read-only file attribute on migrated files is lost when the hard-link migration store is deleted. This is due to a limitation in NTFS file system hard links.

 

## <a href="" id="bkmk-scenario"></a>Hard-Link Migration Scenario


For example, a company has decided to deploy Windows 10 on all of their computers. Each employee will keep the same computer, but the operating system on each computer will be updated.

1.  An administrator runs the ScanState command-line tool on each computer, specifying the **/hardlink** command-line option. The ScanState tool saves the user state to a hard-link migration store on each computer, improving performance by reducing file duplication, except in certain specific instances.

    **Note**  
    As a best practice, we recommend that you do not create your hard-link migration store until just before you perform the migration in order to migrate the latest versions of your files. You should not use your software applications on the computer after creating the migration store until you have finished migrating your files with Loadstate.

     

2.  On each computer, an administrator installs the company's standard operating environment (SOE), which includes Windows 7 and other applications the company currently uses.

3.  An administrator runs the LoadState command-line tool on each computer. The LoadState tool restores user state back on each computer.

## <a href="" id="bkmk-hardlinkstoredetails"></a>Hard-Link Migration Store Details


This section provides details about hard-link migration stores.

### <a href="" id="bkmk-harddiskspace"></a>Hard Disk Space

The **/hardlink** command-line option proceeds with creating the migration store only if there is 250 megabytes (MB) of free space on the hard disk. Provided that every volume involved in the migration is formatted as NTFS, 250 MB should be enough space to ensure success for almost every hard-link migration, regardless on the size of the migration.

### <a href="" id="bkmk-hardlinkstoresizeest"></a>Hard-Link Store Size Estimation

It is not necessary to estimate the size of a hard-link migration store. Estimating the size of a migration store is only useful in scenarios where the migration store is very large, and on NTFS volumes the hard-link migration store will require much less incremental space than other store options. The only case where the local store can be quite large is when non-NTFS file systems exist on the system and contain data being migrated. Since NTFS has been the default file system format for Windows XP and newer operating systems, this situation is unusual.

### <a href="" id="bkmk-migstoremultvolumes"></a>Migration Store Path on Multiple Volumes

Separate hard-link migration stores are created on each NTFS volume that contain data being migrated. In this scenario, the primary migration-store location will be specified on the command line, and should be the operating-system volume. Migration stores with identical names and directory names will be created on every volume containing data being migrated. For example:

`Scanstate /hardlink c:\USMTMIG […]`

Running this command on a system that contains the operating system on the C: drive and the user data on the D: drive will generate migration stores in the following locations, assuming that both drives are NTFS:

C:\\USMTMIG\\

D:\\USMTMIG\\

The drive you specify on the command line for the hard-link migration store is important, because it defines where the *master migration store* should be placed. The *master migration store* is the location where data migrating from non-NTFS volumes is stored. This volume must have enough space to contain all of the data that comes from non-NTFS volumes. As in other scenarios, if a migration store already exists at the specified path, the **/o** option must be used to overwrite the existing data in the store.

### <a href="" id="bkmk-locationmodify"></a>Location Modifications

Location modifications that redirect migrated content from one volume to a different volume have an adverse impact on the performance of a hard-link migration. This is because the migrating data that must cross system volumes cannot remain in the hard-link migration store, and must be copied across the system volumes.

### <a href="" id="bkmk-efs"></a>Migrating Encrypting File System (EFS) Certificates and Files

To migrate Encrypting File System (EFS) files to a new installation of an operating system on the same volume of the computer, specify the **/efs:hardlink** option in the Scanstate command-line syntax.

If the EFS files are being restored to a different partition, you should use the **/efs:copyraw** option instead of the **/efs:hardlink** option. Hard links can only be created for files on the same volume. Moving the files to another partition during the migration requires a copy of the files to be created on the new partition. The **/efs:copyraw** option will copy the files to the new partition in encrypted format.

For more information, see [Migrate EFS Files and Certificates](usmt-migrate-efs-files-and-certificates.md) and the Encrypted File Options in [ScanState Syntax](usmt-scanstate-syntax.md).

### <a href="" id="bkmk-miglockedfiles"></a>Migrating Locked Files with the Hard-Link Migration Store

Files that are locked by an application or the operating system are handled differently when using a hard-link migration store.

Files that are locked by the operating system cannot remain in place and must be copied into the hard-link migration store. As a result, selecting many operating-system files for migration significantly reduces performance during a hard-link migration. As a best practice, we recommend that you do not migrate any files out of the \\Windows directory, which minimizes performance-related issues.

Files that are locked by an application are treated the same in hard-link migrations as in other scenarios when the volume shadow-copy service is not being utilized. The volume shadow-copy service cannot be used in conjunction with hard-link migrations. However, by modifying the new **&lt;HardLinkStoreControl&gt;** section in the Config.xml file, it is possible to enable the migration of files locked by an application.

**Important**  
There are some scenarios in which modifying the **&lt;HardLinkStoreControl&gt;** section in the Config.xml file makes it more difficult to delete a hard-link migration store. In these scenarios, you must use USMTutils.exe to schedule the migration store for deletion on the next restart.

 

## <a href="" id="bkmk-xmlelementsinconfig"></a>XML Elements in the Config.xml File


A new section in the Config.xml file allows optional configuration of some of the hard-link migration behavior introduced with the **/HardLink** option.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p><strong>&lt;Policies&gt;</strong></p></td>
<td align="left"><p>This element contains elements that describe the policies that USMT follows while creating a migration store.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>&lt;HardLinkStoreControl&gt;</strong></p></td>
<td align="left"><p>This element contains elements that describe how to handle files during the creation of a hard link migration store.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>&lt;fileLocked&gt;</strong></p></td>
<td align="left"><p>This element contains elements that describe how to handle files that are locked for editing.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>&lt;createHardLink&gt;</strong></p></td>
<td align="left"><p>This element defines a standard MigXML pattern that describes file paths where hard links should be created, even if the file is locked for editing by another application.</p>
<p>Syntax: &lt;createHardLink&gt; [pattern] &lt;/createHardLink&gt;</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>&lt;errorHardLink&gt;</strong></p></td>
<td align="left"><p>This element defines a standard MigXML pattern that describes file paths where hard links should not be created, if the file is locked for editing by another application.</p>
<p>&lt;errorHardLink&gt; [pattern] &lt;/errorHardLink&gt;</p></td>
</tr>
</tbody>
</table>

 

**Important**  
You must use the **/nocompress** option with the **/HardLink** option.

 

The following XML sample specifies that files locked by an application under the \\Users directory can remain in place during the migration. It also specifies that locked files that are not located in the \\Users directory should result in the **File in Use** error. It is important to exercise caution when specifying the paths using the **File in Use&lt;createhardlink&gt;** tag in order to minimize scenarios that make the hard-link migration store more difficult to delete.

``` xml
<Policies>
    <HardLinkStoreControl>
          <fileLocked>
            <createHardLink>c:\Users\* [*]</createHardLink>
            <errorHardLink>C:\* [*]</errorHardLink>
          </fileLocked>
    </HardLinkStoreControl>
</Policies>
```

## Related topics


[Plan Your Migration](usmt-plan-your-migration.md)

 

 






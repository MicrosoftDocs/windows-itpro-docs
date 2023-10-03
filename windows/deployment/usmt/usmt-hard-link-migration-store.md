---
title: Hard-Link Migration Store (Windows 10)
description: Use of a hard-link migration store for a computer-refresh scenario drastically improves migration performance and significantly reduces hard-disk utilization.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 11/01/2022
ms.topic: article
ms.technology: itpro-deploy
---

# Hard-Link Migration Store

A **hard-link migration store** enables you to perform an in-place migration where all user state is maintained on the computer while the old operating system is removed and the new operating system is installed. This functionality is what makes **hard-link migration store** best suited for the computer-refresh scenario. Use of a hard-link migration store for a computer-refresh scenario drastically improves migration performance and significantly reduces hard-disk utilization, reduces deployment costs, and enables entirely new migration scenarios.

## When to use a hard-link migration

You can use a hard-link migration store when your planned migration meets both of the following criteria:

- You're upgrading the operating system on existing hardware rather than migrating to new computers.

- You're upgrading the operating system on the same volume of the computer.

You can't use a hard-link migration store if your planned migration includes any of the following tasks:

- You're migrating data from one computer to a second computer.

- You're migrating data from one volume on a computer to another volume, for example from `C:` to `D:`.

- You're formatting or repartitioning the disk outside of Windows Setup, or specifying a disk format or repartition during Windows Setup that will remove the migration store.

## Understanding a hard-link migration

The hard-link migration store is created using the command-line option, `/hardlink`, and is equivalent to other migration-store types. However, it differs in that hard links are utilized to keep files stored on the source computer during the migration. Keeping the files in place on the source computer eliminates the redundant work of duplicating files. It also enables the performance benefits and reduction in disk utilization that define this scenario.

When you create a hard link, you give an existing file one more path. For instance, you could create a hard link to `c:\file1.txt` called `c:\hard link\myFile.txt`. These two paths relate to the same file. If you open `c:\file1.txt`, make changes, and save the file, you'll see those changes when you open `c:\hard link\myFile.txt`. If you delete `c:\file1.txt`, the file still exists on your computer as `c:\hardlink\myFile.txt`. You must delete both references to the file in order to delete the file.

> [!NOTE]
> A hard link can only be created for a file on the same volume. If you copy a hard-link migration store to another drive or external device, the files, and not the links, are copied, as in a non-compressed migration-store scenario.

For more information about hard links, see [Hard Links and Junctions](/windows/win32/fileio/hard-links-and-junctions)

In most aspects, a hard-link migration store is identical to an uncompressed migration store. It's located where specified by the **ScanState.exe** command-line tool and you can view the contents of the store by using Windows Explorer. Once created, it can be deleted or copied to another location without changing user state. Restoring a hard-link migration store is similar to restoring any other migration store. However, as with creating the store, the same hard-link functionality is used to keep files in-place.

As a best practice, it's recommended that you delete the hard-link migration store after you confirm that the **LoadState** tool has successfully migrated the files. Since **LoadState** has created new paths to the files on the new installation of a Windows operating system, deleting the hard links in the migration store will only delete one path to the files, and won't delete the actual files or the paths to them from the new operating system.

> [!IMPORTANT]
> Using the `/c` option will force the **LoadState** tool to continue applying files when non-fatal errors occur. If you use the `/c` option, you should verify that no errors are reported in the logs before deleting the hard-link migration store in order to avoid data loss.

Keeping the hard-link migration store can result in extra disk space being consumed or problems with some applications for the following reasons:

- Applications reporting file-system statistics, for example, space used and free space, might incorrectly report these statistics while the hard-link migration store is present. The file may be reported twice because of the two paths that reference that file.

- A hard link may lose its connection to the original file. Some applications save changes to a file by creating a temporary file and then renaming the original to a backup filename. The path that wasn't used to open the file in this application will continue to refer to the unmodified file. The unmodified file that isn't in use is taking up more disk space. You should create the hard-link migration store just before you perform the migration, and not use applications once the store is created, in order to make sure you're migrating the latest versions of all files.

- Editing the file by using different paths simultaneously may result in data corruption.

> [!IMPORTANT]
> The read-only file attribute on migrated files is lost when the hard-link migration store is deleted. This is due to a limitation in NTFS file system hard links.

## Hard-link migration scenario

For example, a company has decided to deploy Windows 10 on all of their computers. Each employee will keep the same computer, but the operating system on each computer will be updated.

1. An administrator runs the **ScanState** command-line tool on each computer, specifying the `/hardlink` command-line option. The **ScanState** tool saves the user state to a hard-link migration store on each computer, improving performance by reducing file duplication, except in certain specific instances.

    > [!NOTE]
    > As a best practice, we recommend that you do not create your hard-link migration store until just before you perform the migration in order to migrate the latest versions of your files. You should not use your software applications on the computer after creating the migration store until you have finished migrating your files with **LoadState**.

2. On each computer, an administrator installs the company's standard operating environment (SOE), which includes Windows 10 and other applications the company currently uses.

3. An administrator runs the **LoadState** command-line tool on each computer. The **LoadState** tool restores user state back on each computer.

> [!NOTE]
> During the update of a domain-joined computer, the profiles of users whose SID cannot be resolved will not be migrated. When using a hard-link migration store, it could cause a data loss.

## Hard-link migration store details

This section provides details about hard-link migration stores.

### Hard disk space

The `/hardlink` command-line option proceeds with creating the migration store only if there are 250 megabytes (MB) of free space on the hard disk. If every volume involved in the migration is formatted as NTFS, 250 MB should be enough space to ensure success for almost every hard-link migration, regardless on the size of the migration.

### Hard-link store size estimation

It isn't necessary to estimate the size of a hard-link migration store since hard-link migration store on NTFS volumes will be relatively small and require much less incremental space than other store options. Estimating the size of a migration store is only useful in scenarios where the migration store is large. The only case where the local store can be large with hard-link migrations is when non-NTFS file systems exist on the system and the non-NTFS files system contain data that needs to be migrated. Since NTFS has been the default file system format for Windows XP and newer operating systems, this situation is unusual.

### Migration store path on multiple volumes

Separate hard-link migration stores are created on each NTFS volume that contain data being migrated. In this scenario, the primary migration-store location will be specified on the command line, and should be the operating-system volume. Migration stores with identical names and directory names will be created on every volume containing data being migrated. For example:

  ```cmd 
  ScanState.exe /hardlink c:\USMTMIG […]
  ```

Running this command on a system that contains the operating system on the C: drive and the user data on the D: drive will generate migration stores in the following locations, assuming that both drives are NTFS:

`C:\USMTMIG\`

`D:\USMTMIG\`

The drive you specify on the command line for the hard-link migration store is important, because it defines where the **master migration store** should be placed. The **master migration store** is the location where data migrating from non-NTFS volumes is stored. This volume must have enough space to contain all of the data that comes from non-NTFS volumes. As in other scenarios, if a migration store already exists at the specified path, the `/o` option must be used to overwrite the existing data in the store.

### Location modifications

Location modifications that redirect migrated content from one volume to a different volume have an adverse impact on the performance of a hard-link migration. This impact is because the migrating data that must cross system volumes can't remain in the hard-link migration store, and must be copied across the system volumes.

### Migrating Encrypting File System (EFS) certificates and files

To migrate Encrypting File System (EFS) files to a new installation of an operating system on the same volume of the computer, specify the `/efs:hardlink` option in the `ScanState.exe` command-line syntax.

If the EFS files are being restored to a different partition, you should use the `/efs:copyraw` option instead of the `/efs:hardlink` option. Hard links can only be created for files on the same volume. Moving the files to another partition during the migration requires a copy of the files to be created on the new partition. The `/efs:copyraw` option will copy the files to the new partition in encrypted format.

For more information, see [Migrate EFS files and certificates](usmt-migrate-efs-files-and-certificates.md) and [Encrypted file options](usmt-scanstate-syntax.md#encrypted-file-options).

### Migrating locked files with the hard-link migration store

Files that are locked by an application or the operating system are handled differently when using a hard-link migration store.

Files that are locked by the operating system can't remain in place and must be copied into the hard-link migration store. As a result, selecting many operating-system files for migration significantly reduces performance during a hard-link migration. As a best practice, we recommend that you don't migrate any files out of the `\Windows` directory, which minimizes performance-related issues.

Files that are locked by an application are treated the same in hard-link migrations as in other scenarios when the volume shadow-copy service isn't being utilized. The volume shadow-copy service can't be used with hard-link migrations. However, by modifying the new **&lt;HardLinkStoreControl&gt;** section in the `Config.xml` file, it's possible to enable the migration of files locked by an application.

> [!IMPORTANT]
> There are some scenarios in which modifying the **&lt;HardLinkStoreControl&gt;** section in the `Config.xml` file makes it more difficult to delete a hard-link migration store. In these scenarios, you must use `UsmtUtils.exe` to schedule the migration store for deletion on the next restart.

## XML elements in the Config.xml file

A new section in the `Config.xml` file allows optional configuration of some of the hard-link migration behavior introduced with the `/HardLink` option.

| Element | Description |
|--- |--- |
| **&lt;Policies&gt;** | This element contains elements that describe the policies that USMT follows while creating a migration store. |
| **&lt;HardLinkStoreControl&gt;** | This element contains elements that describe how to handle files during the creation of a hard link migration store. |
| **&lt;fileLocked&gt;** | This element contains elements that describe how to handle files that are locked for editing. |
| **&lt;createHardLink&gt;** | This element defines a standard MigXML pattern that describes file paths where hard links should be created, even if the file is locked for editing by another application. <br/><br/>Syntax: `<createHardLink>` [pattern] `</createHardLink>` |
| **&lt;errorHardLink&gt;** | This element defines a standard MigXML pattern that describes file paths where hard links shouldn't be created, if the file is locked for editing by another application. <br/><br/>`<errorHardLink>` [pattern] `</errorHardLink>` |

> [!IMPORTANT]
> You must use the `/nocompress` option with the `/HardLink` option.

The following XML sample specifies that files locked by an application under the `\Users` directory can remain in place during the migration. It also specifies that locked files that aren't located in the `\Users` directory should result in the **File in Use** error. It's important to exercise caution when specifying the paths using the **`<createhardlink>`** tag in order to minimize scenarios that make the hard-link migration store more difficult to delete.

```xml
<Policies>
    <HardLinkStoreControl>
          <fileLocked>
            <createHardLink>c:\Users\* [*]</createHardLink>
            <errorHardLink>C:\* [*]</errorHardLink>
          </fileLocked>
    </HardLinkStoreControl>
</Policies>
```

## Related articles

[Plan your migration](usmt-plan-your-migration.md)

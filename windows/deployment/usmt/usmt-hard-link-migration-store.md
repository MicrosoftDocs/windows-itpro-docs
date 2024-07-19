---
title: Hard-Link Migration Store
description: Use of a hard-link migration store for a computer-refresh scenario drastically improves migration performance and significantly reduces hard-disk utilization.
ms.reviewer: kevinmi,warrenw
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.date: 01/09/2024
ms.topic: conceptual
ms.subservice: itpro-deploy
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Hard-Link Migration Store

A **hard-link migration store** enables an in-place migration to be performed where all user state is maintained on the computer while the old operating system is removed and the new operating system is installed. This functionality is what makes **hard-link migration store** best suited for the computer-refresh scenario. Use of a hard-link migration store for a computer-refresh scenario drastically improves migration performance and significantly reduces hard-disk utilization, reduces deployment costs, and enables entirely new migration scenarios.

## When to use a hard-link migration

A hard-link migration store can be used when the planned migration meets both of the following criteria:

- The operating system is being upgraded on existing hardware rather than migrating to new computers.

- The operating system is being upgraded on the same volume of the computer.

A hard-link migration store can't be used if the planned migration includes any of the following tasks:

- Data is being migrated from one computer to a different computer.

- Data is being migrating from one volume on a computer to another volume on the same computer, for example from `C:` to `D:`.

- The disk containing the migration store is being formatted or repartitioned disk either outside of Windows Setup or during Windows Setup.

## Understanding a hard-link migration

The hard-link migration store is created using the command-line option, `/hardlink`, and is equivalent to other migration-store types. However, it differs in that hard links are utilized to keep files stored on the source computer during the migration. Keeping the files in place on the source computer eliminates the redundant work of duplicating files. It also enables the performance benefits and reduction in disk utilization that define this scenario.

When a hard link is created, an existing file is given one more path. For instance, a hard link to `c:\file1.txt` can be created called `c:\hard link\myFile.txt`. These two paths relate to the same file. If `c:\file1.txt` is opened, then changes made to the file followed by the file being saved, those changes are seen when `c:\hard link\myFile.txt` is opened. If `c:\file1.txt` is deleted, the file still exists on the computer as `c:\hardlink\myFile.txt`. Both references to the file must be deleted in order to delete the file.

> [!NOTE]
>
>A hard link can only be created for a file on the same volume. If a hard-link migration store is copied to another drive or external device, the files, and not the links, are copied, as in a non-compressed migration-store scenario.

For more information about hard links, see [Hard Links and Junctions](/windows/win32/fileio/hard-links-and-junctions)

In most aspects, a hard-link migration store is identical to an uncompressed migration store. The hard-link migration store is located as specified by the **ScanState.exe** command-line tool. The contents of the store can be viewed by using Windows Explorer. Once created, it can be deleted or copied to another location without changing user state. Restoring a hard-link migration store is similar to restoring any other migration store. However, as with creating the store, the same hard-link functionality is used to keep files in-place.

As a best practice, delete the hard-link migration store after confirming that the files are successfully migrated via the **LoadState** tool. Since **LoadState** creates new paths to the files on the new installation of a Windows operating system, deleting the hard links in the migration store only deletes one path to the files. It doesn't delete the actual files or the paths to them from the new operating system.

> [!IMPORTANT]
>
> Using the `/c` option forces the **LoadState** tool to continue applying files when non-fatal errors occur. If the `/c` option is used, verify that no errors are reported in the logs before deleting the hard-link migration store in order to avoid data loss.

Keeping the hard-link migration store can result in extra disk space being consumed or problems with some applications for the following reasons:

- Applications reporting file-system statistics, for example, space used and free space, might incorrectly report these statistics while the hard-link migration store is present. The file might be reported twice because of the two paths that reference that file.

- A hard link might lose its connection to the original file. Some applications save changes to a file by creating a temporary file and then renaming the original to a backup filename. The path that wasn't used to open the file in this application continues to refer to the unmodified file. The unmodified file that isn't in use is taking up more disk space. The hard-link migration store should be created just before the migration is performed. Once the store is created, applications shouldn't be used in order to make sure the latest versions of all files are being migrating.

- Editing the file by using different paths simultaneously might result in data corruption.

> [!IMPORTANT]
>
> The read-only file attribute on migrated files is lost when the hard-link migration store is deleted. This is due to a limitation in NTFS file system hard links.

## Hard-link migration scenario

For example, an organization decides to deploy the latest supported version of Windows on all of their computers. Each employee keeps the same computer, but the operating system on each computer will be updated.

1. An administrator runs the **ScanState** command-line tool on each computer, specifying the `/hardlink` command-line option. The **ScanState** tool saves the user state to a hard-link migration store on each computer, improving performance by reducing file duplication, except in certain specific instances.

    > [!NOTE]
    >
    > As a best practice, Microsoft recommends not to create the hard-link migration store until just before the migration is performed in order to migrate the latest versions of files. Software applications shouldn't be used on the computer after creating the migration store until files finish migrating with **LoadState**.

1. On each computer, an administrator installs the organization's standard operating environment (SOE), which includes the latest supported version of Windows and other applications the organization currently uses.

1. An administrator runs the **LoadState** command-line tool on each computer. The **LoadState** tool restores user state back on each computer.

> [!NOTE]
>
> During the update of a domain-joined computer, the profiles of users whose SID cannot be resolved will not be migrated. When using a hard-link migration store, it could cause a data loss.

## Hard-link migration store details

This section provides details about hard-link migration stores.

### Hard disk space

The `/hardlink` command-line option proceeds with creating the migration store only if there are 250 megabytes (MB) of free space on the hard disk. If every volume involved in the migration is formatted as NTFS, 250 MB should be enough space to ensure success for almost every hard-link migration, regardless on the size of the migration.

### Hard-link store size estimation

It isn't necessary to estimate the size of a hard-link migration store since a hard-link migration store on an NTFS volume is relatively small and require much less incremental space than other store options. Estimating the size of a migration store is only useful in scenarios where the migration store is large. The only case where the local store can be large with hard-link migrations is:

- A non-NTFS file system exists on the system.
- The non-NTFS files system contains data that needs to be migrated.

Since NTFS is the default file system format for all currently supported versions of Windows, this situation is unusual.

### Migration store path on multiple volumes

Separate hard-link migration stores are created on each NTFS volume that contain data being migrated. In this scenario, the primary migration-store location is specified on the command line, and should be the operating-system volume. Migration stores with identical names and directory names are created on every volume containing data being migrated. For example:

  ```cmd
  ScanState.exe /hardlink c:\USMTMIG […]
  ```

Running this command on a system that contains the operating system on the C: drive and the user data on the D: drive generates migration stores in the following locations, assuming that both drives are NTFS:

`C:\USMTMIG\`

`D:\USMTMIG\`

The drive specified on the command line for the hard-link migration store is important, because it defines where the **master migration store** should be placed. The **master migration store** is the location where data migrating from non-NTFS volumes is stored. This volume must have enough space to contain all of the data that comes from non-NTFS volumes. As in other scenarios, if a migration store already exists at the specified path, the `/o` option must be used to overwrite the existing data in the store.

### Location modifications

Location modifications that redirect migrated content from one volume to a different volume have an adverse effect on the performance of a hard-link migration. Performance is affected because the migrating data that must cross system volumes can't remain in the hard-link migration store. They must be copied across the system volumes.

### Migrating Encrypting File System (EFS) certificates and files

To migrate Encrypting File System (EFS) files to a new installation of an operating system on the same volume of the computer, specify the `/efs:hardlink` option in the `ScanState.exe` command-line syntax.

If the EFS files are being restored to a different partition, the `/efs:copyraw` option should be used instead of the `/efs:hardlink` option. Hard links can only be created for files on the same volume. Moving the files to another partition during the migration requires a copy of the files to be created on the new partition. The `/efs:copyraw` option copies the files to the new partition in encrypted format.

For more information, see [Migrate EFS files and certificates](usmt-migrate-efs-files-and-certificates.md) and [Encrypted file options](usmt-scanstate-syntax.md#encrypted-file-options).

### Migrating locked files with the hard-link migration store

When an application or the operating system has a lock on a file, the file is handled differently when using a hard-link migration store.

Operating system locked files can't remain in place and must be copied into the hard-link migration store. As a result, selecting many operating-system files for migration significantly reduces performance during a hard-link migration. As a best practice, Microsoft recommends not migrating any files out of the `\Windows` directory, which minimizes performance-related issues.

Application locked files are treated the same in hard-link migrations as in other scenarios when the volume shadow-copy service isn't being utilized. The volume shadow-copy service can't be used with hard-link migrations. However, by modifying the new **\<HardLinkStoreControl\>** section in the `Config.xml` file, it's possible to enable the migration of files locked by an application.

> [!IMPORTANT]
>
> There are some scenarios in which modifying the **\<HardLinkStoreControl\>** section in the `Config.xml` file makes it more difficult to delete a hard-link migration store. In these scenarios, `UsmtUtils.exe` must be used to schedule the migration store for deletion on the next restart.

## XML elements in the Config.xml file

A new section in the `Config.xml` file allows optional configuration of some of the hard-link migration behavior introduced with the `/HardLink` option.

| Element | Description |
|--- |--- |
| **\<Policies\>** | This element contains elements that describe the policies that USMT follows while creating a migration store. |
| **\<HardLinkStoreControl\>** | This element contains elements that describe how to handle files during the creation of a hard link migration store. |
| **\<fileLocked\>** | This element contains elements that describe how to handle files that are locked for editing. |
| **\<createHardLink\>** | This element defines a standard MigXML pattern that describes file paths where hard links should be created, even if the file is locked for editing by another application.<br><br>Syntax: `<createHardLink>` [pattern] `</createHardLink>` |
| **\<errorHardLink\>** | This element defines a standard MigXML pattern that describes file paths where hard links shouldn't be created, if the file is locked for editing by another application.<br><br>`<errorHardLink>` [pattern] `</errorHardLink>` |

> [!IMPORTANT]
>
> The `/nocompress` option must be used with the `/HardLink` option.

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

- [Plan the migration](usmt-plan-your-migration.md).

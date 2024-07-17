---
title: Estimate Migration Store Size
description: Estimate the disk space requirement for a migration so that the User State Migration Tool (USMT) can be used.
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

# Estimate migration store size

The disk space requirements for a migration are dependent on the size of the migration store and the type of migration. The amount of disk space needed for computers in the organization can be estimated based on information about the organization's infrastructure. Disk space requirements can also be calculated using the **ScanState** tool.

## Hard disk space requirements

- **Store**: For non-hard-link migrations, ensure that there's enough available disk space at the location where the store is saved. The store contains the data being migrated. The store can be saved to another partition, an external storage device such as a USB flash drive, or a server. For more information, see [Choose a Migration Store Type](usmt-choose-migration-store-type.md).

- **Source Computer**: The source computer needs enough available space for the following items:

  - **E250 megabytes (MB) minimum of hard disk space**: Space is needed to support the User State Migration Tool (USMT) operations, for example, growth in the page file. If every volume involved in the migration is formatted as NTFS, 250 MB should be enough space to ensure success for almost every hard-link migration, regardless of the size of the migration. The USMT tool that captures data (ScanState) doesn't create the migration store if 250 MB of disk space isn't available.

  - **Temporary space for USMT to run**: Extra disk space is required for the USMT tools to operate. This disk space requirement doesn't include the minimum 250 MB needed to create the migration store. The amount of temporary space required can be calculated using the **ScanState** tool.

  - **Hard-link migration store**: It isn't necessary to estimate the size of a hard-link migration store. The only case where the hard-link store can be large is when non-NTFS file volumes exist on the system and those volumes contain data being migrated.

- **Destination computer**: The destination computer needs enough available space for the following components:

  - **Operating system**.

  - **Applications**.

  - **Data being migrated**: Data being migrated includes files and registry information.

  - **Temporary space for USMT to run**: Extra disk space is required for the USMT tools to operate. The amount of temporary space required can be calculated using the **ScanState** tool.

## Calculate disk space requirements using the **ScanState** tool

The **ScanState** tool can be used to calculate the disk space requirements for a particular compressed or uncompressed migration. It isn't necessary to estimate the migration store size for a hard-link migration since this method doesn't create a separate migration store. The **ScanState** tool provides disk space requirements for the state of the computer at the time the tool is run. The state of the computer might change during day-to-day use. For this reason, use the calculations as an estimate when planning the migration.

To run the **ScanState** tool on the source computer with USMT installed:

1. Open a command prompt with administrator privileges.

1. Navigate to the USMT tools. For example, enter:

    ```cmd
    cd /d "C:\Program Files (x86)\Windows Kits\10.0\Assessment and Deployment Kit\User State Migration Tool\<architecture>"
    ```

    where *\<architecture\>* is x86 or amd64.

1. Run the **ScanState** tool to generate an XML report of the space requirements. At the command prompt, enter:

    ```cmd
    ScanState.exe <StorePath> /p:<path to a file>
    ```

    Where:

    - *\<StorePath\>* is a path to a directory where the migration store is saved.
    - *\<path to a file\>* is the path and filename where the XML report for space requirements is saved.

    For example:

    ```cmd
    ScanState.exe c:\store /p:c:\spaceRequirements.xml
    ```

    Although a migration store isn't created by running this command, the *\<StorePath\>* is still a required parameter.

The **ScanState** tool also allows estimation of disk space requirements based on a customized migration. For example, the **Documents** folder might need to be migrated to the destination computer. This condition can be specified in a configuration file when the **ScanState** tool is run. For more information, see [Customize USMT XML files](usmt-customize-xml-files.md).

> [!NOTE]
>
> To preserve the functionality of existing applications or scripts that require the previous behavior of USMT, the `/p` option is still available in USMT without having to specify the path to a file. For more information, see [Monitoring Options](usmt-scanstate-syntax.md#monitoring-options).

The space requirements report provides two elements, \<**storeSize**\> and \<**temporarySpace**\>. The \<**temporarySpace**\> value shows the disk space, in bytes, that USMT uses to operate during the migration but it doesn't include the minimum 250 MB needed to support USMT. The \<**storeSize**\> value shows the disk space, in bytes, required to host the migration store contents on both the source and destination computers. The following example shows a report generated using `/p:`*\<path to a file\>*.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<PreMigration>
  <storeSize>
    <size clusterSize="4096">11010592768</size>
  </storeSize>
  <temporarySpace>
    <size>58189144</size>
  </temporarySpace>
</PreMigration>
```

Additionally, USMT performs a compliance check for a required minimum of 250 MB of available disk space and doesn't create a store if the compliance check fails.

## Estimating migration store size

Determine how much space is needed to store the migrated data. Calculations should be based on the volume of e-mail, personal documents, and system settings for each user. The best way to estimate the required space is to survey several computers to arrive at an average for the size of the store that is needed.

The amount of space that is required in the store varies and depends on the local storage strategies the organization uses. For example, one key element that determines the size of migration data sets is e-mail storage. If e-mail is stored centrally, data sets are smaller. If e-mail is stored locally, such as offline-storage files, data sets are larger. Mobile users typically have larger data sets than workstation users. Tests should be performed and the network inventoried to determine the average data set size in the organization.

> [!NOTE]
>
> A space-estimate file (`Usmtsize.txt`) can be created to estimate the size of the store by using the legacy `/p` command-line option.

When trying to determine how much disk space is needed, consider the following issues:

- **E-mail**: If users deal with a large volume of e-mail or keep e-mail on their local computers instead of on a mail server, the e-mail can take up as much disk space as all other user files combined. Prior to migrating user data, make sure that users who store e-mail locally synchronize their inboxes with their mail server.

- **User documents**: Frequently, all of a user's documents fit into less than 50 MB of space, depending on the types of files involved. This estimate assumes typical office work, such as word-processing documents and spreadsheets. This estimate can vary substantially based on the types of documents that the organization uses. For example, an architectural firm that predominantly uses computer-aided design (CAD) files needs more space than a law firm that primarily uses word-processing documents. Documents that users store on file servers through mechanisms such as Folder Redirection don't need to be migrated, as long as users will have access to these locations after the migration.

- **User system settings**: Five megabytes is adequate space to save the registry settings. This requirement can fluctuate, however, based on the number of applications that are installed. It's rare, however, for the user-specific portion of the registry to exceed 5 MB.

## Related articles

- [Common migration scenarios](usmt-common-migration-scenarios.md).

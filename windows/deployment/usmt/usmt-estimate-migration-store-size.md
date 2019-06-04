---
title: Estimate Migration Store Size (Windows 10)
description: Estimate Migration Store Size
ms.assetid: cfb9062b-7a2a-467a-a24e-0b31ce830093
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: lomayor
ms.date: 04/19/2017
ms.topic: article
---

# Estimate Migration Store Size


The disk space requirements for a migration are dependent on the size of the migration store and the type of migration. You can estimate the amount of disk space needed for computers in your organization based on information about your organization's infrastructure. You can also calculate the disk space requirements using the ScanState tool.

## In This Topic


-   [Hard Disk Space Requirements](#bkmk-spacereqs). Describes the disk space requirements for the migration store and other considerations on the source and destination computers.

-   [Calculate Disk Space Requirements Using the ScanState Tool](#bkmk-calcdiskspace). Describes how to use the ScanState tool to determine how big the migration store will be on a particular computer.

-   [Estimate Migration Store Size](#bkmk-estmigstoresize). Describes how to estimate the average size of migration stores for the computers in your organization, based on your infrastructure.

## <a href="" id="bkmk-spacereqs"></a>Hard Disk Space Requirements


-   **Store.** For non-hard-link migrations, you should ensure that there is enough available disk space at the location where you will save your store to contain the data being migrated. You can save your store to another partition, an external storage device such as a USB flash drive or a server. For more information, see [Choose a Migration Store Type](usmt-choose-migration-store-type.md).

-   **Source Computer.** The source computer needs enough available space for the following:

    -   [E250 megabytes (MB) minimum of hard disk space.](#bkmk-estmigstoresize) Space is needed to support the User State Migration Tool (USMT) 10.0 operations, for example, growth in the page file. Provided that every volume involved in the migration is formatted as NTFS, 250 MB should be enough space to ensure success for almost every hard-link migration, regardless of the size of the migration. The USMT tools will not create the migration store if 250 MB of disk space is not available.

    -   [Temporary space for USMT to run.](#bkmk-estmigstoresize) Additional disk space for the USMT tools to operate is required. This does not include the minimum 250 MB needed to create the migration store. The amount of temporary space required can be calculated using the ScanState tool.

    -   [Hard-link migration store.](#bkmk-estmigstoresize) It is not necessary to estimate the size of a hard-link migration store. The only case where the hard-link store can be quite large is when non-NTFS file systems exist on the system and contain data being migrated.

-   [Destination computer.](#bkmk-estmigstoresize) The destination computer needs enough available space for the following:

    -   [Operating system.](#bkmk-estmigstoresize)

    -   [Applications.](#bkmk-estmigstoresize)

    -   [Data being migrated.](#bkmk-estmigstoresize) It is important to consider that in addition to the files being migrated, registry information will also require hard disk space for storage.

    -   [Temporary space for USMT to run.](#bkmk-estmigstoresize) Additional disk space for the USMT tools to operate is required. The amount of temporary space required can be calculated using the ScanState tool.

## <a href="" id="bkmk-calcdiskspace"></a>Calculate Disk Space Requirements using the ScanState Tool


You can use the ScanState tool to calculate the disk space requirements for a particular compressed or uncompressed migration. It is not necessary to estimate the migration store size for a hard-link migration since this method does not create a separate migration store. The ScanState tool provides disk space requirements for the state of the computer at the time the tool is run. The state of the computer may change during day to day use so it is recommended that you use the calculations as an estimate when planning your migration.

**To run the ScanState tool on the source computer with USMT installed,**

1.  Open a command prompt with administrator privileges.

2.  Navigate to the USMT tools. For example, type

    ``` syntax
    cd /d "C:\Program Files (x86)\Windows Kits\8.0\Assessment and Deployment Kit\User State Migration Tool\<architecture>"
    ```

    Where *&lt;architecture&gt;* is x86 or amd64.

3.  Run the **ScanState** tool to generate an XML report of the space requirements. At the command prompt, type

    ``` syntax
    ScanState.exe <StorePath> /p:<path to a file>
    ```

    Where *&lt;StorePath&gt;* is a path to a directory where the migration store will be saved and *&lt;path to a file&gt;* is the path and filename where the XML report for space requirements will be saved. For example,

    ``` syntax
    ScanState.exe c:\store /p:c:\spaceRequirements.xml
    ```

    The migration store will not be created by running this command, but `StorePath` is a required parameter.

The ScanState tool also allows you to estimate disk space requirements based on a customized migration. For example, you might not want to migrate the My Documents folder to the destination computer. You can specify this in a configuration file when you run the ScanState tool. For more information, see [Customize USMT XML Files](usmt-customize-xml-files.md).

**Note**  
To preserve the functionality of existing applications or scripts that require the previous behavior of USMT, the **/p** option, without specifying *&lt;path to a file&gt;* is still available in USMT.

 

The space requirements report provides two elements, &lt;**storeSize**&gt; and &lt;**temporarySpace**&gt;. The &lt;**temporarySpace**&gt; value shows the disk space, in bytes, that USMT uses to operate during the migration—this does not include the minimum 250 MB needed to support USMT. The &lt;**storeSize**&gt; value shows the disk space, in bytes, required to host the migration store contents on both the source and destination computers. The following example shows a report generated using **/p:***&lt;path to a file&gt;*.

``` syntax
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

Additionally, USMT performs a compliance check for a required minimum of 250 MB of available disk space and will not create a store if the compliance check fails.

## <a href="" id="bkmk-estmigstoresize"></a>Estimate Migration Store Size


Determine how much space you will need to store the migrated data. You should base your calculations on the volume of e-mail, personal documents, and system settings for each user. The best way to estimate these is to survey several computers to arrive at an average for the size of the store that you will need.

The amount of space that is required in the store will vary, depending on the local storage strategies your organization uses. For example, one key element that determines the size of migration data sets is e-mail storage. If e-mail is stored centrally, data sets will be smaller. If e-mail is stored locally, such as offline-storage files, data sets will be larger. Mobile users will typically have larger data sets than workstation users. You should perform tests and inventory the network to determine the average data set size in your organization.

**Note**  
You can create a space-estimate file (Usmtsize.txt), by using the legacy **/p** command-line option to estimate the size of the store.

 

When trying to determine how much disk space you will need, consider the following issues:

-   **E-mail** : If users deal with a large volume of e-mail or keep e-mail on their local computers instead of on a mail server, the e-mail can take up as much disk space as all other user files combined. Prior to migrating user data, make sure that users who store e-mail locally synchronize their inboxes with their mail server.

-   **User documents**: Frequently, all of a user's documents fit into less than 50 MB of space, depending on the types of files involved. This estimate assumes typical office work, such as word-processing documents and spreadsheets. This estimate can vary substantially based on the types of documents that your organization uses. For example, an architectural firm that predominantly uses computer-aided design (CAD) files needs much more space than a law firm that primarily uses word-processing documents. You do not need to migrate the documents that users store on file servers through mechanisms such as Folder Redirection, as long as users will have access to these locations after the migration.

-   **User system settings** Five megabytes is usually adequate space to save the registry settings. This requirement can fluctuate, however, based on the number of applications that have been installed. It is rare, however, for the user-specific portion of the registry to exceed 5 MB.

## Related topics


[Common Migration Scenarios](usmt-common-migration-scenarios.md)

 

 






---
title: Migrate EFS Files and Certificates (Windows 10)
description: Migrate EFS Files and Certificates
ms.assetid: 7f19a753-ec45-4433-b297-cc30f16fdee1
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

# Migrate EFS Files and Certificates


This topic describes how to migrate Encrypting File System (EFS) certificates. For more information about the **/efs** For options, see [ScanState Syntax](usmt-scanstate-syntax.md).

## To Migrate EFS Files and Certificates


Encrypting File System (EFS) certificates will be migrated automatically. However, by default, the User State Migration Tool (USMT) 10.0 fails if an encrypted file is found (unless you specify an **/efs** option). Therefore, you must specify **/efs:abort | skip | decryptcopy | copyraw | hardlink** with the ScanState command to migrate the encrypted files. Then, when you run the LoadState command on the destination computer, the encrypted file and the EFS certificate will be automatically migrated.

**Note**  
The **/efs** options are not used with the LoadState command.

 

Before using the ScanState tool for a migration that includes encrypted files and EFS certificates, you must ensure that all files in an encrypted folder are encrypted as well or remove the encryption attribute from folders that contain unencrypted files. If the encryption attribute has been removed from a file but not from the parent folder, the file will be encrypted during the migration using the credentials of the account used to run the LoadState tool.

You can run the Cipher tool at a Windows command prompt to review and change encryption settings on files and folders. For example, to remove encryption from a folder, at a command prompt type:

``` syntax
Cipher /D /S:<PATH>
```

Where *&lt;Path&gt;* is the full path of the topmost parent directory where the encryption attribute is set.

## Related topics


[What Does USMT Migrate?](usmt-what-does-usmt-migrate.md)

[Identify File Types, Files, and Folders](usmt-identify-file-types-files-and-folders.md)

 

 






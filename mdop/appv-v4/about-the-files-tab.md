---
title: About the Files Tab
description: About the Files Tab
author: dansimp
ms.assetid: 3c20e720-4b0f-465b-b7c4-3013dae1c815
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# About the Files Tab


The **Files** tab displays the complete list of files that are included in a sequenced application package. The left pane displays, in a standard file browse format, the complete list of files in the package that was created during the application sequencing. These files include the package root directory (the directory you specified during the application installation phase), the Virtual File System (VFS) folder, and the virtual environment files. The right pane displays the file name, file attributes, and the Sequencer attributes.

## File Name and Short Name


<a href="" id="file-name"></a>**File Name**  
The name of the file is in the left pane. The files displayed in the left pane are created during sequencing.

<a href="" id="short-name"></a>**Short Name**  
This is the name of a file selected in the left pane, written in the 8.3 format naming convention.

## File Attributes


<a href="" id="file-size"></a>**File Size**  
The size of the file in bytes.

<a href="" id="file-version"></a>**File Version**  
The version of the selected file.

<a href="" id="date-created"></a>**Date Created**  
The date and time the selected file was created.

<a href="" id="date-modified"></a>**Date Modified**  
The date and time the selected file was last modified.

<a href="" id="file-id"></a>**File ID**  
The file GUID.

## Sequencer Attributes


<a href="" id="user-data"></a>**User Data**  
Select this attribute to specify that an application must retain the information of an individual user.

<a href="" id="application-data"></a>**Application Data**  
Select this attribute to specify that an application must retain the general information of a group of users.

<a href="" id="override"></a>**Override**  
When selected, the Application Virtualization Desktop Client overwrites the corresponding file when the sequenced application package is upgraded and streamed to the client. If this check box is not selected, the client determines whether or not to overwrite the selected file.

## Related topics


[How to Modify the Files Included in a Package](how-to-modify-the-files-included-in-a-package.md)

[Sequencer Console](sequencer-console.md)

 

 






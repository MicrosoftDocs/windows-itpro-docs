---
title: App-V 4.6 SP1 Release Notes
description: App-V 4.6 SP1 Release Notes
author: dansimp
ms.assetid: aeb6784a-864a-4f4e-976b-40c34dcfd8d6
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# App-V 4.6 SP1 Release Notes


To search these Release Notes, press CTRL+F.

**Important**  
Read these Release Notes thoroughly before you install the Microsoft Application Virtualization (App-V) Management System. These Release Notes contain information that helps you successfully install Application Virtualization (App-V) 4.6 SP1. This document contains information that is not available in the product documentation. If there is a difference between these Release Notes and other App-V documentation, the latest change should be considered authoritative.

 

## Protect Against Security Vulnerabilities and Viruses


To help protect against security vulnerabilities and viruses, it is important to install the latest available security updates for any new software being installed. For more information, see the [Microsoft Security website](https://go.microsoft.com/fwlink/?LinkId=3482) (https://go.microsoft.com/fwlink/?LinkId=3482).

## Known Issues with Application Virtualization 4.6 SP1


This section provides the most up-to-date information about issues with Microsoft Application Virtualization (App-V) 4.6 SP1. These issues do not appear in the product documentation and in some cases might contradict existing product documentation. When it is possible, these issues will be addressed in later releases.

### Path from SPRT is lost if it does not end in forward slash ( / )

When the path in an HREF in a project template does not end with a forward slash (**/**), the generated HREF does not include the path. This occurs when the user manually manipulates the **.sprt** file. If you use the sequencer it always adds the forward slash (**/**) after the path.

WORKAROUND Make sure that the HREF has a trailing forward slash (**/**).

### User folder name do not correspond to the package name

Folders that contain user and global .pkg files no longer include the package name. Previously, the App-V client used to use the package root folder 8.3 short name as part of the folder name. This lets you easily identify it. When you use the App-V 4.6 SP1 sequencer, the package root folder 8.3 short names are now random strings. This makes it difficult to identify the folders that contain the package’s **.pkg** files on the computer that is running the App-V client.

WORKAROUND Use one of the following methods to more easily identify these package folders:

1.  When you create the package by using the Sequencer, specify a folder name that follows the 8.3 naming convention for the primary application folder. This name will then be used as part of the user folder name as was the case in App-V 4.6.

2.  The .sprj file now contains a tag that displays the string that is used as the beginning of the user folder name. You can use the **SHORTNAME** element of the **PACKAGEROOTFOLDER** element to determine the name.

### Running App-V 4.6 SP1 on computers that have more than 64 processors

When you run App-V 4.6 SP1 on computers that have more than 64 processors installed, the App-V client fails.

WORKAROUND None. This configuration is not supported. You must run App-V 4.6 SP1on computers that have fewer than 64 processors.

### Application Virtualization 4.6 SP1 update is not offered on all locales that use Microsoft Update

When you use Microsoft Update, the update for App-V 4.6 SP1 is not available for the following language locales:

-   Kazakh

-   Hindi

-   Serbian-Cyrillic

WORKAROUND If you are using Microsoft Windows Server Update Services (WSUS) use the English version of the update or download the update from the Microsoft Update Catalog.

### After expanding the parent package, you cannot sequence a plug-in with side by side components

When you expand a parent package by using **Tools** / **Expand Package to Local System** in the App-V Sequencer console and you sequence a plug-in with side by side components, an installation error is returned. For example:

-   **HRESULT 0x80073712**

This is caused when the sequencer writes the side-by-side component to the registry but does not clear the value for the following registry key:

HKEY\_LOCAL\_MACHINE\\COMPONENTS\\StoreDirty

WORKAROUND After expanding the parent package on the computer that is running the sequencer, you have to delete the value for the following registry key:

HKEY\_LOCAL\_MACHINE\\COMPONENTS\\StoreDirty

After you have deleted the value, sequence the plug-in.

### Release Notes Copyright Information

This document is provided “as-is”. Information and views expressed in this document, such as URL and other Internet website references, may change without notice. You bear the risk of using it.

Some examples depicted herein are provided for illustration only and are fictitious. No real association or connection is intended or should be inferred.

This document does not provide you with any legal rights to any intellectual property in any Microsoft product. You may copy and use this document for your internal, reference purposes. You may modify this document for your internal, reference purposes.



Microsoft, Active Directory, ActiveSync, ActiveX, Excel, SQL Server, Windows, Windows PowerShell, Windows Server, and Windows Vista are trademarks of the Microsoft group of companies.

All other trademarks are property of their respective owners.

 

 






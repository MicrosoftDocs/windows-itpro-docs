---
title: Searching for Fixed Applications in Compatibility Administrator (Windows 10)
description: With the search functionality in Compatibility Administrator, you can locate specific executable (.exe) files with previously applied compatibility fixes, compatibility modes, or AppHelp messages.
ms.assetid: 1051a2dc-0362-43a4-8ae8-07dae39b1cb8
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: appcompat
ms.sitesec: library
author: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Searching for Fixed Applications in Compatibility Administrator


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

With the search functionality in Compatibility Administrator, you can locate specific executable (.exe) files with previously applied compatibility fixes, compatibility modes, or AppHelp messages. This is particularly useful if you are trying to identify applications with a specific compatibility fix or identifying which fixes are applied to a specific application.

The **Query Compatibility Databases** tool provides additional search options. For more information, see [Searching for Installed Compatibility Fixes with the Query Tool in Compatibility Administrator](searching-for-installed-compatibility-fixes-with-the-query-tool-in-compatibility-administrator.md).

## Searching for Previously Applied Compatibility Fixes


**Important**  
You must perform your search with the correct version of the Compatibility Administrator tool. If you are searching for a 32-bit custom database, you must use the 32-bit version of Compatibility Administrator. If you are searching for a 64-bit custom database, you must use the 64-bit version of Compatibility Administrator.

 

**To search for previous fixes**

1.  On the Compatibility Administrator toolbar, click **Search**.

2.  Click **Browse** to locate the directory location to search for .exe files.

3.  Select at least one check box from **Entries with Compatibility Fixes**, **Entries with Compatibility Modes**, or **Entries with AppHelp**.

4.  Click **Find Now**.

    The query runs, returning your results in the lower pane.

## Viewing Your Query Results


Your query results display the affected files, the application location, the application name, the type of compatibility fix, and the custom database that provided the fix.

## Exporting Your Query Results


You can export your search results to a text (.txt) file for later review or archival.

**To export your search results**

1.  In the **Search for Fixes** dialog box, click **Export**.

2.  Browse to the location where you want to store your search result file, and then click **Save**.

## Related topics
[Compatibility Administrator User's Guide](compatibility-administrator-users-guide.md)

 

 






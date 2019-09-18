---
title: User State Migration Tool (USMT) Technical Reference (Windows 10)
description: The User State Migration Tool (USMT) is included with the Windows Assessment and Deployment Kit (Windows ADK) for Windows 10. USMT provides a highly customizable user-profile migration experience for IT professionals.
ms.assetid: f90bf58b-5529-4520-a9f8-b6cb4e4d3add
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

# User State Migration Tool (USMT) Technical Reference
The User State Migration Tool (USMT) is included with the Windows Assessment and Deployment Kit (Windows ADK) for Windows 10. USMT provides a highly customizable user-profile migration experience for IT professionals.

Download the Windows ADK [from this website](https://go.microsoft.com/fwlink/p/?LinkID=526803).

**USMT support for Microsoft Office**
>USMT in the Windows ADK for Windows 10, version 1511 (10.1.10586.0) supports migration of user settings for installations of Microsoft Office 2003, 2007, 2010, and 2013.<BR>
>USMT in the Windows ADK for Windows 10, version 1607 (10.1.14393.0) adds support for migration of user settings for installations of Microsoft Office 2016.

USMT includes three command-line tools:

-   ScanState.exe<BR>
-   LoadState.exe<BR>
-   UsmtUtils.exe

USMT also includes a set of three modifiable .xml files:

-   MigApp.xml<BR>
-   MigDocs.xml<BR>
-   MigUser.xml

Additionally, you can create custom .xml files to support your migration needs. You can also create a Config.xml file to specify files or settings to exclude from the migration.

USMT tools can be used on several versions of Windows operating systems, for more information, see [USMT Requirements](usmt-requirements.md). For more information about previous releases of the USMT tools, see [User State Migration Tool (USMT) 4.0 User’s Guide](https://go.microsoft.com/fwlink/p/?LinkId=246564).

## In This Section
|Topic |Description|
|------|-----------|
|[User State Migration Tool (USMT) Overview Topics](usmt-topics.md)|Describes what’s new in USMT, how to get started with USMT, and the benefits and limitations of using USMT.|
|[User State Migration Tool (USMT) How-to topics](usmt-how-to.md)|Includes step-by-step instructions for using USMT, as well as how-to topics for conducting tasks in USMT.|
|[User State Migration Tool (USMT) Troubleshooting](usmt-troubleshooting.md)|Provides answers to frequently asked questions and common issues in USMT, as well as a reference for return codes used in USMT.|
|[User State Migration Toolkit (USMT) Reference](usmt-reference.md)|Includes reference information for migration planning, migration best practices, command-line syntax, using XML, and requirements for using USMT.|

## Related topics
- [Windows Assessment and Deployment Kit](https://msdn.microsoft.com/library/windows/hardware/dn247001.aspx)

 

 






---
title: User State Migration Tool (USMT) Technical Reference (Windows 10)
description: The User State Migration Tool (USMT) provides a highly customizable user-profile migration experience for IT professionals.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 11/01/2022
ms.topic: article
ms.technology: itpro-deploy
---

# User State Migration Tool (USMT) technical reference

The User State Migration Tool (USMT) is included with the Windows Assessment and Deployment Kit (Windows ADK) for Windows 10. USMT provides a highly customizable user-profile migration experience for IT professionals.

Download the Windows ADK [from this website](/windows-hardware/get-started/adk-install).

## USMT support for Microsoft Office

- USMT in the Windows ADK for Windows 10, version 1511 (10.1.10586.0) supports migration of user settings for installations of Microsoft Office 2003, 2007, 2010, and 2013.

- USMT in the Windows ADK for Windows 10, version 1607 (10.1.14393.0) adds support for migration of user settings for installations of Microsoft Office 2016.

USMT includes three command-line tools:

- ScanState.exe
- LoadState.exe
- UsmtUtils.exe

USMT also includes a set of three modifiable .xml files:

- MigApp.xml
- MigDocs.xml
- MigUser.xml

Additionally, you can create custom .xml files to support your migration needs. You can also create a `Config.xml` file to specify files or settings to exclude from the migration.

USMT tools can be used on several versions of Windows operating systems, for more information, see [USMT requirements](usmt-requirements.md). For more information about previous releases of the USMT tools, see [User State Migration Tool (USMT) overview](/previous-versions/windows/hh825227(v=win.10)).

## In this section

| Link | Description |
|------ |----------- |
|[User State Migration Tool (USMT) overview topics](usmt-topics.md)|Describes what's new in USMT, how to get started with USMT, and the benefits and limitations of using USMT.|
|[User State Migration Tool (USMT) how-to topics](usmt-how-to.md)|Includes step-by-step instructions for using USMT and how-to topics for conducting tasks in USMT.|
|[User State Migration Tool (USMT) troubleshooting](usmt-troubleshooting.md)|Provides answers to frequently asked questions and common issues in USMT and a reference for return codes used in USMT.|
|[User State Migration Toolkit (USMT) reference](usmt-reference.md)|Includes reference information for migration planning, migration best practices, command-line syntax, using XML, and requirements for using USMT.|

## Related articles

- [Windows Assessment and Deployment Kit](/previous-versions/windows/it-pro/windows-8.1-and-8/dn247001(v=win.10))

---
title: User State Migration Tool (USMT) Technical Reference
description: The User State Migration Tool (USMT) provides a highly customizable user-profile migration experience for IT professionals.
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

# User State Migration Tool (USMT) technical reference

The User State Migration Tool (USMT) is included with the Windows Assessment and Deployment Kit (Windows ADK). USMT provides a highly customizable user-profile migration experience for IT professionals.

The Windows ADK can be downloaded from the [Download and install the Windows ADK](/windows-hardware/get-started/adk-install) website.

USMT includes three command-line tools:

- ScanState.exe
- LoadState.exe
- UsmtUtils.exe

USMT also includes a set of three modifiable **.xml** files:

- MigApp.xml
- MigDocs.xml
- MigUser.xml

Additionally, custom **.xml** files can be created to support the organization's migration needs. A `Config.xml` file can also be created to specify files or settings to exclude from the migration.

USMT tools can be used on several versions of Windows operating systems. For more information, see [USMT requirements](usmt-requirements.md). For more information about previous releases of the USMT tools, see [User State Migration Tool (USMT) overview](/previous-versions/windows/hh825227(v=win.10)).

## USMT support for Microsoft Office

USMT in the currently supported versions of the Windows ADK supports migration of user settings for installations of Microsoft Office 2013 and 2016.

## In this section

| Link | Description |
|------ |----------- |
|[User State Migration Tool (USMT) overview articles](usmt-topics.md)|Describes what's new in USMT, how to get started with USMT, and the benefits and limitations of using USMT.|
|[User State Migration Tool (USMT) how-to articles](usmt-how-to.md)|Includes step-by-step instructions for using USMT and how-to articles for conducting tasks in USMT.|
|[User State Migration Tool (USMT) troubleshooting](usmt-troubleshooting.md)|Provides answers to frequently asked questions and common issues in USMT and a reference for return codes used in USMT.|
|[User State Migration Toolkit (USMT) reference](usmt-reference.md)|Includes reference information for migration planning, migration best practices, command-line syntax, using XML, and requirements for using USMT.|

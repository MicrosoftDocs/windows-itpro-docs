---
title: Using the Sdbinst.exe Command-Line Tool (Windows 10)
description: Learn how to deploy customized database (.sdb) files using the Sdbinst.exe Command-Line Tool. Review a list of command-line options.
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.date: 10/28/2022
ms.topic: conceptual
ms.subservice: itpro-deploy
---

# Using the Sdbinst.exe Command-Line Tool

**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2016
-   Windows Server 2012
-   Windows Server 2008 R2

Deploy your customized database (.sdb) files to other computers in your organization. That is, before your compatibility fixes, compatibility modes, and AppHelp messages are applied. You can deploy your customized database files in several ways. By using a logon script, by using Group Policy, or by performing file copy operations.

After you deploy and store the customized databases on each of your local computers, you must register the database files.
Until you register the database files, the operating system is unable to identify the available compatibility fixes when starting an application. 

## Command-Line Options for Deploying Customized Database Files

Sample output from the command `Sdbinst.exe /?` in an elevated CMD window:

```console
Microsoft Windows [Version 10.0.14393]
(c) 2016 Microsoft Corporation. All rights reserved.

C:\Windows\system32>Sdbinst.exe /?
Usage: Sdbinst.exe [-?] [-q] [-u] [-g] [-p] [-n[:WIN32|WIN64]] myfile.sdb | {guid} | "name"

    -? - print this help text.
    -p - Allow SDBs containing patches.
    -q - Quiet mode: prompts are auto-accepted.
    -u - Uninstall.
    -g {guid} - GUID of file (uninstall only).
    -n "name" - Internal name of file (uninstall only).

C:\Windows\system32>_
```

The command-line options use the following conventions:

Sdbinst.exe \[-?\] \[-p\] \[-q\] \[-u\] \[-g\] \[-u filepath\] \[-g *GUID*\] \[-n *"name"*\]

The following table describes the available command-line options.

|Option|Description|
|--- |--- |
|-?|Displays the Help for the Sdbinst.exe tool.<p>For example,<br>`sdbinst.exe -?`|
|-p|Allows SDBs' installation with Patches.<p>For example,<br>`sdbinst.exe -p C:\Windows\AppPatch\Myapp.sdb`|
|-q|Does a silent installation with no visible window, status, or warning information. Fatal errors appear only in Event Viewer (Eventvwr.exe).<p>For example,<br>`sdbinst.exe -q`|
|-u *filepath*|Does an uninstallation of the specified database.<p>For example,<br>`sdbinst.exe -u C:\example.sdb`|
|-g *GUID*|Specifies the customized database to uninstall by a globally unique identifier (GUID).<p>For example,<br>`sdbinst.exe -g 6586cd8f-edc9-4ea8-ad94-afabea7f62e3`|
|-n *"name"*|Specifies the customized database to uninstall by file name.<p>For example,<br>`sdbinst.exe -n "My_Database"`|

## Related articles

[Compatibility Administrator User's Guide](compatibility-administrator-users-guide.md)
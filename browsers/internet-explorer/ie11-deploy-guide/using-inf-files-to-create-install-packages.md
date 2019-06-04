---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: How to use Setup Information (.inf) files to create installation packages.
author: lomayor
ms.prod: ie11
ms.assetid: 04fa2ba8-8d84-4af6-ab99-77e4f1961b0e
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: Using Setup Information (.inf) files to create packages (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Using Setup Information (.inf) files to create install packages
IEAK 11 uses Setup information (.inf) files to provide uninstallation instructions. Uninstallation instructions let your employees remove components, like files, registry entries, or shortcuts, through the **Uninstall or change a program** box. For details about .inf files, see [INF File Sections and Directives](https://go.microsoft.com/fwlink/p/?LinkId=327959).

 **To add uninstallation instructions to the .inf files**

-   Open the Registry Editor (regedit.exe) and add these registry keys:
```
HKLM,SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\app-name,"DisplayName",,"description"
HKLM,SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\app-name,"UninstallString",,"command-line"
```
Where **"description"** is the name that shows up in the **Uninstall or change a program** box and **"command-line"** is the command that runs after the component is picked.
<p>**Note**<br>
Make sure your script removes the uninstallation registry key, too. Otherwise, the component name will continue to show up in the **Uninstall or change a program**.

## Limitations
.Inf files have limitations:

-   You can't delete directories.

-   You can't use **RenFiles** to move a file to a different location, it only lets you rename a file in its existing location. For detailed information, see [INF RenFiles Directive](https://go.microsoft.com/fwlink/p/?LinkId=298508).

-   You can't use **CopyFiles** to copy a file to another place on your hard drive, it can only copy files from the source disk to the destination directory. For information, see [INF CopyFiles Directive](https://go.microsoft.com/fwlink/p/?LinkId=298510).

 

 




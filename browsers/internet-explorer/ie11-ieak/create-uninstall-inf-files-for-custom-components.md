---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: Use Setup information (.inf) files to uninstall custom components from your custom browser packages.
author: lomayor
ms.prod: ie11
ms.assetid: 8257aa41-58de-4339-81dd-9f2ffcc10a08
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: Use Setup information (.inf) files to uninstall custom components (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Use uninstallation .INF files to uninstall custom components
The Internet Explorer Administration Kit 11 (IEAK 11) uses Setup information (.inf) files to provide installation instructions for your custom browser packages. You can also use this file to uninstall your custom components by removing the files, registry entries, and shortcuts, and adding your custom component to the list of programs that can be uninstalled from **Uninstall or change a program**.

**To uninstall your custom components**

1.  Open the Registry Editor and add a new key and value to:<br>`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\app-name,"DisplayName",,"description"`<p>
Where *description* is the string that’s shown in the **Uninstall or change a program** box.

2.  Add another new key and value to:<br>`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\app-name,"UninstallString”",,"command-line"`<p>
Where *command-line* is the command that’s run when the component is picked from the **Uninstall or change a program** box.

Your uninstall script must also remove your key from under the **Uninstall** registry key, so that your component no longer appears in the **Uninstall or change a program** after uninstallation. You can also run just a section of an .inf file by using the Setupx.dll InstallHinfSection entry point. To make this work, your installation script must copy the .inf file to the Windows\Inf folder for your custom component.


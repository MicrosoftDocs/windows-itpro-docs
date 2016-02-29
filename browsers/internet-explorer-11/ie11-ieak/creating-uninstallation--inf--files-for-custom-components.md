---
title: 'Creating uninstallation (.INF) files for custom components'
description: Creating uninstallation (.INF) files for custom components
ms.assetid: 8257aa41-58de-4339-81dd-9f2ffcc10a08
ms.prod: IE11
ms.mktglfcycl: deploy
ms.sitesec: library
---

# Creating uninstallation (.INF) files for custom components


Internet Explorer Administration Kit 11 (IEAK 11) uses Setup information (.inf) files to provide installation instructions for your custom browser packages. You can also use this file to uninstall your custom components by removing the files, registry entries, and shortcuts, and adding your custom component to the list of programs that can be uninstalled from **Uninstall or change a program**.

![](images/wedge.gif)**To uninstall your custom components**

1.  Open the Registry Editor and add a new key and value to:

    HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\*app-name,”DisplayName”,,”description”*

    Where *description* is the string that’s shown in the **Uninstall or change a program** box.

2.  Add another new key and value to:

    HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\*app-name,” UninstallString”,,” command-line”*

    Where *command-line* is the command that’s run when the component is picked from the **Uninstall or change a program** box.

Your uninstall script must also remove your key from under the **Uninstall** registry key, so that your component no longer appears in the **Uninstall or change a program** after uninstallation. You can also run just a section of an .inf file by using the Setupx.dll InstallHinfSection entry point. To make this work, your installation script must copy the .inf file to the Windows\\Inf folder for your custom component.

 

 






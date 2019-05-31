---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: How to use the File Locations page in the IEAK 11 Customization Wizard to change the location of your install package and IE11 folders.
author: lomayor
ms.prod: ie11
ms.assetid: bd0620e1-0e07-4560-95ac-11888c2c389e
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: Use the File Locations page in the IEAK 11 Wizard (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Use the File Locations page in the IEAK 11 Wizard
The **File Locations** page of the Internet Explorer Customization Wizard 11 lets you change the location of your folders, including:

-   Where you’ll create and store your custom installation package.

-   Where you’ll download and store Internet Explorer 11.

**Important**<br>
You can create a custom installation package on your hard drive and move it to an Internet or intranet server, or you can create it directly on a server. If you create the package on a web server that’s running from your hard drive, use the path to the web server as the destination folder location. Whatever location you choose, it must be protected by appropriate access control lists (ACLs). If the location is not protected, the custom package may be tampered with.

**To use the File Locations page**

1.  Browse to the location where you’ll store your finished custom IE installation package and the related subfolders.<p>
**Note**<br>Subfolders are created for each language version, based on operating system and media type. For example, if your destination folder is `C:\Inetpub\Wwwroot\Cie\Dist`, then the English-language version is created as `C:\Inetpub\Wwwroot\Cie\Dist\Flat\Win32\En` subfolders.

2.  Click **Advanced Options**.<p>
The **Advanced Options** box opens and lets you change how the wizard downloads and gets files, and how it imports settings from your .ins file.

3.  Check the box letting IE Customization Wizard 11 look for the latest components, using Automatic Version Synchronization.<p>
This option lets the wizard connect to the IE **Downloads** page to look for updated versions of IE since you last ran the wizard.<p>
**Important**<br>
You must run Automatic Version Synchronization at least once to check for updated components.

4.  Browse to your .ins file location, and then click **Open**.<p>
By importing settings from an .ins file, you can re-use existing configurations. This saves you time if your packages have the same or similar settings.

5.  Browse to your component download folder.<p>
Automatic Version Synchronization automatically checks the component download folder to see if you have the latest version of IE. To keep this folder up-to-date, you shouldn’t change its location. However, if you want to keep both a previous version of IE and the latest version, we recommend you download the components to a different location.

6.  Click **OK** to close the **Advanced Options** box, and then click **Next** to go to the [Platform Selection](platform-selection-ieak11-wizard.md) page.

 

 






---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: How to use the Package Type Selection page in the IEAK 11 Customization Wizard to pick the media type you’ll use to distribute your custom package.
author: lomayor
ms.prod: ie11
ms.assetid: dd91f788-d05e-4f45-9fd5-d951abf04f2c
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: lomayor
title: Use the Package Type Selection page in the IEAK 11 Wizard (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Use the Package Type Selection page in the IEAK 11 Wizard
The **Package Type Selection** page of the Internet Explorer Customization Wizard 11 lets you pick which type of media you’ll use to distribute your custom installation package. You can pick more than one type, if you need it.

**Important**<br>You can't create a full installation package for deployment to Windows 10 computers. That option only works for computers running Windows 7 or Windows 8.1.

**To use the File Locations page**

1.  Check the **Full Installation Package** box if you’re going to build your package on, or move your package to, a local area network (LAN). This media package includes the Internet Explorer 11 installation files, and is named **IE11-Setup-Full.exe**, in the `<system_drive>\<destination_folder>\FLAT\<os_version>\<language_code>` folder.<p>-OR-<p> 

2.  Check the **Configuration-only package** box if you want to update an existing installation of IE11. This media package is named **IE11- Setup-Branding.exe**, in the `<system_drive>\<destination_folder>\BrndOnly\<os_version>\<language_code>` folder.<p>
You can distribute this file on any media format or server. It customizes the IE11 features without re-installing IE.<p>
**Important**<br>You can’t include custom components in a configuration-only package.

3.  Click **Next** to go to the [Feature Selection](feature-selection-ieak11-wizard.md) page or **Back** to go to the [Language Selection](language-selection-ieak11-wizard.md) page.

 

 






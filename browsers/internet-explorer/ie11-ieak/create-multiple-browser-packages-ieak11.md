---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: Steps to create multiple versions of your custom browser if you support more than 1 version of Windows, more than 1 language, or have different features in each package.
author: lomayor
ms.prod: ie11
ms.assetid: 4c5f3503-8c69-4691-ae97-1523091ab333
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: Create multiple versions of your custom package using IEAK 11 (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Create multiple versions of your custom package using IEAK 11
You'll need to create multiple versions of your custom browser package if:

-   You support more than 1 version of the Windows operating system.

-   You support more than 1 language.

-   You have custom installation packages with only minor differences. For example, having a different phone number or a different set of URLs in the **Favorites** folder.

The Internet Explorer Customization Wizard 11 stores your original settings in the Install.ins file and will show them each time you re-open the wizard. For more info about .ins files, see [Using Internet Settings (.INS) files with IEAK 11](using-internet-settings-ins-files.md).

**To create multiple versions of your browser package**

1.  Use the Internet Explorer Customization Wizard 11 to create a custom browser package. For more info about how to run the wizard, start with the [Use the File Locations page in the IEAK 11 Wizard](file-locations-ieak11-wizard.md) topic.

2.  Go to the Cie\Custom folder and rename the Install.ins file to a name that reflects the version. Like, if you need a version for your employees in Texas, you could name the file Texas.ins.

3.  Run the wizard again, choosing the newly renamed folder as the destination directory for your output files.<p>
**Important**<br>Except for the **Title bar** text, **Favorites**, **Links bar**, **Home** page, and **Search bar**, we recommend that you keep all of your wizard settings the same for all of your build computers.

4.  Repeat this process until you’ve created a package for each version of your custom installation package.


---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: Create packages for multiple operating systems or languages
author: lomayor
ms.prod: ie11
ms.assetid: 44051f9d-63a7-43bf-a427-d0a0a1c717da
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: lomayor
title: Create packages for multiple operating systems or languages (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Create packages for multiple operating systems or languages
You'll create multiple versions of your custom browser package if:

- You support more than 1 version of Windows®.

- You support more than 1 language.

- You have custom installation packages with only minor differences. Like, having a different phone number.

  **To create a new package**

1.  Create an installation package using the Internet Explorer Customization Wizard 11, as described in the [Internet Explorer Administration Kit 11 (IEAK 11) Customization Wizard options](../ie11-ieak/ieak11-wizard-custom-options.md) topic.

2.  Go to your **CIE/Custom** folder and rename the `Install.ins`file. For example, if you need a version for employees in Texas, rename the file to Texas.ins.

3.  Run the wizard again, using the Custom folder as the destination directory.<p>
**Important**<br>
Except for the **Title bar** text, **Favorites**, **Links bar**, **Home page**, and **Search bar**, keep all of your wizard settings the same for all of your build computers.

     

 

 




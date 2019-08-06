---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: Customize Internet Explorer 11 installation packages
author: lomayor
ms.prod: ie11
ms.assetid: 10a14a09-673b-4f8b-8d12-64036135e7fd
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: lomayor
title: Customize Internet Explorer 11 installation packages (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Customize Internet Explorer 11 installation packages
You can customize Internet Explorer 11 to support various browser behaviors, multiple operating system versions and languages, and Setup information (.inf) files.

|Topic                                                                   |Description                                         |
|------------------------------------------------------------------------|----------------------------------------------------|
|[Using IEAK 11 to create packages](using-ieak11-to-create-install-packages.md) |How to use the Internet Explorer Administration Kit 11 (IEAK 11) and the IE Customization Wizard 11 to set up, configure, deploy, and maintain IE11. |
|[Create packages for multiple operating systems or languages](create-install-packages-for-multiple-operating-systems-or-languages.md) |How to create multiple versions of your custom installation package, to support multiple operating systems or languages. |
|[Using .INF files to create packages](using-inf-files-to-create-install-packages.md) |How to use the Microsoft® Windows Setup Engine to automate setup tasks and customize your component installations. |



In addition, you can configure IE before, during, or after deployment, using these tools:

-   **IE Administration Kit 11 (IEAK 11)**. Creates customized installation packages that can be deployed through your software distribution system. For more information about the IEAK 11, see [Internet Explorer Administration Kit 11 (IEAK 11) - Administration Guide for IT Pros](../ie11-ieak/index.md).

-   **Group Policy**. Configures and enforces IE11 settings. For more information about settings and configuration options, see [Group policy objects and Internet Explorer 11 (IE11)](group-policy-objects-and-ie11.md).

-   **Unattend.xml**. Customizes some of the IE settings during your Windows installation. This option only applies if you're updating a Windows image with IE11.<p>**Note**<br>
You'll only see the new IE11 Unattend.xml settings if your Unattend.xml file's associated with a Windows image that includes the IE11 update. For more information about editing and using the Unattend.xml file, see [Unattended Windows Setup Reference](https://go.microsoft.com/fwlink/p/?LinkId=276788). For more information about using the Windows System Image Manager, see [Windows System Image Manager Technical Reference](https://go.microsoft.com/fwlink/p/?LinkId=276789).

     

 

 




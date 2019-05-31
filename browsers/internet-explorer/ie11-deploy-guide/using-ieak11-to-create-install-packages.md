---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: How to use IEAK 11 while planning, customizing, and building the custom installation package.
author: lomayor
ms.prod: ie11
ms.assetid: af93742f-f955-44ab-bfa2-7bf0c99045d3
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: Using Internet Explorer Administration Kit 11 (IEAK 11) to create packages (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Using Internet Explorer Administration Kit 11 (IEAK 11) to create packages
Internet Explorer Administration Kit 11 (IEAK 11) helps you set up, deploy, and maintain Internet Explorer 11.

**Note**<br>IEAK 11 works in network environments, with or without Microsoft Active Directory.

 

## Plan, Customize, and Build with the IEAK 11
Consider these activities while planning, customizing, and building the custom installation package.

### Plan
Before you begin, you should:

-   **Check the operating system requirements.** Check that the requirements for the computer you're building your installation package from, and the computers you're installing IE11 to, all meet the system requirements for IEAK 11 and IE11. For Internet Explorer requirements, see [System requirements and language support for Internet Explorer 11 (IE11)](system-requirements-and-language-support-for-ie11.md). For IEAK 11 requirements, see [Internet Explorer Administration Kit 11 (IEAK 11) - Administration Guide for IT Pros](../ie11-ieak/index.md).

-   **Decide on your distribution method.** Decide how to distribute your custom installation package: Windows Update, System Center System Center 2012 R2 Configuration Manager, or your network.

-   **Gather URLs and branding and custom graphics.** Collect the URLs for your company's own **Home**, **Search**, and **Support** pages, plus any custom branding and graphic files for the browser toolbar button and the **Favorites** list icons.

-   **Identify trusted network servers.** Decide which servers your employees should use to install the custom IE package. These servers need to be listed as trusted sites.

-   **Set up automatic detection and configuration settings.** Decide whether to automatically customize IE11 the first time it's started.

-   **Identify custom components for uninstallation.** Decide whether to include any custom uninstallation programs. Uninstallation programs let your employees remove your custom components through **Uninstall or change a program** in the Control Panel.

-   **Identify ActiveX controls.** Decide if you'll use ActiveX controls in your company. If you already use ActiveX, you should get an inventory of your active controls.

### Customize and build
After installing IE11 and the IEAK 11, you should:

-   **Prepare your build computer.** Create your build environment on the computer you're using to build the custom package.

-   **Create your branding and custom graphics.** If you don't have any, create custom branding and graphic files for the browser toolbar button and icons in your **Favorites** list.

-   **Specify your servers as trusted sites.** Identify your installation servers as trusted sites, in the **Trusted sites zone** of the **Internet Options** box.

-   **Turn on automatic detection and configuration settings (Optional).** Set up your network so that IE is automatically customized the first time it's started.

-   **Set up custom components for uninstallation.** Create the custom .inf file you'll use to register your custom uninstallation programs.

-   **Set up ActiveX controls.** Add any new ActiveX controls to the Axaa.adm file, using a text editor.

-   **Create a custom browser package.** Create your custom installation package, using IE Customization Wizard 11. For more information about using the wizard, see [Internet Explorer Administration Kit 11 (IEAK 11) Customization Wizard options](../ie11-ieak/ieak11-wizard-custom-options.md).

 

 




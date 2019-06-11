---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: security
description: How to use Group Policy to install ActiveX controls.
author: dansimp
ms.prod: ie11
ms.assetid: 59185370-558c-47e0-930c-8a5ed657e9e3
ms.reviewer: 
manager: dansimp
ms.author: dansimp
title: ActiveX installation using group policy (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Group Policy and ActiveX installation

ActiveX controls are installed and invoked using the HTML object tag with the CODEBASE attribute. This attribute, through a URL, makes Internet Explorer:

-   Get the ActiveX control if it's not already installed.

-   Download the installation package.

-   Perform trust verification on the object.

-   Prompt for installation permission, using the IE Information Bar.

During installation, the rendering page registers and invokes the control, so that after installation, any standard user can invoke the control.

**Important**<br>ActiveX control installation requires administrator-level permissions.

## Group Policy for the ActiveX Installer Service

You use the ActiveX Installer Service (AXIS) and Group Policy to manage your ActiveX control deployment. The AXIS-related settings can be changed using either the Group Policy Management Console (GPMC) or the Local Group Policy Editor, and include:

-   **Approved Installation Sites for ActiveX Controls.** A list of approved installation sites used by AXIS to determine whether it can install a particular ActiveX control.

-   **ActiveX installation policy for sites in trusted zones.** Identifies how AXIS should behave when a website tries to install an ActiveX control. First, AXIS looks to see if the site appears in either the list of approved installation sites or in the **Trusted sites** zone. If the does, then AXIS checks to make sure the control meets your company's policy requirements. If the ActiveX control meets all of these requirements, the control is installed.

For more information about the ActiveX Installer Service, see [Administering the ActiveX Installer Service in Windows 7](https://go.microsoft.com/fwlink/p/?LinkId=214503).

 

 




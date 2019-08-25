---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: Choose how to install Internet Explorer 11 (IE11)
author: dansimp
ms.prod: ie11
ms.assetid: 9572f5f1-5d67-483e-bd63-ffea95053481
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: dansimp
title: Choose how to install Internet Explorer 11 (IE11) (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Choose how to install Internet Explorer 11 (IE11)
Before you install Internet Explorer 11, you should:

-   **Migrate Group Policy Objects.** Decide if your Group Policy Objects should migrate to the new version.

-   **Check vendor support for updated functionality.** Check whether third-party vendors have new versions or updates to necessary add-ons, apps, or code libraries.

-   **Choose the right version of Internet Explorer.** IE11 comes pre-installed on Windows 8.1 and Windows Server 2012 R2 or you can download it for Windows 7 SP1 or Windows Server 2008 R2 with Service Pack 1 (SP1) from the [Internet Explorer Downloads](https://go.microsoft.com/fwlink/p/?LinkId=214251) site.

-   **Choose how you'll deploy your installation package.** Your deployment method should be based on whether you're installing to computers already running Windows, or if you're deploying IE11 as part of a Windows installation.

    -   **Existing computers running Windows.** Use System Center R2 2012 System Center 2012 R2 Configuration Manager, System Center Essentials 2010, Windows Server Updates Services (WSUS), or Microsoft Intune to deploy IE11. For more information about how to use these systems, see [System Center 2012 R2 Configuration Manager](https://go.microsoft.com/fwlink/p/?LinkID=276664), [System Center Essentials 2010](https://go.microsoft.com/fwlink/p/?LinkId=395200), [Windows Server Update Services](https://go.microsoft.com/fwlink/p/?LinkID=276790), and [Microsoft Intune Overview](https://www.microsoft.com/cloud-platform/microsoft-intune).

    -   **As part of a Windows deployment.** Update your Windows images to include IE11, and then add the update to your MDT deployment share or to your Windows image. For instructions about how to create and use Windows images, see [Create and Manage a Windows Image Using DISM](https://go.microsoft.com/fwlink/p/?LinkId=299408). For general information about deploying IE, see [Microsoft Deployment Toolkit (MDT)](https://go.microsoft.com/fwlink/p/?LinkId=331148), [Windows ADK Overview](https://go.microsoft.com/fwlink/p/?LinkId=276669).

 

 




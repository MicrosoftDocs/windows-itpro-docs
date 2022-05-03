---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: Deploy Internet Explorer 11 using software distribution tools
author: dansimp
ms.prod: ie11
ms.assetid: fd027775-651a-41e1-8ec3-d32eca876d8a
ms.reviewer: 
audience: itpro
manager: dansimp
ms.author: dansimp
title: Deploy Internet Explorer 11 using software distribution tools (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Deploy Internet Explorer 11 using software distribution tools

[!INCLUDE [Microsoft 365 workloads end of support for IE11](../includes/microsoft-365-ie-end-of-support.md)]

If you already manage software distribution and updates on your network through software distribution tools, you can also use these tools for ongoing deployments of Internet Explorer. Software distribution tools include:

-   **System Center R2 2012 System Center 2012 R2 Configuration Manager.** Deploy and install Internet Explorer 11 on your user's computers through a software distribution package. For more information about using this tool, see [System Center R2 2012 Configuration Manager](/previous-versions/system-center/system-center-2012-R2/gg682129(v=technet.10)).

-   **Windows Server Update Services (WSUS).** Download a single copy of the IE11 updates, caching them to local servers so your users' computers can receive the updates directly from the WSUS servers, instead of through Windows Update. For more information about using this tool, see [Windows Server Update Services](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh852345(v=ws.11)).

-   **Group Policy Software Installation.** Deploy and install IE11 on your user's computers through a combination of Group Policy and Microsoft Active Directory. For more information about using this tool, see [Group Policy Software Installation overview](/previous-versions/windows/it-pro/windows-server-2003/cc738858(v=ws.10)).

-   **Microsoft Deployment Toolkit (MDT).** Add the IE11 update to your deployment share, using MDT to update your previously-deployed Windows image. For more information about using this tool, see [Microsoft Deployment Toolkit (MDT)](/mem/configmgr/mdt/).

 

 
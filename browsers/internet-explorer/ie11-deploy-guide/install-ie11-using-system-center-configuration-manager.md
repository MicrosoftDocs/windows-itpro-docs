---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: How to install the Internet Explorer 11 update using System Center 2012 R2 Configuration Manager
author: dansimp
ms.prod: ie11
ms.assetid: 9ede9722-29b3-4cb7-956d-ffa91e7bedbd
ms.reviewer: 
audience: itpro
manager: dansimp
ms.author: dansimp
title: Install Internet Explorer 11 (IE11) using System Center 2012 R2 Configuration Manager (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Install Internet Explorer 11 (IE11) using System Center 2012 R2 Configuration Manager

[!INCLUDE [Microsoft 365 workloads end of support for IE11](../includes/microsoft-365-ie-end-of-support.md)]

You can install Internet Explorer 11 (IE11) by using [System Center R2 2012 Configuration Manager](/previous-versions/system-center/system-center-2012-R2/gg682129(v=technet.10)). Complete these steps for each operating system and platform combination.

 **To install IE11**

1.  Download and approve the [System requirements and language support for Internet Explorer 11 (IE11)](system-requirements-and-language-support-for-ie11.md).

2.  Create a software distribution package that includes the IE11 installation package.

3.  Create a program that includes the command-line needed to run the IE11 installation package. To run the package silently, without restarting and without checking the Internet for updates, use:`ie11_package.exe /quiet /norestart /update-no`.

4.  Move the installation package to your distribution points, and then advertise the package.

You can also use System Center Essentials 2010 to deploy IE11 installation packages. For info, see [System Center Essentials 2010](https://go.microsoft.com/fwlink/p/?linkid=395200) and the [System Center Essentials 2010 Operations Guide](https://go.microsoft.com/fwlink/p/?LinkId=214266).

 

 
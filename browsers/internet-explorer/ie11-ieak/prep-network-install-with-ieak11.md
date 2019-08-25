---
ms.localizationpriority: medium
ms.mktglfcycl: plan
description: Learn about what you need to do before you deploy your custom browser package using IEAK 11 over your network.
author: lomayor
ms.prod: ie11
ms.assetid: 2c66d22a-4a94-47cc-82ab-7274abe1dfd6
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: lomayor
title: Before you install your package over your network using IEAK 11 (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Before you install your package over your network using IEAK 11
Employees can install the custom browser package using a network server. However, you must either lower the intranet security level or make the server a trusted site.

**To lower your intranet security**

1. In Internet Explorer 11, click **Tools**, **Internet Options**, and then the **Security** tab.

2. Click **Local intranet**, and then **Sites**.

3. Uncheck **Automatically detect intranet network**, uncheck **Include all network paths (UNC)**, and then click **OK**.

**To make your server a trusted site**

1. From the **Security** tab, click **Trusted sites**, and then **Sites**.

2. Type the location of the server with the downloadable custom browser package, and then click **Add**.

3. Repeat this step for every server that will include the custom browser package for download.


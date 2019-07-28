---
ms.localizationpriority: medium
ms.mktglfcycl: plan
description: How to create your folder structure on the computer that you’ll use to build your custom browser package.
author: lomayor
ms.prod: ie11
ms.assetid: e0d05a4c-099f-4f79-a069-4aa1c28a1080
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: Create the build computer folder structure using IEAK 11  (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Create the build computer folder structure using IEAK 11
Create your build environment on the computer that you’ll use to build your custom browser package. Your license agreement determines your folder structure and which version of Internet Explorer Administration Kit 11 (IEAK 11) you’ll use: **Internal** or **External**.

|Name             |Version               |Description                                              |
|-----------------|----------------------|---------------------------------------------------------|
|`\<root_folder>` |Internal and External |The main, placeholder folder used for all files built by IEAK or that you referenced in your custom package.|
|`\<root_folder>\Dist` |Internal only |Destination directory for your files. You’ll only need this folder if you’re creating your browser package on a network drive. |


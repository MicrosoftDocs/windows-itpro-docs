---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: Use the \[Security Imports\] .INS file setting to decide whether to import security info to your custom package.
author: lomayor
ms.prod: ie11
ms.assetid: 19791c44-aaa7-4f37-9faa-85cbdf29f68e
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: Use the Security Imports .INS file to import security info (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Use the Security Imports .INS file to import security info
Info about how to import security information from your local device to your custom package.

|Name |Value |Description |
|-----|------|------------|
|ImportAuthCode |<ul><li>**0.** Don’t import the existing settings.</li><li>**1.** Import the existing settings.</li></ul> |Whether to import the existing Authenticode settings. |
|ImportRatings |<ul><li>**0.** Don’t import the existing settings.</li><li>**1.** Import the existing settings.</li></ul> |Whether to import the existing Content Ratings settings. |
|ImportSecZones |<ul><li>**0.** Don’t import the existing settings.</li><li>**1.** Import the existing settings.</li></ul> |Whether to import the existing Security Zone settings. |
|ImportSiteCert |<ul><li>**0.** Don’t import the existing authorities.</li><li>**1.** Import the existing authorities.</li></ul> |Whether to import the existing site certification authorities. |
|Win16SiteCerts |<ul><li>**0.** Don’t use the site certificates.</li><li>**1.** Use the site certificates.</li></ul> |Whether to use site certificates for computers running 16-bit versions of Windows. |


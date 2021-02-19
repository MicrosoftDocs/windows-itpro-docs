---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: How to use Site List Manager to review neutral sites for IE mode
author: dansimp
ms.prod: ie11
ms.assetid: f4dbed4c-08ff-40b1-ab3f-60d3b6e8ec9b
ms.reviewer: 
audience: itpro
manager: dansimp
ms.author: dansimp
title: Review neutral sites for Internet Explorer mode using the Enterprise Mode Site List Manager
ms.sitesec: library
ms.date: 04/02/2020
---

# Review neutral sites for Internet Explorer mode using the Enterprise Mode Site List Manager

[!INCLUDE [Microsoft 365 workloads end of support for IE11](../includes/microsoft-365-ie-end-of-support.md)]


**Applies to:**

- Windows 10
- Windows 8
- Windows Server 2012 R2
- Microsoft Edge version 77 or later

> [!NOTE]
> This feature is available on the Enterprise Mode Site List Manager version 11.0.

## Overview

While converting your site from v.1 schema to v.2 schema using the latest version of the Enterprise Mode Site List Manager, sites with the *doNotTransition=true* in v.1 convert to *open-in=None* in the v.2 schema, which is characterized as a "neutral site". This is the expected behavior for conversion unless you are using Internet Explorer mode (IE mode). When IE mode is enabled, only authentication servers that are used for modern and legacy sites should be set as neutral sites. For more information, see [Configure neutral sites](https://docs.microsoft.com/deployedge/edge-ie-mode-sitelist#configure-neutral-sites). Otherwise, a site meant to open in Edge might potentially be tagged as neutral, which results in inconsistent experiences for users.

The Enterprise Mode Site List Manager provides the ability to flag sites that are listed as neutral sites, but might have been added in error. This check is automatically performed when you are converting from v.1 to v.2 through the tool. This check might flag sites even if there was no prior schema conversion.

## Flag neutral sites

To identify neutral sites to review:

1. In the Enterprise Mode Site List Manager (schema v.2), click **File > Flag neutral sites**.
2. If selecting this option has no effect, there are no sites that needs to be reviewed. Otherwise, you will see a message **"Engine neutral sites flagged for review"**. When a site is flagged, you can assess if the site needs to be removed entirely, or if it needs the open-in attribute changed from None to MSEdge.
3. If you believe that a flagged site is correctly configured, you can edit the site entry and click on **"Clear Flag"**. Once you select that option for a site, it will not be flagged again.

## Related topics

- [About IE Mode](https://docs.microsoft.com/deployedge/edge-ie-mode)
- [Configure neutral sites](https://docs.microsoft.com/deployedge/edge-ie-mode-sitelist#configure-neutral-sites)

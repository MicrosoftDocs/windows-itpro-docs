---
ms.localizationpriority: medium
ms.mktglfcycl: support
description: Turn off natural metrics for Internet Explorer 11
author: dansimp
ms.prod: ie11
ms.assetid: e31a27d7-662e-4106-a3d2-c6b0531961d5
ms.reviewer: 
audience: itpro
manager: dansimp
ms.author: dansimp
title: Fix font rendering problems by turning off natural metrics (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Fix font rendering problems by turning off natural metrics

[!INCLUDE [Microsoft 365 workloads end of support for IE11](../includes/microsoft-365-ie-end-of-support.md)]

By default, Internet Explorer 11 uses “natural metrics”. Natural metrics use inter-pixel spacing that creates more accurately rendered and readable text, avoiding many common font rendering problems with Windows Internet Explorer 9 or older sites.

However, you might find that many intranet sites need you to use Windows Graphics Device Interface (GDI) metrics. To avoid potential compatibility issues, you must turn off natural metrics for those sites.

 **To turn off natural metrics**

-   Add the following HTTP header to each site: `X-UA-TextLayoutMetrics: gdi`

<p><strong>-OR-</strong><p>

- Add the following &lt;meta&gt; tag to each site: `<meta http-equiv="X-UA-TextLayoutMetrics" content="gdi" />`

Turning off natural metrics automatically turns on GDI metrics.

 

 




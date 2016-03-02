---
Description: Turn off natural metrics for Internet Explorer 11
ms.assetid: e31a27d7-662e-4106-a3d2-c6b0531961d5
author: LizRoss
ms.prod: IE11
ms.mktglfcycl: support
ms.sitesec: library
title: Fix font rendering problems by turning off natural metrics (Internet Explorer 11 for IT Pros)
---

# Fix font rendering problems by turning off natural metrics
By default, Internet Explorer 11 uses “natural metrics”. Natural metrics use inter-pixel spacing that creates more accurately rendered and readable text, avoiding many common font rendering problems with Windows Internet Explorer 9 or older sites.

However, you might find that many intranet sites need you to use Windows Graphics Device Interface (GDI) metrics. To avoid potential compatibility issues, you must turn off natural metrics for those sites.

 ![](images/wedge.gif) **To turn off natural metrics**

-   Add the following HTTP header to each site: `X-UA-TextLayoutMetrics: gdi`

<p>**-OR-**<p>

- Add the following &lt;meta&gt; tag to each site: `<meta http-equiv="X-UA-TextLayoutMetrics" content="gdi" />`

Turning off natural metrics automatically turns on GDI metrics.

 

 




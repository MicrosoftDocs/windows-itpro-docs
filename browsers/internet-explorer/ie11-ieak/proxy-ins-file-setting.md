---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: Use the \[Proxy\] .INS file setting to define whether to use a proxy server.
author: lomayor
ms.prod: ie11
ms.assetid: 30b03c2f-e3e5-48d2-9007-e3fd632f3c18
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: Use the Proxy .INS file to specify a proxy server (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Use the Proxy .INS file to specify a proxy server
Info about whether to use a proxy server. If yes, this also includes the host names for the proxy server.

|Name |Value |Description |
|-----|------|------------|
|FTP_Proxy_Server |`<proxy_name>` |The host name for the FTP proxy server. |
|Gopher_Proxy_Server |`<proxy_name>` |We no longer support Gopher Server. |
|HTTP_Proxy_Server |`<proxy_name>` |The host name for the HTTP proxy server. |
|Proxy_Enable |<ul><li>**0.** Don’t use a proxy server.</li><li>**1.** Use a proxy server.</li></ul> |Determines whether to use a proxy server. |
|Proxy_Override |`<proxy_name>` |The host name for the proxy server. For example, `<local>`. |
|Secure_Proxy_Server |`<proxy_name>` |The host name for the secure proxy server. |
|Socks_Proxy_Server |`<proxy_name>` |The host name for the SOCKS proxy server. |
|Use_Same_Proxy |<ul><li>**0.** Don’t use the same proxy server for all services.</li><li>**1.** Use the same proxy server for all services.</li></ul> |Determines whether to use a single proxy server for all services. |


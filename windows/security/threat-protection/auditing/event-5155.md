---
title: 5155(F) The Windows Filtering Platform has blocked an application or service from listening on a port for incoming connections. (Windows 10)
description: Describes security event 5155(F) The Windows Filtering Platform has blocked an application or service from listening on a port for incoming connections.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: dansimp
---

# 5155(F): The Windows Filtering Platform has blocked an application or service from listening on a port for incoming connections.

**Applies to**
-   Windows 10
-   Windows Server 2016


By default Windows firewall won't prevent a port from being listened by an application. In the other word, Windows system will not generate Event 5155 by itself.

You can add your own filters using the WFP APIs to block listen to reproduce this event: <https://msdn.microsoft.com/library/aa364046(v=vs.85).aspx>.

There is no event example in this document.

***Subcategory:***&nbsp;[Audit Filtering Platform Connection](audit-filtering-platform-connection.md)

***Event Schema:***

*The Windows Filtering Platform has blocked an application or service from listening on a port for incoming connections.*

*Application Information:*

> *Process ID:%1*
>
> *Application Name:%2*

*Network Information:*

> *Source Address:%3*
>
> *Source Port:%4*
>
> *Protocol:%5*

*Filter Information:*

> *Filter Run-Time ID:%6*
>
> *Layer Name:%7*
>
> *Layer Run-Time ID:%8*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   If you use Windows Filtering Platform APIs to block application or services from listening on a port, then you can use this event for troubleshooting and monitoring.


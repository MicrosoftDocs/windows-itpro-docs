---
title: How to Configure the Client for MIT Kerberos Realm Support
description: How to Configure the Client for MIT Kerberos Realm Support
author: dansimp
ms.assetid: 46102f4c-270c-4115-8eb4-7ff5ae3be32d
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Configure the Client for MIT Kerberos Realm Support


In Application Virtualization (App-V) 4.5 SP1, support was added for MIT Kerberos realms. This topic provides detailed information on how to enable that support.

**To enable support for MIT Kerberos Realms**

-   Create a new registry key named **UseMitKerberos** of type DWORD, as follows, and then set it to a value of 1.

    HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\Network\\UseMitKerberos

 

 






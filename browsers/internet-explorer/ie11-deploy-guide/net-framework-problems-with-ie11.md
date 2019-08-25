---
ms.localizationpriority: medium
ms.mktglfcycl: support
description: How to turn managed browser hosting controls back on in Internet Explorer 11.
author: lomayor
ms.prod: ie11
ms.assetid: b0b7f60f-9099-45ab-84f4-4ac64d7bcb43
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: lomayor
title: .NET Framework problems with Internet Explorer 11 (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# .NET Framework problems with Internet Explorer 11
If you’re having problems launching your legacy apps while running Internet Explorer 11, it’s most likely because Internet Explorer no longer starts apps that use managed browser hosting controls, like in .NET Framework 1.1 and 2.0.

 **To turn managed browser hosting controls back on**

1.  **For x86 systems or for 64-bit processes on x64 systems:** Go to the `HKLM\SOFTWARE\MICROSOFT\.NETFramework` registry key and change the **EnableIEHosting** value to **1**.

2.  **For 32-bit processes on x64 systems:** Go to the `HKLM\SOFTWARE\Wow6432Node\MICROSOFT\.NETFramework` registry key and change the **EnableIEHosting** value to **1**.

For more information, see the [Web Applications](https://go.microsoft.com/fwlink/p/?LinkId=308903) section of the Application Compatibility in the .NET Framework 4.5 page.

 

 




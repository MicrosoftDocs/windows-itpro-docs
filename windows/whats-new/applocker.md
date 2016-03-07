---
title: What's new in AppLocker? (Windows 10)
description: AppLocker helps you control which apps and files users can run. These include executable files, scripts, Windows Installer files, dynamic-link libraries (DLLs), packaged apps, and packaged app installers.
ms.assetid: 6F836FF6-7794-4E7B-89AA-1EABA1BF183F
ms.prod: W10
ms.mktglfcycl: explore
ms.sitesec: library
author: TrudyHa
---

# What's new in AppLocker?


**Applies to**

-   Windows 10
-   Windows 10 Mobile

AppLocker helps you control which apps and files users can run. These include executable files, scripts, Windows Installer files, dynamic-link libraries (DLLs), packaged apps, and packaged app installers.

In Windows 10, AppLocker has added some improvements.

## New features in Windows 10


-   A new parameter was added to the [New-AppLockerPolicy](http://technet.microsoft.com/library/hh847211.aspx) Windows PowerShell cmdlet that lets you choose whether executable and DLL rule collections apply to non-interactive processes. To enable this, set the **ServiceEnforcement** to **Enabled**.

-   A new [AppLocker](http://msdn.microsoft.com/library/windows/hardware/dn920019.aspx) configuration service provider was add to allow you to enable AppLocker rules by using an MDM server.

-   You can manage Windows 10 Mobile devices by using the new [AppLocker CSP](http://msdn.microsoft.com/library/windows/hardware/dn920019.aspx).

[Learn how to manage AppLocker within your organization](/windows/keep-secure/applocker-overview-server.md).

 

 






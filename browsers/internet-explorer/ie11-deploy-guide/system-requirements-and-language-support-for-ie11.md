---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: Lists the minimum system requirements and supported languages for Internet Explorer 11.
author: lomayor
ms.prod: ie11
ms.assetid: 27185e3d-c486-4e4a-9c51-5cb317c0006d
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: System requirements and language support for Internet Explorer 11 (IE11) (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# System requirements and language support for Internet Explorer 11 (IE11)

**Applies to:**

-   Windows 10
-   Windows 8.1 Update
-   Windows 7 with Service Pack 1 (SP1)
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

Internet Explorer 11 is available for a number of systems and languages. This topic provides info about the minimum system requirements and language support.

## Minimum system requirements for IE11
IE11 is pre-installed on Windows 8.1, Windows 10, and Windows Server 2012 R2 and is listed here for reference. For more info about IE11 on Windows 10, see [Browser: Microsoft Edge and Internet Explorer 11](https://technet.microsoft.com/library/mt156988.aspx).

**Important**<br> 
IE11 isn't supported on Windows 8 or Windows Server 2012.

Some of the components in this table might also need additional system resources. Check the component's documentation for more information.

|Item                        |Minimum requirements                                    |
|----------------------------|--------------------------------------------------------|
|Computer/processor          |1 gigahertz (GHz) 32-bit (x86) or 64-bit (x64)          |
|Operating system            |<ul><li>Windows 10 (32-bit or 64-bit)</li><li>Windows 8.1 Update (32-bit or 64-bit)</li><li>Windows 7 with SP1 (32-bit or 64-bit)</li><li>Windows Server 2012 R2</li><li>Windows Server 2008 R2 with SP1 (64-bit only)</li></ul> |
|Memory            |<ul><li>Windows 10 (32-bit)-1 GB</li><li>Windows 10 (64-bit)-2 GB</li><li>Windows 8.1 Update (32-bit)-1 GB</li><li>Windows 8.1 Update (64-bit)-2 GB</li><li>Windows 7 with SP1 (32-bit or 64-bit)-512 MB</li><li>Windows Server 2012 R2-512 MB</li><li>Windows Server 2008 R2 with SP1 (64-bit only)-512 MB</li></ul> |
|Hard drive space            |<ul><li>Windows 10 (32-bit)-16 GB</li><li>Windows 10 (64-bit)-20 GB</li><li>Windows 8.1 Update (32-bit)-16 GB</li><li>Windows 8.1 Update (64-bit)-20 GB</li><li>Windows 7 with SP1 (32-bit)-70 MB</li><li>Windows 7 with SP1 (64-bit)-120 MB</li><li>Windows Server 2012 R2-32 GB</li><li>Windows Server 2008 R2 with SP1 (64-bit only)-200 MB</li><ul> |
|Drive                       |CD-ROM drive (if installing from a CD-ROM) |
|Display                     |Super VGA (800 x 600) or higher-resolution monitor with 256 colors |
|Peripherals                 |Internet connection and a compatible pointing device               |


## Support for .NET Framework
You might experience start up issues where IE11 fails to launch an application that uses managed browser hosting controls with your legacy apps. This is because, starting with Internet Explorer 10, the browser started blocking legacy apps from using the .NET Framework 1.1 and 2.0. To fix this problem, see [.NET Framework problems with Internet Explorer 11](net-framework-problems-with-ie11.md).

## Support for multiple languages
IE11 is available in 108 languages for Windows 8.1 and Windows 10 and in 97 languages for Windows 7 with SP1. For the list of languages and download links, see [Available language packs based on operating system](https://go.microsoft.com/fwlink/p/?LinkId=281818).

Computers running localized versions of Windows should run the same version of IE11. For example, if your employees use the Spanish edition of Windows, you should deploy the Spanish version of IE11. On the other hand, if your employees use multiple localized versions of Windows, like Spanish, French, and Catalan, you should install IE11 in one of the languages, and then install language packs for the others.

 

 




---
title: Best practice recommendations for Windows To Go (Windows 10)
description: Best practice recommendations for Windows To Go
ms.assetid: 05e6e0ab-94ed-4c0c-a195-0abd006f0a86
ms.reviewer: 
manager: laurawi
ms.author: greglin
keywords: best practices, USB, device, boot
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: mobility
ms.sitesec: library
author: greg-lindsay
ms.topic: article
---

# Best practice recommendations for Windows To Go


**Applies to**

-   Windows 10

>[!IMPORTANT]
>Windows To Go is no longer being developed. The feature does not support feature updates and therefore does not enable you to stay current. It also requires a specific type of USB that is no longer supported by many OEMs.

The following are the best practice recommendations for using Windows To Go:

-   Always shut down Windows and wait for shutdown to complete before removing the Windows To Go drive.
-   Do not insert the Windows To Go drive into a running computer.
-   Do not boot the Windows To Go drive from a USB hub. Always insert the Windows To Go drive directly into a port on the computer.
-   If available, use a USB 3.0 port with Windows To Go.
-   Do not install non-Microsoft core USB drivers on Windows To Go.
-   Suspend BitLocker on Windows host computers before changing the BIOS settings to boot from USB and then resume BitLocker protection.

Additionally, we recommend that when you plan your deployment you should also plan a standard operating procedure for answering questions about which USB drives can be used for Windows To Go and how to enable booting from USB to assist your IT department or help desk in supporting users and work groups that want to use Windows To Go. It may be very helpful for your organization to work with your hardware vendors to create an IT standard for USB drives for use with Windows To Go, so that if groups within your organization want to purchase drives they can quickly determine which ones they should obtain.

## More information


[Windows To Go: feature overview](windows-to-go-overview.md)<br>
[Prepare your organization for Windows To Go](prepare-your-organization-for-windows-to-go.md)<br>
[Deployment considerations for Windows To Go](deployment-considerations-for-windows-to-go.md)<br>
[Security and data protection considerations for Windows To Go](security-and-data-protection-considerations-for-windows-to-go.md)<br>
[Windows To Go: frequently asked questions](windows-to-go-frequently-asked-questions.md)<br>

 

 






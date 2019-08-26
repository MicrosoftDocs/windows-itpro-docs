---
title: Appendix Information sent to Microsoft during activation (Windows 10)
ms.assetid: 4bfff495-07d0-4385-86e3-7a077cbd64b8
ms.reviewer: 
manager: laurawi
ms.author: greglin
description: 
keywords: vamt, volume activation, activation, windows activation
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: activation
audience: itproauthor: greg-lindsay
ms.localizationpriority: medium
ms.date: 07/27/2017
ms.topic: article
---

# Appendix: Information sent to Microsoft during activation
**Applies to**
-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2012
-   Windows Server 2008 R2

**Looking for retail activation?**

-   [Get Help Activating Microsoft Windows](https://go.microsoft.com/fwlink/p/?LinkId=618644)

When you activate a computer running Windows 10, the following information is sent to Microsoft:

-   The Microsoft product code (a five-digit code that identifies the Windows product you are activating)
-   A channel ID or site code that identifies how the Windows product was originally obtained

    For example, a channel ID or site code identifies whether the product was originally purchased from a retail store, obtained as an evaluation copy, obtained through a volume licensing program, or preinstalled by a computer manufacturer.
    
-   The date of installation and whether the installation was successful
-   Information that helps confirm that your Windows product key has not been altered
-   Computer make and model
-   Version information for the operating system and software
-   Region and language settings
-   A unique number called a *globally unique identifier*, which is assigned to your computer
-   Product key (hashed) and product ID
-   BIOS name, revision number, and revision date
-   Volume serial number (hashed) of the hard disk drive
-   The result of the activation check

    This includes error codes and the following information about any activation exploits and related malicious or unauthorized software that was found or disabled:
    
    -   The activation exploit’s identifier
    -   The activation exploit’s current state, such as cleaned or quarantined
    -   Computer manufacturer’s identification
    -   The activation exploit’s file name and hash in addition to a hash of related software components that may indicate the presence of an activation exploit
-   The name and a hash of the contents of your computer’s startup instructions file
-   If your Windows license is on a subscription basis, information about how your subscription works

Standard computer information is also sent, but your computer’s IP address is only retained temporarily.

## Use of information

Microsoft uses the information to confirm that you have a licensed copy of the software. Microsoft does not use the information to contact individual consumers.
For additional details, see [Windows 10 Privacy Statement](https://go.microsoft.com/fwlink/p/?LinkId=619879).

## See also

-   [Volume Activation for Windows 10](volume-activation-windows-10.md)
 
 

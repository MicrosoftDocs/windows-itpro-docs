---
title: Surface Pro X app compatibility
description: This article provides introductory app compatibility information for Surface Pro X ARM-based PCs.
ms.prod: w10
ms.localizationpriority: medium
ms.mktglfcycl: manage
ms.sitesec: library
author: coveminer
ms.author: greglin
ms.topic: article
ms.date: 10/03/2019
ms.reviewer: jessko
manager: laurawi
ms.audience: itpro
---
# Surface Pro X app compatibility

Applications run differently on ARM-based Windows 10 PCs such as Surface Pro X. Limitations include the following:

- **Drivers for hardware, games and apps will only work if they're designed for a Windows 10 ARM-based PC**. For more info, check with the hardware manufacturer or the organization that developed the driver. Drivers are software programs that communicate with hardware devices—they're commonly used for antivirus and antimalware software, printing or PDF software, assistive technologies, CD and DVD utilities, and virtualization software. If a driver doesn’t work, the app or hardware that relies on it won’t work either (at least not fully). Peripherals and devices only work if the drivers they depend on are built into Windows 10, or if the hardware developer has released ARM64 drivers for the device.
- **64-bit (x64) apps won’t work**. You'll need 64-bit (ARM64) apps, 32-bit (ARM32) apps, or 32-bit (x86) apps. You can usually find 32-bit (x86) versions of apps, but some app developers only offer 64-bit (x64) apps.
- **Certain games won’t work**. Games and apps won't work if they use a version of OpenGL greater than 1.1, or if they rely on "anti-cheat" drivers that haven't been made for Windows 10 ARM-based PCs. Check with your game publisher to see if a game will work.
- **Apps that customize the Windows experience might have problems**. This includes some input method editors (IMEs), assistive technologies, and cloud storage apps. The organization that develops the app determines whether their app will work on a Windows 10 ARM-based PC.
- **Some third-party antivirus software can’t be installed**. You won't be able to install some third-party antivirus software on a Windows 10 ARM-based PC. However, Windows Security will help keep you safe for the supported lifetime of your Windows 10 device.
- **Windows Fax and Scan isn’t available**. This feature isn’t available on a Windows 10 ARM-based PC.

For more information about app compatibility, refer to [Windows 10 ARM-based PCs FAQ](https://support.microsoft.com/en-us/help/4521606)

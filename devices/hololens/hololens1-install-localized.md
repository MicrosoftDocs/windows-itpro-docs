---
title: Install localized versions of HoloLens
description: Learn how to install the Chinese or Japanese versions of HoloLens
ms.prod: hololens
ms.mktglfcycl: manage
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: high
ms.date: 9/16/2019
ms.reviewer: 
manager: jarrettr
appliesto:
- HoloLens (1st gen)
---

# Install localized versions of HoloLens (1st gen)

In order to switch to the Chinese or Japanese version of HoloLens, you’ll need to use the Windows Device Recovery Tool (WDRT) to download the build for the language on a PC and then install it on your HoloLens.

> [!IMPORTANT]
> Using WDRT to install the Chinese or Japanese builds of HoloLens deletes existing data, such as personal files and settings, from your HoloLens. 

1. On your PC, download and install [the Windows Device Recovery Tool (WDRT)](https://support.microsoft.com/help/12379).
1. Download the package for the language you want to your PC:  [Simplified Chinese](https://aka.ms/hololensdownload-ch) or [Japanese](https://aka.ms/hololensdownload-jp).
1. When the download finishes, select **File Explorer** > **Downloads**. Right-click the zipped folder that you just downloaded, and select **Extract all** > **Extract** to unzip it.
1. Connect your HoloLens to your PC using the micro-USB cable that it shipped with. (Even if you've been using other cables to connect your HoloLens, this one works best.)
1. After the tool automatically detects your HoloLens, select the Microsoft HoloLens tile.
1. On the next screen, select **Manual package selection** and select the installation file that resides in the folder that you unzipped in step 4. (Look for a file that has the extension “.ffu”.) 
1. Select **Install software** and follow the instructions. 
1. After the build installs, HoloLens setup automatically starts. Put on the device and follow the setup directions. 

When you’re done with setup, go to **Settings** > **Update & Security** > **Windows Insider Program**, and check that you’re configured to receive the latest preview builds. Like the English preview builds, the Windows Insider Program keeps the Chinese and Japanese versions of HoloLens up-to-date with the latest preview builds.

> [!NOTE]
>  
> - You can’t use the Settings app to change the system language between English, Japanese, and Chinese. Flashing a new build is the only supported way to change the device system language.
> - While you can use the on-screen Pinyin keyboard to enter Simplified Chinese or Japanese text, using a Bluetooth hardware keyboard to type Simplified Chinese or Japanese text is not supported at this time.  However, on Chinese or Japanese HoloLens, you can continue to use a Bluetooth keyboard to type in English (to toggle a hardware keyboard to type in English, press the ~ key).

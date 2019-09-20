---
title: Install localized versions of HoloLens (HoloLens)
description: Learn how to install the Chinese or Japanese versions of HoloLens
ms.prod: hololens
ms.mktglfcycl: manage
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.date: 11/13/2018
ms.reviewer: 
manager: dansimp
---

# Install localized versions of HoloLens

In order to switch to the Chinese or Japanese version of HoloLens, you’ll need to download the build for the language on a PC and then install it on your HoloLens using the Windows Device Recovery Tool (WDRT). 
 
>[!IMPORTANT]
>Installing the Chinese or Japanese builds of HoloLens using WDRT will delete existing data, like personal files and settings, from your HoloLens. 
 
   
2. On your PC, download and install [the Windows Device Recovery Tool (WDRT)](https://support.microsoft.com/help/12379). 
3. Download the package for the language you want to your PC:  [Simplified Chinese](https://aka.ms/hololensdownload-ch) or [Japanese](https://aka.ms/hololensdownload-jp).
4. When the download is finished, select **File Explorer > Downloads**. Right-click the zipped folder you just downloaded, and select **Extract all... > Extract** to unzip it. 
5. Connect your HoloLens to your PC using the micro-USB cable it came with. (Even if you've been using other cables to connect your HoloLens, this one works best.)  
6. The tool will automatically detect your HoloLens. Select the Microsoft HoloLens tile. 
7. On the next screen, select **Manual package selection** and choose the installation file contained in the folder you unzipped in step 4. (Look for a file with the extension “.ffu”.) 
8. Select **Install software** and follow the instructions to finish installing. 
9. Once the build is installed, HoloLens setup will start automatically. Put on the device and follow the setup directions. 
 
When you’re done with setup, go to **Settings -> Update & Security -> Windows Insider Program** and check that you’re configured to receive the latest preview builds.  The Chinese/Japanese version of HoloLens will be kept up-to-date with the latest preview builds via the Windows Insider Program the same way the English version is. 

## Note for language support

- You can’t change the system language between English, Japanese, and Chinese using the Settings app. Flashing a new build is the only supported way to change the device system language.
- While you can enter Simplified Chinese / Japanese text using the on-screen Pinyin keyboard, typing in Simplified Chinese / Japanese using a Bluetooth hardware keyboard is not supported at this time.  However, on Chinese/Japanese HoloLens, you can continue to use a BT keyboard to type in English (the ~ key on a hardware keyboard toggles the keyboard to type in English).

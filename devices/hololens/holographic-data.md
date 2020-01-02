---
title: Find and save files on HoloLens
description: Use File Explorer on HoloLens to view and manage files on your device
keywords: how-to, file picker, files, photos, videos, pictures, OneDrive, storage, file explorer
ms.assetid: 77d2e357-f65f-43c8-b62f-6cd9bf37070a
author: mattzmsft
ms.author: mazeller
manager: v-miegge
ms.reviewer: jarrettrenshaw
ms.date: 12/30/2019
keywords: hololens
ms.prod: hololens
ms.sitesec: library
ms.topic: article
audience: ITPro
ms.localizationpriority: medium
appliesto:
- HoloLens (1st gen)
- HoloLens 2
---

# Find, open, and save files on HoloLens

Files you create on HoloLens, including photos and videos, are saved directly to your HoloLens device. View and manage them in the same way you would manage files on Windows 10:

- Using the File Explorer app to access local folders.
- Within an app's storage.
- In a special folder (such as the video or music library).
- Using a storage service that includes an app and file picker (such as OneDrive).
- Using a desktop PC connected to your HoloLens by using a USB cable, using MTP (Media Transfer Protocol) support.

## View files on HoloLens using File Explorer

> Applies to all HoloLens 2 devices and HoloLens (1st gen) as of the [Windows 10 April 2018 Update (RS4) for HoloLens](https://docs.microsoft.com/windows/mixed-reality/release-notes-april-2018).

Use File Explorer on HoloLens to view and manage files on your device, including 3D objects, documents, and pictures. Go to **Start**  > **All apps**  > **File Explorer** to get started.

> [!TIP]
> If there are no files listed in File Explorer, select **This Device** in the top left pane.

If you don’t see any files in File Explorer, the "Recent" filter may be active (clock icon is highlighted in left pane). To fix this, select the **This Device** document icon in the left pane (beneath the clock icon), or open the menu and select **This Device**.

## Find and view your photos and videos

[Mixed reality capture](holographic-photos-and-videos.md) lets you take mixed reality photos and videos on HoloLens.  These photos and videos are saved to the device's Camera Roll folder.

You can access photos and videos taken with HoloLens by:

- accessing the Camera Roll directly through the [Photos app](holographic-photos-and-videos.md).
- uploading photos and videos to cloud storage by syncing your photos and videos to OneDrive.
- using the Mixed Reality Capture page of the [Windows Device Portal](https://docs.microsoft.com/windows/mixed-reality/using-the-windows-device-portal#mixed-reality-capture).

### Photos app

The Photos app is one of the default apps on the **Start** menu, and comes built-in with HoloLens. Learn more about [using the Photos app to view content](holographic-photos-and-videos.md).

You can also install the [OneDrive app](https://www.microsoft.com/p/onedrive/9wzdncrfj1p3) from the Microsoft Store to sync photos to other devices.

### OneDrive app

[OneDrive](https://onedrive.live.com/) lets you access, manage, and share your photos and videos with any device and with any user. To access the photos and videos captured on HoloLens, download the [OneDrive app](https://www.microsoft.com/p/onedrive/9wzdncrfj1p3) from the Microsoft Store on your HoloLens. Once downloaded, open the OneDrive app and select **Settings** > **Camera upload**, and turn on **Camera upload**.

### Connect to a PC

If your HoloLens is running the [Windows 10 April 2018 update](https://docs.microsoft.com/windows/mixed-reality/release-notes-april-2018) or later, you can connect your HoloLens to a Windows 10 PC by using a USB cable to browse photos and videos on the device by using MTP (media transfer protocol). You'll need to make sure the device is unlocked to browse files if you have a PIN or password set up on your device.  

If you have enabled the [Windows Device Portal](https://docs.microsoft.com/windows/mixed-reality/using-the-windows-device-portal), you can use it to browse, retrieve, and manage the photos and videos stored on your device.

## Access files within an app

If an application saves files on your device, you can use that application to access them.

### Requesting files from another app

An application can request to save a file or open a file from another app by using [file pickers](https://docs.microsoft.com/windows/mixed-reality/app-model#file-pickers).

### Known folders

HoloLens supports a number of [known folders](https://docs.microsoft.com/windows/mixed-reality/app-model#known-folders) that apps can request permission to access.

## View HoloLens files on your PC

Similar to other mobile devices, connect HoloLens to your desktop PC using MTP (Media Transfer Protocol) and open File Explorer on the PC to access your HoloLens libraries for easy transfer.

To see your HoloLens files in File Explorer on your PC:

1. Sign in to HoloLens, then plug it into the PC using the USB cable that came with the HoloLens.

1. Select **Open Device to view files with File Explorer**, or open File Explorer on the PC and navigate to the device.

To see info about your HoloLens, right-click the device name in File Explorer on your PC, then select **Properties**.

> [!NOTE]
> HoloLens (1st gen) does not support connecting to external hard drives or SD cards.

## Sync to the cloud

To sync photos and other files from your HoloLens to the cloud, install and set up OneDrive on HoloLens. To get OneDrive, search for it in the Microsoft Store on your HoloLens.

HoloLens doesn't back up app files and data, so it's a good idea to save your important stuff to OneDrive. That way, if you reset your device or uninstall an app, your info will be backed up.

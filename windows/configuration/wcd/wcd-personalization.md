---
title: Personalization (Windows 10)
description: This section describes the Personalization settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.localizationpriority: medium
ms.author: greglin
ms.topic: article
ms.reviewer: 
manager: dansimp
---

# Personalization (Windows Configuration Designer reference)

Use to configure settings to personalize a PC.

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [DeployDesktopImage](#deploydesktopimage) | X  |  |  |  |  |
| [DeployLockScreenImage](#deploylockscreenimage) | X  |  |  |  |  |
| [DesktopImageUrl](#desktopimageurl) | X  |  |  |  |  |
| [LockScreenImageUrl](#lockscreenimageurl) | X  |  |  |  |  |

## DeployDesktopImage

Deploy a .jpg, .jpeg, or .png image to the device to be used as a desktop image. If you have a local file and want to embed it into the package being deployed, you configure this setting and [DesktopImageUrl](#desktopimageurl).

When using **DeployDesktopImage** and [DeployLockScreenImageFile](#deploylockscreenimage, the file names need to be different. 

## DeployLockScreenImage

Deploy a .jpg, .jpeg, or .png image to the device to be used as lock screen image. If you have a local file and want to embed it into the package being deployed, you configure this setting and [LockScreenImageUrl](#lockscreenimageurl).

When using [DeployDesktopImage](#deploydesktopimage) and **DeployLockScreenImageFile**, the file names need to be different.

## DesktopImageUrl

Specify a .jpg, .jpeg, or .png image to be used as desktop image. This setting can take an HTTP or HTTPS URL to a remote image to be downloaded or a file URL to a local image. If you have a local file and want to embed it into the package being deployed, you also set [DeployDesktopImage](#deploydesktopimage).

## LockScreenImageUrl

Specify a .jpg, .jpeg, or .png image to be used as Lock Screen Image. This setting can take an HTTP or HTTPS URL to a remote image to be downloaded or a file URL to an existing local image. If you have a local file and want to embed it into the package being deployed, you also set [DeployLockScreenImage](#deploylockscreenimage).

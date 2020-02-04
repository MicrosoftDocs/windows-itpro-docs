---
title: Capture and manage mixed reality photos and videos
description: Learn how to capture, view, and share mixed reality photos and videos, using HoloLens.
keywords: hololens, photo, video, capture, mrc, mixed reality capture, photos, camera, stream, livestream, demo
ms.assetid: 1b636ec3-6186-4fbb-81b2-71155aef0593
ms.prod: hololens
ms.sitesec: library
author: mattzmsft
ms.author: mazeller
ms.topic: article
audience: ITPro
ms.localizationpriority: medium
ms.date: 10/28/2019
manager: jarrettr
appliesto:
- HoloLens (1st gen)
- HoloLens 2
---

# Create mixed reality photos and videos

HoloLens gives users the experience of mixing the real world with the digital world.  Mixed reality capture (MRC) lets you capture that experience as a photo or video, or share what you see with others in real-time.

Mixed reality capture uses a first-person point of view so other people can see holograms as you see them. For a third-person point of view, use [spectator view](https://docs.microsoft.com/windows/mixed-reality/spectator-view). Spectator view is especially useful for demos.

While it's fun to share videos amongst friends and colleagues, videos can also help teach other people to use an app or to communicate problems with apps and experiences.

> [!NOTE]
> If you can't launch mixed reality capture experiences and your HoloLens is a work device, check with your system administrator. Access to the camera can be restricted through company policy.

## Capture a mixed reality photo

There are several ways to take a photo of mixed reality on HoloLens; you can use hardware buttons, voice, or the Start menu.

### Hardware buttons to take photos

To take a quick photo of your current view, press the volume up and volume down buttons at the same time.  This is a bit like the HoloLens version of a screenshot or print screen.

- [Button locations on HoloLens 2](hololens2-hardware.md)
- [Button locations on HoloLens (1st gen)](hololens1-hardware.md#hololens-components)

> [!NOTE]
> Holding the **volume up** and **volume down** buttons for three seconds will start recording a video rather than taking a photo. To stop recording, tap both **volume up** and **volume down** buttons simultaneously.

### Voice commands to take photos

Cortana can also take a picture. Say: "Hey Cortana, take a picture."

### Start menu to take photos

Use the Start gesture to go to **Start**, then select the **camera** icon.

Point your head in the direction of what you want to capture, then [air tap](hololens2-basic-usage.md#touch-holograms-near-you) to take a photo. You can continue to air tap and capture additional photos. Any photos you capture will be saved to your device.

Use the Start gesture again to end photo capture.  

## Capture a mixed reality video

There are several ways to record a video of mixed reality on HoloLens; you can use hardware buttons, voice, or the Start menu.

### Hardware buttons to record videos

The quickest way to record a video is to press and hold the **volume up** and **volume down** buttons simultaneously until a three-second countdown begins. To stop recording, tap both buttons simultaneously.

> [!NOTE]
> Quickly pressing the **volume up** and **volume down** buttons at the same time will take a photo rather than recording a video.

### Voice to record videos

Cortana can also record a video. Say: "Hey Cortana, start recording." To stop a video, say "Hey Cortana, stop recording."

### Start menu to record videos

Use the Start gesture to go to **Start**, then select the **video** icon. Point your head in the direction of what you want to capture, then [air tap](hololens2-basic-usage.md#touch-holograms-near-you) to start recording. There will be a three second countdown and your recording will begin.

To stop recording, use the Start gesture and select the highlighted **video** icon. The video will be saved to your device.

> [!NOTE]
> **Applies to HoloLens (1st gen) only**  
> The [Windows 10 October 2018 Update](https://docs.microsoft.com/windows/mixed-reality/release-notes-october-2018) changes how the Start gesture and Windows button behave on HoloLens (1st gen). Before the update, the Start gesture or Windows button would stop a video recording. After the update, however, the Start gesture or Windows button opens the **Start** menu (or the **quick actions menu** if you are in an immersive app), from which you can select the highlighted **video** icon to stop recording.

## Share what you see in real-time

You can share what you see in HoloLens with friends and colleagues in real-time. There are a few methods available:

1. Connecting to a Miracast-enabled device or adapter to watch on a TV.
1. Using [Windows Device Portal](https://docs.microsoft.com/windows/mixed-reality/using-the-windows-device-portal) to watch on a PC
1. Using the [Microsoft HoloLens companion app](https://www.microsoft.com/store/productId/9NBLGGH4QWNX) to watch on a PC.
1. Deploying the [Microsoft Dynamics 365 Remote Assist](https://dynamics.microsoft.com/en-us/mixed-reality/remote-assist) app, which enables front-line workers to stream what they see to a remote expert. The remote expert can then guide the front-line worker verbally or by annotating in their world.

> [!NOTE]
> Sharing what you see via Windows Device Portal or Microsoft HoloLens companion app requires your HoloLens to be in [Developer mode](https://docs.microsoft.com/windows/mixed-reality/using-the-windows-device-portal#setting-up-hololens-to-use-windows-device-portal).

### Stream video with Miracast

Use the Start gesture to go to **Start**, then select the **connect** icon. From the picker that appears, select the Miracast-enabled device or adapter to which you want to connect.

To stop sharing, use the Start gesture and select the highlighted **connect** icon. Because you were streaming, nothing will be saved to your device.

> [!NOTE]
> Miracast support was enabled on HoloLens (1st gen) beginning with the [Windows 10 October 2018 Update](https://docs.microsoft.com/windows/mixed-reality/release-notes-october-2018).

### Real time video with Windows Device Portal

Because sharing via Windows Device Portal requires Developer mode to be enabled on HoloLens, follow the instructions in our developer documentation to [set up Developer mode and navigate Windows Device Portal](https://docs.microsoft.com/windows/mixed-reality/using-the-windows-device-portal).

### Microsoft HoloLens companion app

Because sharing via the Microsoft HoloLens companion app requires Developer mode to be enabled on HoloLens, follow the instructions in our developer documentation to [set up Developer mode](https://docs.microsoft.com/windows/mixed-reality/using-the-windows-device-portal). Then, download the [Microsoft HoloLens companion app](https://www.microsoft.com/store/productId/9NBLGGH4QWNX) and follow the instructions within the app to connect to your HoloLens.

Once the app is set up with your HoloLens, select the **Live stream** option from the app's main menu.

## View your mixed reality photos and videos

Mixed reality photos and videos are saved to the device's "Camera Roll". You can browse the contents of this folder on your HoloLens with the File Explorer app (navigate to Pictures > Camera Roll).

You can also view your mixed reality photos and videos in the Photos app, which is pre-installed on HoloLens. To pin a photo in your world, select it in the Photos app and choose **Place in mixed world**. You can move the photo around your world after it's been placed.

To view and/or save your mixed reality photos and videos on a PC connected to HoloLens, you can use [Windows Device Portal](https://docs.microsoft.com/windows/mixed-reality/using-the-windows-device-portal#mixed-reality-capture) or your [PC's File Explorer via MTP](https://docs.microsoft.com/windows/mixed-reality/release-notes-april-2018#new-features-for-hololens).

## Share your mixed reality photos and videos

After capturing a mixed reality photo or video, a preview will appear. Select the **share** icon above the preview to bring up the share assistant. From there, you can select the end point to which you'd like to share that photo or video.

You can also share mixed reality photos and videos from OneDrive, by automatically uploading your mixed reality photos and videos. Open the OneDrive app on HoloLens and sign in with a personal [Microsoft account](https://account.microsoft.com) if you haven't already. Select the **settings** icon and choose **Camera upload**. Turn Camera upload on. Your mixed reality photos and videos will now be uploaded to OneDrive each time you launch the app on HoloLens.

> [!NOTE]
> You can only enable camera upload in OneDrive if you’re signed into OneDrive with a personal Microsoft account. If you set up HoloLens with a work or school account, you can add a personal Microsoft account in the OneDrive app to enable this feature.

## Limitations of mixed reality capture

- While using mixed reality capture, the framerate of HoloLens will be halved to 30 Hz.
- Videos have a maximum length of five minutes.
- The resolution of photos and videos may be reduced if the photo/video camera is already in use by another application, while live streaming, or when system resources are low.

## Default file format and resolution

### Default photo format and resolution

|  Device  |  Format  |  Extension  |  Resolution  |
|----------|----------|----------|----------|
| HoloLens 2 | [JPEG](https://en.wikipedia.org/wiki/JPEG) | .jpg | 3904x2196px |
| HoloLens (1st gen) | [JPEG](https://en.wikipedia.org/wiki/JPEG) | .jpg | 1408x792px |

### Recorded video format and resolution

| Device | Format | Extension | Resolution | Speed | Audio |
|----------|----------|----------|----------|----------|----------|
| HoloLens 2 | [MPEG-4](https://en.wikipedia.org/wiki/MPEG-4) | .mp4 | 1920x1080px | 30fps | 48kHz Stereo |
| HoloLens (1st gen) |  [MPEG-4](https://en.wikipedia.org/wiki/MPEG-4) | .mp4 | 1216x684px | 24fps | 48kHz Stereo |

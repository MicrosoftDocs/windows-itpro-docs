---
title: Troubleshoot HoloLens issues
description: Solutions for common HoloLens issues.
author: mattzmsft
ms.author: mazeller
ms.date: 12/02/2019
ms.prod: hololens
ms.topic: article
ms.custom: CSSTroubleshooting
audience: ITPro
ms.localizationpriority: medium
keywords: issues, bug, troubleshoot, fix, help, support, HoloLens
manager: jarrettr
ms.custom: 
- CI 111456
- CSSTroubleshooting
appliesto:
- HoloLens (1st gen)
- HoloLens 2
---

# Troubleshoot HoloLens issues

This article describes how to resolve several common HoloLens issues.

## My HoloLens is unresponsive or won't start

If your HoloLens won't start:

- If the LEDs next to the power button don't light up, or only one LED briefly blinks, you may need to [charge your HoloLens.](hololens-recovery.md#charging-the-device)
- If the LEDs light up when you press the power button but you can't see anything on the displays, [preform a hard reset of the device](hololens-recovery.md#hard-reset-procedure).

If your HoloLens becomes frozen or unresponsive:

- Turn off your HoloLens by pressing the power button until all five of the LEDs turn themselves off, or for 15 seconds if the LEDs are unresponsive. To start your HoloLens, press the power button again.

If these steps don't work, you can try [recovering your HoloLens 2 device](hololens-recovery.md) or [HoloLens (1st gen) device.](hololens1-recovery.md)

## Holograms don't look good

If your holograms are unstable, jumpy, or don't look right, try:

- Cleaning your device visor and sensor bar on the front of your HoloLens.
- Increasing the light in your room.
- Walking around and looking at your surroundings so that HoloLens can scan them more completely.
- Calibrating your HoloLens for your eyes. Go to **Settings** > **System** > **Utilities**. Under **Calibration**, select **Open Calibration**.

## HoloLens doesn't respond to gestures

To make sure that HoloLens can see your gestures.  Keep your hand in the gesture frame - when HoloLens can see your hand, the cursor changes from a dot to a ring.

Learn more about using gestures on [HoloLens (1st gen)](hololens1-basic-usage.md#use-hololens-with-your-hands) or [HoloLens 2](hololens2-basic-usage.md#the-hand-tracking-frame).

If your environment is too dark, HoloLens might not see your hand, so make sure that there's enough light.

If your visor has fingerprints or smudges, use the microfiber cleaning cloth that came with the HoloLens to clean your visor gently.

## HoloLens doesn't respond to my voice commands

If Cortana isn't responding to your voice commands, make sure Cortana is turned on. On the All apps list, select **Cortana** > **Menu** > **Notebook** > **Settings** to make changes. To learn more about what you can say, see [Use your voice with HoloLens](hololens-cortana.md).

## I can't place holograms or see holograms that I previously placed

If HoloLens can't map or load your space, it enters Limited mode and you won't be able to place holograms or see holograms that you've placed. Here are some things to try:

- Make sure that there's enough light in your environment so HoloLens can see and map the space.
- Make sure that you're connected to a Wi-Fi network. If you're not connected to Wi-Fi, HoloLens can't identify and load a known space.
- If you need to create a new space, connect to Wi-Fi, then restart your HoloLens.
- To see if the correct space is active, or to manually load a space, go to **Settings** > **System** > **Spaces**.
- If the correct space is loaded and you're still having problems, the space may be corrupt. To fix this issue, select the space, then select **Remove**. After you remove the space, HoloLens starts to map your surroundings and create a new space.

## My HoloLens can't tell what space I'm in

If your HoloLens can't identify and load the space you're in automatically, check the following factors:

- Make sure that you're connected to Wi-Fi
- Make sure that there's plenty of light in the room
- Make sure that there haven't been any major changes to the surroundings.

You can also load a space manually or manage your spaces by going to **Settings** > **System** > **Spaces**.

## I'm getting a "low disk space" error

You'll need to free up some storage space by doing one or more of the following:

- Delete some unused spaces. Go to **Settings** > **System** > **Spaces**, select a space that you no longer need, and then select **Remove**.
- Remove some of the holograms that you've placed.
- Delete some pictures and videos from the Photos app.
- Uninstall some apps from your HoloLens. In the **All apps** list, tap and hold the app you want to uninstall, and then select **Uninstall**.

## My HoloLens can't create a new space

The most likely problem is that you're running low on storage space. Try one of the [previous tips](#im-getting-a-low-disk-space-error) to free up some disk space.

## The HoloLens emulator isn't working

Information about the HoloLens emulator is located in our developer documentation.  Read more about [troubleshooting the HoloLens emulator](https://docs.microsoft.com/windows/mixed-reality/using-the-hololens-emulator#troubleshooting).

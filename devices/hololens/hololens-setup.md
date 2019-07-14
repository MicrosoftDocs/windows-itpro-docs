---
title: Set up a new HoloLens
description: Unboxing a new HoloLens is exciting.  This guide walks through first time set up.  You'll need a Wi-Fi network and either a Microsoft (MSA) or Azure Active Directory (AAD) account.
ms.prod: hololens
ms.sitesec: library
author: scooley
ms.author: scooley
ms.topic: quickstart
ms.localizationpriority: medium
ms.date: 07/14/2019
---

# Set up HoloLens for the first time

Unboxing a new HoloLens is exciting.  Follow along to set up a HoloLens for the first time.  At the end of this quickstart, you'll be able to use HoloLens and navigate HoloLens settings on-device.

This is a high level unboxing guide to become familiar with HoloLens.  
See [Set up HoloLens in the enterprise](hololens-requirements.md) to configure HoloLens for scale enterprise deployment and ongoing device management.

## Prerequisites

- Internet access.
  - Wi-Fi is the easiest way to do first set up on both HoloLens and HoloLens 2.  It can be an open Wi-Fi or password-protected Wi-Fi network; the Wi-Fi network does not need to provide access to enterprise resources or intranet sites.
  - HoloLens 2 can connect to the internet via ethernet and a USB-C adapter.
- a user account - Microsoft (MSA) or Azure Active Directory (AAD)

## Prepare for first-boot

Become familiar with the HoloLens hardware and prepare to turn your HoloLens on for the first time.

1. Be sure your HoloLens is [charged](https://support.microsoft.com/help/12627)
1. [Adjust fit](https://support.microsoft.com/help/12632) for a comfortable fit.
1. [Turn on HoloLens](https://support.microsoft.com/help/12642). You will be guided through a calibration procedure and how to perform [the gestures](https://support.microsoft.com/help/12644/hololens-use-gestures) that you will use to operate HoloLens.

## Set up your HoloLens

Set up your HoloLens and your user account.

1. Connect to the internet (select Wi-Fi).
1. Sign in to your user account.  You'll choose between **My work or school owns it** and **I own it**.
    - When you choose **My work or school owns it**, you sign in with an Azure AD account. If your organization uses Azure AD Premium and has configured automatic MDM enrollment, HoloLens will be enrolled in MDM. If your organization does not use Azure AD Premium, automatic MDM enrollment isn't available, so you will need to [enroll HoloLens in device management manually](hololens-enroll-mdm.md#enroll-through-settings-app).
        1. Enter your organizational account.
        2. Accept privacy statement.
        3. Sign in using your Azure AD credentials. This may redirect to your organization's sign-in page.
        4. Continue with device setup.
    - When you choose **I own it**, you sign in with a Microsoft account. After setup is complete, you can [enroll HoloLens in device management manually](hololens-enroll-mdm.md#enroll-through-settings-app).
        1. Enter your Microsoft account.
        2. Enter your password. If your Microsoft account requires [two-step verification (2FA)](https://blogs.technet.microsoft.com/microsoft_blog/2013/04/17/microsoft-account-gets-more-secure/), complete the verification process.
1. The device sets your time zone based on information obtained from the Wi-Fi network.
1. Follow the first-start guides to learn how to interact with holograms, control the HoloLens with your voice, and access the start menu.

Congratulations!  Setup is complete and you can begin using HoloLens.

## Explore HoloLens

### Check out on-device settings and desktop

HoloLens doesn't have an on-device command line.  With that in mind, the settings section in HoloLens plays an important role in diagnosing problems on-device.  Understanding the information available to HoloLens users will pay dividends when troubleshooting or configuring the device.

Open settings by opening the start menu and clicking on the **Settings** in the top bar.  You can also ask Cortana to open settings.

Follow [this guide](https://docs.microsoft.com/en-us/windows/mixed-reality/navigating-the-windows-mixed-reality-home) to navigate around the HoloLens home.

### Connect bluetooth devices

Connecting a bluetooth keyboard makes typing on HoloLens as efficient as a Windows PC.

[Connect a bluetooth keyboard or clicker](https://support.microsoft.com/en-us/help/12636).

## Next steps

Start planning for HoloLens at scale with HoloLens' enterprise management features.

> [!div class="nextstepaction"]
> [HoloLens in the enterprise](hololens-requirements.md)
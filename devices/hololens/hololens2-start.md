---
title: HoloLens 2 first start
description: This guide walks through first time set up.  You'll need a Wi-Fi network and either a Microsoft (MSA) or Azure Active Directory (AAD) account.
ms.assetid: 507305f4-e85a-47c5-a055-a3400ae8a10e
ms.date: 08/07/2019
keywords: hololens
ms.prod: hololens
ms.sitesec: library
author: scooley
ms.author: scooley
ms.topic: article
ms.localizationpriority: medium
appliesto:
- HoloLens 2
---

# Set up HoloLens 2 for the first time

The first time you turn on your HoloLens, you'll be guided through setting up your device, signing in with a user account, and calibrating HoloLens to your eyes.  This section walks through the HoloLens 2 first start experience.

In the next section, you'll learn how to work with HoloLens and interact with holograms.  Skip ahead to [Get started with HoloLens 2](hololens2-basic-usage.md).

## Before you start

Before you get started, make sure you have the following available:

**A network connection**. You'll need to connect your HoloLens to a network to set it up. With HoloLens 2, you can connect with Wi-Fi or using ethernet (you'll need a USB-C to ethernet adapter).  
The first time you connect, you'll need an open or password-protected network that doesn't require navigating to a website or using certificates to connect. Setup uses [the following websites](hololens-offline.md).

**A Microsoft account**. You'll also need to sign in to HoloLens with a Microsoft account (or with your work account, if your organization owns the device). If you don't have a Microsoft account, go to [account.microsoft.com](http://account.microsoft.com) and set one up for free.

**A safe, well-lit space with no tripping hazards**. [Health and safety info](http://go.microsoft.com/fwlink/p/?LinkId=746661).

**The optional comfort accessories** that came with your HoloLens, to help you get the most comfortable fit. [More on fit and comfort](hololens2-setup.md#adjust-fit).

## Set up Windows

The first run experience will let you Set up Windows Holographic on your HoloLens 2.  When you start your HoloLens, you will hear music and see a Windows logo to get started.

![First screen during first boot](images/01-magic-moment.png)

HoloLens 2 will walk you through the following steps:

1. Select your language.
    ![Select language](images/04-language.png)

1. Select your region.
    ![Select region](images/05-region.png)

1. Calibrate HoloLens to your eyes.  You can choose to skip calibration, in which case you'll be prompted next time you log in.

    To calibrate, you'll look at a set of targets (gems). It's fine if you blink or close your eyes during calibration but try not to stare at other objects in the room.  This allows HoloLens to learn about your eye position to render your holographic world.  After calibration, holograms will appear correctly even as the visor shifts on your head.

    Calibration information is stored locally on the device and is not associated with any account information. Read more about data security [here].

    ![Calibration selection screen](images/06-et-corners.png)

1. Connect to the internet (select Wi-Fi or your ethernet connection).
    > HoloLens sets your time zone automatically based on information obtained from the Wi-Fi network. This can be changed later from Settings.

    ![Connect to Wi-Fi](images/11-network.png)

1. Sign in to your user account.  You'll choose between **My work or school owns it** and **I own it**.
    - When you choose **My work or school owns it**, you sign in with an Azure AD account. If your organization uses Azure AD Premium and has configured automatic MDM enrollment, HoloLens will be enrolled in MDM. If your organization does not use Azure AD Premium, automatic MDM enrollment isn't available, so you will need to [enroll HoloLens in device management manually](hololens-enroll-mdm.md#enroll-through-settings-app).
        1. Enter your organizational account.
        2. Accept privacy statement and end user license agreement.
        3. Sign in using your Azure AD credentials. This may redirect to your organization's sign-in page.
        4. Continue with device setup.
    - When you choose **I own it**, you sign in with a Microsoft account. After setup is complete, you can [enroll HoloLens in device management manually](hololens-enroll-mdm.md#enroll-through-settings-app).
        1. Enter your Microsoft account.
        2. Enter your password. If your Microsoft account requires [two-step verification (2FA)](https://blogs.technet.microsoft.com/microsoft_blog/2013/04/17/microsoft-account-gets-more-secure/), complete the verification process.

    ![Set user](images/13-device-owner.png)

1. Make a choice for enabling speech on HoloLens 2 and diagnostic telemetry.
    ![Enable Cortana](images/22-do-more-with-voice.png)

1. Choose your telemetry level.  If you can, please enable Full telemetry, it really helps the HoloLens engineering team.
     ![Telemetry level](images/24-telemetry.png)

1. Learn how to use the Start gesture on HoloLens 2.
     ![Learn how to use the Start gesture](images/26-01-startmenu-learning.png)
     ![Learn how to use the Start gesture](images/26-02-startmenu-learning.png)

Congratulations!  Setup is complete and you can begin using HoloLens.

## Next steps

> [!div class="nextstepaction"]
> [Get started with HoloLens 2](hololens2-basic-usage.md)

---
title: Set up HoloLens (1st gen)
description: This guide walks through first time set up.  You'll need a Wi-Fi network and either a Microsoft (MSA) or Azure Active Directory (Azure AD) account.
ms.assetid: 0136188e-1305-43be-906e-151d70292e87
ms.prod: hololens
author: Teresa-Motiv
ms.author: v-tea
ms.topic: article
ms.date: 8/12/2019
manager: jarrettr
ms.topic: article
ms.localizationpriority: high
appliesto:
- HoloLens (1st gen)
---

# Set up your HoloLens (1st gen)

The first time you turn on your HoloLens, you'll be guided through calibrating your device, setting up your device, and signing in.  This article walks through the HoloLens (1st gen) first start and setup experience.

In the next section, you'll learn how to work with HoloLens and interact with holograms. To skip ahead to that article, see [Get started with HoloLens (1st gen)](hololens1-basic-usage.md).

## Before you start

Before you get started, make sure you have the following available:

**A Wi-Fi connection**. You'll need to connect your HoloLens to a Wi-Fi network to set it up. The first time you connect, you'll need an open or password-protected network that doesn't require navigating to a website or using certificates to connect. [Learn more about the websites that HoloLens uses](hololens-offline.md).

**A Microsoft account or a work account**. You'll also need to use a Microsoft account (or a work account, if your organization owns the device) to sign in to HoloLens. If you don't have a Microsoft account, go to [account.microsoft.com](https://account.microsoft.com) and set one up for free.

**A safe, well-lit space with no tripping hazards**. [Health and safety info](https://go.microsoft.com/fwlink/p/?LinkId=746661).

**The optional comfort accessories** that came with your HoloLens, to help you get the most comfortable fit. [More on fit and comfort](https://support.microsoft.com/help/12632/hololens-fit-your-hololens).

> [!NOTE]
>  
> - The first time that you use your HoloLens, [Cortana](hololens-cortana.md) is already on and ready to guide you (though she won't be able to respond to your questions until after you set up your device). You can turn Cortana off at any time in Cortana's settings.
> - In order to switch to the Chinese or Japanese version of HoloLens, you’ll need to download the build for the language on a PC and then install it on your HoloLens. For more information, see [Install localized versions of HoloLens (1st gen)](hololens1-install-localized.md).

## Start your Hololens and set up Windows

The first time you start your HoloLens, your first task is to set up Windows Holographic on your device.

1. Connect to the internet (HoloLens guides you to select Wi-Fi network).

1. Sign in to your user account. Choose between **My work or school owns it** and **I own it**.
    - When you choose **My work or school owns it**, you sign in by using an Azure AD account. If your organization uses Azure AD Premium and has configured automatic MDM enrollment, HoloLens automatically enrolls in MDM. If your organization does not use Azure AD Premium, automatic MDM enrollment isn't available, so you will need to [manually enroll HoloLens in device management](hololens-enroll-mdm.md#enroll-through-settings-app). To sign in to your device the first time by using a work or school account, follow these steps:
        1. Enter your organizational account information.
        1. Accept the privacy statement.
        1. Sign in by using your Azure AD credentials. This may redirect to your organization's sign-in page.
        1. Continue setting up the device.
    - When you choose **I own it**, you sign in by using a Microsoft account. After setup is complete, you can [manually enroll HoloLens in device management](hololens-enroll-mdm.md#enroll-through-settings-app).
        1. Enter your Microsoft account information.
        1. Enter your password. If your Microsoft account requires [two-step verification (2FA)](https://blogs.technet.microsoft.com/microsoft_blog/2013/04/17/microsoft-account-gets-more-secure/), complete the verification process.

1. The device sets your time zone based on information that it obtains from the Wi-Fi network.

## Calibration

After Cortana introduces herself, the next setup step is calibration. For the best HoloLens experience, you should complete the calibration process during setup.

HoloLens (1st gen) uses the distance between your pupils (IPD or [interpupillary distance](https://en.wikipedia.org/wiki/Interpupillary_distance)) to make holograms clear and easy to interact with. If the IPD is not correct, holograms may appear to be unstable or at an incorrect distance.

During calibration, HoloLens asks you to align your finger with a series of six targets per eye. HoloLens uses this process to set the correct IPD for your eyes. If the calibration needs to be updated or adjusted for a new user, the new user can run the Calibration app  outside of setup.

![IPD finger-alignment screen at second step](./images/ipd-finger-alignment-300px.jpg)

*IPD finger-alignment screen at second step*

Congratulations! Setup is complete and you can begin using HoloLens.

## Next steps

> [!div class="nextstepaction"]
> [Get started with HoloLens (1st gen)](hololens1-basic-usage.md)

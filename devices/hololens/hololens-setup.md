---
title: Set up HoloLens (HoloLens)
description: The first time you set up HoloLens, you'll need a Wi-Fi network and either a Microsoft or Azure Active Directory account.
ms.prod: hololens
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.date: 07/27/2017
---

# Set up HoloLens

Before you get started setting up your HoloLens, make sure you have a Wi-Fi network and a Microsoft account or an Azure Active Directory (Azure AD) account. 

## Network connectivity requirements

The first time you use your HoloLens, you'll be guided through connecting to a Wi-Fi network. You need to connect HoloLens to a Wi-Fi network with Internet connectivity so that the user account can be authenticated.

- It can be an open Wi-Fi or password-protected Wi-Fi network.
- The Wi-Fi network cannot require certificates to connect.
- The Wi-Fi network does not need to provide access to enterprise resources or intranet sites. 

## HoloLens setup

The HoloLens setup process combines a quick tutorial on using HoloLens with the steps needed to connect to the network and add an account.

1. Be sure your HoloLens is [charged](https://support.microsoft.com/help/12627), then [adjust it](https://support.microsoft.com/help/12632) for a comfortable fit.
2. [Turn on HoloLens](https://support.microsoft.com/help/12642). You will be guided through a calibration procedure and how to perform [the gestures](https://support.microsoft.com/help/12644/hololens-use-gestures) that you will use to operate HoloLens.
3. Next, you'll be guided through connecting to a Wi-Fi network. 
4. After HoloLens connects to the Wi-Fi network, you select between **My work or school owns it** and **I own it**. 
    - When you choose **My work or school owns it**, you sign in with an Azure AD account. If your organization uses Azure AD Premium and has configured automatic MDM enrollment, HoloLens will be enrolled in MDM. If your organization does not use Azure AD Premium, automatic MDM enrollment isn't available, so you will need to [enroll HoloLens in device management manually](hololens-enroll-mdm.md#enroll-through-settings-app).
        1. Enter your organizational account. 
        2. Accept privacy statement.
        3. Sign in using your Azure AD credentials. This may redirect to your organization's sign-in page.
        4. Continue with device setup.
    - When you choose **I own it**, you sign in with a Microsoft account. After setup is complete, you can [enroll HoloLens in device management manually](hololens-enroll-mdm.md#enroll-through-settings-app).
        1. Enter your Microsoft account. 
        2. Enter your password. If your Microsoft account requires [two-step verification (2FA)](https://blogs.technet.microsoft.com/microsoft_blog/2013/04/17/microsoft-account-gets-more-secure/), complete the verification process. 
5. The device sets your time zone based on information obtained from the Wi-Fi network. 
6. Next, you learn how to perform the bloom gesture and how to select and place the Start screen. After you place the Start screen, setup is complete and you can begin using HoloLens.



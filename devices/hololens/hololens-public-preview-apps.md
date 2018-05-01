---
title: Get early access to preview new modern workplace apps
description: Distribute and use HoloLens modern workplace apps during public preview
ms.prod: w10
ms.mktglfcycl: manage
ms.pagetype: hololens, devices
ms.sitesec: library
author: alhopper
ms.localizationpriority: medium
ms.date: 05/07/2018
---
# Get ready to preview new modern workplace apps

Microsoft has just announced two new modern workplace apps coming to HoloLens: Remote Assist and Layout.

On May 22, 2018, these apps will be available to download and distribute across your organization as part of a public preview. In the meantime, here's what you need to know to prepare for the public preview of each app, to make sure your roll-out is smooth and seamless.

## Remote Assist

Remote Assist uses Microsoft Teams to facilitate two-way, real time, audio and video communication between a remote HoloLens user, and a user at a PC or mobile device. The HoloLens user can project their view into Microsoft Teams, where the PC user can use inking annotations to mark it up with text and icons. The HoloLens user will see the inking appear within their device in real time.

Here are the requirements you'll need to meet in order to distribute Remote Assist throughout your organization:

* **PC, iOS, and/or Android devices**: To communicate with the HoloLens. The PC must have a minimum Windows OS version of {minimum required version here}.
* **HoloLens with RS4 build**: The HoloLens RS4 build will become publicly available at the same time as the modern workplace apps. There are two ways to ensure your HoloLens has the required build:
  * On May 22, update the HoloLens operating system. See [Manage updates to HoloLens](https://docs.microsoft.com/en-us/HoloLens/hololens-updates) for instructions on using Windows Update for Business, MDM, and Windows Server Update Service (WSUS) to deploy updates to HoloLens.
  * Get started testing out the RS4 build in advance of May 22. See [HoloLens RS4 Preview](https://docs.microsoft.com/en-us/windows/mixed-reality/hololens-rs4-preview) for instructions on flashing the build to your device, and details on how the preview build will impact content stored on your HoloLens.
* **Azure Active Directory (Azure AD)**: Required for app distribution through the Microsoft Store for Business. See [Get started with Azure AD](https://docs.microsoft.com/en-us/azure/active-directory/get-started-azure-ad) to learn more about Azure AD and licensing users.
* **Microsoft Teams**: Microsoft Teams is the backbone that facilitates communication in Remote Assist. All devices that will make calls to the HoloLens will need to have Microsoft Teams installed. See the [Overview of Microsoft Teams](https://docs.microsoft.com/en-us/MicrosoftTeams/teams-overview) to learn more.
* **Microsoft Office 365**: Because Microsoft Teams is part of Office 365, all users who will make calls from their PC/phone to the HoloLens will need an Office 365 license. See [Office 365 licensing for Microsoft Teams](https://docs.microsoft.com/en-us/MicrosoftTeams/office-365-licensing) to learn more.
* **Network requirements**: 1.5Mb/s is the bandwidth required to enable the full feature set. If your organization's bandwidth does not meet these requirements, HoloLens will shut down features to adapt to reduced bandwidth, limiting the experience to audio calls only. Please test your company’s network bandwidth by performing the following steps:
   1. Have a mobile Teams user (iOS or Android) video call a desktop Teams user.
   2. Once the video call has been successfully connected between user 1 and 2, add another separate video call between a 3rd and 4th user, and another for a 5th and 6th user.
   3. Continue adding video callers to stress test your network bandwidth until confident that multiple users can successfully connect on video calls at the same time.
   4. See [Preparing your organization's network for Microsoft Teams](https://docs.microsoft.com/en-us/MicrosoftTeams/prepare-network) to learn more.

## Layout

Layout enables you to scan a space using the HoloLens, or import a space from another app, and design it using pre-loaded assets.

Here are the requirements you'll need to meet in order to distribute Layout throughout your organization:

* **PC with Windows OS version {minimum required version here}**
* **HoloLens with RS4 build, or Windows Mixed Reality headset**:
  * If you're using a HoloLens, it must be running the RS4 build. There are two ways to ensure your HoloLens has the required build:
    * RS4 will be available as an update on May 22nd. See [Manage updates to HoloLens](https://docs.microsoft.com/en-us/HoloLens/hololens-updates) for instructions on using Windows Update for Business, MDM, and Windows Server Update Service (WSUS) to deploy updates to HoloLens on May 22nd.
    * You can get started testing out the RS4 build in advance of May 22nd. See [HoloLens RS4 Preview](https://docs.microsoft.com/en-us/windows/mixed-reality/hololens-rs4-preview) for instructions on flashing the build to your device, and details on how the preview build will impact content stored on your HoloLens.
  * If you're using a Windows Mixed Reality headset, your PCs will need to be able to support it. See [Windows Mixed Reality PC hardware guidelines](https://support.microsoft.com/en-us/help/4039260/windows-10-mixed-reality-pc-hardware-guidelines) for specific hardware requirements. We recommend following the **Windows Mixed Reality Ultra** hardware guidelines.
* **Azure Active Directory (Azure AD)**: Required for app distribution through the Microsoft Store for Business. See [Get started with Azure AD](https://docs.microsoft.com/en-us/azure/active-directory/get-started-azure-ad) to learn more about Azure AD and licensing users.
* **Network requirements**: Internet access is required to download the app, and utilize all of its features. There are no bandwidth requirements.

## Questions and support

You can ask questions and engage with our team in the [Mixed Reality Tech Community](https://techcommunity.microsoft.com/t5/Mixed-Reality/ct-p/MixedReality).
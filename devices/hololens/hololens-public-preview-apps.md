---
title: Get early access to preview new mixed reality apps for HoloLens
description: Here's what you need to know to prepare for the public preview of new mixed reality apps for HoloLens
ms.prod: w10
ms.mktglfcycl: manage
ms.pagetype: hololens, devices
ms.sitesec: library
author: alhopper
ms.localizationpriority: medium
ms.date: 05/07/2018
---
# Get ready to preview new mixed reality apps for HoloLens

Microsoft has just announced two new mixed reality apps coming to HoloLens: Microsoft Remote Assist and Microsoft Layout.

On May 22, 2018, these apps will be available to download for free for a limited time from the [Microsoft Store](https://www.microsoft.com/en-us/store/apps) and [Microsoft Store for Business](https://businessstore.microsoft.com/en-us/store). At that time you'll be able to distribute the apps across your organization as part of a public preview. In the meantime, here's what you need to know to prepare for the public preview of each app, to make sure your roll-out is smooth and seamless.

## Microsoft Remote Assist

Microsoft Remote Assist enables collaboration in mixed reality to solve problems faster. Firstline workers can collaborate remotely with heads-up, hands-free video calling, image sharing, and mixed reality annotations. They can share what they see with an expert on Microsoft Teams, while staying hands-on to solve problems and complete tasks together, faster.

Below, you'll find the technical requirements you'll need to meet in order to distribute Microsoft Remote Assist throughout your organization when it's available from the [Microsoft Store](https://www.microsoft.com/en-us/store/apps) and [Microsoft Store for Business](https://businessstore.microsoft.com/en-us/store) on May 22, 2018.

### Device requirements

| Device                     | OS requirements                   | Details                                                    |
|:---------------------------|:----------------------------------|:-----------------------------------------------------------|
| HoloLens                   | RS1, build 10.0.14393.0           | See [Manage updates to HoloLens](https://docs.microsoft.com/en-us/HoloLens/hololens-updates) for instructions on using Windows Update for Business, MDM, and Windows Server Update Service (WSUS) to deploy updates to HoloLens.   |
| Windows 10 PC (optional)   | Any Windows 10 build              | You can use a Windows 10 PC to collaborate with the HoloLens. |
| Mobile device (optional)   | Android or iOS                    | You can use a mobile device to collaborate with the HoloLens. Inking, annotations, and image insertion are not currently available on mobile.                        |

> [!Note]
> RS1 OS build 10.0.14393.0 is the minimum HoloLens build that supports Remote Assist. We recommend updating the HoloLens to newer versions when they are available.

### Licensing & product requirements

| Product required                  | Details           | Learn more        |
|:----------------------------------|:------------------|:------------------|
| Azure Active Directory (Azure AD) | Required to log users into the Remote Assist app through Microsoft Teams. Also required for app distribution through the [Microsoft Store for Business](https://docs.microsoft.com/en-us/microsoft-store/sign-up-microsoft-store-for-business). If you choose not to distribute the app through the Microsoft Store for Business, users can also install Remote Assist on a HoloLens or PC from the [Microsoft store](https://www.microsoft.com/en-us/store/apps) using their Microsoft Account credentials (MSA). | [Get started with Azure AD](https://docs.microsoft.com/en-us/azure/active-directory/get-started-azure-ad) |
| Microsoft Teams                   | Microsoft Teams is the backbone that facilitates communication in Remote Assist. All devices that will make calls to the HoloLens will need to have Microsoft Teams installed. | [Overview of Microsoft Teams](https://docs.microsoft.com/en-us/MicrosoftTeams/teams-overview) |
| Microsoft Office 365              | Because Microsoft Teams is part of Office 365, all users who will make calls from their PC/phone to the HoloLens will need an Office 365 license. | [Office 365 licensing for Microsoft Teams](https://docs.microsoft.com/en-us/MicrosoftTeams/office-365-licensing) |

### Network requirements

1.5 MB/s is the recommended bandwidth for optimal performance of Microsoft Remote Assist. Though audio/video calls may be possible in environments with reduced bandwidth, you may experience HoloLens feature degradation, limiting the user experience. To test your company’s network bandwidth, we suggest following the steps outlined below:

   1. Have a mobile Teams user (iOS or Android) video call a desktop Teams user.
   2. Once the video call has been successfully connected between user 1 and 2, add another separate video call between a 3rd and 4th user, and another for a 5th and 6th user.
   3. Continue adding video callers to stress test your network bandwidth until confident that multiple users can successfully connect on video calls at the same time.

See [Preparing your organization's network for Microsoft Teams](https://docs.microsoft.com/en-us/MicrosoftTeams/prepare-network) to learn more.

## Microsoft Layout

Bring designs from concept to completion with confidence and speed using Microsoft Layout. Import 3D models to easily create room layouts in real-world scale. Experience designs as high-quality holograms in physical or virtual space and edit in real time. With Microsoft Layout, see ideas in context, saving valuable time and money.

Below, you'll find the device options, and technical requirements, you'll need to consider in order to distribute Layout throughout your organization when it's available from the [Microsoft Store](https://www.microsoft.com/en-us/store/apps) and [Microsoft Store for Business](https://businessstore.microsoft.com/en-us/store) on May 22, 2018.

### Device options

You can use Microsoft Layout with a HoloLens, or with a Windows Mixed Reality immersive headset with motion controllers.

#### HoloLens requirements

| OS requirements                   | Details                                                    |
|:----------------------------------|:-----------------------------------------------------------|
| HoloLens, with RS4 build          | This build will be available as a HoloLens update on May 22, to align with the app release. Instructions for upgrading to the RS4 build are forthcoming. |

Alternately, you can get started testing out the RS4 build in advance of May 22. See [HoloLens RS4 Preview](https://docs.microsoft.com/en-us/windows/mixed-reality/hololens-rs4-preview) for instructions on flashing the RS4 build to your device. Be advised that doing so will erase all content on the device, and will put the device on track to receive future pre-released versions of the OS which may exhibit bugs and issues. We recommend using preview builds for testing only.

#### Windows Mixed Reality immersive headset requirements

| OS requirements                               | Details                                                    |
|:----------------------------------------------|:-----------------------------------------------------------|
| Windows 10 PC with build 16299.0 or higher    | The Windows 10 PC hardware must be able to support the headset. See [Windows Mixed Reality PC hardware guidelines](https://support.microsoft.com/en-us/help/4039260/windows-10-mixed-reality-pc-hardware-guidelines) for specific hardware requirements. We recommend following the **Windows Mixed Reality Ultra** hardware guidelines.  |
| Motion controllers                            | Motion controllers are hardware accessories that allow users to take action in mixed reality. See [Motion controllers](https://docs.microsoft.com/en-us/windows/mixed-reality/motion-controllers) to learn more.  |

### Technical requirements

Have the following technical requirements in place to start using Microsoft Layout as soon as it's available:

| Requirement                       | Details           | Learn more        |
|:----------------------------------|:------------------|:------------------|
| Azure Active Directory (Azure AD) | Required for app distribution through the [Microsoft Store for Business](https://docs.microsoft.com/en-us/microsoft-store/sign-up-microsoft-store-for-business). If you choose not to distribute the app through the Microsoft Store for Business, users can also install Layout on a HoloLens or PC from the [Microsoft Store](https://www.microsoft.com/en-us/store/apps) using their Microsoft Account credentials (MSA). | [Get started with Azure AD](https://docs.microsoft.com/en-us/azure/active-directory/get-started-azure-ad) |
| Network connectivity              | Internet access is required to download the app, and utilize all of its features. There are no bandwidth requirements.    | |
| Apps for sharing                  | Video calling or screen sharing requires a separate app, such as Microsoft Remote Assist on HoloLens, or Skype or Skype for Business on Windows Mixed Reality headsets.<br/><br/>A Windows 10 PC that meets the Windows Mixed Reality Ultra specifications is also required for video calling or screen sharing when using Layout with a Windows Mixed Reality headset. | [Remote Assist](#remote-assist) <br/><br/>[Windows Mixed Reality PC hardware guidelines](https://support.microsoft.com/en-us/help/4039260/windows-10-mixed-reality-pc-hardware-guidelines) |
| Import Tool for Microsoft Layout  | The Import Tool for Microsoft Layout is a companion app for Layout that makes model optimization and management easy. The Import Tool is required to transfer existing 3D models from your PC to Microsoft Layout, for viewing and editing on HoloLens or a Windows Mixed Reality headset. To import 3D models, users must download and launch the Import Tool for Microsoft Layout on their PC, available for free from the [Microsoft Store](https://www.microsoft.com/en-us/store/apps) and [Microsoft Store for Business](https://businessstore.microsoft.com/en-us/store) starting May 22nd. The Import Tool is also required to transfer Visio space dimensions to the HoloLens or Windows Mixed Reality headset. |   |

### Visio Add-in for Microsoft Layout

The free Visio Add-in for Microsoft Layout enables you to import space dimensions from Visio to view and edit on HoloLens or in Windows Mixed Reality. The Import Tool for Microsoft Layout is also required.

Be sure to grab the Import Tool and Visio Add-in for Microsoft Layout from the [Microsoft Store](https://www.microsoft.com/en-us/store/apps) or [Microsoft Store for Business](https://businessstore.microsoft.com/en-us/store) on May 22 if you'd like to import, view, and edit space dimensions from Visio.

## Questions and support

You can ask questions and engage with our team in the [Mixed Reality Tech Community](https://techcommunity.microsoft.com/t5/Mixed-Reality/ct-p/MixedReality).
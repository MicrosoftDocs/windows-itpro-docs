---
title: Get early access to preview new modern workplace apps
description: Prepare to meet technical requirements to use HoloLens modern workplace apps during public preview
ms.prod: w10
ms.mktglfcycl: manage
ms.pagetype: hololens, devices
ms.sitesec: library
author: alhopper
ms.localizationpriority: medium
ms.date: 05/07/2018
---
# Get ready to preview new modern workplace apps

Microsoft has just announced two new modern workplace apps coming to HoloLens: Microsoft Remote Assist and Microsoft Layout.

On May 22, 2018, these apps will be available to download and distribute across your organization as part of a public preview. In the meantime, here's what you need to know to prepare for the public preview of each app, to make sure your roll-out is smooth and seamless.

## Microsoft Remote Assist

Microsoft Remote Assist supports collaboration in mixed reality to solve problems faster. Firstline workers can collaborate remotely with heads-up, hands-free video calling, image sharing, and mixed reality annotations. They can share what they see with an expert, while staying hands-on to solve problems and complete tasks together, faster.

Below, you'll find the technical requirements you'll need to meet in order to distribute Remote Assist throughout your organization when it's available on May 22, 2018.

### Device requirements

| Device                     | OS requirements                   | Details                                                    |
|:---------------------------|:----------------------------------|:-----------------------------------------------------------|
| HoloLens                   | RS1, build 10.0.14393.0           | See [Manage updates to HoloLens](https://docs.microsoft.com/en-us/HoloLens/hololens-updates) for instructions on using Windows Update for Business, MDM, and Windows Server Update Service (WSUS) to deploy updates to HoloLens.   |
| Windows 10 PC (optional)   | Any Windows 10 build              | You can use a Windows 10 PC to collaborate with the HoloLens. |
| Mobile device (optional)   | Android or iOS                    | You can use a mobile device to collaborate with the HoloLens, and see a video stream of the HoloLens call. Inking, annotations, and image insertion is not available on mobile devices.                        |

> [!Note]
> Build 10.0.14393.0 is the minimum HoloLens build that supports Remote Assist. We recommend updating the HoloLens to newer versions when they are available.

### Licensing & product requirements

| Product required                  | Details           | Learn more        |
|:----------------------------------|:------------------|:------------------|
| Azure Active Directory (Azure AD) | Required for app distribution through the Microsoft Store for Business. | [Get started with Azure AD](https://docs.microsoft.com/en-us/azure/active-directory/get-started-azure-ad) |
| Microsoft Teams                   | Microsoft Teams is the backbone that facilitates communication in Remote Assist. All devices that will make calls to the HoloLens will need to have Microsoft Teams installed. | [Overview of Microsoft Teams](https://docs.microsoft.com/en-us/MicrosoftTeams/teams-overview) |
| Microsoft Office 365              | Because Microsoft Teams is part of Office 365, all users who will make calls from their PC/phone to the HoloLens will need an Office 365 license. | [Office 365 licensing for Microsoft Teams](https://docs.microsoft.com/en-us/MicrosoftTeams/office-365-licensing) |

### Network requirements

1.5Mb/s is the bandwidth required to enable the full feature set. If your organization's bandwidth does not meet these requirements, you may notice HoloLens feature degradation, limiting the user experience. Please test your company’s network bandwidth by performing the following steps:

   1. Have a mobile Teams user (iOS or Android) video call a desktop Teams user.
   2. Once the video call has been successfully connected between user 1 and 2, add another separate video call between a 3rd and 4th user, and another for a 5th and 6th user.
   3. Continue adding video callers to stress test your network bandwidth until confident that multiple users can successfully connect on video calls at the same time.

See [Preparing your organization's network for Microsoft Teams](https://docs.microsoft.com/en-us/MicrosoftTeams/prepare-network) to learn more.

## Microsoft Layout

Microsoft Layout enables users to design spaces in context with mixed reality. Bring designs from concept to completion with confidence and speed. Import 3D models to easily create and edit room layouts in real-world scale. Experience designs as high-quality holograms in physical space or in virtual reality and share and edit with stakeholders in real time.

Below, you'll find the device options, and technical requirements, you'll need to consider in order to distribute Layout throughout your organization when it's available on May 22, 2018.

### Device options

You can use Microsoft Layout with a HoloLens, or with a Windows Mixed Reality immersive headset with motion controllers.

HoloLens requirements:

| OS requirements                   | Details                                                    |
|:----------------------------------|:-----------------------------------------------------------|
| HoloLens, with RS4 build          | This build will be available as a HoloLens update on May 22, to align with the app release. See [Manage updates to HoloLens](https://docs.microsoft.com/en-us/HoloLens/hololens-updates) for instructions on using Windows Update for Business, MDM, and Windows Server Update Service (WSUS) to deploy updates to HoloLens.  |

> [!Note]
> You can get started testing out the RS4 build in advance of May 22. See [HoloLens RS4 Preview](https://docs.microsoft.com/en-us/windows/mixed-reality/hololens-rs4-preview) for instructions on flashing the RS4 build to your device. Be advised that doing so will erase all content on the device, and will put the device on track to receive future pre-released versions of the OS which may exhibit bugs and issues. We recommend using preview builds for testing only.

Windows Mixed Reality headset requirements:

| OS requirements                               | Details                                                    |
|:----------------------------------------------|:-----------------------------------------------------------|
| Windows 10 PC with build 16299.0 or higher    | The Windows 10 PC hardware must be able to support the headset. See [Windows Mixed Reality PC hardware guidelines](https://support.microsoft.com/en-us/help/4039260/windows-10-mixed-reality-pc-hardware-guidelines) for specific hardware requirements. We recommend following the **Windows Mixed Reality Ultra** hardware guidelines.  |

### Technical requirements

Have the following technical requirements in place to start using Layout as soon as it's available:

* **Azure Active Directory (Azure AD)**: Required for app distribution through the Microsoft Store for Business. See [Get started with Azure AD](https://docs.microsoft.com/en-us/azure/active-directory/get-started-azure-ad) to learn more about Azure AD and licensing users.
* **Network requirements**: Internet access is required to download the app, and utilize all of its features. There are no bandwidth requirements.

### Import Tool for Microsoft Layout

The Import Tool for Microsoft Layout is a free companion app for Layout that makes file optimization and management easy. Import existing 3D models from your PC into Microsoft Layout for optimal viewing and editing in mixed reality. Open models in Windows Mixed Reality to view and edit virtually or copy models from your PC onto Microsoft HoloLens to view and edit in your physical environment. With the free Visio Add-in for Microsoft Layout, you can also import room layouts to view and edit on HoloLens or in Windows Mixed Reality.

Be sure to grab the Import Tool for Layout, as well as the Visio Add-in, on May 22 if you're interested in these features. If you're using Layout with a HoloLens, USB 2.0 Port and USB cables are also required to transfer models from PC to HoloLens.

<!--- * **Import Tool for Microsoft Layout**: This tool is a free companion app for Microsoft Layout that supports importing existing 3D models from a PC into Layout. It also enables users to share and edit the holograms in real time. The Import Tool for Microsoft Layout will be available to download on May 22nd, to align with the public preview of the modern workplace apps. 

  * If you're using a HoloLens, it must be running the RS4 build, which will be publicly released at the same time as the modern workplace apps. To ensure your HoloLens has the required build, you can either [Manage updates to HoloLens](https://docs.microsoft.com/en-us/HoloLens/hololens-updates) on May 22 when the build is publicly available, or you can get started testing out the RS4 build in advance of May 22. See [HoloLens RS4 Preview](https://docs.microsoft.com/en-us/windows/mixed-reality/hololens-rs4-preview) for instructions on flashing the RS4 build to your device, and details on how the build will impact content stored on your HoloLens.

--->

## Questions and support

You can ask questions and engage with our team in the [Mixed Reality Tech Community](https://techcommunity.microsoft.com/t5/Mixed-Reality/ct-p/MixedReality).
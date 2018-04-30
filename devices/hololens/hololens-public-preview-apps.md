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

Soon, these apps will be available to download and deploy across your organization as part of a public preview. In the meantime, here's what you need to know to prepare for the public preview of each app, to make sure your app roll-out is smooth and seamless.

## Remote Assist

Remote Assist uses Microsoft Teams to facilitate two-way, real time, audio and video communication between a remote HoloLens user, and a user at a PC. The HoloLens user can project their view into Microsoft Teams, where the PC user can use inking annotations to mark it up with text and icons. The HoloLens user will see the inking appear within their device in real time.

Here are the requirements you'll need to meet in order to deploy Remote Assist throughout your organization:

* HoloLens RS4 build: The HoloLens RS4 build is currently available as an Insider Preview. It will become publicly available to align with the public release of the modern workplace apps.
* Azure Active Directory (Azure AD): required for app deployment. See [Get started with Azure AD](https://docs.microsoft.com/en-us/azure/active-directory/get-started-azure-ad) to learn more about Azure AD and licensing users.
* Microsoft Teams: Microsoft Teams is the backbone that facilitates communication in Remote Assist. All devices that will make calls to the HoloLens will need to have Microsoft Teams installed.
* Microsoft Office 365: Because Microsoft Teams is part of Office 365, all users who will make calls from their PC/phone to the HoloLens will need an Office 365 license. See [Office 365 licensing for Microsoft Teams](https://docs.microsoft.com/en-us/MicrosoftTeams/office-365-licensing) to learn more.
* Network requirements: 1.5Mb/s is the required bandwidth to enable the full feature set. If your organization's bandwidth does not meet these requirements, HoloLens will shut down features to adapt to reduced bandwidth, limiting the experience to audio calls only. Please test your company’s network bandwidth by performing the following steps:
   1. Have a mobile Teams user (iOS or Android) video call a desktop Teams user.
   2. Once the video call has been successfully connected between user 1 and 2, add another separate video call between a 3rd and 4th user, and so on for users 5 and 6.
   3. Continue adding video callers to stress test your network bandwidth until confident that multiple users can successfully connect on video calls at the same time.
   4. For more on “Preparing your organization for Microsoft Teams and network bandwidth requirements, read here.

## Layout

* HoloLens RS4 build: The HoloLens RS4 build is currently available as an Insider Preview. It will become publicly available to align with the public release of the modern workplace apps.
* Azure Active Directory (Azure AD): required for app deployment. See [Get started with Azure AD](https://docs.microsoft.com/en-us/azure/active-directory/get-started-azure-ad) to learn more about Azure AD and licensing users.
* Network requirements: Internet access is required to download the app, and utilize all of its features. There are no bandwidth requirements.
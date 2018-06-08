---
title: Microsoft Remote Assist
description: How to get and deploy the Microsoft Remote Assist app throughout your organization
ms.prod: hololens
ms.sitesec: library
author: alhopper-msft
ms.author: alhopper
ms.topic: article
ms.localizationpriority: medium
ms.date: 05/22/2018
---
# Microsoft Remote Assist

Collaborate remotely with heads-up, hands-free video calling, image sharing, and mixed reality annotations. Firstline workers can share what they see with any expert on Microsoft Teams, while staying hands on to solve problems and complete tasks together, faster. Backed by enterprise-level security, Microsoft Remote Assist enables communication with peace of mind.

## Technical requirements

Below are the technical requirements to deploy and use Microsoft Remote Assist throughout your organization.

### Device requirements

| Device                     | OS requirements                   | Details                                                    |
|:---------------------------|:----------------------------------|:-----------------------------------------------------------|
| HoloLens                   | Build 10.0.14393.0 or above  | See [Manage updates to HoloLens](https://docs.microsoft.com/en-us/HoloLens/hololens-updates) for instructions on using Windows Update for Business, MDM, and Windows Server Update Service (WSUS) to deploy updates to HoloLens.   |
| Windows 10 PC (optional)   | Any Windows 10 build              | A Windows 10 PC can collaborate with the HoloLens using Microsoft Teams. |

> [!Note]
> HoloLens build 10.0.14393.0 is the minimum that supports Remote Assist. We recommend updating the HoloLens to newer versions when they are available.

### Licensing & product requirements

| Product required                  | Details           | Learn more        |
|:----------------------------------|:------------------|:------------------|
| Azure Active Directory (Azure AD) | Required to log users into the Remote Assist app through Microsoft Teams. Also required for app distribution through the [Microsoft Store for Business](https://docs.microsoft.com/en-us/microsoft-store/sign-up-microsoft-store-for-business). If you choose not to distribute the app through the Microsoft Store for Business, users can alternately install Remote Assist on a HoloLens or PC from the [Microsoft Store](https://www.microsoft.com/en-us/store/apps). | [Get started with Azure AD](https://docs.microsoft.com/en-us/azure/active-directory/get-started-azure-ad) |
| Microsoft Teams                   | Microsoft Teams facilitates communication in Remote Assist. Microsoft Teams must be installed on any device that will make calls to the HoloLens. | [Overview of Microsoft Teams](https://docs.microsoft.com/en-us/MicrosoftTeams/teams-overview) |
| Microsoft Office 365              | Because Microsoft Teams is part of Office 365, each user who will make calls from their PC/phone to the HoloLens will need an Office 365 license. | [Office 365 licensing for Microsoft Teams](https://docs.microsoft.com/en-us/MicrosoftTeams/office-365-licensing) |

### Network requirements

1.5 MB/s is the recommended bandwidth for optimal performance of Microsoft Remote Assist. Though audio/video calls may be possible in environments with reduced bandwidth, you may experience HoloLens feature degradation, limiting the user experience. To test your company’s network bandwidth, follow these steps:

   1. Have a Teams user video call another Teams user.
   2. Add another separate video call between a 3rd and 4th user, and another for a 5th and 6th user.
   3. Continue adding video callers to stress test your network bandwidth until confident that multiple users can successfully connect on video calls at the same time.

See [Preparing your organization's network for Microsoft Teams](https://docs.microsoft.com/en-us/MicrosoftTeams/prepare-network) to learn more.

## Get and deploy Microsoft Remote Assist

Microsoft Remote Assist is available from the Microsoft Store for Business for free for a limited time:

1. Go to the [Microsoft Remote Assist](https://businessstore.microsoft.com/en-us/store/details/app/9PPJSDMD680S) app in the Microsoft Store for Business.
1. Click **Get the app**. Microsoft Remote Assist is added to the **Products and Services** tab for your private store.
1. Users can open the **Products and Services** tab to install the app to their device, or you can deploy the app throughout your organization using MDM. See [Install apps on HoloLens](hololens-install-apps.md) for further instructions on deploying apps.

For a limited time, users can also [Get Microsoft Remote Assist from the Microsoft Store](https://www.microsoft.com/store/productId/9PPJSDMD680S) for free.

## Use Microsoft Remote Assist

For guidance on using the features of the Microsoft Remote Assist app, please see [Set up and use Microsoft Remote Assist](https://support.microsoft.com/en-us/help/4294812).

## Questions and support

You can ask questions and engage with our team in the [Mixed Reality Tech Community](https://techcommunity.microsoft.com/t5/Mixed-Reality/ct-p/MixedReality).

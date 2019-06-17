---
title: Known issues and additional information about Microsoft Surface Hub
description: Outlines known issues with Microsoft Surface Hub.
ms.assetid: aee90a0c-fb05-466e-a2b1-92de89d0f2b7
ms.reviewer: 
manager: 
keywords: surface, hub, issues
ms.prod: surface-hub
ms.sitesec: library
author: todmccoy
ms.author: v-todmc
ms.topic: article
ms.localizationpriority: medium
---

# Known issues and additional information about Microsoft Surface Hub

We're listening. Quality is a top priority, and we want to keep you informed about issues impacting customers. The following are some known issues of Microsoft Surface Hub:

- **Skype for Business isn't using proxy for media traffic with RS2**
<br/>For some Surface Hub users who are behind a proxy, Skype for Business won't use the proxy server for media. However, the Surface Hub will be able to sign in to the account. We received your feedback and are aware of the media traffic issue when you are using proxy. We're actively investigating this issue and will release fixes as soon as a solution is identified and tested. 

- **For AAD joined devices, when a user tries to sign in to "My meetings & files", Surface Hub reports that there is no Internet connection**
<br/>We’re aware of a set of issues that affect sign-in and document access on Surface Hub. We're actively investigating these issues. As a workaround until a resolution is released, customers can reset their devices and set up their Hub to use a local admin account. After reconfiguring to use the local admin account, "My meetings and files" will work as expected.
- **Single sign-in when Azure AD joined**
<br/>Surface Hub was designed for communal spaces, which impacts the way user credentials are stored. Because of this, there are currently limitations in how single sign-in works when devices are Azure AD joined. Microsoft is aware of this limitation and is actively investigating options for a resolution.
- **Miracast over Infrastructure projection to Surface Hub fails if the Surface Hub has a dot character (.) in the friendly name**
<br/>Surface Hub users may experience issues projecting to their device if the Friendly Name includes a period or dot in the name (.) -- for example, "Conf.Room42". To work around the issue, change the Friendly Name of the Hub in **Settings** > **Surface Hub** > **About**, and then restart the device. Microsoft is working on a solution to this issue.
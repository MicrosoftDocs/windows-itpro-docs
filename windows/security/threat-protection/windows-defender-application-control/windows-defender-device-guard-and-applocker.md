---
title: Windows Defender Device Guard and AppLocker (Windows 10)
description: Explains how  
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
author: dansimp
ms.date: 05/03/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
---

# Windows Defender Device Guard with AppLocker

Although [AppLocker](applocker/applocker-overview.md) is not considered a new Windows Defender Device Guard feature, it complements Windows Defender Device Guard functionality when Windows Defender Application Control (WDAC) cannot be fully implemented or its functionality does not cover every desired scenario. 
There are many scenarios in which WDAC would be used alongside AppLocker rules. 
As a best practice, you should enforce WDAC at the most restrictive level possible for your organization, and then you can use AppLocker to fine-tune the restrictions to an even lower level.

> [!NOTE] 
> One example of how Windows Defender Device Guard functionality can be enhanced by AppLocker is when you want to apply different policies for different users on the same device. For example, you may allow your IT support personnel to run additional apps that you do not allow for your end-users. You can accomplish this user-specific enforcement by using an AppLocker rule.

AppLocker and Windows Defender Device Guard should run side-by-side in your organization, which offers the best of both security features at the same time and provides the most comprehensive security to as many devices as possible. 
In addition to these features, we recommend that you continue to maintain an enterprise antivirus solution for a well-rounded enterprise security portfolio.

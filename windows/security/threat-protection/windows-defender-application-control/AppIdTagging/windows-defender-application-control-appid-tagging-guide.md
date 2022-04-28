---
title: Designing, creating, managing and troubleshooting Windows Defender Application Control AppId Tagging policies (Windows)
description: How to design, create manage and troubleshoot your WDAC AppId Tagging policies
keywords: security, malware, firewall
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jgeurten
ms.reviewer: jsuther1974
ms.author: dansimp
manager: dansimp
ms.date: 04/27/2022
ms.technology: windows-sec
---

# WDAC Application Id (AppId) Tagging guide

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2022 and above

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](../feature-availability.md).

After designing and deploying your Windows Defender Application Control (WDAC) policies, this guide covers understanding the effects your policies are having and troubleshooting when they are not behaving as expected. It contains information on where to find events and what they mean, and also querying these events with Microsoft Defender for Endpoint Advanced Hunting feature.

## AppId Tagging Feature Overview

The Application ID (AppId) Tagging Policy feature, while based off WDAC, is not application control. AppId Tagging policies can be used to tag the processes of the running application with a tag defined in the policy. Application processes which pass the AppId policy will receive the tag while failing applications will not. 

## AppId Tagging Feature Availability

The WDAC AppId Tagging feature is available on the following versions of the Windows platform: 

Client: 
- Windows 10 20H1, 20H2 and 21H1 versions only
- Windows 11

Server: 
- Windows Server 2022

## In this section

| Topic | Description |
| - | - |
| [Designing and Creating AppId Policies](design-create-appid-tagging-policies.md) | This topic covers how to design and create AppId Tagging policies. |
| [Deploying AppId Policies](deploy-appid-tagging-policies.md) | This topic covers how to deploy AppId Tagging policies. |
| [Debugging AppId Policies](debugging-operational-guide-appid-tagging-policies.md) | This topic covers how to debug and view events from AppId Tagging policies. |

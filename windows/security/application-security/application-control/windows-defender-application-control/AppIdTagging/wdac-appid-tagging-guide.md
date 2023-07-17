---
title: Designing, creating, managing and troubleshooting Windows Defender Application Control AppId Tagging policies 
description: How to design, create, manage and troubleshoot your WDAC AppId Tagging policies
keywords: security, malware, firewall
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: jgeurten
ms.reviewer: jsuther1974
ms.author: vinpa
manager: aaroncz
ms.date: 04/27/2022
ms.technology: itpro-security
ms.topic: article
---

# WDAC Application ID (AppId) Tagging guide

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2022 and above

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](../feature-availability.md).

## AppId Tagging Feature Overview

The Application ID (AppId) Tagging Policy feature, while based off Windows Defender Application Control (WDAC), does not control whether applications will run. AppId Tagging policies can be used to mark the processes of the running application with a customizable tag defined in the policy. Application processes that pass the AppId policy will receive the tag while failing applications won't. 

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

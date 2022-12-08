---
title: Managing and troubleshooting Windows Defender Application Control policies (Windows)
description: Gather information about how your deployed Windows Defender Application Control policies are behaving.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: jsuther1974
ms.reviewer: isbrahm
ms.author: vinpa
manager: aaroncz
ms.date: 03/16/2020
ms.technology: itpro-security
---

# Windows Defender Application Control operational guide

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](feature-availability.md).

After enabling you understand how to design and deploy your Windows Defender Application Control (WDAC) policies, this guide covers understanding the effects your policies are having and troubleshooting when they aren't behaving as expected. It contains information on where to find events and what they mean, and also querying these events with Microsoft Defender for Endpoint Advanced Hunting feature.

## WDAC Events Overview

Windows Defender Application Control generates and logs events when a policy is loaded as well as when a binary attempts to execute and is blocked. These events include information that identifies the policy and gives more details about the block. Generally, WDAC doesn't generate events when a binary is allowed; however, there's the option to enable events when Managed Installer and/or the Intelligent Security Graph (ISG) is configured.

WDAC events are generated under two locations:

 - Applications and Services logs – Microsoft – Windows – CodeIntegrity – Operational
 
 - Applications and Services logs – Microsoft – Windows – AppLocker – MSI and Script

## In this section

| Topic | Description |
| - | - |
| [Understanding Application Control event IDs](event-id-explanations.md) | This topic explains the meaning of different WDAC event IDs. |
| [Understanding Application Control event tags](event-tag-explanations.md) | This topic explains the meaning of different WDAC event tags. |
| [Query WDAC events with Advanced hunting](querying-application-control-events-centrally-using-advanced-hunting.md) | This topic covers how to view WDAC events centrally from all systems that are connected to Microsoft Defender for Endpoint. |

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
ms.topic: article
---

# Windows Defender Application Control operational guide

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](feature-availability.md).

After enabling you understand how to design and deploy your Windows Defender Application Control (WDAC) policies, this guide covers understanding the effects your policies are having and troubleshooting when they aren't behaving as expected. It contains information on where to find events and what they mean, and also querying these events with Microsoft Defender for Endpoint Advanced Hunting feature.

## In this section

| Topic | Description |
| - | - |
| [Understanding Application Control event IDs](event-id-explanations.md) | This topic explains the meaning of different WDAC event IDs. |
| [Understanding Application Control event tags](event-tag-explanations.md) | This topic explains the meaning of different WDAC event tags. |
| [Query WDAC events with Advanced hunting](querying-application-control-events-centrally-using-advanced-hunting.md) | This topic covers how to view WDAC events centrally from all systems that are connected to Microsoft Defender for Endpoint. |

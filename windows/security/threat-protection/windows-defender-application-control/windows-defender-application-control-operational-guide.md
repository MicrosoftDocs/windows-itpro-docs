---
title: Managing and troubleshooting Windows Defender Application Control policies (Windows 10)
description: Gather information about how your deployed Windows Defender Application Control policies are behaving.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
ms.date: 03/16/2020
---

# Windows Defender Application Control operational guide

**Applies to**

- Windows 10
- Windows Server 2016 and above

After designing and deploying your Windows Defender Application Control (WDAC) policies, this guide covers understanding the effects your policies are having and troubleshooting when they are not behaving as expected. It contains information on where to find events and what they mean, and also querying these events with Microsoft Defender Advanced Threat Protection (MDATP) Advanced Hunting feature.

## WDAC Events Overview

WDAC generates and logs events when a policy is loaded as well as when a binary attempts to execute and is blocked. These events include information that identifies the policy and gives more details about the block. Generally, WDAC does not generate events when a binary is allowed; however, there is the option to enable allow events when Managed Installer and/or the Intelligent Security Graph (ISG) is configured.

WDAC events are generated under two locations:

 - Applications and Services logs – Microsoft – Windows – CodeIntegrity – Operational
 
 - Applications and Services logs – Microsoft – Windows – AppLocker – MSI and Script

## In this section

| Topic | Description |
| - | - |
| [Understanding Application Control event IDs](event-id-explanations.md) | This topic explains the meaning of different WDAC event IDs. |
| [Understanding Application Control event tags](event-tag-explanations.md) | This topic explains the meaning of different WDAC event tags. |
| [Query WDAC events with Advanced hunting](querying-application-control-events-centrally-using-advanced-hunting.md) | This topic covers how to view WDAC events centrally from all systems that are connected to Microsoft Defender ATP. |

---
title: Microsoft Defender ATP for Mac What's New
ms.reviewer: 
description: List of major changes for Microsoft Defender ATP for Mac.
keywords: microsoft, defender, atp, mac, installation, macos, whatsnew
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: security
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# What's new in Microsoft Defender Advanced Threat Protection for Mac

## 100.70.99

- Addressed an issue that impacts some users’ ability to upgrade to macOS Catalina when real-time protection is enabled. This sporadic issue was caused by Microsoft Defender ATP locking files within Catalina upgrade package while scanning them for threats, which led to failures in the upgrade sequence.

## 100.68.99

- Added the ability to configure the antivirus functionality to run in [passive mode](microsoft-defender-atp-mac-preferences.md#enable--disable-passive-mode)
- Performance improvements & bug fixes

## 100.65.28

- Added support for macOS Catalina

> [!CAUTION]
> macOS 10.15 (Catalina) contains new security and privacy enhancements. Beginning with this version, by default, applications are not able to access certain locations on disk (such as Documents, Downloads, Desktop, etc.) without explicit consent. In the absence of this consent, Microsoft Defender ATP is not able to fully protect your device.
>
> The mechanism for granting this consent depends on how you deployed Microsoft Defender ATP:
>
> - For manual deployments, see the updated instructions in the [Manual deployment](microsoft-defender-atp-mac-install-manually.md#how-to-allow-full-disk-access) topic.
> - For managed deployments, see the updated instructions in the [JAMF-based deployment](microsoft-defender-atp-mac-install-with-jamf.md#privacy-preferences-policy-control) and [Microsoft Intune-based deployment](microsoft-defender-atp-mac-install-with-intune.md#create-system-configuration-profiles) topics.

- Performance improvements & bug fixes

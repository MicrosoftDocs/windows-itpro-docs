---
title: Deploy updates for Microsoft Defender ATP for Linux
ms.reviewer: 
description: Describes how to deploy updates for Microsoft Defender ATP for Linux in enterprise environments.
keywords: microsoft, defender, atp, linux, updates, deploy
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
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

# Deploy updates for Microsoft Defender ATP for Linux

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) for Linux](microsoft-defender-atp-linux.md)

Microsoft regularly publishes software updates to improve performance, security, and to deliver new features.

To update Microsoft Defender ATP for Linux manually, execute one of the following commands:

## RHEL and variants (CentOS and Oracle Linux)

```bash
sudo yum update mdatp
```

## SLES and variants

```bash
sudo zypper update mdatp
```

## Ubuntu and Debian systems

```bash
sudo apt-get install --only-upgrade mdatp
```

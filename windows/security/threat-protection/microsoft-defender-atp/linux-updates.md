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
ms.collection: 
- m365-security-compliance 
- m365initiative-defender-endpoint 
ms.topic: conceptual
---

# Deploy updates for Microsoft Defender for Endpoint for Linux

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint for Linux](microsoft-defender-atp-linux.md)

Microsoft regularly publishes software updates to improve performance, security, and to deliver new features.

> [!WARNING]
> Each version of Defender for Endpoint for Linux has an expiration date, after which it will no longer continue to protect your device. You must update the product prior to this date. To check the expiration date, run the following command:
> ```bash
> mdatp health --field product_expiration
> ```

To update Defender for Endpoint for Linux manually, execute one of the following commands:

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

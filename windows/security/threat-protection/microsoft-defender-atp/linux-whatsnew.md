---
title: What's new in Microsoft Defender Advanced Threat Protection for Linux
description: List of major changes for Microsoft Defender ATP for Linux.
keywords: microsoft, defender, atp, linux, whatsnew, release
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

# What's new in Microsoft Defender Advanced Threat Protection for Linux

## 101.03.73

- Bug fixes

## 101.02.55

- Fixed an issue where the product sometimes does not start following a reboot / upgrade
- Fixed an issue where proxy settings are not persisted across product upgrades

## 101.00.75

- Added support for the following file system types: `ecryptfs`, `fuse`, `fuseblk`, `jfs`, `nfs`, `overlay`, `ramfs`, `reiserfs`, `udf`, and `vfat`
- New syntax for the [command-line tool](linux-resources.md#configure-from-the-command-line).
- Performance improvements & bug fixes

## 100.90.70

> [!WARNING]
> When upgrading the installed package from a product version earlier than 100.90.70, the update may fail on Red Hat-based and SLES distributions. This is because of a major change in a file path. A temporary solution is to remove the older package, and then install the newer one. This issue does not exist in newer versions.

- Antivirus [exclusions now support wildcards](linux-exclusions.md#supported-exclusion-types)
- Added the ability to [troubleshoot performance issues](linux-support-perf.md) through the `mdatp` command-line tool
- Improvements to make the package installation more robust
- Performance improvements & bug fixes

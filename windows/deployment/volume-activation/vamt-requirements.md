---
title: VAMT requirements
description: Learn about the product key and system requirements for Volume Activation Management Tool (VAMT).
ms.author: kaushika
author: kaushika-msft
manager: cshepard
ms.reviewer: nganguly
ms.date: 03/29/2024
ms.topic: concept-article
ms.service: windows-client
ms.subservice: itpro-fundamentals
---

# VAMT requirements

This article includes info about the product key and system requirements for VAMT.

## Product key requirements

The Volume Activation Management Tool (VAMT) can be used to perform activations using any of the following types of product keys.

|Product key type |Where to obtain |
|-----------------|----------------|
|<ul><li>Multiple Activation Key (MAK)</li><li>Key Management Service (KMS) host key (CSVLK)</li><li>KMS client setup keys (GVLK)</li></ul> |Volume licensing keys can only be obtained with a signed contract from Microsoft. For more information, see the [Microsoft Volume Licensing portal](https://admin.microsoft.com/adminportal/home#/subscriptions/vlnew). |
|Retail product keys |Obtained at time of product purchase. |

## System requirements

The following table lists the system requirements for the VAMT host computer.

| Item | Minimum system requirement |
| ---- | ---------------------------|
| Computer and Processor | 1 GHz x86 or x64 processor |
| Memory | 1 GB RAM for x86 or 2 GB RAM for x64 |
| Hard Disk | 16 GB available hard disk space for x86 or 20 GB for x64 |
| External Drive | Removable media (Optional) |
| Display | 1024x768 or higher resolution monitor |
| Network | Connectivity to remote computers via Windows Management Instrumentation (TCP/IP) and Microsoft Activation Web Service on the Internet via HTTPS |
| Operating System | Currently supported versions of [Windows client](/windows/release-health/supported-versions-windows-client) and [Windows Server](/windows/release-health/windows-server-release-info). |
| Additional Requirements | <ul><li>Connection to a SQL Server database. For more info, see [Install VAMT](install-vamt.md).</li><li>PowerShell, which is included with all currently supported versions of Windows.</li></ul> |

## Related content

[Install VAMT](install-vamt.md)

[Configure client computers](configure-client-computers-vamt.md)

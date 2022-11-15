---
title: VAMT Requirements (Windows 10)
description: In this article, learn about the product key and system requierements for Volume Activation Management Tool (VAMT).
ms.reviewer: 
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 11/07/2022
ms.topic: article
ms.technology: itpro-fundamentals
---

# VAMT requirements

This article includes info about the product key and system requirements for VAMT.

## Product key requirements

The Volume Activation Management Tool (VAMT) can be used to perform activations using any of the following types of product keys.

|Product key type |Where to obtain |
|-----------------|----------------|
|<ul><li>Multiple Activation Key (MAK)</li><li>Key Management Service (KMS) host key (CSVLK)</li><li>KMS client setup keys (GVLK)</li></ul> |Volume licensing keys can only be obtained with a signed contract from Microsoft. For more info, see the [Microsoft Volume Licensing portal](https://go.microsoft.com/fwlink/p/?LinkId=227282). |
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
| Operating System | Windows 7, Windows 8, Windows 8.1, Windows 10, Windows Server 2008 R2, Windows Server 2012, or later. |
| Additional Requirements | <ul><li>Connection to a SQL Server database. For more info, see [Install VAMT](install-vamt.md).</li><li>PowerShell 3.0: For Windows 8, Windows 8.1, Windows 10, and Windows Server 2012, PowerShell is included in the installation. For previous versions of Windows and Windows Server, you must download PowerShell 3.0. To download PowerShell, go to [Download Windows PowerShell 3.0](/powershell/scripting/install/installing-powershell).</li><li>If installing on Windows Server 2008 R2, you must also install .NET Framework 3.51.</li></ul> |

## Related articles

- [Install and configure VAMT](install-configure-vamt.md)

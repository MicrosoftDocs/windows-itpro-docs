---
title: VAMT Requirements (Windows 10)
description: VAMT Requirements
ms.assetid: d14d152b-ab8a-43cb-a8fd-2279364007b9
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: activation
audience: itproauthor: greg-lindsay
ms.date: 04/25/2017
ms.topic: article
---

# VAMT Requirements

This topic includes info about the product key and system requirements for VAMT.

## Product Key Requirements

The Volume Activation Management Tool (VAMT) can be used to perform activations using any of the following types of product keys.

|Product key type |Where to obtain |
|-----------------|----------------|
|<ul><li>Multiple Activation Key (MAK)</li><li>Key Management Service (KMS) host key (CSVLK)</li><li>KMS client setup keys (GVLK)</li></ul> |Volume licensing keys can only be obtained with a signed contract from Microsoft. For more info, see the [Microsoft Volume Licensing portal](https://go.microsoft.com/fwlink/p/?LinkId=227282). |
|Retail product keys |Obtained at time of product purchase. |

## System Requirements

The following table lists the system requirements for the VAMT host computer.

|Item |Minimum system requirement |
|-----|---------------------------|
|Computer and Processor |1 GHz x86 or x64 processor |
|Memory |1 GB RAM for x86 or 2 GB RAM for x64 |
|Hard Disk |16 GB available hard disk space for x86 or 20 GB for x64 |
|External Drive|Removable media (Optional) |
|Display |1024x768 or higher resolution monitor |
|Network |Connectivity to remote computers via Windows® Management Instrumentation (TCP/IP) and Microsoft® Activation Web Service on the Internet via HTTPS |
|Operating System |Windows 7, Windows 8, Windows 8.1, Windows 10, Windows Server 2008 R2, or Windows Server 2012. |
|Additional Requirements |<ul><li>Connection to a SQL Server database. For more info, see [Install VAMT](install-vamt.md).</li><li>PowerShell 3.0: For Windows 8, Windows 8.1, Windows 10, and Windows Server® 2012, PowerShell is included in the installation. For previous versions of Windows and 
Windows Server, you must download PowerShell 3.0. To download PowerShell, go to [Download Windows PowerShell 3.0](https://go.microsoft.com/fwlink/p/?LinkId=218356).</li><li>If installing on Windows Server 2008 R2, you must also install .NET Framework 3.51.</li></ul> |

## Related topics
- [Install and Configure VAMT](install-configure-vamt.md)

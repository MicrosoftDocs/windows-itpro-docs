---
title: System requirements for Microsoft Defender Application Guard
description: Learn about the system requirements for installing and running Microsoft Defender Application Guard.
ms.prod: windows-client
ms.technology: itpro-security
ms.topic: overview
ms.localizationpriority: medium
author: vinaypamnani-msft
ms.author: vinpa
ms.date: 08/25/2022
ms.reviewer: sazankha
manager: aaroncz
---

# System requirements for Microsoft Defender Application Guard

**Applies to** 

- Windows 10 Education, Enterprise, and Professional
- Windows 11 Education, Enterprise, and Professional

The threat landscape is continually evolving. While hackers are busy developing new techniques to breach enterprise networks by compromising workstations, phishing schemes remain one of the top ways to lure employees into social engineering attacks. Microsoft Defender Application Guard is designed to help prevent old, and newly emerging attacks, to help keep employees productive.

> [!NOTE]
> Given the technological complexity, the security promise of Microsoft Defender Application Guard (MDAG) may not hold true on VMs and in VDI environments. Hence, MDAG is currently not officially supported on VMs and in VDI environments. However, for testing and automation purposes on non-production machines, you may enable MDAG on a VM by enabling Hyper-V nested virtualization on the host.

## Hardware requirements

Your environment must have the following hardware to run Microsoft Defender Application Guard.

> [!NOTE]
> Application Guard currently isn't supported on Windows 11 ARM64 devices.

| Hardware | Description |
|--------|-----------|
| 64-bit CPU|A 64-bit computer with minimum four cores (logical processors) is required for hypervisor and virtualization-based security (VBS). For more info about Hyper-V, see [Hyper-V on Windows Server 2016](/windows-server/virtualization/hyper-v/hyper-v-on-windows-server) or [Introduction to Hyper-V on Windows 10](/virtualization/hyper-v-on-windows/about/). For more info about hypervisor, see [Hypervisor Specifications](/virtualization/hyper-v-on-windows/reference/tlfs).|
| CPU virtualization extensions|Extended page tables, also called _Second Level Address Translation (SLAT)_ <p> **AND** <p> One of the following virtualization extensions for VBS:<br/>VT-x (Intel)<br/>**OR**<br/>AMD-V |
| Hardware memory | Microsoft requires a minimum of 8-GB RAM |
| Hard disk | 5-GB free space, solid state disk (SSD) recommended |
| Input/Output Memory Management Unit (IOMMU) support| Not required, but recommended |

## Software requirements

  Your environment must have the following software to run Microsoft Defender Application Guard.

| Software | Description |
|--------|-----------|
| Operating system | Windows 10 Enterprise edition, version 1809 or later <br/> Windows 10 Professional edition, version 1809 or later <br/> Windows 10 Professional for Workstations edition, version 1809 or later <br/> Windows 10 Professional Education edition, version 1809 or later <br/> Windows 10 Education edition, version 1809 or later <br/> Windows 11 Education, Enterprise, and Professional editions |
| Browser | Microsoft Edge |
| Management system <br> (only for managed devices)| [Microsoft Intune](/intune/) <p> **OR** <p> [Microsoft Configuration Manager](/configmgr/) <p> **OR** <p> [Group Policy](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc753298(v=ws.11)) <p> **OR** <p>Your current, company-wide, non-Microsoft mobile device management (MDM) solution. For info about non-Microsoft MDM solutions, see the documentation that came with your product. |

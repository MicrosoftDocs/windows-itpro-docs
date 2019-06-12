---
title: System requirements for Windows Defender Application Guard (Windows 10)
description: Learn about the system requirements for installing and running Windows Defender Application Guard.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 11/09/2017
ms.reviewer: 
manager: dansimp
---

# System requirements for Windows Defender Application Guard

**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

The threat landscape is continually evolving. While hackers are busy developing new techniques to breach enterprise networks by compromising workstations, phishing schemes remain one of the top ways to lure employees into social engineering attacks. Windows Defender Application Guard is designed to help prevent old, and newly emerging attacks, to help keep employees productive.

>[!NOTE]
>Windows Defender Application Guard is not supported on VMs and VDI environment. For testing and automation on non-production machines, you may enable WDAG on a VM by enabling Hyper-V nested virtualization on the host.

## Hardware requirements
Your environment needs the following hardware to run Windows Defender Application Guard.

|Hardware|Description|
|--------|-----------|
|64-bit CPU|A 64-bit computer with minimum 4 cores (logical processors) is required for hypervisor and virtualization-based security (VBS). For more info about Hyper-V, see [Hyper-V on Windows Server 2016](https://docs.microsoft.com/windows-server/virtualization/hyper-v/hyper-v-on-windows-server) or [Introduction to Hyper-V on Windows 10](https://docs.microsoft.com/virtualization/hyper-v-on-windows/about/). For more info about hypervisor, see [Hypervisor Specifications](https://docs.microsoft.com/virtualization/hyper-v-on-windows/reference/tlfs).|
|CPU virtualization extensions|Extended page tables, also called _Second Level Address Translation (SLAT)_<br><br>**-AND-**<br><br>One of the following virtualization extensions for VBS:<br><br>VT-x (Intel)<br><br>**-OR-**<br><br>AMD-V|
|Hardware memory|Microsoft requires a minimum of 8GB RAM|
|Hard disk|5 GB free space, solid state disk (SSD) recommended|
|Input/Output Memory Management Unit (IOMMU) support|Not required, but strongly recommended|

## Software requirements
Your environment needs the following software to run Windows Defender Application Guard.

|Software|Description|
|--------|-----------|
|Operating system|Windows 10 Enterprise edition, version 1709 or higher<br>Windows 10 Professional edition, version 1803 or higher<br>Windows 10 Professional for Workstations edition, version 1803 or higher<br>Windows 10 Professional Education edition version 1803 or higher<br>Windows 10 Education edition, version 1903 or higher<br>Professional editions are only supported for non-managed devices; Intune or any other 3rd party mobile device management (MDM) solutions are not supported with WDAG for Professional editions. |
|Browser|Microsoft Edge and Internet Explorer|
|Management system<br> (only for managed devices)|[Microsoft Intune](https://docs.microsoft.com/intune/)<br><br>**-OR-**<br><br>[System Center Configuration Manager](https://docs.microsoft.com/sccm/)<br><br>**-OR-**<br><br>[Group Policy](https://technet.microsoft.com/library/cc753298(v=ws.11).aspx)<br><br>**-OR-**<br><br>Your current company-wide 3rd party mobile device management (MDM) solution. For info about 3rd party MDM solutions, see the documentation that came with your product.|

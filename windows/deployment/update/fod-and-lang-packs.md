---
title: Windows 10 - How to make FoDs and language packs available when you're using WSUS/SCCM
description: Learn how to make FoDs and language packs available for updates when you're using WSUS/SCCM.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: article
ms.author: elizapo
author: lizap
ms.localizationpriority: medium
ms.date: 10/18/2018
---
# How to make Features on Demand and language packs available when you're using WSUS/SCCM

> Applies to: Windows 10

As of Windows 10, version 1709, you can't use Windows Server Update Services (WSUS) to host [Features on Demand](https://docs.microsoft.com/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities) and language packs for Windows 10 clients. Instead, you can pull them directly from Windows Update - you just need to change a Group Policy setting that lets clients download these directly from Windows Update. You can also host Features on Demand and language packs on a network share, but starting with Windows 10, version 1809, language packs can only be installed from Windows Update.
 
For Active Directory and Group Policy environments running in a WSUS\SCCM environment change the **Specify settings for optional component installation and component repair** policy to enable downloading Features on Demand directly from Windows Update or a local share. This setting is located in Computer Configuration\Administrative Templates\System in the Group Policy Editor.
 
Changing this policy only enables Features on Demand and language pack downloads from Windows Update - it doesn't affect how clients get feature and quality updates. Feature and quality updates will continue to come directly from WSUS\SCCM. It also doesn't affect the schedule for your clients to receive updates.

Learn about other client management options, including using Group Policy and ADMX, in [Manage clients in Windows 10](https://docs.microsoft.com/windows/client-management/).

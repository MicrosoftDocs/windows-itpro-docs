---
title: Windows 10 - How to make FoD and language packs available when you're using WSUS/SCCM
description: Learn how to make FoD and language packs available when you're using WSUS/SCCM
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: article
ms.author: greglin
author: greg-lindsay
ms.localizationpriority: medium
ms.date: 03/13/2019
ms.topic: article
---
# How to make Features on Demand and language packs available when you're using WSUS/SCCM

> Applies to: Windows 10

As of Windows 10 version 1709, you cannot use Windows Server Update Services (WSUS) to host [Features on Demand](https://docs.microsoft.com/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities) (FOD) and language packs for Windows 10 clients locally. Instead, you can enforce a Group Policy setting that tells the clients to pull them directly from Windows Update. You can also host FOD and language packs on a network share, but starting with Windows 10 version 1809, FOD and language packs can only be installed from Windows Update.
 
For Windows domain environments running WSUS or SCCM, change the **Specify settings for optional component installation and component repair** policy to enable downloading FOD and language packs from Windows Update. This setting is located in `Computer Configuration\Administrative Templates\System` in the Group Policy Editor.

Changing this policy does not affect how other updates are distributed. They continue to come from WSUS or SCCM as you have scheduled them.

Learn about other client management options, including using Group Policy and administrative templates, in [Manage clients in Windows 10](https://docs.microsoft.com/windows/client-management/).

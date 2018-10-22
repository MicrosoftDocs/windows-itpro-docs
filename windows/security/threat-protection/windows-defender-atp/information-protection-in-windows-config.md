---
title: Microsoft information protection integration 
description: Learn how to expand the coverage of WIP to protect files based on their label, regardless of their origin.
keywords: information, protection, data, loss, prevention, wip, policy, scc, compliance, labels, dlp
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
ms.date: 09/18/2018
---

# Configure information protection in Windows 
**Applies to:**
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]

Learn how you can use Windows Defender ATP to expand the coverage of Windows information protection (WIP) to protect files based on their label, regardless of their origin.

1. Define a WIP policy and assign it to the relevant devices. For more information, see [Protect your enterprise data using Windows Information Protection (WIP)](https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/protect-enterprise-data-using-wip). If WIP is already configured on the relevant devices, skip this step. 
2. Define which labels need to get WIP protection in Office 365 Security and Compliance. 
    1. Go to: **Classifications > Labels**.
    2. Create a new label or edit an existing one. 
    3. In the configuration wizard, go to 'Dlp' tab and enable WIP.
    4. Repeat for every label that you want to get WIP applied to in Windows. 
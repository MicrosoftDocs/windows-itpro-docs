---
title: Windows Defender Antivirus compatibility with Microsoft Defender ATP
description: Learn about how Windows Defender works with Microsoft Defender ATP and how it functions when a third-party antimalware client is used.  
keywords: windows defender compatibility, defender, windows defender atp
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
ms.date: 04/24/2018
---

# Windows Defender Antivirus compatibility with Microsoft Defender ATP

**Applies to:**


- Windows Defender
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)



>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-defendercompat-abovefoldlink)

The Microsoft Defender Advanced Threat Protection agent depends on Windows Defender Antivirus for some capabilities such as file scanning.

>[!IMPORTANT]
>Microsoft Defender ATP does not adhere to the Windows Defender Antivirus Exclusions settings. 

You must configure Security intelligence updates on the Microsoft Defender ATP machines whether Windows Defender Antivirus is the active antimalware or not. For more information, see [Manage Windows Defender Antivirus updates and apply baselines](../windows-defender-antivirus/manage-updates-baselines-windows-defender-antivirus.md).

If an onboarded machine is protected by a third-party antimalware client, Windows Defender Antivirus on that endpoint will enter into passive mode.

Windows Defender Antivirus will continue to receive updates, and the *mspeng.exe* process will be listed as a running a service, but it will not perform scans and will not replace the running third-party antimalware client.

The Windows Defender Antivirus interface will be disabled, and users on the machine will not be able to use Windows Defender Antivirus to perform on-demand scans or configure most options.

For more information, see the [Windows Defender Antivirus and Microsoft Defender ATP compatibility topic](../windows-defender-antivirus/windows-defender-antivirus-compatibility.md).

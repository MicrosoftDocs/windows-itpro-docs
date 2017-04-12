---
title: Windows Defender Antivirus and Windows Defender ATP
description: Windows Defender AV and Windows Defender ATP work together to provide threat detection, remediation, and investigation.
keywords: windows defender, atp, advanced threat protection, compatibility, passive mode
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---


# Windows Defender Antivirus and Advanced Threat Protection: Better together


**Applies to:**

- Windows 10

**Audience**

- Enterprise security administrators



Windows Defender Advanced Threat Protection (ATP) is an additional service beyond Windows Defender Antivirus that helps enterprises detect, investigate, and respond to advanced persistent threats on their network. 
See the [Windows Defender Advanced Threat Protection](windows-defender-advanced-threat-protection.md) topics for more information about the service.

If you are enrolled in Windows Defender ATP, and you are not using Windows Defender AV as your real-time protection service on your endpoints, Windows Defender will automatically enter into a passive mode. On Windows Server 2016 SKUs, Windows Defender AV will not enter into the passive mode and will run alongside your other antivirus product.

In passive mode, Windows Defender will continue to run (using the *msmpeng.exe* process), and will continue to be updated, however there will be no Windows Defender user interface, scheduled scans won't run, and Windows Defender will not provide real-time protection from malware.

You can still [manage updates for Windows Defender](manage-updates-baselines-windows-defender-antivirus.md), however you can't move Windows Defender into the normal active mode if your endpoints have an up-to-date third-party product providing real-time protection from malware.

If you uninstall the other product, and choose to use Windows Defender to provide protection to your endpoints, Windows Defender will automatically return to its normal active mode.


## Related topics

- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
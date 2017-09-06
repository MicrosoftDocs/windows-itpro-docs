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
ms.localizationpriority: medium
author: iaanw
ms.author: iawilt
ms.date: 06/13/2017
---


# Windows Defender Antivirus and third party protection products


**Applies to:**

- Windows 10
- Windows Server 2016

**Audience**

- Enterprise security administrators


Windows Defender Antivirus is automatically enabled and installed on endpoints and devices that are running Windows 10.

However, on endpoints and devices that are protected with a non-Microsoft antivirus or antimalware app, Windows Defender AV will automatically disable itself. If you are also using Windows Defender Advanced Threat Protection, then Windows Defender AV will enter a passive mode.

The following matrix illustrates how Windows Defender AV operates in these instances. Note that this matrix only applies to endpoints that are running Windows 10:

Windows version | Antimalware protection offered by | Organization enrolled in Windows Defender ATP | Windows Defender AV state
-|-|-
Windows 10 | A third-party product that is not offered or developed by Microsoft | Yes | Passive mode
Windows 10 | A third-party product that is not offered or developed by Microsoft | No | Disabled mode
Windows 10 | Windows Defender AV | Yes | Active mode
Windows 10 | Windows Defender AV | No | Active mode
Windows 8 or earlier | A third-party product that is not offered or developed by Microsoft | N/A (Windows Defender ATP requires Windows 10) | N/A (Windows Defender AV requires Windows 10)
Windows 8 or earlier | System Center Endpoint Protection (offered by System Center Configuration Manager) | Yes | Active mode
Windows 8 or earlier | Windows Defender AV | No | Active mode
Windows Server 2016 | A third-party product that is not offered or developed by Microsoft | Yes | Passive mode
Windows Server 2016 | A third-party product that is not offered or developed by Microsoft | No | Disabled mode
Windows Server 2016 | Windows Defender AV | Yes | Active mode
Windows Server 2016 | Windows Defender AV | No | Active mode

If you are using another antivirus or antimalware protection app.

If you are enrolled in Windows Defender Advanced Threat Protection, and you are not using Windows Defender AV as your real-time protection service on your endpoints, Windows Defender AV will automatically enter into a passive mode. 


On Windows Server 2016 SKUs, Windows Defender AV will not enter into the passive mode and will run alongside your other antivirus product.


Windows Defender Advanced Threat Protection (ATP) is an additional service beyond Windows Defender Antivirus that helps enterprises detect, investigate, and respond to advanced persistent threats on their network. 
See the [Windows Defender Advanced Threat Protection](../windows-defender-atp/windows-defender-advanced-threat-protection.md) topics for more information about the service.

I

In passive mode, Windows Defender AV will continue to run (using the *msmpeng.exe* process), and will continue to be updated, however there will be no Windows Defender user interface, scheduled scans won't run, and Windows Defender AV will not provide real-time protection from malware.

You can still [manage updates for Windows Defender](manage-updates-baselines-windows-defender-antivirus.md), however you can't move Windows Defender AV into the normal active mode if your endpoints have an up-to-date third-party product providing real-time protection from malware.

If you uninstall the other product, and choose to use Windows Defender AV to provide protection to your endpoints, Windows Defender AV will automatically return to its normal active mode.


## Related topics

- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
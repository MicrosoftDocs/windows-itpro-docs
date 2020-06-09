---
title: Restore quarantined files in Windows Defender AV
description: You can restore files and folders that were quarantined by Windows Defender AV.
keywords: 
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 05/20/2020
ms.reviewer: 
manager: dansimp
---

# Restore quarantined files in Windows Defender AV

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

If Microsoft Defender Antivirus is configured to detect and remediate threats on your device, Microsoft Defender Antivirus quarantines suspicious files. If you are certain a quarantined file is not a threat, you can restore it.

1. Open **Windows Security**.
2. Select **Virus & threat protection** and then click **Protection history**.
3. In the list of all recent items, filter on **Quarantined Items**.
4. Select an item you want to keep, and take an action, such as restore.

> [!TIP]
> Restoring a file from quarantine can also be done using Command Prompt. See [Restore a file from quarantine](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/respond-file-alerts#restore-file-from-quarantine). 

## Related articles

- [Configure remediation for scans](configure-remediation-microsoft-defender-antivirus.md)
- [Review scan results](review-scan-results-microsoft-defender-antivirus.md)
- [Configure and validate exclusions based on file name, extension, and folder location](configure-extension-file-exclusions-microsoft-defender-antivirus.md)
- [Configure and validate exclusions for files opened by processes](configure-process-opened-file-exclusions-microsoft-defender-antivirus.md)
- [Configure Microsoft Defender Antivirus exclusions on Windows Server](configure-server-exclusions-microsoft-defender-antivirus.md)


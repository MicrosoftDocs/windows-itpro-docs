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
author: dansimp
ms.author: dansimp
ms.date: 11/16/2018
ms.reviewer: 
manager: dansimp
---

# Restore quarantined files in Windows Defender AV

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

If Windows Defender Antivirus is configured to detect and remediate threats on your device, Windows Defender Antivirus quarantines suspicious files. If you are certain these files do not present a threat, you can restore them.

1. Open **Windows Security**.
2. Click **Virus & threat protection** and then click **Threat History**.
3. Under **Quarantined threats**, click **See full history**.
4. Click an item you want to keep, then click **Restore**. (If you prefer to remove the item, you can click **Remove**.)

> [!NOTE]
> You can also use the dedicated command-line tool [mpcmdrun.exe](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/command-line-arguments-windows-defender-antivirus) to restore quarantined files in Windows Defender AV.

## Related topics

- [Configure remediation for scans](configure-remediation-windows-defender-antivirus.md)
- [Review scan results](review-scan-results-windows-defender-antivirus.md)
- [Configure and validate exclusions based on file name, extension, and folder location](configure-extension-file-exclusions-windows-defender-antivirus.md)
- [Configure and validate exclusions for files opened by processes](configure-process-opened-file-exclusions-windows-defender-antivirus.md)
- [Configure Windows Defender Antivirus exclusions on Windows Server](configure-server-exclusions-windows-defender-antivirus.md)


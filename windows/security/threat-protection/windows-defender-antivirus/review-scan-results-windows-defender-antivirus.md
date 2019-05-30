---
title: Review the results of Windows Defender AV scans 
description: Review the results of scans using System Center Configuration Manager, Microsoft Intune, or the Windows Security app
keywords: scan results, remediation, full scan, quick scan
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 09/03/2018
---

# Review Windows Defender Antivirus scan results

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

After an Windows Defender Antivirus scan completes, whether it is an [on-demand](run-scan-windows-defender-antivirus.md) or [scheduled scan](scheduled-catch-up-scans-windows-defender-antivirus.md), the results are recorded and you can view the results. 


**Use Microsoft Intune to review scan results:**

1. In Intune, go to **Devices > All Devices** and select the device you want to scan.

2. Click the scan results in **Device actions status**.

**Use Configuration Manager to review scan results:**

See [How to monitor Endpoint Protection status](https://docs.microsoft.com/sccm/protect/deploy-use/monitor-endpoint-protection).


**Use the Windows Security app to review scan results:**

1. Open the Windows Security app by clicking the shield icon in the task bar or searching the start menu for **Defender**.

2. Click the **Virus & threat protection** tile (or the shield icon on the left menu bar) and then the **Scan history** label.

    - Click **See full history** for any of the sections to see previous detections and the action taken. You can also clear the list.
    - Information about the last scan is displayed at the bottom of the page.




**Use PowerShell cmdlets to review scan results:**

The following cmdlet will return each detection on the endpoint. If there are multiple detections of the same threat, each detection will be listed separately, based on the time of each detection:

```PowerShell
Get-MpThreatDetection
```

![IMAGEALT](images/defender/wdav-get-mpthreatdetection.png)

You can specify `-ThreatID` to limit the output to only show the detections for a specific threat.

If you want to list threat detections, but combine detections of the same threat into a single item, you can use the following cmdlet:

```PowerShell
Get-MpThreat
```

![IMAGEALT](images/defender/wdav-get-mpthreat.png)

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md) and [Defender cmdlets](https://technet.microsoft.com/itpro/powershell/windows/defender/index) for more information on how to use PowerShell with Windows Defender Antivirus.

**Use Windows Management Instruction (WMI) to review scan results:**

Use the [**Get** method of the **MSFT_MpThreat** and **MSFT_MpThreatDetection**](https://msdn.microsoft.com/library/dn439477(v=vs.85).aspx) classes.





## Related topics

- [Customize, initiate, and review the results of Windows Defender Antivirus scans and remediation](customize-run-review-remediate-scans-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)

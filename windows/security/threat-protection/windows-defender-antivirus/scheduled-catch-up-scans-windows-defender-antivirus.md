---
title: Schedule regular quick and full scans with Windows Defender AV
description: Set up recurring (scheduled) scans, including when they should run and whether they run as full or quick scans
keywords: quick scan, full scan, quick vs full, schedule scan, daily, weekly, time, scheduled, recurring, regular
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 12/10/2018
ms.reviewer: 
manager: dansimp
---

# Configure scheduled quick or full Windows Defender Antivirus scans

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

> [!NOTE]
> By default, Windows Defender Antivirus checks for an update 15 minutes before the time of any scheduled scans. You can [Manage the schedule for when protection updates should be downloaded and applied](manage-protection-update-schedule-windows-defender-antivirus.md) to override this default. 


In addition to always-on real-time protection and [on-demand](run-scan-windows-defender-antivirus.md) scans, you can set up regular, scheduled scans. 

You can configure the type of scan, when the scan should occur, and if the scan should occur after a [protection update](manage-protection-updates-windows-defender-antivirus.md) or if the endpoint is being used. You can also specify when special scans to complete remediation should occur.

This topic describes how to configure scheduled scans with Group Policy, PowerShell cmdlets, and WMI. You can also configure schedules scans with [System Center Configuration Manager](https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-antimalware-policies#scheduled-scans-settings) or [Microsoft Intune](https://docs.microsoft.com/intune/device-restrictions-configure).

To configure the Group Policy settings described in this topic:

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus** and then the **Location** specified in the table below.

6. Double-click the policy **Setting** as specified in the table below, and set the option to your desired configuration. Click **OK**, and repeat for any other settings.

Also see the [Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-windows-defender-antivirus.md) and [Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-windows-defender-antivirus.md) topics.

## Quick scan versus full scan and custom scan

When you set up scheduled scans, you can set up whether the scan should be a full or quick scan.

Quick scans look at all the locations where there could be malware registered to start with the system, such as registry keys and known Windows startup folders. 

Combined with [always-on real-time protection capability](configure-real-time-protection-windows-defender-antivirus.md) - which reviews files when they are opened and closed, and whenever a user navigates to a folder - a quick scan helps provide strong coverage both for malware that starts with the system and kernel-level malware.  

In most instances, this means a quick scan is adequate to find malware that wasn't picked up by real-time protection.

A full scan can be useful on endpoints that have encountered a malware threat to identify if there are any inactive components that require a more thorough clean-up. In this instance, you may want to use a full scan when running an [on-demand scan](run-scan-windows-defender-antivirus.md).

A custom scan allows you to specify the files and folders to scan, such as a USB drive. 

>[!NOTE]
>By default, quick scans run on mounted removable devices, such as USB drives.

## Set up scheduled scans

Scheduled scans will run at the day and time you specify. You can use Group Policy, PowerShell, and WMI to configure scheduled scans.

>[!NOTE]
>If a computer is unplugged and running on battery during a scheduled full scan, the scheduled scan will stop with event 1002, which states that the scan stopped before completion. Windows Defender Antivirus will run a full scan at the next scheduled time.

**Use Group Policy to schedule scans:**

Location | Setting | Description | Default setting (if not configured)
---|---|---|---
Scan | Specify the scan type to use for a scheduled scan | Quick scan
Scan | Specify the day of the week to run a scheduled scan | Specify the day (or never) to run a scan. | Never
Scan | Specify the time of day to run a scheduled scan | Specify the number of minutes after midnight (for example, enter **60** for 1 am). | 2 am
Root | Randomize scheduled task times |In Windows Defender Antivirus: Randomize the start time of the scan to any interval from 0 to 4 hours. <br>In FEP/SCEP: randomize to any interval plus or minus 30 minutes. This can be useful in VM or VDI deployments. | Enabled

**Use PowerShell cmdlets to schedule scans:**

Use the following cmdlets:

```PowerShell
Set-MpPreference -ScanParameters
Set-MpPreference -ScanScheduleDay
Set-MpPreference -ScanScheduleTime
Set-MpPreference -RandomizeScheduleTaskTimes

```

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md) and [Defender cmdlets](https://technet.microsoft.com/itpro/powershell/windows/defender/index) for more information on how to use PowerShell with Windows Defender Antivirus.

**Use Windows Management Instruction (WMI) to schedule scans:**

Use the [**Set** method of the **MSFT_MpPreference**](https://msdn.microsoft.com/library/dn455323(v=vs.85).aspx) class for the following properties:

```WMI
SignatureFallbackOrder
SignatureDefinitionUpdateFileSharesSouce
```

See the following for more information and allowed parameters:
- [Windows Defender WMIv2 APIs](https://msdn.microsoft.com/library/dn439477(v=vs.85).aspx)




## Start scheduled scans only when the endpoint is not in use

You can set the scheduled scan to only occur when the endpoint is turned on but not in use with Group Policy, PowerShell, or WMI.

**Use Group Policy to schedule scans**

Location | Setting | Description | Default setting (if not configured)
---|---|---|---
Scan | Start the scheduled scan only when computer is on but not in use | Scheduled scans will not run, unless the computer is on but not in use | Enabled

**Use PowerShell cmdlets:**

Use the following cmdlets:

```PowerShell
Set-MpPreference -ScanOnlyIfIdleEnabled
```

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md) and [Defender cmdlets](https://technet.microsoft.com/itpro/powershell/windows/defender/index) for more information on how to use PowerShell with Windows Defender Antivirus.

**Use Windows Management Instruction (WMI):**

Use the [**Set** method of the **MSFT_MpPreference**](https://msdn.microsoft.com/library/dn455323(v=vs.85).aspx) class for the following properties:

```WMI
SignatureFallbackOrder
SignatureDefinitionUpdateFileSharesSouce
```

See the following for more information and allowed parameters:
- [Windows Defender WMIv2 APIs](https://msdn.microsoft.com/library/dn439477(v=vs.85).aspx)

<a id="remed"></a>
## Configure when full scans should be run to complete remediation

Some threats may require a full scan to complete their removal and remediation. You can schedule when these scans should occur with Group Policy, PowerShell, or WMI.


**Use Group Policy to schedule remediation-required scans**

Location | Setting | Description | Default setting (if not configured)
---|---|---|---
Remediation | Specify the day of the week to run a scheduled full scan to complete remediation | Specify the day (or never) to run a scan. | Never
Remediation | Specify the time of day to run a scheduled full scan to complete remediation | Specify the number of minutes after midnight (for example, enter **60** for 1 am) | 2 am

**Use PowerShell cmdlets:**

Use the following cmdlets:

```PowerShell
Set-MpPreference -RemediationScheduleDay
Set-MpPreference -RemediationScheduleTime
```

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md) and [Defender cmdlets](https://technet.microsoft.com/itpro/powershell/windows/defender/index) for more information on how to use PowerShell with Windows Defender Antivirus.

**Use Windows Management Instruction (WMI):**

Use the [**Set** method of the **MSFT_MpPreference**](https://msdn.microsoft.com/library/dn455323(v=vs.85).aspx) class for the following properties:

```WMI
SignatureFallbackOrder
SignatureDefinitionUpdateFileSharesSouce
```

See the following for more information and allowed parameters:
- [Windows Defender WMIv2 APIs](https://msdn.microsoft.com/library/dn439477(v=vs.85).aspx)




## Set up daily quick scans

You can enable a daily quick scan that can be run in addition to your other scheduled scans with Group Policy, PowerShell, or WMI.


**Use Group Policy to schedule daily scans:**

Location | Setting | Description | Default setting (if not configured)
---|---|---|---
Scan | Specify the interval to run quick scans per day | Specify how many hours should elapse before the next quick scan. For example, to run every two hours, enter **2**, for once a day, enter **24**. Enter **0** to never run a daily quick scan. | Never
Scan | Specify the time for a daily quick scan | Specify the number of minutes after midnight (for example, enter **60** for 1 am) | 2 am

**Use PowerShell cmdlets to schedule daily scans:**

Use the following cmdlets:

```PowerShell
Set-MpPreference -ScanScheduleQuickTime
```

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md) and [Defender cmdlets](https://technet.microsoft.com/itpro/powershell/windows/defender/index) for more information on how to use PowerShell with Windows Defender Antivirus.

**Use Windows Management Instruction (WMI) to schedule daily scans:**

Use the [**Set** method of the **MSFT_MpPreference**](https://msdn.microsoft.com/library/dn455323(v=vs.85).aspx) class for the following properties:

```WMI
SignatureFallbackOrder
SignatureDefinitionUpdateFileSharesSouce
```

See the following for more information and allowed parameters:
- [Windows Defender WMIv2 APIs](https://msdn.microsoft.com/library/dn439477(v=vs.85).aspx)


## Enable scans after protection updates

You can force a scan to occur after every [protection update](manage-protection-updates-windows-defender-antivirus.md) with Group Policy.

**Use Group Policy to schedule scans after protection updates**

Location | Setting | Description | Default setting (if not configured)
---|---|---|---
Signature updates | Turn on scan after Security intelligence update | A scan will occur immediately after a new protection update is downloaded | Enabled





## Related topics


- [Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-windows-defender-antivirus.md)
- [Configure and run on-demand Windows Defender Antivirus scans](run-scan-windows-defender-antivirus.md)
- [Configure Windows Defender Antivirus scanning options](configure-advanced-scan-types-windows-defender-antivirus.md)
- [Manage Windows Defender Antivirus updates and apply baselines](manage-updates-baselines-windows-defender-antivirus.md)
- [Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-windows-defender-antivirus.md) 
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)

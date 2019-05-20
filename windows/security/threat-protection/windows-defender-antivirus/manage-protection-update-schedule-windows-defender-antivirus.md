---
title: Schedule Windows Defender Antivirus protection updates
description: Schedule the day, time, and interval for when protection updates should be downloaded 
keywords: updates, security baselines, schedule updates
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: justinha
ms.author: v-anbic
ms.date: 09/03/2018
---

# Manage the schedule for when protection updates should be downloaded and applied

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Windows Defender Antivirus lets you determine when it should look for and download updates.

You can schedule updates for your endpoints by: 

- Specifying the day of the week to check for protection updates 
- Specifying the interval to check for protection updates
- Specifying the time to check for protection updates

You can also randomize the times when each endpoint checks and downloads protection updates. See the [Schedule scans](scheduled-catch-up-scans-windows-defender-antivirus.md) topic for more information.

**Use Configuration Manager to schedule protection updates:**

1.  On your System Center Configuration Manager console, open the antimalware policy you want to change (click **Assets and Compliance** in the navigation pane on the left, then expand the tree to **Overview** > **Endpoint Protection** > **Antimalware Policies**)

2.  Go to the **Definition updates** section.

3. To check and download updates at a certain time:
      1. Set **Check for Endpoint Protection definitions at a specific interval...** to **0**.
      2. Set **Check for Endpoint Protection definitions daily at...** to the time when updates should be checked.
      3
4. To check and download updates on a continual interval, Set **Check for Endpoint Protection definitions at a specific interval...** to the number of hours that should occur between updates.

5.	[Deploy the updated policy as usual](https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-antimalware-policies#deploy-an-antimalware-policy-to-client-computers).

**Use Group Policy to schedule protection updates:**

> [!IMPORTANT]
> By default, Windows Defender Antivirus will check for an update 15 minutes before the time of any scheduled scans. Enabling these settings will override that default.

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Signature Updates** and configure the following settings:

    1.  Double-click the **Specify the interval to check for definition updates** setting and set the option to **Enabled**. Enter the number of hours between updates. Click **OK**.
    2. Double-click the **Specify the day of the week to check for definition updates** setting and set the option to **Enabled**. Enter the day of the week to check for updates. Click **OK**.
    3. Double-click the **Specify the time to check for definition updates** setting and set the option to **Enabled**. Enter the time when updates should be checked. The time is based on the local time of the endpoint. Click **OK**.



**Use PowerShell cmdlets to schedule protection updates:**

Use the following cmdlets:

```PowerShell
Set-MpPreference -SignatureScheduleDay
Set-MpPreference -SignatureScheduleTime
Set-MpPreference -SignatureUpdateInterval
```

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md)  and [Defender cmdlets](https://technet.microsoft.com/library/dn433280.aspx) for more information on how to use PowerShell with Windows Defender Antivirus.

**Use Windows Management Instruction (WMI) to schedule protection updates:**

Use the [**Set** method of the **MSFT_MpPreference**](https://msdn.microsoft.com/library/dn455323(v=vs.85).aspx) class for the following properties:

```WMI
SignatureScheduleDay
SignatureScheduleTime
SignatureUpdateInterval
```

See the following for more information and allowed parameters:
- [Windows Defender WMIv2 APIs](https://msdn.microsoft.com/library/dn439477(v=vs.85).aspx)


## Related topics

- [Deploy Windows Defender Antivirus](deploy-manage-report-windows-defender-antivirus.md)
- [Manage Windows Defender Antivirus updates and apply baselines](manage-updates-baselines-windows-defender-antivirus.md)
- [Manage updates for endpoints that are out of date](manage-outdated-endpoints-windows-defender-antivirus.md)
- [Manage event-based forced updates](manage-event-based-updates-windows-defender-antivirus.md)
- [Manage updates for mobile devices and virtual machines (VMs)](manage-updates-mobile-devices-vms-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)







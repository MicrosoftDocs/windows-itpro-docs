---
title: Apply Windows Defender AV protection updates to out of date endpoints
description: Define when and how updates should be applied for endpoints that have not updated in a while.
keywords: updates, protection, out-of-date, outdated, old, catch-up
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Manage updates and scans for endpoints that are out of date

**Applies to**
-   Windows 10

**Audience**

- Network administrators

**Manageability available with**

- Group Policy
- System Center Configuration Manager
- PowerShell cmdlets
- Windows Management Instruction (WMI)



Windows Defender AV lets you define how long an endpoint can avoid an update or how many scans it can miss before it is required to update and scan itself. This is especially useful in environments where devices are not often connected to a corporate or external network, or devices that are not used on a daily basis.

For example, an employee that uses a particular PC is on break for three days and does not log on to their PC during that time.

When the user returns to work and logs on to their PC, Windows Defender AV will immediately check and download the latest protection updates, and run a scan.

## Set up catch-up protection updates for endpoints that haven't updated for a while

If Windows Defender AV did not download protection updates for a specified period, you can set it up to automatically check and download the latest update at the next log on. This is useful if you have [globally disabled automatic update downloads on startup](manage-event-based-updates-windows-defender-antivirus.md).

**Use Group Policy to enable and configure the catch-up update feature:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Signature Updates**.

6.  Double-click the **Define the number of days after which a catch-up definition update is required** setting and set the option to **Enabled**. Enter the number of days after which you want Windows Defender AV to check for and download the latest protection update.

7. Click **OK**.

**Use PowerShell cmdlets to configure catch-up protection updates:**

Use the following cmdlets to enable cloud-delivered protection:

```PowerShell
Set-MpPreference -SignatureUpdateCatchupInterval
```

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md)  and [Defender cmdlets](https://technet.microsoft.com/en-us/library/dn433280.aspx) for more information on how to use PowerShell with Windows Defender Antivirus.

**Use Windows Management Instruction (WMI) to configure catch-up protection updates:**

Use the [**Set** method of the **MSFT_MpPreference**](https://msdn.microsoft.com/en-us/library/dn455323(v=vs.85).aspx) class for the following properties:

```WMI
SignatureUpdateCatchupInterval
```

See the following for more information and allowed parameters:
- [Windows Defender WMIv2 APIs](https://msdn.microsoft.com/en-us/library/dn439477(v=vs.85).aspx)


**Use Configuration Manager to configure catch-up protection updates:**

1.  On your System Center Configuration Manager console, open the antimalware policy you want to change (click **Assets and Compliance** in the navigation pane on the left, then expand the tree to **Overview** > **Endpoint Protection** > **Antimalware Policies**)

2.  Go to the **Definition updates** section and configure the following settings:

    1.	Set **Force a definition update if the client computer is offline for more than two consecutive scheduled updates** to **Yes**.
    2.	For the  **If Configuration Manager is used as a source for definition updates...**, specify the hours before which the protection updates delivered by Configuration Manager should be considered out-of-date. This will cause the next update location to be used, based on the defined [fallback source order](manage-protection-updates-windows-defender-antivirus.md#fallback-order).

3. Click **OK**.

4.	[Deploy the updated policy as usual](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-policies#deploy-an-antimalware-policy-to-client-computers).


## Set the number of days before protection is reported as out-of-date

You can also specify the number of days after which Windows Defender AV protection is considered old or out-of-date. After the specified number of days, the client will report itself as out-of-date, and show an error to the user of the PC. It may also cause Windows Defender AV to attempt to download an update from other sources (based on the defined [fallback source order](manage-protection-updates-windows-defender-antivirus.md#fallback-order).

**Use Group Policy to specify the number of days before protection is considered out-of-date:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Signature Updates** and configure the following settings:

    1.  Double-click the **Define the number of days before spyware definitions are considered out of date** setting and set the option to **Enabled**. Enter the number of days after which you want Windows Defender AV to consider spyware definitions as out-of-date.

    2. Click **OK**.

    3.  Double-click the **Define the number of days before virus definitions are considered out of date** setting and set the option to **Enabled**. Enter the number of days after which you want Windows Defender AV to consider virus and other threat definitions as out-of-date.

    4. Click **OK**.




## Set up catch-up scans for endpoints that have not been scanned for a while

You can set the number of consecutive scheduled scans that can be missed before Windows Defender AV will force a scan.

The process for enabling this feature is:

1. Set up at least one scheduled scan (see the [Schedule scans](scheduled-catch-up-scans-windows-defender-antivirus.md) topic).
2. Enable the catch-up scan feature.
3. Define the number of scans that can be skipped before a catch-up scan occurs.

This feature can be enabled for both full and quick scans.

**Use Group Policy to enable and configure the catch-up scan feature:**

1.  Ensure you have set up at least one scheduled scan.

2.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Scan** and configure the following settings:

    1.  If you have set up scheduled quick scans, double-click the **Turn on catch-up quick scan** setting and set the option to **Enabled**. 
    2. If you have set up scheduled full scans, double-click the **Turn on catch-up full scan** setting and set the option to **Enabled**. Click **OK**.
    3. Double-click the **Define the number of days after which a catch-up scan is forced** setting and set the option to **Enabled**. 
    4. Enter the number of scans that can be missed before a scan will be automatically run when the user next logs on to the PC. The type of scan that is run is determined by the **Specify the scan type to use for a scheduled scan** (see the [Schedule scans](scheduled-catch-up-scans-windows-defender-antivirus.md) topic). Click **OK**.

> [!NOTE]
> The GP setting title refers to the number of days. The setting, however, is applied to the number of scans (not days) before the catch-up scan will be run.

**Use PowerShell cmdlets to XX:**

Use the following cmdlets to enable cloud-delivered protection:

```PowerShell
Set-MpPreference -DisableCatchupFullScan
Set-MpPreference -DisableCatchupQuickScan

```

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md)  and [Defender cmdlets](https://technet.microsoft.com/en-us/library/dn433280.aspx) for more information on how to use PowerShell with Windows Defender Antivirus.

**Use Windows Management Instruction (WMI) to configure catch-up scans:**

Use the [**Set** method of the **MSFT_MpPreference**](https://msdn.microsoft.com/en-us/library/dn455323(v=vs.85).aspx) class for the following properties:

```WMI
DisableCatchupFullScan
DisableCatchupQuickScan
```

See the following for more information and allowed parameters:
- [Windows Defender WMIv2 APIs](https://msdn.microsoft.com/en-us/library/dn439477(v=vs.85).aspx)


**Use Configuration Manager to configure catch-up scans:**

1.  On your System Center Configuration Manager console, open the antimalware policy you want to change (click **Assets and Compliance** in the navigation pane on the left, then expand the tree to **Overview** > **Endpoint Protection** > **Antimalware Policies**)

2.  Go to the **Scheduled scans** section and **Force a scan of the selected scan type if client computer is offline...** to **Yes**. 

3. Click **OK**.

4.	[Deploy the updated policy as usual](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-policies#deploy-an-antimalware-policy-to-client-computers).


## Related topics

- [Manage Windows Defender Antivirus updates and apply baselines](manage-updates-baselines-windows-defender-antivirus.md)
- [Update and manage Windows Defender in Windows 10](get-started-with-windows-defender-for-windows-10.md)
- [Troubleshoot Windows Defender in Windows 10](troubleshoot-windows-defender-in-windows-10.md)

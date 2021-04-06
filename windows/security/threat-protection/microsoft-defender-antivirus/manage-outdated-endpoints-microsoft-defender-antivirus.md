---
title: Apply Microsoft Defender AV protection updates to out of date endpoints
description: Define when and how updates should be applied for endpoints that have not updated in a while.
keywords: updates, protection, out-of-date, outdated, old, catch-up
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 09/03/2018
ms.reviewer: 
manager: dansimp
ms.technology: mde
---

# Manage Microsoft Defender Antivirus updates and scans for endpoints that are out of date

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

Microsoft Defender Antivirus lets you define how long an endpoint can avoid an update or how many scans it can miss before it is required to update and scan itself. This is especially useful in environments where devices are not often connected to a corporate or external network, or devices that are not used on a daily basis.

For example, an employee that uses a particular PC is on break for three days and does not log on to their PC during that time.

When the user returns to work and logs on to their PC, Microsoft Defender Antivirus will immediately check and download the latest protection updates, and run a scan.

## Set up catch-up protection updates for endpoints that haven't updated for a while

If Microsoft Defender Antivirus did not download protection updates for a specified period, you can set it up to automatically check and download the latest update at the next log on. This is useful if you have [globally disabled automatic update downloads on startup](manage-event-based-updates-microsoft-defender-antivirus.md).

### Use Configuration Manager to configure catch-up protection updates

1.  On your Microsoft Endpoint Manager console, open the antimalware policy you want to change (click **Assets and Compliance** in the navigation pane on the left, then expand the tree to **Overview** > **Endpoint Protection** > **Antimalware Policies**)

2.  Go to the **Security intelligence updates** section and configure the following settings:

    1. Set **Force a security intelligence update if the client computer is offline for more than two consecutive scheduled updates** to **Yes**.
    2. For the  **If Configuration Manager is used as a source for security intelligence updates...**, specify the hours before which the protection updates delivered by Configuration Manager should be considered out-of-date. This will cause the next update location to be used, based on the defined [fallback source order](manage-protection-updates-microsoft-defender-antivirus.md#fallback-order).

3. Click **OK**.

4.	[Deploy the updated policy as usual](/sccm/protect/deploy-use/endpoint-antimalware-policies#deploy-an-antimalware-policy-to-client-computers).

### Use Group Policy to enable and configure the catch-up update feature

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration**.

3. Click **Policies** then **Administrative templates**.

4. Expand the tree to **Windows components > Microsoft Defender Antivirus > Signature Updates**.

5. Double-click the **Define the number of days after which a catch-up security intelligence update is required** setting and set the option to **Enabled**. Enter the number of days after which you want Microsoft Defender AV to check for and download the latest protection update.

6. Click **OK**.

### Use PowerShell cmdlets to configure catch-up protection updates

Use the following cmdlets:

```PowerShell
Set-MpPreference -SignatureUpdateCatchupInterval
```

See [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md)  and [Defender cmdlets](/powershell/module/defender/) for more information on how to use PowerShell with Microsoft Defender Antivirus.

### Use Windows Management Instruction (WMI) to configure catch-up protection updates

Use the [**Set** method of the **MSFT_MpPreference**](/previous-versions/windows/desktop/legacy/dn455323(v=vs.85)) class for the following properties:

```WMI
SignatureUpdateCatchupInterval
```

See the following for more information and allowed parameters:
- [Windows Defender WMIv2 APIs](/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal)


## Set the number of days before protection is reported as out-of-date

You can also specify the number of days after which Microsoft Defender Antivirus protection is considered old or out-of-date. After the specified number of days, the client will report itself as out-of-date, and show an error to the user of the PC. It may also cause Microsoft Defender Antivirus to attempt to download an update from other sources (based on the defined [fallback source order](manage-protection-updates-microsoft-defender-antivirus.md#fallback-order)), such as when using MMPC as a secondary source after setting WSUS or Microsoft Update as the first source.

### Use Group Policy to specify the number of days before protection is considered out-of-date

1.  On your Group Policy management machine, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Microsoft Defender Antivirus > Signature Updates** and configure the following settings:

    1.  Double-click **Define the number of days before spyware definitions are considered out of date** and set the option to **Enabled**. Enter the number of days after which you want Microsoft Defender AV to consider spyware Security intelligence to be out-of-date.

    2. Click **OK**.

    3.  Double-click **Define the number of days before virus definitions are considered out of date** and set the option to **Enabled**. Enter the number of days after which you want Microsoft Defender AV to consider virus Security intelligence to be out-of-date.

    4. Click **OK**.


## Set up catch-up scans for endpoints that have not been scanned for a while

You can set the number of consecutive scheduled scans that can be missed before Microsoft Defender Antivirus will force a scan.

The process for enabling this feature is:

1. Set up at least one scheduled scan (see the [Schedule scans](scheduled-catch-up-scans-microsoft-defender-antivirus.md) topic).
2. Enable the catch-up scan feature.
3. Define the number of scans that can be skipped before a catch-up scan occurs.

This feature can be enabled for both full and quick scans.

### Use Group Policy to enable and configure the catch-up scan feature

1.  Ensure you have set up at least one scheduled scan.

2.  On your Group Policy management machine, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Microsoft Defender Antivirus > Scan** and configure the following settings:

    1.  If you have set up scheduled quick scans, double-click the **Turn on catch-up quick scan** setting and set the option to **Enabled**. 
    2. If you have set up scheduled full scans, double-click the **Turn on catch-up full scan** setting and set the option to **Enabled**. Click **OK**.
    3. Double-click the **Define the number of days after which a catch-up scan is forced** setting and set the option to **Enabled**. 
    4. Enter the number of scans that can be missed before a scan will be automatically run when the user next logs on to the PC. The type of scan that is run is determined by the **Specify the scan type to use for a scheduled scan** (see the [Schedule scans](scheduled-catch-up-scans-microsoft-defender-antivirus.md) topic). Click **OK**.

> [!NOTE]
> The Group Policy setting title refers to the number of days. The setting, however, is applied to the number of scans (not days) before the catch-up scan will be run.

### Use PowerShell cmdlets to configure catch-up scans

Use the following cmdlets:

```PowerShell
Set-MpPreference -DisableCatchupFullScan
Set-MpPreference -DisableCatchupQuickScan

```

See [Use PowerShell cmdlets to manage Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md)  and [Defender cmdlets](/powershell/module/defender/) for more information on how to use PowerShell with Microsoft Defender Antivirus.

### Use Windows Management Instruction (WMI) to configure catch-up scans

Use the [**Set** method of the **MSFT_MpPreference**](/previous-versions/windows/desktop/legacy/dn455323(v=vs.85)) class for the following properties:

```WMI
DisableCatchupFullScan
DisableCatchupQuickScan
```

See the following for more information and allowed parameters:
- [Windows Defender WMIv2 APIs](/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal)


### Use Configuration Manager to configure catch-up scans

1.  On your Microsoft Endpoint Manager console, open the antimalware policy you want to change (click **Assets and Compliance** in the navigation pane on the left, then expand the tree to **Overview** > **Endpoint Protection** > **Antimalware Policies**)

2.  Go to the **Scheduled scans** section and **Force a scan of the selected scan type if client computer is offline...** to **Yes**. 

3. Click **OK**.

4.	[Deploy the updated policy as usual](/sccm/protect/deploy-use/endpoint-antimalware-policies#deploy-an-antimalware-policy-to-client-computers).

## Related articles

- [Deploy Microsoft Defender Antivirus](deploy-manage-report-microsoft-defender-antivirus.md)
- [Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md)
- [Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-microsoft-defender-antivirus.md)
- [Manage event-based forced updates](manage-event-based-updates-microsoft-defender-antivirus.md)
- [Manage updates for mobile devices and virtual machines (VMs)](manage-updates-mobile-devices-vms-microsoft-defender-antivirus.md)
- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
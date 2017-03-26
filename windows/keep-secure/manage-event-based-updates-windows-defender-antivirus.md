---
title: Apply Windows Defender AV updates after certain events
description: Manage how Windows Defender Antivirus applies proteciton updates after startup or receiving cloud-delivered detection reports.
keywords: updates, protection, force updates, events, startup, check for latest, notifications
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Manage event-based forced updates

**Applies to**
-   Windows 10

**Audience**

- Network administrators

**Manageability available with**

- Group Policy
- System Center Configuration Manager
- PowerShell cmdlets
- Windows Management Instruction (WMI)


Windows Defender AV allows you to determine if updates should (or should not) occur after certain events, such as at startup or after receiving specific reports from the cloud-delivered protection service.


## Check for protection updates before running a scan

You can use Group Policy, Configuration Manager, PowerShell cmdlets, and WMI to force Windows Defender AV to check and download protection updates before running a scheduled scan.


**Use Group Policy to check for protection updates before running a scan:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Scan**.

6.  Double-click the **Check for the latest virus and spyware definitions before running a scheduled scan** setting and set the option to **Enabled**. 

7.  Click **OK**.

**Use Configuration Manager to check for protection updates before running a scan:**

1.  On your System Center Configuration Manager console, open the antimalware policy you want to change (click **Assets and Compliance** in the navigation pane on the left, then expand the tree to **Overview** > **Endpoint Protection** > **Antimalware Policies**)

2.  Go to the **Scheduled scans** section and set **Check for the latest definition updates before running a scan** to **Yes**.

3. Click **OK**.

4.	[Deploy the updated policy as usual](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-policies#deploy-an-antimalware-policy-to-client-computers).

**Use PowerShell cmdlets to to check for protection updates before running a scan:**

Use the following cmdlets:

```PowerShell
Set-MpPreference -CheckForSignaturesBeforeRunningScan
```

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md)  and [Defender cmdlets](https://technet.microsoft.com/en-us/library/dn433280.aspx) for more information on how to use PowerShell with Windows Defender Antivirus.


**Use Windows Management Instruction (WMI) to to check for protection updates before running a scan**

Use the [**Set** method of the **MSFT_MpPreference**](https://msdn.microsoft.com/en-us/library/dn455323(v=vs.85).aspx) class for the following properties:

```WMI
CheckForSignaturesBeforeRunningScan
```

See the following for more information:
- [Windows Defender WMIv2 APIs](https://msdn.microsoft.com/en-us/library/dn439477(v=vs.85).aspx)






## Check for protection updates on startup

You can use Group Policy to force Windows Defender AV to check and download protection updates when the machine is started.

**Use Group Policy to download protection updates at startup:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Signature Updates**.

5.  Double-click the **Check for the latest virus and spyware definitions on startup** setting and set the option to **Enabled**. 

6.  Click **OK**.

You can also use Group Policy, PowerShell, or WMI to configure Windows Defender AV to check for updates at startup even when it is not running.

**Use Group Policy to download updates when Windows Defender AV is not present:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Signature Updates**.

6.  Double-click the **Initiate definition update on startup** setting and set the option to **Enabled**. 

7.  Click **OK**.

**Use PowerShell cmdlets to download updates when Windows Defender AV is not present:**

Use the following cmdlets to enable cloud-delivered protection:

```PowerShell
Set-MpPreference -SignatureDisableUpdateOnStartupWithoutEngine
```

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md)  and [Defender cmdlets](https://technet.microsoft.com/en-us/library/dn433280.aspx) for more information on how to use PowerShell with Windows Defender Antivirus.


**Use Windows Management Instruction (WMI) to download updates when Windows Defender AV is not present:**

Use the [**Set** method of the **MSFT_MpPreference**](https://msdn.microsoft.com/en-us/library/dn455323(v=vs.85).aspx) class for the following properties:

```WMI
SignatureDisableUpdateOnStartupWithoutEngine
```

See the following for more information:
- [Windows Defender WMIv2 APIs](https://msdn.microsoft.com/en-us/library/dn439477(v=vs.85).aspx)





<a id="cloud-report-updates"></a>
## Allow ad hoc changes to protection based on cloud-delivered protection

Windows Defender AV can make changes to its protection based on cloud-delivered protection. This can occur outside of normal or scheduled protection updates.

If you have enabled cloud-delivered protection, Windows Defender AV will send files it is suspicious about to the Windows Defender cloud. If the cloud service reports that the file is malicious, and the file is detected in a recent protection update, you can use Group Policy to configure Windows Defender AV to automatically receive that protection update. Other important protection updates can also be applied.

**Use Group Policy to automatically download recent updates based on cloud-delivered protection:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Signature Updates** and configure the following:
    1. Double-click the **Allow real-time definition updates based on reports to Microsoft MAPS** setting and set the option to **Enabled**. Click **OK**.
    2. Double-click the **Allow notifications to disable definitions based reports to Microsoft MAPS** setting and set the option to **Enabled**. Click **OK**.



## Related topics

- [Manage Windows Defender Antivirus updates and apply baselines](manage-updates-baselines-windows-defender-antivirus.md)
- [Update and manage Windows Defender in Windows 10](get-started-with-windows-defender-for-windows-10.md)
- [Troubleshoot Windows Defender in Windows 10](troubleshoot-windows-defender-in-windows-10.md)




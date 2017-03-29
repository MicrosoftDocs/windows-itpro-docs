---
title: Configure scanning options for Windows Defender AV
description: You can configure Windows Defender AV to scan email storage files, back-up or reparse points, network files, and archived files (such as .zip files).
keywords: advanced scans, scanning, email, archive, zip, rar, archive, reparse scanning
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Configure scanning options in Windows Defender AV


**Applies to**
-   Windows 10

**Audience**

- Enterprise security administrators

**Manageability available with**

- Group Policy
- PowerShell
- Windows Management Instrumentation (WMI)
- System Center Configuration Manager
- Microsoft Intune


To configure the Group Policy settings described in the following table:

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus** and then the **Location** specified in the table below.

6. Double-click the policy **Setting** as specified in the table below, and set the option to your desired configuration. Click **OK**, and repeat for any other settings.

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md) and [Defender cmdlets](https://technet.microsoft.com/itpro/powershell/windows/defender/index) for more information on how to use PowerShell with Windows Defender Antivirus.

For using WMI classes, see [Windows Defender WMIv2 APIs](https://msdn.microsoft.com/en-us/library/dn439477(v=vs.85).aspx).

Description | GP location and setting | Default setting (if not configured) | PowerShell `Set-MpPreference` parameter or WMI property for `MSFT_MpPreference` class
---|---|---|---
See [Email scanning limitations](#ref1)) below | Scan > Turn on e-mail scanning | Disabled | `-DisableEmailScanning`
Scan [reparse points](https://msdn.microsoft.com/library/windows/desktop/aa365503.aspx) | Scan > Turn on reparse point scanning | Disabled | `-DisableRestorePoint`
Scan mapped network drives | Scan > Run full scan on mapped network drives | Disabled | `-DisableScanningMappedNetworkDrivesForFullScan`
 Scan archive files (such as .zip or .rar files). The [extensions exclusion list](configure-extension-file-exclusions-windows-defender-antivirus.md) will take precendence over this setting. | Scan > Scan archive files | Enabled | `-DisableArchiveScanning`
Scan files on the network | Scan > Scan network files | Disabled | `-DisableScanningNetworkFiles`
Scan packed executables | Scan > Scan packed executables | Enabled | Not available
Scan removable drives during full scans only | Scan > Scan removable drives | Disabled | `-DisableRemovableDriveScanning`
Specify the level of subfolders within an archive folder to scan | Scan > Specify the maximum depth to scan archive files | 0 | Not available
 Specify the maximum CPU load (as a percentage) during a scan. This a theoretical maximum - scans will not always use the maximum load defined here, but they will never exceed it | Scan > Specify the maximum percentage of CPU utilization during a scan | 50 |  `-ScanAvgCPULoadFactor`
 Specify the maximum size (in kilobytes) of archive files that should be scanned. The default, **0**, applies not limit | Scan > Specify the maximum size of archive files to be scanned | No limit | Not available

**Use Configuration Manager to configure scanning options:**

See [How to create and deploy antimalware policies: Scan settings]( https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-policies#scan-settings) for details on configuring System Center Configuration Manager (current branch).


**Use Microsoft Intune to configure scanning options**



See [Help secure Windows PCs with Endpoint Protection for Microsoft Intune: Scan options](https://docs.microsoft.com/en-us/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune#specify-scan-options-settings) and [Windows Defender policy settings in Windows 10](https://docs.microsoft.com/en-us/intune/deploy-use/windows-10-policy-settings-in-microsoft-intune#windows-defender-1) for more details.
 


<a id="ref1"></a>
### Email scanning limitations
Enabling email scanning will cause Windows Defender AV to scan emails during on-demand and scheduled scans. Embedded objects within an email file (such as attachments and archived files) are also scanned. The following file format types can be scanned and remediated:
- DBX
- MBX
- MIME

>[!WARNING]
> Is this true - can it scan Outlook 2013/ 2016?
> "Windows Defender scans Microsoft Office Outlook 2003 and older email files."

You can configure Windows Defender to scan PST files used by Outlook 2003 or older versions (where the archive type is set to non-uni-code), but Windows Defender cannot remediate threats detected inside PST files. We recommend using [always-on real-time protection](configure-real-time-protection-windows-defender-antivirus.md) to protect against email-based malware.

If Windows Defender detects a threat inside an email, it will show you the following information to assist you in identifying the compromised email, so you can remediate the threat:
-   Email subject
-   Attachment name

>[!WARNING]
>There are some risks associated with scanning some Microsoft Outlook files and email messages. You can read about tips and risks associated with scanning Outlook files and email messages in the following articles:
-   [Scanning Outlook files in Outlook 2013](https://technet.microsoft.com/library/dn769141.aspx#bkmk-1)
-   [Scanning email messages in Outlook 2013](https://technet.microsoft.com/library/dn769141.aspx#bkmk-2)

## Related topics

- [Customize, initiate, and review the results of Windows Defender AV scans and remediation](customize-run-review-remediate-scans-windows-defender-antivirus.md)
- [Configure and run on-demand Windows Defender AV scans](run-scan-windows-defender-antivirus.md)
- [Configure scheduled scans for Windows Defender AV](scheduled-catch-up-scans-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
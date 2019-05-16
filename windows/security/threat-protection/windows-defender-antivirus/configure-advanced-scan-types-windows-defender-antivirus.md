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
ms.localizationpriority: medium
author: justinha
ms.author: v-anbic
ms.date: 10/25/2018

---

# Configure Windows Defender Antivirus scanning options

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

**Use Microsoft Intune to configure scanning options**

See [Configure device restriction settings in Microsoft Intune](https://docs.microsoft.com/intune/device-restrictions-configure) and [Windows Defender Antivirus device restriction settings for Windows 10 in Intune](https://docs.microsoft.com/intune/device-restrictions-windows-10#windows-defender-antivirus) for more details.

<a id="ref1"></a>

**Use Configuration Manager to configure scanning options:**

See [How to create and deploy antimalware policies: Scan settings](https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-antimalware-policies#scan-settings) for details on configuring System Center Configuration Manager (current branch).

**Use Group Policy to configure scanning options**

To configure the Group Policy settings described in the following table:

1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

3. Expand the tree to **Windows components > Windows Defender Antivirus** and then the **Location** specified in the table below.

4. Double-click the policy **Setting** as specified in the table below, and set the option to your desired configuration. Click **OK**, and repeat for any other settings.

Description | Location and setting | Default setting (if not configured) | PowerShell `Set-MpPreference` parameter or WMI property for `MSFT_MpPreference` class
---|---|---|---
See [Email scanning limitations](#ref1)) below | Scan > Turn on e-mail scanning | Disabled | `-DisableEmailScanning`
Scan [reparse points](https://msdn.microsoft.com/library/windows/desktop/aa365503.aspx) | Scan > Turn on reparse point scanning | Disabled | Not available
Scan mapped network drives | Scan > Run full scan on mapped network drives | Disabled | `-DisableScanningMappedNetworkDrivesForFullScan`
 Scan archive files (such as .zip or .rar files). The [extensions exclusion list](configure-extension-file-exclusions-windows-defender-antivirus.md) will take precedence over this setting. | Scan > Scan archive files | Enabled | `-DisableArchiveScanning`
Scan files on the network | Scan > Scan network files | Disabled | `-DisableScanningNetworkFiles`
Scan packed executables | Scan > Scan packed executables | Enabled | Not available
Scan removable drives during full scans only | Scan > Scan removable drives | Disabled | `-DisableRemovableDriveScanning`
Specify the level of subfolders within an archive folder to scan | Scan > Specify the maximum depth to scan archive files | 0 | Not available
 Specify the maximum CPU load (as a percentage) during a scan. Note: This is not a hard limit but rather a guidance for the scanning engine to not exceed this maximum on average. | Scan > Specify the maximum percentage of CPU utilization during a scan | 50 |  `-ScanAvgCPULoadFactor`
 Specify the maximum size (in kilobytes) of archive files that should be scanned. The default, **0**, applies no limit | Scan > Specify the maximum size of archive files to be scanned | No limit | Not available
 Configure low CPU priority for scheduled scans | Scan > Configure low CPU priority for scheduled scans | Disabled | Not available
 
>[!NOTE]
>If real-time protection is enabled, files are scanned before they are accessed and executed. The scanning scope includes all files, including those on mounted removable devices such as USB drives.

**Use PowerShell to configure scanning options**

See [Manage Windows Defender Antivirus with PowerShell cmdlets](use-powershell-cmdlets-windows-defender-antivirus.md) and [Defender cmdlets](https://technet.microsoft.com/itpro/powershell/windows/defender/index) for more information on how to use PowerShell with Windows Defender Antivirus.

**Use WMI to configure scanning options**

For using WMI classes, see [Windows Defender WMIv2 APIs](https://msdn.microsoft.com/library/dn439477(v=vs.85).aspx).

### Email scanning limitations

We recommend using [always-on real-time protection](configure-real-time-protection-windows-defender-antivirus.md) to protect against email-based malware.

Always-on protection scans emails as they arrive and as they are manipulated, just like normal files in the operating system. This provides the strongest form of protection and is the recommended setting for scanning emails.

You can also use this Group Policy to enable scanning of older email files used by Outlook 2003 and older during on-demand and scheduled scans. Embedded objects within an email file (such as attachments and archived files) are also scanned. The following file format types can be scanned and remediated:

- DBX
- MBX
- MIME

PST files used by Outlook 2003 or older (where the archive type is set to non-unicode) can also be scanned, but Windows Defender cannot remediate threats detected inside PST files. This is another reason why we recommend using [always-on real-time protection](configure-real-time-protection-windows-defender-antivirus.md) to protect against email-based malware.

If Windows Defender Antivirus detects a threat inside an email, it will show you the following information to assist you in identifying the compromised email, so you can remediate the threat:

- Email subject
- Attachment name

>[!WARNING]
>There are some risks associated with scanning some Microsoft Outlook files and email messages. You can read about tips and risks associated with scanning Outlook files and email messages in the following articles:
>
> - [Scanning Outlook files in Outlook 2013](https://technet.microsoft.com/library/dn769141.aspx#bkmk-1)
> - [Scanning email messages in Outlook 2013](https://technet.microsoft.com/library/dn769141.aspx#bkmk-2)

## Related topics

- [Customize, initiate, and review the results of Windows Defender Antivirus scans and remediation](customize-run-review-remediate-scans-windows-defender-antivirus.md)
- [Configure and run on-demand Windows Defender Antivirus scans](run-scan-windows-defender-antivirus.md)
- [Configure scheduled Windows Defender Antivirus scans](scheduled-catch-up-scans-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)

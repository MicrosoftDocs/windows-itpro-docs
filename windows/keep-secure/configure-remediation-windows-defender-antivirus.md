---
title: Remediate and resolve infections detected by Windows Defender AV
description: Configure what Windows Defender AV should do when it detects a threat, and how long quarantined files should be retained in the quarantine folder
keywords: remediation, fix, remove, threats, quarantine, scan, restore
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---



# Configure remediation for Windows Defender AV scans

**Applies to**
-   Windows 10

**Audience**

- Enterprise security administrators

**Manageability available with**

- Group Policy
- System Center Configuration Manager 
- PowerShell
- Windows Management Instrumentation (WMI)
- Microsoft Intune

When Windows Defender Antivirus runs a scan, it will attempt to remediate or remove threats that it finds. You can configure how Windows Defender AV should react to certain threats, whether it should create a restore point before remediating, and when it should remove remediated threats.

This topic describes how to configure these settings with Group Policy, but you can also use [System Center Configuration Manager](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-policies#threat-overrides-settings) and [Microsoft Intune](https://docs.microsoft.com/en-us/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune#choose-default-actions-settings).

You can also use the [`Set-MpPreference` PowerShell cmdlet](https://technet.microsoft.com/itpro/powershell/windows/defender/set-mppreference) or [`MSFT_MpPreference` WMI class](https://msdn.microsoft.com/en-us/library/dn439477(v=vs.85).aspx) to configure these settings.

## Configure remediation options

You can configure how remediation with the Group Policy settings described in this section.

To configure these settings:

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus** and then the **Location** specified in the table below.

6. Double-click the policy **Setting** as specified in the table below, and set the option to your desired configuration. Click **OK**, and repeat for any other settings.


Location | Setting | Description | Default setting (if not configured)
---|---|---|---
Scan | Create a system restore point | A system restore point will be created each day before cleaning or scanning is attempted | Disabled
Scan | Turn on removal of items from scan history folder | Specify how many days items should be kept in the scan history | 30 days
Root | Turn off routine remediation | You can specify whether Windows Defender AV automatically remediates threats, or if it should ask the endpoint user what to do. | Disabled (threats are remediated automatically)
Quarantine | Configure removal of items from Quarantine folder | Specify how many days items should be kept in quarantine before being removed | Never removed
Threats | Specify threat alert levels at which default action should not be taken when detected | Every threat that is detected by Windows Defender AV is assigned a threat level (low, medium, high, or severe). You can use this setting to define how all threats for each of the threat levels should be remediated (quarantined, removed, or ignored) | Not applicable
Threats | Specify threats upon which default action should not be taken when detected | Specify how specific threats (using their threat ID) should be remediated. You can specify whether the specific threat should be quarantined, removed, or ignored | Not applicable


Also see the [Configure remediation-required scheduled full scans for Windows Defender AV](scheduled-catch-up-scans-windows-defender-antivirus.md#remed) topic for more remediation-related settings.

## Related topics

- [Configure scanning options in Windows Defender AV](configure-advanced-scan-types-windows-defender-antivirus.md)
- [Configure scheduled scans for Windows Defender AV](scheduled-catch-up-scans-windows-defender-antivirus.md)
- [Configure and run on-demand Windows Defender AV scans](run-scan-windows-defender-antivirus.md)
- [Configure the notifications that appear on endpoints](configure-notifications-windows-defender-antivirus.md)
- [Configure end-user interaction with Windows Defender AV](configure-end-user-interaction-windows-defender-antivirus.md)
- [Customize, initiate, and review the results of Windows Defender AV scans and remediation](customize-run-review-remediate-scans-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
---
title: Configure local overrides for Windows Defender AV settings
description: Enable or disable users from locally changing settings in Windows Defender AV.
keywords: local override, local policy, group policy, gpo, lockdown,merge, lists
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Prevent or allow users to locally modify Windows Defender AV policy settings

**Applies to:**

- Windows 10

**Audience**

- Enterprise security administrators

**Manageability available with**

- Group Policy


By default, Windows Defender AV settings that are deployed via a Group Policy Object to the endpoints in your network will prevent users from locally changing the settings. You can change this in some instances. 

For example, it may be necessary to allow certain user groups (such as security researchers and threat investigators) further control over individual settings on the endpoints they use.

## Configure local overrides for Windows Defender AV settings

The default setting for these policies is **Disabled**.

If they are set to **Enabled**, users on endpoints can make changes to the associated setting with the [Windows Defender Security Center](windows-defender-security-center-antivirus.md) app, local Group Policy settings, and PowerShell cmdlets (where appropriate).

The following table lists each of the override policy setting and the configuration instructions for the associated feature or setting.

To configure these settings:

1. On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3. In the **Group Policy Management Editor** go to **Computer configuration**.

4. Click **Policies** then **Administrative templates**.

5. Expand the tree to **Windows components > Windows Defender Antivirus** and then the **Location** specified in the table below.

6. Double-click the policy **Setting** as specified in the table below, and set the option to your desired configuration. Click **OK**, and repeat for any other settings.

7. Deploy the Group Policy Object as usual.

Location | Setting | Impact if **Enabled** | Configuration topic
---|---|---|---
MAPS | Configure local setting override for reporting to Microsoft MAPS | User can disable cloud protection | [Enable cloud-delivered protection](enable-cloud-protection-windows-defender-antivirus.md)
Quarantine | Configure local setting override for the removal of items from Quarantine folder | User can change the number of days threats are kept in the quarantine folder before being removed |[Configure remediation for scans](configure-remediation-windows-defender-antivirus.md)
Real-time protection | Configure local setting override for monitoring file and program activity on your computer | User can disable real-time protection | [Enable and configure Windows Defender AV always-on protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md)
Real-time protection | Configure local setting override for monitoring for incoming and outgoing file activity | User can change direction for file activity monitoring | [Enable and configure Windows Defender AV always-on protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md)
Real-time protection | Configure local setting override for scanning all downloaded files and attachments | Allow user to disable scans of downloaded files and attachments | [Enable and configure Windows Defender AV always-on protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md)
Real-time protection | Configure local setting override for turn on behavior monitoring | User  | [Enable and configure Windows Defender AV always-on protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md)
Real-time protection | Configure local setting override to turn on real-time protection | xxx | [Enable and configure Windows Defender AV always-on protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md)
Remediation | Configure local setting override for the time of day to run a scheduled full scan to complete remediation | xxx | [Configure remediation for scans](configure-remediation-windows-defender-antivirus.md)
Scan | Configure local setting override for maximum percentage of CPU utilization | xxx | [Configure and run scans](run-scan-windows-defender-antivirus.md)
Scan | Configure local setting override for schedule scan day | xxx | [Configure scheduled scans](scheduled-catch-up-scans-windows-defender-antivirus.md)
Scan | Configure local setting override for scheduled quick scan time | xxx | [Configure scheduled scans](scheduled-catch-up-scans-windows-defender-antivirus.md)
Scan | Configure local setting override for scheduled scan time | xxx | [Configure scheduled scans](scheduled-catch-up-scans-windows-defender-antivirus.md)
Scan | Configure local setting override for the scan type to use for a scheduled scan | xxx | [Configure scheduled scans](scheduled-catch-up-scans-windows-defender-antivirus.md)






## Configure how locally and globally defined threat remediation and exclusions lists are merged

You can also configure how locally defined lists are combined or merged with globally defined lists. This setting applies to [exclusion lists](configure-exclusions-windows-defender-antivirus.md) and [specified remediation lists](configure-remediation-windows-defender-antivirus.md).

By default, lists that have been configured in local group policy and the Windows Defender Security Center app are merged with lists that are defined by the appropriate GPO that you have deployed on your network. Where there are conflicts, the globally defined list takes precendence.

You can disable this setting to ensure that only globally defined lists (such as those from any deployed GPOs) are used.


**Use Group Policy to disable local list merging:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus**.

6. Double-click the **Configure local administrator merge behavior for lists** setting and set the option to **Enabled**. Click **OK**. 



## Related topics

- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
- [Configure end-user interaction with Windows Defender AV](configure-end-user-interaction-windows-defender-antivirus.md)
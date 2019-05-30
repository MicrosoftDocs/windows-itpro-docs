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
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 09/03/2018
ms.reviewer: 
manager: dansimp
---

# Prevent or allow users to locally modify Windows Defender Antivirus policy settings

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

By default, Windows Defender Antivirus settings that are deployed via a Group Policy Object to the endpoints in your network will prevent users from locally changing the settings. You can change this in some instances.

For example, it may be necessary to allow certain user groups (such as security researchers and threat investigators) further control over individual settings on the endpoints they use.

## Configure local overrides for Windows Defender Antivirus settings

The default setting for these policies is **Disabled**.

If they are set to **Enabled**, users on endpoints can make changes to the associated setting with the [Windows Security](windows-defender-security-center-antivirus.md) app, local Group Policy settings, and PowerShell cmdlets (where appropriate).

The following table lists each of the override policy setting and the configuration instructions for the associated feature or setting.

To configure these settings:

1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

3. Expand the tree to **Windows components > Windows Defender Antivirus** and then the **Location** specified in the table below.

4. Double-click the policy **Setting** as specified in the table below, and set the option to your desired configuration. Click **OK**, and repeat for any other settings.

5. Deploy the Group Policy Object as usual.

Location | Setting | Configuration topic
---|---|---|---
MAPS | Configure local setting override for reporting to Microsoft MAPS | [Enable cloud-delivered protection](enable-cloud-protection-windows-defender-antivirus.md)
Quarantine | Configure local setting override for the removal of items from Quarantine folder | [Configure remediation for scans](configure-remediation-windows-defender-antivirus.md)
Real-time protection | Configure local setting override for monitoring file and program activity on your computer | [Enable and configure Windows Defender Antivirus always-on protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md)
Real-time protection | Configure local setting override for monitoring for incoming and outgoing file activity | [Enable and configure Windows Defender Antivirus always-on protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md)
Real-time protection | Configure local setting override for scanning all downloaded files and attachments | [Enable and configure Windows Defender Antivirus always-on protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md)
Real-time protection | Configure local setting override for turn on behavior monitoring | [Enable and configure Windows Defender Antivirus always-on protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md)
Real-time protection | Configure local setting override to turn on real-time protection | [Enable and configure Windows Defender Antivirus always-on protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md)
Remediation | Configure local setting override for the time of day to run a scheduled full scan to complete remediation | [Configure remediation for scans](configure-remediation-windows-defender-antivirus.md)
Scan | Configure local setting override for maximum percentage of CPU utilization | [Configure and run scans](run-scan-windows-defender-antivirus.md)
Scan | Configure local setting override for schedule scan day | [Configure scheduled scans](scheduled-catch-up-scans-windows-defender-antivirus.md)
Scan | Configure local setting override for scheduled quick scan time | [Configure scheduled scans](scheduled-catch-up-scans-windows-defender-antivirus.md)
Scan | Configure local setting override for scheduled scan time | [Configure scheduled scans](scheduled-catch-up-scans-windows-defender-antivirus.md)
Scan | Configure local setting override for the scan type to use for a scheduled scan | [Configure scheduled scans](scheduled-catch-up-scans-windows-defender-antivirus.md)

<a id="merge-lists"></a>

## Configure how locally and globally defined threat remediation and exclusions lists are merged

You can also configure how locally defined lists are combined or merged with globally defined lists. This setting applies to [exclusion lists](configure-exclusions-windows-defender-antivirus.md) and [specified remediation lists](configure-remediation-windows-defender-antivirus.md).

By default, lists that have been configured in local group policy and the Windows Security app are merged with lists that are defined by the appropriate Group Policy Object that you have deployed on your network. Where there are conflicts, the globally-defined list takes precedence.

You can disable this setting to ensure that only globally-defined lists (such as those from any deployed GPOs) are used.

**Use Group Policy to disable local list merging:**

1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

3. Expand the tree to **Windows components > Windows Defender Antivirus**.

4. Double-click **Configure local administrator merge behavior for lists** and set the option to **Enabled**. Click **OK**.

> [!NOTE]
> If you disable local list merging, it will override controlled folder access settings. It also overrides any protected folders or allowed apps set by the local administrator. For more information about controlled folder access settings, see [Enable controlled folder access](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/enable-controlled-folders-exploit-guard).

## Related topics

- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
- [Configure end-user interaction with Windows Defender Antivirus](configure-end-user-interaction-windows-defender-antivirus.md)

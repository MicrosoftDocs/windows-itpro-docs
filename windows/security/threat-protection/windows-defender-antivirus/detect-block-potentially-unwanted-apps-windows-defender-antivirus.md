---
title: Block potentially unwanted applications with Windows Defender Antivirus
description: Enable the potentially unwanted application (PUA) antivirus feature to block unwanted software such as adware.
keywords: pua, enable, unwanted software, unwanted apps, adware, browser toolbar, detect, block, Windows Defender Antivirus
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: detect
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: justinha
ms.author: v-anbic
ms.date: 10/02/2018
---

# Detect and block potentially unwanted applications

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

The potentially unwanted application (PUA) protection feature in Windows Defender Antivirus can detect and block PUAs on endpoints in your network.

These applications are not considered viruses, malware, or other types of threats, but might perform actions on endpoints that adversely affect their performance or use. PUA can also refer to applications that are considered to have poor reputation.

Typical PUA behavior includes:

- Various types of software bundling
- Ad injection into web browsers
- Driver and registry optimizers that detect issues, request payment to fix the errors, but remain on the endpoint and make no changes or optimizations (also known as "rogue antivirus" programs)

These applications can increase the risk of your network being infected with malware, cause malware infections to be harder to identify, and can waste IT resources in cleaning up the applications.

>[!TIP]
>You can also visit the Microsoft Defender ATP demo website at [demo.wd.microsoft.com](https://demo.wd.microsoft.com?ocid=cx-wddocs-testground) to confirm the feature is working and see how it works.

## How it works

Windows Defender Antivirus blocks detected PUA files and attempts to download, move, run, or install them. Blocked PUA files are then moved to quarantined.

When a PUA is detected on an endpoint, Windows Defender Antivirus presents a notification to the user ([unless notifications have been disabled](configure-notifications-windows-defender-antivirus.md)) in the same format as normal threat detections (prefaced with "PUA:"). 

They will also appear in the usual [quarantine list in the Windows Security app](windows-defender-security-center-antivirus.md#detection-history).

## View PUA events

PUA events are reported in the Windows Event Viewer, but not in System Center Configuration Manager or Intune. 

You can turn on email notifications for PUA detections.

See [Troubleshoot event IDs](troubleshoot-windows-defender-antivirus.md) for details on viewing Windows Defender Antivirus events. PUA events are recorded under event ID 1160.

## Configure PUA protection

You can enable PUA protection with Microsoft Intune, System Center Configuration Manager, Group Policy, or PowerShell cmdlets.

You can also use the PUA audit mode to detect PUA without blocking them. The detections will be captured in the Windows event log.

This feature is useful if your company is conducting an internal software security compliance check and you'd like to avoid any false positives.

**Use Intune to configure PUA protection**

See [Configure device restriction settings in Microsoft Intune](https://docs.microsoft.com/intune/device-restrictions-configure) and [Windows Defender Antivirus device restriction settings for Windows 10 in Intune](https://docs.microsoft.com/intune/device-restrictions-windows-10#windows-defender-antivirus) for more details.

**Use Configuration Manager to configure PUA protection:**

PUA protection is enabled by default in System Center Configuration Manager (current branch), including version 1606 and later.

See [How to create and deploy antimalware policies: Scheduled scans settings](https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-antimalware-policies#real-time-protection-settings) for details on configuring System Center Configuration Manager (current branch).

For Configuration Manager 2012, see [How to Deploy Potentially Unwanted Application Protection Policy for Endpoint Protection in Configuration Manager](https://technet.microsoft.com/library/hh508770.aspx#BKMK_PUA).

> [!NOTE]
> PUA events are reported in the Windows Event Viewer and not in System Center Configuration Manager.  

**Use Group Policy to configure PUA protection:**

1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

3. Expand the tree to **Windows components > Windows Defender Antivirus**.

4. Double-click **Configure protection for potentially unwanted applications**.

5. Click **Enabled** to enable PUA protection.

6. In **Options**, select **Block** to block potentially unwanted applications, or select **Audit Mode** to test how the setting will work in your environment. Click **OK**.

**Use PowerShell cmdlets to configure PUA protection:**

Use the following cmdlet:

```PowerShell
Set-MpPreference -PUAProtection
```

Setting the value for this cmdlet to `Enabled` will turn the feature on if it has been disabled. 

Setting `AuditMode` will detect PUAs but will not block them.

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md) and [Defender cmdlets](https://technet.microsoft.com/library/dn433280.aspx) for more information on how to use PowerShell with Windows Defender Antivirus.

## Related topics

- [Next gen protection](windows-defender-antivirus-in-windows-10.md)
- [Configure behavioral, heuristic, and real-time protection](configure-protection-features-windows-defender-antivirus.md)

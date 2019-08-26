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
author: dansimp
ms.author: dansimp
audience: ITPro
ms.date: 10/02/2018
ms.reviewer: 
manager: dansimp
---

# Detect and block potentially unwanted applications

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

The potentially unwanted application (PUA) protection feature in Windows Defender Antivirus can detect and block PUAs on endpoints in your network.

These applications are not considered viruses, malware, or other types of threats, but they might perform actions on endpoints that adversely affect their performance or use. _PUA_ can also refer to a application that has a poor reputation, due to certain kinds of undesirable behavior.

Typical PUA behavior includes:

- Ad injection into web browsers
- Various types of software bundling
- Driver and registry optimizers that detect issues, request payment to fix the errors, and then make no changes or optimizations (also known as "rogue antivirus" programs)

These applications can increase the risk of your network being infected with actual malware, make malware infections harder to identify, or waste IT resources in cleaning them up.

> [!TIP]
> You can visit the Microsoft Defender ATP demo website at [demo.wd.microsoft.com](https://demo.wd.microsoft.com?ocid=cx-wddocs-testground) to confirm that the feature is working, and see it in action.

## How it works

PUAs may operate entirely on a local machine, or rely on remote resources located at an outside URL. PUA protection protects you from local files.

> [!TIP]
> If you are running the next major version of Microsoft Edge, which is Chromium-based, PUA protection will also block URLs associated with potentially unwanted activities.

Windows Defender Antivirus blocks detected PUA files, and any attempts to download, move, run, or install them. Blocked PUA files are then moved to quarantine.

When a PUA is detected on an endpoint, Windows Defender Antivirus sends a notification to the user ([unless notifications have been disabled](configure-notifications-windows-defender-antivirus.md)) in the same format as other threat detections. The notification will be prefaced with _PUA:_ to indicate its content.

The notification will appear in the usual [quarantine list within the Windows Security app](windows-defender-security-center-antivirus.md#detection-history).

## View PUA events

PUA events are reported in the Windows Event Viewer, but not in System Center Configuration Manager or in Intune.

You can turn on email notifications to receive mail about PUA detections.

See [Troubleshoot event IDs](troubleshoot-windows-defender-antivirus.md) for details on viewing Windows Defender Antivirus events. PUA events are recorded under event ID **1160**.

## Configure PUA protection

You can enable PUA protection with Microsoft Intune, System Center Configuration Manager, Group Policy, or via PowerShell cmdlets.

You can also use the PUA audit mode to detect PUAs without blocking them. The detections will be captured in the Windows event log.

PUA audit mode is useful if your company is conducting an internal software security compliance check and you'd like to avoid any false positives.

### Use Intune to configure PUA protection

See [Configure device restriction settings in Microsoft Intune](https://docs.microsoft.com/intune/device-restrictions-configure) and [Windows Defender Antivirus device restriction settings for Windows 10 in Intune](https://docs.microsoft.com/intune/device-restrictions-windows-10#windows-defender-antivirus) for more details.

### Use Configuration Manager to configure PUA protection

PUA protection is enabled by default in the System Center Configuration Manager (current branch), starting with  version 1606.

See [How to create and deploy antimalware policies: Scheduled scans settings](https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-antimalware-policies#real-time-protection-settings) for details on configuring System Center Configuration Manager (current branch).

For Configuration Manager 2012, see [How to Deploy Potentially Unwanted Application Protection Policy for Endpoint Protection in Configuration Manager](https://technet.microsoft.com/library/hh508770.aspx#BKMK_PUA).

> [!NOTE]
> PUA events are reported in the Windows Event Viewer and not in System Center Configuration Manager.

### Use Group Policy to configure PUA protection

1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure, and click **Edit**.

2. In the **Group Policy Management Editor**, go to **Computer configuration** and click **Administrative templates**.

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

Setting `AuditMode` will detect PUAs without blocking them.

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md) and [Defender cmdlets](https://technet.microsoft.com/library/dn433280.aspx) for more information on how to use PowerShell with Windows Defender Antivirus.

## Allow-listing apps

Sometimes a file is erroneously blocked by PUA protection, or a feature of a PUA is required to complete a task. In these cases, a file can be allow-listed. See [How to Configure Endpoint Protection in Configuration Manager](https://docs.microsoft.com/en-us/previous-versions/system-center/system-center-2012-R2/hh508770(v=technet.10)#to-exclude-specific-files-or-folders) for information on allowing files which are currently blocked by PUA protection.

## URL blocking

URL blocking is a new feature, exclusive to the next major version of Microsoft Edge, which is Chromium-based and currently in public preview. URL blocking is provided via [Windows Defender SmartScreen](../windows-defender-smartscreen/windows-defender-smartscreen-overview.md). This feature is off by default, but can easily be turned on in Microsoft Edge (Chromium-based).

1. From the tool bar, select **Settings and more** > **Settings**
1. Select **Privacy and services**
1. Under the **Services** section, you can toggle **Poentially unwanted app blocking** on or off

> [!TIP]
> If you are running Microsoft Edge (Chromium-based), you can safely explore the URL-blocking feature of PUA protection by testing it out on one of our Windows Defender SmartScreen demo pages.

## Related topics

- [Next gen protection](windows-defender-antivirus-in-windows-10.md)
- [Configure behavioral, heuristic, and real-time protection](configure-protection-features-windows-defender-antivirus.md)

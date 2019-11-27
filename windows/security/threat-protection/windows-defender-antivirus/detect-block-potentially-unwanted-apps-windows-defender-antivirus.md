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
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
audience: ITPro
ms.date: 10/02/2018
ms.reviewer: 
manager: dansimp
---

# Detect and block potentially unwanted applications

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)
- [Microsoft Edge](https://docs.microsoft.com/microsoft-edge/deploy/microsoft-edge)

Potentially unwanted applications are not considered viruses, malware, or other types of threats, but they might perform actions on endpoints which adversely affect endpoint performance or use. _PUA_ can also refer to an application that has a poor reputation, as assessed by Microsoft Defender ATP, due to certain kinds of undesirable behavior.

For example:

* **Advertising software:** Software that displays advertisements or promotions, including software that inserts advertisements to webpages.
* **Bundling software:** Software that offers to install other software that is not digitally signed by the same entity. Also, software that offers to install other software that qualify as PUA.
* **Evasion software:** Software that actively tries to evade detection by security products, including software that behaves differently in the presence of security products.

For more examples and a discussion of the criteria we use to label applications for special attention from security features, see [How Microsoft identifies malware and potentially unwanted applications](../intelligence/criteria.md).

Potentially unwanted applications can increase the risk of your network being infected with actual malware, make malware infections harder to identify, or waste IT resources in cleaning them up.

## How it works

### Microsoft Edge

The next major version of Microsoft Edge, which is Chromium-based, blocks potentially unwanted application downloads and associated resource URLs. This feature is provided via [Windows Defender SmartScreen](../windows-defender-smartscreen/windows-defender-smartscreen-overview.md).

#### Enable PUA protection in Chromium-based Microsoft Edge

Although potentially unwanted application protection in Microsoft Edge (Chromium-based) is off by default, it can easily be turned on from within the browser.

1. From the tool bar, select **Settings and more** > **Settings**
1. Select **Privacy and services**
1. Under the **Services** section, you can toggle **Potentially unwanted app blocking** on or off

> [!TIP]
> If you are running Microsoft Edge (Chromium-based), you can safely explore the URL-blocking feature of PUA protection by testing it out on one of our Windows Defender SmartScreen [demo pages](https://demo.smartscreen.msft.net/).

#### Blocking URLs with Windows Defender SmartScreen

In Chromium-based Edge with PUA protection turned on, Windows Defender SmartScreen will protect you from PUA-associated URLs.

Admins can  [configure](https://docs.microsoft.com/DeployEdge/configure-microsoft-edge) how Microsoft Edge and Windows Defender SmartScreen work together to protect groups of users from PUA-associated URLs. There are several group policy [settings](https://docs.microsoft.com/DeployEdge/microsoft-edge-policies#smartscreen-settings) explicitly for Windows
Defender SmartScreen available, including [one for blocking PUA](https://docs.microsoft.com/DeployEdge/microsoft-edge-policies#smartscreenpuaenabled). In addition, admins can
[configure Windows Defender SmartScreen](https://docs.microsoft.com/microsoft-edge/deploy/available-policies?source=docs#configure-windows-defender-smartscreen) as a whole, using group policy settings to turn Windows Defender SmartScreen on or off.

Although Microsoft Defender ATP has its own block list, based upon a data set managed by Microsoft, you can customize this list based on your own threat intelligence. If you [create and manage indicators](../microsoft-defender-atp/manage-indicators.md#create-indicators-for-ips-and-urlsdomains) in the Microsoft Defender ATP portal, Windows Defender SmartScreen will respect the new settings.

### Windows Defender Antivirus

The potentially unwanted application (PUA) protection feature in Windows Defender Antivirus can detect and block PUAs on endpoints in your network.

> [!NOTE]
> This feature is only available in Windows 10.

Windows Defender Antivirus blocks detected PUA files, and any attempts to download, move, run, or install them. Blocked PUA files are then moved to quarantine.

When a PUA is detected on an endpoint, Windows Defender Antivirus sends a notification to the user ([unless notifications have been disabled](configure-notifications-windows-defender-antivirus.md)) in the same format as other threat detections. The notification will be prefaced with _PUA:_ to indicate its content.

The notification will appear in the usual [quarantine list within the Windows Security app](windows-defender-security-center-antivirus.md#detection-history).

#### Configure PUA protection in Windows Defender Antivirus

You can enable PUA protection with Microsoft Intune, System Center Configuration Manager, Group Policy, or via PowerShell cmdlets.

You can also use the PUA audit mode to detect PUAs without blocking them. The detections will be captured in the Windows event log.

> [!TIP]
> You can visit the Microsoft Defender ATP demo website at [demo.wd.microsoft.com](https://demo.wd.microsoft.com/Page/UrlRep) to confirm that the feature is working, and see it in action.

PUA audit mode is useful if your company is conducting an internal software security compliance check and you'd like to avoid any false positives.

##### Use Intune to configure PUA protection

See [Configure device restriction settings in Microsoft Intune](https://docs.microsoft.com/intune/device-restrictions-configure) and [Windows Defender Antivirus device restriction settings for Windows 10 in Intune](https://docs.microsoft.com/intune/device-restrictions-windows-10#windows-defender-antivirus) for more details.

##### Use Configuration Manager to configure PUA protection

PUA protection is enabled by default in the System Center Configuration Manager (Current Branch), starting with  version 1606.

See [How to create and deploy antimalware policies: Scheduled scans settings](https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-antimalware-policies#real-time-protection-settings) for details on configuring System Center Configuration Manager (Current Branch).

For Configuration Manager 2012, see [How to Deploy Potentially Unwanted Application Protection Policy for Endpoint Protection in Configuration Manager](https://technet.microsoft.com/library/hh508770.aspx#BKMK_PUA).

> [!NOTE]
> PUA events blocked by Windows Defender Antivirus are reported in the Windows Event Viewer and not in System Center Configuration Manager.

##### Use Group Policy to configure PUA protection

1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure, and select **Edit**.

2. In the **Group Policy Management Editor**, go to **Computer configuration** and select **Administrative templates**.

3. Expand the tree to **Windows components > Windows Defender Antivirus**.

4. Double-click **Configure protection for potentially unwanted applications**.

5. Select **Enabled** to enable PUA protection.

6. In **Options**, select **Block** to block potentially unwanted applications, or select **Audit Mode** to test how the setting will work in your environment. Select **OK**.

##### Use PowerShell cmdlets to configure PUA protection

Use the following cmdlet:

```PowerShell
Set-MpPreference -PUAProtection
```

Setting the value for this cmdlet to `Enabled` will turn the feature on if it has been disabled.

Setting `AuditMode` will detect PUAs without blocking them.

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md) and [Defender cmdlets](https://technet.microsoft.com/library/dn433280.aspx) for more information on how to use PowerShell with Windows Defender Antivirus.

#### View PUA events

PUA events are reported in the Windows Event Viewer, but not in System Center Configuration Manager or in Intune.

You can turn on email notifications to receive mail about PUA detections.

See [Troubleshoot event IDs](troubleshoot-windows-defender-antivirus.md) for details on viewing Windows Defender Antivirus events. PUA events are recorded under event ID **1160**.

#### Allow-listing apps

Sometimes a file is erroneously blocked by PUA protection, or a feature of a PUA is required to complete a task. In these cases, a file can be allow-listed. See [How to Configure Endpoint Protection in Configuration Manager](https://docs.microsoft.com/previous-versions/system-center/system-center-2012-R2/hh508770(v=technet.10)#to-exclude-specific-files-or-folders) for information on allowing files which are currently blocked by PUA protection in Windows Defender Antivirus.

## Related articles

- [Next-generation protection](windows-defender-antivirus-in-windows-10.md)
- [Configure behavioral, heuristic, and real-time protection](configure-protection-features-windows-defender-antivirus.md)

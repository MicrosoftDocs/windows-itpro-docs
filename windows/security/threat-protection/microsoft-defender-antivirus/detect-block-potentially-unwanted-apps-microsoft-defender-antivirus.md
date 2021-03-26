---
title: Block potentially unwanted applications with Microsoft Defender Antivirus
description: Enable the potentially unwanted application (PUA) antivirus feature to block unwanted software such as adware.
keywords: pua, enable, unwanted software, unwanted apps, adware, browser toolbar, detect, block, Microsoft Defender Antivirus
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: detect
ms.sitesec: library
ms.localizationpriority: high
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
audience: ITPro
ms.date: 03/10/2021
ms.reviewer: 
manager: dansimp
ms.technology: mde
---

# Detect and block potentially unwanted applications

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)
- [Microsoft Edge](/microsoft-edge/deploy/microsoft-edge)

> [!NOTE]
> Potentially unwanted applications (PUA) are a category of software that can cause your machine to run slowly, display unexpected ads, or at worst, install other software which might be unexpected or unwanted. By default in Windows 10 (version 2004 and later), Microsoft Defender Antivirus blocks apps that are considered PUA, for Enterprise (E5) devices.

Potentially unwanted applications (PUA) are not considered viruses, malware, or other types of threats, but they might perform actions on endpoints which adversely affect endpoint performance or use. _PUA_ can also refer to an application that has a poor reputation, as assessed by Microsoft Defender for Endpoint, due to certain kinds of undesirable behavior.

Here are some examples:

- **Advertising software** that displays advertisements or promotions, including software that inserts advertisements to webpages.
- **Bundling software** that offers to install other software that is not digitally signed by the same entity. Also, software that offers to install other software that qualify as PUA.
- **Evasion software** that actively tries to evade detection by security products, including software that behaves differently in the presence of security products.

> [!TIP]
> For more examples and a discussion of the criteria we use to label applications for special attention from security features, see [How Microsoft identifies malware and potentially unwanted applications](../intelligence/criteria.md).

Potentially unwanted applications can increase the risk of your network being infected with actual malware, make malware infections harder to identify, or waste IT resources in cleaning them up. PUA protection is supported on Windows 10, Windows Server 2019, and Windows Server 2016.

## Microsoft Edge

The [new Microsoft Edge](https://support.microsoft.com/microsoft-edge/get-to-know-microsoft-edge-3f4bb0ff-58de-2188-55c0-f560b7e20bea), which is Chromium-based, blocks potentially unwanted application downloads and associated resource URLs. This feature is provided via [Microsoft Defender SmartScreen](../microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview.md).

### Enable PUA protection in Chromium-based Microsoft Edge

Although potentially unwanted application protection in Microsoft Edge (Chromium-based, version 80.0.361.50) is turned off by default, it can easily be turned on from within the browser.

1. Select the ellipses, and then choose **Settings**.
2. Select **Privacy, search, and services**.
3. Under the **Security** section, turn on **Block potentially unwanted apps**.

> [!TIP]
> If you are running Microsoft Edge (Chromium-based), you can safely explore the URL-blocking feature of PUA protection by testing it out on one of our [Microsoft Defender SmartScreen demo pages](https://demo.smartscreen.msft.net/).

### Blocking URLs with Microsoft Defender SmartScreen

In Chromium-based Edge with PUA protection turned on, Microsoft Defender SmartScreen protects you from PUA-associated URLs.

Security admins can [configure](/DeployEdge/configure-microsoft-edge) how Microsoft Edge and Microsoft Defender SmartScreen work together to protect groups of users from PUA-associated URLs. There are several [group policy settings](/DeployEdge/microsoft-edge-policies#smartscreen-settings) explicitly for Microsoft Defender SmartScreen available, including [one for blocking PUA](/DeployEdge/microsoft-edge-policies#smartscreenpuaenabled). In addition, admins can [configure Microsoft Defender SmartScreen](/microsoft-edge/deploy/available-policies?source=docs#configure-windows-defender-smartscreen) as a whole, using group policy settings to turn Microsoft Defender SmartScreen on or off.

Although Microsoft Defender for Endpoint has its own block list based upon a data set managed by Microsoft, you can customize this list based on your own threat intelligence. If you [create and manage indicators](/microsoft-365/security/defender-endpoint/manage-indicators) in the Microsoft Defender for Endpoint portal, Microsoft Defender SmartScreen respects the new settings.

## Microsoft Defender Antivirus

The potentially unwanted application (PUA) protection feature in Microsoft Defender Antivirus can detect and block PUAs on endpoints in your network.

> [!NOTE]
> This feature is available in Windows 10, Windows Server 2019, and Windows Server 2016.

Microsoft Defender Antivirus blocks detected PUA files and any attempts to download, move, run, or install them. Blocked PUA files are then moved to quarantine. When a PUA file is detected on an endpoint, Microsoft Defender Antivirus sends a notification to the user ([unless notifications have been disabled](configure-notifications-microsoft-defender-antivirus.md)) in the same format as other threat detections. The notification is prefaced with `PUA:` to indicate its content.

The notification appears in the usual [quarantine list within the Windows Security app](microsoft-defender-security-center-antivirus.md).

### Configure PUA protection in Microsoft Defender Antivirus

You can enable PUA protection with [Microsoft Intune](/mem/intune/protect/device-protect), [Microsoft Endpoint Configuration Manager](/mem/configmgr/protect/deploy-use/endpoint-protection), [Group Policy](/azure/active-directory-domain-services/manage-group-policy), or via [PowerShell cmdlets](/powershell/module/defender/?preserve-view=true&view=win10-ps).

You can also use PUA protection in audit mode to detect potentially unwanted applications without blocking them. The detections are captured in the Windows event log.

> [!TIP]
> Visit the Microsoft Defender for Endpoint demo website at [demo.wd.microsoft.com](https://demo.wd.microsoft.com/Page/UrlRep) to confirm that the feature is working, and see it in action.

PUA protection in audit mode is useful if your company is conducting an internal software security compliance check and you'd like to avoid any false positives.

#### Use Intune to configure PUA protection

See [Configure device restriction settings in Microsoft Intune](/intune/device-restrictions-configure) and [Microsoft Defender Antivirus device restriction settings for Windows 10 in Intune](/intune/device-restrictions-windows-10#microsoft-defender-antivirus) for more details.

#### Use Configuration Manager to configure PUA protection

PUA protection is enabled by default in the Microsoft Endpoint Manager (Current Branch).

See [How to create and deploy antimalware policies: Scheduled scans settings](/configmgr/protect/deploy-use/endpoint-antimalware-policies#real-time-protection-settings) for details on configuring Microsoft Endpoint Manager (Current Branch).

For System Center 2012 Configuration Manager, see [How to Deploy Potentially Unwanted Application Protection Policy for Endpoint Protection in Configuration Manager](/previous-versions/system-center/system-center-2012-R2/hh508770(v=technet.10)#BKMK_PUA).

> [!NOTE]
> PUA events blocked by Microsoft Defender Antivirus are reported in the Windows Event Viewer and not in Microsoft Endpoint Configuration Manager.

#### Use Group Policy to configure PUA protection

1. Download and install [Administrative Templates (.admx) for Windows 10 October 2020 Update (20H2)](https://www.microsoft.com/download/details.aspx?id=102157)

2. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)).

3. Select the Group Policy Object you want to configure, and then choose **Edit**.

4. In the **Group Policy Management Editor**, go to **Computer configuration** and select **Administrative templates**.

5. Expand the tree to **Windows Components** > **Microsoft Defender Antivirus**.

6. Double-click **Configure detection for potentially unwanted applications**.

7. Select **Enabled** to enable PUA protection.

8. In **Options**, select **Block** to block potentially unwanted applications, or select **Audit Mode** to test how the setting works in your environment. Select **OK**.

9. Deploy your Group Policy object as you usually do.

#### Use PowerShell cmdlets to configure PUA protection

##### To enable PUA protection

```PowerShell
Set-MpPreference -PUAProtection Enabled
```

Setting the value for this cmdlet to `Enabled` turns the feature on if it has been disabled.

##### To set PUA protection to audit mode

```PowerShell
Set-MpPreference -PUAProtection AuditMode
```

Setting `AuditMode` detects PUAs without blocking them.

##### To disable PUA protection

We recommend keeping PUA protection turned on. However, you can turn it off by using the following cmdlet:

```PowerShell
Set-MpPreference -PUAProtection Disabled
```

Setting the value for this cmdlet to `Disabled` turns the feature off if it has been enabled.

See [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md) and [Defender cmdlets](/powershell/module/defender/index) for more information on how to use PowerShell with Microsoft Defender Antivirus.

## View PUA events

PUA events are reported in the Windows Event Viewer, but not in Microsoft Endpoint Manager or in Intune. You can also use the `Get-MpThreat` cmdlet to view threats that Microsoft Defender Antivirus handled. Here's an example:

```console
CategoryID       : 27
DidThreatExecute : False
IsActive         : False
Resources        : {webfile:_q:\Builds\Dalton_Download_Manager_3223905758.exe|http://d18yzm5yb8map8.cloudfront.net/
                    fo4yue@kxqdw/Dalton_Download_Manager.exe|pid:14196,ProcessStart:132378130057195714}
RollupStatus     : 33
SchemaVersion    : 1.0.0.0
SeverityID       : 1
ThreatID         : 213927
ThreatName       : PUA:Win32/InstallCore
TypeID           : 0
PSComputerName   :
```

You can turn on email notifications to receive mail about PUA detections.

See [Troubleshoot event IDs](troubleshoot-microsoft-defender-antivirus.md) for details on viewing Microsoft Defender Antivirus events. PUA events are recorded under event ID **1160**.

## Excluding files

Sometimes a file is erroneously blocked by PUA protection, or a feature of a PUA is required to complete a task. In these cases, a file can be added to an exclusion list.

For more information, see [Configure and validate exclusions based on file extension and folder location](configure-extension-file-exclusions-microsoft-defender-antivirus.md).

## See also

- [Next-generation protection](microsoft-defender-antivirus-in-windows-10.md)
- [Configure behavioral, heuristic, and real-time protection](configure-protection-features-microsoft-defender-antivirus.md)
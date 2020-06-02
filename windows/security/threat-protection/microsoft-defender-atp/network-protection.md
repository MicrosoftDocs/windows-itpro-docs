---
title: Use network protection to help prevent connections to bad sites
description: Protect your network by preventing users from accessing known malicious and suspicious network addresses
keywords: Network protection, exploits, malicious website, ip, domain, domains
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: denisebmsft
ms.author: deniseb
ms.date: 04/30/2019
ms.reviewer: 
manager: dansimp
ms.custom: asr

---

# Protect your network

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Network protection helps reduce the attack surface of your devices from Internet-based events. It prevents employees from using any application to access dangerous domains that may host phishing scams, exploits, and other malicious content on the Internet.

Network protection expands the scope of [Microsoft Defender SmartScreen](../microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview.md) to block all outbound HTTP(s) traffic that attempts to connect to low-reputation sources (based on the domain or hostname).

Network protection is supported beginning with Windows 10, version 1709. 

For more details about how to enable network protection, see [Enable network protection](enable-network-protection.md). Use Group Policy, PowerShell, or MDM CSPs to enable and manage network protection in your network.

> [!TIP]
> You can visit the Windows Defender Testground website at [demo.wd.microsoft.com](https://demo.wd.microsoft.com?ocid=cx-wddocs-testground) to confirm the feature is working and see how it works.

Network protection works best with [Microsoft Defender Advanced Threat Protection](../microsoft-defender-atp/microsoft-defender-advanced-threat-protection.md), which gives you detailed reporting into Windows Defender EG events and blocks as part of the usual [alert investigation scenarios](../microsoft-defender-atp/investigate-alerts.md).

When network protection blocks a connection, a notification will be displayed from the Action Center. You can [customize the notification](customize-attack-surface-reduction.md#customize-the-notification) with your company details and contact information. You can also enable the rules individually to customize what techniques the feature monitors.

You can also use [audit mode](audit-windows-defender.md) to evaluate how Network protection would impact your organization if it were enabled.

## Requirements

Network protection requires Windows 10 Pro, Enterprise E3, E5 and Windows Defender AV real-time protection.

Windows 10 version | Windows Defender Antivirus
-|-
Windows 10 version 1709 or later | [Windows Defender AV real-time protection](../microsoft-defender-antivirus/configure-real-time-protection-microsoft-defender-antivirus.md) and [cloud-delivered protection](../microsoft-defender-antivirus/enable-cloud-protection-microsoft-defender-antivirus.md) must be enabled

## Review network protection events in the Microsoft Defender ATP Security Center

Microsoft Defender ATP provides detailed reporting into events and blocks as part of its [alert investigation scenarios](../microsoft-defender-atp/investigate-alerts.md).

You can query Microsoft Defender ATP data by using [Advanced hunting](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-windows-defender-advanced-threat-protection). If you're using [audit mode](audit-windows-defender.md), you can use advanced hunting to see how network protection settings would affect your environment if they were enabled.

Here is an example query

```kusto
DeviceEvents
| where ActionType in ('ExploitGuardNetworkProtectionAudited','ExploitGuardNetworkProtectionBlocked')
```

## Review network protection events in Windows Event Viewer

You can review the Windows event log to see events that are created when network protection blocks (or audits) access to a malicious IP or domain:

1. [Copy the XML directly](event-views.md).

2. Click **OK**.

3. This will create a custom view that filters to only show the following events related to network protection:

   Event ID | Description
   -|-
   5007 | Event when settings are changed
   1125 | Event when network protection fires in audit mode
   1126 | Event when network protection fires in block mode

## Related articles

- [Evaluate network protection](evaluate-network-protection.md) | Undertake a quick scenario that demonstrate how the feature works, and what events would typically be created.

- [Enable network protection](enable-network-protection.md) | Use Group Policy, PowerShell, or MDM CSPs to enable and manage network protection in your network.

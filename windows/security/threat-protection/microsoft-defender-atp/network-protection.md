---
title: Use network protection to help prevent connections to bad sites
description: Protect your network by preventing users from accessing known malicious and suspicious network addresses
keywords: Network protection, exploits, malicious website, ip, domain, domains
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: denisebmsft
ms.author: deniseb
ms.reviewer: 
manager: dansimp
ms.custom: asr
ms.technology: mde
ms.date: 03/08/2021
---

# Protect your network

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

Network protection helps reduce the attack surface of your devices from Internet-based events. It prevents employees from using any application to access dangerous domains that might host phishing scams, exploits, and other malicious content on the Internet. Network protection expands the scope of [Microsoft Defender SmartScreen](../microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview.md) to block all outbound HTTP(s) traffic that attempts to connect to low-reputation sources (based on the domain or hostname).

Network protection is supported on Windows, beginning with Windows 10, version 1709. 

For more information about how to enable network protection, see [Enable network protection](enable-network-protection.md). Use Group Policy, PowerShell, or MDM CSPs to enable and manage network protection in your network.

> [!TIP]
> See the Microsoft Defender ATP testground site at [demo.wd.microsoft.com](https://demo.wd.microsoft.com?ocid=cx-wddocs-testground) to see how network protection works.

Network protection works best with [Microsoft Defender for Endpoint](../microsoft-defender-atp/microsoft-defender-advanced-threat-protection.md), which gives you detailed reporting into exploit protection events and blocks as part of [alert investigation scenarios](../microsoft-defender-atp/investigate-alerts.md).

When network protection blocks a connection, a notification is displayed from the Action Center. Your security operations team can [customize the notification](customize-attack-surface-reduction.md#customize-the-notification) with your organization's details and contact information. In addition, individual attack surface reduction rules can be enabled and customized to suit certain techniques to monitor.

You can also use [audit mode](audit-windows-defender.md) to evaluate how network protection would impact your organization if it were enabled.

> [!NOTE]
> If network protection is enabled and platform updates are managed, it could cause some systems to lose network connectivity if their systems aren't updated. As a result, some devices might lose network connectivity. In a managed environment, make sure that Configuration Manager auto deployment rule is updating the platform. Make sure this is fully deployed to all clients before turning on network protection.

## Requirements

Network protection requires Windows 10 Pro or Enterprise, and Microsoft Defender Antivirus real-time protection.

| Windows version | Microsoft Defender Antivirus |
|:---|:---|
| Windows 10 version 1709 or later <p>Windows Server 1803 or later | [Microsoft Defender Antivirus real-time protection](../microsoft-defender-antivirus/configure-real-time-protection-microsoft-defender-antivirus.md) and [cloud-delivered protection](../microsoft-defender-antivirus/enable-cloud-protection-microsoft-defender-antivirus.md) must be enabled |

After you have enabled the services, you might need to configure your network or firewall to allow the connections between the services and your devices (also referred to as endpoints).  

- .smartscreen.microsoft.com
- .smartscreen-prod.microsoft.com

## Review network protection events in the Microsoft Defender for Endpoint Security Center

Microsoft Defender for Endpoint provides detailed reporting into events and blocks as part of its [alert investigation scenarios](../microsoft-defender-atp/investigate-alerts.md).

You can query Microsoft Defender for Endpoint data by using [Advanced hunting](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-windows-defender-advanced-threat-protection). If you're using [audit mode](audit-windows-defender.md), you can use advanced hunting to see how network protection settings would affect your environment if they were enabled.

Here is an example query

```kusto
DeviceEvents
| where ActionType in ('ExploitGuardNetworkProtectionAudited','ExploitGuardNetworkProtectionBlocked')
```

## Review network protection events in Windows Event Viewer

You can review the Windows event log to see events that are created when network protection blocks (or audits) access to a malicious IP or domain:

1. [Copy the XML directly](event-views.md).

2. Select **OK**.

This procedure creates a custom view that filters to only show the following events related to network protection:

| Event ID | Description |
|:---|:---|
| 5007 | Event when settings are changed |
| 1125 | Event when network protection fires in audit mode |
| 1126 | Event when network protection fires in block mode |

## Related articles

- [Evaluate network protection](evaluate-network-protection.md) | Undertake a quick scenario that demonstrates how the feature works, and what events would typically be created.

- [Enable network protection](enable-network-protection.md) | Use Group Policy, PowerShell, or MDM CSPs to enable and manage network protection in your network.

---
title: Evaluate attack surface reduction rules
description: See how attack surface reduction would block and prevent attacks with the custom demo tool.
keywords: Attack surface reduction, hips, host intrusion prevention system, protection rules, anti-exploit, antiexploit, exploit, infection prevention, evaluate, test, demo
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
audience: ITPro
author: levinec
ms.author: ellevin
ms.reviewer: 
manager: dansimp
ms.technology: mde
---

# Evaluate attack surface reduction rules

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

>Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-enablesiem-abovefoldlink)

Attack surface reduction rules help prevent actions typically used by malware to compromise devices or networks. Set attack surface reduction rules for devices running any of the following editions and versions of Windows:

- Windows 10 Pro, [version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709) or later
- Windows 10 Enterprise, [version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709) or later
- Windows Server, [version 1803 (Semi-Annual Channel)](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server-1803) or later
- [Windows Server 2019](https://docs.microsoft.com/windows-server/get-started-19/whats-new-19)

Learn how to evaluate attack surface reduction rules by enabling audit mode to test the feature directly in your organization.

> [!TIP]
> You can also visit the Microsoft Defender for Endpoint demo scenario website at [demo.wd.microsoft.com](https://demo.wd.microsoft.com?ocid=cx-wddocs-testground) to confirm the feature is working and see how it works.

## Use audit mode to measure impact

Enable attack surface reduction rules in audit mode to view a record of apps that would have been blocked if the feature was fully enabled. Test how the feature will work in your organization to ensure it doesn't affect your line-of-business apps. You can also get an idea of how often the rules will fire during normal use.

To enable an attack surface reduction rule in audit mode, use the following PowerShell cmdlet:

```PowerShell
Add-MpPreference -AttackSurfaceReductionRules_Ids <rule ID> -AttackSurfaceReductionRules_Actions AuditMode
```

Where `<rule ID>` is a [GUID value of the attack surface reduction rule](attack-surface-reduction.md#attack-surface-reduction-rules).

To enable all the added attack surface reduction rules in audit mode, use the following PowerShell cmdlet:

```PowerShell
(Get-MpPreference).AttackSurfaceReductionRules_Ids | Foreach {Add-MpPreference -AttackSurfaceReductionRules_Ids $_ -AttackSurfaceReductionRules_Actions AuditMode}
```

> [!TIP]
> If you want to fully audit how attack surface reduction rules will work in your organization, you'll need to use a management tool to deploy this setting to devices in your network(s).

You can also use Group Policy, Intune, or mobile device management (MDM) configuration service providers (CSPs) to configure and deploy the setting. Learn more in the main [Attack surface reduction rules](attack-surface-reduction.md) article.

## Review attack surface reduction events in Windows Event Viewer

To review apps that would have been blocked, open Event Viewer and filter for Event ID 1121 in the Microsoft-Windows-Windows Defender/Operational log. The following table lists all network protection events.

Event ID | Description
-|-
 5007 | Event when settings are changed
 1121 | Event when an attack surface reduction rule fires in block mode
 1122 | Event when an attack surface reduction rule fires in audit mode

## Customize attack surface reduction rules

During your evaluation, you may wish to configure each rule individually or exclude certain files and processes from being evaluated by the feature.

See [Customize attack surface reduction rules](customize-attack-surface-reduction.md) for information on configuring the feature with management tools, including Group Policy and MDM CSP policies.

## See also

* [Reduce attack surfaces with attack surface reduction rules](attack-surface-reduction.md)
* [Use audit mode to evaluate Windows Defender](audit-windows-defender.md)
* [Attack surface reduction FAQ](attack-surface-reduction.md)

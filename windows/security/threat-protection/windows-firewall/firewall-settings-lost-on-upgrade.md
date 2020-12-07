---
title: Firewall settings lost on upgrade
description: Firewall settings lost on upgrade
ms.reviewer: 
ms.author: v-bshilpa
ms.prod: w10
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: Benny-54
manager: dansimp
ms.collection: 
- m365-security-compliance
- m365-initiative-windows-security
ms.topic: troubleshooting
---

# Firewall settings lost on upgrade

This article describes a scenario where previously enabled Firewall rules revert to a disabled state after performing a Windows upgrade.

## Rule groups

For organizational purposes, individual built-in Firewall rules are categorized within a group. For example, the following rules form part of the Remote Desktop group.

- Remote Desktop – Shadow (TCP-In)

- Remote Desktop – User Mode (TCP-In)

- Remote Desktop – User-Mode (UDP-In)

Other group examples include the core networking, file and print sharing, and network discovery. Grouping allows admins to manage sets of similar rules by filtering on categories in the Firewall interface (wf.msc). This is acheived by right-clicking on either **Inbound** or **Outbound Rules** and selecting **Filter by Group**; or via PowerShell using the `Get-NetFirewallRule` cmdlet with the `-Group` switch.

```Powershell
Get-NetFirewallRule -Group <groupName>
```

> [!NOTE] 
> It is recommended to enable an entire group instead of individual rules if the expectation is that the ruleset is going to be migrated at some point.

To avoid unexpected behaviors it is recommended to enable/disable all of the rules within a group, as opposed to just one or two of the individual rules. This is because while rule groups are used to organize rules and allow batch rule modification by type, they also represents the 'unit' by which rule state is maintained across a Windows upgrade. Rule groups, as opposed to individual rules, are the unit by which the update process determines what should be enabled/disabled when the upgrade is complete.

Take the Remote Desktop group example shown above. It consists of three rules. To ensure that the ruleset is properly migrated during an upgrade, all three rules must be enabled. If for example only one rule is enabled, the upgrade process will see that two of three rules are disabled and subsequently disable the entire group in an effort to maintain what it sees as the most pristine out-of-the-box configuration possible. Obviously, this scenario brings with it the unintended consequence of breaking RDP (Remote Desktop Protocol) connectivity to the host.

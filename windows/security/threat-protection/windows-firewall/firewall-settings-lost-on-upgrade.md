---
title: Firewall Settings Lost on Upgrade
description: Firewall Settings Lost on Upgrade

ms.reviewer: 
ms.author: Benny-54
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

# Firewall Settings Lost on Upgrade

This article describes a scenario whereby previously enabled firewall rules revert to a disabled state after performing a Windows upgrade.

## Rule Groups

Individual built-in firewall rules are categorized within a group. For example, the following individual rules form part of the ‘Remote Desktop’ group.

- Remote Desktop – Shadow (TCP-In)

- Remote Desktop – User Mode (TCP-In)

- Remote Desktop – User-Mode (UDP-In)

Other examples include the Core Networking, File and Print Sharing, and Network Discovery groups. Admins can filter on individual categories in the firewall interface (wf.msc) by selecting and right-clicking on ‘Inbound’ or ‘Outbound Rules’ and selecting ‘Filter by Group’; or via PowerShell using the `Get-NetFirewallRule` cmdlet with the `-Group` switch.

```Powershell
Get-NetFirewallRule -Group <groupName>
```

> [!NOTE] 
> It is recommended to enable an entire group instead of individual rules if the expectation is the ruleset is going to be migrated at some point.

It is recommended to enable/disable all rules within a group, as opposed to enabling/disabling just one or two of the individual rules to help avoid unexpected behaviors. For example, while rule groups can be used to organize rules by influence and allows batch rule modifications, they are also used as a way to maintain rule state across a Windows upgrade. Rule groups, as opposed to individual rules, are the unit by which the process determines what should be enabled/disabled when the upgrade is complete.

Take the Remote Desktop group example mentioned above. It consists of three rules. To ensure that the ruleset is properly maintained once the upgrade is complete, all three rules should be enabled. If only one rule is enabled, the upgrade process will see that two of three rules is disabled and subsequently disable the entire group to maintain an as pristine out-of-the-box configuration as possible. Obviously, in this scenario, this brings the unintended consequence of being unable to establish RDP connection to the host.

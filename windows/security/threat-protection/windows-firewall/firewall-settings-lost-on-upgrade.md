---
title: Troubleshooting Windows Firewall settings after a Windows upgrade
description: Firewall settings lost on upgrade
ms.reviewer: 
ms.author: v-bshilpa
ms.prod: m365-security
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: Benny-54
manager: dansimp
ms.collection: 
  - m365-security-compliance
  - m365-initiative-windows-security
ms.topic: troubleshooting
ms.technology: mde
---

# Troubleshooting Windows Firewall settings after a Windows upgrade

Use this article to troubleshoot firewall settings that are turned off after upgrading to a new version of Windows.

## Rule groups

To help you organize your list, individual built-in firewall rules are categorized within a group. For example, the following rules form part of the Remote Desktop group.

- Remote Desktop – Shadow (TCP-In)
- Remote Desktop – User Mode (TCP-In)
- Remote Desktop – User-Mode (UDP-In)

Other group examples include **core networking**, **file and print sharing**, and **network discovery**. Grouping allows admins to manage sets of similar rules by filtering on categories in the firewall interface (wf.msc). Do this by right-clicking on either **Inbound** or **Outbound Rules** and selecting **Filter by Group**. Optionally, you can use PowerShell using the `Get-NetFirewallRule` cmdlet with the `-Group` switch.

```Powershell
Get-NetFirewallRule -Group <groupName>
```

> [!NOTE] 
> Microsoft recommends to enable or disable an entire group instead of individual rules.

Microsoft recommends that you enable/disable all of the rules within a group instead of one or two individual rules. This is because groups are not only used to organize rules and allow batch rule modification by type, but they also represent a 'unit' by which rule state is maintained across a Windows upgrade. Rule groups, as opposed to individual rules, are the unit by which the update process determines what should be enabled/disabled when the upgrade is complete.

For example, the Remote Desktop group consists of three rules. To ensure that the rule set is properly migrated during an upgrade, all three rules must be enabled. If only one rule is enabled, the upgrade process will see that two of three rules are disabled and subsequently disable the entire group to maintain a clean, out-of-the-box configuration. This scenario has the unintended consequence of breaking Remote Desktop Protocol (RDP) connectivity to the host.

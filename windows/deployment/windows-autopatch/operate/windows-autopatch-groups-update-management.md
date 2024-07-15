---
title: Software update management for Autopatch groups
description: This article provides an overview of how updates are handled with Autopatch groups
ms.date: 07/08/2024
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: overview
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: andredm7
ms.collection:
  - highpri
  - tier1
---

# Software update management

Keeping your devices up to date is a balance of speed and stability. Windows Autopatch connects all devices to a modern cloud-based infrastructure to manage updates on your behalf.

## Software update workloads

| Software update workload | Description |
| ----- | ----- |
| Windows quality update | Windows Autopatch uses four deployment rings to manage [Windows quality updates](../operate/windows-autopatch-groups-windows-quality-update-overview.md) |
| Windows feature update | Windows Autopatch uses four deployment rings to manage [Windows feature updates](windows-autopatch-groups-windows-feature-update-overview.md) |
| Anti-virus definition | Updated with each scan. |
| Microsoft 365 Apps for enterprise | For more information, see [Microsoft 365 Apps for enterprise](windows-autopatch-microsoft-365-apps-enterprise.md). |
| Microsoft Edge | For more information, see [Microsoft Edge](../operate/windows-autopatch-edge.md). |
| Microsoft Teams | For more information, see [Microsoft Teams](../operate/windows-autopatch-teams.md). |

## Autopatch groups

Autopatch groups help Microsoft Cloud-Managed services meet all organizations where they are at in their update management journey.

Autopatch groups is a logical container that groups several [Microsoft Entra groups](/azure/active-directory/fundamentals/active-directory-groups-view-azure-portal), and software update policies, such as Windows Update rings and feature update policies, together.

For more information on key benefits and how to use Autopatch groups, see [Autopatch groups overview](../deploy/windows-autopatch-groups-overview.md).

## Windows quality updates

Windows Autopatch deploys the [Monthly security update releases](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/windows-quality-updates-primer/ba-p/2569385) that are released on the second Tuesday of each month.

To release updates to devices in a gradual manner, Windows Autopatch deploys a set of mobile device management (MDM) policies to each update deployment ring to control the rollout. For more information, see [Windows quality updates overview](../operate/windows-autopatch-groups-windows-quality-update-overview.md).

## Windows feature updates

You're in control of telling Windows Autopatch when your organization is ready to move to the next Windows OS version.

The Window feature update release management experience makes it easier and less expensive for you to keep your Windows devices up to date. You can focus on running your core businesses while Windows Autopatch runs update management on your behalf.

For more information, see [Windows feature updates overview](../operate/windows-autopatch-groups-windows-feature-update-overview.md).

## Reports

Using [Windows quality and feature update reports](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md), you can monitor and remediate Windows Autopatch managed devices that are Not up to Date and resolve any device alerts to bring Windows Autopatch managed devices back into compliance.

## Policy health and remediation

Windows Autopatch deploys Intune policies for Windows quality and feature update management. Windows Update policies must remain healthy for devices to receive Windows updates and stay up to date. We continuously monitor the health of the policies and raise alerts and provide remediation actions. For more information, see [Policy health and remediation](../operate/windows-autopatch-policy-health-and-remediation.md) and [Changes made at tenant enrollment](../references/windows-autopatch-changes-to-tenant.md).

---
title: Microsoft Edge
description: This article explains how Microsoft Edge updates are managed in Windows Autopatch
ms.date: 09/16/2024
ms.service: windows-client
ms.subservice: autopatch
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: hathind
ms.collection:
  - highpri
  - tier1
---

# Microsoft Edge

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

Windows Autopatch uses the [Stable Channel](/deployedge/microsoft-edge-channels#stable-channel) of Microsoft Edge.

> [!IMPORTANT]
> To update Microsoft 365 Apps for enterprise, you must [create at least one Autopatch group](../manage/windows-autopatch-manage-autopatch-groups.md#create-an-autopatch-group) first and **Microsoft Edge update setting** must be set to [**Allow**](#allow-or-block-microsoft-edge-updates). For more information on workloads supported by Windows Autopatch groups, see [Software update workloads](../deploy/windows-autopatch-groups-overview.md#software-update-workloads).

## Device eligibility

For a device to be eligible for Microsoft Edge updates as a part of Windows Autopatch, they must meet the following criteria:

- The device must be powered on and have an internet connection.
- There are no policy conflicts between Windows Autopatch policies and customer policies.
- The device must be able to access the required network endpoints to reach the Microsoft Edge update service.
- If Microsoft Edge is open, it must restart for the update process to complete.

## Allow or block Microsoft Edge updates

> [!IMPORTANT]
> You must be an Intune Administrator to make changes to the setting.

For organizations seeking greater control, you can allow or block Microsoft Edge updates for Windows Autopatch-enrolled devices.

| Microsoft Edge setting | Description |
| ----- | ----- |
| **Allow** | When set to **Allow**, Windows Autopatch assigns devices to Microsoft Edge's [Stable Channel](/deployedge/microsoft-edge-channels#stable-channel). To manage updates manually, set the Microsoft Edge setting to **Block**. |
| **Block** | When set to **Block**, Windows Autopatch doesn't assign devices to Microsoft Edge's [Stable Channel](/deployedge/microsoft-edge-channels#stable-channel) updates on your behalf, and your organizations have full control over these updates. You can continue to receive updates from [channels](/deployoffice/overview-update-channels) other than the default [Monthly Enterprise Channel](/deployoffice/overview-update-channels#monthly-enterprise-channel-overview). |

**To allow or block Edge updates:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Navigate to **Tenant administration** > **Windows Autopatch** > **Autopatch groups** > **Update settings**.
1. Go to the **Edge updates** section. By default, the Allow/Block toggle is set to **Block**.
1. Turn off the **Allow** toggle (set to Block) to opt out of Microsoft Edge update policies. You see the notification: *Update in process. This setting will be unavailable until the update is complete.*
1. Once the update is complete, you receive the notification: *This setting is updated*.

> [!NOTE]
> If the notification: *This setting couldn't be updated. Please try again or submit a support request.* appears, use the following steps:<ol><li>Refresh your page.</li><li>Please repeat the same steps in To allow or block Edge updates.</li><li>If the issue persists, [submit a support request](../manage/windows-autopatch-support-request.md).</li>

**To verify if the Edge update setting is set to Allow:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Navigate to **Devices** > **Configuration profiles** > **Profiles**.
3. The following profiles should be discoverable from the list of profiles:
    1. Windows Autopatch - Microsoft Edge Update Channel Stable
    2. Windows Autopatch - Microsoft Edge Update Channel Beta

**To verify if the Edge update setting is set to Block:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Navigate to **Devices** > **Configuration profiles** > **Profiles**.
3. The following **five** profiles should be removed from your list of profiles and no longer visible/active. Use the Search with the keywords "Microsoft Edge Configuration". The result should return *0 profiles filtered*.
    1. Windows Autopatch - Microsoft Edge Update Channel Stable
    2. Windows Autopatch - Microsoft Edge Update Channel Beta

## Update release schedule

Microsoft Edge checks for updates every 10 hours. Quality updates occur weekly by default. The Microsoft Edge product group [progressively](/deployedge/microsoft-edge-update-progressive-rollout) rolls out feature updates automatically every four weeks to ensure the best experience for customers. The update is available within a few days of the initial release.

Browser updates with critical security fixes have a faster rollout cadence than updates that don't have critical security fixes to ensure fast protection from vulnerabilities.

Devices in the Test device group receive feature updates from the [Beta Channel](/deployedge/microsoft-edge-channels#beta-channel). This channel is fully supported and automatically updated with new features approximately every four weeks.

## Pause and resume updates

Currently, Windows Autopatch can't pause or resume Microsoft Edge updates.

## Incidents and outages

If you're experiencing issues related to Microsoft Edge updates, [submit a support request](../operate/windows-autopatch-support-request.md).

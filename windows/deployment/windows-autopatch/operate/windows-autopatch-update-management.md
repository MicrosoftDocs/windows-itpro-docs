---
title: Update management
description:  This article provides an overview of how updates are handled in Autopatch
ms.date: 05/30/2022
ms.prod: w11
ms.technology: windows
ms.topic: overview
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
msreviewer: hathind
---

# Update management

Keeping your devices up to date is a balance of speed and stability. Windows Autopatch connects all devices to a modern cloud-based infrastructure to manage updates.

## Update types

| Update type | Description |
| ----- | ----- |
| Window quality update | Windows Autopatch uses four update rings to manage Windows quality updates. For more detailed information, see [Windows quality updates](../operate/windows-autopatch-wqu-overview.md). |
| Anti-virus definition | Updated with each scan. |
| Microsoft 365 Apps for enterprise | For more information, see Microsoft 365 Apps for enterprise. |
| Microsoft Edge | For more information, see [Microsoft Edge](../operate/windows-autopatch-edge.md). |
| Microsoft Teams | For more information, see [Microsoft Teams](../operate/windows-autopatch-teams.md). |

## Update rings

> [!NOTE]
> Update rings only apply to Windows quality updates.

During enrollment, Windows Autopatch creates four Azure Active Directory groups that are used to segment devices into update rings:

1. Modern Workplace Devices - Test
2. Modern Workplace Devices - First
3. Modern Workplace Devices - Fast
4. Modern Workplace Devices - Broad

Each of the update rings has a different purpose and assigned a set of policies to control the rollout of updates in each management area.

When a device is enrolled into the Windows Autopatch service, the device is assigned to an update ring so that we have the right distributions across your estate. The distribution of each ring is designed to release to as few devices as possible to get the signals needed to make a quality evaluation of a given release.

> [!NOTE]
> You can't create additional rings for managed devices and must use the four rings provided by Windows Autopatch.

| Ring | Default device count | Description
| ----- | ----- | ----- |
| Test | zero | Windows Autopatch doesn't automatically add devices to this ring. You must manually add devices to the Test ring. The recommended number of devices in this ring, based upon your environment size, is as follows: <br><ul><li>0–500 devices: minimum one device</li><li>500–5000 devices: minimum five devices</li><li>5000+ devices: min 50 devices</li></ul>Devices in this group are intended for your IT Administrators and testers since changes are released here first. This release schedule provides your organization the opportunity to validate updates prior to reaching production users. |
| First |  1% | The First ring is the first group of production users to receive a change.<p><p>This group is the first set of devices to send data to Windows Autopatch and are used to generate a health signal across all customers. For example, we can generate a statistically significant signal saying that critical errors are trending up in a specific release for all customers but can't be confident that it's doing so in your environment.<p><p>Since Windows Autopatch doesn't yet have sufficient data to inform a release decision, devices in this ring might experience outages if there are scenarios that weren't covered during testing in the Test ring.</p)> |
| Fast | 9% | The Fast ring is the second group of production users to receive changes. The signals from the First ring are considered as a part of  the release process to the Broad ring.<p><p>The goal with this ring is to cross the 500-device threshold needed to generate statistically significant analysis at the tenant level. These extra devices allow Windows Autopatch to consider the effect of a release on the rest of your devices and evaluate if a targeted action for your tenant is needed.</p> |
| Broad | 90% | The Broad ring is the last group of users to receive changes. Since it contains most of the devices enrolled in Windows Autopatch, it favors stability over speed in deployment.|

## Moving devices between rings

If you want to move separate devices to different rings, repeat the following steps for each device:

1. In Microsoft Endpoint Manager, select **Devices** in the left pane.
2. In the **Windows Autopatch** section, select **Devices**.
3. Select the devices you want to assign. All selected devices will be assigned to the ring you specify.
4. Select **Device actions** from the menu.
5. Select **Assign device to ring**. A fly-in opens.
6. Use the dropdown menu to select the ring to move devices to, and then select **Save**. The **Ring assigned by** column will change to **Pending**.

When the assignment is complete, the **Ring assigned by** column will change to Admin (indicates that you made the change) and the **Ring** column will show the new ring assignment.

> [!NOTE]
> You can't move devices to other rings if they're in the "error" or "pending" registration state.<p>If a device hasn't been properly removed, it could show a status of "ready." If you move such a device, it's possible that the move won't be complete. If you don't see the **Ring assigned by column** change to **Pending** in Step 5, check that the device is available by searching for it in Intune. For more information, see [Device details in Intune](/mem/intune/remote-actions/device-inventory).

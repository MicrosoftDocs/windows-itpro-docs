---
title: Update management
description:  This article provides an overview of how updates are handled in Autopatch
ms.date: 08/05/2022
ms.prod: w11
ms.technology: windows
ms.topic: overview
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
msreviewer: andredm7
---

# Software updates management

Keeping your devices up to date is a balance of speed and stability. Windows Autopatch connects all devices to a modern cloud-based infrastructure to manage updates on your behalf.

## Software update workloads

| Software update workload | Description |
| ----- | ----- |
| Windows quality update | Windows Autopatch uses four update rings to manage Windows quality updates. For more detailed information, see [Windows quality updates](../operate/windows-autopatch-wqu-overview.md). |
| Windows feature update | Windows Autopatch uses four update rings to manage Windows feature updates. For more detailed information, see [Windows feature updates](windows-autopatch-fu-overview.md).
| Anti-virus definition | Updated with each scan. |
| Microsoft 365 Apps for enterprise | For more information, see [Microsoft 365 Apps for enterprise](windows-autopatch-microsoft-365-apps-enterprise.md). |
| Microsoft Edge | For more information, see [Microsoft Edge](../operate/windows-autopatch-edge.md). |
| Microsoft Teams | For more information, see [Microsoft Teams](../operate/windows-autopatch-teams.md). |

## Windows Autopatch deployment rings

During the [tenant enrollment process](../prepare/windows-autopatch-enroll-tenant.md), Windows Autopatch creates four Azure AD assigned groups that are used to segment devices into its deployment rings:

1. **Modern Workplace Devices-Windows Autopatch-Test**
	1. Deployment ring for testing update deployments prior production rollout.
2. **Modern Workplace Devices-Windows Autopatch-First**
	1. First production deployment ring for early adopters.
3. **Modern Workplace Devices-Windows Autopatch-Fast**
	1. Fast deployment ring for quick rollout and adoption.
4. **Modern Workplace Devices-Windows Autopatch-Broad**
	1. Final deployment ring for broad rollout into the organization.

Each deployment ring has a different set of update deployment policies to control the updates rollout.

> [!IMPORTANT]
> Windows Autopatch device registration does not assign devices to its test deployment ring (**Modern Workplace Devices-Windows Autopatch-Test**). This is intended to prevent having mission critical devices or devices that are used by executives in the organization from receiving early software update deployments.

Also, during the [device registration process](../deploy/windows-autopatch-device-registration-overview.md), Windows Autopatch assigns each device being registered to one of its deployment rings so that the service have the proper representation of the device diversity across the organization in each deployment ring. The deployment ring distribution is designed to release software update deployments to as few devices as possible to get the signals needed to make a quality evaluation of a given update deployment.

> [!NOTE]
> Windows Autopatch deployment rings only apply to Windows quality updates. Additionally, you can't create additional deployment rings or use your own for devices managed by the Windows Autopatch service.

### Deployment ring calculation logic

The Windows Autopatch deployment ring calculation happens during the [device registration process](../deploy/windows-autopatch-device-registration-overview.md) and it works as follows:

- If the Windows Autopatch tenant’s existing managed device size is **≤ 200**, the deployment ring assignment is First **(5%)**, Fast **(15%)**, remaining devices go to the Broad ring **(80%)**.
- If the Windows Autopatch tenant’s existing managed device size is **>200**, the deployment ring assignment will be First **(1%)**, Fast **(9%)**, remaining devices go to the Broad ring **(90%)**.


| Deployment ring | Default device balancing percentage | Description
| ----- | ----- | ----- |
| Test | **zero** | Windows Autopatch doesn't automatically add devices to this deployment ring. You must manually add devices to the Test ring. The recommended number of devices in this ring, based upon your environment size, is as follows: <br><ul><li>**0–500** devices: minimum **one** device.</li><li>**500–5000** devices: minimum **five** devices.</li><li>**5000+** devices: minimum **50** devices.</li></ul>Devices in this group are intended for your IT Administrators and testers since changes are released here first. This release schedule provides your organization the opportunity to validate updates prior to reaching production users. |
| First |  **1%** | The First ring is the first group of production users to receive a change.<p><p>This group is the first set of devices to send data to Windows Autopatch and are used to generate a health signal across all end-users. For example, Windows Autopatch can generate a statistically significant signal saying that critical errors are trending up in a specific release for all end-users, but can't be confident that it's doing so in your organization.<p><p>Since Windows Autopatch doesn't yet have sufficient data to inform a release decision, devices in this deployment ring might experience outages if there are scenarios that weren't covered during early testing in the Test ring.|
| Fast | **9%** | The Fast ring is the second group of production users to receive changes. The signals from the First ring are considered as a part of the release process to the Broad ring.<p><p>The goal with this deployment ring is to cross the **500**-device threshold needed to generate statistically significant analysis at the tenant level. These extra devices allow Windows Autopatch to consider the effect of a release on the rest of your devices and evaluate if a targeted action for your tenant is needed.</p> |
| Broad | Either **80%** or **90%** | The Broad ring is the last group of users to receive software update deployments. Since it contains most of the devices registered with Windows Autopatch, it favors stability over speed in an software update deployment.|

## Moving devices in between deployment rings

If you want to move separate devices to different deployment rings, after Windows Autopatch's deployment ring assignment, you can repeat the following steps for one or more devices from the **Ready** tab:

1. In Microsoft Endpoint Manager, select **Devices** in the left pane.
2. In the **Windows Autopatch** section, select **Devices**.
3. In the **Ready** tab, select one or more devices you want to assign. All selected devices will be assigned to the deployment ring you specify.
4. Select **Device actions** from the menu.
5. Select **Assign device to ring**. A fly-in opens.
6. Use the dropdown menu to select the deployment ring to move devices to, and then select **Save**. The **Ring assigned by** column will change to **Pending**.

When the assignment is complete, the **Ring assigned by** column changes to **Admin** (which indicates that you made the change) and the **Ring** column shows the new deployment ring assignment.

> [!NOTE]
> You can only move devices to other deployment rings when they're in an active state in the **Ready** tab.<p>If you don't see the **Ring assigned by column** change to **Pending** in Step 5, check to see whether the device exists in Microsoft Endpoint Manager-Intune or not by searching for it in its device blade. For more information, see [Device details in Intune](/mem/intune/remote-actions/device-inventory).

## Automated deployment ring remediation functions

Windows Autopatch monitors device membership in its deployment rings (all but the **Modern Workplace Devices-Windows Autopatch-Test**) to provide automated deployment ring remediation functions to mitigate the risk of not having its managed devices being part of one of its deployment rings.
These automated functions help mitigate risk of potentially having devices in a vulnerable state, and exposed to security threats in case they're not receiving update deployments due to either changes performed by the IT admin on objects created by the Windows Autopatch tenant enrollment process or in case an issue occurred which prevented devices from getting a deployment rings assigned during the [device registration process](../deploy/windows-autopatch-device-registration-overview.md).

There are two automated deployment ring remediation functions, they work as follows:

- **Check Device Deployment Ring Membership:** Every hour, Windows Autopatch checks to see if its managed devices are not part of one of the deployment rings. When for some reason, a device is not part of a deployment ring, Windows Autopatch randomly assigns the device to one of its deployment rings (all but the **Modern Workplace Devices-Windows Autopatch-Test**).
- **Multi-deployment ring device remediator:** Every hour, Windows Autopatch checks to see if its managed devices are part of multiple deployment rings (all but the **Modern Workplace Devices-Windows Autopatch-Test**). When for some reason, a device is part of multiple deployment rings, Windows Autopatch randomly removes device of one or more deployment rings until the device is only part of one deployment ring.

> [!IMPORTANT]
> Windows Autopatch automated deployment ring functions do not assign/remove devices to/from its test deployment ring (**Modern Workplace Devices-Windows Autopatch-Test**).
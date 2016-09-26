---
title: Windows updates (Surface Hub)
description: You can manage Windows updates on your Microsoft Surface Hub by setting the maintenance window, deferring updates, or using Windows Server Update Services (WSUS).
ms.assetid: A737BD50-2D36-4DE5-A604-55053D549045
keywords: manage Windows updates, Surface Hub, Windows Server Update Services, WSUS
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: surfacehub
author: TrudyHa
localizationpriority: medium
---

# Windows updates (Surface Hub)

New releases of the Surface Hub operating system are published through Windows Update, similiar to releases of Windows 10. There are a couple of ways you can manage which updates are installed on your Surface Hubs, and the timing for when updates are applied.
- **Windows Update for Business** - New in Windows 10, Windows Update for Business is a set of features designed to provide enterprises additional control over how and when Windows Update installs releases, while reducing device management costs. Using this method, Surface Hubs are directly connected to Microsoft’s Windows Update service.
- **Windows Server Update Services (WSUS)** - Set of services that enable IT administrators to obtain the updates that Windows Update determines are applicable to the devices in their enterprise, perform additional testing and evaluation on the updates, and select the updates they want to install. Using this method, Surface Hubs will receive updates from WSUS rather than Windows Update.

| Capabilities | Windows Update for Business | Windows server Update Services (WSUS) |
| ------------ | --------------------------- | ------------------------------------- |
| Receive updates directly from Microsoft's Windows Update service, with no additional infrastructure required.  | Yes  | No  |
| Defer updates to provide additional time for testing and evaluation. | Yes  | Yes  |
| Deploy updates to select groups of devices. | Yes | Yes |
| Define maintenance windows for installing updates. | Yes  | Yes  |

> [!NOTE]
> You can configure Surface Hub to receive updates from both Windows Update and WSUS. See [Integrate Windows Update for Business with Windows Server Update Services](https://technet.microsoft.com/en-us/itpro/windows/manage/waas-integrate-wufb#integrate-windows-update-for-business-with-windows-server-update-services) for details.

> [!NOTE]
> Surface Hub does not currently support rolling back updates.


## Surface Hub servicing model

Surface Hub uses the Windows 10 servicing model, referred to as Windows as a Service (WaaS). Traditionally, new features are added only in new versions of Windows that are released every few years. Each new version required lengthy and expensive processes to deploy in an organization. As a result, end users and organizations don't frequently enjoy the benefits of new innovation. The goal of Windows as a Service is to continually provide new capabilities while maintaining a high level of quality.

Microsoft publishes two types of Surface Hub releases broadly on an ongoing basis:
- **Feature updates** - Updates that install the latest new features, experiences, and capabilities. Microsoft expects to publish an average of two to three new feature upgrades per year.
- **Quality updates** - Updates that focus on the installation of security fixes, drivers, and other servicing updates. Microsoft expects to publish one cumulative quality update per month.

In order to improve release quality and simplify deployments, all new releases that Microsoft publishes for Windows 10, including Surface Hub, will be cumulative. This means new feature updates and quality updates will contain the payloads of all previous releases (in an optimized form to reduce storage and networking requirements), and installing the release on a device will bring it completely up to date. Also, unlike earlier versions of Windows, you cannot install a subset of the contents of a Windows 10 quality update. For example, if a quality update contains fixes for three security vulnerabilities and one reliability issue, deploying the update will result in the installation of all four fixes.

The Surface Hub operating system is available on **Current Branch (CB)** and **Current Branch for Business (CBB)**. Like other editions of Windows 10, the servicing lifetime of CB or CBB is finite. You must install new feature updates on machines running these branches in order to continue receiving quality updates.

For more information on Windows as a Service, see [Overview of Windows as a service](https://technet.microsoft.com/en-us/itpro/windows/manage/waas-overview).


## Use Windows Update for Business
Surface Hubs, like all Windows 10 devices, include **Windows Update for Business (WUfB)** to enable you to control how your devices are being updated. Windows Update for Business helps reduce device management costs, provide controls over update deployment, offer quicker access to security updates, as well as provide access to the latest innovations from Microsoft on an ongoing basis. For more information, see [Manage updates using Windows Update for Business](https://technet.microsoft.com/en-us/itpro/windows/manage/waas-manage-updates-wufb).

**To set up Windows Update for Business:**
1. [Group Surface Hub into deployment rings](#group-surface-hub-into-deployment-rings)
2. [Configure Surface Hub to use Current Branch or Current Branch for Business](#configure-surface-hub-to-use-current-branch-or-current-branch-for-business).
2. [Configure when Surface Hub receives updates](#configure-when-surface-hub-receives-updates).

> [!NOTE]
> You can use Microsoft Intune, System Center Configuration Manager, or a supported third-party MDM provider to set up WUfB. [Walkthrough: use Microsoft Intune to configure Windows Update for Business.](https://technet.microsoft.com/en-us/itpro/windows/manage/waas-wufb-intune)


### Group Surface Hub into deployment rings
Use deployment rings to control when updates roll out to your Surface Hubs, giving you time to validate them. For example, you can update a small pool of devices first to verify quality before a broader roll-out to your organization. Depending on who manages Surface Hub in your organization, consider incorporating Surface Hub into the deployment rings that you've built for your other Windows 10 devices. For more information about deployment rings, see [Build deployment rings for Windows 10 updates](https://technet.microsoft.com/en-us/itpro/windows/manage/waas-deployment-rings-windows-10-updates).

This table gives examples of deployment rings.

| Deployment ring | Ring size | Servicing branch | Deferral for feature updates | Deferral for quality updates (security fixes, drivers, and other updates) | Validation step |
| --------- | --------- | --------- | --------- | --------- | --------- |
| Evaluation (e.g. non-critical or test devices) | Small | Current Branch (CB) | None. Devices receive feature updates immediately after CB is released. | None. Devices receive quality updates immediately after CB is released. | Manually test and evaluate new functionality. Pause updates if there are issues. |
| Pilot (e.g. devices used by select teams) | Medium | Current Branch for Business (CBB) | None. Devices receive feature updates immediately once CBB is released. | None. Devices receive quality updates immediately after CBB is released. | Monitor device usage and user feedback. Pause updates if there are issues. |
| Broad deployment (e.g. most of the devices in your organization) | Large | Current Branch for Business (CBB) |  60 days after CBB is released. | 14 days after CBB is released. | Monitor device usage and user feedback. Pause updates if there are issues. |
| Mission critical (e.g. devices in executive boardrooms) | Small | Current Branch for Business (CBB) |  180 days after CBB is released (maximum deferral for feature updates). | 30 days after CBB is released (maximum deferral for quality updates). | Monitor device usage and user feedback. |


### Configure Surface Hub to use Current Branch or Current Branch for Business
By default, Surface Hubs are configured to receive updates from Current Branch (CB). CB receives feature updates as soon as they are released by Microsoft. Current Branch for Business (CBB), on the other hand, receives feature updates at least four months after they have been initially offered to CB devices, and includes all of the quality updates that have been released in the interim. For more information on the differences between CB and CBB, see [Servicing branches](https://technet.microsoft.com/en-us/itpro/windows/manage/waas-overview#servicing-branches).

**To manually configure Surface Hub to use CB or CBB:**
1. Open **Settings** > **Update & Security** > **Windows Update**, and then select **Advanced Options**. 
2. Select **Defer feature updates**.

To configure Surface Hub to use CB or CBB remotely using MDM, set an appropriate [Update/BranchReadinessLevel](https://msdn.microsoft.com/en-us/library/windows/hardware/dn904962.aspx#Update_BranchReadinessLevel) policy.


### Configure when Surface Hub receives updates
Once you've determined deployment rings for your Surface Hubs, configure update deferral policies for each ring:
- To defer feature updates, set an appropriate [Update/DeferFeatureUpdatesPeriodInDays](https://msdn.microsoft.com/en-us/library/windows/hardware/dn904962.aspx#Update_DeferFeatureUpdatesPeriodInDays) policy for each ring.
- To defer quality updates, set an appropriate [Update/DeferQualityUpdatesPeriodInDays](https://msdn.microsoft.com/en-us/library/windows/hardware/dn904962.aspx#Update_DeferQualityUpdatesPeriodInDays) policy for each ring.

> [!NOTE]
> If you encounter issues during the update rollout, you can pause updates using [Update/PauseFeatureUpdates](https://msdn.microsoft.com/en-us/library/windows/hardware/dn904962.aspx#Update_PauseFeatureUpdates) and [Update/PauseQualityUpdates](https://msdn.microsoft.com/en-us/library/windows/hardware/dn904962.aspx#Update_PauseQualityUpdates).


## Use Windows Server Update Services (WSUS)

You can connect Surface Hub to your WSUS server to manage updates. Updates will be controlled through approvals or automatic deployment rules configured in your WSUS server, so new upgrades will not be deployed until you choose to deploy them.

**To manually connect a Surface Hub to a WSUS server:**
1. Open **Settings** on your Surface Hub.
2. Enter the device admin credentials when prompted.
3. Navigate to **Update & security** > **Windows Update** > **Advanced options** > **Configure Windows Server Update Services (WSUS) server**.
4. Click **Use WSUS Server to download updates** and type the URL of your WSUS server.

To connect Surface Hub to a WSUS server using MDM, set an appropriate [Update/UpdateServiceUrl](https://msdn.microsoft.com/en-us/library/windows/hardware/dn904962.aspx#Update_UpdateServiceUrl) policy.


## Maintenance window

To ensure the device is always available for use during business hours, Surface Hub performs its administrative functions during a specified maintenance window. During the maintenance window, the Surface Hub automatically installs updates through Windows Update or WSUS, and reboots the device if needed.

Surface Hub follows these guidelines to apply updates:
-   Install the update during the next maintenance window. If a meeting is scheduled to start during a maintenance window, or the Surface Hub sensors detect that the device is being used, the pending update will be postponed to the following maintenance window.
-   If the next maintenance window is past the update’s prescribed grace period, the device will calculate the next available slot during business hours using the estimated install time from the update’s metadata. It will continue to postpone the update if a meeting is scheduled, or the Surface Hub sensors detect that the device is being used.
-   If a pending update is past the update’s prescribed grace period, the update will be immediately installed. If a reboot is needed, the Surface Hub will automatically reboot during the next maintenance window.

> [!NOTE]
> Allow time for updates when you first setup your Surface Hub. For example, a backlog of virus definitions may be available, which should be immediately installed.

A default maintenance window is set for all new Surface Hubs:
-   **Start time:** 3:00 AM
-   **Duration:** 1 hour

**To manually change the maintenance window:**
1.  Open **Settings** on your Surface Hub.
2.  Navigate to **Update & security** > **Windows Update** > **Advanced options**.
3.  Under **Maintenance hours**, select **Change**.

To change the maintenance window using MDM, set the **MOMAgent** node in the [SurfaceHub configuration service provider](https://msdn.microsoft.com/en-us/library/windows/hardware/mt608323.aspx). See [Manage settings with an MDM provider](manage-settings-with-mdm-for-surface-hub.md) for more details.


## Related topics

[Manage Microsoft Surface Hub](manage-surface-hub.md)

[Microsoft Surface Hub administrator's guide](surface-hub-administrators-guide.md)


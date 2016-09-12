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

New releases of the Surface Hub operating system are published throught Windows Update, similiar to releases of Windows 10. There are a couple of ways you can manage which updates are installed on your Surface Hubs, and the timing for when updates are applied.
- **Windows Update for Business** - New in Windows 10, Windows Update for Business is a set of features designed to provide enterprises additional control over how and when Windows Update installs releases, while reducing device management costs. Using this method, Surface Hubs are directly connected to Microsoft’s Windows Update service.
- **Windows Server Update Services (WSUS)** - Set of services that enables IT administrators to obtain the updates that Windows Update determines are applicable to the devices in their enterprise, perform additional testing and evaluation on the updates, and select the updates they want to install. Using this method, Surface Hubs will receive updates from WSUS rather than Windows Update.

| Capabilities | Windows Update for Business | Windows server Update Services (WSUS) |
| ------------ | --------------------------- | ------------------------------------- |
| Receive updates directly from Microsoft's Windows Updates service, with no additional infrastructure required.  | Yes  | No  |
| Defer updates to provide additional time for testing and evaluation. | Yes  | Yes  |
| Deploy updates to select groups of devices. | Yes | Yes |
| Define maintenance windows for installing updates. | Yes  | Yes  |

>**Note**: Surface Hub does not currently support rolling back updates.

You can manage Windows updates on your Microsoft Surface Hub by setting the maintenance window, deferring updates, or using Windows Server Update Services (WSUS).

## Surface Hub servicing model

Surface Hub uses the Windows 10 servicing model, referred to as Windows as a Service (WaaS). Traditionally, new features are added only in new versions of Windows that are released every few years. Each new version required lengthy and expensive processes to deploy in an organization. As a result, end users and organizations don't frequently enjoy the benefits of new innovation. The goal of Windows as a Service is to continually provide new capabilities while maintaining a high level of quality.  

Microsoft publishes two types of Surface Hub releases broadly on an ongoing basis:
- **Feature updates** - Updates that install the latest new features, experiences, and capabilities.
- **Quality updates** - Updates that focus on the installation of security fixes, drivers, and other servicing updates. Microsoft expects to publish an average of two to three new feature upgrades per year, and to publish quality updates as needed for any feature updates that are still in support. Microsoft will continue publishing quality updates on Update Tuesday (sometimes referred to as Patch Tuesday). Additionally, Microsoft may publish additional quality updates for Surface Hub outside the Update Tuesday process when required to address customer needs.

In order to improve release quality and simplify deployments, all new releases that Microsoft publishes for Windows 10, including Surface Hub, will be cumulative. This means new feature updates and quality updates will contain the payloads of all previous releases (in an optimized form to reduce storage and networking requirements), and installing the release on a device will bring it completely up to date. Also, unlike earlier versions of Windows, you cannot install a subset of the contents of a Windows 10 quality update. For example, if a quality update contains fixes for three security vulnerabilities and one reliability issue, deploying the update will result in the installation of all four fixes.

The Surface Hub operating system is available on **Current Branch (CB)** and **Current Branch for Business (CBB)**. Like other editions of Windows 10, the servicing lifetime of CB or CBB is finite. You must install new feature updates on machines running these branches in order to continue receiving quality updates.

For more information on Windows as a Service, see [Windows 10 servicing options](https://technet.microsoft.com/itpro/windows/manage/introduction-to-windows-10-servicing).

## Use Windows Update for Business
Surface Hubs, like all Windows 10 devices, include **Windows Update for Business (WUfB)** to enable you to control how your devices are being updated. Windows Update for Business helps reduce device management costs, provide controls over update deployment, offer quicker access to security updates, as well as provide access to the latest innovations from Microsoft on an ongoing basis. For more information, see [Windows Update for Business](https://technet.microsoft.com/itpro/windows/plan/windows-update-for-business).

**To set up Windows Update for Business**
1. [Configure your Surface Hub to use Current Branch for Business](#configure-surface-hub-to-use-current-branch-for-business).
2. [Stagger updates for your Surface Hub](#stagger-updates-for-your-surface-hub).

You can use Configuration Manager, Microsoft Intune, or another MDM provider to set up WUfB. 

### Configure Surface Hub to use Current Branch for Business
To use Windows Update for Business, your Surface Hub needs to receive updates from Current Branch for Business (CBB). By default, Surface Hubs are configured to receive updates from Current Branch (CB). CB receives feature updates as soon as they are released by Microsoft. CBB, on the other hand, receives feature updates at least four months after they have been initially offered to CB devices, and includes all of the quality updates that have been released in the interim. For more information on the differences between Current Branch and Current Branch for Business, see [Current Branch versus Current Branch for Business](https://technet.microsoft.com/itpro/windows/manage/introduction-to-windows-10-servicing#current-branch-versus-current-branch-for-business).

**To manually configure Surface Hub to use CBB**
1. Open **Settings** > **Update & Security** > **Windows Update** > and then click **Advanced Options**. 
2. Click **Defer feature updates**. 

To configure Surface Hub to use CB or CBB remotely using Configuration Manager, Microsoft Intune, or another MDM provider, set [Update\\RequireDeferUpgrade](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx#Update_RequireDeferUpgrade) from Policy CSP. 

### Stagger updates for your Surface Hub 

Use rings to control when updates roll out to your Surface Hubs, giving you time to validate them. A ring is a group of devices that have the same deferral settings. This table gives examples of rings. 

| Ring type | Ring size | Deferral for feature updates | Deferral for quality updates (security fixes, drivers, and other updates) | Action |
| --------- | --------- | ----------------------------- | --------- | --------------|
| Evaluation (e.g. non-critical or test devices) | Small | None. Devices receive upgrades immediately. | None. Devices receive updates immediately. | Manually test and evaluate new functionality. Pause updates if there are issues. |
|Pilot (e.g. devices used by select teams)| Medium | 1 month | 1 week | Gather user feedback. Pause updates if there are issues. |
| Deploy (e.g. most of the devices in your organization) | Large | 4 months | 2 weeks | Gather user feedback. Pause updates if there are issues. |
| Mission critical (e.g. devices in executive boardrooms) | Small | 8 months (maximum deferral for upgrades) | 4 weeks (maximum deferral for updates) | Gather user feedback. |

**To configure your rings using Configuration Manager, Microsoft Intune, or another MDM provider**
1. Group your Surface Hub devices according to rings.
2. To defer feature updates, set an appropriate [Update\\DeferFeatureUpdatesPeriodInDays](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx#Update_DeferFeatureUpdatePeriodInDays) policy for each ring.
3. To defer quality updates, set an appropriate [Update\\DeferQualityUpdatesPeriodInDays]() policy for each ring.

If you encounter issues during the update rollout, you can pause updates using [Update\\PauseFeatureUpdates](https://msdn.microsoft.com/en-us/library/windows/hardware/dn904962.aspx#Update_PauseFeatureUpdates) and [Update\\PauseQualityUpdates](https://msdn.microsoft.com/en-us/library/windows/hardware/dn904962.aspx#Update_PauseQualityUpdates).

For more information about WUfB, see [Setup and deployment info for WUfB](https://technet.microsoft.com/itpro/windows/plan/setup-and-deployment).

## Use Windows Server Update Services (WSUS)

You can connect Surface Hub to your WSUS server to manage updates. Updates will be controlled through approvals or automatic deployment rules configured in your WSUS server, so new upgrades will not be deployed until you choose to deploy them.

**To connect a Surface Hub to a WSUS server**
1. Open **Settings** on your Surface Hub.
2. Enter the device admin credentials when prompted.
3. Navigate to **Update & security** > **Windows Update** > **Advanced options** > **Configure Windows Server Update Services (WSUS) server**.
4. Click **Use WSUS Server to download updates** and type the URL of your WSUS server. 

## Maintenance window

A default maintenance window is set for all new Surface Hubs:

-   Start time: 3:00 AM
-   Duration: 1 hour

Most Windows updates are downloaded and installed automatically by Surface Hub. You can change the maintenance window to limit when the device can be automatically rebooted after a Windows update installation. For those updates that require a reboot of the device, the update installation will be postponed until the maintenance window begins. If a meeting is scheduled to start during the maintenance window, or if the Surface Hub sensors detect that the device is being used, the pending installation will be postponed to the next maintenance window.

>**Note**: If an update installation has been pending for 28 days, on the 28th day the update will be forcibly installed. The device will ignore meetings or sensor status and reboot during the maintenance window.

 

To change the default maintenance window:

1.  Open the Settings app.
2.  Navigate to **Update and Security** &gt; **Advanced Options**.
3.  Under **Maintenance hours**, click **Change**.

## Deferring Windows updates

You can choose to defer downloading or installing updates that install new Windows features. When you do, new Windows features won’t be downloaded or installed for up to several months. Deferring updates doesn’t affect security updates, which will be downloaded and installed as usual.

To defer Windows feature updates:

1.  Open the Settings app.
2.  Navigate to **Update and Security** &gt; **Advanced Options**.
3.  Click on the checkbox for **Defer upgrades**.

## Using WSUS

You can use WSUS to manage the download and installation of Windows updates on your Surface Hub.

To connect a Surface Hub to a WSUS server:

1.  Open the Settings app.
2.  Navigate to **Update and Security** &gt; **Advanced Options**.
3.  Click on the checkbox for **Configure Windows Server Update Services (WSUS) server**.
4.  Check the box for **Use WSUS Server to download updates** and enter the WSUS endpoint.

## Related topics


[Manage Microsoft Surface Hub](manage-surface-hub.md)

[Microsoft Surface Hub administrator's guide](surface-hub-administrators-guide.md)

 

 






---
title: Post-device registration readiness checks
description:  This article details how post-device registration readiness checks are performed in Windows Autopatch
ms.date: 09/15/2022
ms.prod: w11
ms.technology: windows
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
msreviewer: andredm7
---

# Post-device registration readiness checks

One of the most expensive aspects of the software update management process is to make sure devices are always healthy to receive and report software updates for each software update release cycle.  

Having a way of measuring, quickly detecting and remediating when something goes wrong with on-going change management processes is very important; it helps mitigate high Helpdesk ticket volumes, reduces cost, and improves overall update management results.

Windows Autopatch provides proactive device readiness information about devices that are and are not ready to be fully managed by the service. IT admins can easily detect and fix device-related issues that are preventing them from achieving their update management compliance report goals.

## Device readiness scenarios

Device readiness in Windows Autopatch is divided into two different scenarios:

| Scenario | Description |
| ----- | ----- |
| Prerequisite checks | Ensures devices follow software-based requirements before being registered with the service. |
| Post-device registration readiness checks | Provides continuous monitoring of device health for registered devices.<p>IT admins can easily detect and remediate configuration mismatches in their environments or issues that prevent devices from having one or more software update workloads (Windows quality, feature updates, Microsoft Office, Teams, or Edge) fully managed by the Windows Autopatch service. Configuration mismatches can leave devices in a vulnerable state, out of compliance and exposed to security threats.</p>|

## Device readiness

| Required device readiness (prerequisite checks) prior to device registration (powered by Intune Graph API)  | Required post-device registration readiness checks (powered by Microsoft Cloud Managed Desktop Extension) |
| ----- | ----- |
| <ul><li>Windows OS (build, architecture and edition)</li></li><li>Managed by either Intune or ConfigMgr co-management</li><li>ConfigMgr co-management workloads</li><li>Last communication with Intune</li><li>Personal or non-Windows devices</li></ul> | <ul><li>Windows OS (build, architecture and edition)</li><li>Windows updates & Office Group Policy Object (GPO) versus Intune mobile device management (MDM) policy conflict</li><li>Bind network endpoints (Microsoft Defender, Microsoft Teams, Microsoft Edge, Microsoft Office)</li><li> Last communication with Intune</li><li>Internet connectivity</li></ul> |

The status of each post-device registration readiness check is shown in the Windows Autopatch’s device blade under the Not ready tab. You can take appropriate action(s) on devices that are not ready to be fully managed by the Windows Autopatch service.

## About the three tabs in the Devices blade

You deploy software updates to secure your environment, but these deployments only reach healthy/active devices. Unhealthy or not ready devices affect the overall software update compliance. Figuring out device health can be challenging and disruptive to the end user when IT can’t obtain proactive data sent by the device to the service so IT admins can proactively detect, troubleshoot, and fix issues.

Windows Autopatch has three tabs within its Devices blade. Each tab is designed to provide a different set of device readiness statuses so IT admins know where to go to monitor, and troubleshoot potential device health issues:

| Tab | Description |
| ----- | ----- |
| Ready | This tab only lists devices with the **Active** status. Devices with the **Active** status successfully: <ul><li>Passed the prerequisite checks.</li><li>Registered with Windows Autopatch.</li></ul>This tab also lists devices that have passed all postdevice registration readiness checks. |
| Not ready | This tab only lists devices with the **Readiness failed** and **Inactive** status.<ul><li>**Readiness failed status**: Devices that didn’t pass one or more post-device registration readiness checks.</li><li>**Inactive**: Devices that haven’t communicated with the Microsoft Endpoint Manager-Intune service in the last 28 days.</li></ul> |
| Not registered | Only lists devices with the **Prerequisite failed** status in it. Devices with the **Prerequisite failed** status didn’t pass one or more prerequisite checks during the device registration process. |

More details about the post-device registration readiness checks

A healthy or active device in Windows Autopatch is:

- Online
- Actively sending data
- Passes all post-device registration readiness checks

The post-device registration readiness checks are powered by the Microsoft Cloud Managed Desktop Extension, which is an agent or app, that is installed right after devices are successfully registered with Windows Autopatch. The Microsoft Cloud Managed Desktop Extension has the Device Readiness Check Plugin responsible for performing the readiness checks in devices and report back to the service.

See the following list of checks performed in Windows Autopatch in the first release of the post-device registration readiness checks:

| Check | Description |
| ----- | ----- |
| **Windows OS build, architecture, and edition** | Checks to see if devices support Windows 1809+ build (10.0.17763), 64-bit architecture and either Pro or Enterprise SKUs. |
| **Windows update policies managed via Microsoft Endpoint Manager-Intune** | Checks to see if devices have Windows Updates policies managed via Microsoft Endpoint Manager-Intune (MDM). |
| **Windows update policies managed via Group Policy Object (GPO)** | Checks to see if devices have Windows update policies managed via GPO. Windows Autopatch doesn’t support Windows update policies managed via GPOs. Windows update must be managed via Microsoft Endpoint Manager-Intune. |
| **Microsoft Office update policy managed via Group Policy Object (GPO)** | Checks to see if devices have Microsoft Office updates policies managed via GPO. Windows Autopatch doesn’t support Microsoft Office update policies managed via GPOs. Office updates must be managed via Microsoft Endpoint Manager-Intune or another Microsoft Office policy management method where Office update bits are downloaded directly from the Office Content Delivery Network (CDN). |
| **Windows Autopatch network endpoints** | There's a set of [network endpoints](../prepare/windows-autopatch-configure-network.md) that Windows Autopatch services must be able to reach for the various aspects of the Windows Autopatch service. |
| **Microsoft Teams network endpoints** | There's a set of [network endpoints](../prepare/windows-autopatch-configure-network.md) that devices with Microsoft Teams must be able to reach for software updates management. |
| **Microsoft Edge network endpoints** | There's a set of [network endpoints](../prepare/windows-autopatch-configure-network.md) that devices with Microsoft Edge must be able to reach for software updates management. |
| **Internet connectivity** | Checks to see if a device has internet connectivity to communicate with Microsoft cloud services. |

## Daily operations in Windows Autopatch

See the following end-to-end IT admin operation workflow:

**INSERT IMAGE**

:::image type="content" source="../media/windows-autopatch-device-registration-overview.png" alt-text="Post-device registration readiness checks" lightbox="../media/windows-autopatch-device-registration-overview.png":::

| Step | Description |
| ----- | ----- |
| **Steps 1-7** | For more information, see the [Device registration overview diagram](windows-autopatch-device-registration-overview.md).|
| **Step 8: Perform readiness checks** | Once devices are successfully registered with Windows Autopatch, the Microsoft Cloud Managed Desktop Extension agent performs readiness checks against devices every 24 hours. |
| **Step 9: Check readiness status** |<ol><li>The Microsoft Cloud Managed Desktop Extension service evaluates the readiness results gathered by its agent.</li><li>The readiness results are sent to the Windows Autopatch’s device readiness service.</li></ol>|
| **Step 10: Add devices to the Not ready** | When devices don’t pass one or more readiness checks, even if they’re registered with Windows Autopatch, they’re added into the **Not ready** tab so IT admins can remediate devices. |
| **Step 11: IT admin understands what the issue is and remediates** | IT admin checks remediates issues surfaced by Windows Autopatch in its device blade (**Not ready** tab), it can take up to 24 hours for devices to show back up into the **Ready** tab. |

## FAQ

| Question | Answer |
| ----- | ----- |
| **How frequent are the post-device registration readiness checks performed?** |<ul><li>The Microsoft Cloud Managed Desktop Extension agent configures when it runs (once a day).</li><li>Once the agent collects results for the post-device registration readiness checks, it generates readiness results in the device.</li><li>The readiness results are sent over to the Microsoft Cloud Managed Desktop Extension service.</li><li>The Microsoft Cloud Managed Desktop Extension sends the readiness results to the Windows Autopatch Devices blade (**Not ready** tab).</li></ul>|
| **What to expect when one or more checks fail?** | Devices are automatically sent to the Ready tab once they are successfully registered with Windows Autopatch. When devices don’t meet one or more post-device registration readiness checks, the devices are moved to the **Not ready** tab. IT admins can learn about these devices and take appropriate actions to remediate them. Windows Autopatch will provide information about the failure and how to potentially remediate devices. <p>Once devices are remediated, it can take up to 24 hours to show up in the **Ready** tab.</p>|

## Additional resources

- [Device registration overview](windows-autopatch-device-registration-overview.md)
- [Register your devices](windows-autopatch-register-devices.md)

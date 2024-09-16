---
title: Changes made at feature activation
description: This reference article details the changes made to your tenant when you activate Windows Autopatch
ms.date: 09/16/2024
ms.service: windows-client
ms.subservice: autopatch
ms.topic: concept-article
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: hathind
ms.collection:
  - highpri
  - tier1
---

# Changes made at feature activation

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

The following configuration details explain the changes made to your tenant when consenting to Windows Autopatch feature activation with the Windows Autopatch service.

> [!IMPORTANT]
> The service manages and maintains the following configuration items. Don't change, edit, add to, or remove any of the configurations. Doing so might cause unintended configuration conflicts and impact the Windows Autopatch service.

## Windows Autopatch enterprise applications

Enterprise applications are applications (software) that a business uses to do its work.

Windows Autopatch creates an enterprise application in your tenant. This enterprise application is used to run the Windows Autopatch service.

| Enterprise application name | Usage | Permissions |
| ----- | ------ | ----- |
| Modern Workplace Management | The Modern Workplace Management application:<ul><li>Manages the service</li><li>Publishes baseline configuration updates</li><li>Maintains overall service health</li></ul> | <ul><li>DeviceManagementApps.ReadWrite.All</li><li>DeviceManagementConfiguration.ReadWrite.All</li><li>DeviceManagementManagedDevices.PriviligedOperation.All</li><li>DeviceManagementManagedDevices.ReadWrite.All</li><li>DeviceManagementRBAC.ReadWrite.All</li><li>DeviceManagementServiceConfig.ReadWrite.All</li><li>Directory.Read.All</li><li>Group.Create</li><li>Policy.Read.All</li><li>WindowsUpdates.ReadWrite.All</li></ul> |

## Microsoft Entra groups

Windows Autopatch creates the required Microsoft Entra groups to operate the service.

The following groups target Windows Autopatch configurations to devices and management of the service by our [first party enterprise applications](#windows-autopatch-enterprise-applications).

| Group name | Description |
| ----- | ----- |
| Modern Workplace Devices-Virtual Machine | All Autopatch virtual devices |
| Windows Autopatch-Devices all | All Autopatch devices |
| Modern Workplace Devices-Windows Autopatch-Test | Deployment ring for testing update deployments prior production rollout |
| Modern Workplace Devices-Windows Autopatch-First | First production deployment ring for early adopters |
| Modern Workplace Devices-Windows Autopatch-Fast | Fast deployment ring for quick rollout and adoption |
| Modern Workplace Devices-WindowsAutopatch-Broad | Final deployment ring for broad rollout into the organization |

## Device configuration policies

- Windows Autopatch - Data Collection

| Policy name | Policy description | Properties | Value |
| ----- | ----- | ----- | ----- |
| Windows Autopatch - Data Collection | Windows Autopatch and Telemetry settings processes diagnostic data from the Windows device.<p>Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Test</li><li>Modern Workplace Devices-Windows Autopatch-First</li><li>Modern Workplace Devices-Windows Autopatch-Fast</li><li>Modern Workplace Devices-Windows Autopatch-Broad</li></ul>|<ol><li>[Allow Telemetry](/windows/client-management/mdm/policy-csp-system#system-allowtelemetry)</li><li>[Limit Enhanced Diagnostic Data Windows Analytics](/windows/client-management/mdm/policy-csp-system#system-limitenhanceddiagnosticdatawindowsanalytics)</li><li>[Limit Dump Collection](/windows/client-management/mdm/policy-csp-system#system-limitdumpcollection)</li><li>[Limit Diagnostic Log Collection](/windows/client-management/mdm/policy-csp-system#system-limitdiagnosticlogcollection)</li></ol>|<ol><li>Full</li><li>Enabled</li><li>Enabled</li><li>Enabled</li></ol> |

## Windows feature update policies

- Windows Autopatch - Global DSS Policy

| Policy name | Policy description | Value |
| ----- | ----- | ----- |
| Windows Autopatch - Global DSS Policy | Global DSS policy for Test device group with the required minimum OS version | Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Test</li></ul><br>Exclude from:<ul><li>Modern Workplace - Windows 11 Pre-Release Test Devices</li></ul>|

## Microsoft Office update policies

> [!IMPORTANT]
> By default, these policies are not deployed. You can opt-in to deploy these policies when you [activate Windows Autopatch features](../prepare/windows-autopatch-feature-activation.md).<p>To update Microsoft Office, you must [create at least one Autopatch group](../manage/windows-autopatch-manage-autopatch-groups.md) and the toggle the must be set to [**Allow**](../manage/windows-autopatch-microsoft-365-apps-enterprise.md#allow-or-block-microsoft-365-app-updates).</p>

- Windows Autopatch - Office Configuration
- Windows Autopatch - Office Update Configuration [Test]
- Windows Autopatch - Office Update Configuration [First]
- Windows Autopatch - Office Update Configuration [Fast]
- Windows Autopatch - Office Update Configuration [Broad]

| Policy name | Policy description | Properties | Value |
| ----- | ----- | ----- | ----- |
| Windows Autopatch - Office Configuration | Sets Office Update Channel to the Monthly Enterprise servicing branch.<p>Assigned to:<ol><li>Modern Workplace Devices-Windows Autopatch-Test</li><li>Modern Workplace Devices-Windows Autopatch-First</li><li>Modern Workplace Devices-Windows Autopatch-Fast</li><li>Modern Workplace Devices-Windows Autopatch-Broad</li></ol>|<ol><li>Enable Automatic Updates</li><li>Hide option to enable or disable updates</li><li>Update Channel</li><li>Channel Name (Device)</li><li>Hide Update Notifications</li><li>Update Path</li><li>Location for updates (Device)</li></ol> |<ol><li>Enabled</li><li>Enabled</li><li>Enabled</li><li>Monthly Enterprise Channel</li><li>Disabled</li><li>Enabled</li><li>`http://officecdn.microsoft.com/pr/55336b82-a18d-4dd6-b5f6-9e5095c314a6`</li></ol> |
| Windows Autopatch - Office Update Configuration [Test] | Sets the Office update deadline<p>Assigned to:<ol><li>Modern Workplace Devices-Windows Autopatch-Test</li></ol> |<ol><li>Delay downloading and installing updates for Office</li><li>Update Deadline</li></ol>|<ol><li>Enabled; `Days(Device) == 0 days`</li></li><li>Enabled; `Update Deadline(Device) == 7 days`</li></ol>|
| Windows Autopatch - Office Update Configuration [First] | Sets the Office update deadline<p>Assigned to:<ol><li>Modern Workplace Devices-Windows Autopatch-First</li></ol> |<ol><li>Delay downloading and installing updates for Office</li><li>Update Deadline</li></ol> | <ol><li>Enabled; `Days(Device) == 0 days`</li><li>Enabled; `Update Deadline(Device) == 7 days`</li></ol>|
| Windows Autopatch - Office Update Configuration [Fast] | Sets the Office update deadline<p>Assigned to:<ol><li>Modern Workplace Devices-Windows Autopatch-Fast</li></ol>|<ol><li>Delay downloading and installing updates for Office</li><li>Update Deadline</li></ol>| <ol><li>Enabled; `Days(Device) == 3 days`</li><li>Enabled; `Update Deadline(Device) == 7 days`</li></ol>|
| Windows Autopatch - Office Update Configuration [Broad] | Sets the Office update deadline<br>Assigned to:<ol><li>Modern Workplace Devices-Windows Autopatch-Broad</li>|<ol><li>Delay downloading and installing updates for Office</li><li>Update Deadline</li></ol>| <ol><li>Enabled; `Days(Device) == 7 days`</li><li>Enabled; `Update Deadline(Device) == 7 days`</li></ol> |

## Microsoft Edge update policies

> [!IMPORTANT]
> By default, these policies are not deployed. You can opt-in to deploy these policies when you [activate Windows Autopatch features](../prepare/windows-autopatch-feature-activation.md).<p>To update Microsoft Office, you must [create at least one Autopatch group](../manage/windows-autopatch-manage-autopatch-groups.md) and the toggle the must be set to [**Allow**](../manage/windows-autopatch-edge.md#allow-or-block-microsoft-edge-updates).</p>

- Windows Autopatch - Edge Update Channel Stable
- Windows Autopatch - Edge Update Channel Beta

| Policy name | Policy description | Properties | Value |
| ----- | ----- | ----- | ----- |
| Windows Autopatch - Edge Update Channel Stable | Deploys updates via the Edge Stable Channel<p>Assigned to:<ol><li>Modern Workplace Devices-Windows Autopatch-First</li><li>Modern Workplace Devices-Windows Autopatch-Fast</li><ol><li>Modern Workplace Devices-Windows Autopatch-Broad</li></ol>| <ol><li>Target Channel Override </li><li>Target Channel (Device) </li></ol> | <ol><li>Enabled</li><li>Stable</li></ol>|
| Windows Autopatch - Edge Update Channel Beta | Deploys updates via the Edge Beta Channel<p>Assigned to:<ol><li>Modern Workplace Devices-Windows Autopatch-Test </li></ol>| <ol><li>Target Channel Override</li><li>Target Channel (Device)</li></ol> | <ol><li>Enabled</li><li>Beta</li></ol>|

## Driver updates for Windows 10 and later

> [!IMPORTANT]
> By default, these policies are not deployed. You can opt-in to deploy these policies when you [activate Windows Autopatch features](../prepare/windows-autopatch-feature-activation.md).<p>To update Microsoft Office, you must [create at least one Autopatch group](../manage/windows-autopatch-manage-autopatch-groups.md) and the toggle the must be set to [**Allow**](../manage/windows-autopatch-manage-autopatch-groups.md#create-an-autopatch-group).</p>

- Windows Autopatch - Driver Update Policy [Test]
- Windows Autopatch - Driver Update Policy [First]
- Windows Autopatch - Driver Update Policy [Fast]
- Windows Autopatch - Driver Update Policy [Broad]

## PowerShell scripts

| Script | Description |
| ----- | ----- |
| Modern Workplace - Autopatch Client Setup v1.1 | Installs necessary client components for the Windows Autopatch service |

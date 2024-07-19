---
title: policy health and remediation
description: Describes what Autopatch does it detects policies in the tenant are either missing or modified to states that affect the service
ms.date: 07/10/2024
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: rekhanr
ms.collection:
  - highpri
  - tier1
---

# Policy health and remediation

Windows Autopatch uses Microsoft Intune policies to set configurations and deliver the service. Windows Autopatch continuously monitors the policies and maintains all configurations related to the operation of the service.

> [!IMPORTANT]
> Don't change, edit, add to, or remove any of the Windows Autopatch policies or groups. Doing so can cause unintended configuration changes and impact the Windows Autopatch service. For more information about Windows Autopatch configurations, see [Changes made at tenant enrollment](../references/windows-autopatch-changes-to-tenant.md).

When Windows Autopatch detects policies in the tenant are either missing or modified that affects the service, Windows Autopatch will raise alerts and detailed recommended actions to ensure healthy operation of the service.

IT admins must respond to the service-generated alerts to ensure that Autopatch services can be delivered, and devices remain eligible for the service.

With this feature, IT admins can:

- View alerts, in line with the features you commonly use:
    - Windows Update related alerts in the Release management blade.
    - Device configuration alerts in the **Tenant management** > **Alert actions** tab.
- Initiate action for the Autopatch service to restore policies without having to raise an incident.
- Initiate action for the Autopatch service to restore the deployment rings without having to raise an incident.

> [!NOTE]
> You can rename your policies to meet your organization's requirements. Do **not** rename the underlying Autopatch deployment groups.

## Check policy health

Alerts are raised when deployment rings don't have the required policies and the settings that impact devices within the ring. The remediation actions from the displayed alerts are intended to keep the deployment rings in a healthy state. Devices in each ring may continue to report different states, including errors and conflicts. This occurs due to multiple policies targeted at the same device or other conditions on the device. Policy conflicts and other device errors aren't addressed by these alerts.

## Built-in roles required for remediation actions

The minimum role required to restore configurations is **Intune Service Administrator**.

## Restore device configuration policy

**To initiate remediation action for device configuration alerts:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Navigate to **Tenant administration** > **Tenant management** > **Actions**.
1. Select **Restore missing policy** to launch the workflow.
1. Review the message and select **Restore policy**.
1. If the **Change modified policy alert** appears, select this alert to launch the workflow.
1. Select **Submit changes** to restore to service required values.

There will be an alert for each policy that is missing or has deviated from the service defined values.

## Restore Windows Update policies

**To initiate remediation actions for Windows quality update policies:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Navigate to **Devices** > **Windows Autopatch** > **Release management** > **Release schedule** > **Windows quality updates** > **Status**.
1. Select **Policy Error** to launch the Policy error workflow.
1. Review the message:
    1. If this is a missing policy error, select **Restore policy** to complete the workflow.
    2. If this is a modified policy, select **Submit changes** to restore to service required values.

**To initiate remediation actions for Windows feature update policies:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Navigate to **Devices** > **Windows Autopatch** > **Release management** > **Release schedule** > **Windows feature updates** > **Status**.
1. Select **Policy Error** to launch the Policy error workflow.
1. Review the message.
    1. If this is a missing policy error, select **Restore policy** to complete the workflow.
    2. If this is a modified policy, select **Submit changes** to restore to service required values.

## Restore deployment groups

Windows Autopatch will automatically restore any missing groups that are required by the service. When a missing deployment group is restored, and the policies are also missing, the policies be restored to the deployment groups.

If policies are misconfigured or unassigned, admins must restore them. In the Release management blade, the service will raise a Policy error workflow that you must complete to repair Windows Update policies. All other policies must be restored from the Tenant administration blade.

Due to the asynchronous run of service detectors, it might take up to four (4) hours for this error to be displayed.

> [!NOTE]
> While Windows Autopatch continuously monitors the policies, all policy alerts are raised within four (4) hours of detection.<p>Alerts will remain active until an IT admin completes the action to restore them to a healthy state.</p><p>There are no Autopatch reports for policy alerts and actions at this time.</p>

## Use audit logs to track actions in Microsoft Intune

You can review audit logs in Intune to review the activities completed on the tenant.

**To review audit logs in Intune:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Tenant administration** > **Audit logs**.

The entries with enterprise application name, Modern Workplace Management, are the actions requested by Windows Autopatch.

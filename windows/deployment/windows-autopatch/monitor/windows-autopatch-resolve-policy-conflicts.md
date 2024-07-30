---
title: Resolve policy conflicts
description: This article describes how to resolve Windows Autopatch policy conflicts.
ms.date: 04/09/2024
ms.service: windows-client
ms.subservice: itpro-updates
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

# Resolve policy conflicts (public preview)

> [!IMPORTANT]
> This feature is in **public preview**. It's being actively developed, and might not be complete.

Windows Autopatch deploys Microsoft Intune policies to enrolled tenants, and continuously monitors the Microsoft Intune policies. Conflicts occur when there are two policies in the tenant, and they update the same setting to different values. For Windows Autopatch to successfully deliver updates to registered devices, it’s critical for the devices in the service to have the policy targeted and assigned successfully.

> [!IMPORTANT]
> Don't change, edit, add to, or remove any of the Windows Autopatch policies or groups. Doing so can cause unintended configuration changes and impact the Windows Autopatch service. For more information about Windows Autopatch configurations, see [Changes made at tenant enrollment](../references/windows-autopatch-changes-to-tenant.md).

When the Windows Autopatch service detects policies in the tenant that conflict with a setting in another Intune device policy, this conflict is displayed. It’s necessary to review the policies and their settings and manually resolve these conflicts.

With this feature, IT admins can view:

- List of all Autopatch policies that conflict with other device policies in the tenant
- A summary view of conflicting policies, affected devices, and open alerts
- A detailed view of affected devices
- Alerts that include details of conflicting policies, the settings, and the Azure AD groups they're assigned to. Admins must take necessary action so the expected policy is successfully assigned to the device

## Resolve policy conflicts overview

Alerts are raised when devices report policy conflicts. Autopatch policies are assigned to Autopatch groups. Devices that are members of Autopatch groups are expected to receive only Windows Autopatch policies.

Once you resolve the conflict, it takes effect on the device at the next Intune sync. This view is refreshed every 24 hours. It can take up to 72 hours after the conflict is resolved for the view to be updated.  

> [!NOTE]
> This view only includes policy conflicts between Microsoft Intune policies. This view doesn’t include policy issues caused by other configurations, for example, group policy settings, registry settings that are changed by scripts and prevent Windows Autopatch from deploying updates.<p>When Windows Autopatch detects Intune based policies are missing or modified, this information is displayed with detailed recommended actions, and described in [Policy health and remediation](../operate/windows-autopatch-policy-health-and-remediation.md).</p><p>To ensure devices remain healthy and not affected by group policies, see [Post-device registration readiness checks](../deploy/windows-autopatch-post-reg-readiness-checks.md#details-about-the-post-device-registration-readiness-checks).</p>

## Policy conflict view

This view includes the list of Windows Autopatch policies ([Expected policies](#policy-conflict-alert-details)) that are assigned to various Windows Autopatch groups that include devices. When the Expected policy can't be successfully assigned to one or more devices, because of an equivalent setting in another Intune policy targeting the device, the conflict is detected, and reported as a [Conflicting policy](#policy-conflict-alert-details).  

If the Expected policy conflicts with multiple Intune policies, each conflict is displayed in different lines in the Policy conflict view.  

**To view all policies conflicting with the expected policies:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).  
2. Navigate to **Devices** > **Windows Autopatch** > **Policy health**.
3. In the **Policy conflicts** tab, the list of expected policies and conflicting policies is displayed.
4. Select **View alert** and review the details of the **Recommended action** and alert details.

### Policy conflict alert details

All alerts displayed in this flyout include the following details. You must review the details and take action to resolve the conflict.

| Alert column | Description |
| ----- | ----- |
| Expected Policy | The Windows Autopatch policy that is assigned to the Windows Autopatch group and is the policy that the service is expecting to be assigned. |
| Expected Microsoft Entra Group | The device is a member of the Windows Autopatch group that the service assigned the policy to. |
| Conflicting Policy | Other policies on the tenant are configuring the same settings and with different values. This policy is also targeted to the same devices, which is causing the policy state to report a conflict. |
| Conflicting Microsoft Entra Group | The device is also a member of this Microsoft Entra group that the conflicting policy is assigned to. |
| Affected devices | Number of devices reporting the policy conflict. This check is only performed on devices where the last sync is within 28 days. |
| Conflicting settings | Includes the specific setting values causing the conflict. |

## Affected devices view

This view includes the list of devices with policy conflicts with the [Expected policy](#policy-conflict-alert-details). It’s possible for devices to have multiple conflicting policies, due to their membership in various groups.  

You can navigate to this view from the Affected devices column link in the Policy conflicts view, or directly from Policy health blade. This page displays a filtered device list, when navigating from the Policy conflicts view. Affected devices only include devices that have a successful Intune sync status in the last 28 days.

**To view the alert details and perform the recommended actions:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Navigate to **Windows Autopatch** > **Policy health** > **Affected devices** tab.
3. Select **View alert** to see the alert details.

### Affected devices alert details

In this flyout, when the device is reporting conflicts due to multiple policies, each policy is displayed as a separate section in this alert. Alerts occur when the device is a member of multiple groups, and each policy conflicts with the [Expected Windows Autopatch policy](#policy-conflict-view).

## Options

| Options | Description |
| ----- | ----- |
| Export alerts | You can use this option in either the Policy conflicts or Affected devices tabs. Select Export to export all alert details into a CSV file. The CSV file includes the following information:<ul><li>Device name</li><li>Deployment ring</li><li>Conflicting policies count</li><li>Last check-in</li><li>Expected policy name</li><li>Expected policy group</li><li>Conflicting policy group</li><li>Conflicting policy name</li></ul> |
| Search | Use the Search option to find the policies of affected devices. In the Search, enter either the Expected policy name or the Conflicting policy name. |

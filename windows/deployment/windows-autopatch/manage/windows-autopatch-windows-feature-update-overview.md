---
title: Windows feature updates overview
description: This article explains how Windows feature updates are managed with Autopatch groups
ms.date: 07/08/2024
ms.service: windows-client
ms.subservice: autopatch
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

# Windows feature updates overview

Microsoft provides robust mobile device management (MDM) solutions such as Microsoft Intune, Windows Update for Business, Configuration Manager etc. However, the administration of these solutions to keep Windows devices up to date with the latest Windows feature releases rests on your organization's IT admins. The Windows feature update process is considered one of the most expensive and time consuming tasks for IT since it requires incremental rollout and validation.

Windows feature updates consist of:

- Keeping Windows devices protected against behavioral issues.
- Providing new features to boost end-user productivity.

Windows Autopatch makes it easier and less expensive for you to keep your Windows devices up to date. You can focus on running your core businesses while Windows Autopatch runs update management on your behalf.

## Service level objective

Windows Autopatch's service level objective for Windows feature updates aims to keep **95%** of eligible devices on the targeted Windows OS version [currently serviced](/windows/release-health/release-information?msclkid=ee885719baa511ecb838e1a689da96d2) for its default and global releases maintained by the service, and custom releases created and managed by you.

## Device eligibility criteria

Windows Autopatch's device eligibility criteria for Windows feature updates aligns with [Windows Update for Business and Microsoft Intune's device eligibility criteria](/mem/intune/protect/windows-10-feature-updates#prerequisites).

> [!IMPORTANT]
> Windows Autopatch supports registering [Windows 10 Long-Term Servicing Channel (LTSC)](/windows/whats-new/ltsc/) devices that are being currently serviced by the [Windows LTSC](/windows/release-health/release-information). The service only supports managing the [Windows quality updates](../operate/windows-autopatch-windows-quality-update-overview.md) workload for devices currently serviced by the LTSC. Windows Update for Business service and Windows Autopatch don't offer Windows feature updates for devices that are part of the LTSC. You must either use [LTSC media](https://www.microsoft.com/evalcenter/evaluate-windows-10-enterprise) or the [Configuration Manager operating system deployment capabilities to perform an in-place upgrade](/mem/configmgr/osd/deploy-use/upgrade-windows-to-the-latest-version) for Windows devices that are part of the LTSC.

## Key benefits

- Windows Autopatch makes it easier and less expensive for you to keep your Windows devices up to date. You can focus on running your core businesses while Windows Autopatch runs update management on your behalf.
- You're in control of telling Windows Autopatch when your organization is ready to move to the next Windows OS version.
	- Combined with custom releases, Autopatch Groups gives your organization great control and flexibility to help you plan your gradual rollout in a way that works for your organization.
- Simplified end-user experience with rich controls for gradual rollouts, deployment cadence and speed.
- No need to manually modify the default Windows feature update policies (default release) to be on the Windows OS version your organization is currently ready for.
- Allows for scenarios where you can deploy a single release across several Autopatch groups and its deployment rings.

## Key concepts

- A release is made of one or more deployment phases and contains the required OS version to be gradually rolled out throughout its deployment phases.
- A phase (deployment phase) is made of one or more Autopatch group deployment rings. A phase:
    - Works as an additional layer of deployment cadence settings that can be defined by IT admins (only for Windows feature updates) on top of Autopatch group deployment rings (Windows update rings policies).
    - Deploys Windows feature updates across one or more Autopatch groups.
- There are three types of releases:
    - Default
    - Global
    - Custom

### Default release

Windows Autopatch's default Windows feature update release is a service-driven release that enforces the minimum Windows OS version currently serviced by the Windows servicing channels for the deployment rings in the [Default Autopatch group](../deploy/windows-autopatch-groups-overview.md#about-the-default-autopatch-group).

> [!TIP]
> Windows Autopatch allows you to [create custom Windows feature update releases](../operate/windows-autopatch-groups-manage-windows-feature-update-release.md#create-a-custom-release).

When devices are registered by manually adding them to the Windows Autopatch Device Registration Microsoft Entra ID assigned group, devices are assigned to deployment rings as part of the default Autopatch group. Each deployment ring has its own Windows feature update policy assigned to them. This is intended to minimize unexpected Windows OS upgrades once new devices register with the service.

The policies:

- Contain the minimum Windows 10 version currently serviced by the [Windows servicing channels](/windows/release-health/release-information?msclkid=ee885719baa511ecb838e1a689da96d2). The current minimum Windows OS version is **Windows 10 21H2**.
- Set a bare minimum Windows OS version required by the service once devices are registered with the service.

If the device is registered with Windows Autopatch, and the device is:

- Below the service's currently targeted Windows feature update, that device will be automatically upgraded to the service's target version when the device meets the [device eligibility criteria](#device-eligibility-criteria).
- On, or above the currently targeted Windows feature update version, there won't be any Windows OS upgrades available to that device.

#### Policy configuration for the default release

If your tenant is enrolled with Windows Autopatch, you can see the following default policies created by the service in the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431):

| Policy name | Phase mapping | Feature update version | Rollout options | First deployment ring availability | Final deployment ring availability | Day between deployment rings | Support end date |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| Windows Autopatch - DSS Policy [Test] | Phase 1 | Windows 10 21H2 | Make update available as soon as possible | May 9, 2023  | N/A | N/A | June 11, 2024 |
| Windows Autopatch - DSS Policy [First] | Phase 2 | Windows 10 21H2 | Make update available as soon as possible | May 16, 2023  | N/A | N/A | June 11, 2024 |
| Windows Autopatch - DSS Policy [Fast] | Phase 3 | Windows 10 21H2 | Make update available as soon as possible | May 23, 2023  | N/A | N/A | June 11, 2024 |
| Windows Autopatch - DSS Policy [Broad] | Phase 4 | Windows 10 21H2 | Make update available as soon as possible | May 30, 2023  | N/A | N/A | June 11, 2024 |

> [!NOTE]
> Gradual rollout settings aren't configured in the default Windows Update feature policy. If the date of the final group availability is changed to a past date, all remaining devices are offered the update as soon as possible. For more information, see [rollout options for Windows Updates in Microsoft Intune](/mem/intune/protect/windows-update-rollout-options#make-updates-available-gradually).

### Global release

Windows Autopatch's global Windows feature update release is a service-driven release. Like the [default release](#default-release), the Global release enforces the [minimum Windows OS version currently serviced by the Windows servicing channels](/windows/release-health/release-information?msclkid=ee885719baa511ecb838e1a689da96d2).

There are two scenarios that the Global release is used:

| Scenario | Description |
| ----- | ----- |
| Scenario #1 | You assign Microsoft Entra groups to be used with the deployment ring (Last) or you add additional deployment rings when you customize the [Default Autopatch group](../manage/windows-autopatch-manage-autopatch-groups.md#edit-the-default-or-a-custom-autopatch-group).<p>A global Windows feature update policy is automatically assigned behind the scenes to the newly added deployment rings or when you assigned Microsoft Entra groups to the deployment ring (Last) in the Default Autopatch group.</p> |
| Scenario #2 | You create new [Custom Autopatch groups](../manage/windows-autopatch-manage-autopatch-groups.md#create-a-custom-autopatch-group).<p>The global Windows feature policy is automatically assigned behind the scenes to all deployment rings as part of the Custom Autopatch groups you create.</p> |

> [!NOTE]
> Global releases don't show up in the Windows feature updates release management blade.

#### Policy configuration values

See the following table on how Windows Autopatch configures the values for its global Windows feature update policy. If your tenant is enrolled with Windows Autopatch, you can see the following default policies created by the service in the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431):

| Policy name | Feature update version | Rollout options | First deployment ring availability | Final deployment ring availability | Day between deployment rings | Support end date |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| Windows Autopatch - Global DSS Policy [Test] | Windows 10 21H2 | Make update available as soon as possible | N/A  | N/A | N/A | June 11, 2024 |

> [!NOTE]
> Gradual rollout settings aren't configured in the default Windows Update feature policy. If the date of the final group availability is changed to be a past date, all remaining devices are offered the update as soon as possible. For more information, see [rollout options for Windows Updates in Microsoft Intune](/mem/intune/protect/windows-update-rollout-options#make-updates-available-gradually).

### Differences between the default and global Windows feature update policies

> [!IMPORTANT]
> Once you create a custom Windows feature update release, both the global and the default Windows feature update policies are unassigned from Autopatch group's deployment rings behind the scenes.

The differences in between the global and the default Windows feature update policy values are:

| Default Windows feature update policy | Global Windows feature update policy |
| ----- | ----- |
| <ul><li>Set by default with the Default Autopatch group and assigned to Test, Ring1, Ring2, Ring3. The default policy isn't automatically assigned to the Last ring in the Default Autopatch group.</li><li>The Windows Autopatch service keeps its minimum Windows OS version updated following the recommendation of minimum Windows OS version [currently serviced by the Windows servicing channels](/windows/release-health/release-information?msclkid=ee885719baa511ecb838e1a689da96d2).</li></ul> | <ul><li>Set by default and assigned to all new deployment rings added as part of the Default Autopatch group customization.</li><li>Set by default and assigned to all deployment rings created as part of Custom Autopatch groups.</li></ul> |

### Custom release

A custom release is the release that you create to tell Windows Autopatch how you want the service to manage Windows OS upgrades on your behalf.

Custom releases gives you flexibility to do Windows OS upgrades on your pace, but still relying on Windows Autopatch to give you insights of how your OS upgrades are going and additional deployment controls through the Windows feature updates release management experience.

When a custom release is created and assigned to Autopatch groups, either the default or global releases are unassigned to avoid feature update policy for Windows 10 and later conflicts.

For more information on how to create a custom release, see [Manage Windows feature update release](../operate/windows-autopatch-groups-manage-windows-feature-update-release.md#create-a-custom-release).

### About Windows Update rings policies

Feature update policies work with Windows Update rings policies. Windows Update rings policies are created for each deployment ring for the [Default or a Custom Autopatch group](../deploy/windows-autopatch-groups-overview.md#key-concepts) based on the deployment settings you define. The policy name convention is `Windows Autopatch Update Policy - <Autopatch group name> - <Deployment group name>`.

The following table details the default Windows Update rings policy values that affect either the default or custom Windows feature updates releases:

| Policy name | Microsoft Entra group assignment | Quality updates deferral in days | Feature updates deferral in days | Feature updates uninstall window in days | Deadline for quality updates in days | Deadline for feature updates in days | Grace period | Auto restart before deadline |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| Windows Autopatch Update Policy - default - Test | Windows Autopatch - Test | 0 | 0 | 30 | 0 | 5 | 0 | Yes |
| Windows Autopatch Update Policy - default - Ring1 | Windows Autopatch - Ring1 | 1 | 0 | 30 | 2 | 5 |2 | Yes |
| Windows Autopatch Update Policy - default - Ring2 | Windows Autopatch - Ring2 | 6 | 0 | 30 | 2 | 5 | 2 | Yes |
| Windows Autopatch Update Policy - default - Ring3 | Windows Autopatch - Ring3 | 9 | 0 | 30 | 5 | 5 | 2 | Yes |
| Windows Autopatch Update Policy - default - Last | Windows Autopatch - Last | 11 | 0 | 30 | 3 | 5 | 2 | Yes |

> [!IMPORTANT]
> When you create a custom Windows feature update release, new Windows feature update policies are:<ul><li>Created corresponding to the settings you defined while creating the release.</li><li>Assigned to the Autopatch group's deployment rings you select to be included in the release.</li></ul>

## Common ways to manage releases

### Use case #1

| Scenario | Solution |
| ----- | ----- |
| You're working as the IT admin at Contoso Ltd., and you need to gradually rollout of Windows 11's latest version to several business units across your organization. | Custom Windows feature update releases deliver OS upgrades horizontally, through phases, to one or more Autopatch groups.<br>Phases:<ul><li>Set your organization's deployment cadence.</li><li>Work like deployment rings on top of Autopatch group's deployment rings. Phases group one or more deployment rings across one or more Autopatch groups.</li></ul><br>See the following visual for a representation of Phases with custom releases. |

:::image type="content" source="../media/autopatch-groups-manage-feature-release-case-1.png" alt-text="Manage Windows feature update release use case one" lightbox="../media/autopatch-groups-manage-feature-release-case-1.png":::

### Use case #2

| Scenario | Solution |
| ----- | ----- |
| You're working as the IT admin at Contoso Ltd. and your organization isn't ready to upgrade its devices to either Windows 11 or the newest Windows 10 OS versions due to conflicting project priorities within your organization.<p>However, you want to keep Windows Autopatch managed devices supported and receiving monthly updates that are critical to security and the health of the Windows ecosystem.</p> | Default Windows feature update releases deliver the minimum Windows OS upgrade vertically to each Windows Autopatch group (either [Default](../deploy/windows-autopatch-groups-overview.md#about-the-default-autopatch-group) or [Custom](../deploy/windows-autopatch-groups-overview.md#about-custom-autopatch-groups)). The Default Windows Autopatch group is pre-configured with the [default Windows feature update release](#default-release) and no additional configuration is required from IT admins as Autopatch manages the default release on your behalf.<p>If you decide to edit the default Windows Autopatch group to add additional deployment rings, these rings receive a [global Windows feature update policy](#global-release) set to offer the minimum Windows OS version [currently serviced](/windows/release-health/release-information?msclkid=ee885719baa511ecb838e1a689da96d2) to devices. Every custom Autopatch group you create gets a [global Windows feature update policy](#global-release) that enforces the minimum Windows OS version [currently serviced](/windows/release-health/release-information?msclkid=ee885719baa511ecb838e1a689da96d2).</p><p>See the following visual for a representation of default releases.</p>|

:::image type="content" source="../media/autopatch-groups-manage-feature-release-case-2.png" alt-text="Manage Windows feature update release use case two" lightbox="../media/autopatch-groups-manage-feature-release-case-2.png":::

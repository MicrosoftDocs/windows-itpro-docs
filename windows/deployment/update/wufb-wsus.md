---
title: Use Windows Update for Business (WUfB) and Windows Server Update Services (WSUS) together
description:  Learn how to use Windows Update for Business and WSUS together.
ms.prod: w10
ms.mktglfcycl: manage
author: arcarley
ms.localizationpriority: medium
audience: itpro
ms.author: arcarley
ms.collection:
  - m365initiative-coredeploy
  - highpri
manager: dougeby
ms.topic: article
---

# Use Windows Update for Business and WSUS together

**Applies to**

- Windows 10
- Windows 11

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq)

The Windows update scan source policy enables you to choose what types of updates to get from either [WSUS](waas-manage-updates-wsus.md) or Windows Update for Business (WUfB) service.

We added the scan source policy starting with the [September 1, 2021—KB5005101 (OS Builds 19041.1202, 19042.1202, and 19043.1202) Preview](https://support.microsoft.com/help/5005101) update and it applies to Window 10, version 2004 and above and Windows 11. This policy changes the way devices determine whether to scan against a local WSUS server or Windows Update service.

> [!IMPORTANT]
> The policy **Do not allow update deferral policies to cause scans against Windows Update**, also known as Dual Scan, is no longer supported on Windows 11 and on Windows 10 it is replaced by the new Windows scan source policy and is not recommended for use. If you configure both on Windows 10, you will not get updates from Windows Update.

## About the scan source policy

The specify scan source policy enables you to specify whether your device gets the following Windows update types form WSUS **or** from Windows Update:

- Feature updates
- Windows quality updates
- Driver and firmware updates
- Updates for other Microsoft products

We recommend using this policy on your transition from fully on-premises managed environment to a cloud supported one. Whether you move only drivers to the cloud today or drivers and quality updates and then later move your other workloads, taking a step-by-step approach might ease the transition.

## Default scan behavior

To help you better understand the scan source policy, see the default scan behavior below and how we can change it:

- If no policies are configured: All of your updates will come from Windows Update.
- If you configure only the WSUS server policy:

  - On Windows 10: All of your updates will come from WSUS;
  - On Windows 11: All of your updates will still come from Windows Update unless you configure the specify scan source policy.

- If you configure a WSUS server and deferral policies: All of your updates will come from Windows Update unless you specify the scan source policy.
- If you configure a WSUS server and the scan source policy: All of your updates will come from the source chosen in the scan source policy.

> [!TIP]
> The only two relevant policies for where your updates come from are the specify scan source policy and whether or not you have configured a WSUS server. This should simplify the configuration options.

## Configure the scan sources

The policy can be configured using the following two methods:

1. Group Policy: Specify source service for specific classes of Windows Updates

- Path: Computer Configuration\Administrative Templates\Windows Components\Windows Update\Manage updates offered from Windows Server Update Service\

   :::image type="content" source="media/specify-update-type-sources.png" alt-text="Screenshot of the Group Policy for specifiying sources for update types":::

1. Configuration Service Provider (CSP) Policies: **SetPolicyDrivenUpdateSourceFor[]**:

> [!NOTE]
> You should configure **all** of these policies if you are using CSPs.

- [Update/SetPolicyDrivenUpdateSourceForDriverUpdates](../../client-management/mdm/policy-csp-update.md#update-setpolicydrivenupdatesourcefordriverupdates)
- [Update/SetPolicyDrivenUpdateSourceForFeatureUpdates](../../client-management/mdm/policy-csp-update.md#update-setpolicydrivenupdatesourceforfeatureupdates)
- [Update/SetPolicyDrivenUpdateSourceForOtherUpdates](../../client-management/mdm/policy-csp-update.md#update-setpolicydrivenupdatesourceforotherupdates)
- [Update/SetPolicyDrivenUpdateSourceForQualityUpdates](../../client-management/mdm/policy-csp-update.md#update-setpolicydrivenupdatesourceforqualityupdates)

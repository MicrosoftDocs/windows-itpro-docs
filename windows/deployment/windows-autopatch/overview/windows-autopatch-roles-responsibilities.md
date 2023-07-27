---
title: Roles and responsibilities
description: This article describes the roles and responsibilities provided by Windows Autopatch and what the customer must do
ms.date: 07/25/2023
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: conceptual
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
ms.reviewer: hathind
ms.collection:
  - highpri
  - tier1
---

# Roles and responsibilities

This article outlines your responsibilities and Windows Autopatch's responsibilities when:

- [Preparing to enroll into the Windows Autopatch service](#prepare)
- [Deploying the service](#deploy)
- [Operating with the service](#operate)

## Prepare

| Task | Your responsibility | Windows Autopatch |
| ----- | :-----: | :-----: |
| Review the [prerequisites](../prepare/windows-autopatch-prerequisites.md) | :heavy_check_mark: | :x: |
| [Review the service data platform and privacy compliance details](../overview/windows-autopatch-privacy.md) | :heavy_check_mark: | :x: |
| Ensure device [prerequisites](../prepare/windows-autopatch-prerequisites.md) are met and in place prior to enrollment | :heavy_check_mark: | :x: |
| Ensure [infrastructure and environment prerequisites](../prepare/windows-autopatch-configure-network.md) are met and in place prior to enrollment | :heavy_check_mark: | :x: |
| Prepare to remove your devices from existing unsupported [Windows update](../references/windows-autopatch-windows-update-unsupported-policies.md) and [Microsoft 365](../references/windows-autopatch-microsoft-365-policies.md) policies | :heavy_check_mark: | :x: |
| [Configure required network endpoints](../prepare/windows-autopatch-configure-network.md#required-microsoft-product-endpoints) | :heavy_check_mark: | :x: |
| [Fix issues identified by the Readiness assessment tool](../prepare/windows-autopatch-fix-issues.md) | :heavy_check_mark: | :x: |
| [Enroll tenant into the Windows Autopatch service](../prepare/windows-autopatch-enroll-tenant.md) | :heavy_check_mark: | :x: |
| Identify stakeholders for deployment communications | :heavy_check_mark: | :x: |

## Deploy

| Task | Your responsibility | Windows Autopatch |
| ----- | :-----: | :-----: |
| [Add and verify admin contacts](../deploy/windows-autopatch-admin-contacts.md) in Microsoft Intune |  :heavy_check_mark: | :x: |
| [Deploy and configure Windows Autopatch service configuration](../references/windows-autopatch-changes-to-tenant.md) | :x: | :heavy_check_mark: |
| Educate users on the Windows Autopatch end user update experience<ul><li>[Windows quality update end user experience](../operate/windows-autopatch-windows-quality-update-end-user-exp.md)</li><li>[Windows feature update end user experience](../operate/windows-autopatch-windows-feature-update-end-user-exp.md)</li><li>[Microsoft 365 Apps for enterprise end user experience](../operate/windows-autopatch-microsoft-365-apps-enterprise.md#end-user-experience)</li><li>[Microsoft Teams end user experience](../operate/windows-autopatch-teams.md#end-user-experience)</li></ul> | :heavy_check_mark: | :x: |
| Remove your devices from existing unsupported [Windows update](../references/windows-autopatch-windows-update-unsupported-policies.md) and [Microsoft 365](../references/windows-autopatch-microsoft-365-policies.md) policies | :heavy_check_mark: | :x: |
| [Turn on or off expedited Windows quality updates](../operate/windows-autopatch-windows-quality-update-overview.md#expedited-releases) | :heavy_check_mark: | :x: |
| [Allow or block Microsoft 365 Apps for enterprise updates](../operate/windows-autopatch-microsoft-365-apps-enterprise.md#allow-or-block-microsoft-365-app-updates) | :heavy_check_mark: | :x: |
| [Manage driver and firmware updates](../operate/windows-autopatch-manage-driver-and-firmware-updates.md) | :heavy_check_mark: | :x: |
| [Customize Windows Update settings](../operate/windows-autopatch-windows-update.md) |  :heavy_check_mark: | :x: |
| [Register devices/add devices to the Windows Autopatch Device Registration group](../deploy/windows-autopatch-register-devices.md) | :heavy_check_mark: | :x: |
| [Run the pre-registration device readiness checks](../deploy/windows-autopatch-register-devices.md#about-the-registered-not-ready-and-not-registered-tabs) | :x: | :heavy_check_mark: |
| [Automatically assign devices to First, Fast & Broad deployment rings at device registration](../operate/windows-autopatch-update-management.md#deployment-ring-calculation-logic) | :x: | :heavy_check_mark: |
| [Manually override device assignments to First, Fast & Broad deployment rings](../operate/windows-autopatch-update-management.md#moving-devices-in-between-deployment-rings) | :heavy_check_mark: | :x: |
| [Remediate devices displayed in the **Not ready** tab](../deploy/windows-autopatch-post-reg-readiness-checks.md#about-the-three-tabs-in-the-devices-blade) | :heavy_check_mark: | :x: |
| [Remediate devices displayed in the **Not registered** tab](../deploy/windows-autopatch-post-reg-readiness-checks.md#about-the-three-tabs-in-the-devices-blade) | :heavy_check_mark: | :x: |
| [Populate the Test deployment ring membership](../operate/windows-autopatch-update-management.md#deployment-ring-calculation-logic) | :heavy_check_mark: | :x: |
| [Ensure devices are only present in one deployment ring](../operate/windows-autopatch-update-management.md#automated-deployment-ring-remediation-functions) | :x: | :heavy_check_mark: |
| Communicate to end-users, help desk and stakeholders | :heavy_check_mark: | :x: |

## Operate

| Task | Your responsibility | Windows Autopatch |
| ----- | :-----: | :-----: |
| [Maintain contacts in the Microsoft Intune admin center](../deploy/windows-autopatch-admin-contacts.md) | :heavy_check_mark: | :x: |
| [Maintain and manage the Windows Autopatch service configuration](../operate/windows-autopatch-maintain-environment.md) | :x: | :heavy_check_mark: |
| [Maintain customer configuration to align with the Windows Autopatch service configuration](../operate/windows-autopatch-maintain-environment.md) |  :heavy_check_mark: | :x: |
| [Run on-going checks to ensure devices are only present in one deployment ring](../operate/windows-autopatch-update-management.md#automated-deployment-ring-remediation-functions) | :x: | :heavy_check_mark: |
| [Maintain the Test deployment ring membership](../operate/windows-autopatch-update-management.md#deployment-ring-calculation-logic) | :heavy_check_mark: | :x: |
| Monitor [Windows update signals](../operate/windows-autopatch-windows-quality-update-signals.md) for safe update release | :x: | :heavy_check_mark: |
| Test specific [business update scenarios](../operate/windows-autopatch-windows-quality-update-signals.md) | :heavy_check_mark: | :x: |
| [Manage driver and firmware updates](../operate/windows-autopatch-manage-driver-and-firmware-updates.md) | :heavy_check_mark: | :x: |
| [Customize Windows Update settings](../operate/windows-autopatch-windows-update.md) |  :heavy_check_mark: | :x: |
| [Define and implement service default release schedule](../operate/windows-autopatch-windows-quality-update-overview.md) | :x: | :heavy_check_mark: |
| Communicate the update [release schedule](../operate/windows-autopatch-windows-quality-update-communications.md) | :x: | :heavy_check_mark: |
| Release updates (as scheduled)<ul><li>[Windows quality updates](../operate/windows-autopatch-windows-quality-update-overview.md#windows-quality-update-releases)</li><li>[Microsoft 365 Apps for enterprise](../operate/windows-autopatch-microsoft-365-apps-enterprise.md#update-release-schedule)</li><li>[Microsoft Edge](../operate/windows-autopatch-edge.md#update-release-schedule)</li><li>[Microsoft Teams](../operate/windows-autopatch-teams.md#update-release-schedule)</li><ul>| :x: | :heavy_check_mark: |
| [Release updates (expedited)](../operate/windows-autopatch-windows-quality-update-overview.md#expedited-releases) | :x: | :heavy_check_mark: |
| [Deploy updates to devices](../operate/windows-autopatch-update-management.md) | :x: | :heavy_check_mark: |
| Monitor [Windows quality](../operate/windows-autopatch-windows-quality-update-overview.md) or [feature updates](../operate/windows-autopatch-windows-feature-update-overview.md) through the release cycle | :x: | :heavy_check_mark: |
| Review [update reports](../operate/windows-autopatch-windows-quality-update-reports-overview.md) | :heavy_check_mark: | :x: |
| [Pause updates (Windows Autopatch initiated)](../operate/windows-autopatch-windows-quality-update-signals.md) | :x: | :heavy_check_mark: |
| [Pause updates (initiated by you)](../operate/windows-autopatch-windows-quality-update-overview.md#pausing-and-resuming-a-release) | :heavy_check_mark: | :x: |
| Run [on-going post-registration device readiness checks](../deploy/windows-autopatch-post-reg-readiness-checks.md) | :x: | :heavy_check_mark: |
| [Remediate devices displayed in the **Not ready** tab](../deploy/windows-autopatch-post-reg-readiness-checks.md#about-the-three-tabs-in-the-devices-blade) | :heavy_check_mark: | :x: |
| Resolve any conflicting and unsupported [Windows update](../references/windows-autopatch-windows-update-unsupported-policies.md) and [Microsoft 365](../references/windows-autopatch-microsoft-365-policies.md) policies | :heavy_check_mark: | :x: |
| [Investigate devices that aren't up to date within the service level objective (Microsoft action)](../operate/windows-autopatch-windows-quality-update-reports-overview.md#not-up-to-date-microsoft-action) | :x: | :heavy_check_mark: |
| [Investigate and remediate devices that are marked as ineligible (Customer action)](../operate/windows-autopatch-windows-quality-update-reports-overview.md#ineligible-devices-customer-action) | :heavy_check_mark: | :x: |
| [Raise, manage and resolve a service incident if an update management area isn't meeting the service level objective](windows-autopatch-overview.md#update-management) | :x: | :heavy_check_mark: |
| [Deregister devices](../operate/windows-autopatch-deregister-devices.md) | :heavy_check_mark: | :x: |
| [Register a device that was previously deregistered (upon customers request)](../operate/windows-autopatch-deregister-devices.md#excluded-devices) | :x: | :heavy_check_mark: |
| [Request unenrollment from Windows Autopatch](../operate/windows-autopatch-unenroll-tenant.md) | :heavy_check_mark: | :x: |
| [Remove Windows Autopatch data from the service and deregister devices](../operate/windows-autopatch-unenroll-tenant.md#microsofts-responsibilities-during-unenrollment) | :x: | :heavy_check_mark: |
| [Maintain update configuration & update devices post unenrollment from Windows Autopatch](../operate/windows-autopatch-unenroll-tenant.md#your-responsibilities-after-unenrolling-your-tenant) | :heavy_check_mark: | :x: |
| Review and respond to Message Center and Service Health Dashboard notifications<ul><li>[Windows quality update communications](../operate/windows-autopatch-windows-quality-update-communications.md)</li><li>[Add and verify admin contacts](../deploy/windows-autopatch-admin-contacts.md)</li></ul> | :heavy_check_mark: | :x: |
| [Highlight Windows Autopatch Tenant management alerts that require customer action](../operate/windows-autopatch-maintain-environment.md#windows-autopatch-tenant-actions) | :x: | :heavy_check_mark: |
| [Review and respond to Windows Autopatch Tenant management alerts](../operate/windows-autopatch-maintain-environment.md#windows-autopatch-tenant-actions) | :heavy_check_mark: | :x: |
| [Raise and respond to support requests](../operate/windows-autopatch-support-request.md) | :heavy_check_mark: | :x: |
| [Manage and respond to support requests](../operate/windows-autopatch-support-request.md#manage-an-active-support-request) | :x: | :heavy_check_mark: |
| Review the [What’s new](../whats-new/windows-autopatch-whats-new-2022.md) section to stay up to date with updated feature and service releases | :heavy_check_mark: | :x: |

---
title: Roles and responsibilities
description: This article describes the roles and responsibilities provided by Windows Autopatch and what the customer must do
ms.date: 12/19/2022
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: conceptual
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
msreviewer: hathind
---

# Roles and responsibilities

This article outlines the your and Windows Autopatch's responsibilities when:

- [Preparing to enroll into Windows Autopatch](#prepare)
- [Deploying the service](#deploy)
- [Operating with the Windows Autopatch service](#operate)

## Prepare

| Task | Your responsibility | Windows Autopatch |
| ----- | :-----: | :-----: |
| Review the [prerequisites](../prepare/windows-autopatch-prerequisites.md) | :heavy_check_mark: | :x: |
| Ensure device [prerequisites](../prepare/windows-autopatch-prerequisites.md) are met and in place prior to enrollment | :heavy_check_mark: | :x: |
| Ensure [infrastructure and environment prerequisites](../prepare/windows-autopatch-configure-network.md) are met and in place prior to enrollment | :heavy_check_mark: | :x: |
| [Configure required network endpoints](../prepare/windows-autopatch-configure-network.md#required-microsoft-product-endpoints) | :heavy_check_mark: | :x: |
| [Fix issues identified by the Readiness assessment tool](../prepare/windows-autopatch-fix-issues.md) | :heavy_check_mark: | :x: |
| [Enroll tenant into the Windows Autopatch service](../prepare/windows-autopatch-enroll-tenant.md) | :heavy_check_mark: | :x: |
| Identify stakeholders for deployment communications | :heavy_check_mark: | :x: |

## Deploy

| Task | Your responsibility | Windows Autopatch |
| ----- | :-----: | :-----: |
| [Add and verify admin contacts](../deploy/windows-autopatch-admin-contacts.md) in Microsoft Endpoint Manager |  :heavy_check_mark: | :x: |
| [Deploy and configure Windows Autopatch service configuration](../references/windows-autopatch-changes-to-tenant.md) | :x: | :heavy_check_mark: |
| [Run the pre-registration device readiness checks](../deploy/windows-autopatch-register-devices.md#about-the-ready-not-ready-and-not-registered-tabs) | :x: | :heavy_check_mark: |
| [Maintain and manage the Windows Autopatch service configuration](../operate/windows-autopatch-maintain-environment.md) | :x: | :heavy_check_mark: |
| [Maintain customer configuration to align with the Windows Autopatch service configuration](../operate/windows-autopatch-maintain-environment.md) | :heavy_check_mark: | :x: |
| Resolve any conflicting and [unsupported Windows update](../references/windows-autopatch-wqu-unsupported-policies.md) and [Microsoft 365 policies](../references/windows-autopatch-microsoft-365-policies.md)  |  :heavy_check_mark: | :x: |
| [Register devices/add devices to the Windows Autopatch Device Registration group](../deploy/windows-autopatch-register-devices.md#steps-to-register-devices) | :heavy_check_mark: | :x: |
| [Automatically assign devices to First, Fast & Broad rings at device registration](../operate/windows-autopatch-update-management.md#deployment-ring-calculation-logic) | :x: | :heavy_check_mark: |
| [Manually override device assignments to First, Fast & Broad rings](../operate/windows-autopatch-update-management.md#moving-devices-in-between-deployment-rings) | :heavy_check_mark: | :x: |
| [Run on-going post-registration device readiness checks](../deploy/windows-autopatch-post-reg-readiness-checks.md) | :x: | :heavy_check_mark: |
| [Remediate devices displayed in the **Not ready** tab](../deploy/windows-autopatch-post-reg-readiness-checks.md#about-the-three-tabs-in-the-devices-blade) | :heavy_check_mark: | :x: |
| [Remediate devices displayed in the **Not registered** tab](../deploy/windows-autopatch-post-reg-readiness-checks.md#about-the-three-tabs-in-the-devices-blade) | :heavy_check_mark: | :x: |
| [Populate Test ring membership](../operate/windows-autopatch-update-management.md#deployment-ring-calculation-logic) | :heavy_check_mark: | :x: |
| [Ensure devices are only present in one deployment ring](../operate/windows-autopatch-update-management.md#automated-deployment-ring-remediation-functions) | :x: | :heavy_check_mark: |
| Communicate to end-users, help desk and stakeholders | :heavy_check_mark: | :x: |

## Operate

| Task | Your responsibility | Windows Autopatch |
| ----- | :-----: | :-----: |
| [Maintain contacts in the Microsoft Endpoint Manager admin center](../deploy/windows-autopatch-admin-contacts.md) | :heavy_check_mark: | :x: |
| [Maintain Test group membership](../operate/windows-autopatch-update-management.md#deployment-ring-calculation-logic) | :heavy_check_mark: | :x: |
| [Evaluate updates](../operate/windows-autopatch-wqu-signals.md) | :x: | :heavy_check_mark: |
| [Define and implement release schedule](../operate/windows-autopatch-wqu-overview.md) | :x: | :heavy_check_mark: |
| Release updates (as scheduled)<ul><li>[Windows quality updates](../operate/windows-autopatch-wqu-overview.md#windows-quality-update-releases)</li><li>[Microsoft 365 Apps for enterprise](../operate/windows-autopatch-microsoft-365-apps-enterprise.md#update-release-schedule)</li><li>[Microsoft Edge](../operate/windows-autopatch-edge.md#update-release-schedule)</li><li>[Microsoft Teams](../operate/windows-autopatch-teams.md#update-release-schedule)</li><ul>| :x: | :heavy_check_mark: |
| [Release updates (expedited)](../operate/windows-autopatch-wqu-overview.md#expedited-releases) | :x: | :heavy_check_mark: |
| [Deploy updates to devices](../operate/windows-autopatch-update-management.md) | :x: | :heavy_check_mark: |
| Monitor [Windows quality](../operate/windows-autopatch-wqu-overview.md) or [feature updates](../operate/windows-autopatch-fu-overview.md) through the release cycle | :x: | :heavy_check_mark: |
| Review [update reports](../operate/windows-autopatch-wqu-reports-overview.md) | :heavy_check_mark: | :x: |
| [Pause updates (Windows Autopatch initiated)](../operate/windows-autopatch-wqu-signals.md) | :x: | :heavy_check_mark: |
| [Pause updates (Customer initiated)](../operate/windows-autopatch-wqu-overview.md#pausing-and-resuming-a-release) | :heavy_check_mark: | :x: |
| Educate users on the Windows Autopatch end user update experience<ul><li>[Windows quality update end user experience](../operate/windows-autopatch-wqu-end-user-exp.md)</li><li>[Windows feature update end user experience](../operate/windows-autopatch-fu-end-user-exp.md)</li><li>[Microsoft 365 Apps for enterprise end user experience](../operate/windows-autopatch-microsoft-365-apps-enterprise.md#end-user-experience)</li><li>[Microsoft Teams end user experience](../operate/windows-autopatch-teams.md#end-user-experience)</li></ul> | :heavy_check_mark: | :x: |
| [Device not up to date (Microsoft action)](../operate/windows-autopatch-wqu-reports-overview.md#not-up-to-date-microsoft-action) | :x: | :heavy_check_mark: |
| [Ineligible Devices (Customer action)](../operate/windows-autopatch-wqu-reports-overview.md#ineligible-devices-customer-action) | :heavy_check_mark: | :x: |
| [Raise, manage and resolve an incident if devices aren't meeting the Service Level Objective](windows-autopatch-overview.md#update-management) | :x: | :heavy_check_mark: |
| [Deregister devices](../operate/windows-autopatch-deregister-devices.md) | :heavy_check_mark: | :x: |
| [Register a device that was previously deregistered (upon customers request)](../operate/windows-autopatch-deregister-devices.md#excluded-devices) | :x: | :heavy_check_mark: |
| [Request unenrollment from Windows Autopatch](../operate/windows-autopatch-unenroll-tenant.md) | :heavy_check_mark: | :x: |
| [Remove Windows Autopatch data from the service and deregister devices](../operate/windows-autopatch-unenroll-tenant.md#microsofts-responsibilities-during-unenrollment) | :x: | :heavy_check_mark: |
| [Maintain update configuration & update devices post unenrollment from Windows Autopatch](../operate/windows-autopatch-unenroll-tenant.md#your-responsibilities-after-unenrolling-your-tenant) | :heavy_check_mark: | :x: |
| Review and respond to Message Center and Service Health Dashboard notifications<ul><li>[Windows quality and feature update communications](../operate/windows-autopatch-wqu-communications.md)</li><li>[Add and verify admin contacts](../deploy/windows-autopatch-admin-contacts.md)</li></ul> | :heavy_check_mark: | :x: |
| [Highlight Autopatch Tenant management alerts that require customer action](../operate/windows-autopatch-maintain-environment.md#windows-autopatch-tenant-actions) | :x: | :heavy_check_mark: |
| [Review and respond to Autopatch Tenant management alerts](../operate/windows-autopatch-maintain-environment.md#windows-autopatch-tenant-actions) | :heavy_check_mark: | :x: |
| [Raise and respond to support requests](../operate/windows-autopatch-support-request.md) | :heavy_check_mark: | :x: |
| [Manage and respond to support requests](../operate/windows-autopatch-support-request.md#manage-an-active-support-request) | :x: | :heavy_check_mark: |

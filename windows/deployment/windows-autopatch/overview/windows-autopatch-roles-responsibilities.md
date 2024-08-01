---
title: Roles and responsibilities
description: This article describes the roles and responsibilities provided by Windows Autopatch and what the customer must do
ms.date: 07/08/2024
ms.service: windows-client
ms.subservice: itpro-updates
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

# Roles and responsibilities

This article outlines your responsibilities and Windows Autopatch's responsibilities when:

- [Preparing to enroll into the Windows Autopatch service](#prepare)
- [Deploying the service](#deploy)
- [Operating with the service](#operate)

## Prepare

| Task | Your responsibility | Windows Autopatch |
| ----- | :-----: | :-----: |
| Review the [prerequisites](../prepare/windows-autopatch-prerequisites.md) | :heavy_check_mark: | :x: |
| Review the [FAQ](../overview/windows-autopatch-faq.yml) | :heavy_check_mark: | :x: |
| [Review the service data platform and privacy compliance details](../overview/windows-autopatch-privacy.md) | :heavy_check_mark: | :x: |
| Consult the [Deployment guide](../overview/windows-autopatch-deployment-guide.md) | :heavy_check_mark: | :x: |
| Ensure device [prerequisites](../prepare/windows-autopatch-prerequisites.md) are met and in place prior to enrollment | :heavy_check_mark: | :x: |
| Ensure [infrastructure and environment prerequisites](../prepare/windows-autopatch-configure-network.md) are met and in place prior to enrollment | :heavy_check_mark: | :x: |
| Prepare to remove your devices from existing unsupported [Windows update](../references/windows-autopatch-windows-update-unsupported-policies.md) and [Microsoft 365](../references/windows-autopatch-microsoft-365-policies.md) policies | :heavy_check_mark: | :x: |
| [Configure required network endpoints](../prepare/windows-autopatch-configure-network.md#required-microsoft-product-endpoints) | :heavy_check_mark: | :x: |
| [Enroll tenant into the Windows Autopatch service](../prepare/windows-autopatch-enroll-tenant.md)<ul><li>[Fix issues identified by the Readiness assessment tool](../prepare/windows-autopatch-fix-issues.md)</li><li>If required, [submit a tenant enrollment support request](../prepare/windows-autopatch-enrollment-support-request.md)</li></ul> | :heavy_check_mark: | :x: |
| [Manage and respond to tenant enrollment support requests](../prepare/windows-autopatch-enrollment-support-request.md) | :x: | :heavy_check_mark: |
| Identify stakeholders for deployment communications | :heavy_check_mark: | :x: |

For more information and assistance with preparing for your Windows Autopatch deployment journey, see [Need additional guidance](../overview/windows-autopatch-deployment-guide.md#need-additional-guidance).

## Deploy

| Task | Your responsibility | Windows Autopatch |
| ----- | :-----: | :-----: |
| [Add and verify admin contacts](../deploy/windows-autopatch-admin-contacts.md) in Microsoft Intune |  :heavy_check_mark: | :x: |
| [Deploy and configure Windows Autopatch service configuration](../references/windows-autopatch-changes-to-tenant.md) | :x: | :heavy_check_mark: |
| Educate users on the Windows Autopatch end user update experience<ul><li>[Windows quality update end user experience](../operate/windows-autopatch-groups-windows-quality-update-end-user-exp.md)</li><li>[Windows feature update end user experience](../operate/windows-autopatch-groups-manage-windows-feature-update-release.md)</li><li>[Microsoft 365 Apps for enterprise end user experience](../operate/windows-autopatch-microsoft-365-apps-enterprise.md#end-user-experience)</li><li>[Microsoft Edge end user experience](../operate/windows-autopatch-edge.md)</li><li>[Microsoft Teams end user experience](../operate/windows-autopatch-teams.md#end-user-experience)</li></ul> | :heavy_check_mark: | :x: |
| Review network optimization<ul><li>[Prepare your network](../prepare/windows-autopatch-configure-network.md)</li><li>[Delivery Optimization](../prepare/windows-autopatch-configure-network.md#delivery-optimization) | :heavy_check_mark: | :x: |
| Review existing configurations<ul><li>Remove your devices from existing unsupported [Windows Update](../references/windows-autopatch-windows-update-unsupported-policies.md) and [Microsoft 365](../references/windows-autopatch-microsoft-365-policies.md) policies</li><li>Consult [General considerations](../overview/windows-autopatch-deployment-guide.md#general-considerations)</li></ul>|  :heavy_check_mark: | :x: |
| Confirm your update service needs and configure your workloads<ul><li>[Turn on or off expedited Windows quality updates](../operate/windows-autopatch-groups-windows-quality-update-overview.md#expedited-releases)</li><li>[Allow or block Microsoft 365 Apps for enterprise updates](../operate/windows-autopatch-microsoft-365-apps-enterprise.md#allow-or-block-microsoft-365-app-updates)</li><li>[Manage driver and firmware updates](../operate/windows-autopatch-manage-driver-and-firmware-updates.md)</li><li>[Customize Windows Update settings](../operate/windows-autopatch-windows-update.md)</li><li>Decide your [Windows feature update versions(s)](../operate/windows-autopatch-groups-windows-feature-update-overview.md)</li></ul>| :heavy_check_mark: | :x: |
| [Consider your Autopatch groups distribution](../deploy/windows-autopatch-groups-overview.md)<ul><li>[Default Autopatch group](../deploy/windows-autopatch-groups-overview.md#about-the-default-autopatch-group)</li><li>[Custom Autopatch group](../deploy/windows-autopatch-groups-overview.md#about-custom-autopatch-groups)</li></ul> | :heavy_check_mark: | :x: |
| [Register devices](../deploy/windows-autopatch-register-devices.md)<ul><li>[Review your device registration options](../deploy/windows-autopatch-device-registration-overview.md)</li><li>[Register your first devices](../deploy/windows-autopatch-register-devices.md) | :heavy_check_mark: | :x: |
| [Run the pre-registration device readiness checks](../deploy/windows-autopatch-register-devices.md#about-the-registered-not-ready-and-not-registered-tabs) | :x: | :heavy_check_mark: |
| Automatically assign devices to deployment rings at device registration<ul><li>[Default Windows Autopatch group deployment rings](../deploy/windows-autopatch-groups-overview.md#about-the-default-autopatch-group)</li><li>[Custom Windows Autopatch group deployment rings](../deploy/windows-autopatch-groups-overview.md#about-custom-autopatch-groups)</li></ul>| :x: | :heavy_check_mark: |
| Remediate registration issues<ul><li>[For devices displayed in the **Not ready** tab](../deploy/windows-autopatch-post-reg-readiness-checks.md#about-the-three-tabs-in-the-devices-blade)</li><li>[For devices displayed in the **Not registered** tab](../deploy/windows-autopatch-post-reg-readiness-checks.md#about-the-three-tabs-in-the-devices-blade)</li><li>[For devices with conflicting configurations](../references/windows-autopatch-conflicting-configurations.md)</li></ul> | :heavy_check_mark: | :x: |
| Populate the Test and Last deployment ring membership<ul><li>[Default Windows Autopatch group deployment rings](../deploy/windows-autopatch-groups-overview.md#about-the-default-autopatch-group)</li><li>[Custom Windows Autopatch group deployment rings](../deploy/windows-autopatch-groups-overview.md#about-custom-autopatch-groups)</li></ul> | :heavy_check_mark: | :x: |
| [Manually override device assignments to deployment rings](../operate/windows-autopatch-update-management.md#moving-devices-in-between-deployment-rings) | :heavy_check_mark: | :x: |
| Review device conflict scenarios<ul><li>[Device conflict in deployment rings within an Autopatch group](../deploy/windows-autopatch-groups-manage-autopatch-groups.md#device-conflict-in-deployment-rings-within-an-autopatch-group)</li><li>[Device conflict across different Autopatch groups](../deploy/windows-autopatch-groups-manage-autopatch-groups.md#device-conflict-across-different-autopatch-groups)</li></ul> | :heavy_check_mark: | :x: |
| Communicate to end-users, help desk and stakeholders | :heavy_check_mark: | :x: |

## Operate

| Task | Your responsibility | Windows Autopatch |
| ----- | :-----: | :-----: |
| [Maintain contacts in the Microsoft Intune admin center](../deploy/windows-autopatch-admin-contacts.md) | :heavy_check_mark: | :x: |
| [Maintain and manage the Windows Autopatch service configuration](../operate/windows-autopatch-maintain-environment.md) | :x: | :heavy_check_mark: |
| [Maintain customer configuration to align with the Windows Autopatch service configuration](../operate/windows-autopatch-maintain-environment.md) | :heavy_check_mark: | :x: |
| Resolve service remediated device conflict scenarios<ul><li>[Device conflict in deployment rings within an Autopatch group](../deploy/windows-autopatch-groups-manage-autopatch-groups.md#device-conflict-in-deployment-rings-within-an-autopatch-group)</li><li>[Default to Custom Autopatch group device conflict](../deploy/windows-autopatch-groups-manage-autopatch-groups.md#default-to-custom-autopatch-group-device-conflict)</li></ul> | :x: | :heavy_check_mark: |
| Resolve remediated device conflict scenarios<ul><li>[Custom to Custom Autopatch group device conflict](../deploy/windows-autopatch-groups-manage-autopatch-groups.md#custom-to-custom-autopatch-group-device-conflict)</li><li>[Device conflict prior to device registration](../deploy/windows-autopatch-groups-manage-autopatch-groups.md#device-conflict-prior-to-device-registration)</li></ul> |  :heavy_check_mark: | :x: |
| Maintain the Test and Last deployment ring membership<ul><li>[Default Windows Autopatch deployment rings](../deploy/windows-autopatch-groups-overview.md#about-the-default-autopatch-group)</li><li>[Custom Windows Autopatch group deployment rings](../deploy/windows-autopatch-groups-overview.md#about-custom-autopatch-groups)</li></ul> | :heavy_check_mark: | :x: |
| Monitor [Windows update signals](../operate/windows-autopatch-groups-windows-quality-update-signals.md) for safe update release<ul><li>[Pre-release signals](../operate/windows-autopatch-groups-windows-quality-update-signals.md#pre-release-signals)</li><li>[Early signals](../operate/windows-autopatch-groups-windows-quality-update-signals.md#early-signals)</li><li>[Device reliability signals](../operate/windows-autopatch-groups-windows-quality-update-signals.md#device-reliability-signals)</li></ul> | :x: | :heavy_check_mark: |
| Test specific [business update scenarios](../operate/windows-autopatch-groups-windows-quality-update-signals.md) | :heavy_check_mark: | :x: |
| [Define and implement service default release schedule](../operate/windows-autopatch-groups-windows-quality-update-overview.md) | :x: | :heavy_check_mark: |
| Maintain your workload configuration and custom release schedule<ul><li>[Manage driver and firmware updates](../operate/windows-autopatch-manage-driver-and-firmware-updates.md)</li><li>[Customize Windows Update settings](../operate/windows-autopatch-groups-windows-update.md)</li><li>[Decide your Windows feature update version(s)](../operate/windows-autopatch-groups-windows-feature-update-overview.md)</li></ul> | :heavy_check_mark: | :x: |
| Communicate the update [release schedule](../operate/windows-autopatch-windows-quality-update-communications.md) to IT admins | :x: | :heavy_check_mark: |
| Release updates (as scheduled)<ul><li>[Windows quality updates](../operate/windows-autopatch-groups-windows-quality-update-overview.md#release-management)</li><li>[Windows feature updates](../operate/windows-autopatch-groups-windows-feature-update-overview.md)</li><li>[Microsoft 365 Apps for enterprise](../operate/windows-autopatch-microsoft-365-apps-enterprise.md#update-release-schedule)</li><li>[Microsoft Edge](../operate/windows-autopatch-edge.md#update-release-schedule)</li><li>[Microsoft Teams](../operate/windows-autopatch-teams.md#update-release-schedule)</li><ul>| :x: | :heavy_check_mark: |
| [Release updates (expedited)](../operate/windows-autopatch-groups-windows-quality-update-overview.md#expedited-releases) | :x: | :heavy_check_mark: |
| [Release updates (OOB)](../operate/windows-autopatch-groups-windows-quality-update-overview.md#out-of-band-releases) | :x: | :heavy_check_mark: |
| [Deploy updates to devices](../operate/windows-autopatch-groups-update-management.md) | :x: | :heavy_check_mark: |
| Monitor [Windows quality](../operate/windows-autopatch-groups-windows-quality-update-overview.md#release-management) or [feature updates](../operate/windows-autopatch-groups-windows-feature-update-overview.md) through the release cycle | :x: | :heavy_check_mark: |
| Review [release announcements](../operate/windows-autopatch-groups-windows-quality-update-overview.md#) | :heavy_check_mark: | :x: |
| Review deployment progress using Windows Autopatch reports<ul><li>[Windows quality update reports](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#windows-quality-update-reports)</li><li>[Windows feature update reports](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#windows-feature-update-reports)</li></ul> | :heavy_check_mark: | :x: |
| [Pause updates (Windows Autopatch initiated)](../operate/windows-autopatch-groups-windows-quality-update-signals.md) | :x: | :heavy_check_mark: |
| [Pause updates (initiated by you)](../operate/windows-autopatch-groups-windows-quality-update-overview.md#pause-and-resume-a-release) | :heavy_check_mark: | :x: |
| Run [on-going post-registration device readiness checks](../deploy/windows-autopatch-post-reg-readiness-checks.md) | :x: | :heavy_check_mark: |
| Maintain existing configurations<ul><li>Remove your devices from existing and unsupported [Windows update](../references/windows-autopatch-windows-update-unsupported-policies.md) and [Microsoft 365](../references/windows-autopatch-microsoft-365-policies.md) policies</li><li>Consult [General considerations](../overview/windows-autopatch-deployment-guide.md#general-considerations)</ul> | :heavy_check_mark: | :x: |
| Understand the health of [Up to date](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#up-to-date-devices) devices and investigate devices that are<ul><li>[Not up to date](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#not-up-to-date-devices)</li><li>[Not ready](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#not-ready-devices)</li><li>have [Device alerts](../operate/windows-autopatch-device-alerts.md)</li><li>have [conflicting configurations](../references/windows-autopatch-conflicting-configurations.md)</li></ul>
| [Raise, manage and resolve a service incident if an update management area isn't meeting the service level objective](windows-autopatch-overview.md#update-management) | :x: | :heavy_check_mark: |
| [Exclude a device](../operate/windows-autopatch-exclude-device.md) | :heavy_check_mark: | :x: |
| [Register a device that was previously excluded](../operate/windows-autopatch-exclude-device.md#restore-a-device-or-multiple-devices-previously-excluded) | :heavy_check_mark: | :x: |
| [Request unenrollment from Windows Autopatch](../operate/windows-autopatch-unenroll-tenant.md) | :heavy_check_mark: | :x: |
| [Remove Windows Autopatch data from the service and exclude devices](../operate/windows-autopatch-unenroll-tenant.md#microsofts-responsibilities-during-unenrollment) | :x: | :heavy_check_mark: |
| [Maintain update configuration & update devices post unenrollment from Windows Autopatch](../operate/windows-autopatch-unenroll-tenant.md#your-responsibilities-after-unenrolling-your-tenant) | :heavy_check_mark: | :x: |
| Review and respond to Message Center and Service Health Dashboard notifications<ul><li>[Windows quality update communications](../operate/windows-autopatch-groups-windows-quality-update-communications.md)</li><li>[Add and verify admin contacts](../deploy/windows-autopatch-admin-contacts.md)</li></ul> | :heavy_check_mark: | :x: |
| Highlight Windows Autopatch management alerts that require customer action<ul><li>[Tenant management alerts](../operate/windows-autopatch-maintain-environment.md#windows-autopatch-tenant-actions)</li><li>[Policy health and remediation](../operate/windows-autopatch-policy-health-and-remediation.md)</li></ul> | :x: | :heavy_check_mark: |
| Review and respond to Windows Autopatch management alerts<ul><li>[Tenant management alerts](../operate/windows-autopatch-maintain-environment.md#windows-autopatch-tenant-actions)</li><li>[Policy health and remediation](../operate/windows-autopatch-policy-health-and-remediation.md)</li></ul> | :heavy_check_mark: | :x: |
| [Raise and respond to support requests](../operate/windows-autopatch-support-request.md) | :heavy_check_mark: | :x: |
| [Manage and respond to support requests](../operate/windows-autopatch-support-request.md#manage-an-active-support-request) | :x: | :heavy_check_mark: |
| Review the [What's new](../whats-new/windows-autopatch-whats-new-2022.md) section to stay up to date with updated feature and service releases | :heavy_check_mark: | :x: |

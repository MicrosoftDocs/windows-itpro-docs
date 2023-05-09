---
title: Changes to Windows diagnostic data collection
description: This article provides information on changes to Windows diagnostic data collection Windows 10 and Windows 11.
ms.prod: windows-client
ms.technology: itpro-privacy
ms.localizationpriority: high
author: DHB-MSFT
ms.author: danbrown
manager: dougeby
ms.date: 06/04/2020
ms.topic: conceptual
---

# Changes to Windows diagnostic data collection

**Applies to**
- Windows 11, version 21H2 and later
- Windows 10, version 1903 and later
- Windows Server 2022

Microsoft is committed to providing you with effective controls over your data and ongoing transparency into our data handling practices. As part of this effort, we've moved our major products and services to a model where data sent back to Microsoft from customer devices will be classified as either **Required** or **Optional**. We believe this change will provide our customers with a simpler experience – information should be easier to find, easier to understand, and easier to act upon through the tools we provide.

This article is meant for IT administrators and explains the changes Windows is making to align to the new data collection taxonomy. These changes are focused in two areas:

- [Taxonomy changes](#taxonomy-changes)
- [Behavioral changes](#behavioral-changes)

## Summary of changes

In Windows 10, version 1903 and later, you'll see taxonomy updates in both the **Out-of-box-experience** (OOBE) and the **Diagnostics & feedback** privacy settings page. These changes are explained in the section named **Taxonomy** changes.

Additionally, starting in Windows 11 and Windows Server 2022, we’re simplifying your diagnostic data controls by moving from four diagnostic data controls to three: **Diagnostic data off**, **Required**, and **Optional**. We’re also clarifying the Security diagnostic data level to reflect its behavior more accurately by changing it to **Diagnostic data off**. All these changes are explained in the section named **Behavioral changes**.

Prior to December 13 2022, the default setting for Windows Server 2022 Datacenter: Azure Edition images deployed using Azure Marketplace was **Diagnostic data off**. Beginning December 13 2022, all newly deployed images are set to **Required diagnostic data** to align with all other Windows releases. All other Windows releases and existing installations remain unchanged.

## Taxonomy changes

Starting in Windows 10, version 1903 and later, both the **Out-of-Box-Experience** (OOBE) and the **Diagnostics & feedback** privacy setting pages will reflect the following changes:

- The **Basic** diagnostic data level is being labeled as **Required**.
- The **Full** diagnostic data level is being labeled as **Optional**.

> [!IMPORTANT]
> No action is required for the taxonomy changes, and your existing settings will be maintained as part of this update.

## Behavioral changes

Starting in Windows 11 and Windows Server 2022, we’re simplifying the Windows diagnostic data controls by moving from four diagnostic data settings to three: **Diagnostic data off**, **Required**, and **Optional**. If your devices are set to **Enhanced** when they're upgraded to a supported version of the operating system, the device settings will be evaluated to be at the more privacy-preserving setting of **Required diagnostic data**, which means that analytic services that use enhanced data collection may not work properly. For a list of services, see [Services that rely on Enhanced diagnostic data](#services-that-rely-on-enhanced-diagnostic-data). Administrators should read through the details and determine whether to apply these new policies to restore the same collection settings as they had before this change.

Additionally, you'll see the following policy changes in Windows Server 2022, Windows 11, and Windows Holographic, version 21H1 (HoloLens 2):

| Policy type | Current policy | Renamed policy |
| --- | --- | --- |
| Group Policy | Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > **Allow Telemetry**<ul><li>**0 - Security** <br /></li><li>**1 - Basic**<br /></li><li>**2 - Enhanced**<br /></li><li>**3 - Full**<br /></li></ul>| Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > **Allow Diagnostic Data**<ul><li>**Diagnostic data off (not recommended)** <br /></li><li>**Send required diagnostic data**<br /></li><li>**Send optional diagnostic data**<br /></li></ul> |
| Group Policy |Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > **Configure telemetry opt-in settings user interface**| Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > **Configure diagnostic data opt-in settings user interface** |
| Group Policy |Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > **Configure telemetry opt-in change notifications**| Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > **Configure diagnostic data opt-in change notifications** |

A final set of changes includes two new policies that can help you fine-tune diagnostic data collection within your organization. These policies let you limit the amount of optional diagnostic data that’s sent back to Microsoft.

- The **Limit dump collection** policy is a new policy that can be used to limit the types of [crash dumps](/windows/win32/dxtecharts/crash-dump-analysis) that can be sent back to Microsoft. If this policy is enabled, Windows Error Reporting will send only kernel mini dumps and user mode triage dumps.
  - Group Policy: Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > **Limit Dump Collection**
  - MDM policy: System/LimitDumpCollection 
- The **Limit diagnostic log collection** policy is another new policy that limits the number of diagnostic logs that are sent back to Microsoft. If this policy is enabled, diagnostic logs aren't sent back to Microsoft.
  - Group Policy: Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > **Limit Diagnostic Log Collection**
  - MDM policy: System/LimitDiagnosticLogCollection

For more info, see [Configure Windows diagnostic data in your organization](configure-windows-diagnostic-data-in-your-organization.md).

## Services that rely on Enhanced diagnostic data

Customers who use services that depend on Windows diagnostic data, such as [Microsoft Managed Desktop](/microsoft-365/managed-desktop/service-description/device-policies#windows-diagnostic-data), may be impacted by the behavioral changes when they're released. These services will be updated to address these changes and guidance will be published on how to configure them properly.

## Significant changes coming to the Windows diagnostic data processor configuration

Currently, to enroll devices in the [Window diagnostic data processor configuration](configure-windows-diagnostic-data-in-your-organization.md#enable-windows-diagnostic-data-processor-configuration) option, IT admins can use policies, such as the “Allow commercial data pipeline” policy, at the individual device level.

To enable efficiencies and help us implement our plan to [store and process EU Data for European enterprise customers in the EU](https://blogs.microsoft.com/eupolicy/2021/05/06/eu-data-boundary/), we'll be introducing the following significant change for enterprise Windows devices that have diagnostic data turned on.

***We’ll stop using policies, such as the “Allow commercial data pipeline” policy, to configure the processor option. Instead, we’ll be introducing an organization-wide configuration based on Azure Active Directory (Azure AD) to determine Microsoft’s role in data processing.***

We’re making this change to help ensure the diagnostic data for all devices in an organization is processed in a consistent way, and in the same geographic region.

### Devices in Azure AD tenants with a billing address in the European Union (EU) or European Free Trade Association (EFTA)

For Windows devices with diagnostic data turned on and that are joined to an [Azure AD tenant with billing address](/azure/cost-management-billing/manage/change-azure-account-profile) in the EU or EFTA, the Windows diagnostic data for that device will be automatically configured for the processor option. The Windows diagnostic data for those devices will be processed in Europe.

From a compliance standpoint, this change means that Microsoft will be the processor and the organization will be the controller of the Windows diagnostic data. IT admins for those organizations will become responsible for responding to their users’ [data subject requests](/compliance/regulatory/gdpr-dsr-windows).

### Devices in Azure AD tenants with a billing address outside of the EU and EFTA

For Windows devices with diagnostic data turned on and that are joined to an [Azure AD tenant with billing address](/azure/cost-management-billing/manage/change-azure-account-profile) outside of the EU and EFTA, to enable the processor configuration option, the organization must sign up for any of the following enterprise services, which rely on diagnostic data:

- [Update Compliance](/windows/deployment/update/update-compliance-monitor)
- [Windows Update for Business reports](/windows/deployment/update/wufb-reports-overview)
- [Windows Update for Business deployment service](/windows/deployment/update/deployment-service-overview)
- [Microsoft Managed Desktop](/managed-desktop/intro/)
- [Endpoint analytics (in Microsoft Intune)](/mem/analytics/overview)

*(Additional licensing requirements may apply to use these services.)*

If you don’t sign up for any of these enterprise services, Microsoft will act as controller for the diagnostic data.

> [!NOTE]
> In all cases, enrollment in the Windows diagnostic data processor configuration requires a device to be joined to an Azure AD tenant. If a device isn't properly enrolled, Microsoft will act as the controller for Windows diagnostic data in accordance with the [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement) and the [Data Protection Addendum](https://www.microsoft.com/licensing/docs/view/Microsoft-Products-and-Services-Data-Protection-Addendum-DPA) terms won't apply.

### Rollout plan for this change

This change will rollout in phases, starting  with Windows devices enrolled in the [Dev Channel](/windows-insider/flighting#dev-channel) of the Windows Insider program. Starting in build 25169, devices in the Dev Channel that are joined to an Azure AD tenant with a billing address in the EU or EFTA will be automatically enabled for the processor configuration option.

During this initial rollout, the following conditions apply to devices in the Dev Channel that are joined to an Azure AD tenant with a billing address outside of the EU or EFTA:

- Devices can't be enabled for the Windows diagnostic data processor configuration at this time.
- The processor configuration will be disabled in any devices that were previously enabled.
- Microsoft will act as the controller for Windows diagnostic data in accordance with the [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement) and the [Data Protection Addendum](https://www.microsoft.com/licensing/docs/view/Microsoft-Products-and-Services-Data-Protection-Addendum-DPA) terms won't apply.

It's recommended Insiders on these devices pause flighting if these changes aren't acceptable.

For Windows devices in the Dev Channel that aren't joined to an Azure AD tenant, Microsoft will act as the controller for Windows diagnostic data in accordance with the [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement) and the [Data Protection Addendum](https://www.microsoft.com/licensing/docs/view/Microsoft-Products-and-Services-Data-Protection-Addendum-DPA) terms won't apply.

For other Windows devices (not in the Dev Channel), the change will rollout with the January 2023 release preview cumulative update for Windows 10 versions 20H2, 21H2 and 22H2, and Windows 11 versions 21H2 and 22H2.

To prepare for this change, ensure that you meet the [prerequisites](configure-windows-diagnostic-data-in-your-organization.md#prerequisites) for Windows diagnostic data processor configuration, join your devices to Azure AD (can be a hybrid Azure AD join), and keep your devices secure and up to date with quality updates. If you're outside of the EU or EFTA, sign up for any of the enterprise services.

As part of this change, the following policies will no longer be supported to configure the processor option:
 - Allow commercial data pipeline
 - Allow Desktop Analytics Processing
 - Allow Update Compliance Processing
 - Allow WUfB Cloud Processing
 - Allow Microsoft Managed Desktop Processing
 - Configure the Commercial ID

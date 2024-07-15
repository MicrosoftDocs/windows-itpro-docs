---
title: Changes to Windows diagnostic data collection
description: This article provides information on changes to Windows diagnostic data collection Windows 10 and Windows 11.
ms.service: windows-client
ms.subservice: itpro-privacy
ms.localizationpriority: high
author: DHB-MSFT
ms.author: danbrown
manager: laurawi
ms.date: 06/27/2024
ms.topic: conceptual
ms.collection: privacy-windows
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

For more information, see [Configure Windows diagnostic data in your organization](configure-windows-diagnostic-data-in-your-organization.md).

## Services that rely on Enhanced diagnostic data

Customers who use services that depend on Windows diagnostic data, such as [Microsoft Managed Desktop](/managed-desktop/operate/device-policies#windows-diagnostic-data), may be impacted by the behavioral changes when they're released. These services will be updated to address these changes and guidance will be published on how to configure them properly.

## Significant change to the Windows diagnostic data processor configuration

> [!NOTE]
> The information in this section applies to the following versions of Windows:
> - Windows 10, versions 20H2, 21H2, 22H2, and newer
> - Windows 11, versions 21H2, 22H2, 23H2, and newer

Previously, IT admins could use policies (for example, the "Allow commercial data pipeline" policy) at the individual device level to enroll devices in the Windows diagnostic data processor configuration.

Starting with the January 2023 preview cumulative update, how you enable the processor configuration option depends on the billing address of the Azure AD tenant to which your devices are joined.

We made this change to help ensure the diagnostic data for all devices in an organization is processed in a consistent way and in the same geographic region, and to help us implement our plan to [store and process EU Data for European enterprise customers in the EU](/privacy/eudb/eu-data-boundary-learn).

For more information, see [Enable Windows diagnostic data processor configuration](configure-windows-diagnostic-data-in-your-organization.md#enable-windows-diagnostic-data-processor-configuration).

## Data collection changes

> [!NOTE]
> The information in this section applies to the following versions of Windows:
> - Windows 10, version 22H2 and newer
> - Windows 11, version 23H2 and newer

As of March 6, 2024, Microsoft Edge diagnostic data is collected separately from Windows diagnostic data on Windows 10 and Windows 11 devices in the European Economic Area. The collection of Microsoft Edge diagnostic data is subject to its own settings. For more information related to this change, see [Microsoft Edge, browsing data, and privacy](https://support.microsoft.com/windows/bb8174ba-9d73-dcf2-9b4a-c582b4e640dd).
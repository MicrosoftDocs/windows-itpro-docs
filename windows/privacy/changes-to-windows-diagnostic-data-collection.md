---
title: Changes to Windows diagnostic data collection
description: This article provides information on changes to Windows diagnostic data collection Windows 10.
keywords: privacy, diagnostic data
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: high
audience: ITPro
ms.author: siosulli
author: dansimplfin
manager: dansimp
ms.collection: M365-security-compliance
ms.topic: article
ms.date: 07/21/2020
---

# Changes to Windows diagnostic data collection

**Applies to**
- Windows 10, version 1903 and newer
- The next version of Windows Server

Microsoft is committed to providing you with effective controls over your data and ongoing transparency into our data handling practices. As part of this effort, we are moving our major products and services to a model where data sent back to Microsoft from customer devices will be classified as either **Required** or **Optional**. We believe this will provide our customers with a simpler experience – information should be easier to find, easier to understand, and easier to act upon through the tools we provide.

This topic is meant for IT administrators and explains the changes Windows is making to align to the new data collection taxonomy. These changes are focused in two areas:

- [Taxonomy changes](#taxonomy-changes)
- [Behavioral changes](#behaviorial-changes)

> [!NOTE]
> You can test the behavioral changes now in Windows 10 Insider Preview build 19577 and later.

## Summary of changes

In Windows 10, version 1903 and newer, you will see taxonomy updates in both the **Out-of-box-experience** (OOBE) and the **Diagnostics & feedback** privacy settings page. These changes are explained in the section named **Taxonomy** changes.

Additionally, in an upcoming release of Windows 10, we’re simplifying your diagnostic data controls by moving from four diagnostic data controls to three: **Diagnostic data off**, **Required**, and **Optional**. We’re also clarifying the Security diagnostic data level to more accurately reflect its behavior by changing it to **Diagnostic data off**. All of these changes are explained in the section named **Behavioral changes**.

## Taxonomy changes

Starting in Windows 10, version 1903 and newer, both the **Out-of-Box-Experience** (OOBE) and the **Diagnostics & feedback** privacy setting pages will reflect the following changes:

- The **Basic** diagnostic data level is being labeled as **Required**.
- The **Full** diagnostic data level is being labeled as **Optional**.

> [!IMPORTANT]
> No action is required for the taxonomy changes, and your existing settings will be maintained as part of this update.

## Behaviorial changes

In an upcoming release of Windows 10, we’re simplifying your diagnostic data controls by moving from four diagnostic data controls to three: **Diagnostic data off**, **Required**, and **Optional**. If your devices are set to **Enhanced** when they are upgraded, the device settings will be migrated to the more privacy-preserving setting of **Required diagnostic data**, which means that analytic services that leverage enhanced data collection may not work properly. For a list of services, see the section named, **Services that rely on Enhanced diagnostic data**, later in this topic. Administrators should read through the details and determine whether to apply these new policies to restore the same collection settings as they had before this change. For a list of steps, see the section named **Configure a Windows 10 device to limit crash dumps and logs**. For more information on services that rely on Enhanced diagnostic data, see **Services that rely on Enhanced diagnostic data**.

Additionally, you will see the following policy changes in an upcoming release of Windows 10:

| Policy type | Current policy | Renamed policy |
| --- | --- | --- |
| Group Policy | Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > **Allow Telemetry**<ul><li>**0 - Security** <br /></li><li>**1 - Basic**<br /></li><li>**2 - Enhanced**<br /></li><li>**3 - Full**<br /></li></ul>| Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > **Allow Diagnostic Data**<ul><li>**Diagnostic data off (not recommended)** <br /></li><li>**Send required diagnostic data**<br /></li><li>**Send optional diagnostic data**<br /></li></ul> |
| Group Policy |Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > **Configure telemetry opt-in settings user interface**| Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > **Configure diagnostic data opt-in settings user interface** |
| Group Policy |Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > **Configure telemetry opt-in change notifications**| Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > **Configure diagnostic data opt-in change notifications** |

A final set of changes includes two new policies that can help you fine-tune diagnostic data collection within your organization. These policies let you limit the amount of optional diagnostic data that’s sent back to Microsoft.

- The **Limit dump collection** policy is a new policy that can be used to limit the types of [crash dumps](/windows/win32/dxtecharts/crash-dump-analysis) that can be sent back to Microsoft. If this policy is enabled, Windows Error Reporting will send only kernel mini dumps and user mode triage dumps.
  - Group Policy: Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > **Limit Dump Collection**
  - MDM policy: System/LimitDumpCollection 
- The **Limit diagnostic log collection** policy is another new policy that limits the number of diagnostic logs that are sent back to Microsoft. If this policy is enabled, diagnostic logs are not sent back to Microsoft.
  - Group Policy: Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > **Limit Diagnostic Log Collection**
  - MDM policy: System/LimitDiagnosticLogCollection

>[!Important]
>All of the changes mentioned in this section will not be released on versions of Windows, version 1809 and earlier as well as Windows Server 2019 and earlier.

## Configure a Windows 10 device to limit crash dumps and logs

With the Enhanced diagnostic data level being split out into new policies, we're providing additional controls to manage what types of crash dumps are collected and whether to send additional diagnostic logs. Here are some steps on how to configure them:

1. Choose to send optional diagnostic data by setting one of the following policies:
   - Group Policy: Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > **Allow Diagnostic Data**. Set the policy value to **Send optional diagnostic data**.
   - MDM: System/AllowTelemetry. Set the policy value to **3**.
2. Enable the following Group Policy: Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > **Limit Dump Collection**
3. Enable the following Group Policy: Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > **Limit Diagnostic Log Collection**

## Services that rely on Enhanced diagnostic data

Customers who use services that depend on Windows diagnostic data, such as Microsoft Managed Desktop or Desktop Analytics, may be impacted by the behavioral changes when they are released. These services will be updated to address these changes and guidance will be published on how to configure them properly.

The following provides information on the current configurations:
- [Microsoft Managed Desktop](/microsoft-365/managed-desktop/service-description/device-policies#windows-diagnostic-data)
- [Desktop Analytics](/mem/configmgr/desktop-analytics/overview)
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
ms.author: daniha
author: DaniHalfin
manager: dansimp
ms.collection: M365-security-compliance
ms.topic: article
---

# Changes to Windows diagnostic data collection

Applies to:
- Windows 10, version 1903 and newer
- The next version of Windows Server

Microsoft is deeply committed to providing you with effective controls over your data and ongoing transparency into our data handling practices. As part of this effort, we are moving our major products and services to a model where data sent back to Microsoft from customer devices will be classified as either **Required** or **Optional**. We believe this will provide our customers with a simpler experience – information should be easier to find, easier to understand, and easier to act upon through the tools we provide.

This topic is meant for IT administrators and explains the changes Windows is making to align to the new data collection taxonomy. These changes are focused in two areas:

- [Taxonomy changes](#Taxonomy-changes)
- [Behavioral changes](#Behaviorial-changes)

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

In an upcoming release of Windows 10, we’re simplifying your diagnostic data controls by moving from four diagnostic data controls to three: **Diagnostic data off**, **Required**, and **Optional**. If your devices are set to **Enhanced** when they are upgraded, the device settings will be migrated to the more privacy-preserving setting of **Required diagnostic data**, which means that analytic services that leverage enhanced data collection may not work properly. For a list of services, see the section named, **Services that rely on Enhanced diagnostic data**, later in this topic. Administrators should read through the details and determine whether to apply these new policies to restore the same collection settings as they had before this change. For a list of steps, see the section named **Configure a Windows 10 device to limit diagnostics**. For more information on services that rely on Enhanced diagnostic data, see **Services that rely on Enhanced diagnostic data**.

Additionally, you will see the following policy changes in an upcoming release of Windows 10:
| Policy type | Current policy | Renamed policy |
| --- | --- | --- |
| Group Policy | 

---
title: Update release cycle for Windows clients
description: Learn about the release cycle of updates for Windows clients to stay productive and protected.
ms.prod: windows-client
author: mestew
ms.localizationpriority: medium
ms.author: mstewart
manager: aaroncz
ms.topic: article
ms.technology: itpro-updates
ms.date: 03/23/2023
---

# Monthly updates for Windows clients
<!--7696511-->
***(Applies to: Windows 11 & Windows 10)***

Windows updates help you to stay productive and protected. They provide your users and IT administrators with the security fixes they need, and protect devices so that unpatched vulnerabilities can't be exploited. Monthly updates are typically cumulative. They include all previously released fixes to guard against fragmentation of the operating system. Reliability and vulnerability issues can occur when only a subset of fixes is installed.

This article provides details on the types of monthly updates that Microsoft provides, and how they help make the overall user experience simple and consistent.

## Types of monthly update releases

Releases are provided on a monthly schedule as two types of releases:

1. **Monthly security update release**
1. **Optional non-security preview release**

[**Out-of-band (OOB) releases**](#oob-releases) can also be provided outside of the monthly schedule when there's an exceptional need.

## Monthly security update release

Most people are familiar with the **Monthly security update release**. The **Monthly security update release** updates are released on the second Tuesday of each month, and are typically published at 10:00 AM Pacific Time (PST/PDT). This release might commonly be referred to as:

- Patch Tuesday
- Update Tuesday
- B week releases (meaning the second week of the month)
- Quality updates
- Security updates
- Latest cumulative update (LCU)


**Monthly security update releases** are cumulative. The release includes both new and previously released security fixes, along with non-security content introduced in the prior month's [**Optional non-security preview release**](#optional-non-security-preview-release). These updates help keep Windows devices secure and compliant by deploying stability fixes and addressing security vulnerabilities. Most organizations consider monthly security update releases as mandatory.

Monthly security update releases are available through the following channels:

- Windows Update
- Windows Server Update Services (WSUS)
- The [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Home.aspx)

Many update management tools, such as [Microsoft Configuration Manager](/mem/configmgr/), rely on these channels for update deployment.

## Optional non-security preview release

**Optional non-security preview releases** provide IT admins an opportunity for early validation of that content prior to the **Monthly security update release**. Admins can test and validate production-quality releases ahead of the planned monthly security update release for the following month. These updates are optional, cumulative, non-security preview releases. New features might initially be deployed in the prior month's **Optional non-security preview release**, then ship in the following **Monthly security update release**. These releases are only offered to the most recent, supported versions of Windows.

**Optional non-security preview releases** might commonly be referred to as:

- C or D week releases (meaning the third or fourth week of the month)
- Preview updates
- Preview CUs

> [!Important]
> Starting in April 2023, all **Optional non-security preview releases** will be released on the fourth Tuesday of the month. This change in release cadence gives admins a consistent time cycle for testing and validating fixes and features.

To access the optional non-security preview release:
- Navigate to **Settings** > **Update & Security** > **Windows Update** and select **Check for updates**. 
- Use [Windows Insider Program for Business](https://insider.windows.com/for-business)
- Use the [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Home.aspx).

## OOB releases

**Out-of-band (OOB) releases** might be provided to fix a recently identified issue or vulnerability. They're used in atypical cases when an issue is detected and can't wait for the next monthly release, because devices must be updated immediately to address security vulnerabilities or to resolve a quality issue impacting many devices. 

Some key considerations about OOB releases include: 

- OOB releases are always cumulative. 
  - OOB releases supersede any prior monthly security update and optional non-security preview release. 
- OOB releases generally require IT admins to deploy off-cycle.  
- Some OOB releases are classified as critical.
  - Critical OOB releases are automatically available to WSUS and Windows Update for Business, just like the monthly security update releases.  
- Some OOB releases are classified as non-critical.
  - Non-critical releases only go to the Microsoft Update Catalog for users or organizations to voluntarily obtain the update.

## Continuous innovation for Windows 11

Starting with Windows 11, version 22H2, new features and enhancements are introduced periodically to provide continuous innovation for Windows 11. These features and enhancements use the normal update servicing channels you're already familiar with. At first, new features are introduced with an **Optional non-security preview release** and gradually rolled out to unmanaged clients. These new features are released later as part of a **Monthly security update release**.

Some of the new features may be disruptive to organizations. By default, these select features are turned off temporarily for all managed devices until the next annual feature update is installed. In this scenario, a device is considered managed if  it uses one of the following to determine which updates to install:

- Windows Update for Business
  - Devices that have updates managed Microsoft Intune use Windows Update for Business
- WSUS
  - Devices that have updates managed by Configuration Manager use WSUS

Features that are turned off by default are listed in the KB article for the monthly cumulative update. If you want to enable these features, there's a client policy that allows admins to **Enable features introduced via servicing that are off by default**. For more information about this policy, see [Enable features introduced via servicing that are off by default](waas-configure-wufb.md#enable-features-introduced-via-servicing-that-are-off-by-default).

## Annual feature updates

Annual feature updates are released in the second half of the calendar year. These updates are typically cumulative and include all previously released fixes. They also include new features and enhancements. The annual feature update marks the start of the support lifecycle:
- 24 months of support for Home and Pro editions of Windows
- 36 months of support for Enterprise and Education editions

For more information, see [Windows lifecycle FAQ](/lifecycle/faq/windows).

## Release information

For more information about specific releases, see:

<!--Using include for update history and release health links-->
[!INCLUDE [Windows update history and release health links](./includes/update-history.md)]

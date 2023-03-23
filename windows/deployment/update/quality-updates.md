---
title: Monthly updates for Windows clients
description: Learn about Windows monthly update types to stay productive and protected.
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

[**Out-of-band (OOB) releases**](#oob-releases) can also be provided outside of the monthly schedule when there is an exceptional need.

## Monthly security update release

Most people are familiar with the **Monthly security update release**. The **Monthly security update release** updates are released on the second Tuesday of each month, and are typically published at 10:00 AM Pacific Time (PST/PDT). This release might commonly be commonly referred to as:

- Patch Tuesday
- Update Tuesday
- B week releases (meaning the second week of the month)
- Quality updates
- Security updates
- Latest cumulative update (LCU)


**Monthly security update releases** are cumulative. The release includes both new and previously released security fixes, along with non-security content introduced in the prior month's [**Optional non-security preview release**](#ptional-non-security-preview-release). These updates help keep Windows devices secure and compliant by deploying stability fixes and addressing security vulnerabilities. Typically, most organizations consider monthly security update releases as mandatory.

Monthly security update releases are available through the following channels:

- Windows Update
- Windows Server Update Services (WSUS)
- The [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Home.aspx)

Many update management tools, such as [Microsoft Configuration Manager](/mem/configmgr/), rely on these channels for update deployment.

## Optional non-security preview release

**Optional non-security preview releases** provide IT admins an opportunity for early validation of that content prior to the **Monthly security update release**. Admins have the option to test and validate production-quality releases ahead of the planned monthly security update release for the following month. These updates are optional, cumulative, non-security preview releases. New features might initially be deployed in the prior month's **Optional non-security preview release**, then ship in the following **Monthly security update release**. These releases are only offered to the most recent, supported versions of Windows.

**Optional non-security preview releases** might commonly be commonly referred to as:

- C or D week releases (meaning the third or fourth week of the month)
- Preview updates
- Preview CUs

Starting in April 2023, all **Optional non-security preview releases** will be released on the fourth Tuesday of the month. This change in release cadence gives admins a consistent time cycle for testing and validating fixes and features.

To access the optional non-security preview release, navigate to **Settings** > **Update & Security** > **Windows Update** and select **Check for updates**. Admins can also validate fixes and features in an optional non-security preview release by leveraging the [Windows Insider Program for Business](https://insider.windows.com/for-business) or via the [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Home.aspx). 

## OOB releases

Out-of-band (OOB) releases might be provided to fix a recently identified issue or vulnerability. They are used in atypical cases when an issue is detected and cannot wait for the next monthly release, because devices must be updated immediately to address security vulnerabilities or to resolve a quality issue impacting many devices. 

Some key considerations about OOB releases include: 

- OOB releases are always cumulative, and they supersede any prior B or C release. 
- The OOB releases will generally require IT admins to deploy off-cycle.  
- Some OOB releases are classified as critical and will automatically be pushed to Windows Server Update Services and Windows Update for Business, just like the B releases.  
- Some OOB releases are non-critical and only go to the Microsoft Update Catalog for users or organizations to voluntarily seek out the update. 

## More information

For additional details about the different types of Windows updates like critical, security, drivers, service packs, and more, please see the [Description of the standard terminology used to describe Microsoft software updates](/troubleshoot/windows-client/deployment/standard-terminology-software-updates) and [Introducing a new deployment service for driver and firmware updates](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/introducing-a-new-deployment-service-for-driver-and-firmware/ba-p/2176942). 

## Related topics

- [Overview of Windows as a service](waas-overview.md)
- [Update Windows 10 in the enterprise](index.md)
- [Quick guide to Windows as a service](waas-quick-start.md) 
- [Configure Delivery Optimization for Windows 10 updates](../do/waas-delivery-optimization.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md)
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](/intune/windows-update-for-business-configure)
- [Manage device restarts after updates](waas-restart.md)

---
title: Monthly quality updates (Windows 10/11)
description: Learn about Windows monthly quality updates to stay productive and protected.
keywords: updates, servicing, current, deployment, semi-annual channel, feature, quality, rings, insider, tools
ms.prod: w10
ms.mktglfcycl: manage
author: greg-lindsay
ms.localizationpriority: medium
ms.author: greglin
ms.reviewer: 
manager: laurawi
ms.topic: article
---

# Monthly quality updates

**Applies to**

- Windows 10
- Windows 11

Windows monthly quality updates help you stay productive and protected. They provide your users and IT administrators alike with the security fixes they need to protect their devices before unpatched vulnerabilities can potentially be exploited. They are cumulative and include all previously released fixes to guard against fragmentation of the operating system (OS) that can lead to reliability and vulnerability issues when only a subset of fixes is installed.   

This document provides details on the types of monthly quality updates that Microsoft provides to consumers and organizations, and how they help make the overall user experience simpler and consistent. 

## Quality updates

Quality updates are provided on a monthly schedule in non-security and combined security and non-security releases. Non-security releases provide IT admins an opportunity for early validation of that content prior to the combined release. Releases are provided outside of the monthly schedule when there is an exceptional need. 

### B releases

Most users are familiar with what is commonly referred to as Patch Tuesday or Update Tuesday. These updates, published on the second Tuesday of each month, are known as the **B release**, where “B” refers to the second week in the month. They are typcially published at 10:00 AM Pacific Time (PST/PDT).  

Because they are cumulative, B releases include both new and previously released security fixes, along with non-security content introduced in the prior month’s Preview “C” release (see below for details). These updates help keep Windows devices secure and compliant by deploying stability fixes and addressing security vulnerabilities. “B” releases are mandatory. 

Channels for availability of “B” releases include Windows Update, Windows Server Update Services (WSUS), and the Microsoft Update Catalog. 

### C releases

IT admins have the option to test and/or validate production-quality releases ahead of the planned B release for the following month. These are optional, cumulative, non-security preview releases. Known as **C releases**, they are only offered to the most recent, supported versions of Windows. New features like News and Interests may initially be deployed in the prior month’s C preview release, then ship in the following month’s B release. 

For customers to access the C releases, they must navigate to **Settings** > **Update & Security** > **Windows Update** and select **Check for updates**.  

IT admins may also validate fixes and features in a preview update by leveraging the Windows Insider Program for Business or via the Microsoft Update Catalog. 

### OOB releases

Out-of-band (OOB) releases may be provided to fix a recently identified issue or vulnerability. They are used in atypical cases when an issue is detected and cannot wait for the next monthly release because devices must be updated immediately to address security vulnerabilities or to resolve a quality issue impacting many devices. 

Some key considerations about OOB releases include: 

- OOB releases are always cumulative, and they supersede any prior B or C release. 
- The OOB releases will generally require IT admins to deploy off-cycle.  
- Some OOB releases are classified as critical and will automatically be pushed to Windows Server Update Services and Windows Update for Business, just like the B releases.  
- Some OOB releases are non-critical and only go to the Microsoft Update Catalog for users or organizations to voluntarily seek out the update. 

## Also see

For additional details about the different types of Windows updates like critical, security, drivers, service packs, and more, please see the Description of the standard terminology used to describe Microsoft software updates and Introducing a new deployment service for driver and firmware updates. 

## Related topics

- [Overview of Windows as a service](waas-overview.md)
- [Update Windows 10 in the enterprise](index.md)
- [Quick guide to Windows as a service](waas-quick-start.md) 
- [Configure Delivery Optimization for Windows 10 updates](waas-delivery-optimization.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md)
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](/intune/windows-update-for-business-configure)
- [Manage device restarts after updates](waas-restart.md)

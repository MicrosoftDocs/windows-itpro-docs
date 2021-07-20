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

Windows monthly quality updates help you to stay productive and protected. They provide your users and IT administrators with the security fixes they need, and protect devices so that unpatched vulnerabilities can't be exploited. Quality updates are cumulative; they include all previously released fixes to guard against fragmentation of the operating system (OS). Reliability and vulnerability issues can occur when only a subset of fixes is installed.   

This article provides details on the types of monthly quality updates that Microsoft provides, and how they help make the overall user experience simple and consistent. 

## Quality updates

Quality updates are provided on a monthly schedule, as two types of releases: 

1. Non-security releases
2. Combined security + non-security releases

Non-security releases provide IT admins an opportunity for early validation of that content prior to the combined release. Releases can also be provided outside of the monthly schedule when there is an exceptional need. 

### B releases

Most people are familiar with what is commonly referred to as **Patch Tuesday** or **Update Tuesday**. These updates are released on the second Tuesday of each month, and are known as the **B release** (where “**B**” refers to the second week in the month). B releases are typically published at 10:00 AM Pacific Time (PST/PDT).  

Because they are cumulative, B releases include both new and previously released security fixes, along with non-security content introduced in the prior month’s Preview **C release** (see the next section). These updates help keep Windows devices secure and compliant by deploying stability fixes and addressing security vulnerabilities. B releases are mandatory. 

Channels for availability of B releases include: Windows Update, Windows Server Update Services (WSUS), and the [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Home.aspx). 

### C releases

IT admins have the option to test and validate production-quality releases ahead of the planned B release for the following month. These updates are optional, cumulative, non-security preview releases known as **C releases**. These releases are only offered to the most recent, supported versions of Windows. For example, new features like [News and Interests](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/group-configuration-news-and-interests-on-the-windows-taskbar/ba-p/2281005) might initially be deployed in the prior month’s C preview release, then ship in the following month’s B release. 

For customers to access the C releases, they must navigate to **Settings** > **Update & Security** > **Windows Update** and select **Check for updates**.  

IT admins can also validate fixes and features in a preview update by leveraging the [Windows Insider Program for Business](https://insider.windows.com/for-business) or via the [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Home.aspx). 

### OOB releases

Out-of-band (OOB) releases might be provided to fix a recently identified issue or vulnerability. They are used in atypical cases when an issue is detected and cannot wait for the next monthly release, because devices must be updated immediately to address security vulnerabilities or to resolve a quality issue impacting many devices. 

Some key considerations about OOB releases include: 

- OOB releases are always cumulative, and they supersede any prior B or C release. 
- The OOB releases will generally require IT admins to deploy off-cycle.  
- Some OOB releases are classified as critical and will automatically be pushed to Windows Server Update Services and Windows Update for Business, just like the B releases.  
- Some OOB releases are non-critical and only go to the Microsoft Update Catalog for users or organizations to voluntarily seek out the update. 

## More information

For additional details about the different types of Windows updates like critical, security, drivers, service packs, and more, please see the [Description of the standard terminology used to describe Microsoft software updates](https://support.microsoft.com/help/824684) and [Introducing a new deployment service for driver and firmware updates](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/introducing-a-new-deployment-service-for-driver-and-firmware/ba-p/2176942). 

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

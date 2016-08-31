---
title: Update Windows 10 in the enterprise (Windows 10)
description: Windows as a service provides an all-new way to think about building, deploying, and servicing Windows 10.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
localizationpriority: high
---

# Update Windows 10 in the enterprise


**Applies to**

- Windows 10
- Windows 10 Mobile

Windows as a service provides an all-new way to think about building, deploying, and servicing the Windows operating system. The Windows as a service model is focused on continually providing new capabilities and updates while maintaining a high level of hardware and software compatibility. Deploying new versions of Windows is simpler than ever before: Microsoft makes smaller revisions approximately twice per year rather than the traditional, larger upgrades available every few years. Ultimately, this model replaces the need for traditional Windows upgrade projects, which can be costly and time-consuming, and spreads the required effort out into a continuous updating process, reducing the overall effort required to maintain Windows 10 devices in your environment. In addition, with the Windows 10 operating system, organizations have the chance to experience “flighted” builds of Windows as Microsoft develops them, gaining insight into new features and the ability to provide continual feedback about them. 

>[!TIP]
>See [Windows 10 update history](https://support.microsoft.com/help/12387/windows-10-update-history) for details about each Windows 10 update released to date.  

## In this section

| Topic | Description|
| --- | --- |
| [Overview of Windows as a service](waas-overview.md) | Explains the differences in building, deploying, and servicing Windows 10; introduces feature updates, quality updates, and the different servicing branches; compares servicing tools. |
| [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md) | Explains the decisions you need to make in your servicing strategy.  |
| [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md) | Explains how to make use of servicing branches and update deferrals to manage Windows 10 updates.  |
| [Assign devices to servicing branches for Windows 10 updates](waas-servicing-branches-windows-10-updates.md) | Explains how to assign devices to Current Branch (CB) or Current Branch for Business (CBB) for feature and quality updates, and how to enroll devices in Windows Insider. |
| [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md) | Explains the benefits of using Delivery Optimization or BranchCache for update distribution.  |
| [Manage updates for Windows 10 Mobile Enterprise](waas-mobile-updates.md) | Explains updates for Windows 10 Mobile Enterprise. |
| [Manage updates using Windows Update for Business](waas-manage-updates-wufb.md) | Explains how to use Windows Update for Business to manage when devices receive updates directly from Windows Update. Includes walkthroughs for configuring Windows Update for Business using Group Policy and Microsoft Intune.  |
| [Manage Windows 10 updates using Windows Server Update Services (WSUS)](waas-manage-updates-wsus.md) | Explains how to use WSUS to manage Windows 10 updates. |
| [Manage Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md) | Explains how to use Configuration Manager to manage Windows 10 updates.  |

>[!TIP]
>Windows servicing is changing, but for disaster recovery scenarios and bare-metal deployments of Windows 10, you still can use traditional imaging software such as System Center Configuration Manager or the Microsoft Deployment Toolkit. Using these tools to deploy Windows 10 images is similar to deploying previous versions of Windows.
>With each release of a new feature update for CB, Microsoft makes available new .iso files for use in updating your custom images. Each Windows 10 build has a finite servicing lifetime, so it’s important that images stay up to date with the latest build. For detailed information about how to deploy Windows 10 to bare-metal machines or to upgrade to Windows 10 from previous builds of Windows, see [Deploy Windows 10 with System Center 2012 R2 Configuration Manager](https://technet.microsoft.com/itpro/windows/deploy/deploy-windows-10-with-system-center-2012-r2-configuration-manager).


## Related topics


- [Configure Delivery Optimization for Windows 10 updates](waas-delivery-optimization.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md)
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](waas-wufb-intune.md)




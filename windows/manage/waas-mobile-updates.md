---
title: Manage updates for Windows 10 Mobile Enterprise (Windows 10)
description: tbd
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
localizationpriority: high
---

# Manage updates for Windows 10 Mobile Enterprise


**Applies to**

-   Windows 10 Mobile 


>[!TIP]
>If you're not familiar with the Windows 10 servicing or release branches, read [Servicing branches](waas-overview.md#servicing-branches) first.

Devices running Windows 10 Mobile receive updates from the Current Branch (CB) unless you [enroll the device in the Windows Insider Program](waas-servicing-branches-windows-10-updates.md#enroll-devices-in-the-windows-insider-program) or assign the device to Current Branch for Business (CBB). Only devices running Windows 10 Mobile Enterprise can be assigned to CBB.

[Learn how to upgrade Windows 10 Mobile to Windows 10 Mobile Enterprise](https://technet.microsoft.com/itpro/windows/deploy/windows-10-edition-upgrades)

</br>

| Windows 10 edition | CB | CBB | Insider Program |
| --- | --- | --- | --- | --- |
| Mobile | ![yes](images/checkmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |
| Mobile Enterprise | ![yes](images/checkmark.png) | ![yes](images/checkmark.png)  | ![yes](images/checkmark.png) |

</br>

Configuration of Windows 10 Mobile devices is limited to the feature set pertaining to Quality Updates only. That is, Windows Mobile Feature Updates are categorized the same as Quality Updates, and can only be deferred by setting the Quality Update deferral period, for a maximum period of 30 days. You can use mobile device management (MDM) to manage updates for Windows 10 Mobile Enterprise. Updates cannot be managed for Windows 10 Mobile. 

## Windows 10 Mobile Enterprise, version 1511

Only the following Windows Update for Business policies are supported:

- ../Vendor/MSFT/Policy/Config/Update/RequireDeferredUpgrade
- ../Vendor/MSFT/Policy/Config/Update/DeferUpdatePeriod
- ../Vendor/MSFT/Policy/Config/Update/PauseDeferrals

To defer the update period or pause deferrals, the device must be configured for CBB servicing branch by applying the **RequireDeferredUpgrade** policy.

## Windows 10 Mobile Enterprise, version 1607

Only the following Windows Update for Business policies are supported:

- ../Vendor/MSFT/Policy/Config/Update/BranchReadinessLevel
- ../Vendor/MSFT/Policy/Config/Update/DeferQualityUpdatesInDays  
- ../Vendor/MSFT/Policy/Config/Update/PauseQualityUpdates

In version 1607, you can defer and pause updates for devices on both the CB and CBB servicing branches.

If a device running Windows 10 Mobile Enterprise, version 1511, has Windows Update for Business policies applied and is then updated to version 1607, version 1511 policies continue to apply until version 1607 policies are applied. 



## Related topics

- [Update Windows 10 in the enterprise](waas-update-windows-10.md)
- [Overview of Windows as a service](waas-overview.md)
- [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md)
- [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md)
- [Assign devices to servicing branches for Windows 10 updates](waas-servicing-branches-windows-10-updates.md)
- [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md)
- [Configure Delivery Optimization for Windows 10 updates](waas-delivery-optimization.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md) 
- [Manage updates using Windows Update for Business](waas-manage-updates-wufb.md)
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](waas-wufb-intune.md)
- [Manage Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)
- [Manage Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md)




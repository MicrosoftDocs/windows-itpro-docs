---
title: Deploy updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile (Windows 10)
description: tbd
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.reviewer: 
manager: laurawi
ms.topic: article
---

# Deploy updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile


**Applies to**

- Windows 10 Mobile
- [Windows 10 IoT Mobile](https://www.microsoft.com/en-us/WindowsForBusiness/windows-iot)

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 

>[!TIP]
>If you're not familiar with the Windows 10 servicing or release channels, read [Servicing channels](waas-overview.md#servicing-channels) first.

Devices running Windows 10 Mobile and Windows 10 IoT Mobile receive updates from the Semi-annual Channel unless you [enroll the device in the Windows Insider Program](waas-servicing-channels-windows-10-updates.md#enroll-devices-in-the-windows-insider-program).

[Learn how to upgrade Windows 10 Mobile to Windows 10 Mobile Enterprise](https://technet.microsoft.com/itpro/windows/deploy/windows-10-edition-upgrades)



| Windows 10 edition | Semi-annual Channel | Insider Program |
| ---  | --- | --- | --- |
| Mobile |  ![no](images/crossmark.png) | ![yes](images/checkmark.png) |
| Mobile Enterprise |   ![yes](images/checkmark.png)  | ![yes](images/checkmark.png) |
| IoT Mobile |  ![yes](images/checkmark.png)  | ![yes](images/checkmark.png) |



Configuration of Windows 10 Mobile and Windows 10 IoT Mobile devices is limited to the feature set pertaining to quality updates only. That is, Windows Mobile feature updates are categorized the same as quality updates, and can only be deferred by setting the quality update deferral period, for a maximum period of 30 days. You can use mobile device management (MDM) to manage updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile. Updates cannot be managed for Windows 10 Mobile. 


## Windows 10, version 1607

Only the following Windows Update for Business policies are supported for Windows 10 Mobile and Windows 10 IoT Mobile:

- ../Vendor/MSFT/Policy/Config/Update/BranchReadinessLevel
- ../Vendor/MSFT/Policy/Config/Update/DeferQualityUpdatesInDays  
- ../Vendor/MSFT/Policy/Config/Update/PauseQualityUpdates






## Related topics

- [Update Windows 10 in the enterprise](index.md)
- [Overview of Windows as a service](waas-overview.md)
- [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md)
- [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md)
- [Assign devices to servicing channels for Windows 10 updates](waas-servicing-channels-windows-10-updates.md)
- [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md)
- [Configure Delivery Optimization for Windows 10 updates](waas-delivery-optimization.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md) 
- [Deploy updates using Windows Update for Business](waas-manage-updates-wufb.md)
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](waas-wufb-intune.md)
- [Deploy Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)
- [Deploy Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md)
- [Manage device restarts after updates](waas-restart.md)




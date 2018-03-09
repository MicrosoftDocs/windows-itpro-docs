---
title: Manage updates to HoloLens (HoloLens)
description: Administrators can use mobile device management to manage updates to HoloLens devices.
ms.prod: w10
ms.mktglfcycl: manage
ms.pagetype: hololens, devices
ms.sitesec: library
author: jdeckerms
ms.localizationpriority: medium
ms.date: 04/01/2018
---

# Manage updates to HoloLens

Windows 10, version 1803, is the first feature update to Windows Holographic for Business since its release in Windows 10, version 1607. As with desktop devices, administrators can manage updates to the HoloLens operating system using [Windows Update for Business](https://docs.microsoft.com/windows/deployment/update/waas-manage-updates-wufb).

>[!NOTE]
>HoloLens devices must be [upgraded to Windows Holographic for Business](hololens-upgrade-enterprise.md) to manage updates.


Mobile device management (MDM) providers use the [Policy Configuration Service Provider (CSP)](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider) to enable update management. 

The Update policies supported for HoloLens are:

- [Update/AllowAutoUpdate](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-allowautoupdate) 
- [Update/AllowMUUpdateService](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-allowmuupdateservice)
- [Update/AllowUpdateService](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-allowupdateservice)  
- [Update/RequireDeferUpgrade](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-requiredeferupgrade) 
- [Update/RequireUpdateApproval](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-requireupdateapproval)
- [Update/UpdateServiceUrl](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-updateserviceurl) 

If you use Microsoft Intune to manage HoloLens, you can configure the following Update policies as settings for [update rings](https://docs.microsoft.com/intune/windows-update-for-business-configure):

- [Update/AllowAutoUpdate](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-allowautoupdate) is set in **Software Updates** > **Windows 10 Update Rings** > **Automatic update behavior**.
- - [Update/AllowMUUpdateService](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-allowmuupdateservice) is set in **Software Updates** > **Windows 10 Update Rings** > **Microsoft product updates**.
- [Update/RequireDeferUpgrade](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-requiredeferupgrade) is set in **Software Updates** > **Windows 10 Update Rings** > **Servicing channel**.

Typically, devices access Windows Update directly for updates. You can use the following update policies to configure devices to get updates from Windows Server Update Service (WSUS) instead:

- [Update/AllowUpdateService](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-allowupdateservice) 
- [Update/RequireUpdateApproval](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-requireupdateapproval) 
- [Update/UpdateServiceUrl](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update#update-updateserviceurl) 

In Microsoft Intune, use [a custom profile](https://docs.microsoft.com/intune/custom-settings-windows-holographic) to configure devices to get updates from WSUS. 





## Related topics

- [Manage software updates in Microsoft Intune](https://docs.microsoft.com/intune/windows-update-for-business-configure)
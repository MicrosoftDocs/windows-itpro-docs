---
title: Distribute apps with a management tool (Windows 10)
description: You can configure a mobile device management (MDM) tool to synchronize your Microsoft Store for Business or Microsoft Store for Education inventory. Microsoft Store management tool services work with MDM tools to manage content.
ms.assetid: 006F5FB1-E688-4769-BD9A-CFA6F5829016
ms.reviewer: 
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: store
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.topic: conceptual
ms.localizationpriority: medium
ms.date: 07/21/2021
---

# Distribute apps with a management tool


**Applies to**

-   Windows 10

> [!IMPORTANT]
> The retirement of Microsoft Store for Business and Microsoft Store for Education has been postponed. We will update this notice when a new retirement date is announced. You can continue to use the current capabilities of free apps until that time. For more information about this change, see [Update to Intune integration with the Microsoft Store on Windows](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/update-to-endpoint-manager-integration-with-the-microsoft-store/ba-p/3585077) and [FAQ: Supporting Microsoft Store experiences on managed devices](https://techcommunity.microsoft.com/t5/windows-management/faq-supporting-microsoft-store-experiences-on-managed-devices/m-p/3585286).

You can configure a mobile device management (MDM) tool to synchronize your Microsoft Store for Business or Microsoft Store for Education inventory. Microsoft Store management tool services work with MDM tools to manage content.

Your MDM tool needs to be installed and configured in Azure AD, in the same Azure AD directory used with Microsoft Store.

In Azure AD management portal, find the MDM application, and then add it to your directory. Once the MDM has been configured in Azure AD, you can authorize the tool to work with the Microsoft Store for Business or Microsoft Store for Education. This allows the MDM tool to call Microsoft Store management tool services. For more information, see [Configure MDM provider](configure-mdm-provider-microsoft-store-for-business.md) and [Manage apps you purchased from the Microsoft Store for Business with Microsoft Intune](/mem/intune/apps/windows-store-for-business).

Microsoft Store services provide:

-   Services for third-party MDM tools.
-   Synchronize app purchases and updates.
-   Synchronize metadata. For offline-licensed apps, also synchronize offline app package and offline licenses.
-   The ability to download offline-licensed apps from Store for Business.

MDM tool requirements:

-   Must be an Azure Active Directory (AD) application to authenticate against the Store for Business services.
-   Must be configured in Azure AD, and Microsoft Store.
-   Azure AD identity is required to authorize Microsoft Store services.

## Distribute offline-licensed apps

If your vendor doesn't support the ability to synchronize applications from the management tool services, or can't connect to the management tool services, your vendor may support the ability to deploy offline licensed applications by downloading the application and license from the store and then deploying the app through your MDM. For more information on online and offline licensing with Store for Business, see [Apps in the Microsoft Store for Business](./apps-in-microsoft-store-for-business.md#licensing-model).

This diagram shows how you can use a management tool to distribute offline-licensed app to employees in your organization. Once synchronized from Store for Business, management tools can use the Windows Management framework to distribute applications to devices.

![Image showing flow for distributing offline-licensed app from Microsoft Store for Business to employees in your organization.](images/wsfb-offline-distribute-mdm.png)

## Distribute online-licensed apps

This diagram shows how you can use a management tool to distribute an online-licensed app to employees in your organization. Once synchronized from Microsoft Store, management tools use the Windows Management framework to distribute applications to devices. For online-licensed applications, the management tool calls back to Microsoft Store management services to assign an application prior to issuing the policy to install the application.

![Image showing flow for distributing online-licensed app from Microsoft Store for Business.](images/wsfb-online-distribute-mdm.png)

## Related topics

[Configure MDM Provider](configure-mdm-provider-microsoft-store-for-business.md)

[Manage apps you purchased from the Microsoft Store for Business and Education with Microsoft Intune](/mem/intune/apps/windows-store-for-business)

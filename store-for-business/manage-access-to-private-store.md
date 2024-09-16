---
title: Manage access to private store (Windows 10)
description: You can manage access to your private store in Microsoft Store for Business and Microsoft Store for Education.
ms.assetid: 4E00109C-2782-474D-98C0-02A05BE613A5
ms.reviewer: 
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: store
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.topic: conceptual
ms.date: 05/24/2023
---

# Manage access to private store

**Applies to:**

- Windows 10

> [!IMPORTANT]
> The retirement of Microsoft Store for Business and Microsoft Store for Education has been postponed. We will update this notice when a new retirement date is announced. You can continue to use the current capabilities of free apps until that time. For more information about this change, see [Update to Intune integration with the Microsoft Store on Windows](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/update-to-endpoint-manager-integration-with-the-microsoft-store/ba-p/3585077) and [FAQ: Supporting Microsoft Store experiences on managed devices](https://techcommunity.microsoft.com/t5/windows-management/faq-supporting-microsoft-store-experiences-on-managed-devices/m-p/3585286).

## Microsoft Store for Business tab removed

In April 2023, the Microsoft Store for Business tab was removed from Microsoft Store apps on Windows 10 and Windows 11 PCs. The Microsoft Store for Business tab will continue to be available on Hololens devices. Users will no longer be able to see products added to the private store within the Microsoft Store app and will need to go to the [Microsoft Store for Business](https://businessstore.microsoft.com/) website to access the private store.

The [ApplicationManagement/RequirePrivateStoreOnly](/windows/client-management/mdm/policy-configuration-service-provider#ApplicationManagement_RequirePrivateStoreOnly) MDM policy and **Only display the private store within the Microsoft Store app** Group policy will block access to the Microsoft Store app entirely. With those policies in place, users may see one of the following errors in the Microsoft Store app.

1. Microsoft Store is blocked + Check with your IT or system administrator + Report this problem + Code 0x700704E
2. Try that again + Page could not be loaded. Please try that again + Refresh the page + Code 0x80131500
3. This place is off-limits + Not sure how you got here, but there's nothing for you here. + Report this problem + Refresh this Page.

## Manage private store access

You can manage access to your private store in Microsoft Store for Business and Microsoft Store for Education.

You can control the set of apps that are available to your employees and students, and not show the full set of applications that are in Microsoft Store. Using the private store with the Microsoft Store for Business and Education, admins can curate the set of apps that are available.

The private store is a feature in Store for Business that organizations receive during the sign up process. When admins add apps to the private store, all employees in the organization can view and download the apps. Your private store is available as a tab on the [Microsoft Store for Business site](https://businessstore.microsoft.com/store/private-store), and is usually named for your company or organization. Only apps with online licenses can be added to the private store.

## Related topics

[Distribute apps using your private store](distribute-apps-from-your-private-store.md)\
[Configure access to Microsoft Store](/windows/configuration/stop-employees-from-using-microsoft-store)

---
title: Manage user accounts in Microsoft Store for Business and Microsoft Store for Education (Windows 10)
description: Microsoft Store for Business and Microsoft Store for Education manages permissions with a set of roles. Currently, you can assign these roles to individuals in your organization, but not to groups.
ms.assetid: 5E7FA071-CABD-4ACA-8AAE-F549EFCE922F
ms.reviewer: 
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: store
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.topic: conceptual
ms.localizationpriority: medium
ms.date: 05/24/2023
---

# Manage user accounts in Microsoft Store for Business and Education

**Applies to:**

- Windows 10

> [!IMPORTANT]
>
> - The retirement of Microsoft Store for Business and Microsoft Store for Education has been postponed. We will update this notice when a new retirement date is announced. You can continue to use the current capabilities of free apps until that time. For more information about this change, see [Update to Intune integration with the Microsoft Store on Windows](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/update-to-endpoint-manager-integration-with-the-microsoft-store/ba-p/3585077) and [FAQ: Supporting Microsoft Store experiences on managed devices](https://techcommunity.microsoft.com/t5/windows-management/faq-supporting-microsoft-store-experiences-on-managed-devices/m-p/3585286).
> - In April 2023 the Microsoft Store for Business tab was removed from Microsoft Store apps on Windows 10 and Windows 11 PCs. An interaction with existing MDM and GPO policies may lead to customers seeing errors when accessing the Microsoft Store app. For more information see [Microsoft Store for Business tab removed](manage-access-to-private-store.md#microsoft-store-for-business-tab-removed).

Microsoft Store for Business and Education manages permissions with a set of roles. Currently, you can [assign these roles to individuals in your organization](roles-and-permissions-microsoft-store-for-business.md), but not to groups.

## Why Azure AD accounts?
For organizations planning to use the private store feature with Store for Business, we recommend that you also configure cloud domain join. This provides a seamless integration between the identity your admin and employees will use to sign in to Windows and Microsoft Store for Business.

Azure AD is an Azure service that provides identity and access management capabilities using the cloud. It is primarily designed to provide this service for cloud- or web-based applications that need to access your local Active Directory information. Azure AD identity and access management includes:

- Single sign-on to any cloud and on-premises web app.
- Works with multiple platforms and devices.
- Integrate with on-premises Active Directory.

For more information on Azure AD, see [About Office 365 and Azure Active Directory](/previous-versions//dn509517(v=technet.10)), and [Intro to Azure: identity and access](https://go.microsoft.com/fwlink/p/?LinkId=708611).

## Add user accounts to your Azure AD directory
If you created a new Azure AD directory when you signed up for Store for Business, you'll have a directory set up with one user account - the global administrator. That global administrator can add user accounts to your Azure AD directory. However, adding user accounts to your Azure AD directory will not give those employees access to Store for Business. You'll need to assign Store for Business roles to your employees. For more information, see [Roles and permissions in the Store for Business.](roles-and-permissions-microsoft-store-for-business.md)

You can use the [Office 365 admin dashboard](https://portal.office.com/adminportal) or [Azure management portal](https://portal.azure.com/) to add user accounts to your Azure AD directory. If you'll be using Azure management portal, you'll need an active subscription to [Azure management portal](https://go.microsoft.com/fwlink/p/?LinkId=708617).

For more information, see:
- [Add user accounts using Office 365 admin dashboard](/microsoft-365/admin/add-users)
- [Add user accounts using Azure management portal](/azure/active-directory/fundamentals/add-users-azure-active-directory)
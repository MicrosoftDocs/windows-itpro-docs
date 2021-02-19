---
title: Manage user accounts in Microsoft Store for Business and Microsoft Store for Education (Windows 10)
description: Microsoft Store for Business and Microsoft Store for Education manages permissions with a set of roles. Currently, you can assign these roles to individuals in your organization, but not to groups.
ms.assetid: 5E7FA071-CABD-4ACA-8AAE-F549EFCE922F
ms.reviewer: 
manager: dansimp
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: store
author: TrudyHa
ms.author: TrudyHa
ms.topic: conceptual
ms.localizationpriority: medium
ms.date: 10/17/2017
---

# Manage user accounts in Microsoft Store for Business and Education


**Applies to**

-   Windows 10
-   Windows 10 Mobile

Microsoft Store for Business and Education manages permissions with a set of roles. Currently, you can [assign these roles to individuals in your organization](roles-and-permissions-microsoft-store-for-business.md), but not to groups.

## Why Azure AD accounts?
For organizations planning to use the private store feature with Store for Business, we recommend that you also configure cloud domain join. This provides a seamless integration between the identity your admin and employees will use to sign in to Windows and Microsoft Store for Business.

Azure AD is an Azure service that provides identity and access management capabilities using the cloud. It is primarily designed to provide this service for cloud- or web-based applications that need to access your local Active Directory information. Azure AD identity and access management includes:

- Single sign-on to any cloud and on-premises web app.
- Works with multiple platforms and devices.
- Integrate with on-premises Active Directory.

For more information on Azure AD, see [About Office 365 and Azure Active Directory](https://go.microsoft.com/fwlink/p/?LinkId=708612), and [Intro to Azure: identity and access](https://go.microsoft.com/fwlink/p/?LinkId=708611).

## Add user accounts to your Azure AD directory
If you created a new Azure AD directory when you signed up for Store for Business, you'll have a directory set up with one user account - the global administrator. That global administrator can add user accounts to your Azure AD directory. However, adding user accounts to your Azure AD directory will not give those employees access to Store for Business. You'll need to assign Store for Business roles to your employees. For more information, see [Roles and permissions in the Store for Business.](roles-and-permissions-microsoft-store-for-business.md)

You can use the [Office 365 admin dashboard](https://portal.office.com/adminportal) or [Azure management portal](https://go.microsoft.com/fwlink/p/?LinkId=691086) to add user accounts to your Azure AD directory. If you'll be using Azure management portal, you'll need an active subscription to [Azure management portal](https://go.microsoft.com/fwlink/p/?LinkId=708617).

For more information, see:
- [Add user accounts using Office 365 admin dashboard](https://support.office.com/en-us/article/add-users-individually-or-in-bulk-to-office-365-admin-help-1970f7d6-03b5-442f-b385-5880b9c256ec)
- [Add user accounts using Azure management portal](https://go.microsoft.com/fwlink/p/?LinkId=708619)

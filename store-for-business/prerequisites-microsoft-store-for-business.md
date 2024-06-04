---
title: Prerequisites for Microsoft Store for Business and Education (Windows 10)
description: There are a few prerequisites for using Microsoft Store for Business or Microsoft Store for Education.
ms.assetid: CEBC6870-FFDD-48AD-8650-8B0DC6B2651D
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

# Prerequisites for Microsoft Store for Business and Education

**Applies to:**

- Windows 10

> [!IMPORTANT]
>
> - The retirement of Microsoft Store for Business and Microsoft Store for Education has been postponed. We will update this notice when a new retirement date is announced. You can continue to use the current capabilities of free apps until that time. For more information about this change, see [Update to Intune integration with the Microsoft Store on Windows](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/update-to-endpoint-manager-integration-with-the-microsoft-store/ba-p/3585077) and [FAQ: Supporting Microsoft Store experiences on managed devices](https://techcommunity.microsoft.com/t5/windows-management/faq-supporting-microsoft-store-experiences-on-managed-devices/m-p/3585286).
> - In April 2023 the Microsoft Store for Business tab was removed from Microsoft Store apps on Windows 10 and Windows 11 PCs. An interaction with existing MDM and GPO policies may lead to customers seeing errors when accessing the Microsoft Store app. For more information see [Microsoft Store for Business tab removed](manage-access-to-private-store.md#microsoft-store-for-business-tab-removed).

> [!NOTE]
> As of April 14th, 2021, only free apps are available in Microsoft Store for Business and Education. For more information, see [Microsoft Store for Business and Education](index.md).

> [!IMPORTANT]
> Customers who are in the Office 365 GCC environment or are eligible to buy with government pricing cannot use Microsoft Store for Business.

There are a few prerequisites for using Microsoft Store for Business or Microsoft Store for Education.

## Prerequisites

You'll need this software to work with Microsoft Store for Business or Education.

### Required

-   IT Pros that are administering Microsoft Store for Business and Education need a browser compatible with Microsoft Store for Business and Education running on a PC or mobile device. Supported browsers include: Internet Explorer 10 or later, Microsoft Edge, or current versions of Chrome or Firefox. Javascript needs to be supported and enabled. 
-   Employees using apps from Microsoft Store for Business and Education need at least Windows 10, version 1511 running on a PC or mobile device.

Microsoft Entra ID or Office 365 accounts for your employees:
-   IT Pros need Microsoft Entra ID or Office 365 accounts to sign up for Microsoft Store for Business and Education, and then to sign in, get apps, distribute apps, and manage app licenses.
-   Employees need Microsoft Entra accounts when they access Microsoft Store for Business or Education content from Windows-based devices.
-   If you use a management tool to distribute and manage online-licensed apps, all employees will need a Microsoft Entra account.

For more information on Microsoft Entra ID, see [About Office 365 and Microsoft Entra ID](/previous-versions//dn509517(v=technet.10)), and [Intro to Azure: identity and access](https://go.microsoft.com/fwlink/p/?LinkId=708611).

### Optional

While not required, you can use a management tool to distribute and manage apps. Using a management tool allows you to distribute content, scope app availability, and control when app updates are installed. This might make sense for larger organizations that already use a management tool. If you're considering using management tools, check with the management tool vendor to see if they support Microsoft Store for Business and Education. The management tool will need to:

-   Integrate with the Windows 10 management framework and Microsoft Entra ID.
-   Sync with Microsoft Store for Business and Education inventory to distribute apps.

## Proxy configuration

If your organization restricts computers on your network from connecting to the Internet, there is a set of URLs that need to be available for devices to use Microsoft Store. Some of the Microsoft Store features use Store services. Devices using Microsoft Store – either to acquire, install, or update apps – will need access to these URLs. If you use a proxy server to block traffic, your configuration needs to allow these URLs:

- `login.live.com`
- `login.windows.net`
- `account.live.com`
- `clientconfig.passport.net`
- `windowsphone.com`
- `*.wns.windows.com`
- `*.microsoft.com`
- `*.s-microsoft.com`
- `www.msftncsi.com` (prior to Windows 10, version 1607)
- `www.msftconnecttest.com/connecttest.txt` (replaces `www.msftncsi.com` starting with Windows 10, version 1607)
 
Store for Business requires Microsoft Windows HTTP Services (WinHTTP) to install, or update apps.

---
title: Prerequisites for Microsoft Store for Business and Education (Windows 10)
description: There are a few prerequisites for using Microsoft Store for Business or Microsoft Store for Education.
ms.assetid: CEBC6870-FFDD-48AD-8650-8B0DC6B2651D
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
ms.date: 10/13/2017
---

# Prerequisites for Microsoft Store for Business and Education

**Applies to**

-   Windows 10
-   Windows 10 Mobile

There are a few prerequisites for using Microsoft Store for Business or Microsoft Store for Education.

## Prerequisites

You'll need this software to work with Microsoft Store for Business or Education.

### Required

-   IT Pros that are administering Microsoft Store for Business and Education need a browser compatible with Microsoft Store for Business and Education running on a PC or mobile device. Supported browsers include: Internet Explorer 10 or later, Microsoft Edge, or current versions of Chrome or Firefox. Javascript needs to be supported and enabled. 
-   Employees using apps from Microsoft Store for Business and Education need at least Windows 10, version 1511 running on a PC or mobile device.

Microsoft Azure Active Directory (AD) or Office 365 accounts for your employees:
-   IT Pros need Azure AD or Office 365 accounts to sign up for Microsoft Store for Business and Education, and then to sign in, get apps, distribute apps, and manage app licenses.
-   Employees need Azure AD accounts when they access Microsoft Store for Business or Education content from Windows-based devices.
-   If you use a management tool to distribute and manage online-licensed apps, all employees will need an Azure AD account.

For more information on Azure AD, see [About Office 365 and Azure Active Directory](https://go.microsoft.com/fwlink/p/?LinkId=708612), and [Intro to Azure: identity and access](https://go.microsoft.com/fwlink/p/?LinkId=708611).

### Optional

While not required, you can use a management tool to distribute and manage apps. Using a management tool allows you to distribute content, scope app availability, and control when app updates are installed. This might make sense for larger organizations that already use a management tool. If you're considering using management tools, check with the management tool vendor to see if they support Microsoft Store for Business and Education. The management tool will need to:

-   Integrate with the Windows 10 management framework and Azure AD.
-   Sync with Microsoft Store for Business and Education inventory to distribute apps.

## Proxy configuration

If your organization restricts computers on your network from connecting to the Internet, there is a set of URLs that need to be available for devices to use Microsoft Store. Some of the Microsoft Store features use Store services. Devices using Microsoft Store – either to acquire, install, or update apps – will need access to these URLs. If you use a proxy server to block traffic, your configuration needs to allow these URLs:

- login.live.com
- login.windows.net
- account.live.com
- clientconfig.passport.net
- windowsphone.com
- \*.wns.windows.com
- \*.microsoft.com
- \*.s-microsoft.com
- www.msftncsi.com (prior to Windows 10, version 1607)
- www.msftconnecttest.com/connecttest.txt (replaces www.msftncsi.com
  starting with Windows 10, version 1607)
 

 






---
title: Prerequisites for Windows Store for Business (Windows 10)
description: There are a few prerequisites for using Windows Store for Business.
ms.assetid: CEBC6870-FFDD-48AD-8650-8B0DC6B2651D
ms.prod: W10
ms.mktglfcycl: manage
ms.sitesec: library
author: TrudyHa
---

# Prerequisites for Windows Store for Business


**Applies to**

-   Windows 10
-   Windows 10 Mobile

There are a few prerequisites for using Windows Store for Business.

## Prerequisites


You'll need this software to work with Store for Business.

### Required

-   IT Pros that are administering Store for Business need a browser compatible with Store for Business running on a PC or mobile device. Supported browsers include: Internet Explorer 10 or later, Microsoft Edge, or current versions of Chrome or Firefox.

-   Employees using apps from Store for Business need Windows 10, version 1511 running on a PC or mobile device.

Microsoft Azure Active Directory (AD) accounts for your employees:

-   IT Pros need Azure AD accounts to sign up for Store for Business, and then to sign in, get apps, distribute apps, and manage app licenses.

-   Employees need Azure AD accounts when they access Store for Business content from Windows-based devices.

-   If you use a management tool to distribute and manage online-licensed apps, all employees will need an Azure AD account.

For more information on Azure AD, see [About Office 365 and Azure Active Directory](http://go.microsoft.com/fwlink/p/?LinkId=708612), and [Intro to Azure: identity and access](http://go.microsoft.com/fwlink/p/?LinkId=708611).

### Optional

While not required, you can use a management tool to distribute and manage apps. Using a management tool allows you to distribute content, scope app availability, and control when app updates are installed. This might make sense for larger organizations that already use a management tool. If you're considering using management tools, check with the management tool vendor to see if they support Store for Business. The management tool will need to:

-   Integrate with the Windows 10 management framework and Azure AD.

-   Sync with the Store for Business inventory to distribute apps.

### Proxy configuration

If your organization restricts computers on your network from connecting to the Internet, there is a set of URLs that need to be available for devices to use Store for Business. Some of the Store for Business features use Windows Store app and Windows Store services. Devices using Store for Business – either to acquire, install, or update apps – will need access to these URLs. If you use a proxy server to block traffic, your configuration needs to allow these URLs:

-   login.live.com

-   login.windows.net

-   account.live.com

-   clientconfig.passport.net

-   windowsphone.com

-   \*.wns.windows.com

-   \*.microsoft.com

-   \*.msftncsi.com/ncsi.txt

 

 






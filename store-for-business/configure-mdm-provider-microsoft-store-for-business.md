---
title: Configure an MDM provider (Windows 10)
description: For companies or organizations using mobile device management (MDM) tools, those tools can synchronize with Microsoft Store for Business inventory to manage apps with offline licenses.
ms.assetid: B3A45C8C-A96C-4254-9659-A9B364784673
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
ms.date: 1/6/2018
---

# Configure an MDM provider

**Applies to**
-   Windows 10
-   Windows 10 Mobile

For companies or organizations using mobile device management (MDM) tools, those tools can synchronize with Microsoft Store for Business inventory to manage apps with offline licenses. Store for Business management tool services work with your third-party management tool to manage content.

Your management tool needs to be installed and configured with Azure AD, in the same directory that you are using for Store for Business. Once that's done, you can configure it to work with Store for Business

**To configure a management tool in Azure AD**

1. Sign in to the Azure Portal as an Administrator.
2. Click **Azure Active Directory**, and then choose your directory.
4. Click **Mobility (MDM and MAM)**.  
3. Click **+Add Applications**, find the application, and add it to your directory.

After your management tool is added to your Azure AD directory, you can configure it to work with Microsoft Store. You can configure multiple management tools - just repeat the following procedure.

**To configure a management tool in Microsoft Store for Business**

1. Sign in to the [Store for Business](https://businessstore.microsoft.com) or [Store for Education](https://educationstore.microsoft.com)
2. Click **Manage**, click **Settings**.
3. Under **Distribute**, click **Management tools**.
3. From the list of MDM tools, select the one you want to synchronize with Microsoft Store, and then click **Activate.**

Your MDM tool is ready to use with Microsoft Store. To learn how to configure synchronization and deploy apps, see these topics:
- [Manage apps you purchased from Microsoft Store for Business with Microsoft Intune](https://docs.microsoft.com/intune-classic/deploy-use/manage-apps-you-purchased-from-the-windows-store-for-business-with-microsoft-intune)
- [Manage apps from Microsoft Store for Business with System Center Configuration Manager](https://docs.microsoft.com/sccm/apps/deploy-use/manage-apps-from-the-windows-store-for-business)

For third-party MDM providers or management servers, check your product documentation.

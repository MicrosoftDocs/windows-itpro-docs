---
title: Set up and test Cortana in Windows 10, versions 1909 and earlier, with Microsoft 365 in your organization
description: Learn how to connect Cortana to Office 365 so employees are notified about regular meetings and unusual events. You can even set an alarm for early meetings.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.date: 10/05/2017
ms.reviewer: 
manager: dansimp
---

# Set up and test Cortana in Windows 10, versions 1909 and earlier, with Microsoft 365 in your organization


## What can you do with in Windows 10, versions 1909 and earlier?
Your employees can use Cortana to help manage their day and be more productive by getting quick answers to common questions, setting reminders, adding tasks to their To-Do lists, and find out where their next meeting is.

**See also:**

[Known issues for Windows Desktop Search and Cortana in Windows 10](https://support.microsoft.com/help/3206883/known-issues-for-windows-desktop-search-and-cortana-in-windows-10).

### Before you begin
There are a few things to be aware of before you start using Cortana in Windows 10, versions 1909 and earlier.

- **Azure Active Directory (Azure AD) account.** Before your employees can use Cortana in your org, they must be logged in using their Azure AD account through Cortana&#39;s notebook. They must also authorize Cortana to access Microsoft 365 on their behalf.

- **Office 365 Trust Center.** Cortana in Windows 10, version 1909 and earlier, isn&#39;t a service governed by the [Online Services Terms](https://www.microsoft.com/en-us/licensing/product-licensing/products). [Learn more about how Cortana in Windows 10, versions 1909 and earlier, treats your data](https://support.microsoft.com/en-us/help/4468233/cortana-and-privacy-microsoft-privacy).

- Windows Information Protection (WIP). If you want to secure the calendar, email, and contact info provided to Cortana on a device, you can use WIP. For more info about WIP, see [Protect your enterprise data using Windows Information Protection (WIP)](https://docs.microsoft.com/windows/threat-protection/windows-information-protection/protect-enterprise-data-using-wip). If you decide to use WIP, you must also have a management solution. This can be Microsoft Intune, Microsoft Endpoint Manager (version 1606 or later), or your current company-wide 3rd party mobile device management (MDM) solution.

- **Troubleshooting tips.** If you run into issues, check out these [troubleshooting tips](https://go.microsoft.com/fwlink/p/?LinkId=620763).

### Turn on Cortana enterprise services on employees' devices
Your employees must connect Cortana to their Microsoft 365 account to be able to use skills like email and calendar.

#### Turn on Cortana enterprise services

1. Select the **Cortana** search box in the taskbar, and then select the **Notebook** icon.

2. Select **Manage Skills** , select **Manage accounts** , and under **Microsoft 365** select **Link**. The employee will be directed to sign into their Microsoft 365 account.

3. The employee can also disconnect by selecting **Microsoft 365**, then **Unlink**.

#### Turn off Cortana enterprise services
Cortana in Windows 10, versions 1909 and earlier can only access data in your Microsoft 365 organization when it's turned on. If you don't want Cortana to access your corporate data, you can turn it off in the Microsoft 365 admin center.

1. Sign into the [Microsoft 365 admin center](https://admin.microsoft.com/) using your admin account.

2. Select the app launcher icon in the upper-left and choose  **Admin**.

3. Expand **Settings** and select **Org Settings**.

4. Select **Cortana** to toggle Cortana&#39;s access to Microsoft 365 data off.
---
title: Determine the Windows Information Protection (WIP) context for an app (Windows 10)
description: Use the Task Manager to determine whether an app is considered work, personal or exempt by Windows Information Protection (WIP).
keywords: WIP, Windows Information Protection, EDP, Enterprise Data Protection, WIP and Task Manager, app context
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
localizationpriority: high
---

# Determine the Windows Information Protection (WIP) Enterprise Context for an app
**Applies to:**

-   Windows 10, version 1607
-   Windows 10 Mobile

>Learn more about what features and functionality are supported in each Windows edition at [Compare Windows 10 Editions](https://www.microsoft.com/en-us/WindowsForBusiness/Compare).

Check the context of your apps while running in Windows Information Protection (WIP) to make sure that your organization's policies are applied and running correctly. Using Task Manager you can now see a specific app's context, including Work, Personal, or Exempt.

>[!IMPORTANT]
>Enlightened apps can change between Work and Personal, depending on the data being touched. For example, Microsoft Word 2016 shows as **Personal** when an employee opens a personal letter, but changes to **Work** when that same employee opens the company financials.

Viewing the Enterprise Context column in Task Manager

Steps to enable:
Go to task manager > Details  tab, right click to select columns
 
Add “Enterprise Context” column to see which mode your app is running in. 

Work – Corp.microsoft.com can freely touch and open work data and resources
Personal – Personal, not allowed to touch work data
Exempt – WIP policies does not apply to these apps, most likely system components







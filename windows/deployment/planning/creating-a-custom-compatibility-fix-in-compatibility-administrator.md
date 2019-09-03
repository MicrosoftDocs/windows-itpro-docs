---
title: Creating a Custom Compatibility Fix in Compatibility Administrator (Windows 10)
description: The Compatibility Administrator tool uses the term fix to describe the combination of compatibility information added to a customized database for a specific application.
ms.assetid: e4f2853a-0e46-49c5-afd7-0ed12f1fe0c2
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: appcompat
ms.sitesec: library
audience: itpro
author: greg-lindsay
ms.topic: article
---

# Creating a Custom Compatibility Fix in Compatibility Administrator


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

The Compatibility Administrator tool uses the term *fix* to describe the combination of compatibility information added to a customized database for a specific application. This combination can include single application fixes, groups of fixes that work together as a compatibility mode, and blocking and non-blocking AppHelp messages.

>[!IMPORTANT]  
>Fixes apply to a single application only; therefore, you must create multiple fixes if you need to fix the same issue in multiple applications.

 

## What is a Compatibility Fix?


A compatibility fix, previously known as a shim, is a small piece of code that intercepts API calls from applications. The fix transforms the API calls so that the current version of the operating system supports the application in the same way as previous versions of the operating system. This can mean anything from disabling a new feature in the current version of the operating system to emulating a particular behavior of an older version of the Windows API.

## Searching for Existing Compatibility Fixes


The Compatibility Administrator tool has preloaded fixes for many common applications, including known compatibility fixes, compatibility modes, and AppHelp messages. Before you create a new compatibility fix, you can search for an existing application and then copy and paste the known fixes into your customized database.

>[!IMPORTANT]
>Application Compatibility Toolkit (ACT) installs a 32-bit and a 64-bit version of the Compatibility Administrator tool. You must use the 32-bit version to create custom databases for 32-bit applications and the 64-bit version to create custom databases for 64-bit applications.

 

**To search for an existing application**

1.  In the left-side pane of Compatibility Administrator, expand the **Applications** folder and search for your application name.

2.  Click the application name to view the preloaded compatibility fixes, compatibility modes, or AppHelp messages.

## Creating a New Compatibility Fix


If you are unable to find a preloaded compatibility fix for your application, you can create a new one for use by your customized database.

**To create a new compatibility fix**

1.  In the left-side pane of Compatibility Administrator underneath the **Custom Databases** heading, right-click the name of the database to which you want to apply the compatibility fix, click **Create New**, and then click **Application Fix**.

2.  Type the name of the application to which the compatibility fix applies, type the name of the application vendor, browse to the location of the application file (.exe) on your computer, and then click **Next**.

3.  Select the operating system for which your compatibility fix applies, click any applicable compatibility modes to apply to your compatibility fix, and then click **Next**.

4.  Select any additional compatibility fixes to apply to your compatibility fix, and then click **Next**.

5.  Select any additional criteria to use to match your applications to the AppHelp message, and then click **Finish**.

    By default, Compatibility Administrator selects the basic matching criteria for your application. As a best practice, use a limited set of matching information to represent your application, because it reduces the size of the database. However, make sure you have enough information to correctly identify your application.

## Related topics
[Compatibility Administrator User's Guide](compatibility-administrator-users-guide.md)

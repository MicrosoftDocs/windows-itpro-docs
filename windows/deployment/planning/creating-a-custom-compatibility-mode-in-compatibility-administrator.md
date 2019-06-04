---
title: Creating a Custom Compatibility Mode in Compatibility Administrator (Windows 10)
description: Windows® provides several compatibility modes, groups of compatibility fixes found to resolve many common application-compatibility issues.
ms.assetid: 661a1c0d-267f-4a79-8445-62a9a98d09b0
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: appcompat
ms.sitesec: library
author: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Creating a Custom Compatibility Mode in Compatibility Administrator


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

Windows® provides several *compatibility modes*, groups of compatibility fixes found to resolve many common application-compatibility issues. While working with Compatibility Administrator, you might decide to group some of your individual compatibility fixes into a custom-compatibility mode, which you can then deploy and use on any of your compatibility databases.

## What Is a Compatibility Mode?


A compatibility mode is a group of compatibility fixes. A compatibility fix, previously known as a shim, is a small piece of code that intercepts API calls from applications. The fix transforms the API calls so that the current version of the operating system supports the application in the same way as previous versions of the operating system. This can be anything from disabling a new feature in Windows to emulating a particular behavior of an older version of the Windows API.

## Searching for Existing Compatibility Modes


The Compatibility Administrator tool has preloaded fixes for many common applications, including known compatibility fixes, compatibility modes, and AppHelp messages. Before you create a new compatibility mode, you can search for an existing application and then copy and paste the known fixes into your custom database.

**Important**  
Application Compatibility Toolkit (ACT) installs a 32-bit and a 64-bit version of the Compatibility Administrator tool. You must use the 32-bit version to create custom databases for 32-bit applications and the 64-bit version to create custom databases for 64-bit applications.

 

**To search for an existing application**

1.  In the left-side pane of Compatibility Administrator, expand the **Applications** folder and search for your application name.

2.  Click the application name to view the preloaded compatibility modes, compatibility fixes, or AppHelp messages.

## Creating a New Compatibility Mode


If you are unable to find a preloaded compatibility mode for your application, you can create a new one for use by your custom database.

**Important**  
A compatibility mode includes a set of compatibility fixes and must be deployed as a group. Therefore, you should include only fixes that you intend to deploy together to the database.

 

**To create a new compatibility mode**

1.  In the left-side pane of Compatibility Administrator, underneath the **Custom Databases** heading, right-click the name of the database to which you will apply the compatibility mode, click **Create New**, and then click **Compatibility Mode**.

2.  Type the name of your custom-compatibility mode into the **Name of the compatibility mode** text box.

3.  Select each of the available compatibility fixes to include in your custom-compatibility mode and then click **&gt;**.

    **Important**  
    If you are unsure which compatibility fixes to add, you can click **Copy Mode**. The **Select Compatibility Mode** dialog box appears and enables you to select from the preloaded compatibility modes. After you select a compatibility mode and click **OK**, any compatibility fixes that are included in the preloaded compatibility mode will be automatically added to your custom-compatibility mode.

     

    If you have any compatibility fixes that require additional parameters, you can select the fix, and then click **Parameters**. The **Options for &lt;Compatibility\_Fix\_Name&gt;** dialog box appears, enabling you to update the parameter fields.

4.  After you are done selecting the compatibility fixes to include, click **OK**.

    The compatibility mode is added to your custom database.

## Related topics
[Compatibility Administrator User's Guide](compatibility-administrator-users-guide.md)

 

 






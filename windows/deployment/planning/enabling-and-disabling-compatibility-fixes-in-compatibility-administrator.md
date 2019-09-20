---
title: Enabling and Disabling Compatibility Fixes in Compatibility Administrator (Windows 10)
description: You can disable and enable individual compatibility fixes in your customized databases for testing and troubleshooting purposes.
ms.assetid: 6bd4a7c5-0ed9-4a35-948c-c438aa4d6cb6
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

# Enabling and Disabling Compatibility Fixes in Compatibility Administrator


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

You can disable and enable individual compatibility fixes in your customized databases for testing and troubleshooting purposes.

## Disabling Compatibility Fixes

Customized compatibility databases can become quite complex as you add your fixes for the multiple applications found in your organization. Over time, you may find you need to disable a particular fix in your customized database. For example, if a software vendor releases a fix for an issue addressed in one of your compatibility fixes, you must validate that the vendor's fix is correct and that it resolves your issue. To do this, you must temporarily disable the compatibility fix and then test your application.

>[!IMPORTANT]
>Application Compatibility Toolkit (ACT) installs a 32-bit and a 64-bit version of the Compatibility Administrator tool. You must use the 32-bit version to work with custom databases for 32-bit applications and the 64-bit version to work with custom databases for 64-bit applications.

 

**To disable a compatibility fix within a database**

1.  In the left-sde pane of Compatibility Administrator, expand the custom database that includes the compatibility fix that you want to disable, and then select the specific compatibility fix.

    The compatibility fix details appear in the right-hand pane.

2.  On the **Database** menu, click **Disable Entry**.

    **Important**  
    When you disable an entry, it will remain disabled even if you do not save the database file.

     

## Enabling Compatibility Fixes


You can enable your disabled compatibility fixes at any time.

**To enable a compatibility fix within a database**

1.  In the left-side pane of Compatibility Administrator, expand the custom database that includes the compatibility fix that you want to enable, and then select the specific compatibility fix.

    The compatibility fix details appear in the right-side pane.

2.  On the **Database** menu, click **Enable Entry**.

## Related topics

[Compatibility Administrator User's Guide](compatibility-administrator-users-guide.md)

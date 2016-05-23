---
title: Troubleshooting the ACT Configuration Wizard (Windows 10)
description: When you start Application Compatibility Manager (ACM) for the first time, the Application Compatibility Toolkit (ACT) Configuration Wizard appears.
ms.assetid: f4f489c7-50b7-4b07-8b03-79777e1aaefd
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: appcompat
ms.sitesec: library
author: TrudyHa
---

# Troubleshooting the ACT Configuration Wizard


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

When you start Application Compatibility Manager (ACM) for the first time, the Application Compatibility Toolkit (ACT) Configuration Wizard appears. The wizard helps you configure your ACT database, your shared folder for ACT log files, and your ACT Log Processing Service account.

## Selecting a Configuration for ACM


The **Enterprise configuration** option enables all ACT functionality. You must be an administrator on the local computer to select this option.

The **View and manage reports only** option enables you to use ACM to create data-collection packages and analyze your data. You cannot access the ACT Log Processing Service. This option assumes that another computer in your organization is processing the logs and loading the compatibility data into the ACT database.

## Configuring ACT Database Settings


To configure ACT database settings in the ACT Configuration Wizard, you must have read and write permissions to the ACT database. For more information, see [ACT Database Configuration](act-database-configuration.md). If you do not have the appropriate permissions, contact your Microsoft® SQL Server® administrator. For more information, see [Troubleshooting ACT Database Issues](troubleshooting-act-database-issues.md).

## Configuring the ACT Log Processing Service


If you use the Local System account to run the ACT Log Processing Service, your user account must be an Administrator account. Your computer account *&lt;domain&gt;*\\*&lt;computer&gt;*$ must have read and write permissions to the ACT database.

Your user account must also have **Log on as a service** permissions. For more information, see [Troubleshooting the ACT Log Processing Service](troubleshooting-the-act-log-processing-service.md).

## Configuring the Share for the ACT Log Processing Service


For information about how to configure the share for the ACT Log Processing Service, see [ACT LPS Share Permissions](act-lps-share-permissions.md).

## Changing Settings After You Finish the ACT Configuration Wizard


In the **Settings** dialog box in ACM, you can change some of the settings that you see in the ACT Configuration Wizard. You can also change other settings that are not available in the wizard. For more information, see [Settings for ACM](settings-for-acm.md).

## Restarting the ACT Configuration Wizard


If you cancel the configuration process before you reach the final page of the ACT Configuration Wizard, your settings are deleted and the wizard restarts the next time that you start ACM.

## Related topics


[Configuring ACT](configuring-act.md)

[Using ACT](using-act.md)

[Troubleshooting ACT](troubleshooting-act.md)

 

 






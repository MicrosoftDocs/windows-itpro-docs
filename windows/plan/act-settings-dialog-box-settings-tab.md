---
title: Settings Dialog Box - Settings Tab (Windows 10)
description: To display the Settings dialog box, in Application Compatibility Manager (ACM), on the Tools menu, click Settings.
ms.assetid: aeec1647-cf91-4f8b-9f6d-dbf4b898d901
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: library
author: TrudyHa
---

# Settings Dialog Box - Settings Tab


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

To display the **Settings** dialog box, in Application Compatibility Manager (ACM), on the **Tools** menu, click **Settings**.

In the **Settings** dialog box, on the **Settings** tab, use the following controls to modify the settings for your ACT database and ACT Log Processing Service.

<a href="" id="sql-server"></a>**SQL Server**  
Lists the database server name for the SQL Server database server that contains your ACT database.

Click **Browse** to search for available database servers. A **Select Server** dialog box appears from which you can select the database server that contains your ACT database.

<a href="" id="database"></a>**Database**  
Lists the database name of your ACT database.

<a href="" id="change"></a>**Change**  
Opens the user interface where you can create, open, or migrate an ACT database.

<a href="" id="this-computer-is-configured-as-a-log-processing-service"></a>**This computer is configured as a Log Processing Service**  
If selected, indicates that this computer is used for the ACT Log Processing Service. Clear this check box to use a different computer to process the logs.

If there is no designated ACT Log Processing Service, log processing defaults to the local computer.

<a href="" id="log-processing-service-account"></a>**Log Processing Service Account**  
Specifies the account information, including the account type and account credentials, to be used to start the ACT Log Processing Service.

The account must have read and write access to the ACT database. For information about setting up database permissions for the ACT Log Processing Service, see [Troubleshooting ACT Database Issues](troubleshooting-act-database-issues.md).

<a href="" id="log-share"></a>**Log Share**  
Specifies the absolute path to the ACT Log Processing Service share where log files are processed. Click **Browse** to search for a location. The **Share as** box automatically updates to show the directory name.

For information about ensuring that all computers can access the share, see [Troubleshooting the ACT Log Processing Service](troubleshooting-the-act-log-processing-service.md).

## Related topics


[Settings Dialog Box - Preferences Tab](act-settings-dialog-box-preferences-tab.md)

 

 






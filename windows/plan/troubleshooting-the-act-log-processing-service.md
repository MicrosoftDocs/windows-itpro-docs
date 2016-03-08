---
title: Troubleshooting the ACT Log Processing Service (Windows 10)
description: The following solutions may help you resolve issues that are related to the Application Compatibility Toolkit (ACT) Log Processing Service.
ms.assetid: cb6f90c2-9f7d-4a34-a91e-8ed55b8c256d
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: library
author: TrudyHa
---

# Troubleshooting the ACT Log Processing Service


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

**In this article**

-   [Reviewing Files in ACT Log File Format](#reviewing_files_in_act_log_file_format)
-   [Uploading Files to the ACT Log Processing Service Share After Setting Permissions](#uploading_files_to_the_act_log_processing_service_share_after_setting_permissions)
-   [Working Around Windows Firewall on the Computer That Hosts the ACT Log Processing Service Share](#working_around_windows_firewall_on_the_computer_that_hosts_the_act_log_processing_service_share)
-   [Viewing and Assigning "Log on as a service" Permissions](#viewing_and_assigning__log_on_as_a_service__permissions)
-   [Starting the ACT Log Processing Service](#starting_the_act_log_processing_service)
-   [Related topics](#related_topics)

The following solutions may help you resolve issues that are related to the Application Compatibility Toolkit (ACT) Log Processing Service.

For information about how to set up permissions for the service, see [ACT LPS Share Permissions](act-lps-share-permissions.md).

## Reviewing Files in ACT Log File Format


When you are reviewing log files for ACT, be aware that the log files are in Unicode format.

## Uploading Files to the ACT Log Processing Service Share After Setting Permissions


If you cannot upload files to the ACT Log Processing Service share, you must first verify that the account permissions are set correctly for the share. For more information, see [ACT LPS Share Permissions](act-lps-share-permissions.md).

If the computers from which you are collecting data and the ACT Log Processing Service share are on different domains, or if the computers are not domain members, you must take additional steps. For the **Anonymous** group, provide explicit write permissions to the ACT Log Processing Service share. Alternatively, you can provide similar permissions to the **Authenticated users** group if you do not want to enable anonymous access. For more information, see [Everyone Group Does Not Include Anonymous Security Identifier](http://go.microsoft.com/fwlink/p/?LinkId=79830).

If you are collecting data from computers that are running Microsoft® Windows® 2000 and you are uploading your collected data to a different domain, you must also explicitly enable null session access for the ACT Log Processing Service share.

## Working Around Windows Firewall on the Computer That Hosts the ACT Log Processing Service Share


If your organization has configured Windows Firewall on the computer that hosts your ACT Log Processing Service share, log files will not be copied to your share. To work around this issue, you can use one of the following methods:

-   Before you set up the ACT Log Processing Service share, turn off Windows Firewall on the computer that will host the share.

-   Continue to use Windows Firewall, but enable the **File Sharing** option.

## Viewing and Assigning "Log on as a service" Permissions


Starting the ACT Log Processing Service requires either a Local System account or a user account. For a user account to start the ACT Log Processing Service and complete the ACT Configuration Wizard, the *&lt;domain&gt;*\\*&lt;user&gt;* account must have **Log on as a service** permissions. By default, these permissions are assigned to built-in computer accounts, such as the Local System account.

**To add rights to a user account for logging on as a service**

1.  In Control Panel, double-click **Administrative Tools**, and then double-click **Local Security Policy**.

2.  Expand the **Local Policies** folder, and then click **User Rights Assignment**.

3.  Double-click the **Log on as a service** policy.

4.  Verify that your *&lt;domain&gt;*\\*&lt;user&gt;* account appears. If it does not appear, click **Add User or Group**.

5.  Add your user account information, click **OK**, and then click **OK** again.

## Starting the ACT Log Processing Service


If the ACT Log Processing Service does not start and log files are not being processed, the reason may be one of the following:

-   **A conflict exists between ACT and the Microsoft® SQL Server® database.** If both ACT and the SQL Server database are on the same computer, the ACT Log Processing Service might have started before the SQL Server service.

-   **The ACT Log Processing Service does not have the correct permissions to the ACT database.** To investigate, see [Troubleshooting ACT Database Issues](troubleshooting-act-database-issues.md).

-   **The account type is incorrect for the account that is running the ACT Log Processing Service.** The ACT Log Processing Service account must be an Administrator account.

**To manually restart the ACT Log Processing Service**

1.  In Control Panel, double-click **Administrative Tools**, and then double-click **Services**.

2.  Right-click **ACT Log Processing Service**, and then click **Restart**.

3.  In the event log, verify that no issues occurred when the service restarted.

## Related topics


[Troubleshooting ACT Database Issues](troubleshooting-act-database-issues.md)

[Configuring ACT](configuring-act.md)

[Software Requirements for ACT](software-requirements-for-act.md)

 

 






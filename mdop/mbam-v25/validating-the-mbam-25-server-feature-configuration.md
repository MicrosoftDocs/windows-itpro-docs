---
title: Validating the MBAM 2.5 Server Feature Configuration
description: Validating the MBAM 2.5 Server Feature Configuration
author: dansimp
ms.assetid: f4983a33-ce18-4186-a471-dd6415940504
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Validating the MBAM 2.5 Server Feature Configuration


When you finish the Microsoft BitLocker Administration and Monitoring (MBAM) 2.5 Server feature deployment, we recommend that you validate the deployment to ensure that all features have been successfully configured. Use the procedure that matches the topology (Stand-alone or System Center Configuration Manager Integration) that you deployed.

## Validating the MBAM Server deployment with the Stand-alone topology


Use the following steps to validate your MBAM Server deployment with the Stand-alone topology.

**To validate a Stand-alone MBAM Server deployment**

1.  On each server where an MBAM feature is deployed, click **Control Panel** &gt; **Programs** &gt; **Programs and Features**. Verify that **Microsoft BitLocker Administration and Monitoring** appears in the **Programs and Features** list.

    **Note**  
    To do the validation, you must use a domain account that has local computer administrative credentials on each server.



2.  On the server where the Recovery Database is configured, open SQL Server Management Studio and verify that the **MBAM Recovery and Hardware** database is configured.

3.  On the server where the Compliance and Audit Database is configured, open SQL Server Management Studio and verify that the **MBAM Compliance Status Database** is configured.

4.  On the server where the Reports feature is configured, open a web browser with administrative credentials and browse to the "Home" of the SQL Server Reporting Services site.

    The default Home location of a SQL Server Reporting Services site instance is at:

    http(s)://&lt; *MBAMReportsServerName*&gt;:&lt;*port*&gt;/Reports.aspx

    To find the actual URL, use the Reporting Services Configuration Manager tool and select the instances that you specified during setup.

5.  Confirm that a reports folder named **Microsoft BitLocker Administration and Monitoring** contains a data source called **MaltaDataSource** as well as the language folders. The data source contains folders with names that represent languages (for example, en-us). The reports are in the language folders.

    **Note**  
    If SQL Server Reporting Services (SSRS) was configured as a named instance, the URL should resemble the following: http(s)://&lt; *MBAMReportsServerName*&gt;:&lt;*port*&gt;/Reports\_&lt;*SSRSInstanceName*&gt;



~~~
**Note**  
If SSRS was not configured to use Secure Socket Layer (SSL), the URL for the reports will be set to HTTP instead of HTTPS when you install the MBAM Server. If you then go to the Administration and Monitoring Website (also known as Help Desk) and select a report, the following message appears: "Only Secure Content is Displayed." To show the report, click **Show All Content**.
~~~



6. On the server where the Administration and Monitoring Website feature is configured, run **Server Manager**, browse to **Roles**, and then select **Web Server (IIS)** &gt; **Internet Information Services (IIS) Manager**.

7. In **Connections**, browse to *&lt;computer name&gt;* and select **Sites** &gt; **Microsoft BitLocker Administration and Monitoring**. Verify that the following are listed:

   -   **MBAMAdministrationService**

   -   **MBAMComplianceStatusService**

   -   **MBAMRecoveryAndHardwareService**

8. On the server where the Administration and Monitoring Website and Self-Service Portal are configured, open a web browser with administrative credentials.

9. Browse to the following websites to verify that they load successfully:

   -   https(s)://&lt;*MBAMAdministrationServerName*&gt;:&lt;*port*&gt;/HelpDesk/ - confirm each of the links for navigation and reports

   -   http(s)://&lt; *MBAMAdministrationServerName*&gt;:&lt;*port*&gt;/SelfService/

   **Note**  
   It is assumed that you configured the server features on the default port without network encryption. If you configured the server features on a different port or virtual directory, change the URLs to include the appropriate port, for example:

   http(s)://&lt; *host name*&gt;:&lt;*port*&gt;/HelpDesk/

   http(s)://&lt; *host name*&gt;:&lt;*port*&gt;/&lt;*virtualdirectory*&gt;/

   If the server features were configured with network encryption, change http:// to https://.



10. Browse to the following web services to verify that they load successfully. A page opens to indicate that the service is running, but the page does not display any metadata.

   -   http(s)://&lt; *MBAMAdministrationServerName*&gt;:&lt;*port*&gt;/MBAMAdministrationService/AdministrationService.svc

   -   http(s)://&lt; *MBAMAdministrationServerName*&gt;:&lt;*port*&gt;/MBAMUserSupportService/UserSupportService.svc

   -   http(s)://&lt; *MBAMAdministrationServerName*&gt;:&lt;*port*&gt;/MBAMComplianceStatusService/StatusReportingService.svc

   -   http(s)://&lt; *MBAMAdministrationServerName*&gt;:&lt;*port*&gt;/MBAMRecoveryAndHardwareService/CoreService.svc

## Validating the MBAM Server deployment with the Configuration Manager Integration topology


Use the following steps to validate your MBAM deployment with the Configuration Manager Integration topology. Complete the validation steps that match the version of Configuration Manager that you are using.

### <a href="" id="validating-the-mbam-server-deployment-with-system-center-2012-configuration-manager-"></a>Validating the MBAM Server deployment with System Center 2012 Configuration Manager

Use these steps to validate your MBAM Server deployment when you are using MBAM with System Center 2012 Configuration Manager.

**To validate a Configuration Manager Integration MBAM Server deployment – System Center 2012 Configuration Manager**

1.  On the server where System Center 2012 Configuration Manager is deployed, open **Programs and Features** in **Control Panel**, and verify that **Microsoft BitLocker Administration and Monitoring** appears.

    **Note**  
    To validate the configuration, you must use a domain account that has local computer administrative credentials on each server.



2.  In the Configuration Manager console, click the **Assets and Compliance** workspace &gt; **Device Collections**, and confirm that a new collection called **MBAM Supported Computers** is displayed.

3.  In the Configuration Manager console, click the **Monitoring** workspace &gt; **Reporting** &gt; **Reports** &gt; **MBAM**.

4.  Verify that the **MBAM** folder contains subfolders, with names that represent different languages, and that the following reports are listed in each language subfolder:

    -   BitLocker Computer Compliance

    -   BitLocker Enterprise Compliance Dashboard

    -   BitLocker Enterprise Compliance Details

    -   BitLocker Enterprise Compliance Summary

5.  In the Configuration Manager console, click the **Assets and Compliance** workspace &gt; **Compliance Settings** &gt; **Configuration Baselines**, and confirm that the configuration baseline **BitLocker Protection** is listed.

6.  In the Configuration Manager console, click the **Assets and Compliance** workspace &gt; **Compliance Settings** &gt; **Configuration Items**, and confirm that the following new configuration items are displayed:

    -   BitLocker Fixed Data Drives Protection

    -   BitLocker Operating System Drive Protection

### Validating the MBAM Server deployment with Configuration Manager 2007

Use these steps to validate your MBAM Server deployment when you are using MBAM with Configuration Manager 2007.

**To validate a Configuration Manager Integration MBAM Server deployment – Configuration Manager 2007**

1.  On the server where Configuration Manager 2007 is deployed, open **Programs and Features** on **Control Panel** , and verify that **Microsoft BitLocker Administration and Monitoring** appears.

    **Note**  
    To validate the configuration, you must use a domain account that has local computer administrative credentials on each server.



2.  In the Configuration Manager console, click **Site Database &lt;SiteCode&gt; - &lt;ServerName&gt;, &lt;SiteName&gt;), Computer Management**, and confirm that a new collection called **MBAM Supported Computers** is displayed.

3.  In the Configuration Manager console, click **Reporting** &gt; **Reporting Services** &gt; **\\\\&lt;ServerName&gt;** &gt; **Report Folders** &gt; **MBAM**.

    Verify that the **MBAM** folder contains subfolders, with names that represent different languages, and that the following reports are listed in each language subfolder:

    -   BitLocker Computer Compliance

    -   BitLocker Enterprise Compliance Dashboard

    -   BitLocker Enterprise Compliance Details

    -   BitLocker Enterprise Compliance Summary

4.  In the Configuration Manager console, click **Desired Configuration Management** &gt; **Configuration Baselines**, and confirm that the configuration baseline **BitLocker Protection** is listed.

5.  In the Configuration Manager console, click **Desired Configuration Management** &gt; **Configuration Items**, and confirm that the following new configuration items are displayed:

    -   BitLocker Fixed Data Drives Protection

    -   BitLocker Operating System Drive Protection



## Related topics


[Configuring the MBAM 2.5 Server Features](configuring-the-mbam-25-server-features.md)


## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).







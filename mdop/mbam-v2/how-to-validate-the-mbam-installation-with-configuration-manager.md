---
title: How to Validate the MBAM Installation with Configuration Manager
description: How to Validate the MBAM Installation with Configuration Manager
author: msfttracyp
ms.assetid: 8e268539-91c3-4e8a-baae-faf3605da818
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Validate the MBAM Installation with Configuration Manager


After installing Microsoft BitLocker Administration and Monitoring (MBAM) with Configuration Manager, validate that the installation has successfully set up all the necessary features for MBAM by completing the following steps.

**To validate the MBAM Server feature installation with Configuration Manager**

1.  On the server where System Center Configuration Manager is deployed, open **Control Panel**. Select the program that is used to uninstall or change a program. Verify that **Microsoft BitLocker Administration and Monitoring** appears in the list of programs and features.

    **Note**  
    To validate the installation, you must use a domain account that has local computer administrative credentials on each server.

     

2.  Use the Configuration Manager console to confirm that a new collection, called “MBAM Supported Computers,” is displayed.

    To view the collection with Configuration Manager 2007: Click **Site Database** (&lt;**SiteCode**&gt; - &lt;**ServerName**&gt;, &lt;**SiteName**&gt;), **Computer Management**.

    To view the collection with System Center 2012 Configuration Manager: Click the **Assets and Compliance** workspace, **Device Collections**.

3.  Use the Configuration Manager console to verify that the following reports are listed in the **MBAM** folder:

    -   BitLocker Computer Compliance

    -   BitLocker Enterprise Compliance Dashboard

    -   BitLocker Enterprise Compliance Details

    -   BitLocker Enterprise Compliance Summary

    To view the reports with Configuration Manager 2007: Click **Reporting**, **Reporting Services**, \\\\&lt;**ServerName**&gt;, **Report Folders**

    To view the reports with System Center 2012 Configuration Manager: Click the **Monitoring** workspace, **Reporting**, **Reports**.

4.  Use the Configuration Manager console to confirm that the configuration baseline “BitLocker Protection” is listed.

    To view the configuration baselines with Configuration Manager 2007: Click **Desired Configuration Management**, **Configuration Baselines**.

    To view the configuration baselines with System Center 2012 Configuration Manager: Click the **Assets and Compliance** workspace, **Compliance Settings**, **Configuration Baselines**.

5.  Use the Configuration Manager console to confirm that the following new configuration items are displayed:

    -   BitLocker Fixed Data Drives Protection

    -   BitLocker Operating System Drive Protection

    To view the configuration items with Configuration Manager 2007: Click **Desired Configuration Management**, **Configuration Items**.

    To view the configuration items with System Center 2012 Configuration Manager: Click the **Assets and Compliance** workspace, **Compliance Settings**, **Configuration Items**.

## Related topics


[Deploying MBAM with Configuration Manager](deploying-mbam-with-configuration-manager-mbam2.md)

 

 






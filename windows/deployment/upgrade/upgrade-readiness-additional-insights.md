---
title: Upgrade Readiness - Additional insights
description: Explains additional features of Upgrade Readiness.
ms.prod: w10
author: greg-lindsay
---

# Upgrade Readiness - Additional insights

This topic provides information on additional features that are available in Upgrade Readiness to provide insights into your environment. These include:

- [Site discovery](#site-discovery): An inventory of web sites that are accessed by client computers running Windows 7, Windows 8.1, or Windows 10 using Internet Explorer.
- [Office add-ins](#office-add-ins): A list of the Microsoft Office add-ins that are installed on client computers.

## Site discovery

The site discovery feature in Upgrade Readiness provides an inventory of web sites that are accessed by client computers using Internet Explorer on Windows 7, Windows 8.1, and Windows 10. Site discovery does not include sites that are accessed using other Web browsers, such as Microsoft Edge. Site inventory information is provided as optional data related to upgrading to Windows 10 and Internet Explorer 11, and is meant to help prioritize compatibility testing for web applications. You can make more informed decisions about testing based on usage data.

> [!NOTE] 
> Site discovery data is disabled by default; you can find documentation on what is collected in the [Windows 7, Windows 8, and Windows 8.1 appraiser telemetry events and fields](https://go.microsoft.com/fwlink/?LinkID=822965). After you turn on this feature, data is collected on all sites visited by Internet Explorer, except during InPrivate sessions. In addition, data will be collected on all sites visited by Microsoft Edge on computers running Windows 10 version 1803 (including Insider Preview builds) or newer.  The data collection process is silent, without notification to the employee. You are responsible for ensuring that your use of this feature complies with all applicable local laws and regulatory requirements, including any requirements to provide notice to employees.

### Install prerequisite security update for Internet Explorer

Ensure the following prerequisites are met before using site discovery:

1. Install the prerequisite KBs to add Site Discovery support and the latest fixes from the [Microsoft Update Catalog](http://www.catalog.update.microsoft.com/home.aspx). Install the following:
   - For Windows 7 and Windows 8.1 - March, 2017 (or later) Security Monthly Rollup
   - For Windows 10 - Cumulative Update for Windows 10 Version 1607 (KB4015217) (or later)
2. Enable Internet Explorer data collection, which is disabled by default. The best way to enable it is to modify the [Upgrade Readiness deployment script](upgrade-readiness-deployment-script.md) to allow Internet Explorer data collection before you run it. In addition, to enable Site Discovery on Windows 10 you must set computers to the **Enhanced Telemetry Level** for the Feedback and Diagnostics setting (Privacy > Feedback & Diagnostics settings), and enable **Page Prediction within Internet Explorer 11**.

    If you do not plan to use the Upgrade Readiness deployment script to enable Site discovery, you must create the following registry entry. 

    HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\DataCollection 

    Entry name: IEDataOptIn

    Data type: DWORD

    Values:

    > *IEOptInLevel = 0 Internet Explorer data collection is disabled*
    >
    > *IEOptInLevel = 1 Data collection is enabled for sites in the Local intranet + Trusted sites + Machine local zones*
    >
    > *IEOptInLevel = 2 Data collection is enabled for sites in the Internet + Restricted sites zones*
    >
    > *IEOptInLevel = 3 Data collection is enabled for all sites*

    For more information about Internet Explorer Security Zones, see [About URL Security Zones](https://msdn.microsoft.com/library/ms537183.aspx). 

    ![Create the IEDataOptIn registry key](../images/upgrade-analytics-create-iedataoptin.png)

### Review most active sites

This blade indicates the most visited sites by computers in your environment. Review this list to determine which web applications and sites are used most frequently. The number of visits is based on the total number of views, and not by the number of unique devices accessing a page.

For each site, the fully qualified domain name will be listed. You can sort the data by domain name or by URL. 

![Most active sites](../images/upgrade-analytics-most-active-sites.png) 

Click the name of any site in the list to drill down into more details about the visits, including the time of each visit and the computer name. 

![Site domain detail](../images/upgrade-analytics-site-domain-detail.png)

### Review document modes in use 

This blade provides information about which document modes are used in the sites that are visited in your environment. Document modes are used to provide compatibility with older versions of Internet Explorer. Sites that use older technologies may require additional testing and are less likely to be compatible with Microsoft Edge. Counts are based on total page views and not the number of unique devices. For more information about document modes, see [Deprecated document modes](https://technet.microsoft.com/itpro/internet-explorer/ie11-deploy-guide/deprecated-document-modes).

![Site activity by document mode](../images/upgrade-analytics-site-activity-by-doc-mode.png)

### Run browser-related queries 

You can run predefined queries to capture more info, such as sites that have Enterprise Mode enabled, or the number of unique computers that have visited a site. For example, this query returns the most used ActiveX controls. You can modify and save the predefined queries. 

![](../images/upgrade-analytics-query-activex-name.png)

## Office add-ins

Office add-ins provides a list of the Microsoft Office add-ins in your environment, and enumerates the computers that have these add-ins installed.  This information should not affect the upgrade decision workflow, but can be helpful to an administrator.

## Related topics

[Upgrade Readiness release notes](upgrade-readiness-release-notes.md)

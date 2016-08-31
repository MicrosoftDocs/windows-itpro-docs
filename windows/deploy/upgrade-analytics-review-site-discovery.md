---
title: Review site discovery
description: Explains how to review internet web site discovery with Upgrade Analytics.
ms.prod: w10
author: Justinha
---

# Review site discovery

This section of the Upgrade Analytics workflow provides an inventory of web sites that are being used by client computers in your environment. This inventory information can help with prioritizing compatibility testing as part of upgrading to Windows 10 and Internet Explorer 11. You can make more informed decisions about testing based on usage data. 

## Install prerequisite security update for Internet Explorer (KB3170106)

There are two prerequisites for using site discovery:

1. Install [July, 2016 Internet Explorer cumulative update (KB3170106)](https://support.microsoft.com/kb/3170106) or later. This update provides the capability for site discovery.
2. Enable Internet Explorer data collection, which is disabled by default. It is enabled after you [run the Upgrade Analytics deployment script](upgrade-analytics-get-started.md#run-the-upgrade-analytics-deployment-script), or you can enable it by creating the following registry entry: 

    HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\DataCollection 

    Entry name: IEDataOptIn

    Data type: DWORD

    Values:

    0 – Internet Explorer data collection is disabled

    1 – Data collection is enabled for sites in the Local intranet + Trusted sites + Machine local zones

    2 – Data collection is enabled for sites in the Internet + Restricted sites zones

    3 – Data collection is enabled for all sites

    For more information about Internet Explorer Security Zones, see [About URL Security Zones](https://msdn.microsoft.com/library/ms537183.aspx). 

    ![Create the IEDataOptIn registry key](images/upgrade-analytics-create-iedataoptin.png)

## Review most active sites

This blade indicates the most visited sites by computers in your environment. Review this list to determine which web applications and sites are used most frequently. The number of visits is based on the total number of views, and not by the number of unique devices accessing a page.

For each site, the fully qualified domain name will be listed. You can sort the data by domain name or by URL.  

Click the name of any site in the list to drill down into more details about the visits, including the time of each visit and the computer name. 

![Site domain detail](images/upgrade-analytics-site-domain-detail.png)

## Review document modes in use 

This blade provides information about which document modes are used in the sites that are visited in your environment. Document modes are used to provide compatibility with older versions of Internet Explorer. Sites that use older technologies may require additional testing and are less likely to be compatible with Microsoft Edge. Counts are based on total page views and not the number of unique devices. For more information about document modes, see [Deprecated document modes](https://technet.microsoft.com/itpro/internet-explorer/ie11-deploy-guide/deprecated-document-modes).

![Site activity by document mode](images/upgrade-analytics-site-activity-by-doc-mode.png)

## Run browser-related queries 

You can run predefined queries to capture more info, such as sites that have Enterprise Mode enabled, or the number of unique computers that have visited a site. For example, this query returns the most used ActiveX controls. You can modify and save the predefined queries. 

![](images/upgrade-analytics-query-activex-name.png)


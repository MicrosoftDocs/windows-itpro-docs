---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: Use the \[URL\] .INS file setting to decide whether to use an auto-configured proxy server.
author: dansimp
ms.prod: ie11
ms.assetid: 05b09dfa-cf11-408d-92c2-b4ae434a59a7
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: dansimp
title: Use the URL .INS file to use an auto-configured proxy server (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Use the URL .INS file to use an auto-configured proxy server
Info about whether to use an auto-configured proxy server. If yes, this also includes the URLs to the pages that appear when your employees first connect to that server.

|Name |Value |Description |
|-----|------|------------|
|AutoConfig |<ul><li>**0.** Don’t automatically configure the browser.</li><li>**1.** Automatically configure the browser.</li></ul> |Determines whether to automatically configure the customized browser on your employee’s device. |
|AutoConfigJSURL |`<proxy_url>` |The URL for the proxy auto-config file (.js or .jvs) |
|AutoConfigTime |*integer* |Automatically configures the browser on your employee’s device after its run for a specified length of time. |
|AutoConfigURL |`<pac_file_url>` |The URL for the proxy auto-config (.pac) file. |
|FirstHomePage |`<first_run_url>` |The page (URL) that appears the first time the custom browser is opened on the employee’s device. |
|Help_Page |`<support_site_url>` |The URL to your internal technical support site. |
|Home_Page |`<default_home_page>` |The URL to your default **Home** page. |
|NoWelcome |<ul><li>**0.** Display the **Welcome** page.</li><li>**1.** Don’t display the **Welcome** page.</li></ul> |Determines whether to show the **Welcome** page the first time the browser’s used on an employee’s device. |
|Quick_Link_1 |`<quick_link_1_url>` |The URL to your first Quick Link. |
|Quick_Link_1_Name |`<quick_link_1_name>` |The name of the site associated with Quick_Link_1. |
|Quick_Link_2 |`<quick_link_2_url>` |The URL to your second Quick Link. |
|Quick_Link_2_Name |`<quick_link_2_name>` |The name of the site associated with Quick_Link_2. |
|Quick_Link_X |`<quick_link_X_url>` |The URL to another Quick Link. |
|Quick_Link_X_Icon |`<path_and_file_name>` |A Quick Links icon (.ico) file. |
|Quick_Link_X_Name |`<quick_link_X_name>` |The name of the site associated with another Quick Link. |
|Quick_Link_X_Offline |<ul><li>**0.** Don’t make the Quick Links available offline.</li><li>**1.** Make the Quick Links available offline.</li></ul> |Determines whether to make the Quick Links available for offline browsing. |
|Search_Page |`<default_search_url>` |The URL to the default search page. |
|UseLocalIns |<ul><li>**0.** Don’t use a local .ins file.</li><li>**1.** Use a local .ins file.</li></ul> |Determines whether to use a local Internet Settings (.ins) file |


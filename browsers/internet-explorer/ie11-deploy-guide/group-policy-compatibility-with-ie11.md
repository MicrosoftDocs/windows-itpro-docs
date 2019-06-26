---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: security
description: Group Policy suggestions for compatibility with Internet Explorer 11
author: lomayor
ms.prod: ie11
ms.assetid: 7482c99f-5d79-4344-9e1c-aea9f0a68e18
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: Group Policy and compatibility with Internet Explorer 11 (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Group Policy and compatibility with Internet Explorer 11
Internet Explorer 11 has many Group Policy entries that can be configured for keeping your environment managed and safe. This table includes all of our recommendations around security, performance, and compatibility with the previous versions of Internet Explorer, regardless of which Zone the website is in.

|Activity                         |Location                                      |Setting the policy object                                                |
|---------------------------------|----------------------------------------------|-------------------------------------------------------------------------|
|Turn on Compatibility View for all intranet zones |`Administrative Templates\Windows Components\Internet Explorer\Compatibility View` |Double-click **Turn on IE Standards Mode for local intranet** , and then click **Disabled**. |
|Turn on Compatibility View for selected websites, using Group Policy |`Administrative Templates\Windows Components\Internet Explorer\Compatibility View` |Double-click **Use Policy List of Windows Internet Explorer 7 sites** , and then click **Enabled**.Users will be able to add or remove sites manually to their local Compatibility View list, but they won’t be able to remove the sites you specifically added. |
|Turn on Quirks mode for selected websites, using Group Policy |`Administrative Templates\Windows Components\Internet Explorer\Compatibility View` |Double-click **Use Policy List of Quirks Mode sites**, and then click **Enabled**. |
|Ensure your users are using the most up-to-date version of Microsoft’s compatibility list. |`Administrative Templates\Windows Components\Internet Explorer\Compatibility View` |Double-click **Include updated Web site lists from Microsoft**, and then click **Enabled**. |
|Restrict users from making security zone configuration changes. |`Administrative Templates\ Windows Components\Internet Explorer\Internet Control Panel` |Double-click **Disable the Security Page**, and then click **Enabled**. |
|Control which security zone settings are applied to specific websites. |`Administrative Templates\ Windows Components\Internet Explorer\Internet Control Panel\Security Page` |Double-click **Site to Zone Assignment List**, click **Enabled**, and then enter your list of websites and their applicable security zones.  |
|Turn off Data Execution Prevention (DEP).  |`Administrative Templates\ Windows Components\Internet Explorer\Security Features` |Double-click **Turn off Data Execution Prevention**, and then click **Enabled**.  |

 

 

 




---
title: Check for a new Enterprise Mode site list xml file (Internet Explorer 11 for IT Pros)
description: You can have centralized control over Enterprise Mode by creating a single, global XML site list that includes the list of websites to render using Enterprise Mode.
ms.assetid: 2bbc7017-622e-4baa-8981-c0bbda10e9df
ms.reviewer: 
manager: dansimp
ms.prod: ie11
ms.mktglfcycl: deploy
ms.pagetype: appcompat
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.date: 08/14/2017
ms.localizationpriority: medium
---


# Check for a new Enterprise Mode site list xml file

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

You can have centralized control over Enterprise Mode by creating a single, global XML site list that includes the list of websites to render using Enterprise Mode. You can add and remove sites from your XML list as frequently as you want, changing which sites should render in Enterprise Mode for your employees. For information about turning on Enterprise Mode and using site lists, see [Turn on Enterprise Mode and use a site list](turn-on-enterprise-mode-and-use-a-site-list.md).

The information in this topic only covers HTTPS protocol. We strongly recommend that you use HTTPS protocol instead of file protocol due to increased performance.

**How Internet Explorer 11 looks for an updated site list**

1.  Internet Explorer starts up and looks for an updated site list in the following places:

    1.  **In the cache container.** IE first checks the cache container to see if it finds your XML site list.

    2.  **In the local cache.** If there’s nothing in the cache container, IE checks your local cache for the site list.

    3.  **On the server.** Based on standard IE caching rules, IE might look for a copy of your site list in the location you put specified in the **SiteList** value of the registry.

2.  If there’s an .xml file in the cache container, IE waits 65 seconds and then checks the local cache for a newer version of the file from the server, based on standard caching rules. If the server file has a different version number than the version in the cache container, the server file is used and stored in the cache container.<p>**Note**<br>If you’re already using a site list, enterprise mode continues to work during the 65 second wait; it just uses your existing site list instead of your new one.

     

 

 




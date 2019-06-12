---
ms.localizationpriority: low
ms.mktglfcycl: deploy
ms.pagetype: security
description: Use this section to learn about how to turn on and use IE7 Enterprise Mode or IE8 Enterprise Mode.
author: eavena
ms.prod: ie11
ms.assetid: 238ead3d-8920-429a-ac23-02f089c4384a
ms.reviewer: 
manager: dansimp
ms.author: eravena
title: Using IE7 Enterprise Mode or IE8 Enterprise Mode (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Using IE7 Enterprise Mode or IE8 Enterprise Mode

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

Enterprise Mode gives you a way for your legacy websites and apps to run using emulated versions of Windows Internet Explorer 7 or Windows Internet Explorer 8, while your new sites and apps run using Internet Explorer 11, including modern standards and features.

Although it’s called IE7 Enterprise Mode, it actually turns on Enterprise Mode along with Internet Explorer 7 or Microsoft Internet Explorer 5 Compatibility View. Compatibility View chooses which document mode to use based on whether there’s a `DOCTYPE` tag in your code:

-   **DOCTYPE tag found.** Webpages render using the Internet Explorer 7 document mode.
-   **No DOCTYPE tag found.** Webpages render using the Internet Explorer 5 document mode.

**Important**<br>
Because we’ve added the IE7 Enterprise Mode option, we’ve had to rename the original functionality of Enterprise Mode to be IE8 Enterprise Mode. We’ve also replaced Edge Mode with IE11 Document Mode, so you can explicitly use IE11 on Windows 10.

## Turning on and using IE7 Enterprise Mode or IE8 Enterprise Mode
For instructions about how to add IE7 Enterprise Mode or IE8 Enterprise Mode to your webpages and apps, see:

-   [Add single sites to the Enterprise Mode site list using the Enterprise Mode Site List Manager (schema v.2)](add-single-sites-to-enterprise-mode-site-list-using-the-version-2-enterprise-mode-tool.md)

-   [Add single sites to the Enterprise Mode site list using the Enterprise Mode Site List Manager (schema v.1)](add-single-sites-to-enterprise-mode-site-list-using-the-version-1-enterprise-mode-tool.md)

-   [Add multiple sites to the Enterprise Mode site list using a file and the Enterprise Mode Site List Manager (schema v.2)](add-multiple-sites-to-enterprise-mode-site-list-using-the-version-2-schema-and-enterprise-mode-tool.md)

-   [Add multiple sites to the Enterprise Mode site list using a file and the Enterprise Mode Site List Manager (schema v.1)](add-multiple-sites-to-enterprise-mode-site-list-using-the-version-1-schema-and-enterprise-mode-tool.md)

For instructions and more info about how to fix your compatibility issues using Enterprise Mode, see [Fix web compatibility issues using document modes and the Enterprise Mode site list](fix-compat-issues-with-doc-modes-and-enterprise-mode-site-list.md).

## Related topics
- [Download the Enterprise Mode Site List Manager (schema v.2)](https://go.microsoft.com/fwlink/p/?LinkId=716853)
- [Download the Enterprise Mode Site List Manager (schema v.1)](https://go.microsoft.com/fwlink/p/?LinkID=394378)
- [Use the Enterprise Mode Site List Manager](use-the-enterprise-mode-site-list-manager.md)
 

 




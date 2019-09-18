---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: When you add multiple sites to your Enterprise Mode site list entries, they’re validated by the Enterprise Mode Site List Manager before they’re entered into your global list.
author: lomayor
ms.prod: ie11
ms.assetid: 9f80e39f-dcf1-4124-8931-131357f31d67
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: lomayor
title: Fix validation problems using the Enterprise Mode Site List Manager (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Fix validation problems using the Enterprise Mode Site List Manager

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

When you add multiple sites to your Enterprise Mode site list entries, they’re validated by the Enterprise Mode Site List Manager before they’re entered into your global list. If a site doesn’t pass validation, you’ll have a couple of options to address it.

There are typically 3 types of errors you’ll see:

-   **Validation**. The site caused a validation error. Typically these occur because of typos, malformed URLs, or access-related issues. You can pick the site, click **Add to list** to ignore the problem and accept the site to your site list, or you can click **OK** to keep the site off of your site list.

-   **Duplicate**. The site already exists in the global compatibility list with a different compatibility mode. For example, the site was originally rendered in Enterprise Mode, but this update is for Default IE. You can pick the site, click **Add to list** to ignore the problem and accept the change to your site list, or you can click **OK** to keep your original compatibility mode.

-   **Redirection**. This is the least common type of validation error. Typically in this situation, a site redirects from an easy-to-remember URL to a longer URL. Like `\\tar` redirects to `\\timecard`. You can add the short URL or you can add both the short and long versions to your list.<br>
Another possibility is that redirection happens multiple times, with an intermediary site experiencing compatibility issues. For example, an employee types a short URL that then redirects multiple times, finally ending up on a non-intranet site. In this situation, you might want to add the intermediary URLs to your Enterprise Mode site list, in case there’s logic in one of them that has compatibility issues.

## Related topics
- [Download the Enterprise Mode Site List Manager (schema v.2)](https://go.microsoft.com/fwlink/p/?LinkId=716853)
- [Download the Enterprise Mode Site List Manager (schema v.1)](https://go.microsoft.com/fwlink/p/?LinkID=394378)
- [Use the Enterprise Mode Site List Manager](use-the-enterprise-mode-site-list-manager.md)
 

 




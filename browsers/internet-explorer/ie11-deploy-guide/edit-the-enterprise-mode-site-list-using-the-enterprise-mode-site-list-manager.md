---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: You can use Internet Explorer 11 and the Enterprise Mode Site List Manager to change whether page rendering should use Enterprise Mode or the default Internet Explorer browser configuration. You can also add, remove, or delete associated comments.
author: lomayor
ms.prod: ie11
ms.assetid: 76aa9a85-6190-4c3a-bc25-0f914de228ea
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: Edit the Enterprise Mode site list using the Enterprise Mode Site List Manager (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Edit the Enterprise Mode site list using the Enterprise Mode Site List Manager

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

You can use Internet Explorer 11 and the Enterprise Mode Site List Manager to change whether page rendering should use Enterprise Mode or the default Internet Explorer browser configuration. You can also add, remove, or delete associated comments.

If you need to edit a lot of websites, you probably don’t want to do it one at a time. Instead, you can edit your saved XML or TXT file and add the sites back again. For information about how to do this, depending on your operating system and schema version, see [Add multiple sites to the Enterprise Mode site list using a file and Enterprise Mode Site List Manager (schema v.2)](add-multiple-sites-to-enterprise-mode-site-list-using-the-version-2-schema-and-enterprise-mode-tool.md) or [Add multiple sites to the Enterprise Mode site list using a file and the Enterprise Mode Site List Manager (schema v.1)](add-multiple-sites-to-enterprise-mode-site-list-using-the-version-1-schema-and-enterprise-mode-tool.md).

 **To change how your page renders**

1.  In the Enterprise Mode Site List Manager, double-click the site you want to change.

2.  Change the comment or the compatibility mode option.

3.  Click **Save** to validate your changes and to add the updated information to your site list.<br>
If your change passes validation, it’s added to the global site list. If the update doesn’t pass validation, you’ll get an error message explaining the problem. You’ll then be able to either cancel the update or ignore the validation problem and add it to your list anyway. For more information about fixing validation issues, see [Fix validation problems using the Enterprise Mode Site List Manager](fix-validation-problems-using-the-enterprise-mode-site-list-manager.md).

4.  On the **File** menu, click **Save to XML**, and save the updated file.<br>
You can save the file locally or to a network share. However, you must make sure you deploy it to the location specified in your registry key. For more information about the registry key, see [Turn on Enterprise Mode and use a site list](turn-on-enterprise-mode-and-use-a-site-list.md).

## Related topics
- [Download the Enterprise Mode Site List Manager (schema v.2)](https://go.microsoft.com/fwlink/p/?LinkId=716853)
- [Download the Enterprise Mode Site List Manager (schema v.1)](https://go.microsoft.com/fwlink/p/?LinkID=394378)
- [Use the Enterprise Mode Site List Manager](use-the-enterprise-mode-site-list-manager.md)
 

 




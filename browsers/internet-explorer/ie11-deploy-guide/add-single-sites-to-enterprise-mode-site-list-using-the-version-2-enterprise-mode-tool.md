---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Enterprise Mode is a compatibility mode that runs on Internet Explorer 11, letting websites render using a modified browser configuration that''s designed to emulate either Windows Internet Explorer 8 or Windows Internet Explorer 7, avoiding the common compatibility problems associated with web apps written and tested on older versions of Internet Explorer.
author: dansimp
ms.prod: ie11
ms.assetid: 513e8f3b-fedf-4d57-8d81-1ea4fdf1ac0b
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: dansimp
title: Add sites to the Enterprise Mode site list using the Enterprise Mode Site List Manager (schema v.2) (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Add single sites to the Enterprise Mode site list using the Enterprise Mode Site List Manager (schema v.2)

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7

Enterprise Mode is a compatibility mode that runs on Internet Explorer 11, letting websites render using a modified browser configuration that’s designed to emulate either Windows Internet Explorer 8 or Windows Internet Explorer 7, avoiding the common compatibility problems associated with web apps written and tested on older versions of Internet Explorer.<p>**Important**<br>You can only add specific URLs, not Internet or Intranet Zones.

<p><strong>Note</strong><br>If you need to include a lot of sites, instead of adding them one at a time, you can create a list of websites and add them all at the same time. For more information, see the <a href="add-multiple-sites-to-enterprise-mode-site-list-using-the-version-2-schema-and-enterprise-mode-tool.md" data-raw-source="[Add multiple sites to the Enterprise Mode site list using a file and the Enterprise Mode Site List Manager (schema v.2)](add-multiple-sites-to-enterprise-mode-site-list-using-the-version-2-schema-and-enterprise-mode-tool.md)">Add multiple sites to the Enterprise Mode site list using a file and the Enterprise Mode Site List Manager (schema v.2)</a> or the <a href="add-multiple-sites-to-enterprise-mode-site-list-using-the-version-1-schema-and-enterprise-mode-tool.md" data-raw-source="[Add multiple sites to the Enterprise Mode site list using a file and the Enterprise Mode Site List Manager (schema v.1)](add-multiple-sites-to-enterprise-mode-site-list-using-the-version-1-schema-and-enterprise-mode-tool.md)">Add multiple sites to the Enterprise Mode site list using a file and the Enterprise Mode Site List Manager (schema v.1)</a> topic, based on your operating system.

## Adding a site to your compatibility list
You can add individual sites to your compatibility list by using the Enterprise Mode Site List Manager.<p>
**Note**<br>If you're using the v.1 version of the Enterprise Mode schema, you'll need to use the Enterprise Mode Site List Manager (schema v.1). For more info, see [Add sites to the Enterprise Mode site list using the WEnterprise Mode Site List Manager (schema v.1)](add-single-sites-to-enterprise-mode-site-list-using-the-version-1-enterprise-mode-tool.md).

 **To add a site to your compatibility list using the Enterprise Mode Site List Manager (schema v.2)**

1. In the Enterprise Mode Site List Manager (schema v.2), click **Add**.

2. Type the URL for the website that’s experiencing compatibility problems, like *&lt;domain&gt;.com* or *&lt;domain&gt;.com*/*&lt;path&gt;* into the **URL** box.<p>
   Don't include the `https://` or `https://` designation. The tool automatically tries both versions during validation.

3. Type any comments about the website into the **Notes about URL** box.<p>
   Administrators can only see comments while they’re in this tool.

4. In the **Compat Mode** box, choose one of the following:

   -   **IE8Enterprise**. Loads the site in IE8 Enterprise Mode.

   -   **IE7Enterprise**. Loads the site in IE7 Enterprise Mode.

   -   **IE\[*x*\]**. Where \[x\] is the document mode number and the site loads in the specified document mode.

   -   **Default Mode**. Loads the site using the default compatibility mode for the page.

   The path within a domain can require a different compatibility mode from the domain itself. For example, the domain might look fine in the default IE11 browser, but the path might have problems and require the use of Enterprise Mode. If you added the domain previously, your original compatibility choice is still selected. However, if the domain is new, **IE8 Enterprise Mode** is automatically selected.
   
   Enterprise Mode takes precedence over document modes, so sites that are already included in the Enterprise Mode site list won’t be affected by this update and will continue to load in Enterprise Mode, as usual. For more specific info about using document modes, see [Fix web compatibility issues using document modes and the Enterprise Mode site list](fix-compat-issues-with-doc-modes-and-enterprise-mode-site-list.md).

5. In conjunction with the compatibility mode, you'll need to use the **Open in** box to pick which browser opens the site.

   -   **IE11**. Opens the site in IE11, regardless of which browser is opened by the employee.

   -   **MSEdge**. Opens the site in Microsoft Edge, regardless of which browser is opened by the employee.

   -   **None**. Opens in whatever browser the employee chooses.

6. Click **Save** to validate your website and to add it to the site list for your enterprise.<p>
   If your site passes validation, it’s added to the global compatibility list. If the site doesn’t pass validation, you’ll get an error message explaining the problem. You’ll then be able to either cancel the site or ignore the validation problem and add it to your list anyway.

7. On the **File** menu, go to where you want to save the file, and then click **Save to XML**.<p>
   You can save the file locally or to a network share. However, you must make sure you deploy it to the location specified in your registry key. For more information about the registry key, see [Turn on local control and logging for Enterprise Mode](turn-on-local-control-and-logging-for-enterprise-mode.md).

## Next steps
After you’ve added all of your sites to the tool and saved the file to XML, you can configure the rest of the Enterprise Mode functionality to use it. You can also turn Enterprise Mode on locally, so your users have the option to use Enterprise Mode on individual websites from the **Tools** menu. For more information, see [Turn on local control and logging for Enterprise Mode](turn-on-local-control-and-logging-for-enterprise-mode.md).

## Related topics
- [Download the Enterprise Mode Site List Manager (schema v.2)](https://go.microsoft.com/fwlink/p/?LinkId=716853)
 

 




---
Description: Enterprise Mode is a compatibility mode that runs on Internet Explorer 11, letting websites render using a modified browser configuration that''s designed to emulate either Windows Internet Explorer 7 or Windows Internet Explorer 8, avoiding the common compatibility problems associated with web apps written and tested on older versions of Internet Explorer.
ms.assetid: 042E44E8-568D-4717-8FD3-69DD198BBF26
ms.prod: IE11
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: appcompat
title: Add sites to the Enterprise Mode site list using the Windows 7 and Windows 8.1 Enterprise Mode Site List Manager tool (Internet Explorer 11 for IT Pros)
---

# Add single sites to the Enterprise Mode site list using the Windows 7 and Windows 8.1 Enterprise Mode Site List Manager tool

**Applies to:**

-   Windows 8.1
-   Windows 7
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

Enterprise Mode is a compatibility mode that runs on Internet Explorer 11, letting websites render using a modified browser configuration that’s designed to emulate either Windows Internet Explorer 7 or Windows Internet Explorer 8, avoiding the common compatibility problems associated with web apps written and tested on older versions of Internet Explorer.<p>**Important**<br>You can only add specific URLs, not Internet or Intranet Zones.

<p>**Note**<br>If you need to include a lot of sites, instead of adding them one at a time, you can create a list of websites and add them all at the same time. For more information, see [Add multiple sites to the Enterprise Mode site list using a file and the Windows 7 and 8.1 Enterprise Mode Site List Manager tool](add-single-sites-to-enterprise-mode-site-list-using-the-version-1-enterprise-mode-tool.md).

## Adding a site to your compatibility list
You can add individual sites to your compatibility list by using the Enterprise Mode Site List Manager tool.
<p>**Note**<br>If you're using Windows 10 and the v.2 version of the Enterprise Mode schema, you'll need to use the Windows 10 Enterprise Mode Site List Manager tool. For more info, see [Add sites to the Enterprise Mode site list using the Windows 10 Enterprise Mode Site List Manager tool](aadd-single-sites-to-enterprise-mode-site-list-using-the-version-2-enterprise-mode-tool.md).

**To add a site to your compatibility list using the Windows 7 and Windows 8.1 Enterprise Mode Site List Manager tool**

1.  In the Windows 7 and Windows 8.1 Enterprise Mode Site List Manager tool, click **Add**.

2.  Type the URL for the website that’s experiencing compatibility problems, like *&lt;domain&gt;.com* or *&lt;domain&gt;.com*/*&lt;path&gt;* into the **URL** box.<p>
Don't include the `http://` or `https://` designation. The tool automatically tries both versions during validation.

3.  Type any comments about the website into the **Notes about URL** box.<p>
Administrators can only see comments while they’re in this tool.

4.  Choose **IE7 Enterprise Mode**, **IE8 Enterprise Mode**, or the appropriate document mode for sites that must be rendered using the emulation of a previous version of IE, or pick **Default IE** if the site should use the latest version of IE.

The path within a domain can require a different compatibility mode from the domain itself. For example, the domain might look fine in the default IE11 browser, but the path might have problems and require the use of Enterprise Mode. If you added the domain previously, your original compatibility choice is still selected. However, if the domain is new, **IE8 Enterprise Mode** is automatically selected.

Enterprise Mode takes precedence over document modes, so sites that are already included in the Enterprise Mode site list won’t be affected by this update and will continue to load in Enterprise Mode, as usual. For more specific info about using document modes, see [Fix web compatibility issues using document modes and the Enterprise Mode site list](fix-compat-issues-with-doc-modes-and-enterprise-mode-site-list.md).

5.  Click **Save** to validate your website and to add it to the site list for your enterprise.<p>
If your site passes validation, it’s added to the global compatibility list. If the site doesn’t pass validation, you’ll get an error message explaining the problem. You’ll then be able to either cancel the site or ignore the validation problem and add it to your list anyway.

6.  On the **File** menu, go to where you want to save the file, and then click **Save to XML**.<p>
You can save the file locally or to a network share. However, you must make sure you deploy it to the location specified in your registry key. For more information about the registry key, see [Turn on local control and logging for Enterprise Mode](turn-on-local-control-and-logging-for-enterprise-mode.md).

## Next steps
After you’ve added all of your sites to the tool and saved the file to XML, you can configure the rest of the Enterprise Mode functionality to use it. You can also turn Enterprise Mode on locally, so your users have the option to use Enterprise Mode on individual websites from the **Tools** menu. For more information, see [Turn on local control and logging for Enterprise Mode](turn-on-local-control-and-logging-for-enterprise-mode.md).

## Related topics
- [Download the Enterprise Mode Site List Manager for Windows 7 and Windows 8.1 tool](http://go.microsoft.com/fwlink/p/?LinkID=394378)
 

 




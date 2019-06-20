---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: You can add multiple sites to your Enterprise Mode site list by creating a custom text (TXT) or Extensible Markup Language (XML) file of problematic sites and then adding it in the Bulk add from file area of the Enterprise Mode Site List Manager.
author: dansimp
ms.prod: ie11
ms.assetid: 20aF07c4-051a-451f-9c46-5a052d9Ae27c
ms.reviewer: 
manager: dansimp
ms.author: dansimp
title: Add multiple sites to the Enterprise Mode site list using a file and the Enterprise Mode Site List Manager (schema v.1) (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Add multiple sites to the Enterprise Mode site list using a file and the Enterprise Mode Site List Manager (schema v.1)

**Applies to:**

-   Windows 8.1
-   Windows 7

You can add multiple sites to your Enterprise Mode site list by creating a custom text (TXT) or Extensible Markup Language (XML) file of problematic sites and then adding it in the **Bulk add from file** area of the Enterprise Mode Site List Manager. You can only add specific URLs, not Internet or Intranet Zones.

If you want to add your websites one at a time, see Add sites to the [Enterprise Mode site list using the Enterprise Mode Site List Manager (schema v.1)](add-single-sites-to-enterprise-mode-site-list-using-the-version-1-enterprise-mode-tool.md).

## Create an Enterprise Mode site list (TXT) file
You can create and use a custom text file to add multiple sites to your Enterprise Mode site list at the same time. <p>**Important**<br>This text file is only lets you add multiple sites at the same time. You can’t use this file to deploy Enterprise Mode into your company.

You must separate each site using commas or carriage returns. For example:

```
microsoft.com, bing.com, bing.com/images
```
**-OR-**

```
microsoft.com
bing.com
bing.com/images
```

## Create an Enterprise Mode site list (XML) file using the v.1 version of the Enterprise Mode schema
You can create and use a custom XML file with the Enterprise Mode Site List Manager to add multiple sites to your Enterprise Mode site list at the same time. For more info about the v.1 version of the Enterprise Mode schema, see [Enterprise Mode schema v.1 guidance](enterprise-mode-schema-version-1-guidance.md).

Each XML file must include:

- **Version number.** This number must be incremented with each version of the Enterprise Mode site list, letting Internet Explorer know whether the list is new. Approximately 65 seconds after Internet Explorer 11 starts, it compares your site list version to the stored version number. If your file has a higher number, the newer version is loaded. <p>**Important**<br>After this check, IE11 won’t look for an updated list again until you restart the browser.

- **&lt;emie&gt; tag.** This tag specifies the domains and domain paths that must be rendered using IE7 Enterprise Mode, IE8 Enterprise Mode, or the default IE11 browser environment.<p>**Important**<br>If you decide a site requires IE7 Enterprise Mode, you must add `forceCompatView=”true”` to your XML file. That code tells Enterprise Mode to check for a `DOCTYPE` tag on the specified webpage. If there is, the site renders using Windows Internet Explorer 7. If there’s no tag, the site renders using Microsoft Internet Explorer 5.

- <strong>&lt;docMode&gt; tag.</strong>This tag specifies the domains and domain paths that need either to appear using the specific doc mode you assigned to the site. Enterprise Mode takes precedence over document modes, so sites that are already included in the Enterprise Mode site list won’t be affected by this update and will continue to load in Enterprise Mode, as usual. For more specific info about using document modes, see [Fix web compatibility issues using document modes and the Enterprise Mode site list](fix-compat-issues-with-doc-modes-and-enterprise-mode-site-list.md).

### Enterprise Mode v.1 XML schema example
The following is an example of what your XML file should look like when you’re done adding your sites. For more info about how to create your XML file, see [Enterprise Mode schema v.1 guidance](enterprise-mode-schema-version-1-guidance.md).

```
<rules version="1">
  <emie>
    <domain exclude="false">www.cpandl.com</domain>
    <domain exclude="true">www.woodgrovebank.com</domain>
    <domain exclude="false" forceCompatView="true">adatum.com</domain>
    <domain exclude="true">contoso.com</domain>
    <domain exclude="true">relecloud.com
      <path exclude="false">/about</path>
    </domain>
    <domain exclude="false">fabrikam.com
      <path exclude="true">/products</path>
    </domain>
  </emie>
  <docMode>
    <domain>contoso.com
      <path docMode="7">/travel</path>
    </domain>
    <domain>fabrikam.com
      <path docMode="7">/products</path>
    </domain>
  </docMode>
</rules>
```

To make sure your site list is up-to-date; wait 65 seconds after opening IE and then check that the `CurrentVersion` value in the `HKEY\CURRENT\USER\Software\Microsoft\Internet Explorer\Main\EnterpriseMode\` registry key matches the version number in your file.<p>**Important**<br>If `CurrentVersion` is not set or is wrong, it means that the XML parsing failed. This can mean that the XML file isn’t there, that there are access problems, or that the XML file format is wrong. Don’t manually change the `CurrentVersion` registry setting. You must make your changes to your site list and then update the list using the import function in the Enterprise Mode Site List Manager (.

## Add multiple sites to the Enterprise Mode Site List Manager (schema v.1)
After you create your .xml or .txt file, you can bulk add the sites to the Enterprise Mode Site List Manager (schema v.1).

 **To add multiple sites**

1.  In the Enterprise Mode Site List Manager (schema v.1), click **Bulk add from file**.

2.  Go to your site list (either .txt or .xml) to add the included sites to the tool, and then click **Open**.<p>
Each site is validated and if successful, added to the global site list when you click **OK** to close the menu. If a site doesn’t pass validation, you can try to fix the issues or pick the site and click **Add to list** to ignore the validation problem. For more information about fixing validation problems, see [Fix validation problems using the Enterprise Mode Site List Manager](fix-compat-issues-with-doc-modes-and-enterprise-mode-site-list.md).

3.  Click **OK** to close the **Bulk add sites to the list** menu.

4.  On the **File** menu, click **Save to XML**, and save your file.<p>
You can save the file locally or to a network share. However, you must make sure you deploy it to the location specified in your registry key. For more information about the registry key, see [Turn on Enterprise Mode and use a site list](turn-on-enterprise-mode-and-use-a-site-list.md).

## Next steps
After you’ve added all of your sites to the tool and saved the file to XML, you can configure the rest of the Enterprise Mode functionality to use it. You can also turn Enterprise Mode on locally, so your users have the option to use Enterprise Mode on individual websites from the **Tools** menu. For more information, see [Turn on local control and logging for Enterprise Mode](turn-on-local-control-and-logging-for-enterprise-mode.md).

## Related topics
- [Enterprise Mode schema v.1 guidance](enterprise-mode-schema-version-1-guidance.md)
- [Download the Enterprise Mode Site List Manager (schema v.1)](https://go.microsoft.com/fwlink/p/?LinkID=394378)
 

 




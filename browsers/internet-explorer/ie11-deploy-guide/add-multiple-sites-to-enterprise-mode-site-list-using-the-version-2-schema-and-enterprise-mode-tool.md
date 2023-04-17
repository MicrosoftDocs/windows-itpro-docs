---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Add multiple sites to your Enterprise Mode site list using a file and the Enterprise Mode Site List Manager (schema v.2).
author: dansimp
ms.prod: ie11
ms.assetid: da659ff5-70d5-4852-995e-4df67c4871dd
ms.reviewer: 
audience: itpro
manager: dansimp
ms.author: dansimp
title: Add multiple sites to the Enterprise Mode site list using a file and the Enterprise Mode Site List Manager (schema v.2) (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 10/24/2017
---


# Add multiple sites to the Enterprise Mode site list using a file and the Enterprise Mode Site List Manager (schema v.2)

[!INCLUDE [Microsoft 365 workloads end of support for IE11](../includes/microsoft-365-ie-end-of-support.md)]


**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7

You can add multiple sites to your Enterprise Mode site list by creating a custom text (TXT) or Extensible Markup Language (XML) file of problematic sites and then adding it in the **Bulk add from file** area of the Enterprise Mode Site List Manager (schema v.2). You can only add specific URLs, not Internet or Intranet Zones.

To add your websites one at a time, see [Add sites to the Enterprise Mode site list using the Enterprise Mode Site List Manager (schema v.2)](add-single-sites-to-enterprise-mode-site-list-using-the-version-2-enterprise-mode-tool.md).

## Create an Enterprise Mode site list (TXT) file

You can create and use a custom text file with the Enterprise Mode Site List Manager (schema v.2) to add multiple sites to your Enterprise Mode site list at the same time.

>**Important:**<br>This text file is only lets you add multiple sites at the same time. You can’t use this file to deploy Enterprise Mode into your company.

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

## Create an Enterprise Mode site list (XML) file using the v.2 version of the Enterprise Mode schema

You can create and use a custom XML file with the Enterprise Mode Site List Manager (schema v.2) to add multiple sites to your Enterprise Mode site list at the same time.

Each XML file must include:

-   **site-list version number**. This number must be incremented with each version of the Enterprise Mode site list, letting Internet Explorer know whether the list is new. Approximately 65 seconds after Internet Explorer 11 starts, it compares your site list version to the stored version number. If your file has a higher number, the newer version is loaded. <p>**Important**<br>After this check, IE11 won’t look for an updated list again until you restart the browser. 

-   **&lt;compat-mode&gt; tag.** This tag specifies what compatibility setting are used for specific sites or domains.

-   **&lt;open-in&gt; tag.** This tag specifies what browser opens for each sites or domain.

### Enterprise Mode v.2 XML schema example

The following is an example of what your XML file should look like when you’re done adding your sites. For more info about how to create your XML file, see [Enterprise Mode schema v.2 guidance](enterprise-mode-schema-version-2-guidance.md).

```xml
<site-list version="205">
    <!-- File creation header -->
    <created-by>
        <tool>EnterpriseSitelistManager</tool>
        <version>10240</version>
        <date-created>20150728.135021</date-created>
    </created-by>
    <!-- Begin Site List --> 
    <site url="www.cpandl.com">
        <compat-mode>IE8Enterprise</compat-mode>
        <open-in>MSEdge</open-in>
    </site>
    <site url="www.cpandl.com/images">
        <compat-mode>IE7Enterprise</compat-mode>
        <open-in>IE11</open-in>
    </site>
    <site url="contoso.com">
        <compat-mode>default</compat-mode>
        <open-in>IE11</open-in>
    </site>
</site-list>
```
In the above example, the following is true:

- ```www.cpandl.com```, as the main domain, must use IE8 Enterprise Mode. However, ```www.cpandl.com/images``` must use IE7 Enterprise Mode.

- contoso.com, and all of its domain paths, can use the default compatibility mode for the site.

To make sure your site list is up-to-date; wait 65 seconds after opening IE and then check that the `CurrentVersion` value in the `HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\EnterpriseMode\` registry key matches the version number in your file. <p>**Important**<br>If `CurrentVersion` is not set or is wrong, it means that the XML parsing failed. This can mean that the XML file isn’t there, that there are access problems, or that the XML file format is wrong. Don’t manually change the `CurrentVersion` registry setting. You must make your changes to your site list and then update the list using the import function in the Enterprise Mode Site List Manager (schema v.2).

## Add multiple sites to the Enterprise Mode Site List Manager (schema v.2)
After you create your .xml or .txt file, you can bulk add the sites to the Enterprise Mode Site List Manager (schema v.2).

 **To add multiple sites**

1.  In the Enterprise Mode Site List Manager (schema v.2), click **Bulk add from file**.

2.  Go to your site list (either .txt or .xml) to add the included sites to the tool, and then click **Open**.<p>
Each site is validated and if successful, added to the global site list when you click **OK** to close the menu. If a site doesn’t pass validation, you can try to fix the issues or pick the site and click **Add to list** to ignore the validation problem. For more information about fixing validation problems, see [Fix validation problems using the Enterprise Mode Site List Manager](fix-validation-problems-using-the-enterprise-mode-site-list-manager.md).

3.  Click **OK** to close the **Bulk add sites to the list** menu.

4.  On the **File** menu, click **Save to XML**, and save your file.<p>
You can save the file locally or to a network share. However, you must make sure you deploy it to the location specified in your registry key. For more information about the registry key, see [Turn on Enterprise Mode and use a site list](turn-on-enterprise-mode-and-use-a-site-list.md).

## Next steps
After you’ve added all of your sites to the tool and saved the file to XML, you can configure the rest of the Enterprise Mode functionality to use it. You can also turn Enterprise Mode on locally, so your users have the option to use Enterprise Mode on individual websites from the **Tools** menu. For more information, see [Turn on local control and logging for Enterprise Mode](turn-on-local-control-and-logging-for-enterprise-mode.md).

## Related topics
- [Download the Enterprise Mode Site List Manager (schema v.2)](https://go.microsoft.com/fwlink/p/?LinkId=716853)
- [Enterprise Mode schema v.2 guidance](enterprise-mode-schema-version-2-guidance.md)
 

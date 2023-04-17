---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Use the Enterprise Mode Site List Manager to create and update your Enterprise Mode site list for devices running Windows 10.
author: dansimp
ms.prod: ie11
ms.assetid: 909ca359-5654-4df9-b9fb-921232fc05f5
ms.reviewer: 
audience: itpro
manager: dansimp
ms.author: dansimp
title: Enterprise Mode schema v.2 guidance (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 12/04/2017
---


# Enterprise Mode schema v.2 guidance

[!INCLUDE [Microsoft 365 workloads end of support for IE11](../includes/microsoft-365-ie-end-of-support.md)]


**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7

Use the Enterprise Mode Site List Manager to create and update your site list for devices running Windows 7, Windows 8.1, and Windows 10, using the version 2.0 (v.2) of the Enterprise Mode schema. If you don't want to use the Enterprise Mode Site List Manager, you also have the option to update your XML schema using Notepad, or any other XML-editing app.

> [!IMPORTANT]
> If you're running Windows 7 or Windows 8.1 and you've been using the version 1.0 (v.1) of the schema, you can continue to do so, but you won't get the benefits that come with the updated schema. For info about the v.1 schema, see [Enterprise Mode schema v.1 guidance](enterprise-mode-schema-version-1-guidance.md).

## Enterprise Mode schema v.2 updates
Because of the schema changes, you can't combine the old version (v.1) with the new version (v.2) of the schema. If you look at your XML file, you can tell which version you're using by:

-   &lt;rules&gt;. If your schema root node includes this key, you're using the v.1 version of the schema.

-   &lt;site-list&gt;. If your schema root node includes this key, you're using the v.2 version of the schema.

You can continue to use the v.1 version of the schema on Windows 10, but you won't have the benefits of the new v.2 version schema updates and new features. Additionally, saving the v.1 version of the schema in the new Enterprise Mode Site List Manager (schema v.2) automatically updates the file to use the v.2 version of the schema.

### Enterprise Mode v.2 schema example
The following is an example of the v.2 version of the Enterprise Mode schema.

> [!IMPORTANT]
> Make sure that you don't specify a protocol when adding your URLs. Using a URL like `<url="contoso.com">`, automatically applies to both `http://contoso.com` and `https://contoso.com`.
 
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
	<site url="www.woodgrovebank.com">
		<compat-mode>Default</compat-mode>
		<open-in>IE11</open-in>
	</site>
	<site url="adatum.com">
		<compat-mode>IE7Enterprise</compat-mode>
		<open-in>IE11</open-in>
	</site>
	<site url="contoso.com">
		<compat-mode>Default</compat-mode>
		<open-in>IE11</open-in>
	</site>
	<site url="relecloud.com"/>  
		<compat-mode>Default</compat-mode>
		<open-in>None</open-in>
	<site url="relecloud.com/about">  
		<compat-mode>IE8Enterprise"</compat-mode>
		<open-in>None</open-in>
	</site>
	<site url="contoso.com/travel">
		<compat-mode>IE7</compat-mode>
		<open-in>IE11</open-in>
	</site>
	<site url="fabrikam.com">
		 <compat-mode>IE8Enterprise</compat-mode>
		 <open-in>IE11</open-in>
	</site>
	<site url="fabrikam.com/products">
		 <compat-mode>IE7</compat-mode>
		 <open-in>IE11</open-in>
	</site>	
</site-list>
```

### Updated schema elements
This table includes the elements used by the v.2 version of the Enterprise Mode schema.

|Element  |Description |Supported browser  |
|---------|---------|---------|
|&lt;site-list&gt;     |A new root node with this text is using the updated v.2 version of the schema. It replaces &lt;rules&gt;. <br> **Example** <br> <pre class="syntax">&lt;site-list version="205"&gt;<br>  &lt;site url="contoso.com"&gt;<br>   &lt;compat-mode&gt;IE8Enterprise&lt;/compat-mode&gt;<br>   &lt;open-in&gt;IE11&lt;/open-in&gt;<br>  &lt;/site&gt;<br>&lt;/site-list&gt;</pre>         | Internet Explorer 11 and Microsoft Edge        |
|&lt;site&gt;    |A unique entry added for each site you want to put on the Enterprise Mode site list. The first &lt;site&gt; element will overrule any additional &lt;site&gt; elements that use the same value for the &lt;url&gt; element. <br> **Example** <pre class="syntax">&lt;site url="contoso.com"&gt;<br>  &lt;compat-mode&gt;default&lt;/compat-mode&gt;<br>  &lt;open-in&gt;none&lt;/open-in&gt;<br>&lt;/site&gt;</pre> <br> **or** For IPv4 ranges: <br>  <pre class="syntax">&lt;site url="10.122.34.99:8080"&gt;<br> &lt;compat-mode&gt;IE8Enterprise&lt;/compat-mode&gt;<br>&lt;site&gt;</pre><p> <br> **or**  For IPv6 ranges:<pre class="syntax">&lt;site url="[10.122.34.99]:8080"&gt;<br>  &lt;compat-mode&gt;IE8Enterprise&lt;/compat-mode&gt;<br>&lt;site&gt;</pre><p> <br> You can also use the self-closing version, &lt;url="contoso.com" /&gt;, which also sets:<ul><li>&lt;compat-mode&gt;default&lt;/compat-mode&gt;</li><li>&lt;open-in&gt;none&lt;/open-in&gt;</li>| Internet Explorer 11 and Microsoft Edge        |
|&lt;compat-mode&gt;     |A child element that controls what compatibility setting is used for specific sites or domains. This element is only supported in IE11. <br> **Example** <pre class="syntax"><br>&lt;site url="contoso.com"&gt;<br>  &lt;compat-mode&gt;IE8Enterprise&lt;/compat-mode&gt;<br>&lt;/site&gt;</pre> **or** <br> For IPv4 ranges:<pre class="syntax">&lt;site url="10.122.34.99:8080"&gt;<br>  &lt;compat-mode&gt;IE8Enterprise&lt;/compat-mode&gt;<br>&lt;site&gt;</pre><p> **or** For IPv6 ranges:<pre class="syntax">&lt;site url="[10.122.34.99]:8080"&gt;<br>  &lt;compat-mode&gt;IE8Enterprise&lt;/compat-mode&gt;<br>&lt;site&gt;</pre><p> Where<ul><li>**IE8Enterprise.** Loads the site in IE8 Enterprise Mode.<br>This element is required for sites included in the **EmIE** section of the v.1 schema and is needed to load in IE8 Enterprise Mode.</li><p><li>**IE7Enterprise.** Loads the site in IE7 Enterprise Mode.<br>This element is required for sites included in the **EmIE** section of the v.1 schema and is needed to load in IE7 Enterprise Mode<p>**Important**<br>This tag replaces the combination of the `"forceCompatView"="true"` attribute and the list of sites specified in the EmIE section of the v.1 version of the schema.<li>**IE<i>[x]</i>**. Where <i>[x]</i> is the document mode number into which the site loads.<li>**Default or not specified.** Loads the site using the default compatibility mode for the page. In this situation, X-UA-compatible meta tags or HTTP headers are honored.</li>      |Internet Explorer 11         |
|&lt;open-in&gt;    |A child element that controls what browser is used for sites. This element supports the **Open in IE11** or **Open in Microsoft Edge** experiences, for devices running Windows 10.<br> **Examples**<pre class="syntax">&lt;site url="contoso.com"&gt;<br>  &lt;open-in&gt;none&lt;/open-in&gt; <br>&lt;/site&gt;</pre><p> <br> Where<ul><li><b>IE11.</b> Opens the site in IE11, regardless of which browser is opened by the employee.<li><b>MSEdge.</b> Opens the site in Microsoft Edge, regardless of which browser is opened by the employee.<li><b>None or not specified.</b> Opens in whatever browser the employee chooses.</li>  | Internet Explorer 11 and Microsoft Edge        |

### Updated schema attributes
The &lt;url&gt; attribute, as part of the &lt;site&gt; element in the v.2 version of the schema, replaces the &lt;domain&gt; element from the v.1 version of the schema.

|Attribute|Description|Supported browser|
|---------|---------|---------|
|allow-redirect|A boolean attribute of the &lt;open-in&gt; element that controls the behavior for redirected sites. Setting this attribute to "true" indicates that the site will open in IE11 or Microsoft Edge even if the site is navigated to as part of a HTTP or meta refresh redirection chain. Omitting the attribute is equivalent to "false" (sites in redirect chain will not open in another browser).<br>**Example**<pre class="syntax">&lt;site url="contoso.com/travel"&gt;<br>  &lt;open-in allow-redirect="true"&gt;IE11 &lt;/open-in&gt;<br>&lt;/site&gt;</pre> In this example, if `https://contoso.com/travel` is encountered in a redirect chain in Microsoft Edge, it will be opened in Internet Explorer. | Internet Explorer 11 and Microsoft Edge|
|version     |Specifies the version of the Enterprise Mode Site List. This attribute is supported for the &lt;site-list&gt; element.   | Internet Explorer 11 and Microsoft Edge|
|url|Specifies the URL (and port number using standard port conventions) to which the child elements apply. The URL can be a domain, sub-domain, or any path URL.<br> **Note**<br> Make sure that you don't specify a protocol. Using &lt;site url="contoso.com"&gt;  applies to both `http://contoso.com` and `https://contoso.com`. <br> **Example**<pre class="syntax">&lt;site url="contoso.com:8080"&gt;<br>   &lt;compat-mode&gt;IE8Enterprise&lt;/compat-mode&gt; <br> &lt;open-in&gt;IE11&lt;/open-in&gt;<br>&lt;/site&gt;</pre>In this example, going to `https://contoso.com:8080` using Microsoft Edge, causes the site to open in IE11 and load in IE8 Enterprise Mode. | Internet Explorer 11 and Microsoft Edge|

### Deprecated attributes
These v.1 version schema attributes have been deprecated in the v.2 version of the schema:

|Deprecated attribute|New attribute|Replacement example|
|--- |--- |--- |
|forceCompatView|&lt;compat-mode>|Replace &lt;forceCompatView="true"> with &lt;compat-mode&gt;IE7Enterprise&lt;/compat-mode>|
|docMode|&lt;compat-mode&gt;|Replace &lt;docMode="IE5"&gt; with &lt;compat-mode&gt;IE5&lt;/compat-mode&gt;|
|doNotTransition|&lt;open-in&gt;|Replace:<br> &lt;doNotTransition="true"&gt; with &lt;open-in&gt;none&lt;/open-in&gt;|
|&lt;domain&gt; and &lt;path&gt;|&lt;site&gt;|Replace:<pre class="syntax">&lt;emie&gt;<br> &lt;domain&gt;contoso.com&lt;/domain&gt;<br>&lt;/emie&gt;</pre>With:<pre class="syntax">&lt;site url="contoso.com"/&gt; <br>  &lt;compat-mode&gt;IE8Enterprise&lt;/compat-mode&gt;<br>  &lt;open-in&gt;IE11&lt;/open-in&gt;<br>&lt;/site&gt;</pre>**-AND-** <br>Replace:<pre class="syntax">&lt;emie&gt; <br>  &lt;domain exclude="true"  donotTransition="true"&gt;contoso.com <br> &lt;path forceCompatView="true"&gt;/about&lt;/path&gt;<br> &lt;/domain&gt;<br>&lt;/emie&gt;</pre><br> With:<pre class="syntax">&lt;site url="contoso.com/about"&gt;<br> &lt;compat-mode&gt;IE7Enterprise&lt;/compat-mode&gt;<br> &lt;open-in&gt;IE11&lt;/open-in&gt;<br>&lt;/site&gt;|

While the old, replaced attributes aren't supported in the v.2 version of the schema, they'll continue to work in the v.1 version of the schema. If, however, you're using the v.2 version of the schema and these attributes are still there, the v.2 version schema takes precedence. We don’t recommend combining the two schemas, and instead recommend that you move to the v.2 version of the schema to take advantage of the new features.

> [!IMPORTANT]
> Saving your v.1 version of the file using the new Enterprise Mode Site List Manager (schema v.2) automatically updates the XML to the new v.2 version of the schema.

### What not to include in your schema
We recommend that you not add any of the following items to your schema because they can make your compatibility list behave in unexpected ways:

- Don’t use protocols. For example, `http://`, `https://`, or custom protocols. They break parsing.
- Don’t use wildcards.
- Don’t use query strings, ampersands break parsing.

## Related topics
- [Use the Enterprise Mode Site List Manager](use-the-enterprise-mode-site-list-manager.md)

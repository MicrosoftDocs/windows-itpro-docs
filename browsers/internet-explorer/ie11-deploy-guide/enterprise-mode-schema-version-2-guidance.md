---
Description: Use the Enterprise Mode Site List Manager tool to create and update your Enterprise Mode site list for devices running Windows 10.
ms.assetid: 909ca359-5654-4df9-b9fb-921232fc05f5
author: LizRoss
ms.prod: IE11
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: appcompat
title: Enterprise Mode schema v.2 guidance for Windows 10-based devices (Internet Explorer 11 for IT Pros)
---

# Enterprise Mode schema v.2 guidance for Windows 10-based devices

**Applies to:**

-   Windows 10

Use the Enterprise Mode Site List Manager tool to create and update your site list for devices running Windows 10, using the version 2.0 (v.2) of the Enterprise Mode schema. If you don't want to use the Enterprise Mode Site List Manager, you also have the option to update your XML schema using Notepad, or any other XML-editing app.

**Important**<br>
These schema updates only apply to devices running Windows 10. For devices running Windows 7 or Windows 8.1, see [Enterprise Mode schema guidance for Windows 7 and Windows 8.1 devices](enterprise-mode-schema-version-1-guidance.md).

## Enterprise Mode schema v.2 updates
Because of the schema changes, you can't combine the old version (v.1) with the new version (v.2) of the schema. If you look at your XML file, you can tell which version you're using by:

-   &lt;rules&gt;. If your schema root node includes this key, you're using the v.1 version of the schema.

-   &lt;site-list&gt;. If your schema root node includes this key, you're using the v.2 version of the schema.

You can continue to use the v.1 version of the schema on Windows 10, but you won't have the benefits of the new v.2 version schema updates and new features. Additionally, if you save the v.1 version of the schema in the new Enterprise Mode Site List Manager tool for Windows 10, it will automatically update the file to use the v.2 version of the schema.

### Enterprise Mode v.2 schema example
The following is an example of the v.2 version of the Enterprise Mode schema.

**Important**<br>
Make sure that you don't specify a protocol when adding your URLs. Using a URL like `<url="contoso.com">`, automatically applies to both http://contoso.com and https://contoso.com.
 
``` xml
<site-list version="205">
	<!--- File creation header --->
	<created-by>
		<tool>EnterpriseSitelistManager</tool>
		<version>10240</version>
		<date-created>20150728.135021</date-created>
	</created-by>
  	<!--- Begin Site List ---> 
	<site url="www.cpandl.com">
		<compat-mode>IE8Enterprise</compat-mode>
		<open-in>MSEdge</open-in>
	</site>
	<site url="www.woodgrovebank.com">
		<compat-mode>default</compat-mode>
		<open-in>IE11</open-in>
	</site>
	<site url="adatum.com">
		<compat-mode>IE7Enterprise</compat-mode>
		<open-in>IE11</open-in>
	</site>
	<site url="contoso.com">
		<compat-mode>default</compat-mode>
		<open-in>IE11</open-in>
	</site>
	<site url="relecloud.com"/>  
		<compat-mode>default</compat-mode>
		<open-in>none</open-in>
	<site url="relecloud.com/about">  
		<compat-mode>IE8Enterprise"</compat-mode>
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

<table>
<thead>
<tr class="header">
<th>Element</th>
<th>Description</th>
<th>Supported browser</th>
</tr>
</thead>
<tbody>
<tr>
<td>&lt;site-list&gt;</td>
<td>A new root node with this text is using the updated v.2 version of the schema. It replaces &lt;rules&gt;.
<p><b>Example</b>
<pre class="syntax">
&lt;site-list version="205"&gt;
  &lt;site url="contoso.com"&gt;
    &lt;compat-mode&gt;IE8Enterprise&lt;/compat-mode&gt;
    &lt;open-in&gt;IE11&lt;/open-in&gt;
  &lt;/site&gt;
&lt;/site-list&gt;</pre></td>
<td>Internet Explorer 11 and Microsoft Edge</td>
</tr>
<tr>
<td>&lt;site&gt;</td>
<td>A unique entry added for each site you want to put on the Enterprise Mode site list. The first &lt;site&gt; element will overrule any additional &lt;site&gt; elements that use the same value for the &lt;url&gt; element.
<p><b>Example</b>
<pre class="syntax">
&lt;site url="contoso.com"&gt;
  &lt;compat-mode&gt;default&lt;/compat-mode&gt;
  &lt;open-in&gt;none&lt;/open-in&gt;
&lt;/site&gt;</pre><p>
You can also use the self-closing version, &lt;url="contoso.com" /&gt;, which also sets:
<ul>
  <li>&lt;compat-mode&gt;default&lt;/compat-mode&gt;</li>
  <li>&lt;open-in&gt;none&lt;/open-in&gt;</li>
</ul></td>
<td>Internet Explorer 11 and Microsoft Edge</td>
</tr>
<tr>
<td>&lt;compat-mode&gt;</td>
<td>A child element that controls what compatibility setting is used for specific sites or domains. This element is only supported in IE11.
<p><b>Example</b>
<pre class="syntax">
&lt;site url="contoso.com"&gt;
  &lt;compat-mode&gt;IE8Enterprise&lt;/compat-mode&gt;
&lt;/site&gt;</pre><p>
Where:
<ul>
  <li><b>IE8Enterprise.</b> Loads the site in IE8 Enterprise Mode.<br>This element is required for sites included in the <b>EmIE</b> section of the v.1 schema and is needed to load in IE8 Enterprise Mode.</li><p>
  <li><b>IE7Enterprise.</b> Loads the site in IE7 Enterprise Mode.<br>This element is required for sites included in the <b>EmIE</b> section of the v.1 schema and is needed to load in IE7 Enterprise Mode.<p><b>Important</b><br>This tag replaces the combination of the `"forceCompatView"="true"` attribute and the list of sites specified in the EmIE section of the v.1 version of the schema.</li><p>
  <li><b>IE<i>[x]</i>.</b> Where <i>[x]</i> is the document mode number into which the site loads.</li><p>
  <li><b>Default or not specified.</b> Loads the site using the default compatibility mode for the page. In this situation, X-UA-compatible meta tags or HTTP headers are honored.</li>
</ul></td>
<td>Internet Explorer 11</td>
</tr>
<tr>
<td>&lt;open-in&gt;</td>
<td>A child element that controls what browser is used for sites. This element supports the <b>Open in IE11</b> or <b>Open in Microsoft Edge</b> experiences, for devices running Windows 10.
<p><b>Example</b>
<pre class="syntax">
&lt;site url="contoso.com"&gt;
  &lt;open-in&gt;none&lt;/open-in&gt;
&lt;/site&gt;</pre><p>
Where:
<ul>
  <li><b>IE11.</b> Opens the site in IE11, regardless of which browser is opened by the employee.</li><p>
  <li><b>MSEdge.</b> Opens the site in Microsoft Edge, regardless of which browser is opened by the employee.</li><p>
  <li><b>None or not specified.</b> Opens in whatever browser the employee chooses.</li>
</ul></td>
<td>Internet Explorer 11 and Microsoft Edge</td>
</tr>
</table>

### Updated schema attributes
The &lt;url&gt; attribute, as part of the &lt;site&gt; element in the v.2 version of the schema, replaces the &lt;domain&gt; element from the v.1 version of the schema.

<table>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Description</th>
<th>Supported browser</th>
</tr>
</thead>
<tbody>
<tr>
<td>version</td>
<td>Specifies the version of the Enterprise Mode Site List. This attribute is supported for the &lt;site-list&gt; element.</td>
<td>Internet Explorer 11 and Microsoft Edge</td>
</tr>
<tr>
<td>url</td>
<td>Specifies the URL (and port number using standard port conventions) to which the child elements apply. The URL can be a domain, sub-domain, or any path URL.
<br><b>Note</b><br>
Make sure that you don't specify a protocol. Using &lt;site url="contoso.com"&gt; applies to both http://contoso.com and https://contoso.com.
<p><b>Example</b>
<pre class="syntax">
&lt;site url="contoso.com:8080"&gt;
  &lt;compat-mode&gt;IE8Enterprise&lt;/compat-mode&gt;
  &lt;open-in&gt;IE11&lt;/open-in&gt;
&lt;/site&gt;</pre>
In this example, going to http://contoso.com:8080 using Microsoft Edge, causes the site to open in IE11 and load in IE8 Enterprise Mode.</td>
<td>Internet Explorer 11 and Microsoft Edge</td>
</tr>
</table>

### Deprecated attributes
These v.1 version schema attributes have been deprecated in the v.2 version of the schema:

<table>
<thead>
<tr class="header">
<th>Deprecated attribute</th>
<th>New attribute</th>
<th>Replacement example</th>
</tr>
</thead>
<tbody>
<tr>
<td>&lt;forceCompatView&gt;</td>
<td>&lt;compat-mode&gt;</td>
<td>Replace &lt;forceCompatView="true"&gt; with &lt;compat-mode&gt;IE7Enterprise&lt;/compat-mode&gt;</td>
</tr>
<tr>
<td>&lt;docMode&gt;</td>
<td>&lt;compat-mode&gt;</td>
<td>Replace &lt;docMode="IE5"&gt; with &lt;compat-mode&gt;IE5&lt;/compat-mode&gt;</td>
</tr>
<tr>
<td>&lt;doNotTransition&gt;</td>
<td>&lt;open-in&gt;</td>
<td>Replace &lt;doNotTransition="true"&gt; with &lt;open-in&gt;none&lt;/open-in&gt;</td>
</tr>
<tr>
<td>&lt;domain&gt; and &lt;path&gt;</td>
<td>&lt;site&gt;</td>
<td>Replace:
<pre class="syntax">
&lt;emie&gt;
  &lt;domain exclude="false"&gt;contoso.com&lt;/domain&gt;
&lt;/emie&gt;</pre>
With:
<pre class="syntax">
&lt;site url="contoso.com"/&gt;
  &lt;compat-mode&gt;IE8Enterprise&lt;/compat-mode&gt;
&lt;/site&gt;</pre>
<b>-AND-</b><p>
Replace:
<pre class="syntax">
&lt;emie&gt;
  &lt;domain exclude="true"&gt;contoso.com
     &lt;path exclude="false" forceCompatView="true"&gt;/about&lt;/path&gt;
  &lt;/domain&gt;
&lt;/emie&gt;</pre>
With:
<pre class="syntax">
&lt;site url="contoso.com/about"&gt;
  &lt;compat-mode&gt;IE7Enterprise&lt;/compat-mode&gt;
&lt;/site&gt;</pre></td>
</tr>
</table>

While the old, replaced attributes aren't supported in the v.2 version of the schema, they'll continue to work in the v.1 version of the schema. If, however, you're using the v.2 version of the schema and these attributes are still there, the v.2 version schema takes precedence. We don’t recommend combining the two schemas, and instead recommend that you move to the v.2 version of the schema to take advantage of the new features.

**Important**<br>
Saving your v.1 version of the file using the new Enterprise Mode Site List Manager tool for Windows 10 automatically updates the XML to the new v.2 version of the schema.

### What not to include in your schema
We recommend that you not add any of the following items to your schema because they can make your compatibility list behave in unexpected ways:

- Don’t use protocols. For example, http://, https://, or custom protocols. They break parsing.
- Don’t use wildcards.
- Don't use IP Addresses.
- Don’t use query strings, ampersands break parsing.

## Related topics
- [Use the Enterprise Mode Site List Manager tool](ie11-deploy-guide/use-the-enterprise-mode-site-list-manager-tool.md)





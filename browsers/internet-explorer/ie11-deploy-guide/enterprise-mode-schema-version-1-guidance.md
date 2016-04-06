---
description: Use the Enterprise Mode Site List Manager tool to create and update your Enterprise Mode site list for devices running Windows 7 or Windows 8.1 Update.
ms.assetid: 17c61547-82e3-48f2-908d-137a71938823
author: eross-msft
ms.prod: IE11
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: appcompat
title: Enterprise Mode schema v.1 guidance for Windows 7 and Windows 8.1 Update devices (Internet Explorer 11 for IT Pros)
---

# Enterprise Mode schema v.1 guidance for Windows 7 and Windows 8.1 Update devices

**Applies to:**

-   Windows 8.1
-   Windows 7

Use the Enterprise Mode Site List Manager tool to create and update your Enterprise Mode site list for devices running Windows 7 or Windows 8.1 Update. If you don't want to use the Enterprise Mode Site List Manager, you also have the option to update your XML schema using Notepad, or any other XML-editing app.

If you're using a Windows 10-based device, we strongly recommend moving to the new schema, v.2. For more info, see [Enterprise Mode schema v.2 guidance for Windows 10 devices](enterprise-mode-schema-version-2-guidance.md).

## Enterprise Mode schema v.1 example
The following is an example of the Enterprise Mode schema v.1. This schema can run on devices running Windows 7, Windows 8.1, and Windows 10.

**Important**<br>
Make sure that you don't specify a protocol when adding your URLs. Using a URL like `<domain>contoso.com</domain>` automatically applies to both http://contoso.com and https://contoso.com.

``` xml
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

### Schema elements
This table includes the elements used by the Enterprise Mode schema.

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
<td>&lt;rules&gt;</td>
<td>Root node for the schema.
<p><b>Example</b>
<pre class="syntax">
&lt;rules version="205"&gt;
  &lt;emie&gt;
    &lt;domain&gt;contoso.com&lt;/domain&gt;
  &lt;/emie&gt;
&lt;/rules&gt;</pre></td>
<td>Internet Explorer 11 and Microsoft Edge</td>
</tr>
<tr>
<td>&lt;emie&gt;</td>
<td>The parent node for the Enterprise Mode section of the schema. All &lt;domain&gt; entries will have either IE8 Enterprise Mode or IE7 Enterprise Mode applied.
<p><b>Example</b>
<pre class="syntax">
&lt;rules version="205"&gt;
  &lt;emie&gt;
    &lt;domain&gt;contoso.com&lt;/domain&gt;
  &lt;/emie&gt;
&lt;/rules>&gt;</pre></td>
<td>Internet Explorer 11 and Microsoft Edge</td>
</tr>
<tr>
<td>&lt;docMode&gt;</td>
<td>The parent node for the document mode section of the section. All &lt;domain&gt; entries will get IE5 - IE11 document modes applied. If there's a &lt;domain&gt; element in the &lt;docMode&gt; section that uses the same value as a &lt;domain&gt; element in the &lt;emie&gt; section, the &lt;emie&gt; element is applied.
<p><b>Example</b>
<pre class="syntax">
&lt;rules version="205"&gt;
  &lt;docMode&gt;
    &lt;domain docMode="7"&gt;contoso.com&lt;/domain&gt;
  &lt;/docMode&gt;
&lt;/rules&gt;</pre></td>
<td>Internet Explorer 11</td>
</tr>
<tr>
<td>&lt;domain&gt;</td>
<td>A unique entry added for each site you want to put on the Enterprise Mode site list. The first &lt;domain&gt; element will overrule any additional &lt;domain&gt; elements that use the same value for the section. You can use port numbers for this element.
<p><b>Example</b>
<pre class="syntax">
&lt;emie&gt;
  &lt;domain&gt;contoso.com:8080&lt;/domain&gt;
&lt;/emie&gt;</pre></td>
<td>Internet Explorer 11 and Microsoft Edge</td>
</tr>
<tr>
<td>&lt;path&gt;</td>
<td>A unique entry added for each path under a domain you want to put on the Enterprise Mode site list. The &lt;path&gt; element is a child of the &lt;domain&gt; element. Additionally, the first &lt;path&gt; element will overrule any additional &lt;path&gt; elements in the schema section.
<p><b>Example</b>
<pre class="syntax">
&lt;emie&gt;
  &lt;domain exclude="false"&gt;fabrikam.com
    &lt;path exclude="true"&gt;/products&lt;/path&gt;
  &lt;/domain&gt;
&lt;/emie&gt;</pre><p>
Where http://fabrikam.com doesn't use IE8 Enterprise Mode, but http://fabrikam.com/products does.</td>
<td>Internet Explorer 11 and Microsoft Edge</td>
</tr>
</table>

### Schema attributes
This table includes the attributes used by the Enterprise Mode schema.

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
<td>&lt;version&gt;</td>
<td>Specifies the version of the Enterprise Mode Site List. This attribute is supported for the &lt;rules&gt; element.</td>
<td>Internet Explorer 11 and Microsoft Edge</td>
</tr>
<tr>
<td>&lt;exclude&gt;</td>
<td>Specifies the domain or path that is excluded from getting the behavior applied. This attribute is supported on the &lt;domain&gt; and &lt;path&gt; elements.
<p><b>Example</b>
<pre class="syntax">
&lt;emie&gt;
  &lt;domain exclude="false"&gt;fabrikam.com
    &lt;path exclude="true"&gt;/products&lt;/path&gt;
  &lt;/domain&gt;
&lt;/emie&gt;</pre><p>
Where http://fabrikam.com doesn't use IE8 Enterprise Mode, but http://fabrikam.com/products does.</td>
<td>Internet Explorer 11 and Microsoft Edge</td>
</tr>
<tr>
<td>&lt;docMode&gt;</td>
<td>Specifies the document mode to apply. This attribute is only supported on &lt;domain&gt; or &lt;path&gt; elements in the &lt;docMode&gt; section.
<p><b>Example</b>
<pre class="syntax">
&lt;docMode&gt;
  &lt;domain exclude="false"&gt;fakrikam.com
    &lt;path docMode="7"&gt;/products&lt;/path&gt;
  &lt;/domain&gt;
&lt;/docMode&gt;</pre></td>
<td>Internet Explorer 11</td>
</tr>
</table>

### What not to include in your schema
We recommend that you not add any of the following items to your schema because they can make your compatibility list behave in unexpected ways:
- Don’t use protocols. For example, `http://`, `https://`, or custom protocols. They break parsing.
- Don’t use wildcards.
- Don't use IP Addresses.
- Don’t use query strings, ampersands break parsing.

## How to use trailing slashes
You can use trailing slashes at the path-level, but not at the domain-level:
- **Domain-level.** Don’t add trailing slashes to a domain, it breaks parsing.
- **Path-level.** Adding a trailing slash to a path means that the path ends at that point. By not adding a trailing slash, the rule applies to all of the sub-paths.

**Example**

``` xml
<domain exclude="true">contoso.com
  <path exclude="false">/about/</path>
</domain>
```
In this example, `contoso.com/about/careers` will use the default version of Internet Explorer, even though `contoso.com/about/` uses Enterprise Mode.


## How to target specific sites
If you want to target specific sites in your organization.

<table>
<thead>
<tr class="header">
<th>Targeted site</th>
<th>Example</th>
<th>Explanation</th>
</tr>
</thead>
<tbody>
<tr>
<td>You can specify subdomains in the domain tag</td>
<td>
<pre class="syntax">
&lt;docMode&gt;
  &lt;domain docMode="5"&gt;contoso.com&lt;/domain&gt;
  &lt;domain docMode="9"&gt;info.contoso.com&lt;/domain&gt;
&lt;docMode&gt;</pre></td>
<td>
<ul>
  <li>contoso.com uses document mode 5.</li>
  <li>info.contoso.com uses document mode 9.</li>
  <li>test.contoso.com also uses document mode 5.</li>
</ul>
</td></tr>
<tr>
<td>You can specify exact URLs by listing the full path</td>
<td>
<pre class="syntax">
&lt;emie&gt;
  &lt;domain exclude="false"&gt;bing.com&lt;/domain&gt;
  &lt;domain exclude="false" forceCompatView="true"&gt;contoso.com&lt;/domain&gt;
&lt;emie&gt;</pre></td>
<td>
<ul>
  <li>bing.com uses IE8 Enterprise Mode.</li>
  <li>contoso.com uses IE7 Enterprise Mode.</li>
</ul>
</td></tr>
<tr>
<td>You can nest paths underneath domains</td>
<td>
<pre class="syntax">
&lt;emie&gt;
  &lt;domain exclude="true"&gt;contoso.com
    &lt;path exclude="false"&gt;/about&lt;/path&gt;
    &lt;path exclude="true"&gt;/about/business&lt;/path&gt;
  &lt;/domain&gt;
&lt;/emie&gt;</pre></td>
<td>
<ul>
<li>contoso.com will use the default version of IE.</li>
<li>contoso.com/about and everything underneath that node will load in Enterprise Mode, except contoso.com/about/business, which will load in the default version of IE.</li>
</ul>
</td></tr>
<tr>
<td>You can’t add a path underneath a path. The file will still be parsed, but the sub-path will be ignored</td>
<td>
<pre class="syntax">
&lt;emie&gt;
  &lt;domain exclude="true"&gt;contoso.com
    &lt;path&gt;/about
    &lt;path exclude="true"&gt;/business&lt;/path&gt;
    &lt;/path&gt;
  &lt;/domain&gt;
&lt;/emie&gt;</pre></td>
<td>
<ul>
<li>contoso.com will use the default version of IE.</li>
<li>contoso.com/about and everything underneath that node will load in Enterprise Mode, including contoso.com/about/business because the last rule is ignored.</li>
</ul>
</td></tr>
</table>



---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Use the Enterprise Mode Site List Manager to create and update your Enterprise Mode site list for devices running Windows 7 or Windows 8.1 Update.
author: dansimp
ms.prod: ie11
ms.assetid: 17c61547-82e3-48f2-908d-137a71938823
ms.reviewer: 
audience: itpro
manager: dansimp
ms.author: dansimp
title: Enterprise Mode schema v.1 guidance (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Enterprise Mode schema v.1 guidance

[!INCLUDE [Microsoft 365 workloads end of support for IE11](../includes/microsoft-365-ie-end-of-support.md)]


**Applies to:**

- Windows 10
- Windows 8.1
- Windows 7

Use the Enterprise Mode Site List Manager (schema v.1) to create and update your Enterprise Mode site list for devices running the v.1 version of the schema, or the Enterprise Mode Site List Manager (schema v.2) to create and update your Enterprise Mode site list for devices running the v.2 version of the schema. We strongly recommend moving to the new schema, v.2. For more info, see [Enterprise Mode schema v.2 guidance](enterprise-mode-schema-version-2-guidance.md). 

If you don't want to use the Enterprise Mode Site List Manager, you also have the option to update your XML schema using Notepad, or any other XML-editing app.

## Enterprise Mode schema v.1 example
The following is an example of the Enterprise Mode schema v.1. This schema can run on devices running Windows 7 and Windows 8.1.

> [!IMPORTANT]
> Make sure that you don't specify a protocol when adding your URLs. Using a URL like `<domain>contoso.com</domain>` automatically applies to both `http://contoso.com` and `https://contoso.com`.

```xml
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

|Element |Description  |Supported browser  |
|---------|---------|---------|
|&lt;rules&gt;   | Root node for the schema.<br>**Example** <pre class="syntax">&lt;rules version="205"&gt; <br>  &lt;emie&gt; <br>   &lt;domain&gt;contoso.com&lt;/domain&gt; <br>  &lt;/emie&gt;<br> &lt;/rules&gt; |Internet Explorer 11 and Microsoft Edge         |
|&lt;emie&gt;     |The parent node for the Enterprise Mode section of the schema. All &lt;domain&gt; entries will have either IE8 Enterprise Mode or IE7 Enterprise Mode applied. <br> **Example** <pre class="syntax">&lt;rules version="205"&gt; <br> &lt;emie&gt; <br>   &lt;domain&gt;contoso.com&lt;/domain&gt; <br> &lt;/emie&gt;<br>&lt;/rules&gt;  <br> </pre><p> **or** <br> For IPv6 ranges: <pre class="syntax"><br>&lt;rules version="205"&gt; <br> &lt;emie&gt; <br>  &lt;domain&gt;[10.122.34.99]:8080&lt;/domain&gt; <br> &lt;/emie&gt;<br>&lt;/rules&gt; </pre><p> <br> **or**<br> For IPv4 ranges:<pre class="syntax">&lt;rules version="205"&gt; <br> &lt;emie&gt; <br>  &lt;domain&gt;[10.122.34.99]:8080&lt;/domain&gt; <br> &lt;/emie&gt;<br>&lt;/rules&gt; | Internet Explorer 11 and Microsoft Edge       |
|&lt;docMode&gt;     |The parent node for the document mode section of the section. All &lt;domain&gt; entries will get IE5 - IE11 document modes applied. If there's a &lt;domain&gt; element in the docMode section that uses the same value as a &lt;domain&gt; element in the emie section, the emie element is applied.  <br> **Example** <pre class="syntax"> <br/>&lt;rules version="205"&gt; <br> &lt;docmode&gt; <br>   &lt;domain docMode="7"&gt;contoso.com&lt;/domain&gt; <br> &lt;/docmode&gt;<br>&lt;/rules&gt;     |Internet Explorer 11         |
|&lt;domain&gt;     |A unique entry added for each site you want to put on the Enterprise Mode site list. The first &lt;domain&gt; element will overrule any additional &lt;domain&gt; elements that use the same value for the section. You can use port numbers for this element. <br> **Example** <pre class="syntax"> <br/>&lt;emie&gt; <br> &lt;domain&gt;contoso.com:8080&lt;/domain&gt;<br>&lt;/emie&gt;       |Internet Explorer 11 and Microsoft Edge         |
|&lt;path&gt;    |A unique entry added for each path under a domain you want to put on the Enterprise Mode site list. The &lt;path&gt; element is a child of the &lt;domain&gt; element. Additionally, the first &lt;path&gt; element will overrule any additional &lt;path&gt; elements in the schema section.<br> **Example**  <pre class="syntax"> <br/>&lt;emie&gt; <br> &lt;domain exclude="true"&gt;fabrikam.com <br>   &lt;path exclude="false"&gt;/products&lt;/path&gt;<br> &lt;/domain&gt;<br>&lt;/emie&gt;</pre><p> <br> Where `https://fabrikam.com` doesn't use IE8 Enterprise Mode, but `https://fabrikam.com/products` does.   |Internet Explorer 11 and Microsoft Edge         |

### Schema attributes
This table includes the attributes used by the Enterprise Mode schema.

|Attribute|Description|Supported browser|
|--- |--- |--- |
|version|Specifies the version of the Enterprise Mode Site List. This attribute is supported for the &lt;rules&gt; element.|Internet Explorer 11 and Microsoft Edge|
|exclude|Specifies the domain or path that is excluded from getting the behavior applied. This attribute is supported on the &lt;domain&gt; and &lt;path&gt; elements.<br> **Example** <pre class="syntax">&lt;emie&gt;<br>  &lt;domain exclude="false"&gt;fabrikam.com <br>    &lt;path exclude="true"&gt;/products&lt;/path&gt;<br>  &lt;/domain&gt;<br>&lt;/emie&gt; </pre><p> Where `https://fabrikam.com` doesn't use IE8 Enterprise Mode, but `https://fabrikam.com/products` does.|Internet Explorer 11 and Microsoft Edge|
|docMode|Specifies the document mode to apply. This attribute is only supported on &lt;domain&gt; or &lt;path&gt;elements in the &lt;docMode&gt; section.<br> **Example**<pre class="syntax">&lt;docMode&gt; <br>  &lt;domain exclude="false"&gt;fabrikam.com <br>    &lt;path docMode="9"&gt;/products&lt;/path&gt;<br>  &lt;/domain&gt;<br>&lt;/docMode&gt;|Internet Explorer 11|
|doNotTransition| Specifies that the page should load in the current browser, otherwise it will open in IE11. This attribute is supported on all &lt;domain&gt; or &lt;path&gt; elements. If this attribute is absent, it defaults to false.<br> **Example**<pre class="syntax">&lt;emie&gt;<br> &lt;domain doNotTransition=&quot;false&quot;&gt;fabrikam.com <br>   &lt;path doNotTransition=&quot;true&quot;&gt;/products&lt;/path&gt;<br> &lt;/domain&gt;<br>&lt;/emie&gt;</pre><p>Where `https://fabrikam.com` opens in the IE11 browser, but `https://fabrikam.com/products` loads in the current browser (eg. Microsoft Edge)|Internet Explorer 11 and Microsoft Edge|
|forceCompatView|Specifies that the page should load in IE7 document mode (Compat View). This attribute is only supported on &lt;domain&gt; or &lt;path&gt; elements in the &lt;emie&gt; section. If the page is also configured to load in Enterprise Mode, it will load in IE7 Enterprise Mode. Otherwise (exclude=&quot;true&quot;), it will load in IE11's IE7 document mode. If this attribute is absent, it defaults to false. <br> **Example**<pre class="syntax">&lt;emie&gt;<br> &lt;domain exclude=&quot;true&quot;&gt;fabrikam.com <br>   &lt;path forcecompatview=&quot;true&quot;&gt;/products&lt;/path&gt;<br> &lt;/domain&gt;<br>&lt;/emie&gt;</pre><p>Where `https://fabrikam.com` does not use Enterprise Mode, but `https://fabrikam.com/products` uses IE7 Enterprise Mode.|Internet Explorer 11|

### Using Enterprise Mode and document mode together
If you want to use both Enterprise Mode and document mode together, you need to be aware that  &lt;emie&gt; entries override &lt;docMode&gt; entries for the same domain. 

For example, say you want all of the sites in the contoso.com domain to open using IE8 Enterprise Mode, except test.contoso.com, which needs to open in document mode 11. Because Enterprise Mode takes precedence over document mode, if you want test.contoso.com to open using document mode, you'll need to explicitly add it as an exclusion to the &lt;emie&gt; parent node.

```xml
<rules version="1">
  <emie>
    <domain exclude="false">contoso.com</domain>
    <domain exclude="true">test.contoso.com</domain>
  </emie>
  <docMode>
    <domain docMode="11">test.contoso.com</domain>
  </docMode>
</rules>
```

### What not to include in your schema
We recommend that you not add any of the following items to your schema because they can make your compatibility list behave in unexpected ways:
- Don’t use protocols. For example, `http://`, `https://`, or custom protocols. They break parsing.
- Don’t use wildcards.
- Don’t use query strings, ampersands break parsing.

## How to use trailing slashes
You can use trailing slashes at the path-level, but not at the domain-level:
- **Domain-level.** Don’t add trailing slashes to a domain, it breaks parsing.
- **Path-level.** Adding a trailing slash to a path means that the path ends at that point. By not adding a trailing slash, the rule applies to all of the sub-paths.

**Example**

```xml
<domain exclude="true">contoso.com
  <path exclude="false">/about/</path>
</domain>
```
In this example, `contoso.com/about/careers` will use the default version of Internet Explorer, even though `contoso.com/about/` uses Enterprise Mode.


## How to target specific sites
If you want to target specific sites in your organization.

|Targeted site |Example |Explanation |
|--------------|--------|------------|
|You can specify subdomains in the domain tag. |<code>&lt;docMode&gt;<br>&lt;domain docMode="5"&gt;contoso.com&lt;/domain&gt;<br>&lt;domain docMode="9"&gt;info.contoso.com&lt;/domain&gt;<br>&lt;docMode&gt;</code> |<ul><li>contoso.com uses document mode 5.</li><li>info.contoso.com uses document mode 9.</li><li>test.contoso.com also uses document mode 5.</li></ul>|
|You can specify exact URLs by listing the full path. |<code>&lt;emie&gt;<br>&lt;domain exclude="false"&gt;bing.com&lt;/domain&gt;<br>&lt;domain exclude="false" forceCompatView="true"&gt;contoso.com&lt;/domain&gt;<br>&lt;emie&gt;</code>|<ul><li>bing.com uses IE8 Enterprise Mode.</li><li>contoso.com uses IE7 Enterprise Mode.</li></ul>|
|You can nest paths underneath domains. |<code>&lt;emie&gt;<br>&lt;domain exclude="true"&gt;contoso.com<br>&lt;path exclude="false"&gt;/about&lt;/path&gt;<br>&lt;path exclude="true"&gt;<br>/about/business&lt;/path&gt;<br>&lt;/domain&gt;<br>&lt;/emie&gt;</code> |<ul><li>contoso.com will use the default version of IE.</li><li>contoso.com/about and everything underneath that node will load in Enterprise Mode, except contoso.com/about/business, which will load in the default version of IE.</li></ul> |
|You can’t add a path underneath a path. The file will still be parsed, but the sub-path will be ignored. |<code>&lt;emie&gt;<br>&lt;domain exclude="true"&gt;contoso.com<br>&lt;path&gt;/about<br>&lt;path exclude="true"&gt;/business&lt;/path&gt;<br>&lt;/path&gt;<br>&lt;/domain&gt;<br>&lt;/emie&gt;</code> |<ul><li>contoso.com will use the default version of IE.</li><li>contoso.com/about and everything underneath that node will load in Enterprise Mode, including contoso.com/about/business because the last rule is ignored.</li></ul> |

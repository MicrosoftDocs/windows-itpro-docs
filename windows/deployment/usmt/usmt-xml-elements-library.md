---
title: XML Elements Library (Windows 10)
description: XML Elements Library
ms.assetid: f5af0f6d-c3bf-4a4c-a0ca-9db7985f954f
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
audience: itproauthor: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# XML Elements Library


## Overview


This topic describes the XML elements and helper functions that you can employ to author migration .xml files to use with User State Migration Tool (USMT). It is assumed that you understand the basics of XML. .

## In This Topic


In addition to XML elements and helper functions, this topic describes how to specify encoded locations and locations patterns, functions that are for internal USMT use only, and the version tags that you can use with helper functions.

-   [Elements and helper functions](#elements)

-   [Appendix](#appendix)

    -   [Specifying locations](#locations)

    -   [Internal USMT functions](#internalusmtfunctions)

    -   [Valid version tags](#allowed)

## <a href="" id="elements"></a>Elements and Helper Functions


The following table describes the XML elements and helper functions you can use with USMT.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"><strong>Elements A-K</strong></th>
<th align="left"><strong>Elements L-Z</strong></th>
<th align="left"><strong>Helper functions</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><a href="#addobjects" data-raw-source="[&amp;lt;addObjects&amp;gt;](#addobjects)">&lt;addObjects&gt;</a></p>
<p><a href="#attribute" data-raw-source="[&amp;lt;attributes&amp;gt;](#attribute)">&lt;attributes&gt;</a></p>
<p><a href="#bytes" data-raw-source="[&amp;lt;bytes&amp;gt;](#bytes)">&lt;bytes&gt;</a></p>
<p><a href="#commandline" data-raw-source="[&amp;lt;commandLine&amp;gt;](#commandline)">&lt;commandLine&gt;</a></p>
<p><a href="#component" data-raw-source="[&amp;lt;component&amp;gt;](#component)">&lt;component&gt;</a></p>
<p><a href="#condition" data-raw-source="[&amp;lt;condition&amp;gt;](#condition)">&lt;condition&gt;</a></p>
<p><a href="#conditions" data-raw-source="[&amp;lt;conditions&amp;gt;](#conditions)">&lt;conditions&gt;</a></p>
<p><a href="#content" data-raw-source="[&amp;lt;content&amp;gt;](#content)">&lt;content&gt;</a></p>
<p><a href="#contentmodify" data-raw-source="[&amp;lt;contentModify&amp;gt;](#contentmodify)">&lt;contentModify&gt;</a></p>
<p><a href="#description" data-raw-source="[&amp;lt;description&amp;gt;](#description)">&lt;description&gt;</a></p>
<p><a href="#destinationcleanup" data-raw-source="[&amp;lt;destinationCleanup&amp;gt;](#destinationcleanup)">&lt;destinationCleanup&gt;</a></p>
<p><a href="#detect" data-raw-source="[&amp;lt;detect&amp;gt;](#detect)">&lt;detect&gt;</a></p>
<p><a href="#detects" data-raw-source="[&amp;lt;detects&amp;gt;](#detects)">&lt;detects&gt;</a></p>
<p><a href="#detection" data-raw-source="[&amp;lt;detection&amp;gt;](#detection)">&lt;detection&gt;</a></p>
<p><a href="#displayname" data-raw-source="[&amp;lt;displayName&amp;gt;](#displayname)">&lt;displayName&gt;</a></p>
<p><a href="#bkmk-environment" data-raw-source="[&amp;lt;environment&amp;gt;](#bkmk-environment)">&lt;environment&gt;</a></p>
<p><a href="#exclude" data-raw-source="[&amp;lt;exclude&amp;gt;](#exclude)">&lt;exclude&gt;</a></p>
<p><a href="#excludeattributes" data-raw-source="[&amp;lt;excludeAttributes&amp;gt;](#excludeattributes)">&lt;excludeAttributes&gt;</a></p>
<p><a href="#extensions" data-raw-source="[&amp;lt;extensions&amp;gt;](#extensions)">&lt;extensions&gt;</a></p>
<p><a href="#extension" data-raw-source="[&amp;lt;extension&amp;gt;](#extension)">&lt;extension&gt;</a></p>
<p><a href="#externalprocess" data-raw-source="[&amp;lt;externalProcess&amp;gt;](#externalprocess)">&lt;externalProcess&gt;</a></p>
<p><a href="#icon" data-raw-source="[&amp;lt;icon&amp;gt;](#icon)">&lt;icon&gt;</a></p>
<p><a href="#include" data-raw-source="[&amp;lt;include&amp;gt;](#include)">&lt;include&gt;</a></p>
<p><a href="#includeattributes" data-raw-source="[&amp;lt;includeAttribute&amp;gt;](#includeattributes)">&lt;includeAttribute&gt;</a></p></td>
<td align="left"><p><a href="#library" data-raw-source="[&amp;lt;library&amp;gt;](#library)">&lt;library&gt;</a></p>
<p><a href="#location" data-raw-source="[&amp;lt;location&amp;gt;](#location)">&lt;location&gt;</a></p>
<p><a href="#locationmodify" data-raw-source="[&amp;lt;locationModify&amp;gt;](#locationmodify)">&lt;locationModify&gt;</a></p>
<p><a href="#locdefinition" data-raw-source="[&amp;lt;_locDefinition&amp;gt;](#locdefinition)">&lt;_locDefinition&gt;</a></p>
<p><a href="#manufacturer" data-raw-source="[&amp;lt;manufacturer&amp;gt;](#manufacturer)">&lt;manufacturer&gt;</a></p>
<p><a href="#merge" data-raw-source="[&amp;lt;merge&amp;gt;](#merge)">&lt;merge&gt;</a></p>
<p><a href="#migration" data-raw-source="[&amp;lt;migration&amp;gt;](#migration)">&lt;migration&gt;</a></p>
<p><a href="#namedelements" data-raw-source="[&amp;lt;namedElements&amp;gt;](#namedelements)">&lt;namedElements&gt;</a></p>
<p><a href="#object" data-raw-source="[&amp;lt;object&amp;gt;](#object)">&lt;object&gt;</a></p>
<p><a href="#objectset" data-raw-source="[&amp;lt;objectSet&amp;gt;](#objectset)">&lt;objectSet&gt;</a></p>
<p><a href="#path" data-raw-source="[&amp;lt;path&amp;gt;](#path)">&lt;path&gt;</a></p>
<p><a href="#paths" data-raw-source="[&amp;lt;paths&amp;gt;](#paths)">&lt;paths&gt;</a></p>
<p><a href="#pattern" data-raw-source="[&amp;lt;pattern&amp;gt;](#pattern)">&lt;pattern&gt;</a></p>
<p><a href="#processing" data-raw-source="[&amp;lt;processing&amp;gt;](#processing)">&lt;processing&gt;</a></p>
<p><a href="#plugin" data-raw-source="[&amp;lt;plugin&amp;gt;](#plugin)">&lt;plugin&gt;</a></p>
<p><a href="#role" data-raw-source="[&amp;lt;role&amp;gt;](#role)">&lt;role&gt;</a></p>
<p><a href="#rules" data-raw-source="[&amp;lt;rules&amp;gt;](#rules)">&lt;rules&gt;</a></p>
<p><a href="#script" data-raw-source="[&amp;lt;script&amp;gt;](#script)">&lt;script&gt;</a></p>
<p><a href="#text" data-raw-source="[&amp;lt;text&amp;gt;](#text)">&lt;text&gt;</a></p>
<p><a href="#unconditionalexclude" data-raw-source="[&amp;lt;unconditionalExclude&amp;gt;](#unconditionalexclude)">&lt;unconditionalExclude&gt;</a></p>
<p><a href="#variable" data-raw-source="[&amp;lt;variable&amp;gt;](#variable)">&lt;variable&gt;</a></p>
<p><a href="#version" data-raw-source="[&amp;lt;version&amp;gt;](#version)">&lt;version&gt;</a></p>
<p><a href="#windowsobjects" data-raw-source="[&amp;lt;windowsObjects&amp;gt;](#windowsobjects)">&lt;windowsObjects&gt;</a></p></td>
<td align="left"><p><a href="#conditionfunctions" data-raw-source="[&amp;lt;condition&amp;gt; functions](#conditionfunctions)">&lt;condition&gt; functions</a></p>
<p><a href="#contentfunctions" data-raw-source="[&amp;lt;content&amp;gt; functions](#contentfunctions)">&lt;content&gt; functions</a></p>
<p><a href="#contentmodifyfunctions" data-raw-source="[&amp;lt;contentModify&amp;gt; functions](#contentmodifyfunctions)">&lt;contentModify&gt; functions</a></p>
<p><a href="#persistfilterfunctions" data-raw-source="[&amp;lt;include&amp;gt; and &amp;lt;exclude&amp;gt; filter functions](#persistfilterfunctions)">&lt;include&gt; and &lt;exclude&gt; filter functions</a></p>
<p><a href="#locationmodifyfunctions" data-raw-source="[&amp;lt;locationModify&amp;gt; functions](#locationmodifyfunctions)">&lt;locationModify&gt; functions</a></p>
<p><a href="#mergefunctions" data-raw-source="[&amp;lt;merge&amp;gt; functions](#mergefunctions)">&lt;merge&gt; functions</a></p>
<p><a href="#scriptfunctions" data-raw-source="[&amp;lt;script&amp;gt; functions](#scriptfunctions)">&lt;script&gt; functions</a></p>
<p><a href="#internalusmtfunctions" data-raw-source="[Internal USMT functions](#internalusmtfunctions)">Internal USMT functions</a></p></td>
</tr>
</tbody>
</table>



## <a href="" id="addobjects"></a>&lt;addObjects&gt;


The &lt;addObjects&gt; element emulates the existence of one or more objects on the source computer. The child &lt;object&gt; elements provide the details of the emulated objects. If the content is a &lt;script&gt; element, the result of the invocation will be an array of objects.

-   **Number of occurrences:** unlimited

-   **Parent elements:**[&lt;rules&gt;](#rules)

-   **Required child elements:** [&lt;object&gt;](#object) In addition, you must specify [&lt;location&gt;](#location) and [&lt;attribute&gt;](#attribute) as child elements of this &lt;object&gt; element.

-   **Optional child elements:**[&lt;conditions&gt;](#conditions), &lt;condition&gt;, [&lt;script&gt;](#script)

Syntax:

&lt;addObjects&gt;

&lt;/addObjects&gt;

The following example is from the MigApp.xml file:

``` syntax
<addObjects>
   <object>
      <location type="Registry">%HklmWowSoftware%\Microsoft\Office\12.0\Common\Migration\Office [UpgradeVersion]</location>
      <attributes>DWORD</attributes>
      <bytes>0B000000</bytes>
   </object>
   <object>
      <location type="Registry">%HklmWowSoftware%\Microsoft\Office\12.0\Common\Migration\Office [Lang]</location>
      <attributes>DWORD</attributes>
      <bytes>00000000</bytes>
   </object>
</addObjects>
```

## <a href="" id="attribute"></a>&lt;attributes&gt;


The &lt;attributes&gt; element defines the attributes for a registry key or file.

-   **Number of occurrences:** once for each &lt;object&gt;

-   **Parent elements:**[&lt;object&gt;](#object)

-   **Child elements:** none

Syntax:

&lt;attributes&gt;*Content*&lt;/attributes&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><em>Content</em></p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>The content depends on the type of object specified.</p>
<ul>
<li><p>For files, the content can be a string containing any of the following attributes separated by commas:</p>
<ul>
<li><p>Archive</p></li>
<li><p>Read-only</p></li>
<li><p>System</p></li>
<li><p>Hidden</p></li>
</ul></li>
<li><p>For registry keys, the content can be one of the following types:</p>
<ul>
<li><p>None</p></li>
<li><p>String</p></li>
<li><p>ExpandString</p></li>
<li><p>Binary</p></li>
<li><p>Dword</p></li>
<li><p>REG_SZ</p></li>
</ul></li>
</ul></td>
</tr>
</tbody>
</table>



The following example is from the MigApp.xml file:

``` syntax
<object>
   <location type="Registry">%HklmWowSoftware%\Microsoft\Office\12.0\Common\Migration\Office [Lang]</location>
   <attributes>DWORD</attributes>
   <bytes>00000000</bytes>
</object> 
```

## <a href="" id="bytes"></a>&lt;bytes&gt;


You must specify the &lt;bytes&gt; element only for files because, if &lt;location&gt; corresponds to a registry key or a directory, then &lt;bytes&gt; will be ignored.

-   **Number of occurrences:** zero or one

-   **Parent elements:**[&lt;object&gt;](#object)

-   **Child elements:** none

Syntax:

&lt;bytes string="Yes|No" expand="Yes|No"&gt;*Content*&lt;/bytes&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>string</p></td>
<td align="left"><p>No, default is No</p></td>
<td align="left"><p>Determines whether <em>Content</em> should be interpreted as a string or as bytes.</p></td>
</tr>
<tr class="even">
<td align="left"><p>expand</p></td>
<td align="left"><p>No (default = Yes</p></td>
<td align="left"><p>When the expand parameter is Yes, the content of the &lt;bytes&gt; element is first expanded in the context of the source computer and then interpreted.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><em>Content</em></p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Depends on the value of the string.</p>
<ul>
<li><p>When the string is Yes: the content of the &lt;bytes&gt; element is interpreted as a string.</p></li>
<li><p>When the string is No: the content of the &lt;bytes&gt; element is interpreted as bytes. Each two characters represent the hexadecimal value of a byte. For example, &quot;616263&quot; is the representation for the &quot;abc&quot; ANSI string. A complete representation of the UNICODE string &quot;abc&quot; including the string terminator would be: &quot;6100620063000000&quot;.</p></li>
</ul></td>
</tr>
</tbody>
</table>



The following example is from the MigApp.xml file:

``` syntax
<object>
   <location type="Registry">%HklmWowSoftware%\Microsoft\Office\12.0\Common\Migration\Office [Lang]</location>
   <attributes>DWORD</attributes>
   <bytes>00000000</bytes>
</object> 
```

## <a href="" id="commandline"></a>&lt;commandLine&gt;


You might want to use the &lt;commandLine&gt; element if you want to start or stop a service or application before or after you run the ScanState and LoadState tools.

-   **Number of occurrences:** unlimited

-   **Parent elements:**[&lt;externalProcess&gt;](#externalprocess)

-   **Child elements:** none****

Syntax:

&lt;commandLine&gt;*CommandLineString*&lt;/commandLine&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><em>CommandLineString</em></p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>A valid command line.</p></td>
</tr>
</tbody>
</table>



## <a href="" id="component"></a>&lt;component&gt;


The &lt;component&gt; element is required in a custom .xml file. This element defines the most basic construct of a migration .xml file. For example, in the MigApp.xml file, "Microsoft® Office 2003" is a component that contains another component, "Microsoft Office Access® 2003". You can use the child elements to define the component.

A component can be nested inside another component; that is, the &lt;component&gt; element can be a child of the &lt;role&gt; element within the &lt;component&gt; element in two cases: 1) when the parent &lt;component&gt; element is a container or 2) if the child &lt;component&gt; element has the same role as the parent &lt;component&gt; element.

-   **Number of occurrences:** Unlimited

-   **Parent elements:**[&lt;migration&gt;](#migration), [&lt;role&gt;](#role)

-   **Required child elements:**[&lt;role&gt;](#role), [&lt;displayName&gt;](#displayname)

-   **Optional child elements:**[&lt;manufacturer&gt;](#manufacturer), [&lt;version&gt;](#version), [&lt;description&gt;](#description), [&lt;paths&gt;](#paths), [&lt;icon&gt;](#icon), [&lt;environment&gt;](#bkmk-environment), [&lt;extensions&gt;](#extensions)

Syntax:

&lt;component type="System|Application|Device|Documents" context="User|System|UserAndSystem" defaultSupported="TRUE|FALSE|YES|NO"

hidden="Yes|No"&gt;

&lt;/component&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>type</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>You can use the following to group settings, and define the type of the component.</p>
<ul>
<li><p><strong>System:</strong> Operating system settings. All Windows® components are defined by this type.</p>
<p>When type=&quot;System&quot; and defaultSupported=&quot;FALSE&quot; the settings will not migrate unless there is an equivalent component in the .xml files that is specified on the LoadState command line. For example, the default MigSys.xml file contains components with type=&quot;System&quot; and defaultSupported=&quot;FALSE&quot;. If you specify this file on the ScanState command line, you must also specify the file on the LoadState command line for the settings to migrate. This is because the LoadState tool must detect an equivalent component. That is, the component must have the same migration urlid of the .xml file and an identical display name. Otherwise, the LoadState tool will not migrate those settings from the store. This is helpful when the source computer is running Windows XP, and you are migrating to both Windows Vista and Windows XP because you can use the same store for both destination computers.</p></li>
<li><p><strong>Application:</strong> Settings for an application.</p></li>
<li><p><strong>Device:</strong> Settings for a device.</p></li>
<li><p><strong>Documents:</strong> Specifies files.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>context</p></td>
<td align="left"><p>No</p>
<p>Default = UserAndSystem</p></td>
<td align="left"><p>Defines the scope of this parameter; that is, whether to process this component in the context of the specific user, across the entire operating system, or both.</p>
<p>The largest possible scope is set by the &lt;component&gt; element. For example, if a &lt;component&gt; element has a context of User and a &lt;rules&gt; element had a context of UserAndSystem, then the &lt;rules&gt; element would act as though it has a context of User. If a &lt;rules&gt; element has a context of System, it would act as though the &lt;rules&gt; element is not there.</p>
<ul>
<li><p><strong>User</strong>. Evaluates the component for each user.</p></li>
<li><p><strong>System</strong>. Evaluates the component only once for the system.</p></li>
<li><p><strong>UserAndSystem</strong>. Evaluates the component for the entire operating system and each user.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>defaultSupported</p></td>
<td align="left"><p>No</p>
<p>(default = TRUE)</p></td>
<td align="left"><p>Can be any of TRUE, FALSE, YES or NO. If this parameter is FALSE (or NO), the component will not be migrated unless there is an equivalent component on the destination computer.</p>
<p>When type=&quot;System&quot; and defaultSupported=&quot;FALSE&quot; the settings will not migrate unless there is an equivalent component in the .xml files that are specified on the LoadState command line. For example, the default MigSys.xml file contains components with type=&quot;System&quot; and defaultSupported=&quot;FALSE&quot;. If you specify this file on the ScanState command line, you must also specify the file on the LoadState command line for the settings to migrate. This is because the LoadState tool must detect an equivalent component. That is, the component must have the same migration urlid of the .xml file and an identical display name or the LoadState tool will not migrate those settings from the store. This is helpful when the source computer is running Windows XP, and you are migrating to both Windows Vista and Windows XP because you can use the same store for both destination computers.</p></td>
</tr>
<tr class="even">
<td align="left"><p>hidden</p></td>
<td align="left"><p> </p></td>
<td align="left"><p>This parameter is for internal USMT use only.</p></td>
</tr>
</tbody>
</table>



For an example, see any of the default migration .xml files.

## <a href="" id="condition"></a>&lt;condition&gt;


Although the &lt;condition&gt; element under the &lt;detect&gt;, &lt;objectSet&gt;, and &lt;addObjects&gt; elements is supported, we recommend that you do not use it. This element might be deprecated in future versions of USMT, requiring you to rewrite your scripts. We recommend that, if you need to use a condition within the &lt;objectSet&gt; and &lt;addObjects&gt; elements, you use the more powerful [&lt;conditions&gt;](#conditions) element, which allows you to formulate complex Boolean statements.

The &lt;condition&gt; element has a Boolean result. You can use this element to specify the conditions in which the parent element will be evaluated. If any of the present conditions return FALSE, the parent element will not be evaluated.

-   **Number of occurrences:** unlimited.

-   **Parent elements:**[&lt;conditions&gt;](#conditions), &lt;detect&gt;, &lt;objectSet&gt;, &lt;addObjects&gt;

-   **Child elements:** none

-   **Helper functions:** You can use the following [&lt;condition&gt; functions](#conditionfunctions) with this element: DoesOSMatch, IsNative64Bit(), IsOSLaterThan, IsOSEarlierThan, DoesObjectExist, DoesFileVersionMatch, IsFileVersionAbove, IsFileVersionBelow, IsSystemContext, DoesStringContentEqual, DoesStringContentContain, IsSameObject, IsSameContent, and IsSameStringContent.

Syntax:

&lt;condition negation="Yes|No"&gt;*ScriptName*&lt;/condition&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>negation</p></td>
<td align="left"><p>No</p>
<p>Default = No</p></td>
<td align="left"><p>&quot;Yes&quot; reverses the True/False value of the condition.</p></td>
</tr>
<tr class="even">
<td align="left"><p><em>ScriptName</em></p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>A script that has been defined within this migration section.</p></td>
</tr>
</tbody>
</table>



For example,

In the code sample below, the &lt;condition&gt; elements, A and B, are joined together by the AND operator because they are in separate &lt;conditions&gt; sections. For example:

``` syntax
<detection>
   <conditions>
      <condition>A</condition>
   </conditions>
   <conditions operation="AND">
      <condition>B</condition>
   </conditions>
</detection>
```

However, in the code sample below, the &lt;condition&gt; elements, A and B, are joined together by the OR operator because they are in the same &lt;conditions&gt; section.

``` syntax
<detection>
   <conditions>
      <condition>A</condition>
      <condition>B</condition>
   </conditions>
</detection>
```

### <a href="" id="conditionfunctions"></a>&lt;condition&gt; functions

The &lt;condition&gt; functions return a Boolean value. You can use these elements in &lt;addObjects&gt; conditions.

-   [Operating system version functions](#operatingsystemfunctions)

-   [Object content functions](#objectcontentfunctions)

### <a href="" id="operatingsystemfunctions"></a>Operating system version functions

-   **DoesOSMatch**

    All matches are case insensitive.

    Syntax: DoesOSMatch("*OSType*","*OSVersion*")

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Setting</th>
    <th align="left">Required?</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><em>OSType</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>The only valid value for this setting is <strong>NT</strong>. Note, however, that you must set this setting for the &lt;condition&gt; functions to work correctly.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><em>OSVersion</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>The major version, minor version, build number and corrected service diskette version separated by periods. For example, <code>5.0.2600.Service Pack 1</code>. You can also specify partial specification of the version with a pattern. For example, <code>5.0.*</code>.</p></td>
    </tr>
    </tbody>
    </table>



~~~
For example:

&lt;condition&gt;MigXmlHelper.DoesOSMatch("NT","\*")&lt;/condition&gt;
~~~

-   **IsNative64Bit**

    The IsNative64Bit function returns TRUE if the migration process is running as a native 64-bit process; that is, a process running on a 64-bit system without Windows on Windows (WOW). Otherwise, it returns FALSE.

-   **IsOSLaterThan**

    All comparisons are case insensitive.

    Syntax: IsOSLaterThan("*OSType*","*OSVersion*")

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Setting</th>
    <th align="left">Required?</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><em>OSType</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>Can be <strong>9x</strong> or <strong>NT</strong>. If <em>OSType</em> does not match the type of the current operating system, then it returns FALSE. For example, if the current operating system is Windows NT-based and <em>OSType</em> is “9x”, the result will be FALSE.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><em>OSVersion</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>The major version, minor version, build number, and corrected service diskette version separated by periods. For example, <code>5.0.2600.Service Pack 1</code>. You can also specify partial specification of the version but no pattern is allowed. For example, <code>5.0</code>.</p>
    <p>The IsOSLaterThan function returns TRUE if the current operating system is later than or equal to <em>OSVersion</em>.</p></td>
    </tr>
    </tbody>
    </table>



~~~
For example:

&lt;condition negation="Yes"&gt;MigXmlHelper.IsOSLaterThan("NT","6.0")&lt;/condition&gt;
~~~

-   **IsOSEarlierThan**

    All comparisons are case insensitive.

    Syntax: IsOSEarlierThan("*OSType*","*OSVersion*")

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Setting</th>
    <th align="left">Required?</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><em>OSType</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>Can be <strong>9x</strong> or <strong>NT</strong>. If <em>OSType</em> does not match the type of the current operating system, then it returns FALSE. For example, if the current operating system is Windows NT-based and <em>OSType</em> is “9x” the result will be FALSE.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><em>OSVersion</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>The major version, minor version, build number, and corrected service diskette version separated by periods. For example, <code>5.0.2600.Service Pack 1</code>. You can also specify partial specification of the version but no pattern is allowed. For example, <code>5.0</code>.</p>
    <p>The IsOSEarlierThan function returns TRUE if the current operating system is earlier than <em>OSVersion</em>.</p></td>
    </tr>
    </tbody>
    </table>



### <a href="" id="objectcontentfunctions"></a>Object content functions

- **DoesObjectExist**

  The DoesObjectExist function returns TRUE if any object exists that matches the location pattern. Otherwise, it returns FALSE. The location pattern is expanded before attempting the enumeration.

  Syntax: DoesObjectExist("*ObjectType*","*EncodedLocationPattern*")

  <table>
  <colgroup>
  <col width="33%" />
  <col width="33%" />
  <col width="33%" />
  </colgroup>
  <thead>
  <tr class="header">
  <th align="left">Setting</th>
  <th align="left">Required?</th>
  <th align="left">Value</th>
  </tr>
  </thead>
  <tbody>
  <tr class="odd">
  <td align="left"><p><em>ObjectType</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>Defines the object type. Can be File or Registry.</p></td>
  </tr>
  <tr class="even">
  <td align="left"><p><em>EncodedLocationPattern</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The <a href="#locations" data-raw-source="[location pattern](#locations)">location pattern</a>. Environment variables are allowed.</p></td>
  </tr>
  </tbody>
  </table>



~~~
For an example of this element, see the MigApp.xml file.
~~~

- **DoesFileVersionMatch**

  The pattern check is case insensitive.

  Syntax: DoesFileVersionMatch("*EncodedFileLocation*","*VersionTag*","*VersionValue*")

  <table>
  <colgroup>
  <col width="33%" />
  <col width="33%" />
  <col width="33%" />
  </colgroup>
  <thead>
  <tr class="header">
  <th align="left">Setting</th>
  <th align="left">Required?</th>
  <th align="left">Value</th>
  </tr>
  </thead>
  <tbody>
  <tr class="odd">
  <td align="left"><p><em>EncodedFileLocation</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The <a href="#locations" data-raw-source="[location pattern](#locations)">location pattern</a> for the file that will be checked. Environment variables are allowed.</p></td>
  </tr>
  <tr class="even">
  <td align="left"><p><em>VersionTag</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The <a href="#allowed" data-raw-source="[version tag](#allowed)">version tag</a> value that will be checked.</p></td>
  </tr>
  <tr class="odd">
  <td align="left"><p><em>VersionValue</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>A string pattern. For example, &quot;Microsoft*&quot;.</p></td>
  </tr>
  </tbody>
  </table>



~~~
For example:

&lt;condition&gt;MigXmlHelper.DoesFileVersionMatch("%MSNMessengerInstPath%\\msnmsgr.exe","ProductVersion","6.\*")&lt;/condition&gt;

&lt;condition&gt;MigXmlHelper.DoesFileVersionMatch("%MSNMessengerInstPath%\\msnmsgr.exe","ProductVersion","7.\*")&lt;/condition&gt;
~~~

- **IsFileVersionAbove**

  The IsFileVersionAbove function returns TRUE if the version of the file is higher than *VersionValue*.

  Syntax: IsFileVersionAbove("*EncodedFileLocation*","*VersionTag*","*VersionValue*")

  <table>
  <colgroup>
  <col width="33%" />
  <col width="33%" />
  <col width="33%" />
  </colgroup>
  <thead>
  <tr class="header">
  <th align="left">Setting</th>
  <th align="left">Required?</th>
  <th align="left">Value</th>
  </tr>
  </thead>
  <tbody>
  <tr class="odd">
  <td align="left"><p><em>EncodedFileLocation</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The <a href="#locations" data-raw-source="[location pattern](#locations)">location pattern</a> for the file that will be checked. Environment variables are allowed.</p></td>
  </tr>
  <tr class="even">
  <td align="left"><p><em>VersionTag</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The <a href="#allowed" data-raw-source="[version tag](#allowed)">version tag</a> value that will be checked.</p></td>
  </tr>
  <tr class="odd">
  <td align="left"><p><em>VersionValue</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The value to compare to. You cannot specify a pattern.</p></td>
  </tr>
  </tbody>
  </table>



- **IsFileVersionBelow**

  Syntax: IsFileVersionBelow("*EncodedFileLocation*","*VersionTag*","*VersionValue*")

  <table>
  <colgroup>
  <col width="33%" />
  <col width="33%" />
  <col width="33%" />
  </colgroup>
  <thead>
  <tr class="header">
  <th align="left">Setting</th>
  <th align="left">Required?</th>
  <th align="left">Value</th>
  </tr>
  </thead>
  <tbody>
  <tr class="odd">
  <td align="left"><p><em>EncodedFileLocation</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The <a href="#locations" data-raw-source="[location pattern](#locations)">location pattern</a> for the file that will be checked. Environment variables are allowed.</p></td>
  </tr>
  <tr class="even">
  <td align="left"><p><em>VersionTag</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The <a href="#allowed" data-raw-source="[version tag](#allowed)">version tag</a> value that will be checked.</p></td>
  </tr>
  <tr class="odd">
  <td align="left"><p><em>VersionValue</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The value to compare to. You cannot specify a pattern.</p></td>
  </tr>
  </tbody>
  </table>



- **IsSystemContext**

  The IsSystemContext function returns TRUE if the current context is "System". Otherwise, it returns FALSE.

  Syntax: IsSystemContext()

- **DoesStringContentEqual**

  The DoesStringContentEqual function returns TRUE if the string representation of the given object is identical to `StringContent`.

  Syntax: DoesStringContentEqual("*ObjectType*","*EncodedLocation*","*StringContent*")

  <table>
  <colgroup>
  <col width="33%" />
  <col width="33%" />
  <col width="33%" />
  </colgroup>
  <thead>
  <tr class="header">
  <th align="left">Setting</th>
  <th align="left">Required?</th>
  <th align="left">Value</th>
  </tr>
  </thead>
  <tbody>
  <tr class="odd">
  <td align="left"><p><em>ObjectType</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>Defines the type of object. Can be File or Registry.</p></td>
  </tr>
  <tr class="even">
  <td align="left"><p><em>EncodedLocationPattern</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The <a href="#locations" data-raw-source="[encoded location](#locations)">encoded location</a> for the object that will be examined. You can specify environment variables.</p></td>
  </tr>
  <tr class="odd">
  <td align="left"><p>StringContent</p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The string that will be checked against.</p></td>
  </tr>
  </tbody>
  </table>



~~~
For example:

``` syntax
<condition negation="Yes">MigXmlHelper.DoesStringContentEqual("File","%USERNAME%","")</condition>
```
~~~

- **DoesStringContentContain**

  The DoesStringContentContain function returns TRUE if there is at least one occurrence of *StrToFind* in the string representation of the object.

  Syntax: DoesStringContentContain("*ObjectType*","*EncodedLocation*","*StrToFind*")

  <table>
  <colgroup>
  <col width="33%" />
  <col width="33%" />
  <col width="33%" />
  </colgroup>
  <thead>
  <tr class="header">
  <th align="left">Setting</th>
  <th align="left">Required?</th>
  <th align="left">Value</th>
  </tr>
  </thead>
  <tbody>
  <tr class="odd">
  <td align="left"><p><em>ObjectType</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>Defines the type of object. Can be File or Registry.</p></td>
  </tr>
  <tr class="even">
  <td align="left"><p><em>EncodedLocationPattern</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The <a href="#locations" data-raw-source="[encoded location](#locations)">encoded location</a> for the object that will be examined. You can specify environment variables.</p></td>
  </tr>
  <tr class="odd">
  <td align="left"><p><em>StrToFind</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>A string that will be searched inside the content of the given object.</p></td>
  </tr>
  </tbody>
  </table>



- **IsSameObject**

  The IsSameObject function returns TRUE if the given encoded locations resolve to the same physical object. Otherwise, it returns FALSE.

  Syntax: IsSameObject("*ObjectType*","*EncodedLocation1*","*EncodedLocation2*")

  <table>
  <colgroup>
  <col width="33%" />
  <col width="33%" />
  <col width="33%" />
  </colgroup>
  <thead>
  <tr class="header">
  <th align="left">Setting</th>
  <th align="left">Required?</th>
  <th align="left">Value</th>
  </tr>
  </thead>
  <tbody>
  <tr class="odd">
  <td align="left"><p><em>ObjectType</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>Defines the type of object. Can be File or Registry.</p></td>
  </tr>
  <tr class="even">
  <td align="left"><p><em>EncodedLocation1</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The <a href="#locations" data-raw-source="[encoded location](#locations)">encoded location</a> for the first object. You can specify environment variables.</p></td>
  </tr>
  <tr class="odd">
  <td align="left"><p><em>EncodedLocation2</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The <a href="#locations" data-raw-source="[encoded location](#locations)">encoded location</a> for the second object. You can specify environment variables.</p></td>
  </tr>
  </tbody>
  </table>



~~~
For example:

``` syntax
<objectSet>
     <condition negation="Yes">MigXmlHelper.IsSameObject("File","%CSIDL_FAVORITES%","%CSIDL_COMMON_FAVORITES%")</condition>
     <pattern type="File">%CSIDL_FAVORITES%\* [*]</pattern>
</objectSet>
```
~~~

- **IsSameContent**

  The IsSameContent function returns TRUE if the given objects have the same content. Otherwise, it returns FALSE. The content will be compared byte by byte.

  Syntax: IsSameContent("*ObjectType1*","*EncodedLocation1*","*ObjectType2*","*EncodedLocation2*")

  <table>
  <colgroup>
  <col width="33%" />
  <col width="33%" />
  <col width="33%" />
  </colgroup>
  <thead>
  <tr class="header">
  <th align="left">Setting</th>
  <th align="left">Required?</th>
  <th align="left">Value</th>
  </tr>
  </thead>
  <tbody>
  <tr class="odd">
  <td align="left"><p><em>ObjectType1</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>Defines the type of the first object. Can be File or Registry.</p></td>
  </tr>
  <tr class="even">
  <td align="left"><p><em>EncodedLocation1</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The <a href="#locations" data-raw-source="[encoded location](#locations)">encoded location</a> for the first object. You can specify environment variables.</p></td>
  </tr>
  <tr class="odd">
  <td align="left"><p><em>ObjectType2</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>Defines the type of the second object. Can be File or Registry.</p></td>
  </tr>
  <tr class="even">
  <td align="left"><p><em>EncodedLocation2</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The <a href="#locations" data-raw-source="[encoded location](#locations)">encoded location</a> for the second object. You can specify environment variables.</p></td>
  </tr>
  </tbody>
  </table>



- **IsSameStringContent**

  The IsSameStringContent function returns TRUE if the given objects have the same content. Otherwise, it returns FALSE. The content will be interpreted as a string.

  Syntax: IsSameStringContent("*ObjectType1*","*EncodedLocation1*","*ObjectType2*","*EncodedLocation2*")

  <table>
  <colgroup>
  <col width="33%" />
  <col width="33%" />
  <col width="33%" />
  </colgroup>
  <thead>
  <tr class="header">
  <th align="left">Setting</th>
  <th align="left">Required?</th>
  <th align="left">Value</th>
  </tr>
  </thead>
  <tbody>
  <tr class="odd">
  <td align="left"><p><em>ObjectType1</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>Defines the type of the first object. Can be File or Registry.</p></td>
  </tr>
  <tr class="even">
  <td align="left"><p><em>EncodedLocation1</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The <a href="#locations" data-raw-source="[encoded location](#locations)">encoded location</a> for the first object. You can specify environment variables.</p></td>
  </tr>
  <tr class="odd">
  <td align="left"><p><em>ObjectType2</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>Defines the type of the second object. Can be File or Registry.</p></td>
  </tr>
  <tr class="even">
  <td align="left"><p><em>EncodedLocation2</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The <a href="#locations" data-raw-source="[encoded location](#locations)">encoded location</a> for the second object. You can specify environment variables.</p></td>
  </tr>
  </tbody>
  </table>



## <a href="" id="conditions"></a>&lt;conditions&gt;


The &lt;conditions&gt; element returns a Boolean result that is used to specify the conditions in which the parent element is evaluated. USMT evaluates the child elements, and then joins their results using the operators AND or OR according to the **operation** parameter.

-   **Number of occurrences:** Unlimited inside another &lt;conditions&gt; element. Limited to one occurrence in [&lt;detection&gt;](#detection), [&lt;rules&gt;](#rules), [&lt;addObjects&gt;](#addobjects), and [&lt;objectSet&gt;](#objectset)

-   **Parent elements:**[&lt;conditions&gt;](#conditions), [&lt;detection&gt;](#detection), [&lt;environment&gt;](#bkmk-environment), [&lt;rules&gt;](#rules), [&lt;addObjects&gt;](#addobjects), and [&lt;objectSet&gt;](#objectset)

-   **Child elements:**[&lt;conditions&gt;](#conditions), [&lt;condition&gt;](#condition)

Syntax:

&lt;conditions operation="AND|OR"&gt;

&lt;/conditions&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>operation</p></td>
<td align="left"><p>No, default = AND</p></td>
<td align="left"><p>Defines the Boolean operation that is performed on the results that are obtained from the child elements.</p></td>
</tr>
</tbody>
</table>



The following example is from the MigApp.xml file:

``` syntax
<environment name="GlobalEnv">
   <conditions>
      <condition negation="Yes">MigXmlHelper.IsNative64Bit()</condition>
   </conditions>
   <variable name="HklmWowSoftware">
   <text>HKLM\Software</text>
   </variable>
</environment>
```

## <a href="" id="content"></a>&lt;content&gt;


You can use the &lt;content&gt; element to specify a list of object patterns to obtain an object set from the source computer. Each &lt;objectSet&gt; within a &lt;content&gt; element is evaluated. For each resulting object pattern list, the objects that match it are enumerated and their content is filtered by the filter parameter. The resulting string array is the output for the &lt;content&gt; element. The filter script returns an array of locations. The parent &lt;objectSet&gt; element can contain multiple child &lt;content&gt; elements.

-   **Number of occurrences:** unlimited

-   **Parent elements:**[&lt;objectSet&gt;](#objectset)

-   **Child elements:**[&lt;objectSet&gt;](#objectset)

-   **Helper functions:** You can use the following [&lt;content&gt; functions](#contentfunctions) with this element: ExtractSingleFile, ExtractMultipleFiles, and ExtractDirectory.

Syntax:

&lt;content filter="*ScriptInvocation*"&gt;

&lt;/content&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>filter</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example<code>, MyScripts.AScript (&quot;Arg1&quot;,&quot;Arg2&quot;)</code>.</p>
<p>The script is called for each object that is enumerated by the object sets in the &lt;include&gt; rule. The filter script returns a Boolean value. If the return value is TRUE, the object will be migrated. If it is FALSE, it will not be migrated.</p></td>
</tr>
</tbody>
</table>



### <a href="" id="contentfunctions"></a>&lt;content&gt; functions

The following functions generate patterns out of the content of an object. These functions are called for every object that the parent &lt;ObjectSet&gt; element is enumerating.

-   **ExtractSingleFile**

    If the registry value is a MULTI-SZ, only the first segment is processed. The returned pattern is the encoded location for a file that must exist on the system. If the specification is correct in the registry value, but the file does not exist, this function returns NULL.

    Syntax: ExtractSingleFile(*Separators*,*PathHints*)

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Setting</th>
    <th align="left">Required?</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><em>Separators</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>A list of possible separators that might follow the file specification in this registry value name. For example, if the content is &quot;C:\Windows\Notepad.exe,-2&quot;, the separator is a comma. You can specify NULL.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><em>PathHints</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>A list of extra paths, separated by colons (;), where the function will look for a file matching the current content. For example, if the content is &quot;Notepad.exe&quot; and the path is the %Path% environment variable, the function will find Notepad.exe in %windir% and returns &quot;c:\Windows [Notepad.exe]&quot;. You can specify NULL.</p></td>
    </tr>
    </tbody>
    </table>



~~~
For example:

``` syntax
<content filter="MigXmlHelper.ExtractSingleFile(',','%system%')">
```

and

``` syntax
<content filter="MigXmlHelper.ExtractSingleFile(NULL,'%CSIDL_COMMON_FONTS%')">
```
~~~

-   **ExtractMultipleFiles**

    The ExtractMultipleFiles function returns multiple patterns, one for each file that is found in the content of the given registry value. If the registry value is a MULTI-SZ, the MULTI-SZ separator is considered a separator by default. therefore, for MULTI-SZ, the &lt;Separators&gt; argument must be NULL.

    The returned patterns are the encoded locations for files that must exist on the source computer. If the specification is correct in the registry value but the file does not exist, it will not be included in the resulting list.

    Syntax: ExtractMultipleFiles(*Separators*,*PathHints*)

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Setting</th>
    <th align="left">Required?</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><em>Separators</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>A list of possible separators that might follow the file specification in this registry value name. For example, if the content is &quot;C:\Windows\Notepad.exe,-2&quot;, the separator is a comma. This parameter must be NULL when processing MULTI-SZ registry values.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><em>PathHints</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>A list of extra paths, separated by colons (;), where the function will look for a file matching the current content. For example, if the content is &quot;Notepad.exe&quot; and the path is the %Path% environment variable, the function will find Notepad.exe in %windir% and returns &quot;c:\Windows [Notepad.exe]&quot;. You can specify NULL.</p></td>
    </tr>
    </tbody>
    </table>



-   **ExtractDirectory**

    The ExtractDirectory function returns a pattern that is the encoded location for a directory that must exist on the source computer. If the specification is correct in the registry value, but the directory does not exist, this function returns NULL. If it is processing a registry value that is a MULTI-SZ, only the first segment will be processed.

    Syntax: ExtractDirectory(*Separators*,*LevelsToTrim*,*PatternSuffix*)

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Setting</th>
    <th align="left">Required?</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><em>Separators</em></p></td>
    <td align="left"><p>No</p></td>
    <td align="left"><p>A list of possible separators that might follow the file specification in this registry value name. For example, if the content is &quot;C:\Windows\Notepad.exe,-2&quot;, the separator is a comma. You must specify NULL when processing MULTI-SZ registry values.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><em>LevelsToTrim</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>The number of levels to delete from the end of the directory specification. Use this function to extract a root directory when you have a registry value that points inside that root directory in a known location.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><em>PatternSuffix</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>The pattern to add to the directory specification. For example, <code>* [*]</code>.</p></td>
    </tr>
    </tbody>
    </table>



~~~
For example:

``` syntax
<objectSet>
     <content filter='MigXmlHelper.ExtractDirectory (NULL, "1")'>
          <objectSet>
               <pattern type="Registry">%HklmWowSoftware%\Classes\Software\RealNetworks\Preferences\DT_Common []</pattern>
          </objectSet>
     </content>
</objectSet>
```
~~~

## <a href="" id="contentmodify"></a>&lt;contentModify&gt;


The &lt;contentModify&gt; element modifies the content of an object before it is written to the destination computer. For each &lt;contentModify&gt; element there can be multiple &lt;objectSet&gt; elements. This element returns the new content of the object that is being processed.

-   **Number of occurrences:** Unlimited

-   **Parent elements:**[&lt;rules&gt;](#rules)

-   **Required child elements:**[&lt;objectSet&gt;](#objectset)

-   **Helper functions**: You can use the following [&lt;contentModify&gt; functions](#contentmodifyfunctions) with this element: ConvertToDWORD, ConvertToString, ConvertToBinary, KeepExisting, OffsetValue, SetValueByTable, MergeMultiSzContent, and MergeDelimitedContent.

Syntax:

&lt;contentModify script="*ScriptInvocation*"&gt;

&lt;/contentModify&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>script</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example<code>, MyScripts.AScript (&quot;Arg1&quot;,&quot;Arg2&quot;).</code></p>
<p>The script will be called for each object that is enumerated by the object sets in the include rule. The filter script returns a Boolean value. If the return value is TRUE, the object will be migrated. If it is FALSE, it will not be migrated.</p></td>
</tr>
</tbody>
</table>



### <a href="" id="contentmodifyfunctions"></a>&lt;contentModify&gt; functions

The following functions change the content of objects as they are migrated. These functions are called for every object that the parent &lt;ObjectSet&gt; element is enumerating.

-   **ConvertToDWORD**

    The ConvertToDWORD function converts the content of registry values that are enumerated by the parent &lt;ObjectSet&gt; element to a DWORD. For example, ConvertToDWORD will convert the string "1" to the DWORD 0x00000001. If the conversion fails, then the value of DefaultValueOnError will be applied.

    Syntax: ConvertToDWORD(*DefaultValueOnError*)

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Setting</th>
    <th align="left">Required?</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><em>DefaultValueOnError</em></p></td>
    <td align="left"><p>No</p></td>
    <td align="left"><p>The value that will be written into the value name if the conversion fails. You can specify NULL, and 0 will be written if the conversion fails.</p></td>
    </tr>
    </tbody>
    </table>



-   **ConvertToString**

    The ConvertToString function converts the content of registry values that match the parent &lt;ObjectSet&gt; element to a string. For example, it will convert the DWORD 0x00000001 to the string "1". If the conversion fails, then the value of DefaultValueOnError will be applied.

    Syntax: ConvertToString(*DefaultValueOnError*)

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Setting</th>
    <th align="left">Required?</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><em>DefaultValueOnError</em></p></td>
    <td align="left"><p>No</p></td>
    <td align="left"><p>The value that will be written into the value name if the conversion fails. You can specify NULL, and 0 will be written if the conversion fails.</p></td>
    </tr>
    </tbody>
    </table>



~~~
For example:

``` syntax
<contentModify script="MigXmlHelper.ConvertToString('1')">
     <objectSet>
          <pattern type="Registry">HKCU\Control Panel\Desktop [ScreenSaveUsePassword]</pattern>
     </objectSet>
</contentModify>
```
~~~

-   **ConvertToBinary**

    The ConvertToBinary function converts the content of registry values that match the parent &lt;ObjectSet&gt; element to a binary type.

    Syntax: ConvertToBinary ()

-   **OffsetValue**

    The OffsetValue function adds or subtracts *Value* from the value of the migrated object, and then writes the result back into the registry value on the destination computer. For example, if the migrated object is a DWORD with a value of 14, and the *Value* is "-2", the registry value will be 12 on the destination computer.

    Syntax: OffsetValue(*Value*)

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Setting</th>
    <th align="left">Required?</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><em>Value</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>The string representation of a numeric value. It can be positive or negative. For example, <code>OffsetValue(2)</code>.</p></td>
    </tr>
    </tbody>
    </table>



-   **SetValueByTable**

    The SetValueByTable function matches the value from the source computer to the source table. If the value is there, the equivalent value in the destination table will be applied. If the value is not there, or if the destination table has no equivalent value, the *DefaultValueOnError* will be applied.

    Syntax: SetValueByTable(*SourceTable*,*DestinationTable*,*DefaultValueOnError*)

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Setting</th>
    <th align="left">Required?</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><em>SourceTable</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>A list of values separated by commas that are possible for the source registry values.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><em>DestinationTable</em></p></td>
    <td align="left"><p>No</p></td>
    <td align="left"><p>A list of translated values separated by commas.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><em>DefaultValueOnError</em></p></td>
    <td align="left"><p>No</p></td>
    <td align="left"><p>The value that will be applied to the destination computer if either 1) the value for the source computer does not match <em>SourceTable</em>, or 2) <em>DestinationTable</em> has no equivalent value.</p>
    <p>If DefaultValueOnError is NULL, the value will not be changed on the destination computer.</p></td>
    </tr>
    </tbody>
    </table>



-   **KeepExisting**

    You can use the KeepExisting function when there are conflicts on the destination computer. This function will keep (not overwrite) the specified attributes for the object that is on the destination computer.

    Syntax: KeepExisting("*OptionString*","*OptionString*","*OptionString*",…)

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Setting</th>
    <th align="left">Required?</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><em>OptionString</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p><em>OptionString</em> can be <strong>Security</strong>, <strong>TimeFields</strong>, or <strong>FileAttrib</strong>:<em>Letter</em>. You can specify one of each type of <em>OptionStrings</em>. Do not specify multiple <em>OptionStrings</em> with the same value. If you do, the right-most option of that type will be kept. For example, do not specify <strong>(&quot;FileAttrib:H&quot;, &quot;FileAttrib:R&quot;)</strong> because only Read-only will be evaluated. Instead specify <strong>(&quot;FileAttrib:HR&quot;)</strong> and both Hidden and Read-only attributes will be kept on the destination computer.</p>
    <ul>
    <li><p><strong>Security</strong>. Keeps the destination object's security descriptor if it exists.</p></li>
    <li><p><strong>TimeFields</strong>. Keeps the destination object's time stamps. This parameter is for files only.</p></li>
    <li><p><strong>FileAttrib:</strong><em>Letter</em>. Keeps the destination object's attribute value, either On or OFF, for the specified set of file attributes. This parameter is for files only. The following are case-insensitive, but USMT will ignore any values that are invalid, repeated, or if there is a space after &quot;FileAttrib:&quot;. You can specify any combination of the following attributes:</p>
    <ul>
    <li><p><strong>A</strong> = Archive</p></li>
    <li><p><strong>C</strong> = Compressed</p></li>
    <li><p><strong>E</strong> = Encrypted</p></li>
    <li><p><strong>H</strong> = Hidden</p></li>
    <li><p><strong>I</strong> = Not Content Indexed</p></li>
    <li><p><strong>O</strong> = Offline</p></li>
    <li><p><strong>R</strong> = Read-Only</p></li>
    <li><p><strong>S</strong> = System</p></li>
    <li><p><strong>T</strong> = Temporary</p></li>
    </ul></li>
    </ul></td>
    </tr>
    </tbody>
    </table>



-   **MergeMultiSzContent**

    The MergeMultiSzContent function merges the MULTI-SZ content of the registry values that are enumerated by the parent &lt;ObjectSet&gt; element with the content of the equivalent registry values that already exist on the destination computer. `Instruction` and `String` either remove or add content to the resulting MULTI-SZ. Duplicate elements will be removed.

    Syntax: MergeMultiSzContent (*Instruction*,*String*,*Instruction*,*String*,…)

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Setting</th>
    <th align="left">Required?</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><em>Instruction</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>Can be one of the following:</p>
    <ul>
    <li><p><strong>Add</strong>. Adds the corresponding String to the resulting MULTI-SZ if it is not already there.</p></li>
    <li><p><strong>Remove</strong>. Removes the corresponding String from the resulting MULTI-SZ.</p></li>
    </ul></td>
    </tr>
    <tr class="even">
    <td align="left"><p><em>String</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>The string to be added or removed.</p></td>
    </tr>
    </tbody>
    </table>



-   **MergeDelimitedContent**

    The MergeDelimitedContent function merges the content of the registry values that are enumerated by the parent &lt;ObjectSet&gt; element with the content of the equivalent registry values that already exist on the destination computer. The content is considered a list of elements separated by one of the characters in the Delimiters parameter. Duplicate elements will be removed.

    Syntax: MergeDelimitedContent(*Delimiters*,*Instruction*,*String*,…)

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Setting</th>
    <th align="left">Required?</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><em>Delimiters</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>A single character that will be used to separate the content of the object that is being processed. The content will be considered as a list of elements that is separated by the <em>Delimiters</em>.</p>
    <p>For example, &quot;.&quot; will separate the string based on a period.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><em>Instruction</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>Can one of the following:</p>
    <ul>
    <li><p><strong>Add.</strong> Adds <em>String</em> to the resulting MULTI-SZ if it is not already there.</p></li>
    <li><p><strong>Remove.</strong> Removes <em>String</em> from the resulting MULTI-SZ.</p></li>
    </ul></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><em>String</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>The string to be added or removed.</p></td>
    </tr>
    </tbody>
    </table>



## <a href="" id="description"></a>&lt;description&gt;


The &lt;description&gt; element defines a description for the component but does not affect the migration.

-   **Number of occurrences:** zero or one

-   **Parent elements:**[&lt;component&gt;](#component)

-   **Child elements:** none

Syntax:

&lt;description&gt;*ComponentDescription*&lt;/description&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><em>ComponentDescription</em></p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>The description of the component.</p></td>
</tr>
</tbody>
</table>



The following code sample shows how the &lt;description&gt; element defines the "My custom component" description.:

``` syntax
<description>My custom component<description>
```

## <a href="" id="destinationcleanup"></a>&lt;destinationCleanup&gt;


The &lt;destinationCleanup&gt; element deletes objects, such as files and registry keys, from the destination computer before applying the objects from the source computer. This element is evaluated only when the LoadState tool is run on the destination computer. That is, this element is ignored by the ScanState tool.

**Important**  
Use this option with extreme caution because it will delete objects from the destination computer.



For each &lt;destinationCleanup&gt; element there can be multiple &lt;objectSet&gt; elements. A common use for this element is if there is a missing registry key on the source computer and you want to ensure that a component is migrated. In this case, you can delete all of the component's registry keys before migrating the source registry keys. This will ensure that if there is a missing key on the source computer, it will also be missing on the destination computer.

-   **Number of occurrences:** Unlimited

-   **Parent elements:**[&lt;rules&gt;](#rules)

-   **Child elements:**[&lt;objectSet&gt;](#objectset) (Note that the destination computer will delete all child elements.)

Syntax:

&lt;destinationCleanup filter=*ScriptInvocation*&gt;

&lt;/destinationCleanup&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>filter</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example<code>, MyScripts.AScript (&quot;Arg1&quot;,&quot;Arg2&quot;).</code></p>
<p>The script will be called for each object that is enumerated by the object sets in the include rule. The filter script returns a Boolean value. If the return value is TRUE, the object will be migrated. If it is FALSE, it will not be migrated.</p></td>
</tr>
</tbody>
</table>



For example:

``` syntax
<destinationCleanup>
   <objectSet>
      <pattern type="Registry">HKCU\Software\Lotus\123\99.0\DDE Preferences\* [*]</pattern>
      <pattern type="Registry">HKCU\Software\Lotus\123\99.0\Find Preferences\* [*]</pattern>
   </objectSet>
</destinationCleanup>
```

## <a href="" id="detect"></a>&lt;detect&gt;


Although the &lt;detect&gt; element is still supported, we do not recommend using it because it may be deprecated in future versions of USMT. In that case, you would have to rewrite your scripts. Instead, we recommend that you use the [&lt;detection&gt;](#detection)**element.**

You use the &lt;detect&gt; element to determine if the component is present on a system. If all child &lt;detect&gt; elements within a &lt;detect&gt; element resolve to TRUE, then the &lt;detect&gt; element resolves to TRUE. If any child &lt;detect&gt; elements resolve to FALSE, then their parent &lt;detect&gt; element resolves to FALSE. If there is no &lt;detect&gt; element section, then USMT will assume that the component is present.

For each &lt;detect&gt; element there can be multiple child &lt;condition&gt; or &lt;objectSet&gt; elements, which will be logically joined by an OR operator. If at least one &lt;condition&gt; or &lt;objectSet&gt; element evaluates to TRUE, then the &lt;detect&gt; element evaluates to TRUE.

-   **Number of occurrences:** unlimited

-   **Parent elements:** &lt;detects&gt;, [&lt;namedElements&gt;](#namedelements)

-   **Required child elements:**[&lt;condition&gt;](#condition)

-   **Optional child elements:**[&lt;objectSet&gt;](#objectset)

Syntax:

&lt;detect name="*ID*" context="User|System|UserAndSystem"&gt;

&lt;/detect&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>name</p></td>
<td align="left"><p>Yes, when &lt;detect&gt; is a child to &lt;namedElements&gt;</p>
<p>No, when &lt;detect&gt; is a child to &lt;detects&gt;</p></td>
<td align="left"><p>When <em>ID</em> is specified, any child elements are not processed. Instead, any other &lt;detect&gt; elements with the same name that are declared within the &lt;namedElements&gt; element are processed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>context</p></td>
<td align="left"><p>No</p>
<p>(default = UserAndSystem)</p></td>
<td align="left"><p>Defines the scope of this parameter: whether to process this component in the context of the specific user, across the entire operating system, or both.</p>
<p>The largest possible scope is set by the component element. For example, if a &lt;component&gt; element has a context of User, and a &lt;rules&gt; element had a context of UserAndSystem, then the &lt;rules&gt; element would act as though it had a context of User. If the &lt;rules&gt; element had a context of System, it would act as though the &lt;rules&gt; element were not there.</p>
<ul>
<li><p><strong>User.</strong> Evaluates the variables for each user.</p></li>
<li><p><strong>System.</strong> Evaluates the variables only once for the system.</p></li>
<li><p><strong>UserAndSystem.</strong> Evaluates the variables for the entire operating system and each user.</p></li>
</ul></td>
</tr>
</tbody>
</table>



For examples, see the examples for [&lt;detection&gt;](#detection).

## <a href="" id="detects"></a>&lt;detects&gt;


Although the &lt;detects&gt; element is still supported, we recommend that you do not use it because it may be deprecated in future versions of USMT, which would require you to rewrite your scripts. Instead, we recommend that you use the [&lt;detection&gt;](#detection) element if the parent element is &lt;role&gt; or &lt;namedElements&gt;, and we recommend that you use the &lt;conditions&gt; element if the parent element is &lt;rules&gt;. Using &lt;detection&gt; allows you to more clearly formulate complex Boolean statements.

The &lt;detects&gt; element is a container for one or more &lt;detect&gt; elements. If all of the child &lt;detect&gt; elements within a &lt;detects&gt; element resolve to TRUE, then &lt;detects&gt; resolves to TRUE. If any of the child &lt;detect&gt; elements resolve to FALSE, then &lt;detects&gt; resolves to FALSE. If you do not want to write the &lt;detects&gt; elements within a component, then you can create the &lt;detects&gt; element under the &lt;namedElements&gt; element, and then refer to it. If there is no &lt;detects&gt; element section, then USMT will assume that the component is present. The results from each &lt;detects&gt; element are joined together by the OR operator to form the rule used to detect the parent element.

Syntax:

&lt;detects name="*ID*" context="User|System|UserAndSystem"&gt;

&lt;/detects&gt;

-   **Number of occurrences:** Unlimited.

-   **Parent elements:**[&lt;role&gt;](#role), [&lt;rules&gt;](#rules), [&lt;namedElements&gt;](#namedelements)

-   **Required child elements:** &lt;detect&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>name</p></td>
<td align="left"><p>Yes, when &lt;detects&gt; is a child to &lt;namedElements&gt;</p>
<p>No, when &lt;detects&gt; is a child to &lt;role&gt; or &lt;rules&gt;</p></td>
<td align="left"><p>When <em>ID</em> is specified, no child &lt;detect&gt; elements are processed. Instead, any other &lt;detects&gt; elements with the same name that are declared within the &lt;namedElements&gt; element are processed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>context</p></td>
<td align="left"><p>No</p>
<p>(default = UserAndSystem)</p></td>
<td align="left"><p>Defines the scope of this parameter: whether to process this component in the context of the specific user, across the entire operating system, or both.</p>
<p>The largest possible scope is set by the &lt;component element&gt;. For example, if a &lt;component&gt; element has a context of User and a &lt;rules&gt; element had a context of UserAndSystem, then the &lt;rules&gt; element would act as though it had a context of User. If the &lt;rules&gt; element had a context of System, it would act as though the &lt;rules&gt; element were not there.</p>
<ul>
<li><p><strong>User.</strong> Evaluates the variables for each user.</p></li>
<li><p><strong>System.</strong> Evaluates the variables only once for the system.</p></li>
<li><p><strong>UserAndSystem.</strong> Evaluates the variables for the entire operating system and each user.</p></li>
</ul>
<p>The context parameter is ignored for &lt;detects&gt; elements that are inside &lt;rules&gt; elements.</p></td>
</tr>
</tbody>
</table>



The following example is from the MigApp.xml file.

``` syntax
<detects>
   <detect>
      <condition>MigXmlHelper.DoesFileVersionMatch("%Lotus123InstPath%\123w.exe","ProductVersion","9.*")</condition>
   </detect>
   <detect>
      <condition>MigXmlHelper.DoesFileVersionMatch("%SmartSuiteInstPath%\smartctr.exe","ProductVersion","99.*")</condition>
   </detect>
</detects>
```

## <a href="" id="detection"></a>&lt;detection&gt;


The &lt;detection&gt; element is a container for one &lt;conditions&gt; element. The result of the child &lt;condition&gt; elements, located underneath the &lt;conditions&gt; element, determines the result of this element. For example, if all of the child &lt;conditions&gt; elements within the &lt;detection&gt; element resolve to TRUE, then the &lt;detection&gt; element resolves to TRUE. If any of the child &lt;conditions&gt; elements resolve to FALSE, then the &lt;detection&gt; element resolves to FALSE.

In addition, the results from each &lt;detection&gt; section within the &lt;role&gt; element are joined together by the OR operator to form the detection rule of the parent element. That is, if one of the &lt;detection&gt; sections resolves to TRUE, then the &lt;role&gt; element will be processed. Otherwise, the &lt;role&gt; element will not be processed.

Use the &lt;detection&gt; element under the &lt;namedElements&gt; element if you do not want to write it within a component. Then include a matching &lt;detection&gt; section under the &lt;role&gt; element to control whether the component is migrated. If there is not a &lt;detection&gt; section for a component, then USMT will assume that the component is present.

-   **Number of occurrences:** Unlimited.

-   **Parent elements:**[&lt;role&gt;](#role), [&lt;namedElements&gt;](#namedelements)

-   **Child elements:**[&lt;conditions&gt;](#conditions)

Syntax:

&lt;detection name="*ID*" context="User|System|UserAndSystem"&gt;

&lt;/detection&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>name</p></td>
<td align="left"><ul>
<li><p>Yes, when &lt;detection&gt; is declared under &lt;namedElements&gt;</p></li>
<li><p>Optional, when declared under &lt;role&gt;</p></li>
</ul></td>
<td align="left"><p>If declared, the content of the &lt;detection&gt; element is ignored and the content of the &lt;detection&gt; element with the same name that is declared in the &lt;namedElements&gt; element will be evaluated.</p></td>
</tr>
<tr class="even">
<td align="left"><p>context</p></td>
<td align="left"><p>No, default = UserAndSystem</p></td>
<td align="left"><p>Defines the scope of this parameter: whether to process this component in the context of the specific user, across the entire operating system, or both.</p>
<ul>
<li><p><strong>User.</strong> Evaluates the component for each user.</p></li>
<li><p><strong>System.</strong> Evaluates the component only once for the system.</p></li>
<li><p><strong>UserAndSystem.</strong> Evaluates the component for the entire operating system and each user.</p></li>
</ul></td>
</tr>
</tbody>
</table>



For example:

``` syntax
<detection name="AdobePhotoshopCS">
   <conditions>
      <condition>MigXmlHelper.DoesObjectExist("Registry","HKCU\Software\Adobe\Photoshop\8.0")</condition>
      <condition>MigXmlHelper.DoesFileVersionMatch("%PhotoshopSuite8Path%\Photoshop.exe","FileVersion","8.*")</condition>
   </conditions>
</detection>
```

and

``` syntax
<role role="Settings">
   <detection>
      <conditions>
         <condition>MigXmlHelper.DoesFileVersionMatch("%QuickTime5Exe%","ProductVersion","QuickTime 5.*")</condition>
         <condition>MigXmlHelper.DoesFileVersionMatch("%QuickTime5Exe%","ProductVersion","QuickTime 6.*")</condition>
      </conditions>
   </detection>
```

## <a href="" id="displayname"></a>&lt;displayName&gt;


The &lt;displayName&gt; element is a required field within each &lt;component&gt; element.

-   **Number of occurrences:** once for each component

-   **Parent elements:**[&lt;component&gt;](#component)

-   **Child elements:** none

Syntax:

&lt;displayName \_locID="*ID*"&gt;*ComponentName*&lt;/displayName&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>locID</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>This parameter is for internal USMT use. Do not use this parameter.</p></td>
</tr>
<tr class="even">
<td align="left"><p><em>ComponentName</em></p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>The name for the component.</p></td>
</tr>
</tbody>
</table>



For example:

``` syntax
<displayName>Command Prompt settings</displayName>
```

## <a href="" id="bkmk-environment"></a>&lt;environment&gt;


The &lt;environment&gt; element is a container for &lt;variable&gt; elements in which you can define variables to use in your .xml file. All environment variables defined this way will be private. That is, they will be available only for their child components and the component in which they were defined. For two example scenarios, see [Examples](#envex).

-   **Number of occurrences:** unlimited

-   **Parent elements:**[&lt;role&gt;](#role), [&lt;component&gt;](#component), [&lt;namedElements&gt;](#namedelements)

-   **Required child elements:**[&lt;variable&gt;](#variable)

-   **Optional child elements:**[conditions](#conditions)

Syntax:

&lt;environment name="ID" context="User|System|UserAndSystem"&gt;

&lt;/environment&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>name</p></td>
<td align="left"><p>Yes, when &lt;environment&gt; is a child of &lt;namedElements&gt;</p>
<p>No, when &lt;environment&gt; is a child of &lt;role&gt; or &lt;component&gt;</p></td>
<td align="left"><p>When declared as a child of the &lt;role&gt; or &lt;component&gt; elements, if <em>ID</em> is declared, USMT ignores the content of the &lt;environment&gt; element and the content of the &lt;environment&gt; element with the same name declared in the &lt;namedElements&gt; element is processed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>context</p></td>
<td align="left"><p>No</p>
<p>(default = UserAndSystem)</p></td>
<td align="left"><p>Defines the scope of this parameter: whether to process this component in the context of the specific user, across the entire operating system, or both.</p>
<p>The largest possible scope is set by the &lt;component&gt; element. For example, if a &lt;component&gt; element has a context of User and a &lt;rules&gt; element had a context of UserAndSystem, then the &lt;rules&gt; element would act as though it had a context of User. If the &lt;rules&gt; element had a context of System, it would act as though &lt;rules&gt; were not there.</p>
<ul>
<li><p><strong>User.</strong> Evaluates the variables for each user.</p></li>
<li><p><strong>System.</strong> Evaluates the variables only once for the system.</p></li>
<li><p><strong>UserAndSystem.</strong> Evaluates the variables for the entire operating system and each user.</p></li>
</ul></td>
</tr>
</tbody>
</table>



## <a href="" id="envex"></a>


### Example scenario 1

In this scenario, you want to generate the location of objects at run time depending on the configuration of the destination computer. For example, you must do this if an application writes data in the directory where it is installed, and users can install the application anywhere on the computer. If the application writes a registry value hklm\\software\\companyname\\install \[path\] and then updates this value with the location where the application is installed, then the only way for you to migrate the required data correctly is to define an environment variable. For example:

``` syntax
<environment>
   <variable name="INSTALLPATH">
      <script>MigXmlHelper.GetStringContent("Registry","\software\companyname\install [path]")</script>
   </variable>
</environment>
```

Then you can use an include rule as follows. You can use any of the [&lt;script&gt; functions](#scriptfunctions) to perform similar tasks.

``` syntax
<include>
   <objectSet>
      <pattern type="File">%INSTALLPATH%\ [*.xyz]</pattern>
   </objectSet>
</include>
```

Second, you can also filter registry values that contain data that you need. The following example extracts the first string (before the separator ",") in the value of the registry Hklm\\software\\companyname\\application\\ \[Path\].

``` syntax
<environment>
   <variable name="APPPATH">
        <objectSet>
           <content filter='MigXmlHelper.ExtractDirectory (",", "1")'>
             <objectSet>
                <pattern type="Registry">Hklm\software\companyname\application\ [Path]</pattern>
              </objectSet>
            </content>
        </objectSet>
    </variable>
</environment>
```

### Example scenario 2:

In this scenario, you want to migrate five files named File1.txt, File2.txt, and so on, from %SYSTEMDRIVE%\\data\\userdata\\dir1\\dir2\\. To do this you must have the following &lt;include&gt; rule in an .xml file:

``` syntax
<include>
   <objectSet>
      <pattern type="File">%SYSTEMDRIVE%\data\userdata\dir1\dir2 [File1.txt]</pattern>
      <pattern type="File">%SYSTEMDRIVE%\data\userdata\dir1\dir2 [File2.txt]</pattern>
      <pattern type="File">%SYSTEMDRIVE%\data\userdata\dir1\dir2 [File3.txt]</pattern>
      <pattern type="File">%SYSTEMDRIVE%\data\userdata\dir1\dir2 [File4.txt]</pattern>
      <pattern type="File">%SYSTEMDRIVE%\data\userdata\dir1\dir2 [File5.txt]</pattern>
   </objectSet>
</include>
```

Instead of typing the path five times, you can create a variable for the location as follows:

``` syntax
<environment>
   <variable name="DATAPATH">
      <text>%SYSTEMDRIVE%\data\userdata\dir1\dir2 </text>
      </variable>
</environment>
```

Then, you can specify the variable in an &lt;include&gt; rule as follows:

``` syntax
<include>
   <objectSet>
      <pattern type="File">%DATAPATH% [File1.txt]</pattern>
      <pattern type="File">%DATAPATH% [File2.txt]</pattern>
      <pattern type="File">%DATAPATH% [File3.txt]</pattern>
      <pattern type="File">%DATAPATH% [File4.txt]</pattern>
      <pattern type="File">%DATAPATH% [File5.txt]</pattern>
   </objectSet>
</include>
```

## <a href="" id="exclude"></a>&lt;exclude&gt;


The &lt;exclude&gt; element determines what objects will not be migrated, unless there is a more specific &lt;include&gt; element that migrates an object. If there is an &lt;include&gt; and &lt;exclude&gt; element for the same object, the object will be included. For each &lt;exclude&gt; element there can be multiple child &lt;objectSet&gt; elements.

-   **Number of occurrences:** Unlimited

-   **Parent elements:**[&lt;rules&gt;](#rules)

-   **Child elements:**[&lt;objectSet&gt;](#objectset)

-   **Helper functions:** You can use the following [&lt;exclude&gt; filter functions](#persistfilterfunctions) with this element: CompareStringContent, IgnoreIrrelevantLinks, AnswerNo, NeverRestore, and SameRegContent.

Syntax:

&lt;exclude filter="*ScriptInvocation*"&gt;

&lt;/exclude&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>filter</p></td>
<td align="left"><p>No</p>
<p>(default = No)</p></td>
<td align="left"><p>A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example<code>, MyScripts.AScript (&quot;Arg1&quot;,&quot;Arg2&quot;).</code></p>
<p>The script will be called for each object that is enumerated by the object sets in the include rule. The filter script returns a Boolean value. If the return value is TRUE, the object will be migrated. If it is FALSE, it will not be migrated.</p></td>
</tr>
</tbody>
</table>



For example, from the MigUser.xml file:

``` syntax
<exclude>
   <objectSet>
      <pattern type="File">%CSIDL_MYMUSIC%\* [*]</pattern>
      <pattern type="File">%CSIDL_MYPICTURES%\* [*]</pattern>
      <pattern type="File">%CSIDL_MYVIDEO%\* [*]</pattern>
   </objectSet>
</exclude>
```

## <a href="" id="excludeattributes"></a>&lt;excludeAttributes&gt;


You can use the &lt;excludeAttributes&gt; element to determine which parameters associated with an object will not be migrated. If there are conflicts between the &lt;includeAttributes&gt; and &lt;excludeAttributes&gt; elements, the most specific pattern determines the patterns that will not be migrated. If an object does not have an &lt;includeAttributes&gt; or &lt;excludeAttributes&gt; element, then all of its parameters will be migrated.

-   **Number of occurrences:** Unlimited

-   **Parent elements:**[&lt;rules&gt;](#rules)

-   **Child elements:**[&lt;objectSet&gt;](#objectset)

Syntax:

&lt;excludeAttributes attributes="Security|TimeFields|Security,TimeFields"&gt;

&lt;/excludeAttributes&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Parameter</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>attributes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Specifies the attributes to be excluded. You can specify one of the following, or both separated by quotes; for example, <code>&quot;Security&quot;,&quot;TimeFields&quot;</code>:</p>
<ul>
<li><p>Security can be one of Owner, Group, DACL, or SACL.</p></li>
<li><p>TimeFields can be one of CreationTime, LastAccessTime and LastWrittenTime</p></li>
</ul></td>
</tr>
</tbody>
</table>



Example:

``` syntax
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/miguser">
<!-- This component migrates My Video files -->
   <component type="System" context="System">
      <displayName>System Data</displayName>
         <role role="Data">
            <rules>
<!-- Include all of the text files, which are immediately in the drive where the operating system is installed -->
               <include>
                  <objectSet>
                     <pattern type="File">%SYSTEMDRIVE%\ [*.txt]</pattern>
                  </objectSet>
               </include>
<!-- Exclude the time stamps from the text file starting with the letter a -->
               <excludeAttributes attributes="TimeFields">
                  <objectSet>
                     <pattern type="File">%SYSTEMDRIVE%\ [a*.txt]</pattern>
                  </objectSet>
               </excludeAttributes>
<!-- include the time stamps from the text file aa.txt -->
               <includeAttributes attributes="TimeFields">
                  <objectSet>
                     <pattern type="File">%SYSTEMDRIVE%\ [aa.txt]</pattern>
                  </objectSet>
               </includeAttributes>
<!-- Logoff the user after loadstate successfully completed. -->
               <externalProcess when="post-apply">
                  <commandLine>
                     logoff
                  </commandLine>
               </externalProcess>
         </rules>
   </role>
<!-- Migrate 
   all doc files from the system
   all power point files
   all visio design files 
   all my c++ program files -->
   <extensions>
      <extension>DOC</extension>
      <extension>PPT</extension>
      <extension>VXD</extension>
      <extension>PST</extension>
      <extension>CPP</extension>
   </extensions>
</component>
</migration>
```

## <a href="" id="extensions"></a>&lt;extensions&gt;


The &lt;extensions&gt; element is a container for one or more &lt;extension&gt; elements.

-   **Number of occurrences:** zero or one

-   **Parent elements:**[&lt;component&gt;](#component)

-   **Required child elements:**[&lt;extension&gt;](#extension)

Syntax:

&lt;extensions&gt;

&lt;/extensions&gt;

## <a href="" id="extension"></a>&lt;extension&gt;


You can use the &lt;extension&gt; element to specify documents of a specific extension.

-   **Number of occurrences:** unlimited

-   **Parent elements:**[&lt;extensions&gt;](#extensions)

-   **Child elements:** none

Syntax:

&lt;extension&gt;*FilenameExtension*&lt;/extension&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><em>FilenameExtension</em></p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>A file name extension.</p></td>
</tr>
</tbody>
</table>



For example, if you want to migrate all \*.doc files from the source computer, specifying the following code under the &lt;component&gt; element:

``` syntax
<extensions> 
        <extension>doc</extension> 
<extensions> 
```

is the same as specifying the following code below the &lt;rules&gt; element:

``` syntax
<include> 
        <objectSet> 
                <script>MigXmlHelper.GenerateDrivePatterns ("* [*.doc]", "Fixed")</script> 
        </objectSet> 
</include>
```

For another example of how to use the &lt;extension&gt; element, see the example for [&lt;excludeAttributes&gt;](#excludeattributes).

## <a href="" id="externalprocess"></a>&lt;externalProcess&gt;


You can use the &lt;externalProcess&gt; element to run a command line during the migration process. For example, you may want to run a command after the LoadState process completes.

-   **Number of occurrences:** Unlimited

-   **Parent elements:**[&lt;rules&gt;](#rules)

-   **Required child elements:**[&lt;commandLine&gt;](#commandline)

Syntax:

&lt;externalProcess when="pre-scan|scan-success|post-scan|pre-apply|apply-success|post-apply"&gt;

&lt;/externalProcess&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>when</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Indicates when the command line should be run. This value can be one of the following:</p>
<ul>
<li><p><strong>pre-scan</strong> before the scanning process begins.</p></li>
<li><p><strong>scan-success</strong> after the scanning process has finished successfully.</p></li>
<li><p><strong>post-scan</strong> after the scanning process has finished, whether it was successful or not.</p></li>
<li><p><strong>pre-apply</strong> before the apply process begins.</p></li>
<li><p><strong>apply-success</strong> after the apply process has finished successfully.</p></li>
<li><p><strong>post-apply</strong> after the apply process has finished, whether it was successful or not.</p></li>
</ul></td>
</tr>
</tbody>
</table>



For an example of how to use the &lt;externalProcess&gt; element, see the example for [&lt;excludeAttributes&gt;](#excludeattributes).

## <a href="" id="icon"></a>&lt;icon&gt;


This is an internal USMT element. Do not use this element.

## <a href="" id="include"></a>&lt;include&gt;


The &lt;include&gt; element determines what to migrate, unless there is a more specific [&lt;exclude&gt;](#exclude) rule. You can specify a script to be more specific to extend the definition of what you want to collect. For each &lt;include&gt; element there can be multiple &lt;objectSet&gt; elements.

-   **Number of occurrences:** Unlimited

-   **Parent elements:**[&lt;rules&gt;](#rules)

-   **Required child element:**[&lt;objectSet&gt;](#objectset)

-   **Helper functions:** You can use the following [&lt;include&gt; filter functions](#persistfilterfunctions) with this element: CompareStringContent, IgnoreIrrelevantLinks, AnswerNo, and NeverRestore.

Syntax:

&lt;include filter="*ScriptInvocation*"&gt;

&lt;/include&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>filter</p></td>
<td align="left"><p>No.</p>
<p>If this parameter is not specified, then all patterns that are inside the child &lt;ObjectSet&gt; element will be processed.</p></td>
<td align="left"><p>A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example<code>, MyScripts.AScript (&quot;Arg1&quot;,&quot;Arg2&quot;).</code></p>
<p>The script will be called for each object that is enumerated by the object sets in the &lt;include&gt; rule. The filter script returns a Boolean value. If the return value is TRUE, the object will be migrated. If it is FALSE, it will not be migrated.</p></td>
</tr>
</tbody>
</table>



The following example is from the MigUser.xml file:

``` syntax
<component type="Documents" context="User">
   <displayName _locID="miguser.myvideo">My Video</displayName>
      <paths>
         <path type="File">%CSIDL_MYVIDEO%</path>
      </paths>
      <role role="Data">
         <detects>           
            <detect>
               <condition>MigXmlHelper.DoesObjectExist("File","%CSIDL_MYVIDEO%")</condition>
            </detect>
         </detects>
         <rules>
               <include filter='MigXmlHelper.IgnoreIrrelevantLinks()'>
                  <objectSet>
                     <pattern type="File">%CSIDL_MYVIDEO%\* [*]</pattern>
                  </objectSet>
               </include>
               <merge script="MigXmlHelper.DestinationPriority()">
                  <objectSet>
                     <pattern type="File">%CSIDL_MYVIDEO% [desktop.ini]</pattern>
                  </objectSet>
            </merge>
         </rules>
      </role>
    </component>
```

### <a href="" id="persistfilterfunctions"></a>&lt;include&gt; and &lt;exclude&gt; filter functions

The following functions return a Boolean value. You can use them to migrate certain objects based on when certain conditions are met.

-   **AnswerNo**

    This filter always returns FALSE.

    Syntax: AnswerNo ()

-   **CompareStringContent**

    Syntax: CompareStringContent("*StringContent*","*CompareType*")

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Setting</th>
    <th align="left">Required?</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><em>StringContent</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>The string to check against.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><em>CompareType</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>A string. Use one of the following values:</p>
    <ul>
    <li><p><strong>Equal</strong> (case insensitive). The function returns TRUE if the string representation of the current object that is processed by the migration engine is identical to <code>StringContent</code>.</p></li>
    <li><p><strong>NULL</strong> <strong>or any other value</strong>. The function returns TRUE if the string representation of the current object that is processed by the migration engine does not match <code>StringContent</code>.</p></li>
    </ul></td>
    </tr>
    </tbody>
    </table>



-   **IgnoreIrrelevantLinks**

    This filter screens out the .lnk files that point to an object that is not valid on the destination computer. Note that the screening takes place on the destination computer, so all .lnk files will be saved to the store during ScanState. Then they will be screened out when you run the LoadState tool.

    Syntax: IgnoreIrrelevantLinks ()

    For example:

    ``` syntax
    <include filter='MigXmlHelper.IgnoreIrrelevantLinks()'>
         <objectSet>
              <pattern type="File">%CSIDL_COMMON_VIDEO%\* [*]</pattern>
         </objectSet>
    </include>
    ```

-   **NeverRestore**

    You can use this function to collect the specified objects from the source computer but then not migrate the objects to the destination computer. When run with the ScanState tool, this function evaluates to TRUE. When run with the LoadState tool, this function evaluates to FALSE. You may want to use this function when you want to check an object's value on the destination computer but do not intend to migrate the object to the destination.

    Syntax: NeverRestore()

    In the following example, HKCU\\Control Panel\\International \[Locale\] will be included in the store, but it will not be migrated to the destination computer:

    ``` syntax
    <include filter="MigXmlHelper.NeverRestore()">
       <objectSet>
          <pattern type="Registry">HKCU\Control Panel\International [Locale]</pattern>
       </objectSet>
    </include>
    ```

## <a href="" id="includeattributes"></a>&lt;includeAttributes&gt;


You can use the &lt;includeAttributes&gt; element to determine whether certain parameters associated with an object will be migrated along with the object itself. If there are conflicts between the &lt;includeAttributes&gt; and &lt;excludeAttributes&gt; elements, the most specific pattern will determine which parameters will be migrated. If an object does not have an &lt;includeAttributes&gt; or &lt;excludeAttributes&gt; element, then all of its parameters will be migrated.

-   **Number of occurrences:** unlimited

-   **Parent elements:**[&lt;rules&gt;](#rules)

-   **Child elements:**[&lt;objectSet&gt;](#objectset)

Syntax:

&lt;includeAttributes attributes="Security|TimeFields|Security,TimeFields"&gt;

&lt;/includeAttributes&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>attributes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Specifies the attributes to be included with a migrated object. You can specify one of the following, or both separated by quotes; for example, <code>&quot;Security&quot;,&quot;TimeFields&quot;</code>:</p>
<ul>
<li><p>Security can be one of the following values:</p>
<ul>
<li><p><strong>Owner.</strong> The owner of the object (SID).</p></li>
<li><p><strong>Group.</strong> The primary group for the object (SID).</p></li>
<li><p><strong>DACL</strong> (discretionary access control list). An access control list that is controlled by the owner of an object and that specifies the access particular users or groups can have to the object.</p></li>
<li><p><strong>SACL</strong> (system access control list). An ACL that controls the generation of audit messages for attempts to access a securable object. The ability to get or set an object&#39;s SACL is controlled by a privilege typically held only by system administrators.</p></li>
</ul></li>
<li><p>TimeFields can be one of the following:</p>
<ul>
<li><p><strong>CreationTime.</strong> Specifies when the file or directory was created.</p></li>
<li><p><strong>LastAccessTime.</strong> Specifies when the file is last read from, written to, or, in the case of executable files, run.</p></li>
<li><p><strong>LastWrittenTime.</strong> Specifies when the file is last written to, truncated, or overwritten.</p></li>
</ul></li>
</ul></td>
</tr>
</tbody>
</table>



For an example of how to use the &lt;includeAttributes&gt; element, see the example for [&lt;excludeAttributes&gt;](#excludeattributes).

## <a href="" id="library"></a>&lt;library&gt;


This is an internal USMT element. Do not use this element.

## <a href="" id="location"></a>&lt;location&gt;


The &lt;location&gt; element defines the location of the &lt;object&gt; element.

-   **Number of occurrences:** once for each &lt;object&gt;

-   **Parent elements:**[&lt;object&gt;](#object)

-   **Child elements:**[&lt;script&gt;](#script)

Syntax:

&lt;location type="*typeID*"&gt;*ObjectLocation*&lt;/location&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>type</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p><em>typeID</em> can be Registry or File.</p></td>
</tr>
<tr class="even">
<td align="left"><p><em>ObjectLocation</em></p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>The location of the object.</p></td>
</tr>
</tbody>
</table>



The following example is from the MigApp.xml file:

``` syntax
<addObjects>
   <object>
      <location type="Registry">%HklmWowSoftware%\Microsoft\Office\12.0\Common\Migration\Office [UpgradeVersion]</location>
      <attributes>DWORD</attributes>
      <bytes>0B000000</bytes>
   </object>
   <object>
      <location type="Registry">%HklmWowSoftware%\Microsoft\Office\12.0\Common\Migration\Office [Lang]</location>
      <attributes>DWORD</attributes>
      <bytes>00000000</bytes>
   </object>
</addObjects>
```

## <a href="" id="locationmodify"></a>&lt;locationModify&gt;


You can use the &lt;locationModify&gt; element to change the location and name of an object before it is migrated to the destination computer. The &lt;locationModify&gt; element is processed only when the LoadState tool is run on the destination computer. In other words, this element is ignored by the ScanState tool. The &lt;locationModify&gt; element will create the appropriate folder on the destination computer if it does not already exist.

**Number of occurrences:** Unlimited

-   **Parent elements:**[&lt;rules&gt;](#rules)

-   **Required child element:**[&lt;objectSet&gt;](#objectset)

-   **Helper functions:** You can use the following [&lt;locationModify&gt; functions](#locationmodifyfunctions) with this element: ExactMove, RelativeMove, and Move.

Syntax:

&lt;locationModify script="*ScriptInvocation*"&gt;

&lt;/locationModify&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>script</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example<code>, MyScripts.AScript (&quot;Arg1&quot;,&quot;Arg2&quot;).</code></p>
<p>The script will be called for each object that is enumerated by the object sets in the include rule. The filter script returns a Boolean value. If the return value is TRUE, the object will be migrated. If it is FALSE, it will not be migrated.</p></td>
</tr>
</tbody>
</table>



The following example is from the MigApp.xml file:

``` syntax
<locationModify script="MigXmlHelper.RelativeMove('%CSIDL_APPDATA%\Microsoft\Office','%CSIDL_APPDATA%')">
   <objectSet>
      <pattern type="File">%CSIDL_APPDATA%\Microsoft\Office\ [Access10.pip]</pattern>
   </objectSet>
</locationModify>
```

### <a href="" id="locationmodifyfunctions"></a>&lt;locationModify&gt; functions

The following functions change the location of objects as they are migrated when using the &lt;locationModify&gt; element. These functions are called for every object that the parent &lt;ObjectSet&gt; element is enumerating. The &lt;locationModify&gt; element will create the appropriate folder on the destination computer if it does not already exist.

- **ExactMove**

  The ExactMove function moves all of the objects that are matched by the parent &lt;ObjectSet&gt; element into the given *ObjectEncodedLocation*. You can use this function when you want to move a single file to a different location on the destination computer. If the destination location is a node, all of the matching source objects will be written to the node without any subdirectories. If the destination location is a leaf, the migration engine will migrate all of the matching source objects to the same location. If a collision occurs, the normal collision algorithms will apply.

  Syntax: ExactMove(*ObjectEncodedLocation*)

  <table>
  <colgroup>
  <col width="33%" />
  <col width="33%" />
  <col width="33%" />
  </colgroup>
  <thead>
  <tr class="header">
  <th align="left">Setting</th>
  <th align="left">Required?</th>
  <th align="left">Value</th>
  </tr>
  </thead>
  <tbody>
  <tr class="odd">
  <td align="left"><p><em>ObjectEncodedLocation</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The destination <a href="#locations" data-raw-source="[location](#locations)">location</a> for all of the source objects.</p></td>
  </tr>
  </tbody>
  </table>



~~~
For example:

``` syntax
<locationModify script="MigXmlHelper.ExactMove('HKCU\Keyboard Layout\Toggle [HotKey]')">
     <objectSet>
          <pattern type="Registry">HKCU\Keyboard Layout\Toggle []</pattern>
     </objectSet>
</locationModify>
```
~~~

-   **Move**

    The Move function moves objects to a different location on the destination computer. In addition, this function creates subdirectories that were above the longest CSIDL in the source object name.

    Syntax: Move(*DestinationRoot*)

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Setting</th>
    <th align="left">Required?</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><em>DestinationRoot</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>The location where the source objects will be moved. If needed, this function will create any subdirectories that were above the longest CSIDL in the source object name.</p></td>
    </tr>
    </tbody>
    </table>



-   **RelativeMove**

    You can use the RelativeMove function to collect and move data. Note that you can use environment variables in source and destination roots, but they may be defined differently on the source and destination computers.

    Syntax: RelativeMove(*SourceRoot*,*DestinationRoot*)

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Setting</th>
    <th align="left">Required?</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><em>SourceRoot</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>The location from where the objects will be moved. Any source objects that are enumerated by the parent &lt;ObjectSet&gt; element that are not in this location will not be moved.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><em>DestinationRoot</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>The location where the source objects will be moved to on the destination computer. If needed, this function will create any subdirectories that were above <em>SourceRoot</em>.</p></td>
    </tr>
    </tbody>
    </table>



~~~
For example:

``` syntax
<include>
   <objectSet>
      <pattern type="File">%CSIDL_COMMON_FAVORITES%\* [*]</pattern>
   <objectSet>
</include>
<locationModify script="MigXmlHelper.RelativeMove('%CSIDL_COMMON_FAVORITES%','%CSIDL_COMMON_FAVORITES%')">
     <objectSet>
          <pattern type="File">%CSIDL_COMMON_FAVORITES%\* [*]</pattern>
     </objectSet>
</locationModify>
```
~~~

## <a href="" id="locdefinition"></a>&lt;\_locDefinition&gt;


This is an internal USMT element. Do not use this element.

## <a href="" id="manufacturer"></a>&lt;manufacturer&gt;


The &lt;manufacturer&gt; element defines the manufacturer for the component, but does not affect the migration.

-   **Number of occurrences:** zero or one

-   **Parent elements:**[&lt;component&gt;](#component)

-   **Child elements:** none

Syntax:

&lt;manufacturer&gt;*Name*&lt;/manufacturer&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><em>Name</em></p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>The name of the manufacturer for the component.</p></td>
</tr>
</tbody>
</table>



## <a href="" id="merge"></a>&lt;merge&gt;


The &lt;merge&gt; element determines what will happen when a collision occurs. A collision is when an object that is migrated is already present on the destination computer. If you do not specify this element, the default behavior for the registry is for the source object to overwrite the destination object. The default behavior for files is for the source file to be renamed to "OriginalFileName(1).OriginalExtension". This element specifies only what should be done when a collision occurs. It does not include objects. Therefore, for your objects to migrate, you must specify &lt;include&gt; rules along with the &lt;merge&gt; element. When an object is processed and a collision is detected, USMT will select the most specific merge rule and apply it to resolve the conflict. For example, if you have a &lt;merge&gt; rule C:\\\* \[\*\] set to &lt;sourcePriority&gt; and a &lt;merge&gt; rule C:\\subfolder\\\* \[\*\] set to &lt;destinationPriority&gt;, then USMT would use the &lt;destinationPriority&gt; rule because it is the more specific.

For an example of this element, see [Conflicts and Precedence](usmt-conflicts-and-precedence.md).

-   **Number of occurrences:** Unlimited

-   **Parent elements:**[&lt;rules&gt;](#rules)

-   **Required child element:**[&lt;objectSet&gt;](#objectset)

-   **Helper functions:** You can use the following [&lt;merge&gt; functions](#mergefunctions) with this element: SourcePriority, DestinationPriority, FindFilePlaceByPattern, LeafPattern, NewestVersion, HigherValue(), and LowerValue().

Syntax:

&lt;merge script="*ScriptInvocation*"&gt;

&lt;/merge&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>script</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example<code>, MyScripts.AScript (&quot;Arg1&quot;,&quot;Arg2&quot;).</code></p>
<p>The script will be called for each object that is enumerated by the object sets in the &lt;include&gt; rule. The filter script returns a Boolean value. If the return value is TRUE, the object will be migrated. If it is FALSE, it will not be migrated.</p></td>
</tr>
</tbody>
</table>



The following example is from the MigUser.xml file:

``` syntax
<rules>
   <include filter='MigXmlHelper.IgnoreIrrelevantLinks()'>
      <objectSet>
         <pattern type="File">%CSIDL_MYVIDEO%\* [*]</pattern>
      </objectSet>
   </include>
   <merge script="MigXmlHelper.DestinationPriority()">
      <objectSet>
         <pattern type="File">%CSIDL_MYVIDEO% [desktop.ini]</pattern>
      </objectSet>
   </merge>
</rules>
```

### <a href="" id="mergefunctions"></a>&lt;merge&gt; functions

These functions control how collisions are resolved.

-   **DestinationPriority**

    Specifies to keep the object that is on the destination computer and not migrate the object from the source computer.

    For example:

    ``` syntax
    <merge script="MigXmlHelper.DestinationPriority()">
         <objectSet>
              <pattern type="Registry">HKCU\Software\Microsoft\Office\9.0\PhotoDraw\ [MyPictures]</pattern>
              <pattern type="Registry">HKCU\Software\Microsoft\Office\9.0\PhotoDraw\Settings\ [PicturesPath]</pattern>
              <pattern type="Registry">HKCU\Software\Microsoft\Office\9.0\PhotoDraw\Settings\ [AdditionalPlugInPath]</pattern>
         </objectSet>
    </merge>
    ```

-   **FindFilePlaceByPattern**

    The FindFilePlaceByPattern function saves files with an incrementing counter when a collision occurs. It is a string that contains one of each constructs: &lt;F&gt;, &lt;E&gt;, &lt;N&gt; in any order.

    Syntax: FindFilePlaceByPattern(*FilePattern*)

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Setting</th>
    <th align="left">Required?</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><em>FilePattern</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><ul>
    <li><p><strong>&lt;F&gt;</strong> will be replaced by the original file name.</p></li>
    <li><p><strong>&lt;N&gt;</strong> will be replaced by an incrementing counter until there is no collision with the objects on the destination computer.</p></li>
    <li><p><strong>&lt;E&gt;</strong> will be replaced by the original file name extension.</p></li>
    </ul>
    <p>For example, <code>&lt;F&gt; (&lt;N&gt;).&lt;E&gt;</code> will change the source file MyDocument.doc into MyDocument (1).doc on the destination computer.</p></td>
    </tr>
    </tbody>
    </table>



-   **NewestVersion**

    The NewestVersion function will resolve conflicts on the destination computer based on the version of the file.

    Syntax: NewestVersion(*VersionTag*)

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Setting</th>
    <th align="left">Required?</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><em>VersionTag</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>The version field that will be checked. This can be &quot;FileVersion&quot; or &quot;ProductVersion&quot;. The file with the highest <em>VersionTag</em> version determines which conflicts will be resolved based on the file's version. For example, if Myfile.txt contains FileVersion 1 and the same file on the destination computer contains FileVersion 2, the file on destination will remain.</p></td>
    </tr>
    </tbody>
    </table>



-   **HigherValue()**

    You can use this function for merging registry values. The registry values will be evaluated as numeric values, and the one with the higher value will determine which registry values will be merged.

-   **LowerValue()**

    You can use this function for merging registry values. The registry values will be evaluated as numeric values and the one with the lower value will determine which registry values will be merged.

-   **SourcePriority**

    Specifies to migrate the object from the source computer, and to delete the object that is on the destination computer.

    For example:

    ``` syntax
    <merge script="MigXmlHelper.SourcePriority()">
     <objectSet>
       <pattern type="Registry">%HklmWowSoftware%\Microsoft\Office\12.0\Common\Migration\Publisher [UpgradeVersion]</pattern>
       <pattern type="Registry">%HklmWowSoftware%\Microsoft\Office\11.0\Common\Migration\Publisher [UpgradeVersion]</pattern>
       <pattern type="Registry">%HklmWowSoftware%\Microsoft\Office\10.0\Common\Migration\Publisher [UpgradeVersion]</pattern>
     </objectSet>
    </merge>
    ```

## <a href="" id="migration"></a>&lt;migration&gt;


The &lt;migration&gt; element is the single root element of a migration .xml file and is required. Each .xml file must have a unique migration urlid. The urlid of each file that you specify on the command line must be unique. This is because USMT uses the urlid to define the components within the file. For example, you must specify the following at the beginning of each file: &lt;CustomFileName&gt; is the name of the file; for example, "CustomApp".

-   **Number of occurrences:** one

-   **Parent elements:** none

-   **Required child elements:**[&lt;component&gt;](#component)

-   **Optional child elements:**[&lt;library&gt;](#library), [&lt;namedElements&gt;](#namedelements)

Syntax:

&lt;migration urlid="<em>UrlID/</em>Name"&gt;

&lt;/migration&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>urlid</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p><em>UrlID</em> is a string identifier that uniquely identifies this .xml file. This parameter must be a no-colon-name as defined by the XML Namespaces specification. Each migration .xml file must have a unique urlid. If two migration .xml files have the same urlid, the second .xml file that is specified on the command line will not be processed. For more information about XML Namespaces, see <a href="https://go.microsoft.com/fwlink/p/?LinkId=220938" data-raw-source="[Use XML Namespaces](https://go.microsoft.com/fwlink/p/?LinkId=220938)">Use XML Namespaces</a>.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Name</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>Although not required, it is good practice to use the name of the .xml file.</p></td>
</tr>
</tbody>
</table>



The following example is from the MigApp.xml file:

``` syntax
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/migapp">
</migration>
```

## MigXMLHelper.FileProperties


This filter helper function can be used to filter the migration of files based on file size and date attributes.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Helper Function</th>
<th align="left">MigXMLHelper.FileProperties (property, operator, valueToCompare)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Property</p></td>
<td align="left"><p>filesize, dateCreated, dateModified, dateAccessed</p></td>
</tr>
<tr class="even">
<td align="left"><p>Operator</p></td>
<td align="left"><p>range, neq, lte, lt, eq, gte, gt</p></td>
</tr>
<tr class="odd">
<td align="left"><p>valueToCompare</p></td>
<td align="left"><p>The value we are comparing. For example:</p>
<p>Date: “2008/05/15-2005/05/17”, “2008/05/15”</p>
<p>Size: A numeral with B, KB, MB, or GB at the end. “5GB”, “1KB-1MB”</p></td>
</tr>
</tbody>
</table>



``` syntax
<component context="System"  type="Application">
<displayName>File_size</displayName>
<role role="Data">

   <rules>
        <include filter='MigXmlHelper.FileProperties("dateAccessed","range","2008/05/15-2008/05/17")'>
         <objectSet>
         <pattern type="File">%SYSTEMDRIVE%\DOCS\* [*]</pattern>
         </objectSet>
      </include>
   </rules>
</role>
</component>
```

## <a href="" id="namedelements"></a>&lt;namedElements&gt;


You can use the **&lt;namedElements&gt;** element to define named elements. You can use these elements in any component throughout your .xml file. For an example of how to use this element, see the MigApp.xml file.

Syntax:

&lt;namedElements&gt;

&lt;/namedElements&gt;

-   **Number of occurrences:** Unlimited

-   **Parent elements:**[&lt;migration&gt;](#migration)

-   **Child elements:**[&lt;environment&gt;](#bkmk-environment), [&lt;rules&gt;](#rules), [&lt;conditions&gt;](#conditions), [&lt;detection&gt;](#detection), &lt;detects&gt;, &lt;detect&gt;

For an example of this element, see the MigApp.xml file.

## <a href="" id="object"></a>&lt;object&gt;


The &lt;object&gt; element represents a file or registry key.

-   **Number of occurrences:** Unlimited

-   **Parent elements:**[&lt;addObjects&gt;](#addobjects)

-   **Required child elements:**[&lt;location&gt;](#location), [&lt;attributes&gt;](#attribute)

-   **Optional child elements:**[&lt;bytes&gt;](#bytes)

Syntax:

&lt;object&gt;

&lt;/object&gt;

The following example is from the MigApp.xml file:

``` syntax
<addObjects>
   <object>
      <location type="Registry">%HklmWowSoftware%\Microsoft\Office\12.0\Common\Migration\Office [UpgradeVersion]</location>
      <attributes>DWORD</attributes>
      <bytes>0B000000</bytes>
   </object>
   <object>
      <location type="Registry">%HklmWowSoftware%\Microsoft\Office\12.0\Common\Migration\Office [Lang]</location>
      <attributes>DWORD</attributes>
      <bytes>00000000</bytes>
      </object>
</addObjects>
```

## <a href="" id="objectset"></a>&lt;objectSet&gt;


The &lt;objectSet&gt; element contains a list of object patterns ; for example, file paths, registry locations, and so on. Any child &lt;conditions&gt; elements will be evaluated first. If all child &lt;conditions&gt; elements return FALSE, the &lt;objectSet&gt; element will evaluate to an empty set. For each parent element, there can be only multiple &lt;objectSet&gt; elements.

-   **Number of occurrences:** Unlimited

-   **Parent elements:**[&lt;variable&gt;](#variable), [&lt;content&gt;](#content), [&lt;include&gt;](#include), [&lt;exclude&gt;](#exclude), [&lt;merge&gt;](#merge), [&lt;contentModify&gt;](#contentmodify), [&lt;locationModify&gt;](#locationmodify), [&lt;destinationCleanup&gt;](#destinationcleanup), [&lt;includeAttributes&gt;](#includeattributes), [&lt;excludeAttributes&gt;](#excludeattributes), [&lt;unconditionalExclude&gt;](#unconditionalexclude), &lt;detect&gt;

-   **Required child elements:** either [&lt;script&gt;](#script) or [&lt;pattern&gt;](#pattern)

-   **Optional child elements:**[&lt;content&gt;](#content), [conditions](#conditions), &lt;condition&gt;

Syntax:

&lt;objectSet&gt;

&lt;/objectSet&gt;

The following example is from the MigUser.xml file:

``` syntax
<component type="Documents" context="User">
   <displayName _locID="miguser.mymusic">My Music</displayName>
      <paths>
         <path type="File">%CSIDL_MYMUSIC%</path>
      </paths>
   <role role="Data">
      <detects>           
      <detect>
         <condition>MigXmlHelper.DoesObjectExist("File","%CSIDL_MYMUSIC%")</condition>
      </detect>
   </detects>           
   <rules>
      <include filter='MigXmlHelper.IgnoreIrrelevantLinks()'>
         <objectSet>
            <pattern type="File">%CSIDL_MYMUSIC%\* [*]</pattern>
         </objectSet>
      </include>
      <merge script="MigXmlHelper.DestinationPriority()">
         <objectSet>
            <pattern type="File">%CSIDL_MYMUSIC%\ [desktop.ini]</pattern>
         </objectSet>
      </merge>
   </rules>
   </role>
</component>
```

## <a href="" id="path"></a>&lt;path&gt;


This is an internal USMT element. Do not use this element.

## <a href="" id="paths"></a>&lt;paths&gt;


This is an internal USMT element. Do not use this element.

## <a href="" id="pattern"></a>&lt;pattern&gt;


You can use this element to specify multiple objects. You can specify multiple &lt;pattern&gt; elements for each &lt;objectSet&gt; element and they will be combined. If you are specifying files, you may want to use GenerateDrivePatterns with &lt;script&gt; instead. GenerateDrivePatterns is basically the same as a &lt;pattern&gt; rule, without the drive letter specification. For example, the following two lines of code are similar:

``` syntax
<pattern type="File">C:\Folder\* [Sample.doc]</pattern>
<script>MigXmlHelper.GenerateDrivePatterns("\Folder\* [Sample.doc]","Fixed"</script>
```

-   **Number of occurrences:** Unlimited

-   **Parent elements:**[&lt;objectSet&gt;](#objectset)

-   **Child elements:** none but *Path* \[*object*\] must be valid.

Syntax:

&lt;pattern type="*typeID*"&gt;*Path* \[*object*\]&lt;/pattern&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>type</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p><em>typeID</em> can be Registry, File, or Ini. If <em>typeId</em> is Ini, then you cannot have a space between <em>Path</em> and <em>object</em>. For example, the following is correct when type=&quot;Ini&quot;:</p>
<p><strong>&lt;pattern type=&quot;Ini&quot;&gt;%WinAmp5InstPath%\Winamp.ini|WinAmp[keeponscreen]&lt;/pattern&gt;</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p><em>Path</em> [<em>object</em>]</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>A valid registry or file path pattern, followed by at least one space, followed by brackets [] that contain the object to be migrated.</p>
<ul>
<li><p><em>Path</em> can contain the asterisk (<em>) wildcard character or can be an <a href="usmt-recognized-environment-variables.md" data-raw-source="[Recognized Environment Variables](usmt-recognized-environment-variables.md)">Recognized Environment Variables</a>. You cannot use the question mark as a wildcard character.You can use HKCU and HKLM to refer to HKEY_CURRENT_USER and HKEY_LOCAL_MACHINE respectively.</p></li>
<li><p><em>Object</em> can contain the asterisk (</em>) wildcard character. However, you cannot use the question mark as a wildcard character. For example:</p>
<p><strong>C:\Folder\ [<em>]</strong> enumerates all files in C:&lt;em&gt;Path</em> but no subfolders of C:\Folder.</p>
<p><strong>C:\Folder* [</em>]</strong> enumerates all files and subfolders of C:\Folder.</p>
<p><strong>C:\Folder\ [*.mp3]</strong> enumerates all .mp3 files in C:\Folder.</p>
<p><strong>C:\Folder\ [Sample.doc]</strong> enumerates only the Sample.doc file located in C:\Folder.</p>
<div class="alert">
<strong>Note</strong><br/><p>If you are migrating a file that has a square bracket character ([ or ]) in the file name, you must insert the carrot (^) character directly before the bracket for it to be valid. For example, if there is a file named &quot;file].txt&quot;, you must specify <code>&lt;pattern type=&quot;File&quot;&gt;c:\documents\mydocs [file^].txt]&lt;/pattern&gt; </code>instead of <code>&lt;pattern type=&quot;File&quot;&gt;c:\documents\mydocs [file].txt]&lt;/pattern&gt;</code>.</p>
</div>
<div>

</div></li>
</ul></td>
</tr>
</tbody>
</table>



For example:

-   To migrate a single registry key:

    ``` syntax
    <pattern type="Registry">HKLM\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Cache [Persistent]</pattern>
    ```

-   To migrate the EngineeringDrafts folder and any subfolders from the C: drive:

    ``` syntax
    <pattern type="File">C:\EngineeringDrafts\* [*]</pattern>
    ```

-   To migrate only the EngineeringDrafts folder, excluding any subfolders, from the C: drive:

    [Reroute Files and Settings](usmt-reroute-files-and-settings.md)

-   To migrate the Sample.doc file from C:\\EngineeringDrafts:

    ``` syntax
    <pattern type="File"> C:\EngineeringDrafts\ [Sample.doc]</pattern>
    ```

-   To migrate the Sample.doc file from where ever it exists on the C: drive use pattern in the following way. If multiple files exist with the same name on the C: drive, then all of these files will be migrated.

    ``` syntax
    <pattern type="File"> C:\* [Sample.doc] </pattern>
    ```

-   For more examples of how to use this element, see [Exclude Files and Settings](usmt-exclude-files-and-settings.md), [Reroute Files and Settings](usmt-reroute-files-and-settings.md), [Include Files and Settings](usmt-include-files-and-settings.md), and [Custom XML Examples](usmt-custom-xml-examples.md).

## <a href="" id="processing"></a>&lt;processing&gt;


You can use this element to run a script during a specific point within the migration process. Return values are not expected from the scripts that you specify, and if there are return values, they will be ignored.

-   **Number of occurrences:** unlimited

-   **Parent elements:**[&lt;rules&gt;](#rules)

-   **Required child element:**[&lt;script&gt;](#script)

Syntax:

&lt;processing when="pre-scan|scan-success|post-scan|pre-apply|apply-success|post-apply"&gt;

&lt;/processing&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>when</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Indicates when the script should be run. This value can be one of the following:</p>
<ul>
<li><p><strong>pre-scan</strong> means before the scanning process begins.</p></li>
<li><p><strong>scan-success</strong> means after the scanning process has finished successfully.</p></li>
<li><p><strong>post-scan</strong> means after the scanning process has finished, whether it was successful or not.</p></li>
<li><p><strong>pre-apply</strong> means before the apply process begins.</p></li>
<li><p><strong>apply-success</strong> means after the apply process has finished successfully.</p></li>
<li><p><strong>post-apply</strong> means after the apply process has finished, whether it was successful or not.</p></li>
</ul></td>
</tr>
</tbody>
</table>



## <a href="" id="plugin"></a>&lt;plugin&gt;


This is an internal USMT element. Do not use this element.

## <a href="" id="role"></a>&lt;role&gt;


The &lt;role&gt; element is required in a custom .xml file. By specifying the &lt;role&gt; element, you can create a concrete component. The component will be defined by the parameters specified at the &lt;component&gt; level, and with the role that you specify here.

-   **Number of occurrences:** Each &lt;component&gt; can have one, two or three child &lt;role&gt; elements.

-   **Parent elements:**[&lt;component&gt;](#component), [&lt;role&gt;](#role)

-   **Required child elements:**[&lt;rules&gt;](#rules)

-   **Optional child elements:**[&lt;environment&gt;](#bkmk-environment), [&lt;detection&gt;](#detection), [&lt;component&gt;](#component), [&lt;role&gt;](#role), &lt;detects&gt;, &lt;plugin&gt;,

Syntax:

&lt;role role="Container|Binaries|Settings|Data"&gt;

&lt;/role&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>role</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Defines the role for the component. Role can be one of:</p>
<ul>
<li><p><strong>Container</strong></p></li>
<li><p><strong>Binaries</strong></p></li>
<li><p><strong>Settings</strong></p></li>
<li><p><strong>Data</strong></p></li>
</ul>
<p>You can either:</p>
<ol>
<li><p>Specify up to three &lt;role&gt; elements within a &lt;component&gt; — one “Binaries” role element, one “Settings” role element and one “Data” role element. These parameters do not change the migration behavior — their only purpose is to help you categorize the settings that you are migrating. You can nest these &lt;role&gt; elements, but each nested element must be of the same role parameter.</p></li>
<li><p>Specify one “Container” &lt;role&gt; element within a &lt;component&gt; element. In this case, you cannot specify any child &lt;rules&gt; elements, only other &lt;component&gt; elements. And each child &lt;component&gt; element must have the same type as that of parent &lt;component&gt; element. For example:</p></li>
</ol>
<pre class="syntax" space="preserve"><code>&lt;component context=&quot;UserAndSystem&quot; type=&quot;Application&quot;&gt;
  &lt;displayName _locID=&quot;migapp.msoffice2003&quot;&gt;Microsoft Office 2003&lt;/displayName&gt; 
  &lt;environment name=&quot;GlobalEnv&quot; /&gt; 
  &lt;role role=&quot;Container&quot;&gt;
    &lt;detection name=&quot;AnyOffice2003Version&quot; /&gt; 
    &lt;detection name=&quot;FrontPage2003&quot; /&gt; 
    &lt;!-- 
 Office 2003 Common Settings 
  --&gt; 
    &lt;component context=&quot;UserAndSystem&quot; type=&quot;Application&quot;&gt;</code></pre></td>
</tr>
</tbody>
</table>



The following example is from the MigUser.xml file. For more examples, see the MigApp.xml file:

``` syntax
<component type="System" context="User">
   <displayName _locID="miguser.startmenu">Start Menu</displayName>
   <paths>
      <path type="File">%CSIDL_STARTMENU%</path>
   </paths>
   <role role="Settings">
      <detects>           
         <detect>
            <condition>MigXmlHelper.DoesObjectExist("File","%CSIDL_STARTMENU%")</condition>
         </detect>
      </detects>           
   <rules>
      <include filter='MigXmlHelper.IgnoreIrrelevantLinks()'>
         <objectSet>
            <pattern type="File">%CSIDL_STARTMENU%\* [*]</pattern>
         </objectSet>
      </include>
      <merge script="MigXmlHelper.DestinationPriority()">
         <objectSet>
            <pattern type="File">%CSIDL_STARTMENU% [desktop.ini]</pattern>
            <pattern type="File">%CSIDL_STARTMENU%\* [*]</pattern>
         </objectSet>
      </merge>
   </rules>
   </role>
</component>
```

## <a href="" id="rules"></a>&lt;rules&gt;


The &lt;rules&gt; element is required in a custom .xml file. This element contains rules that will run during the migration if the parent &lt;component&gt; element is selected, unless the child &lt;conditions&gt; element, if present, evaluates to FALSE. For each &lt;rules&gt; element there can be multiple child &lt;rules&gt; elements.

-   **Number of occurrences:** unlimited

-   **Parent elements:**[&lt;role&gt;](#role), [&lt;rules&gt;](#rules), [&lt;namedElements&gt;](#namedelements)

-   **Required child elements:**[&lt;include&gt;](#include)

-   **Optional child elements:**[&lt;rules&gt;](#rules), [&lt;exclude&gt;](#exclude), [&lt;unconditionalExclude&gt;](#unconditionalexclude),[&lt;merge&gt;](#merge), [&lt;contentModify&gt;](#contentmodify), [&lt;locationModify&gt;](#locationmodify), [&lt;destinationCleanup&gt;](#destinationcleanup), [&lt;addObjects&gt;](#addobjects), [&lt;externalProcess&gt;](#externalprocess), [&lt;processing&gt;](#processing), [&lt;includeAttributes&gt;](#includeattributes), [&lt;excludeAttributes&gt;](#excludeattributes), [conditions](#conditions), &lt;detects&gt;

Syntax:

&lt;rules name="*ID*" context="User|System|UserAndSystem"&gt;

&lt;/rules&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>name</p></td>
<td align="left"><p>Yes, when &lt;rules&gt; is a child to &lt;namedElements&gt;</p>
<p>No, when &lt;rules&gt; is a child to any other element</p></td>
<td align="left"><p>When <em>ID</em> is specified, any child elements are not processed. Instead, any other &lt;rules&gt; elements with the same name that are declared within &lt;namedElements&gt; are processed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>context</p></td>
<td align="left"><p>No</p>
<p>(default = UserAndSystem)</p></td>
<td align="left"><p>Defines the scope of this parameter — whether to process this component in the context of the specific user, across the entire operating system, or both.</p>
<p>The largest possible scope is set by the component element. For example, if a &lt;component&gt; element has a context of User and a &lt;rules&gt; element had a context of UserAndSystem, then the &lt;rules&gt; element would act as though it has a context of User. If &lt;rules&gt; had a context of System, it would act as though &lt;rules&gt; was not there.</p>
<ul>
<li><p><strong>User.</strong> Evaluates the variables for each user.</p></li>
<li><p><strong>System.</strong> Evaluates the variables only once for the system.</p></li>
<li><p><strong>UserAndSystem.</strong> Evaluates the variables for the entire operating system and each user.</p></li>
</ul></td>
</tr>
</tbody>
</table>



The following example is from the MigUser.xml file:

``` syntax
<component type="Documents" context="User">
   <displayName _locID="miguser.mymusic">My Music</displayName>
      <paths>
         <path type="File">%CSIDL_MYMUSIC%</path>
      </paths>
   <role role="Data">
      <detects>           
      <detect>
         <condition>MigXmlHelper.DoesObjectExist("File","%CSIDL_MYMUSIC%")</condition>
      </detect>
   </detects>           
   <rules>
      <include filter='MigXmlHelper.IgnoreIrrelevantLinks()'>
         <objectSet>
            <pattern type="File">%CSIDL_MYMUSIC%\* [*]</pattern>
         </objectSet>
      </include>
      <merge script="MigXmlHelper.DestinationPriority()">
         <objectSet>
            <pattern type="File">%CSIDL_MYMUSIC%\ [desktop.ini]</pattern>
         </objectSet>
      </merge>
   </rules>
   </role>
</component>
```

## <a href="" id="script"></a>&lt;script&gt;


The return value that is required by &lt;script&gt; depends on the parent element.

**Number of occurrences:** Once for [&lt;variable&gt;](#variable), unlimited for [&lt;objectSet&gt;](#objectset) and [&lt;processing&gt;](#processing)

**Parent elements:**[&lt;objectSet&gt;](#objectset), [&lt;variable&gt;](#variable), [&lt;processing&gt;](#processing)

**Child elements:** none

**Syntax and helper functions:**

-   General Syntax: &lt;script&gt;*ScriptWithArguments*&lt;/script&gt;

-   You can use [GetStringContent](#scriptfunctions) when &lt;script&gt; is within &lt;variable&gt;.

    Syntax: &lt;script&gt;MigXmlHelper.GetStringContent("*ObjectType*","*EncodedLocationPattern*", "*ExpandContent*")&lt;/script&gt;

    Example: `<script>MigXMLHelper.GetStringContent("Registry","HKLM\Software\MyApp\Installer [EXEPATH]")</script>`

-   You can use [GenerateUserPatterns](#scriptfunctions) when &lt;script&gt; is within &lt;objectSet&gt;.

    Syntax: &lt;script&gt;MigXmlHelper.GenerateUserPatterns("*ObjectType*","*EncodedLocationPattern*","*ProcessCurrentUser*")&lt;/script&gt;

    Example: `<script>MigXmlHelper.GenerateUserPatterns ("File","%USERPROFILE%\* [*.doc]", "FALSE")</script>`

-   You can use [GenerateDrivePatterns](#scriptfunctions) when &lt;script&gt; is within &lt;objectSet&gt;.

    Syntax: &lt;script&gt;MigXmlHelper.GenerateDrivePatterns("*PatternSegment*","*DriveType*")&lt;/script&gt;

    Example: `<script>MigXmlHelper.GenerateDrivePatterns("* [sample.doc]", "Fixed")</script>`

-   You can use the [Simple executing scripts](#scriptfunctions) with &lt;script&gt; elements that are within &lt;processing&gt; elements: AskForLogoff, ConvertToShortFileName, KillExplorer, RemoveEmptyDirectories, RestartExplorer, RegisterFonts, StartService, StopService, SyncSCM.

    Syntax: &lt;script&gt;MigXmlHelper.*ExecutingScript*&lt;/script&gt;

    Example: `<script>MigXmlHelper.KillExplorer()</script>`

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><em>ScriptWithArguments</em></p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example<code>, MyScripts.AScript (&quot;Arg1&quot;,&quot;Arg2&quot;).</code></p>
<p>The script will be called for each object that is enumerated by the object sets in the &lt;include&gt; rule. The filter script returns a Boolean value. If the return value is TRUE, the object will be migrated. If it is FALSE, it will not be migrated.</p>
<p>The return value that is required by &lt;script&gt; depends on the parent element.</p>
<ul>
<li><p>When used within &lt;variable&gt;, the return value must be a string.</p></li>
<li><p>When used within &lt;objectSet&gt;, the return value must be a two-dimensional array of strings.</p></li>
<li><p>When used within &lt;location&gt;, the return value must be a valid location that aligns with the type attribute of &lt;location&gt;. For example, if &lt;location type=&quot;File&quot;&gt;, the child script element, if specified, must be a valid file location.</p>
<div class="alert">
<strong>Note</strong><br/><p>If you are migrating a file that has a bracket character ([ or ]) in the file name, insert the carrot (^) character directly before the bracket for it to be valid. For example, if there is a file named &quot;file].txt&quot;, specify <code>&lt;pattern type=&quot;File&quot;&gt;c:\documents\mydocs [file^].txt]&lt;/pattern&gt; </code>instead of <code>&lt;pattern type=&quot;File&quot;&gt;c:\documents\mydocs [file].txt]&lt;/pattern&gt;</code>.</p>
</div>
<div>

</div></li>
</ul></td>
</tr>
</tbody>
</table>



Examples:

To migrate the Sample.doc file from any drive on the source computer, use &lt;script&gt; as follows. If multiple files exist with the same name, all such files will get migrated.

``` syntax
<script>MigXmlHelper.GenerateDrivePatterns("* [sample.doc]", "Fixed")</script> 
```

For more examples of how to use this element, see [Exclude Files and Settings](usmt-exclude-files-and-settings.md), [Reroute Files and Settings](usmt-reroute-files-and-settings.md), and [Custom XML Examples](usmt-custom-xml-examples.md).

### <a href="" id="scriptfunctions"></a>&lt;script&gt; functions

You can use the following functions with the &lt;script&gt; element

-   [String and pattern generating functions](#stringgeneratingfunctions)

-   [Simple executing scripts](#simple)

### <a href="" id="stringgeneratingfunctions"></a>String and pattern generating functions

These functions return either a string or a pattern.

-   **GetStringContent**

    You can use GetStringContent with &lt;script&gt; elements that are within &lt;variable&gt; elements. If possible, this function returns the string representation of the given object. Otherwise, it returns NULL. For file objects this function always returns NULL.

    Syntax: GetStringContent("*ObjectType*","*EncodedLocationPattern*", "*ExpandContent*")

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Setting</th>
    <th align="left">Required?</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><em>ObjectType</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><p>The type of object. Can be Registry or Ini (for an .ini file).</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><em>EncodedLocationPattern</em></p></td>
    <td align="left"><p>Yes</p></td>
    <td align="left"><ul>
    <li><p>If type of object is Registry, EncodedLocationPattern must be a valid registry path. For example, HKLM\SOFTWARE\MyKey[].</p></li>
    <li><p>If the type of object is Ini, then EncodedLocationPattern must be in the following format:</p>
    <p>IniFilePath|SectionName[SettingName]</p></li>
    </ul></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><em>ExpandContent</em></p></td>
    <td align="left"><p>No (default=TRUE)</p></td>
    <td align="left"><p>Can be TRUE or FALSE. If FALSE, then the given location will not be expanded before it is returned.</p></td>
    </tr>
    </tbody>
    </table>



~~~
For example:

``` syntax
<variable name="MSNMessengerInstPath">
<script>MigXmlHelper.GetStringContent("Registry","%HklmWowSoftware%\Microsoft\MSNMessenger [InstallationDirectory]")</script>
</variable>
```
~~~

- **GenerateDrivePatterns**

  The GenerateDrivePatterns function will iterate all of the available drives and select the ones that match the requested drive type. It will then concatenate the selected drives with the end part of *PatternSegment* to form a full encoded file pattern. For example, if *PatternSegment* is `Path [file.txt]` and DriveType is `Fixed`, then the function will generate `C:\Path [file.txt]`, and other patterns if there are fixed drives other than C:. You cannot specify environment variables with this function. You can use GenerateDrivePatterns with &lt;script&gt; elements that are within [&lt;objectSet&gt;](#objectset) that are within &lt;include&gt;/&lt;exclude&gt;.

  Syntax: GenerateDrivePatterns("*PatternSegment*","*DriveType*")

  <table>
  <colgroup>
  <col width="33%" />
  <col width="33%" />
  <col width="33%" />
  </colgroup>
  <thead>
  <tr class="header">
  <th align="left">Setting</th>
  <th align="left">Required?</th>
  <th align="left">Value</th>
  </tr>
  </thead>
  <tbody>
  <tr class="odd">
  <td align="left"><p><em>PatternSegment</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The suffix of an encoded pattern. It will be concatenated with a drive specification, such as &quot;c:&amp;quot;, to form a complete <a href="#locations" data-raw-source="[encoded file pattern](#locations)">encoded file pattern</a>. For example, &quot;* [*.doc]&quot;. <em>PatternSegment</em> cannot be an environment variable.</p></td>
  </tr>
  <tr class="even">
  <td align="left"><p><em>DriveType</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The drive type for which the patterns are to be generated. You can specify one of:</p>
  <ul>
  <li><p>Fixed</p></li>
  <li><p>CDROM</p></li>
  <li><p>Removable</p></li>
  <li><p>Remote</p></li>
  </ul></td>
  </tr>
  </tbody>
  </table>



~~~
See the last component in the MigUser.xml file for an example of this element.
~~~

- **GenerateUserPatterns**

  The function will iterate through all users that are being migrated, excluding the currently processed user if &lt;ProcessCurrentUser&gt; is FALSE, and will expand the specified pattern in the context of each user. For example, if users A, B and C have profiles in C:\\Documents and Settings), by calling `GenerateUserPattens('File','%userprofile% [*.doc]','TRUE')`, the helper function will generate the following three patterns:

  -   "C:\\Documents and Settings\\A\\\* \[\*.doc\]"

  -   "C:\\Documents and Settings\\B\\\* \[\*.doc\]"

  -   "C:\\Documents and Settings\\C\\\* \[\*.doc\]"

  Syntax:GenerateUserPatterns("*ObjectType*","*EncodedLocationPattern*","*ProcessCurrentUser*")

  <table>
  <colgroup>
  <col width="33%" />
  <col width="33%" />
  <col width="33%" />
  </colgroup>
  <thead>
  <tr class="header">
  <th align="left">Setting</th>
  <th align="left">Required?</th>
  <th align="left">Value</th>
  </tr>
  </thead>
  <tbody>
  <tr class="odd">
  <td align="left"><p><em>ObjectType</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>Defines the object type. Can be File or Registry.</p></td>
  </tr>
  <tr class="even">
  <td align="left"><p><em>EncodedLocationPattern</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>The <a href="#locations" data-raw-source="[location pattern](#locations)">location pattern</a>. Environment variables are allowed.</p></td>
  </tr>
  <tr class="odd">
  <td align="left"><p><em>ProcessCurrentUser</em></p></td>
  <td align="left"><p>Yes</p></td>
  <td align="left"><p>Can be TRUE or FALSE. Indicates if the patterns should be generated for the current user.</p></td>
  </tr>
  </tbody>
  </table>



~~~
**Example:**

If GenerateUserPattens('File','%userprofile% \[\*.doc\]','FALSE') is called while USMT is processing user A, then this function will only generate patterns for users B and C. You can use this helper function to build complex rules. For example, to migrate all .doc files from the source computer — but if user X is not migrated, then do not migrate any of the .doc files from user X’s profile.

The following is example code for this scenario. The first &lt;rules&gt; element migrates all.doc files on the source computer with the exception of those inside C:\\Documents and Settings. The second &lt;rules&gt; elements will migrate all .doc files from C:\\Documents and Settings with the exception of the .doc files in the profiles of the other users. Because the second &lt;rules&gt; element will be processed in each migrated user context, the end result will be the desired behavior. The end result is the one we expected.

``` syntax
<rules context="System">
  <include>
    <objectSet>
      <script>MigXmlHelper.GenerateDrivePatterns ("* [*.doc]", "Fixed")</script>
    </objectSet>
  </include>
  <exclude>
    <objectSet>
      <pattern type="File">%ProfilesFolder%\* [*.doc]</pattern>
    </objectSet>
  </exclude>
</rules>
<rules context="User">
  <include>
    <objectSet>
      <pattern type="File">%ProfilesFolder%\* [*.doc]</pattern>
    </objectSet>
  </include>
  <exclude>
    <objectSet>
      <script>MigXmlHelper.GenerateUserPatterns ("File","%userprofile%\* [*.doc]", "FALSE")</script>
    </objectSet>
  </exclude>
</rules>
```
~~~

### MigXmlHelper.GenerateDocPatterns

This helper function invokes the document finder to scan the system for all files that can be migrated. It can be invoked in either System or User context to focus the scan.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><em>ScanProgramFiles</em></p></td>
<td align="left"><p>No (default = FALSE)</p></td>
<td align="left"><p>Can be TRUE or FALSE. The <em>ScanProgramFiles</em> parameter determines whether or not the document finder scans the <strong>Program Files</strong> directory to gather registered file extensions for known applications. For example, when set to TRUE it will discover and migrate .jpg files under the Photoshop directory, if .jpg is a file extension registered to Photoshop.</p></td>
</tr>
<tr class="even">
<td align="left"><p><em>IncludePatterns</em></p></td>
<td align="left"><p>No (default = TRUE)</p></td>
<td align="left"><p>Can be TRUE or FALSE. TRUE will generate include patterns and can be added under the &lt;include&gt; element. FALSE will generate exclude patterns and can be added under the &lt;exclude&gt; element.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><em>SystemDrive</em></p></td>
<td align="left"><p>No (default = FALSE)</p></td>
<td align="left"><p>Can be TRUE or FALSE. If TRUE, restricts all patterns to the system drive.</p></td>
</tr>
</tbody>
</table>



``` syntax
 <!-- This component migrates data in user context -->
  <component type="Documents" context="User">
    <displayName>MigDocUser</displayName>
    <role role="Data">
      <rules>
        <include filter='MigXmlHelper.IgnoreIrrelevantLinks()'>
          <objectSet>
            <script>MigXmlHelper.GenerateDocPatterns ("false")</script>
          </objectSet>
        </include>
        <exclude>
          <objectSet>
           <script>MigXmlHelper.GenerateDocPatterns ("false", "false", "false")</script>
          </objectSet>
        </exclude>
      </rules>
    </role>
  </component>
```

### <a href="" id="simple"></a>Simple executing scripts

The following scripts have no return value. You can use the following errors with &lt;script&gt; elements that are within &lt;processing&gt; elements

-   **AskForLogoff()**. Prompts the user to log off at the end of the migration. For example:

    ``` syntax
         <processing when="apply-success">
              <script>MigXmlHelper.AskForLogoff()</script>
         </processing>
    ```

-   **ConvertToShortFileName(RegistryEncodedLocation)**. If *RegistryEncodedLocation* is the full path of an existing file, this function will convert the file to its short file name and then it will update the registry value.

-   **KillExplorer()**. Stops Explorer.exe for the current user context. This allows access to certain keys and files that are kept open when Explorer.exe is running. For example:

    ``` syntax
         <processing when="pre-apply">
              <script>MigXmlHelper.KillExplorer()</script>
         </processing>
    ```

-   **RegisterFonts(FileEncodedLocation)**. Registers the given font or all of the fonts in the given directory. For example:

    ``` syntax
    <processing when="apply-success">
    <script>MigXmlHelper.RegisterFonts("%CSIDL_COMMON_FONTS%")</script>
    </processing>
    ```

-   **RemoveEmptyDirectories (DirectoryEncodedPattern).** Deletes any empty directories that match *DirectoryEncodedPattern* on the destination computer.

-   **RestartExplorer().** Restarts Explorer.exe at the end of the migration. For example:

    ``` syntax
         <processing when="post-apply">
              <script>MigXmlHelper.RestartExplorer()</script>
         </processing>
    ```

-   **StartService (ServiceName, OptionalParam1, OptionalParam2,…).** Starts the service identified by *ServiceName. ServiceName* is the subkey in HKLM\\System\\CurrentControlSet\\Services that holds the data for the given service. The optional parameters, if any, will be passed to the StartService API. For more information, see [this Microsoft Web site](https://go.microsoft.com/fwlink/p/?LinkId=267898).

-   **StopService (ServiceName)**. Stops the service that is identified by *ServiceName. ServiceName* is the subkey in HKLM\\System\\CurrentControlSet\\Services that holds the data for the given service.

-   **SyncSCM(ServiceShortName).** Reads the Start type value from the registry (HKLM\\System\\CurrentControlSet\\Services\\ServiceShortName \[Start\]) after it is changed by the migration engine, and then synchronizes Service Control Manager (SCM) with the new value.

## <a href="" id="text"></a>&lt;text&gt;


You can use the &lt;text&gt; element to set a value for any environment variables that are inside one of the migration .xml files.

-   **Number of occurrences:** Once in each [&lt;variable&gt;](#variable) element.

-   **Parent elements:**[&lt;variable&gt;](#variable)

-   **Child elements:** None.

Syntax:

&lt;text&gt;*NormalText*&lt;/text&gt;

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><em>NormalText</em></p></td>
<td align="left"><p>This is interpreted as normal text.</p></td>
</tr>
</tbody>
</table>



For example:

``` syntax
<variable name="QuickTime5or6DataSys">
  <text>%CSIDL_COMMON_APPDATA%\QuickTime</text> 
</variable>
```

## <a href="" id="unconditionalexclude"></a>&lt;unconditionalExclude&gt;


The &lt;unconditionalExclude&gt; element excludes the specified files and registry values from the migration, regardless of the other include rules in any of the migration .xml files or in the Config.xml file. The objects declared here will not be migrated because this element takes precedence over all other rules. For example, even if there are explicit &lt;include&gt; rules to include .mp3 files, if you specify to exclude them with this option, then they will not be migrated.

Use this element if you want to exclude all .mp3 files from the source computer. Or, if you are backing up C:\\UserData using another method, you can exclude the entire folder from the migration. Use this element with caution, however, because if an application needs a file that you exclude, the application may not function properly on the destination computer.

-   **Number of occurrences:** Unlimited.

-   **Parent elements:**[&lt;rules&gt;](#rules)

-   **Child elements:**[&lt;objectSet&gt;](#objectset)

Syntax:

&lt;unconditionalExclude&gt;&lt;/unconditionalExclude&gt;

The following .xml file excludes all .mp3 files from migration. For additional examples of how to use this element, see the [Exclude Files and Settings](usmt-exclude-files-and-settings.md).

``` syntax
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/excludefiles">
  <component context="System" type="Documents">
        <displayName>Test</displayName>
        <role role="Data">
            <rules>
             <unconditionalExclude>
                        <objectSet>
    <script>MigXmlHelper.GenerateDrivePatterns ("* [*.mp3]", "Fixed")</script>
                        </objectSet> 
             </unconditionalExclude>
            </rules>
        </role>
    </component>
</migration>
```

## <a href="" id="variable"></a>&lt;variable&gt;


The &lt;variable&gt; element is required in an &lt;environment&gt; element. For each &lt;variable&gt; element there must be one &lt;objectSet&gt;, &lt;script&gt;, or &lt;text&gt; element. The content of the &lt;variable&gt; element assigns a text value to the environment variable. This element has the following three options:

1.  If the &lt;variable&gt; element contains a &lt;text&gt; element, then the value of the variable element will be the value of the &lt;text&gt; element.

2.  If the &lt;variable&gt; element contains a &lt;script&gt; element and the invocation of the script produces a non-null string, then the value of the &lt;variable&gt; element will be the result of the script invocation.

3.  If the &lt;variable&gt; element contains an &lt;objectSet&gt; element and the evaluation of the &lt;objectSet&gt; element produces at least one object pattern, then the value of the first object to match the resulting object pattern will be the value of the variable element.

-   **Number of occurrences:** Unlimited

-   **Parent elements:**[&lt;environment&gt;](#bkmk-environment)

-   **Required child elements:** either [&lt;text&gt;](#text), or [&lt;script&gt;](#script), or [&lt;objectSet&gt;](#objectset)

Syntax:

&lt;variable name="*ID*" remap=TRUE|FALSE&gt;

&lt;/variable&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>name</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p><em>ID</em> is a string value that is the name used to reference the environment variable. We recommend that <em>ID</em> start with the component’s name to avoid namespace collisions. For example, if your component’s name is MyComponent, and you want a variable that is your component’s install path, you could specify <code>MyComponent.InstallPath</code>.</p></td>
</tr>
<tr class="even">
<td align="left"><p>remap</p></td>
<td align="left"><p>No, default = FALSE</p></td>
<td align="left"><p>Specifies whether to evaluate this environment variable as a remapping environment variable. Objects that are located in a path that is underneath this environment variable’s value are automatically moved to where the environment variable points on the destination computer.</p></td>
</tr>
</tbody>
</table>



The following example is from the MigApp.xml file:

``` syntax
<environment>
   <variable name="HklmWowSoftware">
      <text>HKLM\Software</text>
   </variable>
   <variable name="WinZip8or9or10Exe">
      <script>MigXmlHelper.GetStringContent("Registry","%HklmWowSoftware%\Microsoft\Windows\CurrentVersion\App Paths\winzip32.exe []")</script>
   </variable>
</environment>
```

## <a href="" id="version"></a>&lt;version&gt;


The &lt;version&gt; element defines the version for the component, but does not affect the migration.

-   **Number of occurrences:** zero or one

-   **Parent elements:**[&lt;component&gt;](#component)

-   **Child elements:** none

Syntax:

&lt;version&gt;*ComponentVersion*&lt;/version&gt;

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Required?</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><em>ComponentVersion</em></p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>The version of the component, which can contain patterns.</p></td>
</tr>
</tbody>
</table>



For example:

``` syntax
<version>4.*</version>
```

## <a href="" id="windowsobjects"></a>&lt;windowsObjects&gt;


The &lt;windowsObjects&gt; element is for USMT internal use only. Do not use this element.

## Appendix


### <a href="" id="locations"></a>Specifying locations

-   **Specifying encoded locations**. The encoded location used in all of the helper functions is an unambiguous string representation for the name of an object. It is composed of the node part, optionally followed by the leaf enclosed in square brackets. This makes a clear distinction between nodes and leaves.

    For example, specify the file C:\\Windows\\Notepad.exe like this: `c:\Windows[Notepad.exe]`. Similarly, specify the directory C:\\Windows\\System32 like this: `c:\Windows\System32`. (Notice the absence of the \[\] construct.)

    Representing the registry is very similar. The default value of a registry key is represented as an empty \[\] construct. For example, the default value for the HKLM\\SOFTWARE\\MyKey registry key will be `HKLM\SOFTWARE\MyKey[]`.

-   **Specifying location patterns**. You specify a location pattern in a way that is similar to how you specify an actual location. The exception is that both the node and leaf part accept patterns. However, a pattern from the node does not extend to the leaf.

    For example, the pattern `c:\Windows\*` will match the Windows directory and all subdirectories. But it will not match any of the files in those directories. To match the files as well, you must specify `c:\Windows\*[*]`.

### <a href="" id="internalusmtfunctions"></a>Internal USMT functions

The following functions are for internal USMT use only. Do not use them in an .xml file.

-   AntiAlias

-   ConvertScreenSaver

-   ConvertShowIEOnDesktop

-   ConvertToOfficeLangID

-   MigrateActiveDesktop

-   MigrateAppearanceUPM

-   MigrateDisplayCS

-   MigrateDisplaySS

-   MigrateIEAutoSearch

-   MigrateMouseUPM

-   MigrateSoundSysTray

-   MigrateTaskBarSS

-   SetPstPathInMapiStruc

### <a href="" id="allowed"></a>Valid version tags

You can use the following version tags with various helper functions:

-   “CompanyName”

-   “FileDescription”

-   “FileVersion”

-   “InternalName”

-   “LegalCopyright”

-   “OriginalFilename”

-   “ProductName”

-   “ProductVersion”

The following version tags contain values that can be compared:

-   “FileVersion”

-   “ProductVersion”

## Related topics


[USMT XML Reference](usmt-xml-reference.md)










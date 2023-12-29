---
title: XML Elements Library
description: Learn about the XML elements and helper functions that you can employ to author migration .xml files to use with User State Migration Tool (USMT).
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 12/29/2023
ms.topic: article
ms.technology: itpro-deploy
---

# XML elements library

This article describes the XML elements and helper functions that you can employ to author migration .xml files to use with User State Migration Tool (USMT). This article assumes a basic knowledge of XML.

In addition to XML elements and helper functions, this article:

- Describes how to specify encoded locations and locations patterns.
- Functions that are for internal USMT use only.
- The version tags that you can use with helper functions.

## Elements and helper functions

The following table describes the XML elements and helper functions you can use with USMT.

| Elements A-K | Elements L-Z | Helper functions |
|-----|----|-----|
| [&lt;addObjects&gt;](#addobjects) <br/>[&lt;attributes&gt;](#attributes) <br/>[&lt;bytes&gt;](#bytes) <br/>[&lt;commandLine&gt;](#commandline) <br/>[&lt;component&gt;](#component) <br/>[&lt;condition&gt;](#condition) <br/>[&lt;conditions&gt;](#conditions) <br/>[&lt;content&gt;](#content) <br/>[&lt;contentModify&gt;](#contentmodify) <br/>[&lt;description&gt;](#description) <br/>[&lt;destinationCleanup&gt;](#destinationcleanup) <br/>[&lt;detect&gt;](#detect) <br/>[&lt;detects&gt;](#detects) <br/>[&lt;detection&gt;](#detection) <br/>[&lt;displayName&gt;](#displayname) <br/>[&lt;environment&gt;](#environment) <br/>[&lt;exclude&gt;](#exclude) <br/>[&lt;excludeAttributes&gt;](#excludeattributes) <br/>[&lt;extensions&gt;](#extensions) <br/>[&lt;extension&gt;](#extension) <br/>[&lt;externalProcess&gt;](#externalprocess) <br/>[&lt;icon&gt;](#icon) <br/>[&lt;include&gt;](#include) <br/>[&lt;includeAttribute&gt;](#includeattributes) | [&lt;library&gt;](#library) <br/>[&lt;location&gt;](#location) <br/>[&lt;locationModify&gt;](#locationmodify) <br/>[&lt;_locDefinition&gt;](#_locdefinition) <br/>[&lt;manufacturer&gt;](#manufacturer) <br/>[&lt;merge&gt;](#merge) <br/>[&lt;migration&gt;](#migration) <br/>[&lt;namedElements&gt;](#namedelements) <br/>[&lt;object&gt;](#object) <br/>[&lt;objectSet&gt;](#objectset) <br/>[&lt;path&gt;](#path) <br/>[&lt;paths&gt;](#paths) <br/>[&lt;pattern&gt;](#pattern) <br/>[&lt;processing&gt;](#processing) <br/>[&lt;plugin&gt;](#plugin) <br/>[&lt;role&gt;](#role) <br/>[&lt;rules&gt;](#rules) <br/>[&lt;script&gt;](#script) <br/>[&lt;text&gt;](#text) <br/>[&lt;unconditionalExclude&gt;](#unconditionalexclude) <br/>[&lt;variable&gt;](#variable) <br/>[&lt;version&gt;](#version) <br/>[&lt;windowsObjects&gt;](#windowsobjects) | [&lt;condition&gt; functions](#condition-functions) <br/>[&lt;content&gt; functions](#content-functions) <br/>[&lt;contentModify&gt; functions](#contentmodify-functions) <br/>[&lt;include&gt; and &lt;exclude&gt; filter functions](#include-and-exclude-filter-functions) <br/>[&lt;locationModify&gt; functions](#locationmodify-functions) <br/>[&lt;merge&gt; functions](#merge-functions) <br/>[&lt;script&gt; functions](#script-functions) <br/>[Internal USMT functions](#internal-usmt-functions) |

## \<addObjects\>

The **&lt;addObjects&gt;** element emulates the existence of one or more objects on the source computer. The child **&lt;object&gt;** elements provide the details of the emulated objects. If the content is a **&lt;script&gt;** element, the result of the invocation is an array of objects.

- **Number of occurrences:** unlimited

- **Parent elements:** [&lt;rules&gt;](#rules)

- **Required child elements:** [&lt;object&gt;](#object) In addition, you must specify [&lt;location&gt;](#location) and [&lt;attribute&gt;](#attributes) as child elements of this **&lt;object&gt;** element.

- **Optional child elements:** [&lt;conditions&gt;](#conditions), [&lt;condition&gt;](#condition), [&lt;script&gt;](#script)

Syntax:

```xml
<addObjects>
</addObjects>
```

The following example is from the `MigApp.xml` file:

```xml
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

## &lt;attributes&gt;

The **&lt;attributes&gt;** element defines the attributes for a registry key or file.

- **Number of occurrences:** once for each [&lt;object&gt;](#object)

- **Parent elements:** [&lt;object&gt;](#object)

- **Child elements:** none

Syntax:

```xml
<attributes>Content</attributes>
```

| Setting | Required? | Value |
|------|-----|----|
| *Content* | Yes | The content depends on the type of object specified. <br/><ul><li>For files, the content can be a string containing any of the following attributes separated by commas:<ul><li>Archive</li><li>Read-only</li><li>System</li><li>Hidden</li></ul></li><li>For registry keys, the content can be one of the following types:<ul><li>None</li><li>String</li><li>ExpandString</li><li>Binary</li><li>Dword</li><li>REG_SZ</li></ul></li></ul>|

The following example is from the `MigApp.xml` file:

```xml
<object>
   <location type="Registry">%HklmWowSoftware%\Microsoft\Office\12.0\Common\Migration\Office [Lang]</location>
   <attributes>DWORD</attributes>
   <bytes>00000000</bytes>
</object> 
```

## &lt;bytes&gt;

You must specify the **&lt;bytes&gt;** element only for files because, if **&lt;location&gt;** corresponds to a registry key or a directory, then **&lt;bytes&gt;** is ignored.

- **Number of occurrences:** zero or one

- **Parent elements:** [&lt;object&gt;](#object)

- **Child elements:** none

Syntax:

```xml
<bytes string="Yes|No" expand="Yes|No">Content</bytes>
```

|Setting|Required?|Value|
|--- |--- |--- |
|string|No, default is No|Determines whether *Content* should be interpreted as a string or as bytes.|
|expand|No (default = Yes|When the expand parameter is **Yes**, the content of the **&lt;bytes&gt;** element is first expanded in the context of the source computer and then interpreted.|
|*Content*|Yes|Depends on the value of the string.<ul><li>When the string is **Yes**: the content of the **&lt;bytes&gt;** element is interpreted as a string.</li><li>When the string is **No**: the content of the **&lt;bytes&gt;** element is interpreted as bytes. Every two characters represent the hexadecimal value of a byte. For example, `616263` is the representation for the `abc` ANSI string. A complete representation of the UNICODE string `abc` including the string terminator would be: `6100620063000000`.</li></ul>|

The following example is from the `MigApp.xml` file:

```xml
<object>
   <location type="Registry">%HklmWowSoftware%\Microsoft\Office\12.0\Common\Migration\Office [Lang]</location>
   <attributes>DWORD</attributes>
   <bytes>00000000</bytes>
</object> 
```

## &lt;commandLine&gt;

You might want to use the **&lt;commandLine&gt;** element if you want to start or stop a service or application before or after you run the **ScanState** and **LoadState** tools.

- **Number of occurrences:** unlimited

- **Parent elements:** [&lt;externalProcess&gt;](#externalprocess)

- **Child elements:** none

Syntax:

```xml
<commandLine>CommandLineString</commandLine>
```

|Setting|Required?|Value|
|--- |--- |--- |
|*CommandLineString*|Yes|A valid command line.|

## &lt;component&gt;

The **&lt;component&gt;** element is required in a custom .xml file. This element defines the most basic construct of a migration .xml file. For example, in the `MigApp.xml` file, **Microsoft Office 2016** is a component that contains another component, **Microsoft Office Access 2016**. You can use the child elements to define the component.

A component can be nested inside another component; that is, the **&lt;component&gt;** element can be a child of the **&lt;role&gt;** element within the **&lt;component&gt;** element in two cases:

1. When the parent **&lt;component&gt;** element is a container
1. If the child **&lt;component&gt;** element has the same role as the parent **&lt;component&gt;** element.

- **Number of occurrences:** Unlimited

- **Parent elements:** [&lt;migration&gt;](#migration), [&lt;role&gt;](#role)

- **Required child elements:** [&lt;role&gt;](#role), [&lt;displayName&gt;](#displayname)

- **Optional child elements:** [&lt;manufacturer&gt;](#manufacturer), [&lt;version&gt;](#version), [&lt;description&gt;](#description), [&lt;paths&gt;](#paths), [&lt;icon&gt;](#icon), [&lt;environment&gt;](#environment), [&lt;extensions&gt;](#extensions)

Syntax:

```xml
<component type="System|Application|Device|Documents" context="User|System|UserAndSystem" defaultSupported="TRUE|FALSE|YES|NO"
hidden="Yes|No">
</component>
```

|Setting|Required?|Value|
|--- |--- |--- |
| type | Yes | You can use the following to group settings, and define the type of the component.<ul><li>**System:** Operating system settings. All Windows components are defined by this type. <br/>When **type="System"** and **defaultSupported="FALSE"**, the settings don't migrate unless there's an equivalent component in the .xml files that is specified on the `LoadState.exe` command line. For example, the default `MigSys.xml` file contains components with **type="System"** and **defaultSupported="FALSE"**. If you specify this file on the `ScanState.exe` command line, you must also specify the file on the `LoadState.exe` command line for the settings to migrate. The file must be specified because the `LoadState.exe` tool must detect an equivalent component. That is, the component must have the same migration urlid of the .xml file and an identical display name. Otherwise, the **LoadState** tool doesn't migrate those settings from the store. This setting is helpful because a store can be used for destination computers that are the same or different version of Windows as the source computer.</li><li>**Application:** Settings for an application.</li><li>**Device:** Settings for a device.</li><li>**Documents:** Specifies files.</li></ul> |
| context | No <br/>Default = UserAndSystem | Defines the scope of this parameter; that is, whether to process this component in the context of the specific user, across the entire operating system, or both. <br/>The largest possible scope is set by the **&lt;component&gt;** element. For example, if a **&lt;component&gt;** element has a context of **User** and a **&lt;rules&gt;** element had a context of **UserAndSystem**, then the **&lt;rules&gt;** element would act as though it has a context of **User**. If a **&lt;rules&gt;** element has a context of **System**, it would act as though the **&lt;rules&gt;** element isn't there. <ul><li>**User**: Evaluates the component for each user.</li><li>**System**: Evaluates the component only once for the system.</li><li>**UserAndSystem**: Evaluates the component for the entire operating system and each user.</li></ul> |
| defaultSupported | No <br/>(default = TRUE) | Can be any of **TRUE**, **FALSE**, **YES**, or **NO**. If this parameter is **FALSE** (or **NO**), the component isn't migrated unless there's an equivalent component on the destination computer. <br/>When **type="System"** and **defaultSupported="FALSE"**, the settings aren't migrated unless there's an equivalent component in the .xml files that are specified on the `LoadState.exe` command line. For example, the default `MigSys.xml` file contains components with **type="System"** and **defaultSupported="FALSE"**. If you specify this file on the `ScanState.exe` command line, you must also specify the file on the `LoadState.exe` command line for the settings to migrate. The file has to be specified in both command lines because the **LoadState** tool must detect an equivalent component. That is, the component must have the same migration urlid of the .xml file and an identical display name or the **LoadState** tool doesn't migrate those settings from the store. This setting is helpful because a store can be used for destination computers that are the same or different version of Windows as the source computer. |
| hidden |   | This parameter is for internal USMT use only. |

For an example, see any of the default migration .xml files.

## &lt;condition&gt;

Although the **&lt;condition&gt;** element under the **&lt;detect&gt;**, **&lt;objectSet&gt;**, and **&lt;addObjects&gt;** elements is still supported, Microsoft recommends to no longer use the **&lt;condition&gt;** element because it might be deprecated in future versions of USMT. If the **&lt;condition&gt;** element is deprecated, it would require a rewrite of any scripts that use the **&lt;condition&gt;** element. Instead, if you need to use a condition within the **&lt;objectSet&gt;** and **&lt;addObjects&gt;** elements, Microsoft recommends using the more powerful **[&lt;conditions&gt;](#conditions)** element. The **&lt;conditions&gt;** element allows for formulation of complex Boolean statements.

The **&lt;condition&gt;** element has a Boolean result. You can use this element to specify the conditions in which the parent element is evaluated. If any of the present conditions return **FALSE**, the parent element isn't be evaluated.

- **Number of occurrences:** unlimited.

- **Parent elements:** [&lt;conditions&gt;](#conditions), [&lt;detect&gt;](#detect), [&lt;objectSet&gt;](#objectset), [&lt;addObjects&gt;](#addobjects)

- **Child elements:** none

- **Helper functions:** You can use the following [&lt;condition&gt; functions](#condition-functions) with this element: `DoesOSMatch`, `IsNative64Bit()`, `IsOSLaterThan`, `IsOSEarlierThan`, `DoesObjectExist`, `DoesFileVersionMatch`, `IsFileVersionAbove`, `IsFileVersionBelow`, `IsSystemContext`, `DoesStringContentEqual`, `DoesStringContentContain`, `IsSameObject`, `IsSameContent`, and `IsSameStringContent`.

Syntax:

```xml
<condition negation="Yes|No">ScriptName</condition>
```

|Setting|Required?|Value|
|--- |--- |--- |
|negation|No <br/>Default = No|**"Yes"** reverses the True/False value of the condition.|
|*ScriptName*|Yes|A script that is defined within this migration section.|

For example, in the following code sample, the **&lt;condition&gt;** elements, **A** and **B**, are joined together by the **AND** operator because they are in separate **&lt;conditions&gt;** sections:

```xml
<detection>
   <conditions>
      <condition>A</condition>
   </conditions>
   <conditions operation="AND">
      <condition>B</condition>
   </conditions>
</detection>
```

However, in the following code sample, the **&lt;condition&gt;** elements, **A** and **B**, are joined together by the **OR** operator because they are in the same **&lt;conditions&gt;** section.

```xml
<detection>
   <conditions>
      <condition>A</condition>
      <condition>B</condition>
   </conditions>
</detection>
```

### &lt;condition&gt; functions

The **&lt;condition&gt;** functions return a Boolean value. You can use these elements in **&lt;addObjects&gt;** conditions.

- [Operating system version functions](#operating-system-version-functions)

- [Object content functions](#object-content-functions)

### Operating system version functions

- **DoesOSMatch**

    All matches are case insensitive.

    Syntax: `DoesOSMatch("OSType","OSVersion")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*OSType*|Yes|The only valid value for this setting is **NT**. Note, however, that you must set this setting for the **&lt;condition&gt;** functions to work correctly.|
    |*OSVersion*|Yes|The major version, minor version, build number and corrected service diskette version separated by periods. For example, `5.0.2600.Service Pack 1`. You can also specify partial specification of the version with a pattern such as `5.0.*`.|

  For example:

  ```xml
  <condition>MigXmlHelper.DoesOSMatch("NT","\*")</condition>
  ```

- **IsNative64Bit**

    The **IsNative64Bit** function returns **TRUE** if the migration process is running as a native 64-bit process; that is, a process running on a 64-bit system without Windows on Windows (WOW). Otherwise, it returns **FALSE**.

- **IsOSLaterThan**

    All comparisons are case insensitive.

    Syntax: `IsOSLaterThan("OSType","OSVersion")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*OSType*|Yes|Can be **9x** or **NT**. If *OSType* doesn't match the type of the current operating system, then it returns **FALSE**. For example, if the current operating system is Windows NT-based and *OSType* is **"9x"**, the result is **FALSE**.|
    |*OSVersion*|Yes|The major version, minor version, build number, and corrected service diskette version separated by periods. For example, `5.0.2600.Service Pack 1`. You can also specify partial specification of the version but no pattern is allowed such as `5.0`. <br/><br/>The **IsOSLaterThan** function returns **TRUE** if the current operating system is later than or equal to *OSVersion*.|

  For example:

  ```xml
  <condition negation="Yes">MigXmlHelper.IsOSLaterThan("NT","6.0")</condition>
  ```

- **IsOSEarlierThan**

    All comparisons are case insensitive.

    Syntax: `IsOSEarlierThan("OSType","OSVersion")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*OSType*|Yes|Can be **9x** or **NT**. If *OSType* doesn't match the type of the current operating system, then it returns **FALSE**. For example, if the current operating system is Windows NT-based and *OSType* is **"9x"** the result is **FALSE**.|
    |*OSVersion*|Yes|The major version, minor version, build number, and corrected service diskette version separated by periods. For example, `5.0.2600.Service Pack 1`. You can also specify partial specification of the version but no pattern is allowed such as `5.0`. <br/><br/>The **IsOSEarlierThan** function returns **TRUE** if the current operating system is earlier than *OSVersion*.|

### Object content functions

- **DoesObjectExist**

  The DoesObjectExist function returns **TRUE** if any object exists that matches the location pattern. Otherwise, it returns **FALSE**. The location pattern is expanded before attempting the enumeration.

  Syntax: `DoesObjectExist("ObjectType","EncodedLocationPattern")`

   |Setting|Required?|Value|
   |--- |--- |--- |
   |*ObjectType*|Yes|Defines the object type. Can be File or Registry.|
   |*EncodedLocationPattern*|Yes|The **[location pattern](#specifying-locations)**. Environment variables are allowed.|

  For an example of this element, see the `MigApp.xml` file.

- **DoesFileVersionMatch**

  The pattern check is case insensitive.

  Syntax: `DoesFileVersionMatch("EncodedFileLocation","VersionTag","VersionValue")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*EncodedFileLocation*|Yes|The **[location pattern](#specifying-locations)** for the file that is checked. Environment variables are allowed.|
    |*VersionTag*|Yes|The **[version tag](#valid-version-tags)** value that is checked.|
    |*VersionValue*|Yes|A string pattern. For example, "Microsoft*".|

  For example:

  ```xml
  <condition>MigXmlHelper.DoesFileVersionMatch("%MSNMessengerInstPath%\\msnmsgr.exe","ProductVersion","6.\*")</condition>   <condition>MigXmlHelper.DoesFileVersionMatch("%MSNMessengerInstPath%\\msnmsgr.exe","ProductVersion","7.\*")</condition>
  ```

- **IsFileVersionAbove**

  The **IsFileVersionAbove** function returns **TRUE** if the version of the file is higher than *VersionValue*.

  Syntax: `IsFileVersionAbove("EncodedFileLocation","VersionTag","VersionValue")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*EncodedFileLocation*|Yes|The **[location pattern](#specifying-locations)** for the file that is checked. Environment variables are allowed.|
    |*VersionTag*|Yes|The **[version tag](#valid-version-tags)** value that is checked.|
    |*VersionValue*|Yes|The value to compare to. You can't specify a pattern.|

- **IsFileVersionBelow**

  Syntax: `IsFileVersionBelow("EncodedFileLocation","VersionTag","VersionValue")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*EncodedFileLocation*|Yes|The **[location pattern](#specifying-locations)** for the file that is checked. Environment variables are allowed.|
    |*VersionTag*|Yes|The **[version tag](#valid-version-tags)** value that is checked.|
    |*VersionValue*|Yes|The value to compare to. You can't specify a pattern.|

- **IsSystemContext**

  The **IsSystemContext** function returns **TRUE** if the current context is **"System"**. Otherwise, it returns **FALSE**.

  Syntax: `IsSystemContext()`

- **DoesStringContentEqual**

  The **DoesStringContentEqual** function returns **TRUE** if the string representation of the given object is identical to `StringContent`.

  Syntax: `DoesStringContentEqual("ObjectType","EncodedLocation","StringContent")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*ObjectType*|Yes|Defines the type of object. Can be File or Registry.|
    |*EncodedLocationPattern*|Yes|The **[encoded location](#specifying-locations)** for the object that is examined. You can specify environment variables.|
    |StringContent|Yes|The string that is checked against.|

  For example:

  ```xml
  <condition negation="Yes">MigXmlHelper.DoesStringContentEqual("File","%USERNAME%","")</condition>
  ```

- **DoesStringContentContain**

  The **DoesStringContentContain** function returns **TRUE** if there is at least one occurrence of *StrToFind* in the string representation of the object.

  Syntax: `DoesStringContentContain("ObjectType","EncodedLocation","StrToFind")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*ObjectType*|Yes|Defines the type of object. Can be File or Registry.|
    |*EncodedLocationPattern*|Yes|The **[encoded location](#specifying-locations)** for the object that is examined. You can specify environment variables.|
    |*StrToFind*|Yes|A string that is searched inside the content of the given object.|

- **IsSameObject**

  The **IsSameObject** function returns **TRUE** if the given encoded locations resolve to the same physical object. Otherwise, it returns **FALSE**.

  Syntax: `IsSameObject("ObjectType","EncodedLocation1","EncodedLocation2")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*ObjectType*|Yes|Defines the type of object. Can be File or Registry.|
    |*EncodedLocation1*|Yes|The **[encoded location](#specifying-locations)** for the first object. You can specify environment variables.|
    |*EncodedLocation2*|Yes|The **[encoded location](#specifying-locations)** for the second object. You can specify environment variables.|

  For example:

  ```xml
  <objectSet>
     <condition negation="Yes">MigXmlHelper.IsSameObject("File","%CSIDL_FAVORITES%","%CSIDL_COMMON_FAVORITES%")</condition>
     <pattern type="File">%CSIDL_FAVORITES%\* [*]</pattern>
  </objectSet>
  ```

- **IsSameContent**

  The **IsSameContent** function returns **TRUE** if the given objects have the same content. Otherwise, it returns **FALSE**. The content is compared byte by byte.

  Syntax: `IsSameContent("ObjectType1","EncodedLocation1","ObjectType2","EncodedLocation2")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*ObjectType1*|Yes|Defines the type of the first object. Can be File or Registry.|
    |*EncodedLocation1*|Yes|The **[encoded location](#specifying-locations)** for the first object. You can specify environment variables.|
    |*ObjectType2*|Yes|Defines the type of the second object. Can be File or Registry.|
    |*EncodedLocation2*|Yes|The **[encoded location](#specifying-locations)** for the second object. You can specify environment variables.|

- **IsSameStringContent**

  The **IsSameStringContent** function returns **TRUE** if the given objects have the same content. Otherwise, it returns **FALSE**. The content is interpreted as a string.

  Syntax: `IsSameStringContent("ObjectType1","EncodedLocation1","ObjectType2","EncodedLocation2")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*ObjectType1*|Yes|Defines the type of the first object. Can be File or Registry.|
    |*EncodedLocation1*|Yes|The **[encoded location](#specifying-locations)** for the first object. You can specify environment variables.|
    |*ObjectType2*|Yes|Defines the type of the second object. Can be File or Registry.|
    |*EncodedLocation2*|Yes|The **[encoded location](#specifying-locations)** for the second object. You can specify environment variables.|

## &lt;conditions&gt;

The **&lt;conditions&gt;** element returns a Boolean result that is used to specify the conditions in which the parent element is evaluated. USMT evaluates the child elements, and then joins their results using the operators **AND** or **OR** according to the operation parameter.

- **Number of occurrences:** Unlimited inside another **&lt;conditions&gt;** element. Limited to one occurrence in [&lt;detection&gt;](#detection), [&lt;rules&gt;](#rules), [&lt;addObjects&gt;](#addobjects), and [&lt;objectSet&gt;](#objectset)

- **Parent elements:** [&lt;conditions&gt;](#conditions), [&lt;detection&gt;](#detection), [&lt;environment&gt;](#environment), [&lt;rules&gt;](#rules), [&lt;addObjects&gt;](#addobjects), and [&lt;objectSet&gt;](#objectset)

- **Child elements:** [&lt;conditions&gt;](#conditions), [&lt;condition&gt;](#condition)

Syntax:

```xml
<conditions operation="AND|OR">
</conditions>
```

|Setting|Required?|Value|
|--- |--- |--- |
|operation|No, default = AND|Defines the Boolean operation that is performed on the results that are obtained from the child elements.|

The following example is from the `MigApp.xml` file:

```xml
<environment name="GlobalEnv">
   <conditions>
      <condition negation="Yes">MigXmlHelper.IsNative64Bit()</condition>
   </conditions>
   <variable name="HklmWowSoftware">
   <text>HKLM\Software</text>
   </variable>
</environment>
```

## &lt;content&gt;

You can use the **&lt;content&gt;** element to specify a list of object patterns to obtain an object set from the source computer. Each **&lt;objectSet&gt;** within a **&lt;content&gt;** element is evaluated. For each resulting object pattern list, the objects that match it are enumerated and their content is filtered by the filter parameter. The resulting string array is the output for the **&lt;content&gt;** element. The filter script returns an array of locations. The parent **&lt;objectSet&gt;** element can contain multiple child **&lt;content&gt;** elements.

- **Number of occurrences:** unlimited

- **Parent elements:** [&lt;objectSet&gt;](#objectset)

- **Child elements:** [&lt;objectSet&gt;](#objectset)

- **Helper functions:** You can use the following [&lt;content&gt; functions](#content-functions) with this element: `ExtractSingleFile`, `ExtractMultipleFiles`, and `ExtractDirectory`.

Syntax:

```xml
<content filter="ScriptInvocation">
</content>
```

|Setting|Required?|Value|
|--- |--- |--- |
|filter|Yes|A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example, `MyScripts.AScript ("Arg1","Arg2")`. <br/>The script is called for each object that is enumerated by the object sets in the **&lt;include&gt;** rule. The filter script returns a Boolean value. If the return value is **TRUE**, the object is migrated. If it's **FALSE**, it isn't migrated.|

### &lt;content&gt; functions

The following functions generate patterns out of the content of an object. These functions are called for every object that the parent **&lt;ObjectSet&gt;** element is enumerating.

- **ExtractSingleFile**

    If the registry value is a **MULTI-SZ**, only the first segment is processed. The returned pattern is the encoded location for a file that must exist on the system. If the specification is correct in the registry value, but the file doesn't exist, this function returns **NULL**.

    Syntax: `ExtractSingleFile(Separators,PathHints)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*Separators*|Yes|A list of possible separators that might follow the file specification in this registry value name. For example, if the content is **"C:\Windows\Notepad.exe,-2"**, the separator is a comma. You can specify **NULL**.|
    |*PathHints*|Yes|A list of extra paths, separated by colons (`;`), where the function looks for a file matching the current content. For example, if the content is **"Notepad.exe"** and the path is the **%Path%** environment variable, the function finds **Notepad.exe** in `%windir%` and returns **"c:\Windows [Notepad.exe]"**. You can specify **NULL**.|

  For example:

  ```xml
  <content filter="MigXmlHelper.ExtractSingleFile(',','%system%')">
  ```

  and

  ```xml
  <content filter="MigXmlHelper.ExtractSingleFile(NULL,'%CSIDL_COMMON_FONTS%')">
  ```

- **ExtractMultipleFiles**

    The **ExtractMultipleFiles** function returns multiple patterns, one for each file that is found in the content of the given registry value. If the registry value is a **MULTI-SZ**, the **MULTI-SZ** separator is considered a separator by default. therefore, for **MULTI-SZ**, the **&lt;Separators&gt;** argument must be **NULL**.

    The returned patterns are the encoded locations for files that must exist on the source computer. If the specification is correct in the registry value but the file doesn't exist, it isn't included in the resulting list.

    Syntax: `ExtractMultipleFiles(Separators,PathHints)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*Separators*|Yes|A list of possible separators that might follow the file specification in this registry value name. For example, if the content is **"C:\Windows\Notepad.exe,-2"**, the separator is a comma. This parameter must be NULL when processing **MULTI-SZ** registry values.|
    |*PathHints*|Yes|A list of extra paths, separated by colons (`;`), where the function looks for a file matching the current content. For example, if the content is **"Notepad.exe"** and the path is the **%Path%** environment variable, the function finds **Notepad.exe** in `%windir%` and returns **"c:\Windows [Notepad.exe]"**. You can specify **NULL**.|

- **ExtractDirectory**

    The **ExtractDirectory** function returns a pattern that is the encoded location for a directory that must exist on the source computer. If the specification is correct in the registry value, but the directory doesn't exist, this function returns **NULL**. If it's processing a registry value that is a **MULTI-SZ**, only the first segment is processed.

    Syntax: `ExtractDirectory(Separators,LevelsToTrim,PatternSuffix)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*Separators*|No|A list of possible separators that might follow the file specification in this registry value name. For example, if the content is **"C:\Windows\Notepad.exe,-2"**, the separator is a comma. You must specify **NULL** when processing **MULTI-SZ** registry values.|
    |*LevelsToTrim*|Yes|The number of levels to delete from the end of the directory specification. Use this function to extract a root directory when you have a registry value that points inside that root directory in a known location.|
    |*PatternSuffix*|Yes|The pattern to add to the directory specification. For example, `* [*]`.|

  For example:

  ```xml
  <objectSet>
     <content filter='MigXmlHelper.ExtractDirectory (NULL, "1")'>
          <objectSet>
               <pattern type="Registry">%HklmWowSoftware%\Classes\Software\RealNetworks\Preferences\DT_Common []</pattern>
          </objectSet>
     </content>
  </objectSet>
  ```

## &lt;contentModify&gt;

The **&lt;contentModify&gt;** element modifies the content of an object before the object is written to the destination computer. For each **&lt;contentModify&gt;** element, there can be multiple **&lt;objectSet&gt;** elements. This element returns the new content of the object that is being processed.

- **Number of occurrences:** Unlimited

- **Parent elements:** [&lt;rules&gt;](#rules)

- **Required child elements:** [&lt;objectSet&gt;](#objectset)

- **Helper functions**: You can use the following [&lt;contentModify&gt; functions](#contentmodify-functions) with this element: **ConvertToDWORD**, **ConvertToString**, **ConvertToBinary**, **KeepExisting**, **OffsetValue**, **SetValueByTable**, **MergeMultiSzContent**, and **MergeDelimitedContent**.

Syntax:

```xml
<contentModify script="ScriptInvocation">
</contentModify>
```

|Setting|Required?|Value|
|--- |--- |--- |
|script|Yes|A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example, `MyScripts.AScript ("Arg1","Arg2").` <br/><br/>The script is called for each object that is enumerated by the object sets in the include rule. The filter script returns a Boolean value. If the return value is **TRUE**, the object is migrated. If it's **FALSE**, it isn't migrated.|

### &lt;contentModify&gt; functions

The following functions change the content of objects as they're migrated. These functions are called for every object that the parent **&lt;ObjectSet&gt;** element is enumerating.

- **ConvertToDWORD**

    The **ConvertToDWORD** function converts the content of registry values that are enumerated by the parent **&lt;ObjectSet&gt;** element to a DWORD. For example, **ConvertToDWORD** converts the string `"1"` to the DWORD `0x00000001`. If the conversion fails, then the value of **DefaultValueOnError** is applied.

    Syntax: `ConvertToDWORD(DefaultValueOnError)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*DefaultValueOnError*|No|The value that is written into the value name if the conversion fails. You can specify **NULL**, and `0` is written if the conversion fails.|

- **ConvertToString**

    The **ConvertToString** function converts the content of registry values that match the parent **&lt;ObjectSet&gt;** element to a string. For example, it converts the DWORD `0x00000001` to the string **"1"**. If the conversion fails, then the value of **DefaultValueOnError** is applied.

    Syntax: `ConvertToString(DefaultValueOnError)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*DefaultValueOnError*|No|The value that is written into the value name if the conversion fails. You can specify **NULL**, and `0` is written if the conversion fails.|

  For example:

  ```xml
  <contentModify script="MigXmlHelper.ConvertToString('1')">
     <objectSet>
          <pattern type="Registry">HKCU\Control Panel\Desktop [ScreenSaveUsePassword]</pattern>
     </objectSet>
  </contentModify>
  ```

- **ConvertToBinary**

    The **ConvertToBinary** function converts the content of registry values that match the parent **&lt;ObjectSet&gt;** element to a binary type.

    Syntax: `ConvertToBinary ()`

- **OffsetValue**

    The **OffsetValue** function adds or subtracts *Value* from the value of the migrated object, and then writes the result back into the registry value on the destination computer. For example, if the migrated object is a DWORD with a value of `14`, and the *Value* is **"-2"**, the registry value will be `12` on the destination computer.

    Syntax: `OffsetValue(Value)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*Value*|Yes|The string representation of a numeric value. It can be positive or negative. For example, `OffsetValue(2)`.|

- **SetValueByTable**

    The **SetValueByTable** function matches the value from the source computer to the source table. If the value is there, the equivalent value in the destination table is applied. If the value isn't there, or if the destination table has no equivalent value, the *DefaultValueOnError* is applied.

    Syntax: `SetValueByTable(SourceTable,DestinationTable,DefaultValueOnError)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*SourceTable*|Yes|A list of values separated by commas that are possible for the source registry values.|
    |*DestinationTable*|No|A list of translated values separated by commas.|
    |*DefaultValueOnError*|No|The value that is applied to the destination computer if either <ol><li>The value for the source computer doesn't match *SourceTable*</li><li>*DestinationTable* has no equivalent value.</li></ol><br>If **DefaultValueOnError** is **NULL**, the value isn't changed on the destination computer.|

- **KeepExisting**

    You can use the **KeepExisting** function when there are conflicts on the destination computer. This function keeps (not overwrites) the specified attributes for the object that is on the destination computer.

    Syntax: `KeepExisting("OptionString","OptionString","OptionString",…)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    | *OptionString* | Yes | *OptionString* can be **Security**, **TimeFields**, or **FileAttrib**:*Letter*. You can specify one of each type of *OptionStrings*. Don't specify multiple *OptionStrings* with the same value. If you do, the right-most option of that type is kept. For example, don't specify **("FileAttrib:H", "FileAttrib:R")** because only Read-only is evaluated. Instead specify **("FileAttrib:HR")** and both Hidden and Read-only attributes are kept on the destination computer. <ul><li>**Security**: Keeps the destination object's security descriptor if it exists.</li><li>**TimeFields**: Keeps the destination object's time stamps. This parameter is for files only.</li><li>**FileAttrib:&lt;Letter&gt;**: Keeps the destination object's attribute value, either **ON** or **OFF**, for the specified set of file attributes. This parameter is for files only. The following are case-insensitive, but USMT will ignore any values that are invalid, repeated, or if there's a space after **FileAttrib:**. You can specify any combination of the following attributes: <ul><li>**A** = Archive</li><li>**C** = Compressed</li><li>**E** = Encrypted</li><li>**H** = Hidden</li><li>**I** = Not Content Indexed</li><li>**O** = Offline</li><li>**R** = Read-Only</li><li>**S** = System</li><li>**T** = Temporary</li></ul></li></ul> |

- **MergeMultiSzContent**

    The **MergeMultiSzContent** function merges the **MULTI-SZ** content of the registry values that are enumerated by the parent **&lt;ObjectSet&gt;** element with the content of the equivalent registry values that already exist on the destination computer. `Instruction` and `String` either remove or add content to the resulting **MULTI-SZ**. Duplicate elements are removed.

    Syntax: `MergeMultiSzContent (Instruction,String,Instruction,String,…)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    | *Instruction* | Yes | Can be one of the following values: <ul><li>**Add**. Adds the corresponding String to the resulting MULTI-SZ if it isn't already there.</li><li>**Remove**. Removes the corresponding String from the resulting MULTI-SZ.</li></ul> |
    | *String* | Yes | The string to be added or removed. |

- **MergeDelimitedContent**

    The **MergeDelimitedContent** function merges the content of the registry values that are enumerated by the parent **&lt;ObjectSet&gt;** element with the content of the equivalent registry values that already exist on the destination computer. The content is considered a list of elements separated by one of the characters in the Delimiters parameter. Duplicate elements are removed.

    Syntax: `MergeDelimitedContent(Delimiters,Instruction,String,…)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    | *Delimiters* | Yes | A single character that is used to separate the content of the object that is being processed. The content is considered as a list of elements that is separated by the *Delimiters*. <br/>For example, `"."` separates the string based on a period. |
    | *Instruction* | Yes | Can be one of the following values: <ul><li>**Add**: Adds *String* to the resulting MULTI-SZ if it isn't already there.</li><li>**Remove**: Removes *String* from the resulting MULTI-SZ.</li></ul> |
    | *String* | Yes | The string to be added or removed. |

## &lt;description&gt;

The **&lt;description&gt;** element defines a description for the component but doesn't affect the migration.

- **Number of occurrences:** zero or one

- **Parent elements:** [&lt;component&gt;](#component)

- **Child elements:** none

Syntax:

```xml
<description>ComponentDescription</description>
```

|Setting|Required?|Value|
|--- |--- |--- |
|*ComponentDescription*|Yes|The description of the component.|

The following code sample shows how the &lt;description&gt; element defines the "My custom component" description:

```xml
<description>My custom component<description>
```

## &lt;destinationCleanup&gt;

The **&lt;destinationCleanup&gt;** element deletes objects, such as files and registry keys, from the destination computer before applying the objects from the source computer. This element is evaluated only when the **LoadState** tool is run on the destination computer. That is, this element is ignored by the **ScanState** tool.

> [!IMPORTANT]
> Use this option with extreme caution because it will delete objects from the destination computer.

For each **&lt;destinationCleanup&gt;** element, there can be multiple **&lt;objectSet&gt;** elements. A common use for this element is if there's a missing registry key on the source computer and you want to ensure that a component is migrated. In this case, you can delete all of the component's registry keys before migrating the source registry keys. Deleting all of the component's registry keys ensures that if there's a missing key on the source computer, it will also be missing on the destination computer.

- **Number of occurrences:** Unlimited

- **Parent elements:** [&lt;rules&gt;](#rules)

- **Child elements:** [&lt;objectSet&gt;](#objectset) (The destination computer deletes all child elements.)

Syntax:

```xml
<destinationCleanup filter=ScriptInvocation>
</destinationCleanup>
```

|Setting|Required?|Value|
|--- |--- |--- |
|filter|Yes|A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example, `MyScripts.AScript ("Arg1","Arg2")`. <br/><br/>The script is called for each object that is enumerated by the object sets in the include rule. The filter script returns a Boolean value. If the return value is **TRUE**, the object is migrated. If it's **FALSE**, it isn't migrated.|

For example:

```xml
<destinationCleanup>
   <objectSet>
      <pattern type="Registry">HKCU\Software\Lotus\123\99.0\DDE Preferences\* [*]</pattern>
      <pattern type="Registry">HKCU\Software\Lotus\123\99.0\Find Preferences\* [*]</pattern>
   </objectSet>
</destinationCleanup>
```

## &lt;detect&gt;

Although the **&lt;detect&gt;** element is still supported, Microsoft recommends no longer using the **&lt;detect&gt;** element because it might be deprecated in future versions of USMT. If the **&lt;detect&gt;** element is deprecated, it would require a rewrite of any scripts that use the **&lt;detect&gt;** element. Instead, Microsoft recommends using the **[&lt;detection&gt;](#detection)** element. The **&lt;detection&gt;** element allows for more clearly formulated complex Boolean statements

The **&lt;detect&gt;** element can be used to determine if the component is present on a system. If all child **&lt;detect&gt;** elements within a **&lt;detect&gt;** element resolve to **TRUE**, then the **&lt;detect&gt;** element resolves to **TRUE**. If any child **&lt;detect&gt;** elements resolve to **FALSE**, then their parent **&lt;detect&gt;** element resolves to **FALSE**. If there's no **&lt;detect&gt;** element section, then USMT assumes that the component is present.

For each **&lt;detect&gt;** element there can be multiple child **&lt;condition&gt;** or **&lt;objectSet&gt;** elements, which are logically joined by an **OR** operator. If at least one **&lt;condition&gt;** or **&lt;objectSet&gt;** element evaluates to **TRUE**, then the **&lt;detect&gt;** element evaluates to **TRUE**.

- **Number of occurrences:** unlimited

- **Parent elements:** [&lt;detects&gt;](#detects), [&lt;namedElements&gt;](#namedelements)

- **Required child elements:** [&lt;condition&gt;](#condition)

- **Optional child elements:** [&lt;objectSet&gt;](#objectset)

Syntax:

```xml
<detect name="ID" context="User|System|UserAndSystem">
</detect>
```

|Setting|Required?|Value|
|--- |--- |--- |
| name | Yes, when **&lt;detect&gt;** is a child to **&lt;namedElements&gt;** <br/>No, when **&lt;detect&gt;** is a child to &lt;detects&gt; | When *ID* is specified, any child elements aren't processed. Instead, any other **&lt;detect&gt;** elements with the same name that are declared within the **&lt;namedElements&gt;** element are processed. |
| context | No <br/>(default = UserAndSystem) | Defines the scope of this parameter, which is whether to process this component in the context of the specific user, across the entire operating system, or both. <br/>The largest possible scope is set by the component element. For example, if a **&lt;component&gt;** element has a context of **User**, and a **&lt;rules&gt;** element had a context of **UserAndSystem**, then the **&lt;rules&gt;** element would act as though it had a context of **User**. If the **&lt;rules&gt;** element had a context of **System**, it would act as though the **&lt;rules&gt;** element weren't there. <ul><li>**User**: Evaluates the variables for each user.</li><li>**System**: Evaluates the variables only once for the system.</li><li>**UserAndSystem**: Evaluates the variables for the entire operating system and each user.</li></ul> |

For examples, see the examples for [&lt;detection&gt;](#detection).

## &lt;detects&gt;

Although the **&lt;detects&gt;** element is still supported, Microsoft recommends no longer using the **&lt;detects&gt;** element because it might be deprecated in future versions of USMT. If the **&lt;detects&gt;** element is deprecated, it would require a rewrite of any scripts that use the **&lt;detects&gt;** element. Instead, Microsoft recommends using the **[&lt;detection&gt;](#detection)** element if the parent element is **&lt;role&gt;** or **&lt;namedElements&gt;**, or use the **[&lt;conditions&gt;](#conditions)** element if the parent element is **&lt;rules&gt;**. The **&lt;detection&gt;** element allows for more clearly formulated complex Boolean statements and the **&lt;conditions&gt;** element allows for formulation of complex Boolean statements.

The **&lt;detects&gt;** element is a container for one or more **&lt;detect&gt;** elements. If all of the child **&lt;detect&gt;** elements within a **&lt;detects&gt;** element resolve to **TRUE**, then **&lt;detects&gt;** resolves to **TRUE**. If any of the child **&lt;detect&gt;** elements resolve to **FALSE**, then **&lt;detects&gt;** resolves to **FALSE**. If you don't want to write the **&lt;detects&gt;** elements within a component, then you can create the **&lt;detects&gt;** element under the **&lt;namedElements&gt;** element, and then refer to it. If there's no **&lt;detects&gt;** element section, then USMT assumes that the component is present. The results from each **&lt;detects&gt;** element are joined together by the **OR** operator to form the rule used to detect the parent element.

Syntax:

```xml
<detects name="ID" context="User|System|UserAndSystem">
</detects>
```

- **Number of occurrences:** Unlimited.

- **Parent elements:** [&lt;role&gt;](#role), [&lt;rules&gt;](#rules), [&lt;namedElements&gt;](#namedelements)

- **Required child elements:** [&lt;detect&gt;](#detect)

|Setting|Required?|Value|
|--- |--- |--- |
| name | Yes, when &lt;detects&gt; is a child to **&lt;namedElements&gt;** <br/>No, when &lt;detects&gt; is a child to **&lt;role&gt;** or **&lt;rules&gt;** | When *ID* is specified, no child **&lt;detect&gt;** elements are processed. Instead, any other **&lt;detects&gt;** elements with the same name that are declared within the **&lt;namedElements&gt;** element are processed. |
| context | No <br/>(default = UserAndSystem) | Defines the scope of this parameter: whether to process this component in the context of the specific user, across the entire operating system, or both. <br/>The largest possible scope is set by the **&lt;component element&gt;**. For example, if a **&lt;component&gt;** element has a context of **User** and a **&lt;rules&gt;** element had a context of **UserAndSystem**, then the **&lt;rules&gt;** element would act as though it had a context of **User**. If the **&lt;rules&gt;** element had a context of **System**, it would act as though the **&lt;rules&gt;** element weren't there. <ul><li>**User**: Evaluates the variables for each user.</li><li>**System**: Evaluates the variables only once for the system.</li><li>**UserAndSystem**: Evaluates the variables for the entire operating system and each user.</li></ul> <br/>The context parameter is ignored for **&lt;detects&gt;** elements that are inside **&lt;rules&gt;** elements. |

The following example is from the `MigApp.xml` file.

```xml
<detects>
   <detect>
      <condition>MigXmlHelper.DoesFileVersionMatch("%Lotus123InstPath%\123w.exe","ProductVersion","9.*")</condition>
   </detect>
   <detect>
      <condition>MigXmlHelper.DoesFileVersionMatch("%SmartSuiteInstPath%\smartctr.exe","ProductVersion","99.*")</condition>
   </detect>
</detects>
```

## &lt;detection&gt;

The  **&lt;detection&gt;** element is a container for one **&lt;conditions&gt;** element. The result of the child **&lt;condition&gt;** elements, located underneath the **&lt;conditions&gt;** element, determines the result of this element. For example, if all of the child **&lt;conditions&gt;** elements within the  **&lt;detection&gt;** element resolve to **TRUE**, then the  **&lt;detection&gt;** element resolves to **TRUE**. If any of the child **&lt;conditions&gt;** elements resolve to **FALSE**, then the  **&lt;detection&gt;** element resolves to **FALSE**.

In addition, the results from each  **&lt;detection&gt;** section within the **&lt;role&gt;** element are joined together by the **OR** operator to form the detection rule of the parent element. That is, if one of the  **&lt;detection&gt;** sections resolves to **TRUE**, then the **&lt;role&gt;** element is processed. Otherwise, the **&lt;role&gt;** element isn't processed.

Use the  **&lt;detection&gt;** element under the **&lt;namedElements&gt;** element if you don't want to write it within a component. Then include a matching  **&lt;detection&gt;** section under the **&lt;role&gt;** element to control whether the component is migrated. If there isn't a  **&lt;detection&gt;** section for a component, then USMT assumes that the component is present.

- **Number of occurrences:** Unlimited.

- **Parent elements:** [&lt;role&gt;](#role), [&lt;namedElements&gt;](#namedelements)

- **Child elements:** [&lt;conditions&gt;](#conditions)

Syntax:

```xml
<detection name="ID" context="User|System|UserAndSystem">
</detection>
```

|Setting|Required?|Value|
|--- |--- |--- |
| name | <ul><li>Yes, when **&lt;detection&gt;** is declared under **&lt;namedElements&gt;**</li><li>Optional, when declared under **&lt;role&gt;**</li></ul> | If declared, the content of the  **&lt;detection&gt;** element is ignored and the content of the  **&lt;detection&gt;** element with the same name that is declared in the **&lt;namedElements&gt;** element is evaluated. |
| context | No, default = UserAndSystem | Defines the scope of this parameter: whether to process this component in the context of the specific user, across the entire operating system, or both. <ul><li>**User**: Evaluates the component for each user.</li><li>**System**: Evaluates the component only once for the system.</li><li>**UserAndSystem**: Evaluates the component for the entire operating system and each user.</li></ul> |

For example:

```xml
<detection name="AdobePhotoshopCS">
   <conditions>
      <condition>MigXmlHelper.DoesObjectExist("Registry","HKCU\Software\Adobe\Photoshop\8.0")</condition>
      <condition>MigXmlHelper.DoesFileVersionMatch("%PhotoshopSuite8Path%\Photoshop.exe","FileVersion","8.*")</condition>
   </conditions>
</detection>
```

and

```xml
<role role="Settings">
   <detection>
      <conditions>
         <condition>MigXmlHelper.DoesFileVersionMatch("%QuickTime5Exe%","ProductVersion","QuickTime 5.*")</condition>
         <condition>MigXmlHelper.DoesFileVersionMatch("%QuickTime5Exe%","ProductVersion","QuickTime 6.*")</condition>
      </conditions>
   </detection>
```

## &lt;displayName&gt;

The **&lt;displayName&gt;** element is a required field within each **&lt;component&gt;** element.

- **Number of occurrences:** once for each component

- **Parent elements:** [&lt;component&gt;](#component)

- **Child elements:** none

Syntax:

```xml
<displayName _locID="ID">ComponentName</displayName>
```

|Setting|Required?|Value|
|--- |--- |--- |
|locID|No|This parameter is for internal USMT use. Don't use this parameter.|
|*ComponentName*|Yes|The name for the component.|

For example:

```xml
<displayName>Command Prompt settings</displayName>
```

## &lt;environment&gt;

The **&lt;environment&gt;** element is a container for **&lt;variable&gt;** elements in which you can define variables to use in your .xml file. All environment variables defined this way are private. That is, they're available only for their child components and the component in which they were defined. For two example scenarios, see [Examples](#examples).

- **Number of occurrences:** unlimited

- **Parent elements:** [&lt;role&gt;](#role), [&lt;component&gt;](#component), [&lt;namedElements&gt;](#namedelements)

- **Required child elements:** [&lt;variable&gt;](#variable)

- **Optional child elements:** [&lt;conditions&gt;](#conditions)

Syntax:

```xml
<environment name="ID" context="User|System|UserAndSystem">
</environment>
```

|Setting|Required?|Value|
|--- |--- |--- |
| name | Yes, when **&lt;environment&gt;** is a child of **&lt;namedElements&gt;** <br/>No, when **&lt;environment&gt;** is a child of **&lt;role&gt;** or **&lt;component&gt;** | When declared as a child of the **&lt;role&gt;** or **&lt;component&gt;** elements, if *ID* is declared, USMT ignores the content of the **&lt;environment&gt;** element and the content of the **&lt;environment&gt;** element with the same name declared in the **&lt;namedElements&gt;** element is processed. |
| context | No <br/>(default = UserAndSystem) | Defines the scope of this parameter: whether to process this component in the context of the specific user, across the entire operating system, or both. <br/>The largest possible scope is set by the **&lt;component&gt;** element. For example, if a **&lt;component&gt;** element has a context of **User** and a **&lt;rules&gt;** element had a context of **UserAndSystem**, then the **&lt;rules&gt;** element would act as though it had a context of **User**. If the **&lt;rules&gt;** element had a context of **System**, it would act as though **&lt;rules&gt;** weren't there. <ul><li>**User**: Evaluates the variables for each user.</li><li>**System**: Evaluates the variables only once for the system.</li><li>**UserAndSystem**: Evaluates the variables for the entire operating system and each user.</li></ul> |

## Examples

### Example scenario 1

In this scenario, you want to generate the location of objects at run time depending on the configuration of the destination computer. For example, if an application writes data in the directory where the application is installed, and users can install the application anywhere on the computer. If the application writes a registry value `hklm\software\companyname\install [path\]` and then updates this value with the location where the application is installed, then the only way for you to migrate the required data correctly is to define an environment variable. For example:

```xml
<environment>
   <variable name="INSTALLPATH">
      <script>MigXmlHelper.GetStringContent("Registry","\software\companyname\install [path]")</script>
   </variable>
</environment>
```

Then you can use an include rule as follows. You can use any of the [&lt;script&gt; functions](#script-functions) to perform similar tasks.

```xml
<include>
   <objectSet>
      <pattern type="File">%INSTALLPATH%\ [*.xyz]</pattern>
   </objectSet>
</include>
```

Second, you can also filter registry values that contain data that you need. The following example extracts the first string (before the separator "`,`") in the value of the registry `Hklm\software\companyname\application\ [Path\]`.

```xml
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

### Example scenario 2

In this scenario, you want to migrate five files named `File1.txt`, `File2.txt`, and so on, from `%SYSTEMDRIVE%\data\userdata\dir1\dir2\`. To migrate these files, you must have the following **&lt;include&gt;** rule in an .xml file:

```xml
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

```xml
<environment>
   <variable name="DATAPATH">
      <text>%SYSTEMDRIVE%\data\userdata\dir1\dir2 </text>
      </variable>
</environment>
```

Then, you can specify the variable in an **&lt;include&gt;** rule as follows:

```xml
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

## &lt;exclude&gt;

The **&lt;exclude&gt;** element determines what objects aren't migrated, unless there's a more specific **&lt;include&gt;** element that migrates an object. If there's an **&lt;include&gt;** and **&lt;exclude&gt;** element for the same object, the object is included. For each **&lt;exclude&gt;** element, there can be multiple child **&lt;objectSet&gt;** elements.

- **Number of occurrences:** Unlimited

- **Parent elements:** [&lt;rules&gt;](#rules)

- **Child elements:** [&lt;objectSet&gt;](#objectset)

- **Helper functions:** You can use the following [&lt;exclude&gt; filter functions](#include-and-exclude-filter-functions) with this element: `CompareStringContent`, `IgnoreIrrelevantLinks`, `AnswerNo`, `NeverRestore`, and `SameRegContent`.

Syntax:

```xml
<exclude filter="ScriptInvocation">
</exclude>
```

|Setting|Required?|Value|
|--- |--- |--- |
|filter|No <br/>(default = No)|A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example, `MyScripts.AScript ("Arg1","Arg2")`. <br/><br/>The script is called for each object that is enumerated by the object sets in the include rule. The filter script returns a Boolean value. If the return value is **TRUE**, the object is migrated. If it's **FALSE**, it isn't migrated.|

For example, from the `MigUser.xml` file:

```xml
<exclude>
   <objectSet>
      <pattern type="File">%CSIDL_MYMUSIC%\* [*]</pattern>
      <pattern type="File">%CSIDL_MYPICTURES%\* [*]</pattern>
      <pattern type="File">%CSIDL_MYVIDEO%\* [*]</pattern>
   </objectSet>
</exclude>
```

## &lt;excludeAttributes&gt;

You can use the **&lt;excludeAttributes&gt;** element to determine which parameters associated with an object aren't migrated. If there are conflicts between the **&lt;includeAttributes&gt;** and **&lt;excludeAttributes&gt;** elements, the most specific pattern determines the patterns that aren't migrated. If an object doesn't have an **&lt;includeAttributes&gt;** or **&lt;excludeAttributes&gt;** element, then all of its parameters are migrated.

- **Number of occurrences:** Unlimited

- **Parent elements:** [&lt;rules&gt;](#rules)

- **Child elements:** [&lt;objectSet&gt;](#objectset)

Syntax:

```xml
<excludeAttributes attributes="Security|TimeFields|Security,TimeFields">
</excludeAttributes>
```

|Setting|Required?|Value|
|--- |--- |--- |
| attributes | Yes | Specifies the attributes to be excluded. You can specify one of the following, or both separated by quotes; for example, `"Security","TimeFields"`: <ul><li>Security can be one of Owner, Group, DACL, or SACL.</li><li>TimeFields can be one of CreationTime, LastAccessTime and LastWrittenTime</li></ul> |

Example:

```xml
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
<!-- Logoff the user after LoadState successfully completed. -->
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

## &lt;extensions&gt;

The &lt;extensions&gt; element is a container for one or more &lt;extension&gt; elements.

- **Number of occurrences:** zero or one

- **Parent elements:** [&lt;component&gt;](#component)

- **Required child elements:** [&lt;extension&gt;](#extension)

Syntax:

```xml
<extensions>
</extensions>
```

## &lt;extension&gt;

You can use the &lt;extension&gt; element to specify documents of a specific extension.

- **Number of occurrences:** unlimited

- **Parent elements:** [&lt;extensions&gt;](#extensions)

- **Child elements:** none

Syntax:

```xml
<extension>FilenameExtension</extension>
```

|Setting|Required?|Value|
|--- |--- |--- |
|*FilenameExtension*|Yes|A file name extension.|

For example, if you want to migrate all \*.doc files from the source computer, specifying the following code under the **&lt;component&gt;** element:

```xml
<extensions> 
        <extension>doc</extension> 
<extensions> 
```

is the same as specifying the following code below the **&lt;rules&gt;** element:

```xml
<include> 
        <objectSet> 
                <script>MigXmlHelper.GenerateDrivePatterns ("* [*.doc]", "Fixed")</script> 
        </objectSet> 
</include>
```

For another example of how to use the &lt;extension&gt; element, see the example for [&lt;excludeAttributes&gt;](#excludeattributes).

## &lt;externalProcess&gt;

You can use the &lt;externalProcess&gt; element to run a command line during the migration process. For example, you might want to run a command after the **LoadState** process completes.

- **Number of occurrences:** Unlimited

- **Parent elements:** [&lt;rules&gt;](#rules)

- **Required child elements:** [&lt;commandLine&gt;](#commandline)

Syntax:

```xml
<externalProcess when="pre-scan|scan-success|post-scan|pre-apply|apply-success|post-apply">
</externalProcess>
```

|Setting|Required?|Value|
|--- |--- |--- |
| when | Yes | Indicates when the command line should be run. This value can be one of the following values: <ul><li>**pre-scan** before the scanning process begins.</li><li>**scan-success** after the scanning process finishes successfully.</li><li>**post-scan** after the scanning process finished, whether it was successful or not.</li><li>**pre-apply** before the apply process begins.</li><li>**apply-success** after the apply process finishes successfully.</li><li>**post-apply** after the apply process finished, whether it was successful or not.</li></ul> |

For an example of how to use the &lt;externalProcess&gt; element, see the example for [&lt;excludeAttributes&gt;](#excludeattributes).

## &lt;icon&gt;

This element is an internal USMT element. Don't use this element.

## &lt;include&gt;

The **&lt;include&gt;** element determines what to migrate, unless there's a more specific [&lt;exclude&gt;](#exclude) rule. You can specify a script to be more specific to extend the definition of what you want to collect. For each **&lt;include&gt;** element, there can be multiple **&lt;objectSet&gt;** elements.

- **Number of occurrences:** Unlimited

- **Parent elements:** [&lt;rules&gt;](#rules)

- **Required child element:** [&lt;objectSet&gt;](#objectset)

- **Helper functions:** You can use the following [&lt;include&gt; filter functions](#include-and-exclude-filter-functions) with this element: `CompareStringContent`, `IgnoreIrrelevantLinks`, `AnswerNo`, and `NeverRestore`.

Syntax:

```xml
<include filter="ScriptInvocation">
</include>
```

|Setting|Required?|Value|
|--- |--- |--- |
| filter | No. <br/>If this parameter isn't specified, then all patterns that are inside the child **&lt;objectSet&gt;** element are processed. | A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example, `MyScripts.AScript ("Arg1","Arg2")`. <br/>The script is called for each object that is enumerated by the object sets in the **&lt;include&gt;** rule. The filter script returns a Boolean value. If the return value is **TRUE**, the object is migrated. If it's **FALSE**, it isn't migrated. |

The following example is from the MigUser.xml file:

```xml
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

### &lt;include&gt; and **&lt;exclude&gt;** filter functions

The following functions return a Boolean value. You can use them to migrate certain objects based on when certain conditions are met.

- **AnswerNo**

    This filter always returns **FALSE**.

    Syntax: `AnswerNo ()`

- **CompareStringContent**

    Syntax: `CompareStringContent("StringContent","CompareType")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    | *StringContent* | Yes | The string to check against. |
    | *CompareType* | Yes | A string. Use one of the following values: <ul><li>**Equal** (case insensitive). The function returns **TRUE** if the string representation of the current object that is processed by the migration engine is identical to `StringContent`.</li><li>**NULL** **or any other value**. The function returns **TRUE** if the string representation of the current object that is processed by the migration engine doesn't match `StringContent`.</li></ul> |

- **IgnoreIrrelevantLinks**

    This filter screens out the .lnk files that point to an object that isn't valid on the destination computer. The screening takes place on the destination computer, so all .lnk files are saved to the store during **ScanState**. Then they're screened out when you run the **LoadState** tool.

    Syntax: `IgnoreIrrelevantLinks ()`

    For example:

    ```xml
    <include filter='MigXmlHelper.IgnoreIrrelevantLinks()'>
         <objectSet>
              <pattern type="File">%CSIDL_COMMON_VIDEO%\* [*]</pattern>
         </objectSet>
    </include>
    ```

- **NeverRestore**

    You can use this function to collect the specified objects from the source computer but then not migrate the objects to the destination computer. When run with the **ScanState** tool, this function evaluates to **TRUE**. When run with the **LoadState** tool, this function evaluates to **FALSE**. This function might be used to check an object's value on the destination computer but there's no intention to migrate the object to the destination.

    Syntax: `NeverRestore()`

    In the following example, HKCU\\Control Panel\\International \[Locale\] is included in the store, but it isn't migrated to the destination computer:

    ```xml
    <include filter="MigXmlHelper.NeverRestore()">
       <objectSet>
          <pattern type="Registry">HKCU\Control Panel\International [Locale]</pattern>
       </objectSet>
    </include>
    ```

## &lt;includeAttributes&gt;

You can use the **&lt;includeAttributes&gt;** element to determine whether certain parameters associated with an object are migrated along with the object itself. If there are conflicts between the **&lt;includeAttributes&gt;** and **&lt;excludeAttributes&gt;** elements, the most specific pattern determines which parameters are migrated. If an object doesn't have an **&lt;includeAttributes&gt;** or **&lt;excludeAttributes&gt;** element, then all of its parameters are migrated.

- **Number of occurrences:** unlimited

- **Parent elements:** [&lt;rules&gt;](#rules)

- **Child elements:** [&lt;objectSet&gt;](#objectset)

Syntax:

```xml
<includeAttributes attributes="Security|TimeFields|Security,TimeFields">
</includeAttributes>
```

|Setting|Required?|Value|
|--- |--- |--- |
| attributes | Yes | Specifies the attributes to be included with a migrated object. You can specify one of the following, or both separated by quotes; for example, `"Security","TimeFields"`: <ul><li>Security can be one of the following values: <ul><li>**Owner**: The owner of the object (SID).</li><li>**Group**: The primary group for the object (SID).</li><li>**DACL** (discretionary access control list): An access control list that is controlled by the owner of an object and that specifies the access particular users or groups can have to the object.</li><li>**SACL** (system access control list): An ACL that controls the generation of audit messages for attempts to access a securable object. The ability to get or set an object&#39;s SACL is controlled by a privilege typically held only by system administrators.</li></ul></li><li>TimeFields can be one of the following values: <ul><li>**CreationTime**: Specifies when the file or directory was created.</li><li>**LastAccessTime**: Specifies when the file is last read from, written to, or for executable files, run.</li><li>**LastWrittenTime**: Specifies when the file is last written to, truncated, or overwritten.</li></ul></li></ul> |

For an example of how to use the **&lt;includeAttributes&gt;** element, see the example for [&lt;excludeAttributes&gt;](#excludeattributes).

## &lt;library&gt;

This element is an internal USMT element. Don't use this element.

## &lt;location&gt;

The **&lt;location&gt;** element defines the location of the **&lt;object&gt;** element.

- **Number of occurrences:** once for each **&lt;object&gt;**

- **Parent elements:** [&lt;object&gt;](#object)

- **Child elements:** [&lt;script&gt;](#script)

Syntax:

```xml
<location type="typeID">ObjectLocation</location>
```

|Setting|Required?|Value|
|--- |--- |--- |
|type|Yes|*typeID* can be Registry or File.|
|*ObjectLocation*|Yes|The location of the object.|

The following example is from the `MigApp.xml` file:

```xml
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

## &lt;locationModify&gt;

You can use the **&lt;locationModify&gt;** element to change the location and name of an object before the object is migrated to the destination computer. The **&lt;locationModify&gt;** element is processed only when the **LoadState** tool is run on the destination computer. In other words, this element is ignored by the **ScanState** tool. The **&lt;locationModify&gt;** element creates the appropriate folder on the destination computer if it doesn't already exist.

**Number of occurrences:** Unlimited

- **Parent elements:** [&lt;rules&gt;](#rules)

- **Required child element:** [&lt;objectSet&gt;](#objectset)

- **Helper functions:** You can use the following [&lt;locationModify&gt; functions](#locationmodify-functions) with this element: `ExactMove`, `RelativeMove`, and `Move`.

Syntax:

```xml
<locationModify script="ScriptInvocation">
</locationModify>
```

|Setting|Required?|Value|
|--- |--- |--- |
|script|Yes|A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example, `MyScripts.AScript ("Arg1","Arg2")`. <br/><br/>The script is called for each object that is enumerated by the object sets in the include rule. The filter script returns a Boolean value. If the return value is **TRUE**, the object is migrated. If it's **FALSE**, it isn't migrated.|

The following example is from the `MigApp.xml` file:

```xml
<locationModify script="MigXmlHelper.RelativeMove('%CSIDL_APPDATA%\Microsoft\Office','%CSIDL_APPDATA%')">
   <objectSet>
      <pattern type="File">%CSIDL_APPDATA%\Microsoft\Office\ [Access10.pip]</pattern>
   </objectSet>
</locationModify>
```

### &lt;locationModify&gt; functions

The following functions change the location of objects as they're migrated when using the **&lt;locationModify&gt;** element. These functions are called for every object that the parent **&lt;objectSet&gt;** element is enumerating. The **&lt;locationModify&gt;** element creates the appropriate folder on the destination computer if it doesn't already exist.

- **ExactMove**

  The ExactMove function moves all of the objects that are matched by the parent **&lt;objectSet&gt;** element into the given *ObjectEncodedLocation*. You can use this function when you want to move a single file to a different location on the destination computer. If the destination location is a node, all of the matching source objects are written to the node without any subdirectories. If the destination location is a leaf, the migration engine migrates all of the matching source objects to the same location. If a collision occurs, the normal collision algorithms apply.

  Syntax: `ExactMove(ObjectEncodedLocation)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*ObjectEncodedLocation*|Yes|The destination [location](#specifying-locations) for all of the source objects.|

  For example:

  ```xml
  <locationModify script="MigXmlHelper.ExactMove('HKCU\Keyboard Layout\Toggle [HotKey]')">
     <objectSet>
          <pattern type="Registry">HKCU\Keyboard Layout\Toggle []</pattern>
     </objectSet>
  </locationModify>
  ```

- **Move**

    The Move function moves objects to a different location on the destination computer. In addition, this function creates subdirectories that were above the longest CSIDL in the source object name.

    Syntax: `Move(DestinationRoot)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*DestinationRoot*|Yes|The location where the source objects are moved. If needed, this function creates any subdirectories that were above the longest CSIDL in the source object name.|

- **RelativeMove**

    You can use the RelativeMove function to collect and move data. Environment variables can be used in source and destination roots, but they might be defined differently on the source and destination computers.

    Syntax: `RelativeMove(SourceRoot,DestinationRoot)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*SourceRoot*|Yes|The location where the objects are moved from. Any source objects that are enumerated by the parent **&lt;objectSet&gt;** element that aren't in this location aren't moved.|
    |*DestinationRoot*|Yes|The location where the source objects are moved to on the destination computer. If needed, this function creates any subdirectories that were above *SourceRoot*.|

For example:

```xml
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

## &lt;\_locDefinition&gt;

This element is an internal USMT element. Don't use this element.

## &lt;manufacturer&gt;

The **&lt;manufacturer&gt;** element defines the manufacturer for the component, but doesn't affect the migration.

- **Number of occurrences:** zero or one

- **Parent elements:** [&lt;component&gt;](#component)

- **Child elements:** none

Syntax:

```xml
<manufacturer>Name</manufacturer>
```

|Setting|Required?|Value|
|--- |--- |--- |
|*Name*|Yes|The name of the manufacturer for the component.|

## &lt;merge&gt;

The **&lt;merge&gt;** element determines what happens when a collision occurs. A collision is when an object that is migrated is already present on the destination computer. If you don't specify this element, the default behavior for the registry is for the source object to overwrite the destination object. The default behavior for files is for the source file to be renamed to `OriginalFileName(1).OriginalExtension`. This element specifies only what should be done when a collision occurs. It doesn't include objects. Therefore, for your objects to migrate, you must specify **&lt;include&gt;** rules along with the **&lt;merge&gt;** element. When an object is processed and a collision is detected, USMT selects the most specific merge rule. It then applies the rule to resolve the conflict. For example, if you have a **&lt;merge&gt;** rule `C:\* [*]` set to **&lt;sourcePriority&gt;** and a **&lt;merge&gt;** rule `C:\subfolder\* [*]` set to **&lt;destinationPriority&gt;**, then USMT would use the **&lt;destinationPriority&gt;** rule because it's the more specific.

For an example of this element, see [Conflicts and precedence](usmt-conflicts-and-precedence.md).

- **Number of occurrences:** Unlimited

- **Parent elements:** [&lt;rules&gt;](#rules)

- **Required child element:** [&lt;objectSet&gt;](#objectset)

- **Helper functions:** You can use the following [&lt;merge&gt; functions](#merge-functions) with this element: `SourcePriority`, `DestinationPriority`, `FindFilePlaceByPattern`, `LeafPattern`, `NewestVersion`, `HigherValue()`, and `LowerValue()`.

Syntax:

```xml
<merge script="ScriptInvocation">
</merge>
```

|Setting|Required?|Value|
|--- |--- |--- |
|script|Yes|A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example, `MyScripts.AScript ("Arg1","Arg2")`. <br/><br/>The script is called for each object that is enumerated by the object sets in the **&lt;include&gt;** rule. The filter script returns a Boolean value. If the return value is **TRUE**, the object is migrated. If it's **FALSE**, it isn't migrated.|

The following example is from the MigUser.xml file:

```xml
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

### &lt;merge&gt; functions

These functions control how collisions are resolved.

- **DestinationPriority**

    Specifies to keep the object that is on the destination computer and not migrate the object from the source computer.

    For example:

    ```xml
    <merge script="MigXmlHelper.DestinationPriority()">
         <objectSet>
              <pattern type="Registry">HKCU\Software\Microsoft\Office\9.0\PhotoDraw\ [MyPictures]</pattern>
              <pattern type="Registry">HKCU\Software\Microsoft\Office\9.0\PhotoDraw\Settings\ [PicturesPath]</pattern>
              <pattern type="Registry">HKCU\Software\Microsoft\Office\9.0\PhotoDraw\Settings\ [AdditionalPlugInPath]</pattern>
         </objectSet>
    </merge>
    ```

- **FindFilePlaceByPattern**

    The FindFilePlaceByPattern function saves files with an incrementing counter when a collision occurs. It's a string that contains one of each construct: **&lt;F&gt;**, **&lt;E&gt;**, **&lt;N&gt;** in any order.

    Syntax: `FindFilePlaceByPattern(FilePattern)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    | *FilePattern* | Yes | <ul><li>**&lt;F&gt;** is replaced by the original file name.</li><li>**&lt;N&gt;** is replaced by an incrementing counter until there's no collision with the objects on the destination computer.</li><li>**&lt;E&gt;** is replaced by the original file name extension.</li></ul> <br/>For example, `<F> (<N>).<E>` changes the source file `MyDocument.doc` into `MyDocument (1).doc` on the destination computer. |

- **NewestVersion**

    The NewestVersion function resolves conflicts on the destination computer based on the version of the file.

    Syntax: `NewestVersion(VersionTag)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*VersionTag*|Yes|The version field that is checked. This field can be `FileVersion` or `ProductVersion`. The file with the highest *VersionTag* version determines which conflicts are resolved based on the file's version. For example, if `Myfile.txt` contains FileVersion 1 and the same file on the destination computer contains FileVersion 2, the file on destination remains.|

- **HigherValue()**

    You can use this function for merging registry values. The registry values are evaluated as numeric values, and the one with the higher value determines which registry values are merged.

- **LowerValue()**

    You can use this function for merging registry values. The registry values are evaluated as numeric values and the one with the lower value determines which registry values are merged.

- **SourcePriority**

    Specifies to migrate the object from the source computer, and to delete the object that is on the destination computer.

    For example:

    ```xml
    <merge script="MigXmlHelper.SourcePriority()">
     <objectSet>
       <pattern type="Registry">%HklmWowSoftware%\Microsoft\Office\12.0\Common\Migration\Publisher [UpgradeVersion]</pattern>
       <pattern type="Registry">%HklmWowSoftware%\Microsoft\Office\11.0\Common\Migration\Publisher [UpgradeVersion]</pattern>
       <pattern type="Registry">%HklmWowSoftware%\Microsoft\Office\10.0\Common\Migration\Publisher [UpgradeVersion]</pattern>
     </objectSet>
    </merge>
    ```

## &lt;migration&gt;

The **&lt;migration&gt;** element is the single root element of a migration .xml file and is required. Each .xml file must have a unique migration urlid. The urlid of each file that you specify on the command line must be unique. The urlids must be unique because USMT uses the urlid to define the components within the file.

- **Number of occurrences:** one

- **Parent elements:** none

- **Required child elements:** [&lt;component&gt;](#component)

- **Optional child elements:** [&lt;library&gt;](#library), [&lt;namedElements&gt;](#namedelements)

Syntax:

```xml
<migration urlid="*UrlID/*Name">
</migration>
```

|Setting|Required?|Value|
|--- |--- |--- |
|urlid|Yes|*UrlID* is a string identifier that uniquely identifies this .xml file. This parameter must be a no-colon-name as defined by the XML Namespaces specification. Each migration .xml file must have a unique urlid. If two migration .xml files have the same urlid, the second .xml file that is specified on the command line isn't processed. For more information about XML Namespaces, see [Use XML Namespaces](/previous-versions/windows/desktop/ms754539(v=vs.85)).|
|Name|No|Although not required, it's good practice to use the name of the .xml file.|

The following example is from the `MigApp.xml` file:

```xml
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/migapp">
</migration>
```

## MigXMLHelper.FileProperties

This filter helper function can be used to filter the migration of files based on file size and date attributes.

|Helper Function|MigXMLHelper.FileProperties (property, operator, valueToCompare)|
|--- |--- |
|Property|filesize, dateCreated, dateModified, dateAccessed|
|Operator|range, neq, lte, lt, eq, gte, gt|
|valueToCompare|The value that is being compared. For example: <br/>Date: "2008/05/15-2005/05/17", "2008/05/15" <br/>Size: A numeral with B, KB, MB, or GB at the end. "5GB", "1KB-1MB"|

```xml
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

## &lt;namedElements&gt;

You can use the **&lt;namedElements&gt;** element to define named elements. You can use these elements in any component throughout your .xml file. For an example of how to use this element, see the `MigApp.xml` file.

Syntax:

```xml
<namedElements>
</namedElements>
```

- **Number of occurrences:** Unlimited

- **Parent elements:** [&lt;migration&gt;](#migration)

- **Child elements:** [&lt;environment&gt;](#environment), [&lt;rules&gt;](#rules), [&lt;conditions&gt;](#conditions), [&lt;detection&gt;](#detection), [&lt;detects&gt;](#detects), [&lt;detect&gt;](#detect)

For an example of this element, see the `MigApp.xml` file.

## &lt;object&gt;

The **&lt;object&gt;** element represents a file or registry key.

- **Number of occurrences:** Unlimited

- **Parent elements:** [&lt;addObjects&gt;](#addobjects)

- **Required child elements:** [&lt;location&gt;](#location), [&lt;attributes&gt;](#attributes)

- **Optional child elements:** [&lt;bytes&gt;](#bytes)

Syntax:

```xml
<object>
</object>
```

The following example is from the `MigApp.xml` file:

```xml
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

## &lt;objectSet&gt;

The **&lt;objectSet&gt;** element contains a list of object patterns; for example, file paths, registry locations, and so on. Any child **&lt;conditions&gt;** elements are evaluated first. If all child **&lt;conditions&gt;** elements return **FALSE**, the **&lt;objectSet&gt;** element evaluates to an empty set. For each parent element, there can be only multiple **&lt;objectSet&gt;** elements.

- **Number of occurrences:** Unlimited

- **Parent elements:** [&lt;variable&gt;](#variable), [&lt;content&gt;](#content), [&lt;include&gt;](#include), [&lt;exclude&gt;](#exclude), [&lt;merge&gt;](#merge), [&lt;contentModify&gt;](#contentmodify), [&lt;locationModify&gt;](#locationmodify), [&lt;destinationCleanup&gt;](#destinationcleanup), [&lt;includeAttributes&gt;](#includeattributes), [&lt;excludeAttributes&gt;](#excludeattributes), [&lt;unconditionalExclude&gt;](#unconditionalexclude), [&lt;detect&gt;](#detect)

- **Required child elements:** either [&lt;script&gt;](#script) or [&lt;pattern&gt;](#pattern)

- **Optional child elements:** [&lt;content&gt;](#content), [&lt;conditions&gt;](#conditions), [&lt;condition&gt;](#condition)

Syntax:

```xml
<objectSet>
</objectSet>
```

The following example is from the MigUser.xml file:

```xml
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

## &lt;path&gt;

This element is an internal USMT element. Don't use this element.

## &lt;paths&gt;

This element is an internal USMT element. Don't use this element.

## &lt;pattern&gt;

You can use this element to specify multiple objects. You can specify multiple **&lt;pattern&gt;** elements for each **&lt;objectSet&gt;** element and they're combined. If you're specifying files, you might want to use `GenerateDrivePatterns` with **&lt;script&gt;** instead. `GenerateDrivePatterns` is basically the same as a **&lt;pattern&gt;** rule, without the drive letter specification. For example, the following two lines of code are similar:

```xml
<pattern type="File">C:\Folder\* [Sample.doc]</pattern>
<script>MigXmlHelper.GenerateDrivePatterns("\Folder\* [Sample.doc]","Fixed"</script>
```

- **Number of occurrences:** Unlimited

- **Parent elements:** [&lt;objectSet&gt;](#objectset)

- **Child elements:** none but *Path* \[*object*\] must be valid.

Syntax:

```xml
<pattern type="typeID">Path [object]</pattern>
```

|Setting|Required?|Value|
|--- |--- |--- |
| type | Yes | *typeID* can be Registry, File, or Ini. If *typeId* is Ini, then you can't have a space between *Path* and *object*. For example, the following format is correct when type="Ini": <br/>**&lt;pattern type="Ini"&gt;%WinAmp5InstPath%\Winamp.ini&#124;WinAmp[keeponscreen]&lt;/pattern&gt;** |
| *Path* [*object*] | Yes | A valid registry or file path pattern, followed by at least one space, followed by brackets [] that contain the object to be migrated. <ul><li>*Path* can contain the asterisk (`*`) wildcard character or can be an [Recognized environment variables](usmt-recognized-environment-variables.md). You can't use the question mark as a wildcard character. You can use `HKCU` and `HKLM` to refer to `HKEY_CURRENT_USER` and `HKEY_LOCAL_MACHINE` respectively.</li><li>*Object* can contain the asterisk (`*`) wildcard character. However, you can't use the question mark as a wildcard character. For example: <br/> **`C:\Folder\ [*]`** enumerates all files in `C:\Folder` but no subfolders of `C:\Folder`. <br/> **`C:\Folder* [*]`** enumerates all files and subfolders of `C:\Folder`. <br/> **`C:\Folder\ [*.mp3]`** enumerates all `.mp3` files in `C:\Folder`. <br/> **`C:\Folder\ [Sample.doc]`** enumerates only the `Sample.doc` file located in C:\Folder. <div class="alert">**Note**<br/>If migrating a file that has a square bracket character ([ or ]) in the file name, a carrot (^) character must be inserted directly before the bracket for it to be valid. For example, if there's a file named "file].txt", you must specify `<pattern type="File">c:\documents\mydocs [file^].txt]</pattern>` instead of `<pattern type="File">c:\documents\mydocs [file].txt]</pattern>`.</div></li></ul> |

For example:

- To migrate a single registry key:

    ```xml
    <pattern type="Registry">HKLM\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Cache [Persistent]</pattern>
    ```

- To migrate the `C:\EngineeringDrafts` folder and any subfolders from the C: drive:

    ```xml
    <pattern type="File">C:\EngineeringDrafts\* [*]</pattern>
    ```

- To migrate only the `C:\EngineeringDrafts` folder, excluding any subfolders, from the C: drive:

    [Reroute files and settings](usmt-reroute-files-and-settings.md)

- To migrate the `Sample.doc` file from `C:\EngineeringDrafts`:

    ```xml
    <pattern type="File"> C:\EngineeringDrafts\ [Sample.doc]</pattern>
    ```

- To migrate the `Sample.doc` file from where ever it exists on the C: drive use pattern in the following way. If multiple files exist with the same name on the C: drive, then all of these files are migrated.

    ```xml
    <pattern type="File"> C:\* [Sample.doc] </pattern>
    ```

- For more examples of how to use this element, see [Exclude files and settings](usmt-exclude-files-and-settings.md), [Reroute files and settings](usmt-reroute-files-and-settings.md), [Include files and settings](usmt-include-files-and-settings.md), and [Custom XML examples](usmt-custom-xml-examples.md).

## &lt;processing&gt;

You can use this element to run a script during a specific point within the migration process. Return values aren't expected from the scripts that you specify, and if there are return values, they're ignored.

- **Number of occurrences:** unlimited

- **Parent elements:** [&lt;rules&gt;](#rules)

- **Required child element:** [&lt;script&gt;](#script)

Syntax:

```xml
<processing when="pre-scan|scan-success|post-scan|pre-apply|apply-success|post-apply">
</processing>
```

|Setting|Required?|Value|
|--- |--- |--- |
| when | Yes | Indicates when the script should be run. This value can be one of the following values: <ul><li>**pre-scan** means before the scanning process begins.</li><li>**scan-success** means after the scanning process finishes successfully.</li><li>**post-scan** means after the scanning process finished, whether it was successful or not.</li><li>**pre-apply** means before the apply process begins.</li><li>**apply-success** means after the apply process finishes successfully.</li><li>**post-apply** means after the apply process finished, whether it was successful or not.</li></ul> |

## &lt;plugin&gt;

This element is an internal USMT element. Don't use this element.

## &lt;role&gt;

The **&lt;role&gt;** element is required in a custom .xml file. By specifying the **&lt;role&gt;** element, you can create a concrete component. The component is defined by the parameters specified at the **&lt;component&gt;** level, and with the role that you specify here.

- **Number of occurrences:** Each **&lt;component&gt;** can have one, two or three child **&lt;role&gt;** elements.

- **Parent elements:** [&lt;component&gt;](#component), [&lt;role&gt;](#role)

- **Required child elements:** [&lt;rules&gt;](#rules)

- **Optional child elements:** [&lt;environment&gt;](#environment), [&lt;detection&gt;](#detection), [&lt;component&gt;](#component), [&lt;role&gt;](#role), [&lt;detects&gt;](#detects), [&lt;plugin&gt;](#plugin)

Syntax:

```xml
<role role="Container|Binaries|Settings|Data">
</role>
```

|Setting|Required?|Value|
|--- |--- |--- |
| role | Yes | Defines the role for the component. Role can be one of: <ul><li>**Container**</li><li>**Binaries**</li><li>**Settings**</li><li>**Data**</li></ul> You can either: <ol><li>Specify up to three **&lt;role&gt;** elements within a **&lt;component&gt;** - one "Binaries" role element, one "Settings" role element and one "Data" role element. These parameters don't change the migration behavior - their only purpose is to help you categorize the settings that you're migrating. You can nest these **&lt;role&gt;** elements, but each nested element must be of the same role parameter.</li><li>Specify one "Container" **&lt;role&gt;** element within a **&lt;component&gt;** element. In this case, you can't specify any child **&lt;rules&gt;** elements, only other **&lt;component&gt;** elements. And each child **&lt;component&gt;** element must have the same type as that of parent **&lt;component&gt;** element. For example:</li></ol> <pre class="syntax"><code>&lt;component context="UserAndSystem" type="Application"&gt; <br/>  &lt;displayName _locID="migapp.msoffice2003"&gt;Microsoft Office 2003&lt;/displayName&gt; <br/>  &lt;environment name="GlobalEnv" /&gt; <br/>  &lt;role role="Container"&gt;<br/>    &lt;detection name="AnyOffice2003Version" /&gt; <br/>    &lt;detection name="FrontPage2003" /&gt; <br/>    &lt;!-- <br/> Office 2003 Common Settings <br/>  --&gt; <br/>     &lt;component context="UserAndSystem" type="Application"&gt;</code></pre> |

The following example is from the MigUser.xml file. For more examples, see the `MigApp.xml` file:

```xml
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

## &lt;rules&gt;

The **&lt;rules&gt;** element is required in a custom .xml file. This element contains rules that run during the migration if the parent **&lt;component&gt;** element is selected, unless the child **&lt;conditions&gt;** element, if present, evaluates to **FALSE**. For each **&lt;rules&gt;** element, there can be multiple child **&lt;rules&gt;** elements.

- **Number of occurrences:** unlimited

- **Parent elements:** [&lt;role&gt;](#role), [&lt;rules&gt;](#rules), [&lt;namedElements&gt;](#namedelements)

- **Required child elements:** [&lt;include&gt;](#include)

- **Optional child elements:** [&lt;rules&gt;](#rules), [&lt;exclude&gt;](#exclude), [&lt;unconditionalExclude&gt;](#unconditionalexclude),[&lt;merge&gt;](#merge), [&lt;contentModify&gt;](#contentmodify), [&lt;locationModify&gt;](#locationmodify), [&lt;destinationCleanup&gt;](#destinationcleanup), [&lt;addObjects&gt;](#addobjects), [&lt;externalProcess&gt;](#externalprocess), [&lt;processing&gt;](#processing), [&lt;includeAttributes&gt;](#includeattributes), [&lt;excludeAttributes&gt;](#excludeattributes), [conditions](#conditions), [&lt;detects&gt;](#detects)

Syntax:

```xml
<rules name="ID" context="User|System|UserAndSystem">
</rules>
```

|Setting|Required?|Value|
|--- |--- |--- |
| name | Yes, when **&lt;rules&gt;** is a child to **&lt;namedElements&gt;** <br/>No, when **&lt;rules&gt;** is a child to any other element | When *ID* is specified, any child elements aren't processed. Instead, any other **&lt;rules&gt;** elements with the same name that are declared within **&lt;namedElements&gt;** are processed. |
| context | No <br/>(default = UserAndSystem) | Defines the scope of this parameter - whether to process this component in the context of the specific user, across the entire operating system, or both. <br/>The largest possible scope is set by the component element. For example, if a **&lt;component&gt;** element has a context of **User** and a **&lt;rules&gt;** element had a context of **UserAndSystem**, then the **&lt;rules&gt;** element would act as though it has a context of **User**. If **&lt;rules&gt;** had a context of **System**, it would act as though **&lt;rules&gt;** wasn't there. <ul><li>**User**: Evaluates the variables for each user.</li><li>**System**: Evaluates the variables only once for the system.</li><li>**UserAndSystem**: Evaluates the variables for the entire operating system and each user.</li></ul> |

The following example is from the MigUser.xml file:

```xml
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

## &lt;script&gt;

The return value that is required by **&lt;script&gt;** depends on the parent element.

**Number of occurrences:** Once for [&lt;variable&gt;](#variable), unlimited for [&lt;objectSet&gt;](#objectset) and [&lt;processing&gt;](#processing)

**Parent elements:** [&lt;objectSet&gt;](#objectset), [&lt;variable&gt;](#variable), [&lt;processing&gt;](#processing)

**Child elements:** none

**Syntax and helper functions:**

- General Syntax: `<script>ScriptWithArguments</script>`

- You can use [GetStringContent](#script-functions) when **&lt;script&gt;** is within **&lt;variable&gt;**.

    Syntax: `<script>MigXmlHelper.GetStringContent("ObjectType","EncodedLocationPattern", "ExpandContent")</script>`

    Example: `<script>MigXMLHelper.GetStringContent("Registry","HKLM\Software\MyApp\Installer [EXEPATH]")</script>`

- You can use [GenerateUserPatterns](#script-functions) when **&lt;script&gt;** is within **&lt;objectSet&gt;**.

    Syntax: `<script>MigXmlHelper.GenerateUserPatterns("ObjectType","EncodedLocationPattern","ProcessCurrentUser")</script>`

    Example: `<script>MigXmlHelper.GenerateUserPatterns ("File","%USERPROFILE%\* [*.doc]", "FALSE")</script>`

- You can use [GenerateDrivePatterns](#script-functions) when **&lt;script&gt;** is within **&lt;objectSet&gt;**.

    Syntax: `<script>MigXmlHelper.GenerateDrivePatterns("PatternSegment","DriveType")</script>`

    Example: `<script>MigXmlHelper.GenerateDrivePatterns("* [sample.doc]", "Fixed")</script>`

- You can use the [Simple executing scripts](#script-functions) with **&lt;script&gt;** elements that are within **&lt;processing&gt;** elements: AskForLogoff, ConvertToShortFileName, KillExplorer, RemoveEmptyDirectories, RestartExplorer, RegisterFonts, StartService, StopService, SyncSCM.

    Syntax: `<script>MigXmlHelper.ExecutingScript</script>`

    Example: `<script>MigXmlHelper.KillExplorer()</script>`

|Setting|Required?|Value|
|--- |--- |--- |
| *ScriptWithArguments* | Yes | A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example, `MyScripts.AScript ("Arg1","Arg2")`. <br/>The script is called for each object that is enumerated by the object sets in the **&lt;include&gt;** rule. The filter script returns a Boolean value. If the return value is **TRUE**, the object is migrated. If it's **FALSE**, it isn't migrated. <br/>The return value that is required by **&lt;script&gt;** depends on the parent element. <ul><li>When used within **&lt;variable&gt;**, the return value must be a string.</li><li>When used within **&lt;objectSet&gt;**, the return value must be a two-dimensional array of strings.</li><li>When used within **&lt;location&gt;**, the return value must be a valid location that aligns with the type attribute of **&lt;location&gt;**. For example, if &lt;location type="File"&gt;, the child script element, if specified, must be a valid file location. <div class="alert">**Note**<br/>If you're migrating a file that has a bracket character ([ or ]) in the file name, insert the carrot (^) character directly before the bracket for it to be valid. For example, if there's a file named "file].txt", specify `<pattern type="File">c:\documents\mydocs [file^].txt]</pattern>` instead of `<pattern type="File">c:\documents\mydocs [file].txt]</pattern>`.</div></li></ul> |

Examples:

To migrate the Sample.doc file from any drive on the source computer, use **&lt;script&gt;** as follows. If multiple files exist with the same name, all such files get migrated.

```xml
<script>MigXmlHelper.GenerateDrivePatterns("* [sample.doc]", "Fixed")</script> 
```

For more examples of how to use this element, see [Exclude Files and Settings](usmt-exclude-files-and-settings.md), [Reroute Files and Settings](usmt-reroute-files-and-settings.md), and [Custom XML Examples](usmt-custom-xml-examples.md).

### &lt;script&gt; functions

You can use the following functions with the **&lt;script&gt;** element

- [String and pattern generating functions](#string-and-pattern-generating-functions)

- [Simple executing scripts](#simple-executing-scripts)

### String and pattern generating functions

These functions return either a string or a pattern.

- **GetStringContent**

    You can use GetStringContent with **&lt;script&gt;** elements that are within **&lt;variable&gt;** elements. If possible, this function returns the string representation of the given object. Otherwise, it returns **NULL**. For file objects this function, always returns **NULL**.

    Syntax: `GetStringContent("ObjectType","EncodedLocationPattern", "ExpandContent")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    | *ObjectType* | Yes | The type of object. Can be Registry or Ini (for an .ini file). |
    | *EncodedLocationPattern* | Yes | <ul><li>If type of object is Registry, EncodedLocationPattern must be a valid registry path. For example, `HKLM\SOFTWARE\MyKey[]`.</li><li>If the type of object is Ini, then EncodedLocationPattern must be in the following format: <br/>**IniFilePath&#124;SectionName[SettingName]**</li></ul> |
    | *ExpandContent* | No (default=TRUE) | Can be **TRUE** or **FALSE**. If **FALSE**, then the given location isn't expanded before returned. |

  For example:

  ```xml
  <variable name="MSNMessengerInstPath">
  <script>MigXmlHelper.GetStringContent("Registry","%HklmWowSoftware%\Microsoft\MSNMessenger [InstallationDirectory]")</script>
  </variable>
  ```

- **GenerateDrivePatterns**

  The `GenerateDrivePatterns` function iterates all of the available drives and selects the ones that match the requested drive type. It then concatenates the selected drives with the end part of *PatternSegment* to form a full encoded file pattern. For example, if *PatternSegment* is `Path [file.txt]` and *DriveType* is `Fixed`, then the function generates `C:\Path [file.txt]`, and other patterns if there are fixed drives other than C:. You can't specify environment variables with this function. You can use `GenerateDrivePatterns` with **&lt;script&gt;** elements that are within [&lt;objectSet&gt;](#objectset) that are within **&lt;include&gt;**/**&lt;exclude&gt;**.

  Syntax: `GenerateDrivePatterns("PatternSegment","DriveType")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    | *PatternSegment* | Yes | The suffix of an encoded pattern. It's concatenated with a drive specification, such as "c:", to form a complete [encoded file pattern](#specifying-locations). For example, "* [*.doc]". *PatternSegment* can't be an environment variable. |
    | *DriveType* | Yes | The drive type for which the patterns are to be generated. You can specify one of: <ul><li>Fixed</li><li>CDROM</li><li>Removable</li><li>Remote</li></ul> |

  See the last component in the MigUser.xml file for an example of this element.

- **GenerateUserPatterns**

  The `GenerateUserPatterns` function iterates through all users that are being migrated, excluding the currently processed user if **&lt;ProcessCurrentUser&gt;** is **FALSE**, and expands the specified pattern in the context of each user. For example, if users A, B, and C have profiles in `C:\Documents and Settings`, by calling `GenerateUserPattens('File','%userprofile% [*.doc]','TRUE')`, the helper function generates the following three patterns:

  - "C:\\Documents and Settings\\A\\\* \[\*.doc\]"

  - "C:\\Documents and Settings\\B\\\* \[\*.doc\]"

  - "C:\\Documents and Settings\\C\\\* \[\*.doc\]"

  Syntax: `GenerateUserPatterns("ObjectType","EncodedLocationPattern","ProcessCurrentUser")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*ObjectType*|Yes|Defines the object type. Can be File or Registry.|
    |*EncodedLocationPattern*|Yes|The [location pattern](#specifying-locations). Environment variables are allowed.|
    |*ProcessCurrentUser*|Yes|Can be **TRUE** or **FALSE**. Indicates if the patterns should be generated for the current user.|

**Example:**

If `GenerateUserPattens('File','%userprofile% [*.doc]','FALSE')` is called while USMT is processing user A, then this function only generates patterns for users B and C. You can use this helper function to build complex rules. For example, to migrate all `.doc` files from the source computer - but if user X isn't migrated, then don't migrate any of the `.doc` files from user X's profile.

The following example is example code for this scenario. The first **&lt;rules&gt;** element migrates all `.doc` files on the source computer except for those inside `C:\Documents and Settings`. The second **&lt;rules&gt;** elements migrate all `.doc` files from `C:\Documents and Settings` except for the `.doc` files in the profiles of the other users. Because the second **&lt;rules&gt;** element is processed in each migrated user context, the end result is the desired behavior. The end result is the one we expected.

```xml
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

### MigXmlHelper.GenerateDocPatterns

The `MigXmlHelper.GenerateDocPatterns` helper function invokes the document finder to scan the system for all files that can be migrated. It can be invoked in either **System** or **User** context to focus the scan.

|Setting|Required?|Value|
|--- |--- |--- |
|*ScanProgramFiles*|No (default = FALSE)|Can be **TRUE** or **FALSE**. The *ScanProgramFiles* parameter determines whether or not the document finder scans the **Program Files** directory to gather registered file extensions for known applications. For example, when set to **TRUE** it discovers and migrates .jpg files under the Photoshop directory, if `.jpg` is a file extension registered to Photoshop.|
|*IncludePatterns*|No (default = TRUE)|Can be **TRUE** or **FALSE**. **TRUE** generates include patterns and can be added under the **&lt;include&gt;** element. **FALSE** generates exclude patterns and can be added under the **&lt;exclude&gt;** element.|
|*SystemDrive*|No (default = FALSE)|Can be **TRUE** or **FALSE**. If **TRUE**, restricts all patterns to the system drive.|

```xml
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

### Simple executing scripts

The following scripts have no return value. You can use the following errors with **&lt;script&gt;** elements that are within **&lt;processing&gt;** elements

- **AskForLogoff()**. Prompts the user to sign out at the end of the migration. For example:

  ```xml
  <processing when="apply-success">
    <script>MigXmlHelper.AskForLogoff()</script>
  </processing>
  ```

- **ConvertToShortFileName(RegistryEncodedLocation)**. If *RegistryEncodedLocation* is the full path of an existing file, this function converts the file to its short file name and then it updates the registry value.

- **KillExplorer()**. Stops Explorer.exe for the current user context. Stopping Explorer.exe allows access to certain keys and files that are kept open when Explorer.exe is running. For example:

  ```xml
  <processing when="pre-apply">
    <script>MigXmlHelper.KillExplorer()</script>
  </processing>
  ```

- **RegisterFonts(FileEncodedLocation)**. Registers the given font or all of the fonts in the given directory. For example:

 ```xml
  <processing when="apply-success">
    <script>MigXmlHelper.RegisterFonts("%CSIDL_COMMON_FONTS%")</script>
  </processing>
  ```

- **RemoveEmptyDirectories (DirectoryEncodedPattern).** Deletes any empty directories that match *DirectoryEncodedPattern* on the destination computer.

- **RestartExplorer().** Restarts Explorer.exe at the end of the migration. For example:

  ```xml
  <processing when="post-apply">
    <script>MigXmlHelper.RestartExplorer()</script>
  </processing>
  ```

- **StartService (ServiceName, OptionalParam1, OptionalParam2,…).** Starts the service identified by *ServiceName. ServiceName* is the subkey in `HKLM\System\CurrentControlSet\Services` that holds the data for the given service. The optional parameters, if any, is passed to the StartService API. For more information, see the [StartServiceA function (winsvc.h)](/windows/win32/api/winsvc/nf-winsvc-startservicea) article.

- **StopService (ServiceName)**. Stops the service that is identified by *ServiceName. ServiceName* is the subkey in `HKLM\System\CurrentControlSet\Services` that holds the data for the given service.

- **SyncSCM(ServiceShortName).** Reads the Start type value from the registry `(HKLM\System\CurrentControlSet\Services\ServiceShortName [Start])` after the value is changed by the migration engine, and then synchronizes Service Control Manager (SCM) with the new value.

## &lt;text&gt;

You can use the **&lt;text&gt;** element to set a value for any environment variables that are inside one of the migration .xml files.

- **Number of occurrences:** Once in each [&lt;variable&gt;](#variable) element.

- **Parent elements:** [&lt;variable&gt;](#variable)

- **Child elements:** None.

Syntax:

```xml
<text>NormalText</text>
```

|Setting|Value|
|--- |--- |
|*NormalText*|This text is interpreted as normal text.|

For example:

```xml
<variable name="QuickTime5or6DataSys">
  <text>%CSIDL_COMMON_APPDATA%\QuickTime</text> 
</variable>
```

## &lt;unconditionalExclude&gt;

The **&lt;unconditionalExclude&gt;** element excludes the specified files and registry values from the migration, regardless of the other include rules in any of the migration .xml files or in the `Config.xml` file. The objects declared here aren't migrated because this element takes precedence over all other rules. For example, even if there are explicit **&lt;include&gt;** rules to include `.mp3` files, if you specify to exclude them with this option, then they aren't migrated.

Use this element if you want to exclude all `.mp3` files from the source computer. Or, if you're backing up `C:\UserData` using another method, you can exclude the entire folder from the migration. Use this element with caution, however, because if an application needs a file that you exclude, the application might not function properly on the destination computer.

- **Number of occurrences:** Unlimited.

- **Parent elements:** [&lt;rules&gt;](#rules)

- **Child elements:** [&lt;objectSet&gt;](#objectset)

Syntax:

```xml
<unconditionalExclude></unconditionalExclude>
```

The following .xml file excludes all `.mp3` files from migration. For additional examples of how to use this element, see the [Exclude Files and Settings](usmt-exclude-files-and-settings.md).

```xml
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

## &lt;variable&gt;

The **&lt;variable&gt;** element is required in an **&lt;environment&gt;** element. For each **&lt;variable&gt;** element there must be one **&lt;objectSet&gt;**, **&lt;script&gt;**, or **&lt;text&gt;** element. The content of the **&lt;variable&gt;** element assigns a text value to the environment variable. This element has the following three options:

1. If the **&lt;variable&gt;** element contains a **&lt;text&gt;** element, then the value of the variable element is the value of the **&lt;text&gt;** element.

2. If the **&lt;variable&gt;** element contains a **&lt;script&gt;** element and the invocation of the script produces a non-null string, then the value of the **&lt;variable&gt;** element is the result of the script invocation.

3. If the **&lt;variable&gt;** element contains an **&lt;objectSet&gt;** element and the evaluation of the **&lt;objectSet&gt;** element produces at least one object pattern, then the value of the first object to match the resulting object pattern is the value of the variable element.

- **Number of occurrences:** Unlimited

- **Parent elements:** [&lt;environment&gt;](#environment)

- **Required child elements:** either [&lt;text&gt;](#text), or [&lt;script&gt;](#script), or [&lt;objectSet&gt;](#objectset)

Syntax:

```xml
<variable name="ID" remap=TRUE|FALSE>
</variable>
```

|Setting|Required?|Value|
|--- |--- |--- |
|name|Yes|*ID* is a string value that is the name used to reference the environment variable. We recommend that *ID* start with the component's name to avoid namespace collisions. For example, if your component's name is MyComponent, and you want a variable that is your component's install path, you could specify `MyComponent.InstallPath`.|
|remap|No, default = FALSE|Specifies whether to evaluate this environment variable as a remapping environment variable. Objects that are located in a path that is underneath this environment variable's value are automatically moved to where the environment variable points on the destination computer.|

The following example is from the `MigApp.xml` file:

```xml
<environment>
   <variable name="HklmWowSoftware">
      <text>HKLM\Software</text>
   </variable>
   <variable name="WinZip8or9or10Exe">
      <script>MigXmlHelper.GetStringContent("Registry","%HklmWowSoftware%\Microsoft\Windows\CurrentVersion\App Paths\winzip32.exe []")</script>
   </variable>
</environment>
```

## &lt;version&gt;

The **&lt;version&gt;** element defines the version for the component, but doesn't affect the migration.

- **Number of occurrences:** zero or one

- **Parent elements:** [&lt;component&gt;](#component)

- **Child elements:** none

Syntax:

```xml
<version>ComponentVersion</version>
```

|Setting|Required?|Value|
|--- |--- |--- |
|*ComponentVersion*|Yes|The version of the component, which can contain patterns.|

For example:

```xml
<version>4.*</version>
```

## &lt;windowsObjects&gt;

The **&lt;windowsObjects&gt;** element is for USMT internal use only. Don't use this element.

## Appendix

### Specifying locations

- **Specifying encoded locations**. The encoded location used in all of the helper functions is an unambiguous string representation for the name of an object. The encoded location is composed of the node part, optionally followed by the leaf enclosed in square brackets. This format makes a clear distinction between nodes and leaves.

    For example, specify the file `C:\Windows\Notepad.exe` like this: `c:\Windows[Notepad.exe]`. Similarly, specify the directory `C:\Windows\System32` like this: `c:\Windows\System32`. (Notice the absence of the `[]` construct.)

    Representing the registry is similar. The default value of a registry key is represented as an empty `[]` construct. For example, the default value for the `HKLM\SOFTWARE\MyKey` registry key is `HKLM\SOFTWARE\MyKey[]`.

- **Specifying location patterns**. You specify a location pattern in a way that is similar to how you specify an actual location. The exception is that both the node and leaf part accept patterns. However, a pattern from the node doesn't extend to the leaf.

    For example, the pattern `c:\Windows\*` matches the Windows directory and all subdirectories, but it doesn't match any of the files in those directories. To match the files as well, you must specify `c:\Windows\*[*]`.

### Internal USMT functions

The following functions are for internal USMT use only. Don't use them in an .xml file.

- *AntiAlias*

- *ConvertScreenSaver*

- *ConvertShowIEOnDesktop*

- *ConvertToOfficeLangID*

- *MigrateActiveDesktop*

- *MigrateAppearanceUPM*

- *MigrateDisplayCS*

- *MigrateDisplaySS*

- *MigrateIEAutoSearch*

- *MigrateMouseUPM*

- *MigrateSoundSysTray*

- *MigrateTaskBarSS*

- *SetPstPathInMapiStruc*

### Valid version tags

You can use the following version tags with various helper functions:

- "CompanyName"

- "FileDescription"

- "FileVersion"

- "InternalName"

- "LegalCopyright"

- "OriginalFilename"

- "ProductName"

- "ProductVersion"

The following version tags contain values that can be compared:

- "FileVersion"

- "ProductVersion"

## Related articles

- [USMT XML reference](usmt-xml-reference.md).

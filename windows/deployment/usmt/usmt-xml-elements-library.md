---
title: XML Elements Library
description: Learn about the XML elements and helper functions that can be employed to author migration .xml files to use with User State Migration Tool (USMT).
ms.reviewer: kevinmi,warrenw
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.date: 01/09/2024
ms.topic: conceptual
ms.subservice: itpro-deploy
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# XML elements library

This article describes the XML elements and helper functions that can be employed to author migration **.xml** files to use with User State Migration Tool (USMT). This article assumes a basic knowledge of XML.

In addition to XML elements and helper functions, this article:

- Describes how to specify encoded locations and locations patterns.
- Functions that are for internal USMT use only.
- The version tags that can be used with helper functions.

## Elements and helper functions

The following table describes the XML elements and helper functions can be used with USMT.

| Elements A-K | Elements L-Z | Helper functions |
|-----|----|-----|
| [\<addObjects\>](#addobjects)<br>[\<attributes\>](#attributes)<br>[\<bytes\>](#bytes)<br>[\<commandLine\>](#commandline)<br>[\<component\>](#component)<br>[\<condition\>](#condition)<br>[\<conditions\>](#conditions)<br>[\<content\>](#content)<br>[\<contentModify\>](#contentmodify)<br>[\<description\>](#description)<br>[\<destinationCleanup\>](#destinationcleanup)<br>[\<detect\>](#detect)<br>[\<detects\>](#detects)<br>[\<detection\>](#detection)<br>[\<displayName\>](#displayname)<br>[\<environment\>](#environment)<br>[\<exclude\>](#exclude)<br>[\<excludeAttributes\>](#excludeattributes)<br>[\<extensions\>](#extensions)<br>[\<extension\>](#extension)<br>[\<externalProcess\>](#externalprocess)<br>[\<icon\>](#icon)<br>[\<include\>](#include)<br>[\<includeAttribute\>](#includeattributes) | [\<library\>](#library)<br>[\<location\>](#location)<br>[\<locationModify\>](#locationmodify)<br>[\<_locDefinition\>](#_locdefinition)<br>[\<manufacturer\>](#manufacturer)<br>[\<merge\>](#merge)<br>[\<migration\>](#migration)<br>[\<namedElements\>](#namedelements)<br>[\<object\>](#object)<br>[\<objectSet\>](#objectset)<br>[\<path\>](#path)<br>[\<paths\>](#paths)<br>[\<pattern\>](#pattern)<br>[\<processing\>](#processing)<br>[\<plugin\>](#plugin)<br>[\<role\>](#role)<br>[\<rules\>](#rules)<br>[\<script\>](#script)<br>[\<text\>](#text)<br>[\<unconditionalExclude\>](#unconditionalexclude)<br>[\<variable\>](#variable)<br>[\<version\>](#version)<br>[\<windowsObjects\>](#windowsobjects) | [\<condition\> functions](#condition-functions)<br>[\<content\> functions](#content-functions)<br>[\<contentModify\> functions](#contentmodify-functions)<br>[\<include\> and \<exclude\> filter functions](#include-and-exclude-filter-functions)<br>[\<locationModify\> functions](#locationmodify-functions)<br>[\<merge\> functions](#merge-functions)<br>[\<script\> functions](#script-functions)<br>[Internal USMT functions](#internal-usmt-functions) |

## \<addObjects\>

The **\<addObjects\>** element emulates the existence of one or more objects on the source computer. The child **\<object\>** elements provide the details of the emulated objects. If the content is a **\<script\>** element, the result of the invocation is an array of objects.

- **Number of occurrences:** unlimited

- **Parent elements:** [\<rules\>](#rules)

- **Required child elements:** [\<object\>](#object) In addition, [\<location\>](#location) and [\<attribute\>](#attributes) must be specified as child elements of this **\<object\>** element.

- **Optional child elements:** [\<conditions\>](#conditions), [\<condition\>](#condition), [\<script\>](#script)

Syntax:

```xml
<addObjects>
</addObjects>
```

The following example is from the `MigApp.xml` file:

```xml
<addObjects>
   <object>
      <location type="Registry">%HklmWowSoftware%\Microsoft\Office\16.0\Common\Migration\Office [UpgradeVersion]</location>
      <attributes>DWORD</attributes>
      <bytes>0B000000</bytes>
   </object>
   <object>
      <location type="Registry">%HklmWowSoftware%\Microsoft\Office\16.0\Common\Migration\Office [Lang]</location>
      <attributes>DWORD</attributes>
      <bytes>00000000</bytes>
   </object>
</addObjects>
```

## \<attributes\>

The **\<attributes\>** element defines the attributes for a registry key or file.

- **Number of occurrences:** once for each [\<object\>](#object)

- **Parent elements:** [\<object\>](#object)

- **Child elements:** none

Syntax:

```xml
<attributes>Content</attributes>
```

| Setting | Required? | Value |
|------|-----|----|
| *Content* | Yes | The content depends on the type of object specified.<br><ul><li>For files, the content can be a string containing any of the following attributes separated by commas:<ul><li>Archive</li><li>Read-only</li><li>System</li><li>Hidden</li></ul></li><li>For registry keys, the content can be one of the following types:<ul><li>None</li><li>String</li><li>ExpandString</li><li>Binary</li><li>Dword</li><li>REG_SZ</li></ul></li></ul>|

The following example is from the `MigApp.xml` file:

```xml
<object>
   <location type="Registry">%HklmWowSoftware%\Microsoft\Office\16.0\Common\Migration\Office [Lang]</location>
   <attributes>DWORD</attributes>
   <bytes>00000000</bytes>
</object> 
```

## \<bytes\>

The **\<bytes\>** element can only be specified for files because, if **\<location\>** corresponds to a registry key or a directory, then **\<bytes\>** is ignored.

- **Number of occurrences:** zero or one

- **Parent elements:** [\<object\>](#object)

- **Child elements:** none

Syntax:

```xml
<bytes string="Yes|No" expand="Yes|No">Content</bytes>
```

|Setting|Required?|Value|
|--- |--- |--- |
|string|No, default is No|Determines whether *Content* should be interpreted as a string or as bytes.|
|expand|No (default = Yes|When the expand parameter is **Yes**, the content of the **\<bytes\>** element is first expanded in the context of the source computer and then interpreted.|
|*Content*|Yes|Depends on the value of the string.<ul><li>When the string is **Yes**: the content of the **\<bytes\>** element is interpreted as a string.</li><li>When the string is **No**: the content of the **\<bytes\>** element is interpreted as bytes. Every two characters represent the hexadecimal value of a byte. For example, `616263` is the representation for the `abc` ANSI string. A complete representation of the UNICODE string `abc` including the string terminator would be: `6100620063000000`.</li></ul>|

The following example is from the `MigApp.xml` file:

```xml
<object>
   <location type="Registry">%HklmWowSoftware%\Microsoft\Office\16.0\Common\Migration\Office [Lang]</location>
   <attributes>DWORD</attributes>
   <bytes>00000000</bytes>
</object> 
```

## \<commandLine\>

The **\<commandLine\>** element might be used to start or stop a service or application before or after running the **ScanState** and **LoadState** tools.

- **Number of occurrences:** unlimited

- **Parent elements:** [\<externalProcess\>](#externalprocess)

- **Child elements:** none

Syntax:

```xml
<commandLine>CommandLineString</commandLine>
```

|Setting|Required?|Value|
|--- |--- |--- |
|*CommandLineString*|Yes|A valid command line.|

## \<component\>

The **\<component\>** element is required in a custom **.xml** file. This element defines the most basic construct of a migration **.xml** file. For example, in the `MigApp.xml` file, **Microsoft Office 2016** is a component that contains another component, **Microsoft Office Access 2016**. The child elements can be used to define the component.

A component can be nested inside another component; that is, the **\<component\>** element can be a child of the **\<role\>** element within the **\<component\>** element in two cases:

1. When the parent **\<component\>** element is a container
1. If the child **\<component\>** element has the same role as the parent **\<component\>** element.

- **Number of occurrences:** Unlimited

- **Parent elements:** [\<migration\>](#migration), [\<role\>](#role)

- **Required child elements:** [\<role\>](#role), [\<displayName\>](#displayname)

- **Optional child elements:** [\<manufacturer\>](#manufacturer), [\<version\>](#version), [\<description\>](#description), [\<paths\>](#paths), [\<icon\>](#icon), [\<environment\>](#environment), [\<extensions\>](#extensions)

Syntax:

```xml
<component type="System|Application|Device|Documents" context="User|System|UserAndSystem" defaultSupported="TRUE|FALSE|YES|NO"
hidden="Yes|No">
</component>
```

|Setting|Required?|Value|
|--- |--- |--- |
| type | Yes | The following items can be used to group settings, and define the type of the component.<ul><li>**System:** Operating system settings. All Windows components are defined by this type.<br>When **type="System"** and **defaultSupported="FALSE"**, the settings don't migrate unless there's an equivalent component in the **.xml** files that is specified on the `LoadState.exe` command line. For example, the default `MigSys.xml` file contains components with **type="System"** and **defaultSupported="FALSE"**. If this file is specified on the `ScanState.exe` command line, the file must also be specified on the `LoadState.exe` command line for the settings to migrate. The file must be specified because the `LoadState.exe` tool must detect an equivalent component. That is, the component must have the same migration urlid of the **.xml** file and an identical display name. Otherwise, the **LoadState** tool doesn't migrate those settings from the store. This setting is helpful because a store can be used for destination computers that are the same or different version of Windows as the source computer.</li><li>**Application:** Settings for an application.</li><li>**Device:** Settings for a device.</li><li>**Documents:** Specifies files.</li></ul> |
| context | No<br>Default = UserAndSystem | Defines the scope of this parameter; that is, whether to process this component in the context of the specific user, across the entire operating system, or both.<br>The largest possible scope is set by the **\<component\>** element. For example, if a **\<component\>** element has a context of **User** and a **\<rules\>** element had a context of **UserAndSystem**, then the **\<rules\>** element would act as though it has a context of **User**. If a **\<rules\>** element has a context of **System**, it would act as though the **\<rules\>** element isn't there. <ul><li>**User**: Evaluates the component for each user.</li><li>**System**: Evaluates the component only once for the system.</li><li>**UserAndSystem**: Evaluates the component for the entire operating system and each user.</li></ul> |
| defaultSupported | No<br>(default = TRUE) | Can be any of **TRUE**, **FALSE**, **YES**, or **NO**. If this parameter is **FALSE** (or **NO**), the component isn't migrated unless there's an equivalent component on the destination computer.<br>When **type="System"** and **defaultSupported="FALSE"**, the settings aren't migrated unless there's an equivalent component in the **.xml** files that are specified on the `LoadState.exe` command line. For example, the default `MigSys.xml` file contains components with **type="System"** and **defaultSupported="FALSE"**. If this file is specified on the `ScanState.exe` command line, the file must also be specified on the `LoadState.exe` command line for the settings to migrate. The file has to be specified in both command lines because the **LoadState** tool must detect an equivalent component. That is, the component must have the same migration urlid of the **.xml** file and an identical display name or the **LoadState** tool doesn't migrate those settings from the store. This setting is helpful because a store can be used for destination computers that are the same or different version of Windows as the source computer. |
| hidden |   | This parameter is for internal USMT use only. |

For an example, see any of the default migration **.xml** files.

## \<condition\>

Although the **\<condition\>** element under the **\<detect\>**, **\<objectSet\>**, and **\<addObjects\>** elements is still supported, Microsoft recommends to no longer use the **\<condition\>** element because it might be deprecated in future versions of USMT. If the **\<condition\>** element is deprecated, it would require a rewrite of any scripts that use the **\<condition\>** element. Instead, if a condition needs to be used within the **\<objectSet\>** and **\<addObjects\>** elements, Microsoft recommends using the more powerful **[\<conditions\>](#conditions)** element. The **\<conditions\>** element allows for formulation of complex Boolean statements.

The **\<condition\>** element has a Boolean result. This element can be used to specify the conditions in which the parent element is evaluated. If any of the present conditions return **FALSE**, the parent element isn't be evaluated.

- **Number of occurrences:** unlimited.

- **Parent elements:** [\<conditions\>](#conditions), [\<detect\>](#detect), [\<objectSet\>](#objectset), [\<addObjects\>](#addobjects)

- **Child elements:** none

- **Helper functions:** The following [\<condition\> functions](#condition-functions) can be used with this element: `DoesOSMatch`, `IsNative64Bit()`, `IsOSLaterThan`, `IsOSEarlierThan`, `DoesObjectExist`, `DoesFileVersionMatch`, `IsFileVersionAbove`, `IsFileVersionBelow`, `IsSystemContext`, `DoesStringContentEqual`, `DoesStringContentContain`, `IsSameObject`, `IsSameContent`, and `IsSameStringContent`.

Syntax:

```xml
<condition negation="Yes|No">ScriptName</condition>
```

|Setting|Required?|Value|
|--- |--- |--- |
|negation|No<br>Default = No|**"Yes"** reverses the True/False value of the condition.|
|*ScriptName*|Yes|A script that is defined within this migration section.|

For example, in the following code sample, the **\<condition\>** elements, **A** and **B**, are joined together by the **AND** operator because they are in separate **\<conditions\>** sections:

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

However, in the following code sample, the **\<condition\>** elements, **A** and **B**, are joined together by the **OR** operator because they are in the same **\<conditions\>** section.

```xml
<detection>
   <conditions>
      <condition>A</condition>
      <condition>B</condition>
   </conditions>
</detection>
```

### \<condition\> functions

The **\<condition\>** functions return a Boolean value. These elements can be used in **\<addObjects\>** conditions.

- [Operating system version functions](#operating-system-version-functions)

- [Object content functions](#object-content-functions)

### Operating system version functions

- **DoesOSMatch**

    All matches are case insensitive.

    Syntax: `DoesOSMatch("OSType","OSVersion")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*OSType*|Yes|The only valid value for this setting is **NT**. However, this setting must be set for the **\<condition\>** functions to work correctly.|
    |*OSVersion*|Yes|The major version, minor version, build number and corrected service diskette version separated by periods. For example, `5.0.2600.Service Pack 1`. Partial specification of the version can also be specified with a pattern such as `5.0.*`.|

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
    |*OSVersion*|Yes|The major version, minor version, build number, and corrected service diskette version separated by periods. For example, `5.0.2600.Service Pack 1`. Partial specification of the version can also be specified but no pattern is allowed such as `5.0`.<br><br>The **IsOSLaterThan** function returns **TRUE** if the current operating system is later than or equal to *OSVersion*.|

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
    |*OSVersion*|Yes|The major version, minor version, build number, and corrected service diskette version separated by periods. For example, `5.0.2600.Service Pack 1`. Partial specification of the version can also be specified but no pattern is allowed such as `5.0`.<br><br>The **IsOSEarlierThan** function returns **TRUE** if the current operating system is earlier than *OSVersion*.|

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
    |*VersionValue*|Yes|The value to compare to. A pattern can't be specified.|

- **IsFileVersionBelow**

  Syntax: `IsFileVersionBelow("EncodedFileLocation","VersionTag","VersionValue")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*EncodedFileLocation*|Yes|The **[location pattern](#specifying-locations)** for the file that is checked. Environment variables are allowed.|
    |*VersionTag*|Yes|The **[version tag](#valid-version-tags)** value that is checked.|
    |*VersionValue*|Yes|The value to compare to. A pattern can't be specified.|

- **IsSystemContext**

  The **IsSystemContext** function returns **TRUE** if the current context is **"System"**. Otherwise, it returns **FALSE**.

  Syntax: `IsSystemContext()`

- **DoesStringContentEqual**

  The **DoesStringContentEqual** function returns **TRUE** if the string representation of the given object is identical to `StringContent`.

  Syntax: `DoesStringContentEqual("ObjectType","EncodedLocation","StringContent")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*ObjectType*|Yes|Defines the type of object. Can be File or Registry.|
    |*EncodedLocationPattern*|Yes|The **[encoded location](#specifying-locations)** for the object that is examined. Environment variables can be specified.|
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
    |*EncodedLocationPattern*|Yes|The **[encoded location](#specifying-locations)** for the object that is examined. Environment variables can be specified.|
    |*StrToFind*|Yes|A string that is searched inside the content of the given object.|

- **IsSameObject**

  The **IsSameObject** function returns **TRUE** if the given encoded locations resolve to the same physical object. Otherwise, it returns **FALSE**.

  Syntax: `IsSameObject("ObjectType","EncodedLocation1","EncodedLocation2")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*ObjectType*|Yes|Defines the type of object. Can be File or Registry.|
    |*EncodedLocation1*|Yes|The **[encoded location](#specifying-locations)** for the first object. Environment variables can be specified.|
    |*EncodedLocation2*|Yes|The **[encoded location](#specifying-locations)** for the second object. Environment variables can be specified.|

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
    |*EncodedLocation1*|Yes|The **[encoded location](#specifying-locations)** for the first object. Environment variables can be specified.|
    |*ObjectType2*|Yes|Defines the type of the second object. Can be File or Registry.|
    |*EncodedLocation2*|Yes|The **[encoded location](#specifying-locations)** for the second object. Environment variables can be specified.|

- **IsSameStringContent**

  The **IsSameStringContent** function returns **TRUE** if the given objects have the same content. Otherwise, it returns **FALSE**. The content is interpreted as a string.

  Syntax: `IsSameStringContent("ObjectType1","EncodedLocation1","ObjectType2","EncodedLocation2")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*ObjectType1*|Yes|Defines the type of the first object. Can be File or Registry.|
    |*EncodedLocation1*|Yes|The **[encoded location](#specifying-locations)** for the first object. Environment variables can be specified.|
    |*ObjectType2*|Yes|Defines the type of the second object. Can be File or Registry.|
    |*EncodedLocation2*|Yes|The **[encoded location](#specifying-locations)** for the second object. Environment variables can be specified.|

## \<conditions\>

The **\<conditions\>** element returns a Boolean result that is used to specify the conditions in which the parent element is evaluated. USMT evaluates the child elements, and then joins their results using the operators **AND** or **OR** according to the operation parameter.

- **Number of occurrences:** Unlimited inside another **\<conditions\>** element. Limited to one occurrence in [\<detection\>](#detection), [\<rules\>](#rules), [\<addObjects\>](#addobjects), and [\<objectSet\>](#objectset)

- **Parent elements:** [\<conditions\>](#conditions), [\<detection\>](#detection), [\<environment\>](#environment), [\<rules\>](#rules), [\<addObjects\>](#addobjects), and [\<objectSet\>](#objectset)

- **Child elements:** [\<conditions\>](#conditions), [\<condition\>](#condition)

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

## \<content\>

The **\<content\>** element can be used to specify a list of object patterns to obtain an object set from the source computer. Each **\<objectSet\>** within a **\<content\>** element is evaluated. For each resulting object pattern list, the objects that match it are enumerated and their content is filtered by the filter parameter. The resulting string array is the output for the **\<content\>** element. The filter script returns an array of locations. The parent **\<objectSet\>** element can contain multiple child **\<content\>** elements.

- **Number of occurrences:** unlimited

- **Parent elements:** [\<objectSet\>](#objectset)

- **Child elements:** [\<objectSet\>](#objectset)

- **Helper functions:** The following [\<content\> functions](#content-functions) can be used with this element: `ExtractSingleFile`, `ExtractMultipleFiles`, and `ExtractDirectory`.

Syntax:

```xml
<content filter="ScriptInvocation">
</content>
```

|Setting|Required?|Value|
|--- |--- |--- |
|filter|Yes|A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example, `MyScripts.AScript ("Arg1","Arg2")`.<br>The script is called for each object that is enumerated by the object sets in the **\<include\>** rule. The filter script returns a Boolean value. If the return value is **TRUE**, the object is migrated. If it's **FALSE**, it isn't migrated.|

### \<content\> functions

The following functions generate patterns out of the content of an object. These functions are called for every object that the parent **\<ObjectSet\>** element is enumerating.

- **ExtractSingleFile**

    If the registry value is a **MULTI-SZ**, only the first segment is processed. The returned pattern is the encoded location for a file that must exist on the system. If the specification is correct in the registry value, but the file doesn't exist, this function returns **NULL**.

    Syntax: `ExtractSingleFile(Separators,PathHints)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*Separators*|Yes|A list of possible separators that might follow the file specification in this registry value name. For example, if the content is **"C:\Windows\Notepad.exe,-2"**, the separator is a comma. **NULL** can be specified.|
    |*PathHints*|Yes|A list of extra paths, separated by colons (`;`), where the function looks for a file matching the current content. For example, if the content is **"Notepad.exe"** and the path is the **%Path%** environment variable, the function finds **Notepad.exe** in `%windir%` and returns **"c:\Windows [Notepad.exe]"**. **NULL** can be specified.|

  For example:

  ```xml
  <content filter="MigXmlHelper.ExtractSingleFile(',','%system%')">
  ```

  and

  ```xml
  <content filter="MigXmlHelper.ExtractSingleFile(NULL,'%CSIDL_COMMON_FONTS%')">
  ```

- **ExtractMultipleFiles**

    The **ExtractMultipleFiles** function returns multiple patterns, one for each file that is found in the content of the given registry value. If the registry value is a **MULTI-SZ**, the **MULTI-SZ** separator is considered a separator by default. therefore, for **MULTI-SZ**, the **\<Separators\>** argument must be **NULL**.

    The returned patterns are the encoded locations for files that must exist on the source computer. If the specification is correct in the registry value but the file doesn't exist, it isn't included in the resulting list.

    Syntax: `ExtractMultipleFiles(Separators,PathHints)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*Separators*|Yes|A list of possible separators that might follow the file specification in this registry value name. For example, if the content is **"C:\Windows\Notepad.exe,-2"**, the separator is a comma. This parameter must be NULL when processing **MULTI-SZ** registry values.|
    |*PathHints*|Yes|A list of extra paths, separated by colons (`;`), where the function looks for a file matching the current content. For example, if the content is **"Notepad.exe"** and the path is the **%Path%** environment variable, the function finds **Notepad.exe** in `%windir%` and returns **"c:\Windows [Notepad.exe]"**. **NULL** can be specified.|

- **ExtractDirectory**

    The **ExtractDirectory** function returns a pattern that is the encoded location for a directory that must exist on the source computer. If the specification is correct in the registry value, but the directory doesn't exist, this function returns **NULL**. If it's processing a registry value that is a **MULTI-SZ**, only the first segment is processed.

    Syntax: `ExtractDirectory(Separators,LevelsToTrim,PatternSuffix)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*Separators*|No|A list of possible separators that might follow the file specification in this registry value name. For example, if the content is **"C:\Windows\Notepad.exe,-2"**, the separator is a comma. **NULL** must be specified when processing **MULTI-SZ** registry values.|
    |*LevelsToTrim*|Yes|The number of levels to delete from the end of the directory specification. Use this function to extract a root directory when there's a registry value that points inside that root directory in a known location.|
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

## \<contentModify\>

The **\<contentModify\>** element modifies the content of an object before the object is written to the destination computer. For each **\<contentModify\>** element, there can be multiple **\<objectSet\>** elements. This element returns the new content of the object that is being processed.

- **Number of occurrences:** Unlimited

- **Parent elements:** [\<rules\>](#rules)

- **Required child elements:** [\<objectSet\>](#objectset)

- **Helper functions**: The following [\<contentModify\> functions](#contentmodify-functions) can be used with this element: **ConvertToDWORD**, **ConvertToString**, **ConvertToBinary**, **KeepExisting**, **OffsetValue**, **SetValueByTable**, **MergeMultiSzContent**, and **MergeDelimitedContent**.

Syntax:

```xml
<contentModify script="ScriptInvocation">
</contentModify>
```

|Setting|Required?|Value|
|--- |--- |--- |
|script|Yes|A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example, `MyScripts.AScript ("Arg1","Arg2").`<br><br>The script is called for each object that is enumerated by the object sets in the include rule. The filter script returns a Boolean value. If the return value is **TRUE**, the object is migrated. If it's **FALSE**, it isn't migrated.|

### \<contentModify\> functions

The following functions change the content of objects as they're migrated. These functions are called for every object that the parent **\<ObjectSet\>** element is enumerating.

- **ConvertToDWORD**

    The **ConvertToDWORD** function converts the content of registry values that are enumerated by the parent **\<ObjectSet\>** element to a DWORD. For example, **ConvertToDWORD** converts the string `"1"` to the DWORD `0x00000001`. If the conversion fails, then the value of **DefaultValueOnError** is applied.

    Syntax: `ConvertToDWORD(DefaultValueOnError)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*DefaultValueOnError*|No|The value that is written into the value name if the conversion fails. **NULL** can be specified, and `0` is written if the conversion fails.|

- **ConvertToString**

    The **ConvertToString** function converts the content of registry values that match the parent **\<ObjectSet\>** element to a string. For example, it converts the DWORD `0x00000001` to the string **"1"**. If the conversion fails, then the value of **DefaultValueOnError** is applied.

    Syntax: `ConvertToString(DefaultValueOnError)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*DefaultValueOnError*|No|The value that is written into the value name if the conversion fails. **NULL** can be specified, and `0` is written if the conversion fails.|

  For example:

  ```xml
  <contentModify script="MigXmlHelper.ConvertToString('1')">
     <objectSet>
          <pattern type="Registry">HKCU\Control Panel\Desktop [ScreenSaveUsePassword]</pattern>
     </objectSet>
  </contentModify>
  ```

- **ConvertToBinary**

    The **ConvertToBinary** function converts the content of registry values that match the parent **\<ObjectSet\>** element to a binary type.

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

   The **KeepExisting** function can be used when there are conflicts on the destination computer. This function keeps (not overwrites) the specified attributes for the object that is on the destination computer.

    Syntax: `KeepExisting("OptionString","OptionString","OptionString",…)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    | *OptionString* | Yes | *OptionString* can be **Security**, **TimeFields**, or **FileAttrib**:*Letter*. One of each type of *OptionStrings* can be specified. Don't specify multiple *OptionStrings* with the same value. If multiple *OptionStrings* with the same value are specified, the right-most option of that type is kept. For example, don't specify **("FileAttrib:H", "FileAttrib:R")** because only Read-only is evaluated. Instead specify **("FileAttrib:HR")** and both Hidden and Read-only attributes are kept on the destination computer. <ul><li>**Security**: Keeps the destination object's security descriptor if it exists.</li><li>**TimeFields**: Keeps the destination object's time stamps. This parameter is for files only.</li><li>**FileAttrib:\<Letter\>**: Keeps the destination object's attribute value, either **ON** or **OFF**, for the specified set of file attributes. This parameter is for files only. The following are case-insensitive, but USMT will ignore any values that are invalid, repeated, or if there's a space after **FileAttrib:**. Any combination of the following attributes can be specified: <ul><li>**A** = Archive</li><li>**C** = Compressed</li><li>**E** = Encrypted</li><li>**H** = Hidden</li><li>**I** = Not Content Indexed</li><li>**O** = Offline</li><li>**R** = Read-Only</li><li>**S** = System</li><li>**T** = Temporary</li></ul></li></ul> |

- **MergeMultiSzContent**

    The **MergeMultiSzContent** function merges the **MULTI-SZ** content of the registry values that are enumerated by the parent **\<ObjectSet\>** element with the content of the equivalent registry values that already exist on the destination computer. `Instruction` and `String` either remove or add content to the resulting **MULTI-SZ**. Duplicate elements are removed.

    Syntax: `MergeMultiSzContent (Instruction,String,Instruction,String,…)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    | *Instruction* | Yes | Can be one of the following values: <ul><li>**Add**. Adds the corresponding String to the resulting MULTI-SZ if it isn't already there.</li><li>**Remove**. Removes the corresponding String from the resulting MULTI-SZ.</li></ul> |
    | *String* | Yes | The string to be added or removed. |

- **MergeDelimitedContent**

    The **MergeDelimitedContent** function merges the content of the registry values that are enumerated by the parent **\<ObjectSet\>** element with the content of the equivalent registry values that already exist on the destination computer. The content is considered a list of elements separated by one of the characters in the Delimiters parameter. Duplicate elements are removed.

    Syntax: `MergeDelimitedContent(Delimiters,Instruction,String,…)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    | *Delimiters* | Yes | A single character that is used to separate the content of the object that is being processed. The content is considered as a list of elements that is separated by the *Delimiters*.<br>For example, `"."` separates the string based on a period. |
    | *Instruction* | Yes | Can be one of the following values: <ul><li>**Add**: Adds *String* to the resulting MULTI-SZ if it isn't already there.</li><li>**Remove**: Removes *String* from the resulting MULTI-SZ.</li></ul> |
    | *String* | Yes | The string to be added or removed. |

## \<description\>

The **\<description\>** element defines a description for the component but doesn't affect the migration.

- **Number of occurrences:** zero or one

- **Parent elements:** [\<component\>](#component)

- **Child elements:** none

Syntax:

```xml
<description>ComponentDescription</description>
```

|Setting|Required?|Value|
|--- |--- |--- |
|*ComponentDescription*|Yes|The description of the component.|

The following code sample shows how the \<description\> element defines the "My custom component" description:

```xml
<description>My custom component<description>
```

## \<destinationCleanup\>

The **\<destinationCleanup\>** element deletes objects, such as files and registry keys, from the destination computer before applying the objects from the source computer. This element is evaluated only when the **LoadState** tool is run on the destination computer. That is, this element is ignored by the **ScanState** tool.

> [!IMPORTANT]
> Use this option with extreme caution because it will delete objects from the destination computer.

For each **\<destinationCleanup\>** element, there can be multiple **\<objectSet\>** elements. A common use for this element is if there's a missing registry key on the source computer but the component still needs to be migrated. In this case, all of the component's registry keys can be deleted before migrating the source registry keys. Deleting all of the component's registry keys ensures that if there's a missing key on the source computer, it will also be missing on the destination computer.

- **Number of occurrences:** Unlimited

- **Parent elements:** [\<rules\>](#rules)

- **Child elements:** [\<objectSet\>](#objectset) (The destination computer deletes all child elements.)

Syntax:

```xml
<destinationCleanup filter=ScriptInvocation>
</destinationCleanup>
```

|Setting|Required?|Value|
|--- |--- |--- |
|filter|Yes|A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example, `MyScripts.AScript ("Arg1","Arg2")`.<br><br>The script is called for each object that is enumerated by the object sets in the include rule. The filter script returns a Boolean value. If the return value is **TRUE**, the object is migrated. If it's **FALSE**, it isn't migrated.|

For example:

```xml
<destinationCleanup>
   <objectSet>
      <pattern type="Registry">HKCU\Software\Lotus\123\99.0\DDE Preferences\* [*]</pattern>
      <pattern type="Registry">HKCU\Software\Lotus\123\99.0\Find Preferences\* [*]</pattern>
   </objectSet>
</destinationCleanup>
```

## \<detect\>

Although the **\<detect\>** element is still supported, Microsoft recommends no longer using the **\<detect\>** element because it might be deprecated in future versions of USMT. If the **\<detect\>** element is deprecated, it would require a rewrite of any scripts that use the **\<detect\>** element. Instead, Microsoft recommends using the **[\<detection\>](#detection)** element. The **\<detection\>** element allows for more clearly formulated complex Boolean statements

The **\<detect\>** element can be used to determine if the component is present on a system. If all child **\<detect\>** elements within a **\<detect\>** element resolve to **TRUE**, then the **\<detect\>** element resolves to **TRUE**. If any child **\<detect\>** elements resolve to **FALSE**, then their parent **\<detect\>** element resolves to **FALSE**. If there's no **\<detect\>** element section, then USMT assumes that the component is present.

For each **\<detect\>** element there can be multiple children **\<condition\>** or **\<objectSet\>** elements, which are logically joined by an **OR** operator. If at least one **\<condition\>** or **\<objectSet\>** element evaluates to **TRUE**, then the **\<detect\>** element evaluates to **TRUE**.

- **Number of occurrences:** unlimited

- **Parent elements:** [\<detects\>](#detects), [\<namedElements\>](#namedelements)

- **Required child elements:** [\<condition\>](#condition)

- **Optional child elements:** [\<objectSet\>](#objectset)

Syntax:

```xml
<detect name="ID" context="User|System|UserAndSystem">
</detect>
```

|Setting|Required?|Value|
|--- |--- |--- |
| name | Yes, when **\<detect\>** is a child to **\<namedElements\>**<br>No, when **\<detect\>** is a child to \<detects\> | When *ID* is specified, any child elements aren't processed. Instead, any other **\<detect\>** elements with the same name that are declared within the **\<namedElements\>** element are processed. |
| context | No<br>(default = UserAndSystem) | Defines the scope of this parameter, which is whether to process this component in the context of the specific user, across the entire operating system, or both.<br>The largest possible scope is set by the component element. For example, if a **\<component\>** element has a context of **User**, and a **\<rules\>** element had a context of **UserAndSystem**, then the **\<rules\>** element would act as though it had a context of **User**. If the **\<rules\>** element had a context of **System**, it would act as though the **\<rules\>** element weren't there. <ul><li>**User**: Evaluates the variables for each user.</li><li>**System**: Evaluates the variables only once for the system.</li><li>**UserAndSystem**: Evaluates the variables for the entire operating system and each user.</li></ul> |

For examples, see the examples for [\<detection\>](#detection).

## \<detects\>

Although the **\<detects\>** element is still supported, Microsoft recommends no longer using the **\<detects\>** element because it might be deprecated in future versions of USMT. If the **\<detects\>** element is deprecated, it would require a rewrite of any scripts that use the **\<detects\>** element. Instead, Microsoft recommends using the **[\<detection\>](#detection)** element if the parent element is **\<role\>** or **\<namedElements\>**, or use the **[\<conditions\>](#conditions)** element if the parent element is **\<rules\>**. The **\<detection\>** element allows for more clearly formulated complex Boolean statements and the **\<conditions\>** element allows for formulation of complex Boolean statements.

The **\<detects\>** element is a container for one or more **\<detect\>** elements. If all of the child **\<detect\>** elements within a **\<detects\>** element resolve to **TRUE**, then **\<detects\>** resolves to **TRUE**. If any of the child **\<detect\>** elements resolve to **FALSE**, then **\<detects\>** resolves to **FALSE**. To prevent the **\<detects\>** element to be written within a component, create the **\<detects\>** element under the **\<namedElements\>** element, and then refer to it. If there's no **\<detects\>** element section, then USMT assumes that the component is present. The results from each **\<detects\>** element are joined together by the **OR** operator to form the rule used to detect the parent element.

Syntax:

```xml
<detects name="ID" context="User|System|UserAndSystem">
</detects>
```

- **Number of occurrences:** Unlimited.

- **Parent elements:** [\<role\>](#role), [\<rules\>](#rules), [\<namedElements\>](#namedelements)

- **Required child elements:** [\<detect\>](#detect)

|Setting|Required?|Value|
|--- |--- |--- |
| name | Yes, when \<detects\> is a child to **\<namedElements\>**<br>No, when \<detects\> is a child to **\<role\>** or **\<rules\>** | When *ID* is specified, no child **\<detect\>** elements are processed. Instead, any other **\<detects\>** elements with the same name that are declared within the **\<namedElements\>** element are processed. |
| context | No<br>(default = UserAndSystem) | Defines the scope of this parameter: whether to process this component in the context of the specific user, across the entire operating system, or both.<br>The largest possible scope is set by the **\<component element\>**. For example, if a **\<component\>** element has a context of **User** and a **\<rules\>** element had a context of **UserAndSystem**, then the **\<rules\>** element would act as though it had a context of **User**. If the **\<rules\>** element had a context of **System**, it would act as though the **\<rules\>** element weren't there. <ul><li>**User**: Evaluates the variables for each user.</li><li>**System**: Evaluates the variables only once for the system.</li><li>**UserAndSystem**: Evaluates the variables for the entire operating system and each user.</li></ul><br>The context parameter is ignored for **\<detects\>** elements that are inside **\<rules\>** elements. |

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

## \<detection\>

The  **\<detection\>** element is a container for one **\<conditions\>** element. The result of the child **\<condition\>** elements, located underneath the **\<conditions\>** element, determines the result of this element. For example, if all of the child **\<conditions\>** elements within the  **\<detection\>** element resolve to **TRUE**, then the  **\<detection\>** element resolves to **TRUE**. If any of the child **\<conditions\>** elements resolve to **FALSE**, then the  **\<detection\>** element resolves to **FALSE**.

In addition, the results from each  **\<detection\>** section within the **\<role\>** element are joined together by the **OR** operator to form the detection rule of the parent element. That is, if one of the  **\<detection\>** sections resolve to **TRUE**, then the **\<role\>** element is processed. Otherwise, the **\<role\>** element isn't processed.

Use the  **\<detection\>** element under the **\<namedElements\>** element to not write within a component. Then include a matching  **\<detection\>** section under the **\<role\>** element to control whether the component is migrated. If there isn't a  **\<detection\>** section for a component, then USMT assumes that the component is present.

- **Number of occurrences:** Unlimited.

- **Parent elements:** [\<role\>](#role), [\<namedElements\>](#namedelements)

- **Child elements:** [\<conditions\>](#conditions)

Syntax:

```xml
<detection name="ID" context="User|System|UserAndSystem">
</detection>
```

|Setting|Required?|Value|
|--- |--- |--- |
| name | <ul><li>Yes, when **\<detection\>** is declared under **\<namedElements\>**</li><li>Optional, when declared under **\<role\>**</li></ul> | If declared, the content of the  **\<detection\>** element is ignored and the content of the  **\<detection\>** element with the same name that is declared in the **\<namedElements\>** element is evaluated. |
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

## \<displayName\>

The **\<displayName\>** element is a required field within each **\<component\>** element.

- **Number of occurrences:** once for each component

- **Parent elements:** [\<component\>](#component)

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

## \<environment\>

The **\<environment\>** element is a container for **\<variable\>** elements in which variables can be defined for use in an **.xml** file. All environment variables defined this way are private. That is, they're available only for their child components and the component in which they were defined. For two example scenarios, see [Examples](#examples).

- **Number of occurrences:** unlimited

- **Parent elements:** [\<role\>](#role), [\<component\>](#component), [\<namedElements\>](#namedelements)

- **Required child elements:** [\<variable\>](#variable)

- **Optional child elements:** [\<conditions\>](#conditions)

Syntax:

```xml
<environment name="ID" context="User|System|UserAndSystem">
</environment>
```

|Setting|Required?|Value|
|--- |--- |--- |
| name | Yes, when **\<environment\>** is a child of **\<namedElements\>**<br>No, when **\<environment\>** is a child of **\<role\>** or **\<component\>** | When declared as a child of the **\<role\>** or **\<component\>** elements, if *ID* is declared, USMT ignores the content of the **\<environment\>** element and the content of the **\<environment\>** element with the same name declared in the **\<namedElements\>** element is processed. |
| context | No<br>(default = UserAndSystem) | Defines the scope of this parameter: whether to process this component in the context of the specific user, across the entire operating system, or both.<br>The largest possible scope is set by the **\<component\>** element. For example, if a **\<component\>** element has a context of **User** and a **\<rules\>** element had a context of **UserAndSystem**, then the **\<rules\>** element would act as though it had a context of **User**. If the **\<rules\>** element had a context of **System**, it would act as though **\<rules\>** weren't there. <ul><li>**User**: Evaluates the variables for each user.</li><li>**System**: Evaluates the variables only once for the system.</li><li>**UserAndSystem**: Evaluates the variables for the entire operating system and each user.</li></ul> |

## Examples

### Example scenario 1

In this scenario, generate the location of objects at run time depending on the configuration of the destination computer. For example, if an application writes data in the directory where the application is installed, and users can install the application anywhere on the computer. If the application writes a registry value `hklm\software\companyname\install [path\]` and then updates this value with the location where the application is installed, then the only way to migrate the required data correctly is to define an environment variable. For example:

```xml
<environment>
   <variable name="INSTALLPATH">
      <script>MigXmlHelper.GetStringContent("Registry","\software\companyname\install [path]")</script>
   </variable>
</environment>
```

Then an include rule can be used as follows. Any of the [\<script\> functions](#script-functions) can be used to perform similar tasks.

```xml
<include>
   <objectSet>
      <pattern type="File">%INSTALLPATH%\ [*.xyz]</pattern>
   </objectSet>
</include>
```

Second, registry values can be filtered to contain the data that is needed. The following example extracts the first string (before the separator "`,`") in the value of the registry `Hklm\software\companyname\application\ [Path\]`.

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

In this scenario, five files named `File1.txt`, `File2.txt`, and so on, need to be migrated from `%SYSTEMDRIVE%\data\userdata\dir1\dir2\`. To migrate these files, the following **\<include\>** rule must be in an **.xml** file:

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

Instead of typing the path five times, create a variable for the location as follows:

```xml
<environment>
   <variable name="DATAPATH">
      <text>%SYSTEMDRIVE%\data\userdata\dir1\dir2 </text>
      </variable>
</environment>
```

Then, specify the variable in an **\<include\>** rule as follows:

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

## \<exclude\>

The **\<exclude\>** element determines what objects aren't migrated, unless there's a more specific **\<include\>** element that migrates an object. If there's an **\<include\>** and **\<exclude\>** element for the same object, the object is included. For each **\<exclude\>** element, there can be multiple child **\<objectSet\>** elements.

- **Number of occurrences:** Unlimited

- **Parent elements:** [\<rules\>](#rules)

- **Child elements:** [\<objectSet\>](#objectset)

- **Helper functions:** The following [\<exclude\> filter functions](#include-and-exclude-filter-functions) can be used with this element: `CompareStringContent`, `IgnoreIrrelevantLinks`, `AnswerNo`, `NeverRestore`, and `SameRegContent`.

Syntax:

```xml
<exclude filter="ScriptInvocation">
</exclude>
```

|Setting|Required?|Value|
|--- |--- |--- |
|filter|No<br>(default = No)|A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example, `MyScripts.AScript ("Arg1","Arg2")`.<br><br>The script is called for each object that is enumerated by the object sets in the include rule. The filter script returns a Boolean value. If the return value is **TRUE**, the object is migrated. If it's **FALSE**, it isn't migrated.|

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

## \<excludeAttributes\>

The **\<excludeAttributes\>** element can be used to determine which parameters associated with an object aren't migrated. If there are conflicts between the **\<includeAttributes\>** and **\<excludeAttributes\>** elements, the most specific pattern determines the patterns that aren't migrated. If an object doesn't have an **\<includeAttributes\>** or **\<excludeAttributes\>** element, then all of its parameters are migrated.

- **Number of occurrences:** Unlimited

- **Parent elements:** [\<rules\>](#rules)

- **Child elements:** [\<objectSet\>](#objectset)

Syntax:

```xml
<excludeAttributes attributes="Security|TimeFields|Security,TimeFields">
</excludeAttributes>
```

|Setting|Required?|Value|
|--- |--- |--- |
| attributes | Yes | Specifies the attributes to be excluded. Either one of the following or both can be specified. If specifying both, they need to be separated by quotes. For example, `"Security","TimeFields"`: <ul><li>Security can be one of Owner, Group, DACL, or SACL.</li><li>TimeFields can be one of CreationTime, LastAccessTime and LastWrittenTime</li></ul> |

Example:

```xml
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/miguser">
<!-- This component migrates the files in the Video folder -->
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

## \<extensions\>

The \<extensions\> element is a container for one or more \<extension\> elements.

- **Number of occurrences:** zero or one

- **Parent elements:** [\<component\>](#component)

- **Required child elements:** [\<extension\>](#extension)

Syntax:

```xml
<extensions>
</extensions>
```

## \<extension\>

The \<extension\> element can be used to specify documents of a specific extension.

- **Number of occurrences:** unlimited

- **Parent elements:** [\<extensions\>](#extensions)

- **Child elements:** none

Syntax:

```xml
<extension>FilenameExtension</extension>
```

|Setting|Required?|Value|
|--- |--- |--- |
|*FilenameExtension*|Yes|A file name extension.|

For example, to migrate all \*.doc files from the source computer, specifying the following code under the **\<component\>** element:

```xml
<extensions> 
        <extension>doc</extension> 
<extensions> 
```

is the same as specifying the following code below the **\<rules\>** element:

```xml
<include> 
        <objectSet> 
                <script>MigXmlHelper.GenerateDrivePatterns ("* [*.doc]", "Fixed")</script> 
        </objectSet> 
</include>
```

For another example of how to use the \<extension\> element, see the example for [\<excludeAttributes\>](#excludeattributes).

## \<externalProcess\>

The \<externalProcess\> element can be used to run a command line during the migration process. For example, a run a command might need to run after the **LoadState** process completes.

- **Number of occurrences:** Unlimited

- **Parent elements:** [\<rules\>](#rules)

- **Required child elements:** [\<commandLine\>](#commandline)

Syntax:

```xml
<externalProcess when="pre-scan|scan-success|post-scan|pre-apply|apply-success|post-apply">
</externalProcess>
```

|Setting|Required?|Value|
|--- |--- |--- |
| when | Yes | Indicates when the command line should be run. This value can be one of the following values: <ul><li>**pre-scan** before the scanning process begins.</li><li>**scan-success** after the scanning process finishes successfully.</li><li>**post-scan** after the scanning process finished, whether it was successful or not.</li><li>**pre-apply** before the apply process begins.</li><li>**apply-success** after the apply process finishes successfully.</li><li>**post-apply** after the apply process finished, whether it was successful or not.</li></ul> |

For an example of how to use the \<externalProcess\> element, see the example for [\<excludeAttributes\>](#excludeattributes).

## \<icon\>

This element is an internal USMT element. Don't use this element.

## \<include\>

The **\<include\>** element determines what to migrate, unless there's a more specific [\<exclude\>](#exclude) rule. A script can be specified to be more specific to extend the definition of what want needs to be collected. For each **\<include\>** element, there can be multiple **\<objectSet\>** elements.

- **Number of occurrences:** Unlimited

- **Parent elements:** [\<rules\>](#rules)

- **Required child element:** [\<objectSet\>](#objectset)

- **Helper functions:** The following [\<include\> filter functions](#include-and-exclude-filter-functions) can be used with this element: `CompareStringContent`, `IgnoreIrrelevantLinks`, `AnswerNo`, and `NeverRestore`.

Syntax:

```xml
<include filter="ScriptInvocation">
</include>
```

|Setting|Required?|Value|
|--- |--- |--- |
| filter | No.<br>If this parameter isn't specified, then all patterns that are inside the child **\<objectSet\>** element are processed. | A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example, `MyScripts.AScript ("Arg1","Arg2")`.<br>The script is called for each object that is enumerated by the object sets in the **\<include\>** rule. The filter script returns a Boolean value. If the return value is **TRUE**, the object is migrated. If it's **FALSE**, it isn't migrated. |

The following example is from the `MigUser.xml` file:

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

### \<include\> and **\<exclude\>** filter functions

The following functions return a Boolean value. They can be used to migrate certain objects based on when certain conditions are met.

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

    This filter screens out the **.lnk** files that point to an object that isn't valid on the destination computer. The screening takes place on the destination computer, so all **.lnk** files are saved to the store during **ScanState**. Then they're screened out when the **LoadState** tool runs.

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

    This function can be used to collect the specified objects from the source computer but then not migrate the objects to the destination computer. When run with the **ScanState** tool, this function evaluates to **TRUE**. When run with the **LoadState** tool, this function evaluates to **FALSE**. This function might be used to check an object's value on the destination computer but there's no intention to migrate the object to the destination.

    Syntax: `NeverRestore()`

    In the following example, HKCU\\Control Panel\\International \[Locale\] is included in the store, but it isn't migrated to the destination computer:

    ```xml
    <include filter="MigXmlHelper.NeverRestore()">
       <objectSet>
          <pattern type="Registry">HKCU\Control Panel\International [Locale]</pattern>
       </objectSet>
    </include>
    ```

## \<includeAttributes\>

The **\<includeAttributes\>** element can be used to determine whether certain parameters associated with an object are migrated along with the object itself. If there are conflicts between the **\<includeAttributes\>** and **\<excludeAttributes\>** elements, the most specific pattern determines which parameters are migrated. If an object doesn't have an **\<includeAttributes\>** or **\<excludeAttributes\>** element, then all of its parameters are migrated.

- **Number of occurrences:** unlimited

- **Parent elements:** [\<rules\>](#rules)

- **Child elements:** [\<objectSet\>](#objectset)

Syntax:

```xml
<includeAttributes attributes="Security|TimeFields|Security,TimeFields">
</includeAttributes>
```

|Setting|Required?|Value|
|--- |--- |--- |
| attributes | Yes | Specifies the attributes to be included with a migrated object. Either one of the following or both can be specified. If specifying both, they need to be separated by quotes. For example, `"Security","TimeFields"`: <ul><li>Security can be one of the following values: <ul><li>**Owner**: The owner of the object (SID).</li><li>**Group**: The primary group for the object (SID).</li><li>**DACL** (discretionary access control list): An access control list that is controlled by the owner of an object and that specifies the access particular users or groups can have to the object.</li><li>**SACL** (system access control list): An ACL that controls the generation of audit messages for attempts to access a securable object. The ability to get or set an object&#39;s SACL is controlled by a privilege typically held only by system administrators.</li></ul></li><li>TimeFields can be one of the following values: <ul><li>**CreationTime**: Specifies when the file or directory was created.</li><li>**LastAccessTime**: Specifies when the file is last read from, written to, or for executable files, run.</li><li>**LastWrittenTime**: Specifies when the file is last written to, truncated, or overwritten.</li></ul></li></ul> |

For an example of how to use the **\<includeAttributes\>** element, see the example for [\<excludeAttributes\>](#excludeattributes).

## \<library\>

This element is an internal USMT element. Don't use this element.

## \<location\>

The **\<location\>** element defines the location of the **\<object\>** element.

- **Number of occurrences:** once for each **\<object\>**

- **Parent elements:** [\<object\>](#object)

- **Child elements:** [\<script\>](#script)

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
      <location type="Registry">%HklmWowSoftware%\Microsoft\Office\16.0\Common\Migration\Office [UpgradeVersion]</location>
      <attributes>DWORD</attributes>
      <bytes>0B000000</bytes>
   </object>
   <object>
      <location type="Registry">%HklmWowSoftware%\Microsoft\Office\16.0\Common\Migration\Office [Lang]</location>
      <attributes>DWORD</attributes>
      <bytes>00000000</bytes>
   </object>
</addObjects>
```

## \<locationModify\>

The **\<locationModify\>** element can be used to change the location and name of an object before the object is migrated to the destination computer. The **\<locationModify\>** element is processed only when the **LoadState** tool is run on the destination computer. In other words, this element is ignored by the **ScanState** tool. The **\<locationModify\>** element creates the appropriate folder on the destination computer if it doesn't already exist.

**Number of occurrences:** Unlimited

- **Parent elements:** [\<rules\>](#rules)

- **Required child element:** [\<objectSet\>](#objectset)

- **Helper functions:** The following [\<locationModify\> functions](#locationmodify-functions) can be used with this element: `ExactMove`, `RelativeMove`, and `Move`.

Syntax:

```xml
<locationModify script="ScriptInvocation">
</locationModify>
```

|Setting|Required?|Value|
|--- |--- |--- |
|script|Yes|A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example, `MyScripts.AScript ("Arg1","Arg2")`.<br><br>The script is called for each object that is enumerated by the object sets in the include rule. The filter script returns a Boolean value. If the return value is **TRUE**, the object is migrated. If it's **FALSE**, it isn't migrated.|

The following example is from the `MigApp.xml` file:

```xml
<locationModify script="MigXmlHelper.RelativeMove('%CSIDL_APPDATA%\Microsoft\Office','%CSIDL_APPDATA%')">
   <objectSet>
      <pattern type="File">%CSIDL_APPDATA%\Microsoft\Office\ [Access10.pip]</pattern>
   </objectSet>
</locationModify>
```

### \<locationModify\> functions

The following functions change the location of objects as they're migrated when using the **\<locationModify\>** element. These functions are called for every object that the parent **\<objectSet\>** element is enumerating. The **\<locationModify\>** element creates the appropriate folder on the destination computer if it doesn't already exist.

- **ExactMove**

  The ExactMove function moves all of the objects that are matched by the parent **\<objectSet\>** element into the given *ObjectEncodedLocation*. This function can be used to move a single file to a different location on the destination computer. If the destination location is a node, all of the matching source objects are written to the node without any subdirectories. If the destination location is a leaf, the migration engine migrates all of the matching source objects to the same location. If a collision occurs, the normal collision algorithms apply.

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

    The RelativeMove function can be used to collect and move data. Environment variables can be used in source and destination roots, but they might be defined differently on the source and destination computers.

    Syntax: `RelativeMove(SourceRoot,DestinationRoot)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*SourceRoot*|Yes|The location where the objects are moved from. Any source objects that are enumerated by the parent **\<objectSet\>** element that aren't in this location aren't moved.|
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

## \<\_locDefinition\>

This element is an internal USMT element. Don't use this element.

## \<manufacturer\>

The **\<manufacturer\>** element defines the manufacturer for the component, but doesn't affect the migration.

- **Number of occurrences:** zero or one

- **Parent elements:** [\<component\>](#component)

- **Child elements:** none

Syntax:

```xml
<manufacturer>Name</manufacturer>
```

|Setting|Required?|Value|
|--- |--- |--- |
|*Name*|Yes|The name of the manufacturer for the component.|

## \<merge\>

The **\<merge\>** element determines what happens when a collision occurs. A collision is when an object that is migrated is already present on the destination computer. If this element isn't specified, the default behavior for the registry is for the source object to overwrite the destination object. The default behavior for files is for the source file to be renamed to `OriginalFileName(1).OriginalExtension`. This element specifies only what should be done when a collision occurs. It doesn't include objects. Therefore, for the objects to migrate, **\<include\>** rules must be specified along with the **\<merge\>** element. When an object is processed and a collision is detected, USMT selects the most specific merge rule. It then applies the rule to resolve the conflict. For example, if a **\<merge\>** rule `C:\* [*]` is set to **\<sourcePriority\>** and a **\<merge\>** rule `C:\subfolder\* [*]` is set to **\<destinationPriority\>**, then USMT would use the **\<destinationPriority\>** rule because it's the more specific.

For an example of this element, see [Conflicts and precedence](usmt-conflicts-and-precedence.md).

- **Number of occurrences:** Unlimited

- **Parent elements:** [\<rules\>](#rules)

- **Required child element:** [\<objectSet\>](#objectset)

- **Helper functions:** The following [\<merge\> functions](#merge-functions) can be used with this element: `SourcePriority`, `DestinationPriority`, `FindFilePlaceByPattern`, `LeafPattern`, `NewestVersion`, `HigherValue()`, and `LowerValue()`.

Syntax:

```xml
<merge script="ScriptInvocation">
</merge>
```

|Setting|Required?|Value|
|--- |--- |--- |
|script|Yes|A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example, `MyScripts.AScript ("Arg1","Arg2")`.<br><br>The script is called for each object that is enumerated by the object sets in the **\<include\>** rule. The filter script returns a Boolean value. If the return value is **TRUE**, the object is migrated. If it's **FALSE**, it isn't migrated.|

The following example is from the `MigUser.xml` file:

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

### \<merge\> functions

These functions control how collisions are resolved.

- **DestinationPriority**

    Specifies to keep the object that is on the destination computer and not migrate the object from the source computer.

    For example:

    ```xml
    <merge script="MigXmlHelper.DestinationPriority()">
         <objectSet>
              <pattern type="Registry">HKCU\Software\Microsoft\Office\16.0\PhotoDraw\ [MyPictures]</pattern>
              <pattern type="Registry">HKCU\Software\Microsoft\Office\16.0\PhotoDraw\Settings\ [PicturesPath]</pattern>
              <pattern type="Registry">HKCU\Software\Microsoft\Office\16.0\PhotoDraw\Settings\ [AdditionalPlugInPath]</pattern>
         </objectSet>
    </merge>
    ```

- **FindFilePlaceByPattern**

    The FindFilePlaceByPattern function saves files with an incrementing counter when a collision occurs. It's a string that contains one of each construct: **\<F\>**, **\<E\>**, **\<N\>** in any order.

    Syntax: `FindFilePlaceByPattern(FilePattern)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    | *FilePattern* | Yes | <ul><li>**\<F\>** is replaced by the original file name.</li><li>**\<N\>** is replaced by an incrementing counter until there's no collision with the objects on the destination computer.</li><li>**\<E\>** is replaced by the original file name extension.</li></ul><br>For example, `<F> (<N>).<E>` changes the source file `MyDocument.doc` into `MyDocument (1).doc` on the destination computer. |

- **NewestVersion**

    The NewestVersion function resolves conflicts on the destination computer based on the version of the file.

    Syntax: `NewestVersion(VersionTag)`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*VersionTag*|Yes|The version field that is checked. This field can be `FileVersion` or `ProductVersion`. The file with the highest *VersionTag* version determines which conflicts are resolved based on the file's version. For example, if `Myfile.txt` contains FileVersion 1 and the same file on the destination computer contains FileVersion 2, the file on destination remains.|

- **HigherValue()**

    This function can be used for merging registry values. The registry values are evaluated as numeric values, and the one with the higher value determines which registry values are merged.

- **LowerValue()**

    This function can be used for merging registry values. The registry values are evaluated as numeric values and the one with the lower value determines which registry values are merged.

- **SourcePriority**

    Specifies to migrate the object from the source computer, and to delete the object that is on the destination computer.

    For example:

    ```xml
    <merge script="MigXmlHelper.SourcePriority()">
     <objectSet>
       <pattern type="Registry">%HklmWowSoftware%\Microsoft\Office\14.0\Common\Migration\Publisher [UpgradeVersion]</pattern>
       <pattern type="Registry">%HklmWowSoftware%\Microsoft\Office\15.0\Common\Migration\Publisher [UpgradeVersion]</pattern>
       <pattern type="Registry">%HklmWowSoftware%\Microsoft\Office\16.0\Common\Migration\Publisher [UpgradeVersion]</pattern>
     </objectSet>
    </merge>
    ```

## \<migration\>

The **\<migration\>** element is the single root element of a migration **.xml** file and is required. Each **.xml** file must have a unique migration urlid. The urlid of each file that is specified on the command line must be unique. The urlids must be unique because USMT uses the urlid to define the components within the file.

- **Number of occurrences:** one

- **Parent elements:** none

- **Required child elements:** [\<component\>](#component)

- **Optional child elements:** [\<library\>](#library), [\<namedElements\>](#namedelements)

Syntax:

```xml
<migration urlid="*UrlID/*Name">
</migration>
```

|Setting|Required?|Value|
|--- |--- |--- |
|urlid|Yes|*UrlID* is a string identifier that uniquely identifies this **.xml** file. This parameter must be a no-colon-name as defined by the XML Namespaces specification. Each migration **.xml** file must have a unique urlid. If two migration **.xml** files have the same urlid, the second **.xml** file that is specified on the command line isn't processed. For more information about XML Namespaces, see [Use XML Namespaces](/previous-versions/windows/desktop/ms754539(v=vs.85)).|
|Name|No|Although not required, it's good practice to use the name of the **.xml** file.|

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
|valueToCompare|The value that is being compared. For example:<br>Date: "2023/05/15-2020/05/17", "2023/05/15"<br>Size: A numeral with B, KB, MB, or GB at the end. "5GB", "1KB-1MB"|

```xml
<component context="System"  type="Application">
<displayName>File_size</displayName>
<role role="Data">

   <rules>
        <include filter='MigXmlHelper.FileProperties("dateAccessed","range","2023/05/15-2020/05/17")'>
         <objectSet>
         <pattern type="File">%SYSTEMDRIVE%\DOCS\* [*]</pattern>
         </objectSet>
      </include>
   </rules>
</role>
</component>
```

## \<namedElements\>

The **\<namedElements\>** element can be used to define named elements. These elements can be used in any component throughout the **.xml** file. For an example of how to use this element, see the `MigApp.xml` file.

Syntax:

```xml
<namedElements>
</namedElements>
```

- **Number of occurrences:** Unlimited

- **Parent elements:** [\<migration\>](#migration)

- **Child elements:** [\<environment\>](#environment), [\<rules\>](#rules), [\<conditions\>](#conditions), [\<detection\>](#detection), [\<detects\>](#detects), [\<detect\>](#detect)

For an example of this element, see the `MigApp.xml` file.

## \<object\>

The **\<object\>** element represents a file or registry key.

- **Number of occurrences:** Unlimited

- **Parent elements:** [\<addObjects\>](#addobjects)

- **Required child elements:** [\<location\>](#location), [\<attributes\>](#attributes)

- **Optional child elements:** [\<bytes\>](#bytes)

Syntax:

```xml
<object>
</object>
```

The following example is from the `MigApp.xml` file:

```xml
<addObjects>
   <object>
      <location type="Registry">%HklmWowSoftware%\Microsoft\Office\16.0\Common\Migration\Office [UpgradeVersion]</location>
      <attributes>DWORD</attributes>
      <bytes>0B000000</bytes>
   </object>
   <object>
      <location type="Registry">%HklmWowSoftware%\Microsoft\Office\16.0\Common\Migration\Office [Lang]</location>
      <attributes>DWORD</attributes>
      <bytes>00000000</bytes>
      </object>
</addObjects>
```

## \<objectSet\>

The **\<objectSet\>** element contains a list of object patterns; for example, file paths, registry locations, and so on. Any child **\<conditions\>** elements are evaluated first. If all child **\<conditions\>** elements return **FALSE**, the **\<objectSet\>** element evaluates to an empty set. For each parent element, there can be only multiple **\<objectSet\>** elements.

- **Number of occurrences:** Unlimited

- **Parent elements:** [\<variable\>](#variable), [\<content\>](#content), [\<include\>](#include), [\<exclude\>](#exclude), [\<merge\>](#merge), [\<contentModify\>](#contentmodify), [\<locationModify\>](#locationmodify), [\<destinationCleanup\>](#destinationcleanup), [\<includeAttributes\>](#includeattributes), [\<excludeAttributes\>](#excludeattributes), [\<unconditionalExclude\>](#unconditionalexclude), [\<detect\>](#detect)

- **Required child elements:** either [\<script\>](#script) or [\<pattern\>](#pattern)

- **Optional child elements:** [\<content\>](#content), [\<conditions\>](#conditions), [\<condition\>](#condition)

Syntax:

```xml
<objectSet>
</objectSet>
```

The following example is from the `MigUser.xml` file:

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

## \<path\>

This element is an internal USMT element. Don't use this element.

## \<paths\>

This element is an internal USMT element. Don't use this element.

## \<pattern\>

This element can be used to specify multiple objects. Multiple **\<pattern\>** elements can be used for each **\<objectSet\>** element and they're combined. If specifying files, Microsoft recommends using `GenerateDrivePatterns` with **\<script\>** instead. `GenerateDrivePatterns` is basically the same as a **\<pattern\>** rule, without the drive letter specification. For example, the following two lines of code are similar:

```xml
<pattern type="File">C:\Folder\* [Sample.doc]</pattern>
<script>MigXmlHelper.GenerateDrivePatterns("\Folder\* [Sample.doc]","Fixed"</script>
```

- **Number of occurrences:** Unlimited

- **Parent elements:** [\<objectSet\>](#objectset)

- **Child elements:** none but *Path* \[*object*\] must be valid.

Syntax:

```xml
<pattern type="typeID">Path [object]</pattern>
```

|Setting|Required?|Value|
|--- |--- |--- |
| type | Yes | *typeID* can be Registry, File, or Ini. If *typeId* is Ini, then a space between *Path* and *object* isn't allowed. For example, the following format is correct when type="Ini":<br>**\<pattern type="Ini"\>%WinAmp5InstPath%\Winamp.ini&#124;WinAmp[keeponscreen]\</pattern\>** |
| *Path* [*object*] | Yes | A valid registry or file path pattern, followed by at least one space, followed by brackets [] that contain the object to be migrated. <ul><li>*Path* can contain the asterisk (`*`) wildcard character or can be an [Recognized environment variables](usmt-recognized-environment-variables.md). The question mark can't be used as a wildcard character. `HKCU` and `HKLM` can be used to refer to `HKEY_CURRENT_USER` and `HKEY_LOCAL_MACHINE` respectively.</li><li>*Object* can contain the asterisk (`*`) wildcard character. However, the question mark can't be used as a wildcard character. For example:<br> **`C:\Folder\ [*]`** enumerates all files in `C:\Folder` but no subfolders of `C:\Folder`.<br> **`C:\Folder* [*]`** enumerates all files and subfolders of `C:\Folder`.<br> **`C:\Folder\ [*.mp3]`** enumerates all `.mp3` files in `C:\Folder`.<br> **`C:\Folder\ [Sample.doc]`** enumerates only the `Sample.doc` file located in C:\Folder. <div class="alert">**Note**<br>If migrating a file that has a square bracket character ([ or ]) in the file name, a carrot (^) character must be inserted directly before the bracket for it to be valid. For example, if there's a file named "file].txt", `<pattern type="File">c:\documents\mydocs [file^].txt]</pattern>` must be specified instead of `<pattern type="File">c:\documents\mydocs [file].txt]</pattern>`.</div></li></ul> |

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

## \<processing\>

This element can be used to run a script during a specific point within the migration process. Return values aren't expected from the scripts that are specified. If there are return values, they're ignored.

- **Number of occurrences:** unlimited

- **Parent elements:** [\<rules\>](#rules)

- **Required child element:** [\<script\>](#script)

Syntax:

```xml
<processing when="pre-scan|scan-success|post-scan|pre-apply|apply-success|post-apply">
</processing>
```

|Setting|Required?|Value|
|--- |--- |--- |
| when | Yes | Indicates when the script should be run. This value can be one of the following values: <ul><li>**pre-scan** means before the scanning process begins.</li><li>**scan-success** means after the scanning process finishes successfully.</li><li>**post-scan** means after the scanning process finished, whether it was successful or not.</li><li>**pre-apply** means before the apply process begins.</li><li>**apply-success** means after the apply process finishes successfully.</li><li>**post-apply** means after the apply process finished, whether it was successful or not.</li></ul> |

## \<plugin\>

This element is an internal USMT element. Don't use this element.

## \<role\>

The **\<role\>** element is required in a custom **.xml** file. When the **\<role\>** element is specified, a concrete component can be created. The component is defined by the parameters specified at the **\<component\>** level, and with the role that is specified here.

- **Number of occurrences:** Each **\<component\>** can have one, two or three child **\<role\>** elements.

- **Parent elements:** [\<component\>](#component), [\<role\>](#role)

- **Required child elements:** [\<rules\>](#rules)

- **Optional child elements:** [\<environment\>](#environment), [\<detection\>](#detection), [\<component\>](#component), [\<role\>](#role), [\<detects\>](#detects), [\<plugin\>](#plugin)

Syntax:

```xml
<role role="Container|Binaries|Settings|Data">
</role>
```

|Setting|Required?|Value|
|--- |--- |--- |
| role | Yes | Defines the role for the component. Role can be one of: <ul><li>**Container**</li><li>**Binaries**</li><li>**Settings**</li><li>**Data**</li></ul> One of the following items can be specified: <ol><li>Up to three **\<role\>** elements within a **\<component\>** - one "Binaries" role element, one "Settings" role element and one "Data" role element. These parameters don't change the migration behavior - their only purpose is to help categorize the settings that are migrating. These **\<role\>** elements can be nested, but each nested element must be of the same role parameter.</li><li>One "Container" **\<role\>** element within a **\<component\>** element. In this case, any child **\<rules\>** elements can't be specified, only other **\<component\>** elements. And each child **\<component\>** element must have the same type as that of parent **\<component\>** element. For example:</li></ol> <pre class="syntax"><code>\<component context="UserAndSystem" type="Application"\><br>  \<displayName _locID="migapp.msoffice2016"\>Microsoft Office 2016\</displayName\><br>  \<environment name="GlobalEnv" /\><br>  \<role role="Container"\><br>    \<detection name="AnyOffice2016Version" /\><br>    \<detection name="Word2016" /\><br>    \<!--<br> Office 2016 Common Settings<br>  --\><br>     \<component context="UserAndSystem" type="Application"\></code></pre> |

The following example is from the `MigUser.xml` file. For more examples, see the `MigApp.xml` file:

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

## \<rules\>

The **\<rules\>** element is required in a custom **.xml** file. This element contains rules that run during the migration if the parent **\<component\>** element is selected, unless the child **\<conditions\>** element, if present, evaluates to **FALSE**. For each **\<rules\>** element, there can be multiple child **\<rules\>** elements.

- **Number of occurrences:** unlimited

- **Parent elements:** [\<role\>](#role), [\<rules\>](#rules), [\<namedElements\>](#namedelements)

- **Required child elements:** [\<include\>](#include)

- **Optional child elements:** [\<rules\>](#rules), [\<exclude\>](#exclude), [\<unconditionalExclude\>](#unconditionalexclude),[\<merge\>](#merge), [\<contentModify\>](#contentmodify), [\<locationModify\>](#locationmodify), [\<destinationCleanup\>](#destinationcleanup), [\<addObjects\>](#addobjects), [\<externalProcess\>](#externalprocess), [\<processing\>](#processing), [\<includeAttributes\>](#includeattributes), [\<excludeAttributes\>](#excludeattributes), [conditions](#conditions), [\<detects\>](#detects)

Syntax:

```xml
<rules name="ID" context="User|System|UserAndSystem">
</rules>
```

|Setting|Required?|Value|
|--- |--- |--- |
| name | Yes, when **\<rules\>** is a child to **\<namedElements\>**<br>No, when **\<rules\>** is a child to any other element | When *ID* is specified, any child elements aren't processed. Instead, any other **\<rules\>** elements with the same name that are declared within **\<namedElements\>** are processed. |
| context | No<br>(default = UserAndSystem) | Defines the scope of this parameter - whether to process this component in the context of the specific user, across the entire operating system, or both.<br>The largest possible scope is set by the component element. For example, if a **\<component\>** element has a context of **User** and a **\<rules\>** element had a context of **UserAndSystem**, then the **\<rules\>** element would act as though it has a context of **User**. If **\<rules\>** had a context of **System**, it would act as though **\<rules\>** wasn't there. <ul><li>**User**: Evaluates the variables for each user.</li><li>**System**: Evaluates the variables only once for the system.</li><li>**UserAndSystem**: Evaluates the variables for the entire operating system and each user.</li></ul> |

The following example is from the `MigUser.xml` file:

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

## \<script\>

The return value that is required by **\<script\>** depends on the parent element.

**Number of occurrences:** Once for [\<variable\>](#variable), unlimited for [\<objectSet\>](#objectset) and [\<processing\>](#processing)

**Parent elements:** [\<objectSet\>](#objectset), [\<variable\>](#variable), [\<processing\>](#processing)

**Child elements:** none

**Syntax and helper functions:**

- General Syntax: `<script>ScriptWithArguments</script>`

- [GetStringContent](#script-functions) can be used when **\<script\>** is within **\<variable\>**.

    Syntax: `<script>MigXmlHelper.GetStringContent("ObjectType","EncodedLocationPattern", "ExpandContent")</script>`

    Example: `<script>MigXMLHelper.GetStringContent("Registry","HKLM\Software\MyApp\Installer [EXEPATH]")</script>`

- [GenerateUserPatterns](#script-functions) can be used when **\<script\>** is within **\<objectSet\>**.

    Syntax: `<script>MigXmlHelper.GenerateUserPatterns("ObjectType","EncodedLocationPattern","ProcessCurrentUser")</script>`

    Example: `<script>MigXmlHelper.GenerateUserPatterns ("File","%USERPROFILE%\* [*.doc]", "FALSE")</script>`

- [GenerateDrivePatterns](#script-functions) can be used when **\<script\>** is within **\<objectSet\>**.

    Syntax: `<script>MigXmlHelper.GenerateDrivePatterns("PatternSegment","DriveType")</script>`

    Example: `<script>MigXmlHelper.GenerateDrivePatterns("* [sample.doc]", "Fixed")</script>`

- The [Simple executing scripts](#script-functions) can be used with **\<script\>** elements that are within **\<processing\>** elements: AskForLogoff, ConvertToShortFileName, KillExplorer, RemoveEmptyDirectories, RestartExplorer, RegisterFonts, StartService, StopService, SyncSCM.

    Syntax: `<script>MigXmlHelper.ExecutingScript</script>`

    Example: `<script>MigXmlHelper.KillExplorer()</script>`

|Setting|Required?|Value|
|--- |--- |--- |
| *ScriptWithArguments* | Yes | A script followed by any number of string arguments that are separated by a comma and enclosed in parenthesis. For example, `MyScripts.AScript ("Arg1","Arg2")`.<br>The script is called for each object that is enumerated by the object sets in the **\<include\>** rule. The filter script returns a Boolean value. If the return value is **TRUE**, the object is migrated. If it's **FALSE**, it isn't migrated.<br>The return value that is required by **\<script\>** depends on the parent element. <ul><li>When used within **\<variable\>**, the return value must be a string.</li><li>When used within **\<objectSet\>**, the return value must be a two-dimensional array of strings.</li><li>When used within **\<location\>**, the return value must be a valid location that aligns with the type attribute of **\<location\>**. For example, if \<location type="File"\>, the child script element, if specified, must be a valid file location. <div class="alert">**Note**<br>If migrating a file that has a bracket character ([ or ]) in the file name, insert the carrot (^) character directly before the bracket for it to be valid. For example, if there's a file named "file].txt", specify `<pattern type="File">c:\documents\mydocs [file^].txt]</pattern>` instead of `<pattern type="File">c:\documents\mydocs [file].txt]</pattern>`.</div></li></ul> |

Examples:

To migrate the Sample.doc file from any drive on the source computer, use **\<script\>** as follows. If multiple files exist with the same name, all such files get migrated.

```xml
<script>MigXmlHelper.GenerateDrivePatterns("* [sample.doc]", "Fixed")</script> 
```

For more examples of how to use this element, see [Exclude Files and Settings](usmt-exclude-files-and-settings.md), [Reroute Files and Settings](usmt-reroute-files-and-settings.md), and [Custom XML Examples](usmt-custom-xml-examples.md).

### \<script\> functions

The following functions can be used with the **\<script\>** element

- [String and pattern generating functions](#string-and-pattern-generating-functions)

- [Simple executing scripts](#simple-executing-scripts)

### String and pattern generating functions

These functions return either a string or a pattern.

- **GetStringContent**

    GetStringContent can be used with **\<script\>** elements that are within **\<variable\>** elements. If possible, this function returns the string representation of the given object. Otherwise, it returns **NULL**. For file objects this function, always returns **NULL**.

    Syntax: `GetStringContent("ObjectType","EncodedLocationPattern", "ExpandContent")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    | *ObjectType* | Yes | The type of object. Can be Registry or Ini (for an **.ini** file). |
    | *EncodedLocationPattern* | Yes | <ul><li>If type of object is Registry, EncodedLocationPattern must be a valid registry path. For example, `HKLM\SOFTWARE\MyKey[]`.</li><li>If the type of object is Ini, then EncodedLocationPattern must be in the following format:<br>**IniFilePath&#124;SectionName[SettingName]**</li></ul> |
    | *ExpandContent* | No (default=TRUE) | Can be **TRUE** or **FALSE**. If **FALSE**, then the given location isn't expanded before returned. |

  For example:

  ```xml
  <variable name="MSNMessengerInstPath">
  <script>MigXmlHelper.GetStringContent("Registry","%HklmWowSoftware%\Microsoft\MSNMessenger [InstallationDirectory]")</script>
  </variable>
  ```

- **GenerateDrivePatterns**

  The `GenerateDrivePatterns` function iterates all of the available drives and selects the ones that match the requested drive type. It then concatenates the selected drives with the end part of *PatternSegment* to form a full encoded file pattern. For example, if *PatternSegment* is `Path [file.txt]` and *DriveType* is `Fixed`, then the function generates `C:\Path [file.txt]`, and other patterns if there are fixed drives other than C:. Environment variables can't be specified with this function. `GenerateDrivePatterns` can be used with **\<script\>** elements that are within [\<objectSet\>](#objectset) that are within **\<include\>**/**\<exclude\>**.

  Syntax: `GenerateDrivePatterns("PatternSegment","DriveType")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    | *PatternSegment* | Yes | The suffix of an encoded pattern. The value is concatenated with a drive specification, such as "c:", to form a complete [encoded file pattern](#specifying-locations). For example, "* [*.doc]". *PatternSegment* can't be an environment variable. |
    | *DriveType* | Yes | The drive type for which the patterns are to be generated. One of the following items can be specified: <ul><li>Fixed</li><li>CDROM</li><li>Removable</li><li>Remote</li></ul> |

  See the last component in the `MigUser.xml` file for an example of this element.

- **GenerateUserPatterns**

  The `GenerateUserPatterns` function iterates through all users that are being migrated, excluding the currently processed user if **\<ProcessCurrentUser\>** is **FALSE**, and expands the specified pattern in the context of each user. For example, if users A, B, and C have profiles in `C:\Users`, by calling `GenerateUserPattens('File','%userprofile% [*.doc]','TRUE')`, the helper function generates the following three patterns:

  - "C:\\Users\\A\\\* \[\*.doc\]"

  - "C:\\Users\\B\\\* \[\*.doc\]"

  - "C:\\Users\\C\\\* \[\*.doc\]"

  Syntax: `GenerateUserPatterns("ObjectType","EncodedLocationPattern","ProcessCurrentUser")`

    |Setting|Required?|Value|
    |--- |--- |--- |
    |*ObjectType*|Yes|Defines the object type. Can be File or Registry.|
    |*EncodedLocationPattern*|Yes|The [location pattern](#specifying-locations). Environment variables are allowed.|
    |*ProcessCurrentUser*|Yes|Can be **TRUE** or **FALSE**. Indicates if the patterns should be generated for the current user.|

**Example:**

If `GenerateUserPattens('File','%userprofile% [*.doc]','FALSE')` is called while USMT is processing user A, then this function only generates patterns for users B and C. This helper function can be used to build complex rules. For example, to migrate all `.doc` files from the source computer - but if user X isn't migrated, then don't migrate any of the `.doc` files from user X's profile.

The following example is example code for this scenario. The first **\<rules\>** element migrates all `.doc` files on the source computer except for those inside `C:\Users`. The second **\<rules\>** elements migrate all `.doc` files from `C:\Users` except for the `.doc` files in the profiles of the other users. Because the second **\<rules\>** element is processed in each migrated user context, the end result is the desired behavior. The end result is the one we expected.

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
|*ScanProgramFiles*|No (default = FALSE)|Can be **TRUE** or **FALSE**. The *ScanProgramFiles* parameter determines whether or not the document finder scans the **Program Files** directory to gather registered file extensions for known applications. For example, when set to **TRUE** it discovers and migrates **.jpg** files under the Photoshop directory, if `.jpg` is a file extension registered to Photoshop.|
|*IncludePatterns*|No (default = TRUE)|Can be **TRUE** or **FALSE**. **TRUE** generates include patterns and can be added under the **\<include\>** element. **FALSE** generates exclude patterns and can be added under the **\<exclude\>** element.|
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

The following scripts have no return value. The following errors can be used with **\<script\>** elements that are within **\<processing\>** elements

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

## \<text\>

The **\<text\>** element can be used to set a value for any environment variables that are inside one of the migration **.xml** files.

- **Number of occurrences:** Once in each [\<variable\>](#variable) element.

- **Parent elements:** [\<variable\>](#variable)

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

## \<unconditionalExclude\>

The **\<unconditionalExclude\>** element excludes the specified files and registry values from the migration, regardless of the other include rules in any of the migration **.xml** files or in the `Config.xml` file. The objects declared here aren't migrated because this element takes precedence over all other rules. For example, even if there are explicit **\<include\>** rules to include `.mp3` files, if they're excluded with this option, then they aren't migrated.

Use this element to exclude all `.mp3` files from the source computer. Or, if backing up `C:\UserData` using another method, the entire folder can be excluded from the migration. Use this element with caution. If an application needs a file that is excluded, the application might not function properly on the destination computer.

- **Number of occurrences:** Unlimited.

- **Parent elements:** [\<rules\>](#rules)

- **Child elements:** [\<objectSet\>](#objectset)

Syntax:

```xml
<unconditionalExclude></unconditionalExclude>
```

The following **.xml** file excludes all `.mp3` files from migration. For additional examples of how to use this element, see the [Exclude Files and Settings](usmt-exclude-files-and-settings.md).

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

## \<variable\>

The **\<variable\>** element is required in an **\<environment\>** element. For each **\<variable\>** element there must be one **\<objectSet\>**, **\<script\>**, or **\<text\>** element. The content of the **\<variable\>** element assigns a text value to the environment variable. This element has the following three options:

1. If the **\<variable\>** element contains a **\<text\>** element, then the value of the variable element is the value of the **\<text\>** element.

2. If the **\<variable\>** element contains a **\<script\>** element and the invocation of the script produces a non-null string, then the value of the **\<variable\>** element is the result of the script invocation.

3. If the **\<variable\>** element contains an **\<objectSet\>** element and the evaluation of the **\<objectSet\>** element produces at least one object pattern, then the value of the first object to match the resulting object pattern is the value of the variable element.

- **Number of occurrences:** Unlimited

- **Parent elements:** [\<environment\>](#environment)

- **Required child elements:** either [\<text\>](#text), or [\<script\>](#script), or [\<objectSet\>](#objectset)

Syntax:

```xml
<variable name="ID" remap=TRUE|FALSE>
</variable>
```

|Setting|Required?|Value|
|--- |--- |--- |
|name|Yes|*ID* is a string value that is the name used to reference the environment variable. Microsoft recommends that *ID* start with the component's name to avoid namespace collisions. For example, if the component's name is MyComponent, and a variable is desired that is the component's install path, `MyComponent.InstallPath`could be specified.|
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

## \<version\>

The **\<version\>** element defines the version for the component, but doesn't affect the migration.

- **Number of occurrences:** zero or one

- **Parent elements:** [\<component\>](#component)

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

## \<windowsObjects\>

The **\<windowsObjects\>** element is for USMT internal use only. Don't use this element.

## Appendix

### Specifying locations

- **Specifying encoded locations**. The encoded location used in all of the helper functions is an unambiguous string representation for the name of an object. The encoded location is composed of the node part, optionally followed by the leaf enclosed in square brackets. This format makes a clear distinction between nodes and leaves.

    For example, specify the file `C:\Windows\Notepad.exe` like this: `c:\Windows[Notepad.exe]`. Similarly, specify the directory `C:\Windows\System32` like this: `c:\Windows\System32`. (Notice the absence of the `[]` construct.)

    Representing the registry is similar. The default value of a registry key is represented as an empty `[]` construct. For example, the default value for the `HKLM\SOFTWARE\MyKey` registry key is `HKLM\SOFTWARE\MyKey[]`.

- **Specifying location patterns**. Specifying a location pattern is similar to specifying an actual location. The exception is that both the node and leaf part accept patterns. However, a pattern from the node doesn't extend to the leaf.

    For example, the pattern `c:\Windows\*` matches the Windows directory and all subdirectories, but it doesn't match any of the files in those directories. To match the files as well, `c:\Windows\*[*]` must be specified.

### Internal USMT functions

The following functions are for internal USMT use only. Don't use them in an **.xml** file.

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

The following version tags can be used with various helper functions:

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

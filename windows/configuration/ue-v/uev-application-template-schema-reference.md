---
title: Application Template Schema Reference for UE-V
description: Learn details about the XML structure of the UE-V settings location templates and learn how to edit these files.
author: aczechowski
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
ms.topic: article
---

# Application Template Schema Reference for UE-V

**Applies to**
-   Windows 10, version 1607

User Experience Virtualization (UE-V) uses XML settings location templates to define the desktop application settings and Windows settings that are captured and applied by UE-V. UE-V includes a set of default settings location templates. You can also create custom settings location templates with the UE-V template generator.

An advanced user can customize the XML file for a settings location template. This topic details the XML structure of the UE-V settings location templates and provides guidance for editing these files.

## UE-V Application Template Schema Reference


This section details the XML structure of the UE-V settings location template and provides guidance for editing this file.

### In This Section

-   [XML Declaration and Encoding Attribute](#xml21)

-   [Namespace and Root Element](#namespace21)

-   [Data types](#data21)

-   [Name Element](#name21)

-   [ID Element](#id21)

-   [Version Element](#version21)

-   [Author Element](#author21)

-   [Processes and Process Element](#processes21)

-   [Application Element](#application21)

-   [Common Element](#common21)

-   [SettingsLocationTemplate Element](#settingslocationtemplate21)

-   [Appendix: SettingsLocationTemplate.xsd](#appendix21)

### <a href="" id="xml21"></a>XML Declaration and Encoding Attribute

**Mandatory: True**

**Type: String**

The XML declaration must specify the XML version 1.0 attribute (&lt;?xml version="1.0"&gt;). Settings location templates created by the UE-V template generator are saved in UTF-8 encoding, although the encoding isn't explicitly specified. We recommend that you include the encoding="UTF-8" attribute in this element as a best practice. All templates included with the product specify this tag as well (see the documents in %ProgramFiles%\\Microsoft User Experience Virtualization\\Templates for reference). For example:

`<?xml version="1.0" encoding="UTF-8"?>`

### <a href="" id="namespace21"></a>Namespace and Root Element

**Mandatory: True**

**Type: String**

UE-V uses the `https://schemas.microsoft.com/UserExperienceVirtualization/2012/SettingsLocationTemplate` namespace for all applications. SettingsLocationTemplate is the root element and contains all other elements. Reference SettingsLocationTemplate in all templates using this tag:

```xml
<SettingsLocationTemplate xmlns='https://schemas.microsoft.com/UserExperienceVirtualization/2012/SettingsLocationTemplate'>
```

### <a href="" id="data21"></a>Data types

These data types are the ones for the UE-V application template schema.

<a href="" id="guid"></a>**GUID**
GUID describes a standard globally unique identifier regular expression in the form "\\{\[a-fA-F0-9\]{8}-\[a-fA-F0-9\]{4}-\[a-fA-F0-9\]{4}-\[a-fA-F0-9\]{4}-\[a-fA-F0-9\]{12}\\}". This GUID is used in the Filesetting\\Root\\KnownFolder element to verify the formatting of well-known folders.

<a href="" id="filenamestring"></a>**FilenameString**
FilenameString refers to the file name of a process to be monitored. Its values are restricted by the regex \[^\\\\\\?\\\*\\|&lt;&gt;/:\]+, (that is, they may not contain backslash characters, asterisk or question mark wild-card characters, the pipe character, the greater than or less than sign, forward slash, or colon characters).

<a href="" id="idstring"></a>**IDString**
IDString refers to the ID value of Application elements, SettingsLocationTemplate, and Common elements (used to describe application suites that share common settings). It's restricted by the same regex as FilenameString (\[^\\\\\\?\\\*\\|&lt;&gt;/:\]+).

<a href="" id="templateversion"></a>**TemplateVersion**
TemplateVersion is an integer value used to describe the revision of the settings location template. Its value may range from 0 to 2147483647.

<a href="" id="empty"></a>**Empty**
Empty refers to a null value. This data type is used in Process\\ShellProcess to indicate that there's no process to monitor. This value shouldn't be used in any application templates.

<a href="" id="author"></a>**Author**
The Author data type is a complex type that identifies the author of a template. It contains two child elements: **Name** and **Email**. Within the Author data type, the Name element is mandatory while the Email element is optional. This type is described in more detail under the SettingsLocationTemplate element.

<a href="" id="range"></a>**Range**
Range defines an integer class consisting of two child elements: **Minimum** and **Maximum**. This data type is implemented in the ProcessVersion data type. If specified, both Minimum and Maximum values must be included.

<a href="" id="processversion"></a>**ProcessVersion**
ProcessVersion defines a type with four child elements: **Major**, **Minor**, **Build**, and **Patch**. This data type is used by the Process element to populate its ProductVersion and FileVersion values. The data for this type is a Range value. The Major child element is mandatory and the others are optional.

<a href="" id="architecture"></a>**Architecture**
Architecture enumerates two possible values: **Win32** and **Win64**. These values are used to specify process architecture.

<a href="" id="process"></a>**Process**
The Process data type is a container used to describe processes to be monitored by UE-V. It contains six child elements: **Filename**, **Architecture**, **ProductName**, **FileDescription**, **ProductVersion**, and **FileVersion**. This table details each element's respective data type:

|Element|Data Type|Mandatory|
|--- |--- |--- |
|Filename|FilenameString|True|
|Architecture|Architecture|False|
|ProductName|String|False|
|FileDescription|String|False|
|ProductVersion|ProcessVersion|False|
|FileVersion|ProcessVersion|False|

<a href="" id="processes"></a>**Processes**
The Processes data type represents a container for a collection of one or more Process elements. Two child elements are supported in the Processes sequence type: **Process** and **ShellProcess**. Process is an element of type Process and ShellProcess is of data type Empty. At least one item must be identified in the sequence.

<a href="" id="path"></a>**Path**
Path is consumed by RegistrySetting and FileSetting to refer to registry and file paths. This element supports two optional attributes: **Recursive** and **DeleteIfNotFound**. Both values are set to default="False".

Recursive indicates that the path and all subfolders are included for file settings or that all child registry keys are included for registry settings. In both cases, all items at the current level are included in the data captured. For a FileSettings object, all files within the specified folder are included in the data captured by UE-V but folders aren't included. For registry paths, all values in the current path are captured but child registry keys aren't captured. In both cases, care should be taken to avoid capturing large data sets or large numbers of items.

The DeleteIfNotFound attribute removes the setting from the user’s settings storage path data. This removal may be desirable in cases where removing these settings from the package will save a large amount of disk space on the settings storage path file server.

<a href="" id="filemask"></a>**FileMask**
FileMask specifies only certain file types for the folder that is defined by Path. For example, Path might be `C:\users\username\files` and FileMask could be `*.txt` to include only text files.

<a href="" id="registrysetting"></a>**RegistrySetting**
RegistrySetting represents a container for registry keys and values and the associated desired behavior on the part of the UE-V service. Four child elements are defined within this type: **Path**, **Name**, **Exclude**, and a sequence of the values **Path** and **Name**.

<a href="" id="filesetting"></a>**FileSetting**
FileSetting contains parameters associated with files and files paths. Four child elements are defined: **Root**, **Path**, **FileMask**, and **Exclude**. Root is mandatory and the others are optional.

<a href="" id="settings"></a>**Settings**
Settings is a container for all the settings that apply to a particular template. It contains instances of the Registry, File, SystemParameter, and CustomAction settings described earlier. In addition, it can also contain the following child elements with behaviors described:

|Element|Description|
|--- |--- |
|Asynchronous|Asynchronous settings packages are applied without blocking the application startup so that the application start proceeds while the settings are still being applied. This element is useful for settings that can be applied asynchronously, such as those settings get/set through an API, like SystemParameterSetting.|
|PreventOverlappingSynchronization|By default, UE-V only saves settings for an application when the last instance of an application using the template is closed. When this element is set to ‘false’, UE-V exports the settings even if other instances of an application are running. Suited templates – those templates that include a Common element section– that are shipped with UE-V use this flag to enable shared settings to always export on application close, while preventing application-specific settings from exporting until the last instance is closed.|
|AlwaysApplySettings|This parameter forces an imported settings package to be applied even if there are no differences between the package and the current state of the application. This parameter should be used only in special cases since it can slow down settings import.|

### <a href="" id="name21"></a>Name Element

**Mandatory: True**

**Type: String**

Name specifies a unique name for the settings location template. This name is used for display purposes when referencing the template in WMI, PowerShell, Event Viewer and debug logs. In general, avoid referencing version information, as this referencing can be objected from the ProductVersion element. For example, specify `<Name>My Application</Name>` rather than `<Name>My Application 1.1</Name>`.

> [!NOTE]
> UE-V does not reference external DTDs, so it's not possible to use named entities in a settings location template. For example, do not use &reg; to refer to the registered trade mark sign ®. Instead, use canonical numbered references to include these types of special characters, for example, &\#174 for the ® character. This rule applies to all string values in this document.

See <http://www.w3.org/TR/xhtml1/dtds.html> for a complete list of character entities. UTF-8-encoded documents may include the Unicode characters directly. Saving templates through the UE-V template generator converts character entities to their Unicode representations automatically.

 

### <a href="" id="id21"></a>ID Element

**Mandatory: True**

**Type: String**

ID populates a unique identifier for a particular template. This tag becomes the primary identifier that the UE-V service uses to reference the template at runtime (for example, see the output of the Get-UevTemplate and Get-UevTemplateProgram PowerShell cmdlets). By convention, this tag shouldn't contain any spaces, which simplifies scripting. Version numbers of applications should be specified in this element to allow for easy identification of the template, such as `<ID>MicrosoftOffice2016Win64</ID>`.

### <a href="" id="version21"></a>Version Element

**Mandatory: True**

**Type: Integer**

**Minimum Value: 0**

**Maximum Value: 2147483647**

Version identifies the version of the settings location template for administrative tracking of changes. The UE-V template generator automatically increments this number by one each time the template is saved. Notice that this field must be a whole number integer; fractional values, such as `<Version>2.5</Version>` aren't allowed.

> [!TIP]
> You can save notes about version changes using XML comment tags `<!-- -->`, for example:

```xml
<!--
   Version History

   Version 1 Jul 05, 2012 Initial template created by Generator - Denise@Contoso.com
   Version 2 Jul 31, 2012 Added support for app.exe v2.1.3 - Mark@Contoso.com
   Version 3 Jan 01, 2013 Added font settings support - Mark@Contoso.com
   Version 4 Jan 31, 2013 Added support for plugin settings - Tony@Contoso.com
 -->
<Version>4</Version>
```

> [!IMPORTANT]
> This value is queried to determine if a new version of a template should be applied to an existing template in these instances:

-   When the scheduled Template Auto Update task executes

-   When the Update-UevTemplate PowerShell cmdlet is executed

-   When the microsoft\\uev:SettingsLocationTemplate Update method is called through WMI

 

### <a href="" id="author21"></a>Author Element

**Mandatory: False**

**Type: String**

Author identifies the creator of the settings location template. Two optional child elements are supported: **Name** and **Email**. Both attributes are optional, but, if the Email child element is specified, it must be accompanied by the Name element. Author refers to the full name of the contact for the settings location template, and email should refer to an email address for the author. We recommend that you include this information in templates published publicly.

### <a href="" id="processes21"></a>Processes and Process Element

**Mandatory: True**

**Type: Element**

Processes contain at least one `<Process>` element, which in turn contains the following child elements: **Filename**, **Architecture**, **ProductName**, **FileDescription**, **ProductVersion**, and **FileVersion**. The Filename child element is mandatory and the others are optional. A fully populated element contains tags similar to this example:

```xml
<Process>
  <Filename>MyApplication.exe</Filename>
  <Architecture>Win64</Architecture>
  <ProductName> MyApplication </ProductName>
  <FileDescription>MyApplication.exe</FileDescription>
  <ProductVersion>
	<Major Minimum="2" Maximum="2" />
	<Minor Minimum="0" Maximum="0" />
	<Build Minimum="0" Maximum="0" />
	<Patch Minimum="5" Maximum="5" />
  </ProductVersion>
  <FileVersion>
	<Major Minimum="2" Maximum="2" />
	<Minor Minimum="0" Maximum="0" />
	<Build Minimum="0" Maximum="0" />
	<Patch Minimum="5" Maximum="5" />
  </FileVersion>
</Process>
```

### Filename

**Mandatory: True**

**Type: String**

Filename refers to the actual file name of the executable as it appears in the file system. This element specifies the primary criterion that UE-V uses to evaluate whether a template applies to a process or not. This element must be specified in the settings location template XML.

Valid filenames must not match the regular expression \[^\\\\\\?\\\*\\|&lt;&gt;/:\]+, that is, they may not contain backslash characters, asterisk or question mark wild-card characters, the pipe character, the greater than or less than sign, forward slash, or colon (the \\ ? \* | &lt; &gt; / or : characters.).

> [!TIP]
> To test a string against this regex, use a PowerShell command window and substitute your executable's name for **YourFileName**:

`"YourFileName.exe" -match  "[\\\?\*\|<>/:]+"`

A value of **True** indicates that the string contains illegal characters. Here are some examples of illegal values:

-   \\\\server\\share\\program.exe

-   Program\*.exe

-   Pro?ram.exe

-   Program&lt;1&gt;.exe

> [!NOTE]
> The UE-V template generator encodes the greater than and less than characters as &gt; and &lt; respectively.

 

In rare circumstances, the FileName value won't necessarily include the .exe extension, but it should be specified as part of the value. For example, `<Filename>MyApplication.exe</Filename>` should be specified instead of `<Filename>MyApplication</Filename>`. The second example won't apply the template to the process if the actual name of the executable file is “MyApplication.exe”.

### Architecture

**Mandatory: False**

**Type: Architecture (String)**

Architecture refers to the processor architecture for which the target executable was compiled. Valid values are Win32 for 32-bit applications or Win64 for 64-bit applications. If present, this tag limits the applicability of the settings location template to a particular application architecture. For an example of this applicability restriction, compare the %ProgramFiles%\\Microsoft User Experience Virtualization\\templates\\ MicrosoftOffice2016Win32.xml and MicrosoftOffice2016Win64.xml files included with UE-V. This applicability restriction is useful when relative paths change between different versions of an executable or if settings have been added or removed when moving from one processor architecture to another.

If this element is absent, the settings location template ignores the process’ architecture and applies to both 32-bit and 64-bit processes if the file name and other attributes apply.

> [!NOTE]
> UE-V does not support ARM processors in this version.

 

### ProductName

**Mandatory: False**

**Type: String**

ProductName is an optional element used to identify a product for administrative purposes or reporting. ProductName differs from Filename in that there are no regular expression restrictions on its value. This flexibility allows for more easily understood descriptions of a process where the executable name may not be obvious. For example:

```xml
<Process>
  <Filename>MyApplication.exe</Filename>
  <ProductName>My Application 6.x by Contoso.com</ProductName>
  <ProductVersion>
	<Major Minimum="6" Maximum="6" />
  </ProductVersion>
</Process>
```

### FileDescription

**Mandatory: False**

**Type: String**

FileDescription is an optional tag that allows for an administrative description of the executable file. This tag is a free text field and can be useful in distinguishing multiple executables within a software package where there's a need to identify the function of the executable.

For example, in a suited application, it might be useful to provide reminders about the function of two executables (MyApplication.exe and MyApplicationHelper.exe), as shown here:

```xml
<Processes>

   <Process>
      <Filename>MyApplication.exe</Filename>
      <FileDescription>My Application Main Engine</ FileDescription>
      <ProductVersion>
        <Major Minimum="6" Maximum="6" />
      </ProductVersion>
    </Process>
    <Process>
      <Filename>MyApplicationHelper.exe</Filename>
      <FileDescription>My Application Background Process Executable</FileDescription>
      <ProductVersion>
        <Major Minimum="6" Maximum="6" />
      </ProductVersion>
    </Process>
</Processes>
```

### ProductVersion

**Mandatory: False**

**Type: String**

ProductVersion refers to the major and minor product versions of a file, as well as a build and patch level. ProductVersion is an optional element, but if specified, it must contain at least the Major child element. The value must express a range in the form Minimum="X" Maximum="Y" where X and Y are integers. The Minimum and Maximum values can be identical.

The product and file version elements may be left unspecified. Doing so makes the template "version agnostic", meaning that the template will apply to all versions of the specified executable.

**Example 1:**

Product version: 1.0 specified in the UE-V template generator produces the following XML:

```xml
<ProductVersion>
  <Major Minimum="1" Maximum="1" />
  <Minor Minimum="0" Maximum="0" />
</ProductVersion>
```

**Example 2:**

File version: 5.0.2.1000 specified in the UE-V template generator produces the following XML:

```xml
<FileVersion>
  <Major Minimum="5" Maximum="5" />
  <Minor Minimum="0" Maximum="0" />
  <Build Minimum="2" Maximum="2" />
  <Patch Minimum="1000" Maximum="1000" />
</FileVersion>
```

**Incorrect Example 1 - incomplete range:**

Only the Minimum attribute is present. Maximum must be included in a range as well.

```xml
<ProductVersion>
  <Major Minimum="2" />
</ProductVersion>
```

**Incorrect Example 2 - Minor specified without Major element:**

Only the Minor element is present. Major must be included as well.

```xml
<ProductVersion>
  <Minor Minimum="0" Maximum="0" />
</ProductVersion>
```

### FileVersion

**Mandatory: False**

**Type: String**

FileVersion differentiates between the release version of a published application and the internal build details of a component executable. For most of the commercial applications, these numbers are identical. Where they vary, the product version of a file indicates a generic version identification of a file, while file version indicates a specific build of a file (as in the example of a hotfix or update). This file version uniquely identifies files without breaking detection logic.

To determine the product version and file version of a particular executable, right-click on the file in Windows Explorer, select Properties, then click on the Details tab.

Including a FileVersion element for an application allows for more granular fine-tuning detection logic, but isn't necessary for most applications. The ProductVersion element settings are checked first, and then FileVersion is checked. The more restrictive setting will apply.

The child elements and syntax rules for FileVersion are identical to those elements and rules of ProductVersion.

```xml
<Process>
  <Filename>MSACCESS.EXE</Filename>
  <Architecture>Win32</Architecture>
  <ProductVersion>
    <Major Minimum="14" Maximum="14" />
    <Minor Minimum="0" Maximum="0" />
  </ProductVersion>
  <FileVersion>
    <Major Minimum="14" Maximum="14" />
    <Minor Minimum="0" Maximum="0" />
  </FileVersion>
</Process>
```

### <a href="" id="application21"></a>Application Element

Application is a container for settings that apply to a particular application. It's a collection of the following fields/types.

|Field/Type|Description|
|--- |--- |
|Name|Specifies a unique name for the settings location template. This name is used for display purposes when referencing the template in WMI, PowerShell, Event Viewer and debug logs. For more information, see [Name](#name21).|
|ID|Populates a unique identifier for a particular template. This tag becomes the primary identifier that the UE-V service uses to reference the template at runtime. For more information, see [ID](#id21).|
|Description|An optional description of the template.|
|LocalizedNames|An optional name displayed in the UI, localized by a language locale.|
|LocalizedDescriptions|An optional template description localized by a language locale.|
|Version|Identifies the version of the settings location template for administrative tracking of changes. For more information, see [Version](#version21).|
|DeferToMSAccount|Controls whether this template is enabled in conjunction with a Microsoft account or not. If MSA syncing is enabled for a user on a machine, then this template will automatically be disabled.|
|DeferToOffice365|Similar to MSA, this type controls whether this template is enabled in conjunction with Office365. If Office 365 is being used to sync settings, this template will automatically be disabled.|
|FixedProfile|Specifies that this template can only be associated with the profile specified within this element, and can't be changed via WMI or PowerShell.|
|Processes|A container for a collection of one or more Process elements. For more information, see [Processes](#processes21).|
|Settings|A container for all the settings that apply to a particular template. It contains instances of the Registry, File, SystemParameter, and CustomAction settings. For more information, see **Settings** in [Data types](#data21)".|


### <a href="" id="common21"></a>Common Element

Common is similar to an Application element, but it's always associated with two or more Application elements. The Common section represents the set of settings that are shared between those Application instances. It's a collection of the following fields/types.

|Field/Type|Description|
|--- |--- |
|Name|Specifies a unique name for the settings location template. This name is used for display purposes when referencing the template in WMI, PowerShell, Event Viewer and debug logs. For more information, see [Name](#name21).|
|ID|Populates a unique identifier for a particular template. This tag becomes the primary identifier that the UE-V service uses to reference the template at runtime. For more information, see [ID](#id21).|
|Description|An optional description of the template.|
|LocalizedNames|An optional name displayed in the UI, localized by a language locale.|
|LocalizedDescriptions|An optional template description localized by a language locale.|
|Version|Identifies the version of the settings location template for administrative tracking of changes. For more information, see [Version](#version21).|
|DeferToMSAccount|Controls whether this template is enabled in conjunction with a Microsoft account or not. If MSA syncing is enabled for a user on a machine, then this template will automatically be disabled.|
|DeferToOffice365|Similar to MSA, this type controls whether this template is enabled in conjunction with Office365. If Office 365 is being used to sync settings, this template will automatically be disabled.|
|FixedProfile|Specifies that this template can only be associated with the profile specified within this element, and can't be changed via WMI or PowerShell.|
|Settings|A container for all the settings that apply to a particular template. It contains instances of the Registry, File, SystemParameter, and CustomAction settings. For more information, see **Settings** in [Data types](#data21).|

### <a href="" id="settingslocationtemplate21"></a>SettingsLocationTemplate Element

This element defines the settings for a single application or a suite of applications.

|Field/Type|Description|
|--- |--- |
|Name|Specifies a unique name for the settings location template. This type is used for display purposes when referencing the template in WMI, PowerShell, Event Viewer and debug logs. For more information, see [Name](#name21).|
|ID|Populates a unique identifier for a particular template. This tag becomes the primary identifier that the UE-V service uses to reference the template at runtime. For more information, see [ID](#id21).|
|Description|An optional description of the template.|
|LocalizedNames|An optional name displayed in the UI, localized by a language locale.|
|LocalizedDescriptions|An optional template description localized by a language locale.|


### <a href="" id="appendix21"></a>Appendix: SettingsLocationTemplate.xsd

Here's the SettingsLocationTemplate.xsd file showing its elements, child elements, attributes, and parameters:

```xml
<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="UevSettingsLocationTemplate"
  targetNamespace="https://schemas.microsoft.com/UserExperienceVirtualization/2013A/SettingsLocationTemplate"
  elementFormDefault="qualified"
  xmlns="https://schemas.microsoft.com/UserExperienceVirtualization/2013A/SettingsLocationTemplate"
  xmlns:mstns="https://schemas.microsoft.com/UserExperienceVirtualization/2013A/SettingsLocationTemplate"
  xmlns:xs="http://www.w3.org/2001/XMLSchema">

    <xs:simpleType name="Guid">
        <xs:restriction base="xs:string">
            <xs:pattern value="\{[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}\}" />
        </xs:restriction>
    </xs:simpleType>

    <xs:simpleType name="FilenameString">
        <xs:restriction base="xs:string">
            <xs:pattern value="[^\\\?\*\|&lt;&gt;/:]+" />
        </xs:restriction>
    </xs:simpleType>

    <xs:simpleType name="IDString">
        <xs:restriction base="xs:string">
            <xs:pattern value="[^\\\?\*\|&lt;&gt;/:.]+" />
        </xs:restriction>
    </xs:simpleType>

    <xs:simpleType name="CompositeIDString">
        <xs:restriction base="xs:string">
            <xs:pattern value="[^\\\?\*\|&lt;&gt;/:.]+([.][^\\\?\*\|&lt;&gt;/:.]+)?" />
        </xs:restriction>
    </xs:simpleType>

    <xs:simpleType name="TemplateVersion">
        <xs:restriction base="xs:integer">
            <xs:minInclusive value="0" />
            <xs:maxInclusive value="2147483647" />
        </xs:restriction>
    </xs:simpleType>

    <xs:complexType name="Empty">
        <xs:sequence/>
    </xs:complexType>

    <xs:complexType name="LocalizedString">
        <xs:simpleContent>
            <xs:extension base="xs:string">
                <xs:attribute name="Locale" type="xs:string" use="required"/>
            </xs:extension>
        </xs:simpleContent>
    </xs:complexType>

    <xs:complexType name="LocalizedName">
        <xs:sequence>
            <xs:element name="Name" type="LocalizedString" minOccurs="1" maxOccurs="unbounded" />
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="LocalizedDescription">
        <xs:sequence>
            <xs:element name="Description" type="LocalizedString" minOccurs="1" maxOccurs="unbounded" />
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="ReplacedTemplates">
      <xs:sequence>
        <xs:element name="ID" type="CompositeIDString" minOccurs="1" maxOccurs="unbounded" />
    </xs:sequence>
    </xs:complexType>

    <xs:complexType name="Author">
        <xs:all>
            <xs:element name="Name" type="xs:string" minOccurs="1" />
            <xs:element name="Email" type="xs:string" minOccurs="0" />
        </xs:all>
    </xs:complexType>

    <xs:complexType name="Range">
        <xs:attribute name="Minimum" type="xs:integer" use="required"/>
        <xs:attribute name="Maximum" type="xs:integer" use="required"/>
    </xs:complexType>

    <xs:complexType name="ProcessVersion">
        <xs:sequence>
            <xs:element name="Major" type="Range" minOccurs="1" />
            <xs:element name="Minor" type="Range" minOccurs="0" />
            <xs:element name="Build" type="Range" minOccurs="0" />
            <xs:element name="Patch" type="Range" minOccurs="0" />
        </xs:sequence>
    </xs:complexType>

    <xs:simpleType name="Architecture">
        <xs:restriction base="xs:string">
            <xs:enumeration value="Win32"/>
            <xs:enumeration value="Win64"/>
        </xs:restriction>
    </xs:simpleType>

    <xs:complexType name="Process">
        <xs:sequence>
            <xs:element name="Filename" type="FilenameString" minOccurs="1" />
            <xs:element name="Architecture" type="Architecture" minOccurs="0" />
            <xs:element name="ProductName" type="xs:string" minOccurs="0" />
            <xs:element name="FileDescription" type="xs:string" minOccurs="0" />
            <xs:element name="ProductVersion" type="ProcessVersion" minOccurs="0" maxOccurs="unbounded"/>
            <xs:element name="FileVersion" type="ProcessVersion" minOccurs="0" maxOccurs="unbounded"/>
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="Processes">
        <xs:sequence>
            <xs:choice minOccurs="1">
                <xs:element name="Process" type="Process" />
                <xs:element name="ShellProcess" type="Empty" />
            </xs:choice>
            <xs:element name="Process" type="Process" minOccurs="0" maxOccurs="unbounded" />
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="Path">
        <xs:simpleContent>
            <xs:extension base="xs:string">
                <xs:attribute name="Recursive" type="xs:boolean" default="false"/>
                <xs:attribute name="DeleteIfNotFound" type="xs:boolean" default="false"/>
            </xs:extension>
        </xs:simpleContent>
    </xs:complexType>

    <xs:complexType name="RegistrySetting">
        <xs:sequence>
            <xs:element name="Path" type="Path" />
            <xs:element name="Name" type="xs:string" minOccurs="0" maxOccurs="unbounded" />
            <xs:element name="Exclude" minOccurs="0" maxOccurs="unbounded">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element name="Path" type="Path" minOccurs="0" />
                        <xs:element name="Name" type="xs:string" minOccurs="0" maxOccurs="unbounded" />
                    </xs:sequence>
                </xs:complexType>
            </xs:element>
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="FileSetting">
        <xs:sequence>

            <xs:element name="Root">
                <xs:complexType>
                    <xs:choice>
                        <xs:element name="KnownFolder" type="Guid" />
                        <xs:element name="RegistryEntry" type="xs:string" />
                        <xs:element name="EnvironmentVariable" type="xs:string" />
                    </xs:choice>
                </xs:complexType>
            </xs:element>

            <xs:element name="Path" minOccurs="0" type="Path" />
            <xs:element name="FileMask" type="xs:string" minOccurs="0" maxOccurs="unbounded"/>

            <xs:element name="Exclude" minOccurs="0" maxOccurs="unbounded">
                <xs:complexType>
                    <xs:sequence>
                        <xs:element name="Path" type="Path" minOccurs="0" />
                        <xs:element name="FileMask" type="xs:string" minOccurs="0" maxOccurs="unbounded" />
                    </xs:sequence>
                </xs:complexType>
            </xs:element>

        </xs:sequence>
    </xs:complexType>

    <xs:simpleType name="CustomActionSetting">
        <xs:restriction base="xs:anyURI"/>
    </xs:simpleType>

    <xs:simpleType name="SystemParameterSetting">
        <xs:restriction base="xs:string">

            <!-- Accessibility parameters -->
            <xs:enumeration value="AccessTimeout"/>
            <xs:enumeration value="AudioDescription"/>
            <xs:enumeration value="ClientAreaAnimation"/>
            <xs:enumeration value="DisableOverlappedContent"/>
            <xs:enumeration value="FilterKeys"/>
            <xs:enumeration value="FocusBorderHeight"/>
            <xs:enumeration value="FocusBorderWidth"/>
            <xs:enumeration value="HighContrast"/>
            <xs:enumeration value="MessageDuration"/>
            <xs:enumeration value="MouseClickLock"/>
            <xs:enumeration value="MouseClickLockTime"/>
            <xs:enumeration value="MouseKeys"/>
            <xs:enumeration value="MouseSonar"/>
            <xs:enumeration value="MouseVanish"/>
            <xs:enumeration value="ScreenReader"/>
            <xs:enumeration value="ShowSounds"/>
            <xs:enumeration value="SoundSentry"/>
            <xs:enumeration value="StickyKeys"/>
            <xs:enumeration value="ToggleKeys"/>

            <!-- Input parameters -->
            <xs:enumeration value="Beep"/>
            <xs:enumeration value="BlockSendInputResets"/>
            <xs:enumeration value="DefaultInputLang"/>
            <xs:enumeration value="DoubleClickTime"/>
            <xs:enumeration value="DoubleClkHeight"/>
            <xs:enumeration value="DoubleClkWidth"/>
            <xs:enumeration value="KeyboardCues"/>
            <xs:enumeration value="KeyboardDelay"/>
            <xs:enumeration value="KeyboardPref"/>
            <xs:enumeration value="KeyboardSpeed"/>
            <xs:enumeration value="Mouse"/>
            <xs:enumeration value="MouseButtonSwap"/>
            <xs:enumeration value="MouseHoverHeight"/>
            <xs:enumeration value="MouseHoverTime"/>
            <xs:enumeration value="MouseHoverWidth"/>
            <xs:enumeration value="MouseSpeed"/>
            <xs:enumeration value="MouseTrails"/>
            <xs:enumeration value="SnapToDefButton"/>
            <xs:enumeration value="WheelScrollChars"/>
            <xs:enumeration value="WheelScrollLines"/>

            <!-- Desktop parameters (limited subset) -->
            <xs:enumeration value="DeskWallpaper"/>
            <xs:enumeration value="DesktopColor"/>

        </xs:restriction>
    </xs:simpleType>

    <xs:complexType name="Settings">
        <xs:sequence>
            <xs:element name="Asynchronous" type="xs:boolean" minOccurs="0" />
            <xs:element name="PreventOverlappingSynchronization" type="xs:boolean" minOccurs="0" />
            <xs:element name="AlwaysApplySettings" type="xs:boolean" minOccurs="0" />
            <xs:choice minOccurs="0" maxOccurs="unbounded">
                <xs:element name="Registry" type="RegistrySetting" />
                <xs:element name="File" type="FileSetting" />
                <xs:element name="SystemParameter" type="SystemParameterSetting" />
                <xs:element name="CustomAction" type="CustomActionSetting" />
            </xs:choice>
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="Common">
        <xs:sequence>
            <xs:element name="Name" type="xs:string" />
            <xs:element name="ID" type="IDString" />
            <xs:element name="ReplacedTemplates" type="ReplacedTemplates" minOccurs="0" />
            <xs:element name="Description" type="xs:string" minOccurs="0" />
            <xs:element name="LocalizedNames" type="LocalizedName" minOccurs="0" />
            <xs:element name="LocalizedDescriptions" type="LocalizedDescription" minOccurs="0" />
            <xs:element name="Version" type="xs:integer" />
            <xs:element name="DeferToMSAccount" type="Empty"  minOccurs="0" />
            <xs:element name="DeferToOffice365" type="Empty" minOccurs="0" />
            <xs:element name="Settings" type="Settings" />
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="Application">
        <xs:sequence>
            <xs:element name="Name" type="xs:string" />
            <xs:element name="ID" type="IDString" />
            <xs:element name="ReplacedTemplates" type="ReplacedTemplates" minOccurs="0" />
            <xs:element name="Description" type="xs:string" minOccurs="0" />
            <xs:element name="LocalizedNames" type="LocalizedName" minOccurs="0" />
            <xs:element name="LocalizedDescriptions" type="LocalizedDescription" minOccurs="0" />
            <xs:element name="Version" type="xs:integer" />
            <xs:element name="DeferToMSAccount" type="Empty"  minOccurs="0" />
            <xs:element name="DeferToOffice365" type="Empty" minOccurs="0" />
            <xs:element name="Processes" type="Processes" />
            <xs:element name="Settings" type="Settings" />
        </xs:sequence>
    </xs:complexType>


    <xs:element name="SettingsLocationTemplate">
        <xs:complexType>
            <xs:sequence>

                <xs:element name="Name" type="xs:string" />
                <xs:element name="ID" type="IDString" />
                <xs:element name="Description" type="xs:string" minOccurs="0" />
                <xs:element name="LocalizedNames" type="LocalizedName" minOccurs="0" />
                <xs:element name="LocalizedDescriptions" type="LocalizedDescription" minOccurs="0" />

                <xs:choice>

                    <!-- Single application -->
                    <xs:sequence>
                        <xs:element name="ReplacedTemplates" type="ReplacedTemplates" minOccurs="0" />
                        <xs:element name="Version" type="TemplateVersion" />
                        <xs:element name="Author" type="Author" minOccurs="0" />
                        <xs:element name="FixedProfile" type="xs:string"  minOccurs="0" />
                        <xs:element name="DeferToMSAccount" type="Empty"  minOccurs="0" />
                        <xs:element name="DeferToOffice365" type="Empty" minOccurs="0" />
                        <xs:element name="Processes" type="Processes" />
                        <xs:element name="Settings" type="Settings" />
                    </xs:sequence>

                    <!-- Suite of applications -->
                    <xs:sequence>
                        <xs:element name="ManageSuiteOnly" type="xs:boolean" minOccurs="0" />
                        <xs:element name="Author" type="Author" minOccurs="0" />
                        <xs:element name="FixedProfile" type="xs:string"  minOccurs="0" />
                        <xs:element name="Common" type="Common" />
                        <xs:element name="Application" type="Application" minOccurs="2" maxOccurs="unbounded" />
                    </xs:sequence>

                </xs:choice>

            </xs:sequence>
        </xs:complexType>
    </xs:element>
    <!-- SettingsLocationTemplate -->

</xs:schema>
```





## Related topics

[Working with Custom UE-V Templates and the UE-V Template Generator](uev-working-with-custom-templates-and-the-uev-generator.md)

[Technical Reference for UE-V](uev-technical-reference.md)

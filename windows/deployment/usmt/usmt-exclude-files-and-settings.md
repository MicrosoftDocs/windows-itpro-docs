---
title: Exclude Files and Settings
description: In this article, learn how to exclude files and settings when creating a custom .xml file and a Config.xml file.
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

# Exclude files and settings

When the migration **.xml** files `MigApp.xml`, `MigDocs.xml`, and `MigUser.xml` are specified, the User State Migration Tool (USMT) migrates the settings and components listed, as discussed in [What does USMT migrate?](usmt-what-does-usmt-migrate.md) A custom **.xml** file can be created to further specify what to include or exclude in the migration. In addition, a `Config.xml` file can be created to exclude an entire component from a migration. However, users can't be excluded by using the migration **.xml** files or the `Config.xml` file. The only way to specify which users to include and exclude is by using the user options on the command line in the **ScanState** tool. For more information, see the [User options](usmt-scanstate-syntax.md#user-options) section of the [ScanState syntax](usmt-scanstate-syntax.md) article.

Methods to customize the migration and include and exclude files and settings include:

- [Create a custom .xml file](#create-a-custom-xml-file). The following elements can be used to specify what to exclude:

  - [Include and exclude](#include-and-exclude): The **\<include\>** and **\<exclude\>** elements can be used to exclude objects with conditions. For example, all files located in the `C:\` drive can be migrated, except any `.mp3` files. It's important to remember that [Conflicts and precedence](usmt-conflicts-and-precedence.md) apply to these elements.

  - [unconditionalExclude](#example-1-how-to-migrate-all-files-from-c-except-mp3-files): The **\<unconditionalExclude\>** element can be used to globally exclude data. This element takes precedence over all other include and exclude rules in the **.xml** files. Therefore, this element excludes objects regardless of any other **\<include\>** rules that are in the **.xml** files. For example, all **.mp3** files can be excluded on the computer, or all files from C:\\UserData can be excluded.

- [Create a Config.xml file](#create-a-config-xml-file): A `Config.xml` file can be created and modified to exclude an entire component from the migration. For example, this file can be used to exclude the settings for one of the default applications. In addition, creating and modifying a `Config.xml` file is the only way to exclude the operating-system settings that are migrated to computers running Windows. Excluding components using this file is easier than modifying the migration **.xml** files because familiarity with the migration rules and syntax isn't required.

## Create a custom .xml file

Microsoft recommends creating a custom **.xml** file instead of modifying the default migration **.xml** files. When a custom **.xml** file is used, the changes can be kept separate from the default **.xml** file, which makes it easier to track the modifications.

### \<include\> and \<exclude\>

The migration **.xml** files, `MigApp.xml`, `MigDocs.xml`, and `MigUser.xml`, contain the **\<component\>** element, which typically represents a self-contained component or an application such as Microsoft Office Outlook and Word. To exclude the files and registry settings that are associated with these components, use the **\<include\>** and **\<exclude\>** elements. For example, these elements can be used to migrate all files and settings with pattern X except files and settings with pattern Y, where Y is more specific than X. For the syntax of these elements, see [USMT XML Reference](usmt-xml-reference.md).

> [!NOTE]
>
> If an **\<exclude\>** rule is specified, always specify a corresponding **\<include\>** rule. Otherwise, if an **\<include\>** rule isn't specified, the specific files or settings aren't included. They're already excluded from the migration. Thus, an unaccompanied **\<exclude\>** rule is unnecessary.

- [Example 1: How to migrate all files from C:\\ except .mp3 files](#example-1-how-to-migrate-all-files-from-c-except-mp3-files)

- [Example 2: How to migrate all files located in C:\\Data except files in C:\\Data\\tmp](#example-2-how-to-migrate-all-files-located-in-cdata-except-files-in-cdatatmp)

- [Example 3: How to exclude the files in a folder but include all subfolders](#example-3-how-to-exclude-the-files-in-a-folder-but-include-all-subfolders)

- [Example 4: How to exclude a file from a specific folder](#example-4-how-to-exclude-a-file-from-a-specific-folder)

- [Example 5: How to exclude a file from any location](#example-5-how-to-exclude-a-file-from-any-location)

### Example 1: How to migrate all files from `C:\` except `.mp3` files

The following **.xml** file migrates all files located on the C: drive, except any **.mp3** files.

```xml
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/mp3files">
    <!-- This component migrates all files except those with .mp3 extension-->
    <component type="Documents" context="UserAndSystem">
        <displayName _locID="miguser.sharedvideo">MP3 Files</displayName>
        <role role="Data">
            <rules>
                <include filter='MigXmlHelper.IgnoreIrrelevantLinks()'>
                    <objectSet>
                        <pattern type="File">C:\* [*]</pattern>
                    </objectSet>
                </include>
                <exclude>
                    <objectSet>
                        <pattern type="File">C:\* [*.mp3]</pattern>
                    </objectSet>
                </exclude>
            </rules>
        </role>
    </component>
</migration>
```

### Example 2: How to migrate all files located in `C:\Data` except files in `C:\Data\tmp`

The following **.xml** file migrates all files and subfolders in `C:\Data`, except the files and subfolders in `C:\Data\tmp`.

```xml
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/test">
    <component type="Documents" context="System">
        <displayName _locID="miguser.sharedvideo">Test component</displayName>
        <role role="Data">
            <rules>
                <include>
                    <objectSet>
                        <pattern type="File">C:\Data\* [*]</pattern>
                    </objectSet>
                </include>
                <exclude>
                    <objectSet>
                        <pattern type="File"> C:\Data\temp\* [*]</pattern>
                    </objectSet>
                </exclude>
            </rules>
        </role>
    </component>
</migration>
```

### Example 3: How to exclude the files in a folder but include all subfolders

The following **.xml** file migrates any subfolders in `C:\EngineeringDrafts`, but excludes all files that are in `C:\EngineeringDrafts`.

```xml
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/test">
    <component type="Documents" context="System">
        <displayName>Component to migrate all Engineering Drafts Documents without subfolders</displayName>
        <role role="Data">
            <rules>
                <include>
                    <objectSet>
                        <pattern type="File"> C:\EngineeringDrafts\* [*]</pattern>
                    </objectSet>
                </include>
                <exclude>
                    <objectSet>
                        <pattern type="File"> C:\EngineeringDrafts\ [*]</pattern>
                    </objectSet>
                </exclude>
            </rules>
        </role>
    </component>
</migration>
```

### Example 4: How to exclude a file from a specific folder

The following **.xml** file migrates all files and subfolders in `C:\EngineeringDrafts`, except for the `Sample.doc` file in `C:\EngineeringDrafts`.

```xml
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/test">
    <component type="Documents" context="System">
        <displayName>Component to migrate all Engineering Drafts Documents except Sample.doc</displayName>
        <role role="Data">
            <rules>
                <include>
                    <objectSet>
                        <pattern type="File"> C:\EngineeringDrafts\* [*]</pattern>
                    </objectSet>
                </include>
                <exclude>
                    <objectSet>
                        <pattern type="File"> C:\EngineeringDrafts\ [Sample.doc]</pattern>
                    </objectSet>
                </exclude>
            </rules>
        </role>
    </component>
</migration>
```

### Example 5: How to exclude a file from any location

To exclude a Sample.doc file from any location on the C: drive, use the **\<pattern\>** element. If multiple files exist with the same name on the C: drive, all of these files are excluded.

```xml
<pattern type="File"> C:\* [Sample.doc] </pattern>
```

To exclude a Sample.doc file from any drive on the computer, use the **\<script\>** element. If multiple files exist with the same name, all of these files are excluded.

```xml
<script>MigXmlHelper.GenerateDrivePatterns("* [sample.doc]", "Fixed")</script>
```

#### Examples of how to use XML to exclude files, folders, and registry keys

Here are some examples of how to use XML to exclude files, folders, and registry keys. For more info, see [USMT XML Reference](usmt-xml-reference.md)

##### Example 1: How to exclude all `.mp3` files

The following **.xml** file excludes all `.mp3` files from the migration:

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

##### Example 2: How to exclude all of the files on a specific drive

The following **.xml** file excludes only the files located on the C: drive.

```xml
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/allfiles">
    <component type="Documents" context="System">
        <displayName>Test</displayName>
        <role role="Data">
            <rules>
                <unconditionalExclude>
                    <objectSet>
                        <pattern type="File">c:\*[*]</pattern>
                    </objectSet>
                </unconditionalExclude>
            </rules>
        </role>
    </component>
</migration>
```

##### Example 3: How to exclude registry keys

The following **.xml** file unconditionally excludes the `HKEY_CURRENT_USER` registry key and all of its subkeys.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/miguser">
    <component type="Documents" context="User">
        <displayName>Test</displayName>
        <role role="Data">
            <rules>
                <include>
                    <objectSet>
                        <pattern type="Registry">HKCU\testReg[*]</pattern>
                    </objectSet>
                </include>
                <unconditionalExclude>
                    <objectSet>
                        <pattern type="Registry">HKCU\*[*]</pattern>
                    </objectSet>
                </unconditionalExclude>
            </rules>
        </role>
    </component>
</migration>
```

##### Example 4: How to Exclude `C:\Windows` and `C:\Program Files`

The following **.xml** file unconditionally excludes the system folders of `C:\Windows` and `C:\Program Files`. All `*.docx`, `*.xls` and `*.ppt` files aren't migrated because the **\<unconditionalExclude\>** element takes precedence over the **\<include\>** element.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/miguser">
    <component type="Documents" context="System">
        <displayName>Test</displayName>
        <role role="Data">
            <rules>
                <include>
                    <objectSet>
                        <script>MigXmlHelper.GenerateDrivePatterns ("* [*.doc]", "Fixed")</script>
                        <script>MigXmlHelper.GenerateDrivePatterns ("* [*.xls]", "Fixed")</script>
                        <script>MigXmlHelper.GenerateDrivePatterns ("* [*.ppt]", "Fixed")</script>
                    </objectSet>
                </include>
                <unconditionalExclude>
                    <objectSet>
                        <pattern type="File">C:\Program Files\* [*]</pattern>
                        <pattern type="File">C:\Windows\* [*]</pattern>
                    </objectSet>
                </unconditionalExclude>
            </rules>
        </role>
    </component>
</migration>
```

## Create a Config XML File

A `Config.xml` file can be created and modified to exclude components from the migration. Excluding components using this file is easier than modifying the migration **.xml** files because familiarity with the migration rules and syntax isn't required. `Config.xml` is an optional file that can be created using the `/genconfig` command-line option with the **ScanState** tool. For example, the `Config.xml` file can be used to exclude the settings for one of the default applications. In addition, creating and modifying this file is the only way to exclude the operating-system settings that are migrated to computers running Windows.

- **To exclude the settings for a default application:** Specify `migrate="no"` for the application under the **\<Applications\>** section of the `Config.xml` file.

- **To exclude an operating system setting:** Specify `migrate="no"` for the setting under the **\<WindowsComponents\>** section.

- **To exclude the Documents folder:** Specify `migrate="no"` for the **Documents** folder under the **\<Documents\>** section. Any **\<include\>** rules in the **.xml** files are still applied. For example, if a rule exists that includes all the **.docx** files in the **Documents** folder, then **.docx** files are still migrated. However, any additional files that aren't **.docx** aren't migrated.

For more information, see [Config.xml File](usmt-configxml-file.md).

> [!NOTE]
>
> To exclude a component from the `Config.xml` file, set the **migrate** value to **"no"**. Deleting the XML tag for the component from the `Config.xml` file doesn't exclude the component from the migration.

## Related articles

- [Customize USMT XML files](usmt-customize-xml-files.md).
- [USMT XML reference](usmt-xml-reference.md).

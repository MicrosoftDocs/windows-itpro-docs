---
title: Understanding Migration XML Files (Windows 10)
description: Learn how to modify the behavior of a basic User State Migration Tool (USMT) 10.0 migration by using XML files.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 11/23/2022
ms.topic: article
ms.technology: itpro-deploy
---

# Understanding migration XML files

You can modify the behavior of a basic User State Migration Tool (USMT) 10.0 migration by using XML files; these files provide instructions on where and how the USMT tools should gather and apply files and settings. USMT includes three XML files that you can use to customize a basic migration: the `MigDocs.xml` and `MigUser.xml` files, which modify how files are discovered on the source computer, and the MigApps.xml file, which is required in order to migrate supported application settings. You can also create and edit custom XML files and a `Config.xml` file to further customize your migration.

This article provides an overview of the default and custom migration XML files and includes guidelines for creating and editing a customized version of the `MigDocs.xml` file. The `MigDocs.xml` file uses the new `GenerateDocPatterns` function available in USMT to automatically find user documents on a source computer.

## Overview of the Config.xml file

The `Config.xml` file is the configuration file created by the `/genconfig` option of the ScanState tool; it can be used to modify which operating-system components are migrated by USMT. The `Config.xml` file can be used with other XML files, such as in the following example:

`ScanState.exe /i:migapps.xml /i:MigDocs.xml /genconfig:c:\myFolder\Config.xml`

When used this way, the `Config.xml` file tightly controls aspects of the migration, including user profiles, data, and settings, without modifying or creating other XML files. For more information about the `Config.xml` file, see [Customize USMT XML Files](usmt-customize-xml-files.md) and [Config.xml File](usmt-configxml-file.md).

> [!NOTE]
> When modifying the XML elements in the `Config.xml` file, you should edit an element and set the **migrate** property to **no**, rather than deleting the element from the file. If you delete the element instead of setting the property, the component may still be migrated by rules in other XML files.

## Overview of the MigApp.xml file

The `MigApp.xml` file installed with USMT includes instructions to migrate the settings for the applications listed in [What Does USMT Migrate?](usmt-what-does-usmt-migrate.md). You must include the `MigApp.xml` file when using the ScanState and LoadState tools, by using the `/i` option in order to migrate application settings. The `MigDocs.xml` and `MigUser.xml` files don't migrate application settings. You can create a custom XML file to include additional applications. For more information, see [Customize USMT XML Files](usmt-customize-xml-files.md).

> [!IMPORTANT]
> The MigApps.xml file will only detect and migrate .pst files that are linked to Microsoft Office Outlook. For more information about migrating .pst files that are not linked to Outlook, see [Sample migration rules for customized versions of XML files](#sample-migration-rules-for-customized-versions-of-xml-files).

## Overview of the MigDocs.xml file

The `MigDocs.xml` file uses the new `GenerateDocPatterns` helper function to create instructions for USMT to migrate files from the source computer, based on the location of the files. You can use the `MigDocs.xml` file with the ScanState and LoadState tools to perform a more targeted migration than using USMT without XML instructions.

The default `MigDocs.xml` file migrates the following data:

- All files on the root of the drive except `%WINDIR%`, `%PROGRAMFILES%`, `%PROGRAMDATA%`, or `%USERS%`.

- All folders in the root directory of all fixed drives. For example: `c:\data_mail\*[*]`

- All files from the root of the Profiles folder, except for files in the system profile. For example: `c:\users\name[mail.pst]`

- All folders from the root of the Profiles folder, except for the system-profile folders. For example: `c:\users\name\new folder\*[*]`

- Standard shared folders:

  - CSIDL_COMMON_DESKTOPDIRECTORY

  - CSIDL_COMMON_FAVORITES

  - CSIDL_COMMON_DOCUMENTS

  - CSIDL_COMMON_MUSIC

  - CSIDL_COMMON_PICTURES

  - CSIDL_COMMON_VIDEO

  - FOLDERID_PublicDownloads

- Standard user-profile folders for each user:

  - CSIDL_MYDOCUMENTS

  - CSIDL_MYPICTURES

  - FOLDERID_OriginalImages

  - CSIDL_MYMUSIC

  - CSIDL_MYVIDEO

  - CSIDL_FAVORITES

  - CSIDL_DESKTOP

  - CSIDL_QUICKLAUNCH

  - FOLDERID_Contacts

  - FOLDERID_Libraries

  - FOLDERID_Downloads

  - FOLDERID_SavedGames

  - FOLDERID_RecordedTV

The default `MigDocs.xml` file won't migrate the following data:

- Files tagged with both the **hidden** and **system** attributes.

- Files and folders on removable drives.

- Data from the %WINDIR%, %PROGRAMDATA%, and %PROGRAMFILES% folders.

- Folders that contain installed applications.

You can also use the `/genmigxml` option with the ScanState tool to review and modify what files will be migrated.

## Overview of the MigUser.xml file

The `MigUser.xml` file includes instructions for USMT to migrate user files based on file name extensions. You can use the `MigUser.xml` file with the ScanState and LoadState tools to perform a more targeted migration than using USMT without XML instructions. The `MigUser.xml` file will gather all files from the standard user-profile folders, and any files on the computer with the specified file name extensions.

The default `MigUser.xml` file migrates the following data:

- All files from the standard user-profile folders, which are described as:

  - CSIDL_MYVIDEO

  - CSIDL_MYMUSIC

  - CSIDL_DESKTOP

  - CSIDL_STARTMENU

  - CSIDL_PERSONAL

  - CSIDL_MYPICTURES

  - CSIDL_FAVORITES

  - CSIDL_QUICK LAUNCH

- Files with the following extensions:

   `.accdb`, `.ch3`, `.csv`, `.dif`, `.doc*`, `.dot*`, `.dqy`, `.iqy`, `.mcw`, `.mdb*`, `.mpp`, `.one*`, `.oqy`, `.or6`, `.pot*`, `.ppa`, `.pps*`, `.ppt*`, `.pre`, `.pst`, `.pub`, `.qdf`, `.qel`, `.qph`, `.qsd`, `.rqy`, `.rtf`, `.scd`, `.sh3`, `.slk`, `.txt`, `.vl*`, `.vsd`, `.wk*`, `.wpd`, `.wps`, `.wq1`, `.wri`, `.xl*`, `.xla`, `.xlb`, `.xls*`

  > [!NOTE]
  > The asterisk (`*`) stands for zero or more characters.

  > [!NOTE]
  > The OpenDocument extensions (`*.odt`, `*.odp`, `*.ods`) that Microsoft Office applications can use aren't migrated by default.

The default `MigUser.xml` file doesn't migrate the following data:

- Files tagged with both the **Hidden** and **System** attributes.

- Files and folders on removable drives,

- Data from the `%WINDIR%`, `%PROGRAMFILES%`, `%PROGRAMDATA%` folders.

- ACLS for files in folders outside the user profile.

You can make a copy of the `MigUser.xml` file and modify it to include or exclude standard user-profile folders and file name extensions. If you know all of the extensions for the files you want to migrate from the source computer, use the `MigUser.xml` file to move all of your relevant data, regardless of the location of the files. However, this provision may result in a migration that contains more files than intended. For example, if you choose to migrate all .jpg files, you may migrate image files such as thumbnails and logos from legacy applications that are installed on the source computer.

> [!NOTE]
> Each file name extension you include in the rules within the `MigUser.xml` file increases the amount of time needed for the ScanState tool to gather the files for the migration. If you are migrating more than 300 file types, you may experience a slow migration. For more information about other ways to organize the migration of your data, see the [Using multiple XML files](#using-multiple-xml-files) section of this article.

## Using multiple XML files

You can use multiple XML files with the ScanState and LoadState tools. Each of the default XML files included with or generated by USMT is configured for a specific component of the migration. You can also use custom XML files to supplement these default files with more migration rules.

|XML migration file|Modifies the following components:|
|--- |--- |
|*Config.xml file*|Operating-system components such as desktop wallpaper and background theme.<br/> You can also overload `Config.xml` to include some application and document settings by generating the `Config.xml` file with the other default XML files. For more information, see [Customize USMT XML Files](usmt-customize-xml-files.md) and [Config.xml File](usmt-configxml-file.md).|
|*MigApps.xml file*|Applications settings.|
|*MigUser.xml* or *MigDocs.xml* files|User files and profile settings.|
|*Custom XML files*|Application settings, user profile settings, or user files, beyond the rules contained in the other XML files.|

For example, you can use all of the XML migration file types for a single migration, as in the following example:

```cmd
ScanState.exe <store> /config:c:\myFolder\Config.xml /i:migapps.xml /i:MigDocs.xml /i:CustomRules.xml
```

### XML rules for migrating user files

> [!IMPORTANT]
> You should not use the `MigUser.xml` and `MigDocs.xml` files together in the same command. Using both XML files can result in duplication of some migrated files. This occurs when conflicting target-location instructions are given in each XML file. The target file will be stored once during the migration, but will be applied by each XML file to a different location on the destination computer.

If your data set is unknown or if many files are stored outside of the standard user-profile folders, the `MigDocs.xml` is a better choice than the `MigUser.xml` file, because the `MigDocs.xml` file will gather a broader scope of data. The `MigDocs.xml` file migrates folders of data based on location. The `MigUser.xml` file migrates only the files with the specified file name extensions.

If you want more control over the migration, you can create custom XML files. See [Creating and editing a custom XML file](#creating-and-editing-a-custom-xml-file) for more information.

## Creating and editing a custom XML file

You can use the `/genmigxml` command-line option to determine which files will be included in your migration. The `/genmigxml` option creates a file in a location you specify, so that you can review the XML rules and make modifications as necessary.

> [!NOTE]
> If you reinstall USMT, the default migration XML files will be overwritten and any customizations you make directly to these files will be lost. Consider creating separate XML files for your custom migration rules and saving them in a secure location.

To generate the XML migration rules file for a source computer:

1. Select **Start** > **All Programs** > **Accessories**

2. Right-click **Command Prompt**, and then select **Run as**.

3. Select an account with administrator privileges, supply a password, and then select **OK**.

4. At the command prompt, enter:

    ```cmd
    cd /d <USMTpath>
    ScanState.exe /genmigxml: <filepath.xml>
    ```

    Where *&lt;USMTpath&gt;* is the location on your source computer where you've saved the USMT files and tools, and *&lt;filepath.xml&gt;* is the full path to a file where you can save the report. For example, enter:

    ```cmd
    cd /d c:\USMT
    ScanState.exe /genmigxml:"C:\Documents and Settings\USMT Tester\Desktop\genMig.xml"
    ```

### The GenerateDocPatterns function

The `MigDocs.xml` file calls the `GenerateDocPatterns` function, which takes three Boolean values. You can change the settings to modify the way the `MigDocs.xml` file generates the XML rules for migration.

- `ScanProgramFiles`: This argument is valid only when the `GenerateDocPatterns` function is called in a system context. This argument determines whether or not to scan the Program Files directory to gather registered file name extensions for known applications.

  **Default value**: False

  For example, when set to **TRUE**, the function discovers and migrates .doc files under the Microsoft Office directory, because .doc is a file name extension registered to a Microsoft Office application. The `GenerateDocPatterns` function generates this inclusion pattern for `.doc` files:

  `<pattern type="File">C:\Program Files\Microsoft Office[.doc]</pattern>`

  If a child folder of an included folder contains an installed application, ScanProgramFiles will also create an exclusion rule for the child folder. All folders under the application folder will be scanned recursively for registered file name extensions.

- `IncludePatterns`: This argument determines whether to generate exclude or include patterns in the XML. When this argument is set to **TRUE**, the `GenerateDocPatterns` function generates include patterns, and the function must be added under the `<include>` element. Changing this argument to **FALSE** generates exclude patterns and the function must be added under the `<exclude>` element.

  **Default value**: True

- `SystemDrive`: This argument determines whether to generate patterns for all fixed drives or only for the system drive. Changing this argument to **TRUE** restricts all patterns to the system drive.

  **Default value**: False

**Usage:**

```cmd
MigXmlHelper.GenerateDocPatterns ("<ScanProgramFiles>", "<IncludePatterns>", "<SystemDrive>")
```

To create include data patterns for only the system drive:

```xml
<include filter='MigXmlHelper.IgnoreIrrelevantLinks()'>
     <objectSet>
        <script>MigXmlHelper.GenerateDocPatterns ("FALSE","TRUE","TRUE")</script>
     </objectSet>
</include>
```

To create an include rule to gather files for registered extensions from the %PROGRAMFILES% directory:

```xml
<include filter='MigXmlHelper.IgnoreIrrelevantLinks()'>
     <objectSet>
        <script>MigXmlHelper.GenerateDocPatterns ("TRUE","TRUE","FALSE")</script>
     </objectSet>
</include>
```

To create exclude data patterns:

```xml
<exclude filter='MigXmlHelper.IgnoreIrrelevantLinks()'>
     <objectSet>
        <script>MigXmlHelper.GenerateDocPatterns ("FALSE","FALSE","FALSE")</script>
     </objectSet>
</exclude>
```

### Understanding the system and user context

The migration XML files contain two &lt;component&gt; elements with different **context** settings. The system context applies to files on the computer that aren't stored in the User Profiles directory, while the user context applies to files that are particular to an individual user.

#### System context

The system context includes rules for data outside of the User Profiles directory. For example, when called in a system context in the `MigDocs.xml` file, the `GenerateDocPatterns` function creates patterns for all common shell folders, files in the root directory of hard drives, and folders located at the root of hard drives. The following folders are included:

- CSIDL_COMMON_DESKTOPDIRECTORY

- CSIDL_COMMON_FAVORITES

- CSIDL_COMMON_DOCUMENTS

- CSIDL_COMMON_MUSIC

- CSIDL_COMMON_PICTURES

- CSIDL_COMMON_VIDEO

- FOLDERID_PublicDownloads

#### User context

The user context includes rules for data in the User Profiles directory. When called in a user context in the `MigDocs.xml` file, the `GenerateDocPatterns` function creates patterns for all user shell folders, files located at the root of the profile, and folders located at the root of the profile. The following folders are included:

- CSIDL_MYDOCUMENTS

- CSIDL_MYPICTURES

- FOLDERID_OriginalImages

- CSIDL_MYMUSIC

- CSIDL_MYVIDEO

- CSIDL_FAVORITES

- CSIDL_DESKTOP

- CSIDL_QUICKLAUNCH

- FOLDERID_Contacts

- FOLDERID_Libraries

- FOLDERID_Downloads

- FOLDERID_SavedGames

- FOLDERID_RecordedTV

> [!NOTE]
> Rules contained in a component that is assigned the user context will be run for each user profile on the computer. Files that are scanned multiple times by the `MigDocs.xml` files will only be copied to the migration store once; however, a large number of rules in the user context can slow down the migration. Use the system context when it is applicable.

### Sample migration rules for customized versions of XML files

> [!NOTE]
> For best practices and requirements for customized XML files in USMT, see [Customize USMT XML Files](usmt-customize-xml-files.md) and [General Conventions](usmt-general-conventions.md).

### Exclude rules usage examples

In the examples below, the source computer has a .txt file called "new text document" in a directory called "new folder". The default `MigDocs.xml` behavior migrates the new text document.txt file and all files contained in the "new folder" directory. The rules generated by the function are:

| Rule | Syntax |
|--- |--- |
|Rule 1|`<pattern type="File">d:\new folder[new text document.txt]</pattern>`|
|Rule 2|`<pattern type="File">d:\new folder[]</pattern>`|

To exclude the new text document.txt file and any .txt files in "new folder", you can do the following modification:

#### Example 1: Exclude all .txt files in a folder

To exclude Rule 1, there needs to be an exact match of the file name. However, for Rule 2, you can create a pattern to exclude files by using the file name extension.

```xml
<exclude>
     <objectSet>
        <pattern type="File">D:\Newfolder\[new text document.txt]</pattern>
         <pattern type="File">D:\New folder\*[*.txt]</pattern>
     </objectSet>
</exclude>
```

#### Example 2: Use the UnconditionalExclude element to give a rule precedence over include rules

If you don't know the file name or location of the file, but you do know the file name extension, you can use the `GenerateDrivePatterns` function. However, the rule will be less specific than the default include rule generated by the `MigDocs.xml` file, so it will not have precedence. You must use the &lt;UnconditionalExclude&gt; element to give this rule precedence over the default include rule. For more information about the order of precedence for XML migration rules, see [Conflicts and Precedence](usmt-conflicts-and-precedence.md).

```xml
<unconditionalExclude>
     <objectSet>
        <script>MigXmlHelper.GenerateDrivePatterns ("*[*.txt]", "Fixed")</script>
     </objectSet>
</unconditionalExclude>
```

#### Example 3: Use a UserandSystem context component to run rules in both contexts

If you want the **&lt;UnconditionalExclude&gt;** element to apply to both the system and user context, you can create a third component using the **UserandSystem** context. Rules in this component will be run in both contexts.

```xml
<component type="Documents" context="UserandSystem">
   <displayName>MigDocExcludes</displayName>
   <role role="Data">
     <rules>
       <unconditionalExclude>
         <objectSet>
                <script>MigXmlHelper.GenerateDrivePatterns ("*[*.txt]", "Fixed")</script>
         </objectSet>
       </unconditionalExclude>
     </rules>
   </role>
</component>
```

For more examples of exclude rules that you can use in custom migration XML files, see [Exclude Files and Settings](usmt-exclude-files-and-settings.md).

### Include rules usage examples

The application data directory is the most common location that you would need to add an include rule for. The `GenerateDocPatterns` function excludes this location by default. If your company uses an application that saves important data to this location, you can create include rules to migrate the data. For example, the default location for .pst files is: `%CSIDL_LOCAL_APPDATA%\Microsoft\Outlook`. The `MigApp.xml` file contains migration rules to move only those .pst files that are linked to Microsoft Outlook. To include .pst files that aren't linked, you can do the following modification:

#### Example 1: Include a file name extension in a known user folder

This rule will include .pst files that are located in the default location, but aren't linked to Microsoft Outlook. Use the user context to run this rule for each user on the computer.

```xml
<include filter='MigXmlHelper.IgnoreIrrelevantLinks()'>
     <objectSet>
        <pattern type="File">%CSIDL_LOCAL_APPDATA%\Microsoft\Outlook\*[*.pst]</pattern>
     </objectSet>
</include>
```

#### Example 2: Include a file name extension in Program Files

For locations outside the user profile, such as the Program Files folder, you can add the rule to the system context component.

```xml
<include filter='MigXmlHelper.IgnoreIrrelevantLinks()'>
     <objectSet>
        <pattern type="File">%CSIDL_PROGRAM_FILES%\*[*.pst]</pattern>
     </objectSet>
</include>
```

For more examples of include rules that you can use in custom migration XML files, see [Include Files and Settings](usmt-include-files-and-settings.md).

> [!NOTE]
> For more information about the order of precedence for XML migration rules, see [Conflicts and Precedence](usmt-conflicts-and-precedence.md).

## Next steps

You can include additional rules for the migration in the `MigDocs.xml` file or other XML migration files. For example, you can use the `<locationModify>` element to move files from the folder where they were gathered to a different folder, when they're applied to the destination computer.

You can use an XML schema (MigXML.xsd) file to validate the syntax of your customized XML files. For more information, see [USMT Resources](usmt-resources.md).

## Related articles

[Exclude files and settings](usmt-exclude-files-and-settings.md)

[Include files and settings](usmt-include-files-and-settings.md)

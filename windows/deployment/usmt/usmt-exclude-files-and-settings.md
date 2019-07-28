---
title: Exclude Files and Settings (Windows 10)
description: Exclude Files and Settings
ms.assetid: df85baf1-6e29-4995-a4bb-ba3f8f7fed0b
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Exclude Files and Settings
When you specify the migration .xml files, MigApp.xml, Migdocs, and MigUser.xml, the User State Migration Tool (USMT) 10.0 migrates the settings and components listed, as discussed in [What Does USMT Migrate?](usmt-what-does-usmt-migrate.md) You can create a custom .xml file to further specify what to include or exclude in the migration. In addition you can create a Config.xml file to exclude an entire component from a migration. You cannot, however, exclude users by using the migration .xml files or the Config.xml file. The only way to specify which users to include and exclude is by using the User options on the command line in the ScanState tool. For more information, see [ScanState Syntax](usmt-scanstate-syntax.md).

In this topic:

-   [Create a custom .xml file](#create-a-custom-xml-file). You can use the following elements to specify what to exclude:

    -   include and exclude: You can use the &lt;include&gt; and &lt;exclude&gt; elements to exclude objects with conditions. For example, you can migrate all files located in the C:\\ drive, except any .mp3 files. It is important to remember that [Conflicts and Precedence](usmt-conflicts-and-precedence.md) apply to these elements.

    -   [unconditionalExclude](#example-1-how-to-migrate-all-files-from-c-except-mp3-files): You can use the &lt;unconditionalExclude&gt; element to globally exclude data. This element takes precedence over all other include and exclude rules in the .xml files. Therefore, this element excludes objects regardless of any other &lt;include&gt; rules that are in the .xml files. For example, you can exclude all .mp3 files on the computer, or you can exclude all files from C:\\UserData.

-   [Create a Config.xml File](#create-a-config-xml-file): You can create and modify a Config.xml file to exclude an entire component from the migration. For example, you can use this file to exclude the settings for one of the default applications. In addition, creating and modifying a Config.xml file is the only way to exclude the operating-system settings that are migrated to computers running Windows. Excluding components using this file is easier than modifying the migration .xml files because you do not need to be familiar with the migration rules and syntax.

## Create a custom .xml file
We recommend that you create a custom .xml file instead of modifying the default migration .xml files. When you use a custom .xml file, you can keep your changes separate from the default .xml files, which makes it easier to track your modifications.

### &lt;include&gt; and &lt;exclude&gt;
The migration .xml files, MigApp.xml, MigDocs, and MigUser.xml, contain the &lt;component&gt; element, which typically represents a self-contained component or an application such as Microsoft® Office Outlook® and Word. To exclude the files and registry settings that are associated with these components, use the &lt;include&gt; and &lt;exclude&gt; elements. For example, you can use these elements to migrate all files and settings with pattern X except files and settings with pattern Y, where Y is more specific than X. For the syntax of these elements, see [USMT XML Reference](usmt-xml-reference.md).

**Note**  
If you specify an &lt;exclude&gt; rule, always specify a corresponding &lt;include&gt; rule. Otherwise, if you do not specify an &lt;include&gt; rule, the specific files or settings will not be included. They will already be excluded from the migration. Thus, an unaccompanied &lt;exclude&gt; rule is unnecessary.

-   [Example 1: How to migrate all files from C:\\ except .mp3 files](#example-1-how-to-migrate-all-files-from-c-except-mp3-files)

-   [Example 2: How to migrate all files located in C:\\Data except files in C:\\Data\\tmp](#example-2-how-to-migrate-all-files-located-in-cdata-except-files-in-cdatatmp)

-   [Example 3: How to exclude the files in a folder but include all subfolders](#example-3-how-to-exclude-the-files-in-a-folder-but-include-all-subfolders)

-   [Example 4: How to exclude a file from a specific folder](#example-4-how-to-exclude-a-file-from-a-specific-folder)

-   [Example 5: How to exclude a file from any location](#example-5-how-to-exclude-a-file-from-any-location)

### Example 1: How to migrate all files from C:\\ except .mp3 files
The following .xml file migrates all files located on the C: drive, except any .mp3 files.

``` xml
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
### Example 2: How to migrate all files located in C:\\Data except files in C:\\Data\\tmp
The following .xml file migrates all files and subfolders in C:\\Data, except the files and subfolders in C:\\Data\\tmp.

``` xml
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
The following .xml file migrates any subfolders in C:\\EngineeringDrafts, but excludes all files that are in C:\\EngineeringDrafts.

``` xml
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
The following .xml file migrates all files and subfolders in C:\\EngineeringDrafts, except for the Sample.doc file in C:\\EngineeringDrafts.

``` xml
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
To exclude a Sample.doc file from any location on the C: drive, use the &lt;pattern&gt; element. If multiple files exist with the same name on the C: drive, all of these files will be excluded.

``` xml
<pattern type="File"> C:\* [Sample.doc] </pattern>
```

To exclude a Sample.doc file from any drive on the computer, use the &lt;script&gt; element. If multiple files exist with the same name, all of these files will be excluded.

``` xml
<script>MigXmlHelper.GenerateDrivePatterns("* [sample.doc]", "Fixed")</script>
```
#### Examples of how to use XML to exclude files, folders, and registry keys
Here are some examples of how to use XML to exclude files, folders, and registry keys. For more info, see [USMT XML Reference](usmt-xml-reference.md)

**Example 1: How to exclude all .mp3 files**<br>
The following .xml file excludes all .mp3 files from the migration:

``` xml
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
**Example 2: How to exclude all of the files on a specific drive**<br>
The following .xml file excludes only the files located on the C: drive.

``` xml
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
**Example 3: How to exclude registry keys**<br>
The following .xml file unconditionally excludes the HKEY_CURRENT_USER registry key and all of its subkeys.

``` xml
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
**Example 4: How to Exclude `C:\Windows` and `C:\Program Files`**<br>
The following .xml file unconditionally excludes the system folders of `C:\Windows` and `C:\Program Files`. Note that all \*.docx, \*.xls and \*.ppt files will not be migrated because the &lt;unconditionalExclude&gt; element takes precedence over the &lt;include&gt; element.

``` xml
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
You can create and modify a Config.xml file if you want to exclude components from the migration. Excluding components using this file is easier than modifying the migration .xml files because you do not need to be familiar with the migration rules and syntax. Config.xml is an optional file that you can create using the **/genconfig** command-line option with the ScanState tool. For example, you can use the Config.xml file to exclude the settings for one of the default applications. In addition, creating and modifying this file is the only way to exclude the operating-system settings that are migrated to computers running Windows.

-   **To exclude the settings for a default application:** Specify `migrate="no"` for the application under the &lt;Applications&gt; section of the Config.xml file.

-   **To exclude an operating system setting:** Specify `migrate="no"` for the setting under the &lt;WindowsComponents&gt; section.

-   **To exclude My Documents:** Specify `migrate="no"` for My Documents under the &lt;Documents&gt; section. Note that any &lt;include&gt; rules in the .xml files will still apply. For example, if you have a rule that includes all the .docx files in My Documents, then only the .docx files will be migrated, but the rest of the files will not.

See [Config.xml File](usmt-configxml-file.md) for more information.

**Note**  
To exclude a component from the Config.xml file, set the **migrate** value to **"no"**. Deleting the XML tag for the component from the Config.xml file will not exclude the component from your migration.

## Related topics
- [Customize USMT XML Files](usmt-customize-xml-files.md)
- [USMT XML Reference](usmt-xml-reference.md)

 

 






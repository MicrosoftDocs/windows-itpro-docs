---
title: Include Files and Settings (Windows 10)
description: Include Files and Settings
ms.assetid: 9009c6a5-0612-4478-8742-abe5eb6cbac8
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: CFaw
---

# Include Files and Settings


When you specify the migration .xml files, User State Migration Tool (USMT) 10.0 migrates the settings and components specified in [What Does USMT Migrate?](what-does-usmt-migrate-usmt-win7-usmt-win8.md) To include additional files and settings, we recommend that you create a custom .xml file and then include this file when using both the ScanState and LoadState commands. By creating a custom .xml file, you can keep your changes separate from the default .xml files, which makes it easier to track your modifications.

In this topic:

[Migrate a Single Registry Key](#BKMK_MigSingleRegKey)

[Migrate a Specific Folder](#BKMK_MigSpecificFolder)

[Migrate a Folder from a Specific Drive](#BKMK_MigFoldSpecDrive)

[Migrate a Folder from Any Location](#BKMK_MigFolderAnyLoc)

[Migrate a File Type Into a Specific Folder](#BKMK_MigFileTypeToSpecificFolder)

[Migrate a Specific File](#BKMK_MigSpecificFile)

##  Migrate a Single Registry Key


The following .xml file migrates a single registry key.

``` syntax
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/test">
     <component type="Application" context="System">
          <displayName>Component to migrate only registry value string</displayName> 
          <role role="Settings">
          <rules>
               <include>
                    <objectSet>
                         <pattern type="Registry">HKLM\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Cache [Persistent]</pattern> 
                    </objectSet>
               </include>
          </rules>
          </role>
     </component>
</migration>
```

## Migrate a Specific Folder


The following examples show how to migrate a folder from a specific drive, and from any location on the computer.

###  Migrate a Folder from a Specific Drive

-   **Including subfolders.** The following .xml file migrates all files and subfolders from C:\\EngineeringDrafts to the destination computer.

    ``` syntax
    <migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/test">
    <component type="Documents" context="System">
      <displayName>Component to migrate all Engineering Drafts Documents including subfolders</displayName>
      <role role="Data">
        <rules>
          <include>
            <objectSet>
              <pattern type="File">C:\EngineeringDrafts\* [*]</pattern>
            </objectSet>
          </include>
        </rules>
      </role>
    </component>
    </migration>
    ```

-   **Excluding subfolders.** The following .xml file migrates all files from C:\\EngineeringDrafts, but it does not migrate any subfolders within C:\\EngineeringDrafts.

    ``` syntax
    <migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/test">
    <component type="Documents" context="System">
      <displayName>Component to migrate all Engineering Drafts Documents without subfolders</displayName>
      <role role="Data">
        <rules>
          <include>
            <objectSet>
              <pattern type="File"> C:\EngineeringDrafts\ [*]</pattern>
            </objectSet>
          </include>
        </rules>
      </role>
    </component>
    </migration>
    ```

### Migrate a Folder from Any Location

The following .xml file migrates all files and subfolders of the EngineeringDrafts folder from any drive on the computer. If multiple folders exist with the same name, then all files with this name are migrated.

``` syntax
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/test">
<component type="Documents" context="System">
  <displayName>Component to migrate all Engineering Drafts Documents folder on any drive on the computer </displayName>
  <role role="Data">
    <rules>
         <include>
            <objectSet>
         <script>MigXmlHelper.GenerateDrivePatterns ("\EngineeringDrafts\* [*] ", "Fixed")</script>            
         <script>MigXmlHelper.GenerateDrivePatterns ("*\EngineeringDrafts\* [*] ", "Fixed")</script>            
       </objectSet>
          </include>
    </rules>
  </role>
</component>
</migration>
```

The following .xml file migrates all files and subfolders of the EngineeringDrafts folder from any location on the C:\\ drive. If multiple folders exist with the same name, they are all migrated.

``` syntax
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/test">
<component type="Documents" context="System">
  <displayName>Component to migrate all Engineering Drafts Documents EngineeringDrafts folder from where ever it exists on the C: drive </displayName>
  <role role="Data">
    <rules>
         <include>
            <objectSet>                 
<pattern type="File"> C:\*\EngineeringDrafts\* [*]</pattern>
<pattern type="File"> C:\EngineeringDrafts\* [*]</pattern>
       </objectSet>
          </include>
    </rules>
  </role>
</component>
</migration>
```

## Migrate a File Type Into a Specific Folder


The following .xml file migrates .mp3 files located in the specified drives on the source computer into the C:\\Music folder on the destination computer.

``` syntax
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/test">
<component type="Documents" context="System">
  <displayName>All .mp3 files to My Documents</displayName>
  <role role="Data">
    <rules>
      <include>
        <objectSet>
          <script>MigXmlHelper.GenerateDrivePatterns ("* [*.mp3]", "Fixed")</script>
        </objectSet>
      </include>
      <!-- Migrates all the .mp3 files in the store to the C:\Music folder during LoadState -->
      <locationModify script="MigXmlHelper.Move('C:\Music')">
        <objectSet>
          <script>MigXmlHelper.GenerateDrivePatterns ("* [*.mp3]", "Fixed")</script>
        </objectSet>
      </locationModify>
    </rules>
  </role>
</component>
</migration> 
```

## Migrate a Specific File


The following examples show how to migrate a file from a specific folder, and how to migrate a file from any location.

-   **To migrate a file from a folder.** The following .xml file migrates only the Sample.doc file from C:\\EngineeringDrafts on the source computer to the destination computer.

    ``` syntax
    <migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/test">
    <component type="Documents" context="System">
      <displayName>Component to migrate all Engineering Drafts Documents</displayName>
      <role role="Data">
        <rules>
          <include>
            <objectSet>
              <pattern type="File"> C:\EngineeringDrafts\ [Sample.doc]</pattern>
            </objectSet>
          </include>
        </rules>
      </role>
    </component>
    </migration>
    ```

-   **To migrate a file from any location.** To migrate the Sample.doc file from any location on the C:\\ drive, use the &lt;pattern&gt; element, as the following example shows. If multiple files exist with the same name on the C:\\ drive, all of files with this name are migrated.

    ``` syntax
    <pattern type="File"> C:\* [Sample.doc] </pattern>
    ```

    To migrate the Sample.doc file from any drive on the computer, use &lt;script&gt; as the following example shows. If multiple files exist with the same name, all files with this name are migrated.

    ``` syntax
    <script>MigXmlHelper.GenerateDrivePatterns("* [sample.doc]", "Fixed")</script>
    ```

## Related topics


[Customize USMT XML Files](customize-usmt-xml-files-usmt-win7-usmt-win8.md)

[Custom XML Examples](custom-xml-examples-usmt-win7-usmt-win8.md)

[Conflicts and Precedence](conflicts-and-precedence-usmt-win7-usmt-win8.md)

[USMT XML Reference](usmt-xml-reference-usmt-win7-usmt-win8.md)

 

 






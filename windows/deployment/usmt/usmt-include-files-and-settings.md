---
title: Include Files and Settings (Windows 10)
description: Include Files and Settings
ms.assetid: 9009c6a5-0612-4478-8742-abe5eb6cbac8
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

# Include Files and Settings


When you specify the migration .xml files, User State Migration Tool (USMT) 10.0 migrates the settings and components specified in [What Does USMT Migrate?](usmt-what-does-usmt-migrate.md) To include additional files and settings, we recommend that you create a custom .xml file and then include this file when using both the ScanState and LoadState commands. By creating a custom .xml file, you can keep your changes separate from the default .xml files, which makes it easier to track your modifications.

In this topic:

[Migrate a Single Registry Key](#bkmk-migsingleregkey)

[Migrate a Specific Folder](#bkmk-migspecificfolder)

[Migrate a Folder from a Specific Drive](#bkmk-migfoldspecdrive)

[Migrate a Folder from Any Location](#bkmk-migfolderanyloc)

[Migrate a File Type Into a Specific Folder](#bkmk-migfiletypetospecificfolder)

[Migrate a Specific File](#bkmk-migspecificfile)

## <a href="" id="bkmk-migsingleregkey"></a> Migrate a Single Registry Key


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

## <a href="" id="bkmk-migspecificfolder"></a>Migrate a Specific Folder


The following examples show how to migrate a folder from a specific drive, and from any location on the computer.

### <a href="" id="bkmk-migfoldspecdrive"></a> Migrate a Folder from a Specific Drive

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

### <a href="" id="bkmk-migfolderanyloc"></a>Migrate a Folder from Any Location

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

## <a href="" id="bkmk-migfiletypetospecificfolder"></a>Migrate a File Type Into a Specific Folder


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

## <a href="" id="bkmk-migspecificfile"></a>Migrate a Specific File


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


[Customize USMT XML Files](usmt-customize-xml-files.md)

[Custom XML Examples](usmt-custom-xml-examples.md)

[Conflicts and Precedence](usmt-conflicts-and-precedence.md)

[USMT XML Reference](usmt-xml-reference.md)

 

 






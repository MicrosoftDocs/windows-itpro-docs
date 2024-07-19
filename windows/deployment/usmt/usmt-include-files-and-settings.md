---
title: Include Files and Settings
description: Specify the migration .xml files that are needed, then use the User State Migration Tool (USMT) to migrate the settings and components specified.
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

# Include Files and Settings

When the migration **.xml** files are specified, User State Migration Tool (USMT) migrates the settings and components specified in [What does USMT migrate?](usmt-what-does-usmt-migrate.md). To include additional files and settings, Microsoft recommends creating a custom **.xml** file, and then include this file when using both the `ScanState.exe` and `LoadState.exe` commands. Creating a custom **.xml** file allows changes to be kept separate from the default **.xml** files. Creating a custom **.xml** file makes it easier to track modifications.

## Migrate a single registry key

The following **.xml** file migrates a single registry key.

```xml
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

## Migrate a specific folder

The following examples show how to migrate a folder from a specific drive, and from any location on the computer.

### Migrate a folder from a specific drive

- **Including subfolders.** The following **.xml** file migrates all files and subfolders from `C:\EngineeringDrafts` to the destination computer.

    ```xml
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

- **Excluding subfolders.** The following **.xml** file migrates all files from `C:\EngineeringDrafts`, but it doesn't migrate any subfolders within `C:\EngineeringDrafts`.

    ```xml
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

### Migrate a folder from any location

The following **.xml** file migrates all files and subfolders of the `EngineeringDrafts` folder from any drive on the computer. If multiple folders exist with the same name, then all files with this name are migrated.

```xml
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

The following **.xml** file migrates all files and subfolders of the `EngineeringDrafts` folder from any location on the `C:\` drive. If multiple folders exist with the same name, they're all migrated.

```xml
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

## Migrate a file type into a specific folder

The following **.xml** file migrates `.mp3` files located in the specified drives on the source computer into the `C:\Music` folder on the destination computer.

```xml
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/test">
<component type="Documents" context="System">
  <displayName>All .mp3 files to the Documents folder</displayName>
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

## Migrate a specific file

The following examples show how to migrate a file from a specific folder, and how to migrate a file from any location.

- **To migrate a file from a folder.** The following **.xml** file migrates only the `Sample.doc` file from `C:\EngineeringDrafts` on the source computer to the destination computer.

    ```xml
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

- **To migrate a file from any location.** To migrate the `Sample.doc` file from any location on the `C:\` drive, use the **\<pattern\>** element, as the following example shows. If multiple files exist with the same name on the `C:\` drive, all of files with this name are migrated.

    ```xml
    <pattern type="File"> C:\* [Sample.doc] </pattern>
    ```

    To migrate the Sample.doc file from any drive on the computer, use \<script\> as the following example shows. If multiple files exist with the same name, all files with this name are migrated.

    ```xml
    <script>MigXmlHelper.GenerateDrivePatterns("* [sample.doc]", "Fixed")</script>
    ```

## Related articles

- [Customize USMT XML files](usmt-customize-xml-files.md).
- [Custom XML examples](usmt-custom-xml-examples.md).
- [Conflicts and precedence](usmt-conflicts-and-precedence.md).
- [USMT XML reference](usmt-xml-reference.md).

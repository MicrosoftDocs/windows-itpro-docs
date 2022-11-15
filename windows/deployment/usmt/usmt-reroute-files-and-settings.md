---
title: Reroute Files and Settings (Windows 10)
description: Learn how to create a custom .xml file and specify this file name on both the ScanState and LoadState command lines to reroute files and settings.
ms.reviewer: 
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 11/01/2022
ms.topic: article
ms.technology: itpro-deploy
---

# Reroute Files and Settings

To reroute files and settings, create a custom .xml file and specify the .xml file name on both the `ScanState.exe` and `LoadState.exe` command-lines. Th custom .xml file enables you to keep your changes separate from the default .xml files, so that it's easier to track your modifications.

## Reroute a folder

The following custom .xml file migrates the directories and files from `C:\EngineeringDrafts` into the **My Documents** folder of every user. **%CSIDL_PERSONAL%** is the virtual folder representing the **My Documents** desktop item, which is equivalent to **CSIDL_MYDOCUMENTS**.

``` xml
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/test">
<component type="Documents" context="User">
  <displayName>Engineering Drafts Documents to Personal Folder</displayName>
  <role role="Data">
    <rules>
      <!-- Migrate all directories and files present in c:\EngineeringDrafts folder -->
      <include>
        <objectSet>
          <pattern type="File">C:\EngineeringDrafts\* [*]</pattern>
        </objectSet>
      </include>
      <!-- This migrates all files and directories from C:\EngineeringDrafts to every user's personal folder.-->
      <locationModify script="MigXmlHelper.RelativeMove('C:\EngineeringDrafts','%CSIDL_PERSONAL%')">
        <objectSet>
          <pattern type="File">C:\EngineeringDrafts\* [*]</pattern>
        </objectSet>
      </locationModify>
    </rules>
  </role>
</component>
</migration>
```

## Reroute a specific file type

The following custom .xml file reroutes .mp3 files located in the fixed drives on the source computer into the `C:\Music` folder on the destination computer.

``` xml
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

## Reroute a specific file

The following custom .xml file migrates the `Sample.doc` file from `C:\EngineeringDrafts` into the **My Documents** folder of every user. **%CSIDL_PERSONAL%** is the virtual folder representing the **My Documents** desktop item, which is equivalent to **CSIDL_MYDOCUMENTS**.

``` xml
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/test">
<component type="Documents" context="User">
<displayName>Sample.doc into My Documents</displayName>
    <role role="Data">
      <rules>
        <include> 
          <objectSet>     
                 <pattern type="File"> C:\EngineeringDrafts\ [Sample.doc]</pattern>
          </objectSet>
        </include>
       <locationModify script="MigXmlHelper.RelativeMove('C:\EngineeringDrafts','%CSIDL_PERSONAL%')">
        <objectSet>
                 <pattern type="File"> C:\EngineeringDrafts\ [Sample.doc]</pattern>
        </objectSet>
       </locationModify>
      </rules>
    </role>
</component>
</migration>
```

## Related articles

[Customize USMT XML files](usmt-customize-xml-files.md)

[Conflicts and precedence](usmt-conflicts-and-precedence.md)

[USMT XML reference](usmt-xml-reference.md)

---
title: Reroute Files and Settings (Windows 10)
description: Reroute Files and Settings
ms.assetid: 905e6a24-922c-4549-9732-60fa11862a6c
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

# Reroute Files and Settings


To reroute files and settings, create a custom .xml file and specify this file name on both the ScanState and LoadState commandlines. This enables you to keep your changes separate from the default .xml files, so that it is easier to track your modifications.

In this topic:

-   [Reroute a Folder](#bkmk-reroutefolder)

-   [Reroute a Specific File Type](#bkmk-reroutespecfiletype)

-   [Reroute a Specific File](#bkmk-reroutespecificfile)

## <a href="" id="bkmk-reroutefolder"></a>Reroute a Folder


The following custom .xml file migrates the directories and files from C:\\EngineeringDrafts into the My Documents folder of every user. %CSIDL\_PERSONAL% is the virtual folder representing the My Documents desktop item, which is equivalent to CSIDL\_MYDOCUMENTS.

```xml
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
      <!-- This migrates all files and directories from C:\EngineeringDrafts to every user’s personal folder.-->
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

## <a href="" id="bkmk-reroutespecfiletype"></a>Reroute a Specific File Type


The following custom .xml file reroutes .mp3 files located in the fixed drives on the source computer into the C:\\Music folder on the destination computer.

```xml
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

## <a href="" id="bkmk-reroutespecificfile"></a>Reroute a Specific File


The following custom .xml file migrates the Sample.doc file from C:\\EngineeringDrafts into the My Documents folder of every user. %CSIDL\_PERSONAL% is the virtual folder representing the My Documents desktop item, which is equivalent to CSIDL\_MYDOCUMENTS.

```xml
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

## Related topics


[Customize USMT XML Files](usmt-customize-xml-files.md)

[Conflicts and Precedence](usmt-conflicts-and-precedence.md)

[USMT XML Reference](usmt-xml-reference.md)

 

 






---
title: Custom XML Examples
description: Use custom XML examples to learn how to migrate an unsupported application, migrate files and registry keys, and migrate the Videos folder.
ms.reviewer: kevinmi,warrenw
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.topic: conceptual
ms.subservice: itpro-deploy
ms.date: 01/09/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Custom XML Examples

## Example 1: Migrating an unsupported application

The following template is a template for the sections that are needed to migrate applications. The template isn't functional on its own, but it can be used to write custom **.xml** file.

**Template**
<br>
<details>
  <summary>Expand to show <b>Example 1</b> application template:</summary>

```xml
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/migtestapp">
  <component type="Application">
    <!-- Name of the application -->
    <displayName>Some Application</displayName>
    <!-- Specify whether the environment variables exist in the context of user or system or both -->
    <environment context="System">
      <!-- Create the environment variables -->
      <variable name="myVar1">
        <!-- Simple text value assignment to a variable -->
        <text>value</text>
      </variable>
      <variable name="myAppExePath">
        <!-- Make a call to in-built helper function to get a value from a reg key and assign that value to the variable -->
        <script>MigXMLHelper.GetStringContent("Registry","HKLM\Software\MyApp\Installer [EXEPATH]")</script>
      </variable>
    </environment>
    <role role="Settings">
      <detects>
        <!-- All of these checks must be true for the component to be detected -->
        <detect>
          <!-- Make a call to in-built helper function to check if an object exists or not -->
          <condition>MigXMLHelper.DoesObjectExist("Registry","HKLM\Software\MyApp [win32_version]")</condition>
        </detect>
        <detect>
          <!-- Either of these checks must be true for the component to be detected -->
          <!-- Make a call to in-built helper function to check if a file version matches or not -->
          <condition>MigXMLHelper.DoesFileVersionMatch("%MyAppExePath%","ProductVersion","8.*")</condition>
          <condition>MigXMLHelper.DoesFileVersionMatch("%MyAppExePath%","ProductVersion","9.*")</condition>
        </detect>
      </detects>
      <!-- Describe the rules that will be executed during migration of this component and the context, whether user, system or both -->
      <rules context="User">
        <!-- Delete objects specified in the object set on the destination computer before applying source objects -->
        <destinationCleanup>
          <!-- Describe the pattern for the list of objects to be deleted -->
          <objectSet>
            <pattern type="Registry">HKCU\Software\MyApp\Toolbar\* [*]</pattern>
            <pattern type="Registry">HKCU\Software\MyApp\ListView\* [*]</pattern>
            <pattern type="Registry">HKCU\Software\MyApp [ShowTips]</pattern>
          </objectSet>
        </destinationCleanup>
        <!-- Specify which set of objects should be migrated -->
        <include>
          <!-- Describe the pattern for the list of objects to be included -->
          <objectSet>
            <pattern type="Registry">HKCU\Software\MyApp\Toolbar\* [*]</pattern>
            <pattern type="Registry">HKCU\Software\MyApp\ListView\* [*]</pattern>
            <pattern type="Registry">HKCU\Software\MyApp [ShowTips]</pattern>
          </objectSet>
        </include>
        <!-- Specify which set of objects should not be migrated -->
        <exclude>
          <!-- Describe the pattern for the list of objects to be excluded from migration -->
          <objectSet>
            <pattern type="Registry">HKCU\Software\MyApp [Display]</pattern>
          </objectSet>
        </exclude>
      </rules>
    </role>
  </component>
</migration>
```

</details>

## Example 2: Migrating the My Videos folder

The following sample is a custom **.xml** file named `CustomFile.xml` that migrates the **Videos** folder for all users, if the folder exists on the source computer.

- **Sample condition**: Verifies that the **Videos** folder exists on the source computer:

  `<condition>MigXmlHelper.DoesObjectExist("File","%CSIDL_MYVIDEO%")</condition>`

- **Sample filter**: Filters out the shortcuts in the **Videos** folder that don't resolve on the destination computer:

  `<include filter='MigXmlHelper.IgnoreIrrelevantLinks()'>`

  This filter has no effect on files that aren't shortcuts. For example, if there's a shortcut in the **Videos** folder on the source computer that points to `C:\Folder1`, that shortcut is migrated only if `C:\Folder1` exists on the destination computer. However, all other files, such as **.mp3** files, migrate without any filtering.

- **Sample pattern**: Migrates the **Videos** folder for all users:

  `<pattern type="File">%CSIDL_MYVIDEO%* [*]</pattern>`

**XML file**
<br>
<details>
  <summary>Expand to show <b>Example 2</b> XML file:</summary>

```xml
<?xml version="1.0" encoding="UTF-8"?>
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/CustomFile">
<component type="Documents" context="User">
        <displayName>My Video</displayName>
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
           </rules>
        </role>
    </component>
</migration>
```

</details>

## Example 3: Migrating files and registry keys

The sample patterns describe the behavior in the following example **.xml** file.

- **Sample pattern**: Migrates all instances of the file `Usmttestfile.txt` from all subdirectories under `%ProgramFiles%\USMTTestFolder`:

  `<pattern type="File">%ProgramFiles%\USMTTestFolder* [USMTTestFile.txt]</pattern>`

- **Sample pattern**: Migrates the whole directory under `%ProgramFiles%\USMTDIRTestFolder`:

  `<pattern type="File">%ProgramFiles%\USMTDIRTestFolder* []</pattern>`

- **Sample pattern**: Migrates all instances of MyKey under `HKCU\Software\USMTTESTKEY`:

  `<pattern type="Registry">HKCU\Software\USMTTESTKEY* [MyKey]</pattern>`

- **Sample pattern**: Migrates the entire registry hive under `HKLM\Software\USMTTESTKEY`:

  `<pattern type="Registry">HKLM\Software\USMTTESTKEY* []</pattern>`

**XML file**
<br>
<details>
  <summary>Expand to show <b>Example 3</b> XML file:</summary>

```xml
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/testfilemig">
  <component type="Application" context="System">
   <displayName>File Migration Test</displayName>
   <role role="Data">
    <rules context="System">
     <include>
      <objectSet>
        <pattern type="File">%ProgramFiles%\USMTTestFolder\* [USMTTestFile.txt]</pattern>
        <pattern type="File">%ProgramFiles%\USMTDIRTestFolder\* [*]</pattern>
      </objectSet>
    </include>
   </rules>
  </role>
</component>
<component type="System">
  <displayName>Registry Migration Test</displayName>
  <role role="Settings">
   <rules context="UserAndSystem">
     <include>
      <objectSet>
          <pattern type="Registry">HKCU\Software\USMTTESTKEY\* [MyKey]</pattern>
          <pattern type="Registry">HKLM\Software\USMTTESTKEY\* [*]</pattern>
      </objectSet>
     </include>
   </rules>
  </role>
 </component>
</migration>
```

</details>

## Example 4: Migrating specific folders from various locations

The behavior for this custom **.xml** file is described within the `<displayName>` tags in the code.

**XML file**
<br>
<details>
  <summary>Expand to show <b>Example 4</b> XML file:</summary>

```xml
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/test">

<component type="Documents" context="System">
  <displayName>Component to migrate all Engineering Drafts subfolders without documents in this folder </displayName>
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

<component type="Documents" context="System">
  <displayName>Component to migrate all user documents except Sample.doc</displayName>
  <role role="Data">
    <rules>
          <include>
            <objectSet>
                 <pattern type="File"> C:\UserDocuments\* [*]</pattern>
            </objectSet>
          </include>
          <exclude>
             <objectSet>
                 <pattern type="File"> C:\UserDocuments\ [Sample.doc]</pattern>
             </objectSet>
          </exclude>
    </rules>
  </role>
</component>

<component type="Documents" context="System">
  <displayName>Component to migrate all Requests folders on any drive on the computer </displayName>
  <role role="Data">
    <rules>
         <include>
            <objectSet>
                 <script>MigXmlHelper.GenerateDrivePatterns ("\Requests\* [*] ", "Fixed")</script>            
                 <script>MigXmlHelper.GenerateDrivePatterns ("*\Requests\* [*] ", "Fixed")</script>            
            </objectSet>
          </include>
    </rules>
  </role>
</component>

<component type="Documents" context="System">
  <displayName>Component to migrate all Presentations folder from any location on the C: drive </displayName>
  <role role="Data">
    <rules>
         <include>
            <objectSet>                 
                 <pattern type="File"> C:\*\Presentations\* [*]</pattern>
                 <pattern type="File"> C:\Presentations\* [*]</pattern>
           </objectSet>
          </include>
    </rules>
  </role>
</component>
</migration>
```

</details>

## Related articles

- [USMT XML reference](usmt-xml-reference.md).
- [Customize USMT XML files](usmt-customize-xml-files.md).

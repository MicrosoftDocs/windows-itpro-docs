---
title: Custom XML Examples (Windows 10)
description: Custom XML Examples
ms.assetid: 48f441d9-6c66-43ef-91e9-7c78cde6fcc0
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

# Custom XML Examples


**Note**  
Because the tables in this topic are wide, you may need to adjust the width of its window.

 

## In This Topic:


-   [Example 1: Migrating an Unsupported Application](#example)

-   [Example 2: Migrating the My Videos Folder](#example2)

-   [Example 3: Migrating Files and Registry Keys](#example3)

-   [Example 4: Migrating Specific Folders from Various Locations](#example4)

## <a href="" id="example"></a>Example 1: Migrating an Unsupported Application


The following is a template for the sections that you need to migrate your application. The template is not functional on its own, but you can use it to write your own .xml file.

``` syntax
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

## <a href="" id="example2"></a>Example 2: Migrating the My Videos Folder


The following is a custom .xml file named CustomFile.xml that migrates My Videos for all users, if the folder exists on the source computer.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Code</th>
<th align="left">Behavior</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><pre class="syntax" space="preserve"><code>&lt;condition&gt;MigXmlHelper.DoesObjectExist(&quot;File&quot;,&quot;%CSIDL_MYVIDEO%&quot;)&lt;/condition&gt;</code></pre></td>
<td align="left"><p>Verifies that My Videos exists on the source computer.</p></td>
</tr>
<tr class="even">
<td align="left"><pre class="syntax" space="preserve"><code>&lt;include filter=&#39;MigXmlHelper.IgnoreIrrelevantLinks()&#39;&gt;</code></pre></td>
<td align="left"><p>Filters out the shortcuts in My Videos that do not resolve on the destination computer. This has no effect on files that are not shortcuts. For example, if there is a shortcut in My Videos on the source computer that points to C:\Folder1, that shortcut will be migrated only if C:\Folder1 exists on the destination computer. However, all other files, such as .mp3 files, migrate without any filtering.</p></td>
</tr>
<tr class="odd">
<td align="left"><pre class="syntax" space="preserve"><code>&lt;pattern type=&quot;File&quot;&gt;%CSIDL_MYVIDEO%* [*]&lt;/pattern&gt;</code></pre></td>
<td align="left"><p>Migrates My Videos for all users.</p></td>
</tr>
</tbody>
</table>

 

``` syntax
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

## <a href="" id="example3"></a>Example 3: Migrating Files and Registry Keys


This table describes the behavior in the following example .xml file.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Code</th>
<th align="left">Behavior</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><pre class="syntax" space="preserve"><code>&lt;pattern type=&quot;File&quot;&gt;%ProgramFiles%\USMTTestFolder* [USMTTestFile.txt]&lt;/pattern&gt;</code></pre></td>
<td align="left"><p>Migrates all instances of the file Usmttestfile.txt from all sub-directories under %ProgramFiles%\USMTTestFolder.</p></td>
</tr>
<tr class="even">
<td align="left"><pre class="syntax" space="preserve"><code>&lt;pattern type=&quot;File&quot;&gt;%ProgramFiles%\USMTDIRTestFolder* [<em>]&lt;/pattern&gt;</code></pre></td>
<td align="left"><p>Migrates the whole directory under %ProgramFiles%\USMTDIRTestFolder.</p></td>
</tr>
<tr class="odd">
<td align="left"><pre class="syntax" space="preserve"><code>&lt;pattern type=&quot;Registry&quot;&gt;HKCU\Software\USMTTESTKEY* [MyKey]&lt;/pattern&gt;</code></pre></td>
<td align="left"><p>Migrates all instances of MyKey under HKCU\Software\USMTTESTKEY.</p></td>
</tr>
<tr class="even">
<td align="left"><pre class="syntax" space="preserve"><code>&lt;pattern type=&quot;Registry&quot;&gt;HKLM\Software\USMTTESTKEY* [</em>]&lt;/pattern&gt;</code></pre></td>
<td align="left"><p>Migrates the entire registry hive under HKLM\Software\USMTTESTKEY.</p></td>
</tr>
</tbody>
</table>

 

``` syntax
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

## <a href="" id="example4"></a>Example 4: Migrating Specific Folders from Various Locations


The behavior for this custom .xml file is described within the &lt;`displayName`&gt; tags in the code.

``` syntax
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

## Related topics


[USMT XML Reference](usmt-xml-reference.md)

[Customize USMT XML Files](usmt-customize-xml-files.md)

 

 






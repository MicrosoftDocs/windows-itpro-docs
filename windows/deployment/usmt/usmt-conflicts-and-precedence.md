---
title: Conflicts and Precedence (Windows 10)
description: Conflicts and Precedence
ms.assetid: 0e2691a8-ff1e-4424-879b-4d5a2f8a113a
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: lomayor
ms.date: 04/19/2017
ms.topic: article
---

# Conflicts and Precedence


When you include, exclude, and reroute files and settings, it is important to know how User State Migration Tool (USMT) 10.0 deals with conflicts and precedence. When working with USMT, the following are the most important conflicts and precedence guidelines to keep in mind.

-   **If there are conflicting rules within a component, the most specific rule is applied.** However, the &lt;unconditionalExclude&gt; rule is an exception because it takes precedence over all others. Directory names take precedence over file extensions. For examples, see [What happens when there are conflicting include and exclude rules?](#bkmk1) and the first example in [Include and exclude precedence examples](#precexamples)****later in this topic.

-   **Only rules inside the same component can affect each other, depending on specificity.** Rules that are in different components do not affect each other, except for the &lt;unconditionalExclude&gt; rule.

-   **If the rules are equally specific, &lt;exclude&gt; takes precedence over &lt;include&gt;.** For example, if you use the &lt;exclude&gt; rule to exclude a file and use the &lt;include&gt; rule to include the same file, the file will be excluded.

-   **The ordering of components does not matter.** It does not matter which components are listed in which .xml file, because each component is processed independently of the other components across all of the .xml files.

-   **The ordering of the &lt;include&gt; and &lt;exclude&gt; rules within a component does not matter.**

-   **You can use the &lt;unconditionalExclude&gt; element to globally exclude data.** This element excludes objects, regardless of any other &lt;include&gt; rules that are in the .xml files. For example, you can use the &lt;unconditionalExclude&gt; element to exclude all MP3 files on the computer or to exclude all files from C:\\UserData.

## In This Topic


**General**

-   [What is the relationship between rules that are located within different components?](#bkmk2)

-   [How does precedence work with the Config.xml file?](#bkmk3)

-   [How does USMT process each component in an .xml file with multiple components?](#bkmk4)

-   [How are rules processed?](#bkmk5)

-   [How does USMT combine all of the .xml files that I specify on the command line?](#bkmk6)

**The &lt;include&gt; and &lt;exclude&gt; rules**

-   [What happens when there are conflicting include and exclude rules?](#bkmk1)

-   [&lt;include&gt; and &lt;exclude&gt; precedence examples](#precexamples)

**File collisions**

-   [What is the default behavior when there are file collisions?](#collisions)

-   [How does the &lt;merge&gt; rule work when there are file collisions?](#bkmk11)

## General


### <a href="" id="bkmk2"></a>What is the relationship between rules that are located within different components?

Only rules inside the same component can affect each other, depending on specificity, except for the &lt;unconditionalExclude&gt; rule. Rules that are in different components do not affect each other. If there is an &lt;include&gt; rule in one component and an identical &lt;exclude&gt; rule in another component, the data will be migrated because the two rules are independent of each other.

If you have an &lt;include&gt; rule in one component and a &lt;locationModify&gt; rule in another component for the same file, the file will be migrated in both places. That is, it will be included based on the &lt;include&gt; rule, and it will be migrated based on the &lt;locationModify&gt; rule.

The following .xml file migrates all files from C:\\Userdocs, including .mp3 files, because the &lt;exclude&gt; rule is specified in a separate component.

``` syntax
<migration urlid="http://www.microsoft.com/migration/1.0/migxmlext/UserDocs">
<component type="Documents" context="System">
<displayName>User Documents</displayName>
        <role role="Data">
            <rules>
                <exclude>
                    <objectSet>
                        <pattern type="File">C:\Userdocs\* [*.mp3]</pattern>
                    </objectSet>
                </exclude>
          </rules>
        </role>
</component>

<component type="Documents" context="System">
<displayName> User documents to include </displayName>
        <role role="Data">
            <rules>
                <include>
                    <objectSet>
                        <pattern type="File"> C:\Userdocs\ [*]</pattern>
                    </objectSet>
                </include>
          </rules>
        </role>
</component>
</migration>
```

### <a href="" id="bkmk3"></a>How does precedence work with the Config.xml file?

Specifying `migrate="no"` in the Config.xml file is the same as deleting the corresponding component from the migration .xml file. However, if you set `migrate="no"` for My Documents, but you have a rule similar to the one shown below in a migration .xml file (which includes all of the .doc files from My Documents), then only the .doc files will be migrated, and all other files will be excluded.

``` syntax
<include>
   <objectSet>
      <pattern type="File">%CSIDL_PERSONAL%\* [*.doc] </pattern>
   </objectSet>
</include> 
```

### <a href="" id="bkmk4"></a>How does USMT process each component in an .xml file with multiple components?

The ordering of components does not matter. Each component is processed independently of other components. For example, if you have an &lt;include&gt; rule in one component and a &lt;locationModify&gt; rule in another component for the same file, the file will be migrated in both places. That is, it will be included based on the &lt;include&gt; rule, and it will be migrated based on the &lt;locationModify&gt; rule.

### <a href="" id="bkmk5"></a>How are rules processed?

There are two broad categories of rules.

-   **Rules that affect the behavior of both the ScanState and LoadState tools**. For example, the &lt;include&gt;, &lt;exclude&gt;, and &lt;unconditionalExclude&gt; rules are processed for each component in the .xml files. For each component, USMT creates an include list and an exclude list. Some of the rules in the component might be discarded due to specificity, but all of the remaining rules are processed. For each &lt;include&gt; rule, USMT iterates through the elements to see if any of the locations need to be excluded. USMT enumerates all of the objects and creates a list of objects it is going to collect for each user. Once the list is complete, each of the objects is stored or migrated to the destination computer.

-   **Rules that affect the behavior of only the LoadState tool**. For example, the &lt;locationModify&gt;, &lt;contentModify&gt;, and &lt;destinationCleanup&gt; rules do not affect ScanState. They are processed only with LoadState. First, the LoadState tool determines the content and location of each component based on the &lt;locationModify&gt;and &lt;contentModify&gt; rules. Then, LoadState processes all of the &lt;destinationCleanup&gt; rules and deletes data from the destination computer. Lastly, LoadState applies the components to the computer.

### <a href="" id="bkmk6"></a>How does USMT combine all of the .xml files that I specify on the command line?

USMT does not distinguish the .xml files based on their name or content. It processes each component within the files separately. USMT supports multiple .xml files only to make it easier to maintain and organize the components within them. Because USMT uses a urlid to distinguish each component from the others, be sure that each .xml file that you specify on the command line has a unique migration urlid.

## <a href="" id="the--include--and--exclude--rules"></a>The &lt;include&gt; and &lt;exclude&gt; rules


### <a href="" id="bkmk1"></a>What happens when there are conflicting &lt;include&gt; and &lt;exclude&gt; rules?

If there are conflicting rules within a component, the most specific rule is applied, except with the &lt;unconditionalExclude&gt; rule, which takes precedence over all other rules. If the rules are equally specific, then the data will be not be migrated. For example if you exclude a file, and include the same file, the file will not be migrated. If there are conflicting rules within different components, the rules do not affect each other because each component is processed independently.

In the following example, mp3 files will not be excluded from the migration. This is because directory names take precedence over the file extensions.

``` syntax
<include>
     <objectSet>
          <pattern type="File">C:\Data\* [*]</pattern>
     </objectSet>
</include>
<exclude>
     <objectSet>
          <pattern type="File"> C:\* [*.mp3]</pattern>
     </objectSet>
</exclude>  
```

### <a href="" id="precexamples"></a>&lt;include&gt; and &lt;exclude&gt; rules precedence examples

These examples explain how USMT deals with &lt;include&gt; and &lt;exclude&gt; rules. When the rules are in different components, the resulting behavior will be the same regardless of whether the components are in the same or in different migration .xml files.

-   [Including and excluding files](#filesex)

-   [Including and excluding registry objects](#regex)

### <a href="" id="filesex"></a>Including and excluding files

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">If you have the following code in the same component</th>
<th align="left">Resulting behavior</th>
<th align="left">Explanation</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><ul>
<li><p>Include rule: &lt;pattern type=&quot;File&quot;&gt;C:\Dir1* [<em>]&lt;/pattern&gt;</p></li>
<li><p>Exclude rule: &lt;pattern type=&quot;File&quot;&gt;C:* [</em>.txt]&lt;/pattern&gt;</p></li>
</ul></td>
<td align="left"><p>Migrates all files and subfolders in Dir1 (including all .txt files in C:).</p></td>
<td align="left"><p>The &lt;exclude&gt; rule does not affect the migration because the &lt;include&gt; rule is more specific.</p></td>
</tr>
<tr class="even">
<td align="left"><ul>
<li><p>Include rule: &lt;pattern type=&quot;File&quot;&gt;C:\Dir1* [<em>]&lt;/pattern&gt;</p></li>
<li><p>Exclude rule: &lt;pattern type=&quot;File&quot;&gt;C:\Dir1\Dir2* [</em>.txt]&lt;/pattern&gt;</p></li>
</ul></td>
<td align="left"><p>Migrates all files and subfolders in C:\Dir1, except the .txt files in C:\Dir1\Dir2 and its subfolders.</p></td>
<td align="left"><p>Both rules are processed as intended.</p></td>
</tr>
<tr class="odd">
<td align="left"><ul>
<li><p>Include rule: &lt;pattern type=&quot;File&quot;&gt;C:\Dir1* [<em>]&lt;/pattern&gt;</p></li>
<li><p>Exclude rule: &lt;pattern type=&quot;File&quot;&gt;C:\Dir1\ * [</em>.txt]&lt;/pattern&gt;</p></li>
</ul></td>
<td align="left"><p>Migrates all files and subfolders in C:\Dir1, except the .txt files in C:\Dir1 and its subfolders.</p></td>
<td align="left"><p>Both rules are processed as intended.</p></td>
</tr>
<tr class="even">
<td align="left"><ul>
<li><p>Include rule: &lt;pattern type=&quot;File&quot;&gt;C:\Dir1\Dir2* [<em>.txt]&lt;/pattern&gt;</p></li>
<li><p>Exclude rule: &lt;pattern type=&quot;File&quot;&gt;C:\Dir1\Dir2* [</em>.txt]&lt;/pattern&gt;</p></li>
</ul></td>
<td align="left"><p>Nothing will be migrated.</p></td>
<td align="left"><p>The rules are equally specific, so the &lt;exclude&gt; rule takes precedence over the &lt;include&gt; rule.</p></td>
</tr>
<tr class="odd">
<td align="left"><ul>
<li><p>Include rule: C:\Dir1* [<em>.txt]</p></li>
<li><p>Exclude rule: C:\Dir1\Dir2* [</em>]</p></li>
</ul></td>
<td align="left"><p>Migrates the .txt files in Dir1 and the .txt files from subfolders other than Dir2.</p>
<p>No files are migrated from Dir2 or its subfolders.</p></td>
<td align="left"><p>Both rules are processed as intended.</p></td>
</tr>
<tr class="even">
<td align="left"><ul>
<li><p>Include rule: C:\Dir1\Dir2* [<em>]</p></li>
<li><p>Exclude rule: C:\Dir1* [</em>.txt]</p></li>
</ul></td>
<td align="left"><p>Migrates all files and subfolders of Dir2, except the .txt files from Dir1 and any subfolders of Dir1 (including Dir2).</p></td>
<td align="left"><p>Both rules are processed as intended.</p></td>
</tr>
</tbody>
</table>

 

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">If you have the following code in different components</th>
<th align="left">Resulting behavior</th>
<th align="left">Explanation</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Component 1:</p>
<ul>
<li><p>Include rule: &lt;pattern type=&quot;File&quot;&gt;C:\Dir1* [<em>]&lt;/pattern&gt;</p></li>
<li><p>Exclude rule: &lt;pattern type=&quot;File&quot;&gt;C:\Dir1\Dir2* [</em>.txt]&lt;/pattern&gt;</p></li>
</ul>
<p>Component 2:</p>
<ul>
<li><p>Include rule: &lt;pattern type=&quot;File&quot;&gt;C:\Dir1\Dir2* [<em>.txt]&lt;/pattern&gt;</p></li>
<li><p>Exclude rule: &lt;pattern type=&quot;File&quot;&gt;C:\Dir1* [</em>]&lt;/pattern&gt;</p></li>
</ul></td>
<td align="left"><p>Migrates all files and subfolders of C:\Dir1\ (including C:\Dir1\Dir2).</p></td>
<td align="left"><p>Rules that are in different components do not affect each other, except for the &lt;unconditionalExclude&gt; rule. Therefore, in this example, although some .txt files were excluded when Component 1 was processed, they were included when Component 2 was processed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Component 1:</p>
<ul>
<li><p>Include rule: C:\Dir1\Dir2* [<em>]</p></li>
</ul>
<p>Component 2:</p>
<ul>
<li><p>Exclude rule: C:\Dir1* [</em>.txt]</p></li>
</ul></td>
<td align="left"><p>Migrates all files and subfolders from Dir2 except the .txt files in C:\Dir1 and its subfolders.</p></td>
<td align="left"><p>Both rules are processed as intended.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Component 1:</p>
<ul>
<li><p>Exclude rule: C:\Dir1\Dir2* [<em>]</p></li>
</ul>
<p>Component 2:</p>
<ul>
<li><p>Include rule: C:\Dir1* [</em>.txt]</p></li>
</ul></td>
<td align="left"><p>Migrates all .txt files in Dir1 and any subfolders.</p></td>
<td align="left"><p>Component 1 does not contain an &lt;include&gt; rule, so the &lt;exclude&gt; rule is not processed.</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="regex"></a>Including and excluding registry objects

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">If you have the following code in the same component</th>
<th align="left">Resulting behavior</th>
<th align="left">Explanation</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><ul>
<li><p>Include rule: HKLM\Software\Microsoft\Command Processor* [<em>]</p></li>
<li><p>Exclude Rule: HKLM\Software\Microsoft\Command Processor [DefaultColor]</p></li>
</ul></td>
<td align="left"><p>Migrates all keys in HKLM\Software\Microsoft\Command Processor except DefaultColor.</p></td>
<td align="left"><p>Both rules are processed as intended.</p></td>
</tr>
<tr class="even">
<td align="left"><ul>
<li><p>Include rule: HKLM\Software\Microsoft\Command Processor [DefaultColor]</p></li>
<li><p>Exclude Rule: HKLM\Software\Microsoft\Command Processor* [</em>]</p></li>
</ul></td>
<td align="left"><p>Migrates only DefaultColor in HKLM\Software\Microsoft\Command Processor.</p></td>
<td align="left"><p>DefaultColor is migrated because the &lt;include&gt; rule is more specific than the &lt;exclude&gt; rule.</p></td>
</tr>
<tr class="odd">
<td align="left"><ul>
<li><p>Include rule: HKLM\Software\Microsoft\Command Processor [DefaultColor]</p></li>
<li><p>Exclude rule: HKLM\Software\Microsoft\Command Processor [DefaultColor]</p></li>
</ul></td>
<td align="left"><p>Does not migrate DefaultColor.</p></td>
<td align="left"><p>The rules are equally specific, so the &lt;exclude&gt; rule takes precedence over the &lt;include&gt; rule.</p></td>
</tr>
</tbody>
</table>

 

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">If you have the following code in different components</th>
<th align="left">Resulting behavior</th>
<th align="left">Explanation</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Component 1:</p>
<ul>
<li><p>Include rule: HKLM\Software\Microsoft\Command Processor [DefaultColor]</p></li>
<li><p>Exclude rule: HKLM\Software\Microsoft\Command Processor* [<em>]</p></li>
</ul>
<p>Component 2:</p>
<ul>
<li><p>Include rule: HKLM\Software\Microsoft\Command Processor* [</em>]</p></li>
<li><p>Exclude rule: HKLM\Software\Microsoft\Command Processor [DefaultColor]</p></li>
</ul></td>
<td align="left"><p>Migrates all the keys/values under HKLM\Software\Microsoft\Command Processor.</p></td>
<td align="left"><p>Rules that are in different components do not affect each other, except for the &lt;unconditionalExclude&gt; rule. Therefore, in this example, the objects that were excluded when Component 1 was processed were included when Component 2 was processed.</p></td>
</tr>
</tbody>
</table>

 

## File collisions


### <a href="" id="collisions"></a>What is the default behavior when there are file collisions?

If there is not a &lt;merge&gt; rule, the default behavior for the registry is for the source to overwrite the destination. The default behavior for files is for the source to be renamed incrementally: for example, OriginalFileName(1).OriginalExtension, OriginalFileName(2).OriginalExtension, and so on.

### <a href="" id="bkmk11"></a>How does the &lt;merge&gt; rule work when there are file collisions?

When a collision is detected, USMT will select the most specific &lt;merge&gt; rule and apply it to resolve the conflict. For example, if you have a &lt;merge&gt; rule for C:\\\* \[\*\] set to **sourcePriority()** and another &lt;merge&gt; rule for C:\\subfolder\\\* \[\*\] set to **destinationPriority()** , then USMT uses the destinationPriority() rule because it is the most specific.

### Example scenario

The source computer contains the following files:

-   C:\\Data\\SampleA.txt

-   C:\\Data\\SampleB.txt

-   C:\\Data\\Folder\\SampleB.txt

The destination computer contains the following files:

-   C:\\Data\\SampleB.txt

-   C:\\Data\\Folder\\SampleB.txt

You have a custom .xml file that contains the following code:

``` syntax
<include> 
   <objectSet> 
      <pattern type="File">c:\data\* [*]</pattern> 
   </objectSet> 
</include> 
```

For this example, the following table describes the resulting behavior if you add the code in the first column to your custom .xml file.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">If you specify the following code</th>
<th align="left">Resulting behavior</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><pre class="syntax" space="preserve"><code>&lt;merge script=&quot;MigXmlHelper.DestinationPriority()&quot;&gt; 
   &lt;objectSet&gt; 
      &lt;pattern type=&quot;File&quot;&gt;c:\data* [<em>]&lt;/pattern&gt; 
   &lt;/objectSet&gt; 
&lt;/merge&gt;</code></pre></td>
<td align="left"><p>During ScanState, all the files will be added to the store.</p>
<p>During LoadState, only C:\Data\SampleA.txt will be restored.</p></td>
</tr>
<tr class="even">
<td align="left"><pre class="syntax" space="preserve"><code>&lt;merge script=&quot;MigXmlHelper.SourcePriority()&quot;&gt; 
   &lt;objectSet&gt; 
      &lt;pattern type=&quot;File&quot;&gt;c:\data* [</em>]&lt;/pattern&gt; 
   &lt;/objectSet&gt; 
&lt;/merge&gt; </code></pre></td>
<td align="left"><p>During ScanState, all the files will be added to the store.</p>
<p>During LoadState, all the files will be restored, overwriting the existing files on the destination computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><pre class="syntax" space="preserve"><code>&lt;merge script=&quot;MigXmlHelper.SourcePriority()&quot;&gt; 
   &lt;objectSet&gt; 
      &lt;pattern type=&quot;File&quot;&gt;c:\data\ [*]&lt;/pattern&gt; 
   &lt;/objectSet&gt; 
&lt;/merge&gt; </code></pre></td>
<td align="left"><p>During ScanState, all the files will be added to the store.</p>
<p>During LoadState, the following will occur:</p>
<ul>
<li><p>C:\Data\SampleA.txt will be restored.</p></li>
<li><p>C:\Data\SampleB.txt will be restored, overwriting the existing file on the destination computer.</p></li>
<li><p>C:\Data\Folder\SampleB.txt will not be restored.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

## Related topics


[USMT XML Reference](usmt-xml-reference.md)

 

 






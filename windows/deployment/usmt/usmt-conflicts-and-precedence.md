---
title: Conflicts and Precedence
description: In this article, learn how User State Migration Tool (USMT) deals with conflicts and precedence.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 12/19/2023
ms.topic: article
ms.technology: itpro-deploy
---

# Conflicts and precedence

When you include, exclude, and reroute files and settings, it's important to know how User State Migration Tool (USMT) deals with conflicts and precedence. When working with USMT, the following are the most important conflicts and precedence guidelines to keep in mind.

- **If there are conflicting rules within a component, the most specific rule is applied.** However, the **\<unconditionalExclude\>** rule is an exception because it takes precedence over all others. Directory names take precedence over file extensions. For examples, see [What happens when there are conflicting \<include\> and \<exclude\> rules?](#what-happens-when-there-are-conflicting-include-and-exclude-rules) and the first example in [\<include\> and \<exclude\> rules precedence examples](#include-and-exclude-rules-precedence-examples) later in this article.

- **Only rules inside the same component can affect each other, depending on specificity.** Rules that are in different components don't affect each other, except for the **\<unconditionalExclude\>** rule.

- **If the rules are equally specific, \<exclude\> takes precedence over \<include\>.** For example, if you use the **\<exclude\>** rule to exclude a file and use the **\<include\>** rule to include the same file, the file will be excluded.

- **The ordering of components does not matter.** It doesn't matter which components are listed in which **.xml** file, because each component is processed independently of the other components across all of the **.xml** files.

- **The ordering of the \<include\> and \<exclude\> rules within a component does not matter.**

- **You can use the \<unconditionalExclude\> element to globally exclude data.** This element excludes objects, regardless of any other **\<include\>** rules that are in the **.xml** files. For example, you can use the **\<unconditionalExclude\>** element to exclude all MP3 files on the computer or to exclude all files from `C:\UserData`.

## General

### What is the relationship between rules that are located within different components?

Only rules inside the same component can affect each other, depending on specificity, except for the **\<unconditionalExclude\>** rule. Rules that are in different components don't affect each other. If there's an **\<include\>** rule in one component and an identical **\<exclude\>** rule in another component, the data will be migrated because the two rules are independent of each other.

If you have an **\<include\>** rule in one component and a **\<locationModify\>** rule in another component for the same file, the file will be migrated in both places. That is, it will be included based on the **\<include\>** rule, and it will be migrated based on the **\<locationModify\>** rule.

The following **.xml** file migrates all files from C:\\Userdocs, including .mp3 files, because the **\<exclude\>** rule is specified in a separate component.

```xml
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

### How does precedence work with the Config.xml file?

Specifying `migrate="no"` in the `Config.xml` file is the same as deleting the corresponding component from the migration **.xml** file. However, if you set `migrate="no"` for My Documents, but you have a rule similar to the one shown below in a migration **.xml** file (which includes all of the .doc files from My Documents), then only the .doc files will be migrated, and all other files will be excluded.

```xml
<include>
   <objectSet>
      <pattern type="File">%CSIDL_PERSONAL%\* [*.doc] </pattern>
   </objectSet>
</include> 
```

### How does USMT process each component in an .xml file with multiple components?

The ordering of components doesn't matter. Each component is processed independently of other components. For example, if you have an **\<include\>** rule in one component and a **\<locationModify\>** rule in another component for the same file, the file will be migrated in both places. That is, it will be included based on the **\<include\>** rule, and it will be migrated based on the **\<locationModify\>** rule.

### How are rules processed?

There are two broad categories of rules.

- **Rules that affect the behavior of both the ScanState and LoadState tools**. For example, the **\<include\>**, **\<exclude\>**, and **\<unconditionalExclude\>** rules are processed for each component in the **.xml** files. For each component, USMT creates an include list and an exclude list. Some of the rules in the component might be discarded due to specificity, but all of the remaining rules are processed. For each **\<include\>** rule, USMT iterates through the elements to see if any of the locations need to be excluded. USMT enumerates all of the objects and creates a list of objects it's going to collect for each user. Once the list is complete, each of the objects is stored or migrated to the destination computer.

- **Rules that affect the behavior of only the LoadState tool**. For example, the **\<locationModify\>**, **\<contentModify\>**, and **\<destinationCleanup\>** rules don't affect ScanState. They're processed only with LoadState. First, the LoadState tool determines the content and location of each component based on the **\<locationModify\>** and **\<contentModify\>** rules. Then, LoadState processes all of the **\<destinationCleanup\>** rules and deletes data from the destination computer. Lastly, LoadState applies the components to the computer.

### How does USMT combine all of the .xml files that I specify on the command line?

USMT doesn't distinguish the **.xml** files based on their name or content. It processes each component within the files separately. USMT supports multiple **.xml** files only to make it easier to maintain and organize the components within them. Because USMT uses a urlid to distinguish each component from the others, be sure that each **.xml** file that you specify on the command line has a unique migration urlid.

## The \<include\> and \<exclude\> rules

### What happens when there are conflicting \<include\> and \<exclude\> rules?

If there are conflicting rules within a component, the most specific rule is applied, except with the **\<unconditionalExclude\>** rule, which takes precedence over all other rules. If the rules are equally specific, then the data won't be migrated. For example if you exclude a file, and include the same file, the file won't be migrated. If there are conflicting rules within different components, the rules don't affect each other because each component is processed independently.

In the following example, mp3 files won't be excluded from the migration. The mp3 files won't be excluded because directory names take precedence over the file extensions.

```xml
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

### \<include\> and \<exclude\> rules precedence examples

These examples explain how USMT deals with **\<include\>** and **\<exclude\>** rules. When the rules are in different components, the resulting behavior will be the same regardless of whether the components are in the same or in different migration **.xml** files.

- [Including and excluding files](#including-and-excluding-files)

- [Including and excluding registry objects](#including-and-excluding-registry-objects)

### Including and excluding files

| If you have the following code in the same component | Resulting behavior | Explanation |
|-----|-----|-----|
| <ul><li>Include rule: \<pattern type=&quot;File&quot;\>C:\Dir1* []\</pattern\></li><li>Exclude rule: \<pattern type=&quot;File&quot;\>C:* [.txt]\</pattern\></li></ul> | Migrates all files and subfolders in Dir1 (including all .txt files in C:). | The **\<exclude\>** rule doesn't affect the migration because the **\<include\>** rule is more specific. |
| <ul><li>Include rule: \<pattern type=&quot;File&quot;\>C:\Dir1* []\</pattern\></li><li>Exclude rule: \<pattern type=&quot;File&quot;\>C:\Dir1\Dir2* [.txt]\</pattern\></li></ul> | Migrates all files and subfolders in C:\Dir1, except the .txt files in C:\Dir1\Dir2 and its subfolders. | Both rules are processed as intended. |
| <ul><li>Include rule: \<pattern type=&quot;File&quot;\>C:\Dir1* []\</pattern\></li><li>Exclude rule: \<pattern type=&quot;File&quot;\>C:\Dir1\ * [.txt]\</pattern\></li></ul> | Migrates all files and subfolders in C:\Dir1, except the .txt files in C:\Dir1 and its subfolders. | Both rules are processed as intended. |
| <ul><li>Include rule: \<pattern type=&quot;File&quot;\>C:\Dir1\Dir2* [.txt]\</pattern\></li><li>Exclude rule: \<pattern type=&quot;File&quot;\>C:\Dir1\Dir2* [.txt]\</pattern\></li></ul> | Nothing will be migrated. | The rules are equally specific, so the **\<exclude\>** rule takes precedence over the **\<include\>** rule. |
| <ul><li>Include rule: C:\Dir1* [.txt]</li><li>Exclude rule: C:\Dir1\Dir2* []</li></ul> | Migrates the .txt files in Dir1 and the .txt files from subfolders other than Dir2. <br>No files are migrated from Dir2 or its subfolders. | Both rules are processed as intended. |
| <ul><li>Include rule: C:\Dir1\Dir2* []</li><li>Exclude rule: C:\Dir1* [.txt]</li></ul> | Migrates all files and subfolders of Dir2, except the .txt files from Dir1 and any subfolders of Dir1 (including Dir2). | Both rules are processed as intended. |

| If you have the following code in different components | Resulting behavior | Explanation |
|-----|----|----|
| Component 1:<ul><li>Include rule: \<pattern type=&quot;File&quot;\>C:\Dir1* []\</pattern\></li><li>Exclude rule: \<pattern type=&quot;File&quot;\>C:\Dir1\Dir2* [.txt]\</pattern\></li></ul> <br>Component 2:<ul><li>Include rule: \<pattern type=&quot;File&quot;\>C:\Dir1\Dir2* [.txt]\</pattern\></li><li>Exclude rule: \<pattern type=&quot;File&quot;\>C:\Dir1* []\</pattern\></li></ul> | Migrates all files and subfolders of C:\Dir1\ (including C:\Dir1\Dir2). | Rules that are in different components don't affect each other, except for the **\<unconditionalExclude\>** rule. Therefore, in this example, although some .txt files were excluded when Component 1 was processed, they were included when Component 2 was processed. |
| Component 1:<ul><li>Include rule: C:\Dir1\Dir2* []</li></ul> <br>Component 2:<ul><li>Exclude rule: C:\Dir1* [.txt]</li></ul> | Migrates all files and subfolders from Dir2 except the .txt files in C:\Dir1 and its subfolders. | Both rules are processed as intended. |
| Component 1:<ul><li>Exclude rule: C:\Dir1\Dir2* []</li></ul> <br>Component 2:<ul><li>Include rule: C:\Dir1* [.txt]</li></ul> | Migrates all .txt files in Dir1 and any subfolders. | Component 1 doesn't contain an **\<include\>** rule, so the **\<exclude\>** rule isn't processed. |

### Including and excluding registry objects

| If you have the following code in the same component | Resulting behavior | Explanation |
|-----|-----|-----|
| <ul><li>Include rule: <br>HKLM\Software\Microsoft\Command Processor* []</li><li>Exclude Rule: <br>HKLM\Software\Microsoft\Command Processor [DefaultColor]</li></ul> | Migrates all keys in HKLM\Software\Microsoft\Command Processor except DefaultColor. | Both rules are processed as intended. |
| <ul><li>Include rule: <br>HKLM\Software\Microsoft\Command Processor [DefaultColor]</li><li>Exclude Rule: <br>HKLM\Software\Microsoft\Command Processor* []</li></ul> | Migrates only DefaultColor in HKLM\Software\Microsoft\Command Processor. | DefaultColor is migrated because the **\<include\>** rule is more specific than the **\<exclude\>** rule. |
| <ul><li>Include rule: <br>HKLM\Software\Microsoft\Command Processor [DefaultColor]</li><li>Exclude rule: <br>HKLM\Software\Microsoft\Command Processor [DefaultColor]</li></ul> | Doesn't migrate DefaultColor. | The rules are equally specific, so the **\<exclude\>** rule takes precedence over the \<include\> rule. |

| If you have the following code in different components | Resulting behavior | Explanation |
|-----|-----|-----|
| Component 1:<ul><li>Include rule: <br>HKLM\Software\Microsoft\Command Processor [DefaultColor]</li><li>Exclude rule: <br>HKLM\Software\Microsoft\Command Processor* []</li></ul> <br>Component 2:<ul><li>Include rule: <br>HKLM\Software\Microsoft\Command Processor* []</li><li>Exclude rule: <br>HKLM\Software\Microsoft\Command Processor [DefaultColor]</li></ul> | Migrates all the keys/values under HKLM\Software\Microsoft\Command Processor. | Rules that are in different components don't affect each other, except for the **\<unconditionalExclude\>** rule. Therefore, in this example, the objects that were excluded when Component 1 was processed were included when Component 2 was processed. |

## File collisions

### What is the default behavior when there are file collisions?

If there isn't a **\<merge\>** rule, the default behavior for the registry is for the source to overwrite the destination. The default behavior for files is for the source to be renamed incrementally: for example, OriginalFileName(1).OriginalExtension, OriginalFileName(2).OriginalExtension, and so on.

### How does the \<merge\> rule work when there are file collisions?

When a collision is detected, USMT will select the most specific **\<merge\>** rule and apply it to resolve the conflict. For example, if you have a **\<merge\>** rule for **C:\\\* \[\*\]** set to **sourcePriority()** and another **\<merge\>** rule for **C:\\subfolder\\\* \[\*\]** set to **destinationPriority()** , then USMT uses the **destinationPriority()** rule because it's the most specific.

### Example scenario

The source computer contains the following files:

- `C:\Data\SampleA.txt`

- `C:\Data\SampleB.txt`

- `C:\Data\Folder\SampleB.txt`

The destination computer contains the following files:

- `C:\Data\SampleB.txt`

- `C:\Data\SampleB.txt`

You have a custom **.xml** file that contains the following code:

```xml
<include> 
   <objectSet> 
      <pattern type="File">c:\data\* [*]</pattern> 
   </objectSet> 
</include> 
```

For this example, the following information describes the resulting behavior if you add the code to your custom **.xml** file.

#### Example 1

```xml
<merge script="MigXmlHelper.DestinationPriority()">
        <objectSet>
                <pattern type="File">c:\data* []</pattern>
        </objectSet>
</merge>
```

**Result**: During ScanState, all the files will be added to the store. During LoadState, only `C:\Data\SampleA.txt` will be restored.

#### Example 2

```xml
<merge script="MigXmlHelper.SourcePriority()">
        <objectSet>
                <pattern type="File">c:\data* []</pattern>
        </objectSet>
</merge>
```

**Result**: During ScanState, all the files will be added to the store.
During LoadState, all the files will be restored, overwriting the existing files on the destination computer.

#### Example 3

```xml
<merge script="MigXmlHelper.SourcePriority()">
        <objectSet>
                <pattern type="File">c:\data\ [*]</pattern>
        </objectSet>
</merge>
```

**Result**: During ScanState, all the files will be added to the store. During LoadState, the following actions will occur:

- `C:\Data\SampleA.txt` will be restored.
- `C:\Data\SampleB.txt` will be restored, overwriting the existing file on the destination computer.
- `C:\Data\Folder\SampleB.txt` won't be restored.

## Related articles

[USMT XML reference](usmt-xml-reference.md).

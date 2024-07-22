---
title: General Conventions
description: Learn about general XML guidelines and how to use XML helper functions in the XML Elements library to change migration behavior.
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

# General conventions

This article describes the XML helper functions.

## General XML guidelines

Before modifying the **.xml** files, become familiar with the following guidelines:

- **XML schema.**

    The User State Migration Tool (USMT) XML schema, `MigXML.xsd`, can be used to write and validate migration **.xml** files.

- **Conflicts.**

    In general, when there are conflicts within the XML schema, the most specific pattern takes precedence. For more information, see [Conflicts and precedence](usmt-conflicts-and-precedence.md).

- **Required elements.**

    The required elements for a migration **.xml** file are **\<migration\>**, **\<component\>**, **\<role\>**, and **\<rules\>**.

- **Required child elements.**

  - USMT doesn't fail with an error if the required child elements aren't specified. However, the required child elements must be specified for the parent element to affect the migration.

  - The required child elements apply only to the first definition of the element. If these elements are defined and then referred to using their name, the required child elements don't apply. For example, if `<detects name="Example">` is defined in **\<namedElements\>**, and `<detects name="Example"/>` is specified in **\<component\>** to refer to this element, the definition inside **\<namedElements\>** must have the required child elements, but the **\<component\>** element doesn't need to have the required child elements.

- **File names with brackets.**

    If a file that has a bracket character (\[ or \]) in the file name is being migrated, a carat (^) character must be inserted.  The carat (^) character must be directly before the bracket for the bracket character to be valid. For example, if there's a file named **file].txt**, `<pattern type="File">c:\documents\mydocs [file^].txt]</pattern>` must be specified instead of `<pattern type="File">c:\documents\mydocs [file].txt]</pattern>`.

- **Using quotation marks.**

    When code is surrounded in quotation marks, either the double ("") or the single (') quotation marks can be used.

## Helper functions

The XML helper functions in the [XML elements library](usmt-xml-elements-library.md) can be used to change migration behavior. Before using these functions in an **.xml** file, note the following items:

- **All of the parameters are strings.**

- **NULL parameters can be left blank.**

  As with parameters with a default value convention, if there's a NULL parameter at the end of a list, it can be left out. For example, the following function:

  ```cmd
  SomeFunction("My String argument",NULL,NULL)
  ```

  is equivalent to:

  ```cmd
  SomeFunction("My String argument")
  ```

- **The encoded location used in all the helper functions is an unambiguous string representation for the name of an object.**

 The encoded location is composed of the node part, optionally followed by the leaf enclosed in square brackets. This format makes a clear distinction between nodes and leaves.

  For example, specify the file
  
  `C:\Windows\Notepad.exe`
  
  as
  
  **c:\\Windows\[Notepad.exe\]**
  
  Similarly, specify the directory
  
  `C:\Windows\System32`
  
  as
  
  **c:\\Windows\\System32**
  
  Note the absence of the **\[\]** characters in second example.

  The registry is represented in a similar way. The default value of a registry key is represented as an empty **\[\]** construct. For example, the default value for the `HKLM\SOFTWARE\MyKey` registry key is **HKLM\\SOFTWARE\\MyKey\[\]**.

- **A location pattern is specified in a way that is similar to how an actual location is specified.**

  The exception is that both the node and leaf part accept patterns. However, a pattern from the node doesn't extend to the leaf.

  For example, the pattern **c:\\Windows\\\\\*** matches the `\Windows` directory and all subdirectories, but it doesn't match any of the files in those directories. To match the files as well, **c:\\Windows\\\*\[\*\]** must be specified.

## Related articles

- [USMT XML reference](usmt-xml-reference.md).

---
title: General Conventions (Windows 10)
description: Learn about general XML guidelines and how to use XML helper functions in the XML Elements library to change migration behavior.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 11/01/2022
ms.topic: article
ms.technology: itpro-deploy
---

# General conventions

This topic describes the XML helper functions.

## General XML guidelines

Before you modify the .xml files, become familiar with the following guidelines:

- **XML schema**

    You can use the User State Migration Tool (USMT) 10.0 XML schema, MigXML.xsd, to write and validate migration .xml files.

- **Conflicts**

    In general, when there are conflicts within the XML schema, the most specific pattern takes precedence. For more information, see [Conflicts and precedence](usmt-conflicts-and-precedence.md).

- **Required elements**

    The required elements for a migration .xml file are **&lt;migration&gt;**, **&lt;component&gt;**, **&lt;role&gt;**, and **&lt;rules&gt;**.

- **Required child elements**

  - USMT doesn't fail with an error if you don't specify the required child elements. However, you must specify the required child elements for the parent element to affect the migration.

  - The required child elements apply only to the first definition of the element. If these elements are defined and then referred to using their name, the required child elements don't apply. For example, if you define `<detects name="Example">` in **&lt;namedElements&gt;**, and you specify `<detects name="Example"/>` in **&lt;component&gt;** to refer to this element, the definition inside **&lt;namedElements&gt;** must have the required child elements, but the **&lt;component&gt;** element doesn't need to have the required child elements.

- **File names with brackets**

    If you're migrating a file that has a bracket character (\[ or \]) in the file name, you must insert a carat (^) character directly before the bracket for the bracket character to be valid. For example, if there's a file named **file].txt**, you must specify `<pattern type="File">c:\documents\mydocs [file^].txt]</pattern>` instead of `<pattern type="File">c:\documents\mydocs [file].txt]</pattern>`.

- **Using quotation marks**

    When you surround code in quotation marks, you can use either double ("") or single (') quotation marks.

## Helper functions

You can use the XML helper functions in the [XML elements library](usmt-xml-elements-library.md) to change migration behavior. Before you use these functions in an .xml file, note the following items:

- **All of the parameters are strings**

- **You can leave NULL parameters blank**

  As with parameters with a default value convention, if you have a NULL parameter at the end of a list, you can leave it out. For example, the following function:

  ```cmd
  SomeFunction("My String argument",NULL,NULL)
  ```

  is equivalent to:

  ```cmd
  SomeFunction("My String argument")
  ```

- **The encoded location used in all the helper functions is an unambiguous string representation for the name of an object**

  It's composed of the node part, optionally followed by the leaf enclosed in square brackets. This format makes a clear distinction between nodes and leaves.

  For example, specify the file `C:\Windows\Notepad.exe`: **c:\\Windows\[Notepad.exe\]**. Similarly, specify the directory `C:\Windows\System32` like this: **c:\\Windows\\System32**; note the absence of the **\[\]** characters.

  The registry is represented in a similar way. The default value of a registry key is represented as an empty **\[\]** construct. For example, the default value for the `HKLM\SOFTWARE\MyKey` registry key is **HKLM\\SOFTWARE\\MyKey\[\]**.

- **You specify a location pattern in a way that is similar to how you specify an actual location**

  The exception is that both the node and leaf part accept patterns. However, a pattern from the node doesn't extend to the leaf.

  For example, the pattern **c:\\Windows\\\\\*** will match the `\Windows` directory and all subdirectories, but it will not match any of the files in those directories. To match the files as well, you must specify **c:\\Windows\\\*\[\*\]**.

## Related articles

[USMT XML reference](usmt-xml-reference.md)

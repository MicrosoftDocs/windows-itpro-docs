---
title: General Conventions (Windows 10)
description: General Conventions
ms.assetid: 5761986e-a847-41bd-bf8e-7c1bd01acbc6
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

# General Conventions


This topic describes the XML helper functions.

## In This Topic


[General XML Guidelines](#bkmk-general)

[Helper Functions](#bkmk-helperfunctions)

## <a href="" id="bkmk-general"></a>General XML Guidelines


Before you modify the .xml files, become familiar with the following guidelines:

-   **XML schema**

    You can use the User State Migration Tool (USMT) 10.0 XML schema, MigXML.xsd, to write and validate migration .xml files.

-   **Conflits**

    In general, when there are conflicts within the XML schema, the most specific pattern takes precedence. For more information, see [Conflicts and Precedence](usmt-conflicts-and-precedence.md).

-   **Required elements**

    The required elements for a migration .xml file are **&lt;migration&gt;**, **&lt;component&gt;**, **&lt;role&gt;**, and **&lt;rules&gt;**.

-   **Required child elements**

    -   USMT does not fail with an error if you do not specify the required child elements. However, you must specify the required child elements for the parent element to affect the migration.

    -   The required child elements apply only to the first definition of the element. If these elements are defined and then referred to using their name, the required child elements do not apply. For example, if you define `<detects name="Example">` in **&lt;namedElements&gt;**, and you specify `<detects name="Example"/>` in **&lt;component&gt;** to refer to this element, the definition inside **&lt;namedElements&gt;** must have the required child elements, but the **&lt;component&gt;** element does not need to have the required child elements.

-   **File names with brackets**

    If you are migrating a file that has a bracket character (\[ or \]) in the file name, you must insert a carat (^) character directly before the bracket for the bracket character to be valid. For example, if there is a file named File.txt, you must specify `<pattern type="File">c:\documents\mydocs [file^].txt]</pattern> `instead of `<pattern type="File">c:\documents\mydocs [file].txt]</pattern>`.

-   **Using quotation marks**

    When you surround code in quotation marks, you can use either double ("") or single (') quotation marks.

## <a href="" id="bkmk-helperfunctions"></a> Helper Functions


You can use the XML helper functions in the [XML Elements Library](usmt-xml-elements-library.md) to change migration behavior. Before you use these functions in an .xml file, note the following:

-   **All of the parameters are strings**

-   **You can leave NULL parameters blank**

    As with parameters with a default value convention, if you have a NULL parameter at the end of a list, you can leave it out. For example, the following function:

    ``` syntax
    SomeFunction("My String argument",NULL,NULL)
    ```

    is equivalent to:

    ``` syntax
    SomeFunction("My String argument")
    ```

-   **The encoded location used in all the helper functions is an unambiguous string representation for the name of an object**

    It is composed of the node part, optionally followed by the leaf enclosed in square brackets. This makes a clear distinction between nodes and leaves.

    For example, specify the file C:\\Windows\\Notepad.exe: **c:\\Windows\[Notepad.exe\]**. Similarly, specify the directory C:\\Windows\\System32 like this: **c:\\Windows\\System32**; note the absence of the \[\] characters.

    The registry is represented in a similar way. The default value of a registry key is represented as an empty \[\] construct. For example, the default value for the HKLM\\SOFTWARE\\MyKey registry key is **HKLM\\SOFTWARE\\MyKey\[\]**.

-   **You specify a location pattern in a way that is similar to how you specify an actual location**

    The exception is that both the node and leaf part accept patterns. However, a pattern from the node does not extend to the leaf.

    For example, the pattern **c:\\Windows\\\*** will match the \\Windows directory and all subdirectories, but it will not match any of the files in those directories. To match the files as well, you must specify **c:\\Windows\\\*\[\*\]**.

## Related topics


[USMT XML Reference](usmt-xml-reference.md)

 

 






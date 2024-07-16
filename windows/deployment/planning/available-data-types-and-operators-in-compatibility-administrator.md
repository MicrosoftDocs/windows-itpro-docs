---
title: Available Data Types and Operators in Compatibility Administrator (Windows 10)
description: The Compatibility Administrator tool provides a way to query your custom-compatibility databases.
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.date: 10/28/2022
ms.topic: conceptual
ms.subservice: itpro-deploy
---

# Available Data Types and Operators in Compatibility Administrator

**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

The Compatibility Administrator tool provides a way to query your custom-compatibility databases.

## Available Data Types

Customized-compatibility databases in Compatibility Administrator contain the following data types.

-   **Integer**. A numerical value with no fractional part. All integers are unsigned because none of the attributes can have a negative value.

-   **String**. A series of alphanumeric characters manipulated as a group.

-   **Boolean**. A value of True or False.

## Available Attributes

The following table shows the attributes you can use for querying your customized-compatibility databases in Compatibility Administrator.

|Attribute|Description|Data type|
|--- |--- |--- |
|APP_NAME|Name of the application.|String|
|DATABASE_GUID|Unique ID for your compatibility database.|String|
|DATABASE_INSTALLED|Specifies if you have installed the database.|Boolean|
|DATABASE_NAME|Descriptive name of your database.|String|
|DATABASE_PATH|Location of the database on your computer.|String|
|FIX_COUNT|Number of compatibility fixes applied to a specific application.|Integer|
|FIX_NAME|Name of your compatibility fix.|String|
|MATCH_COUNT|Number of matching files for a specific, fixed application.|Integer|
|MATCHFILE_NAME|Name of a matching file used to identify a specific, fixed application.|String|
|MODE_COUNT|Number of compatibility modes applied to a specific, fixed application.|Integer|
|MODE_NAME|Name of your compatibility mode.|String|
|PROGRAM_APPHELPTYPE|Type of AppHelp message applied to an entry. The value can be 1 or 2, where 1 enables the program to run and 2 blocks the program.|Integer|
|PROGRAM_DISABLED|Specifies if you disabled the compatibility fix for an application. If True, Compatibility Administrator does not apply the fixes to the application.|Boolean|
|PROGRAM_GUID|Unique ID for an application.|String|
|PROGRAM_NAME|Name of the application that you are fixing.|String|

## Available Operators

The following table shows the operators that you can use for querying your customized-compatibility databases in the Compatibility Administrator.

|Symbol|Description|Data type|Precedence|
|--- |--- |--- |--- |
|>|Greater than|Integer or string|1|
|>=|Greater than or equal to|Integer or string|1|
|<|Less than|Integer or string|1|
|<=|Less than or equal to|Integer or string|1|
|<>|Not equal to|Integer or string|1|
|=|Equal to|Integer, string, or Boolean|1|
|HAS|A special SQL operator used to check if the left-hand operand contains a substring specified by the right-hand operand.|Left-hand operand. MATCHFILE_NAME, MODE_NAME, FIX_NAME<div class="alert">Note: Only the HAS operator can be applied to the MATCHFILE_NAME, MODE_NAME, and FIX_NAME attributes.</div><br/>Right-hand operand. String|1|
|OR|Logical OR operator|Boolean|2|
|AND|Logical AND operator|Boolean|2|

## Related topics

[Using the Compatibility Administrator Tool](using-the-compatibility-administrator-tool.md)

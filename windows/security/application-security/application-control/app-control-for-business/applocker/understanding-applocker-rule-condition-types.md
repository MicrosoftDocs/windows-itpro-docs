---
title: Understanding AppLocker rule condition types
description: This article for the IT professional describes the three types of AppLocker rule conditions.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Understanding AppLocker rule condition types

This article for the IT professional describes the three types of AppLocker rule conditions.

Rule conditions are criteria that the AppLocker rule is based on. Primary conditions are required to create an AppLocker rule. The three primary rule conditions are publisher, path, and file hash.

## Publisher

To use a publisher condition, the software publisher must digitally sign their app files, or you must do so by using an internal certificate. Rules that are specified to the version level might have to be updated when a new version of the file is released. For more info about this rule condition, see [Understanding the publisher rule condition in AppLocker](understanding-the-publisher-rule-condition-in-applocker.md).

## Path

Any file can be assigned this rule condition. However, because path rules specify locations within the file system, the rule also affects any subdirectories unless explicitly exempted. For more info about this rule condition, see [Understanding the path rule condition in AppLocker](understanding-the-path-rule-condition-in-applocker.md).

## File hash

Any file can be assigned this rule condition. However, the rule must be updated each time a new version of the file is released because the Authenticode hash value is unique for each version of the file. For more info about this rule condition, see [Understanding the file hash rule condition in AppLocker](understanding-the-file-hash-rule-condition-in-applocker.md).

## Considerations

Selecting the appropriate condition for each rule depends on the overall application control policy goals of the organization, the AppLocker rule maintenance goals, and the condition of the existing (or planned) application deployment. The following questions can help you decide which rule condition to use.

1. Is the file digitally signed by a software publisher?

    If the software publisher signed the file, we recommend that you create rules with publisher conditions. You can still create file hash and path conditions for signed files. However, if the software publisher didn't sign the file, you can:

    - Sign the file by using an internal certificate.
    - Create a rule by using a file hash condition.
    - Create a rule by using a path condition.

        > [!NOTE]
        > To determine how many applications on a reference computer are digitally signed, you can use the **Get-AppLockerFileInformation** Windows PowerShell cmdlet for a directory of files. For example, `Get-AppLockerFileInformation -Directory C:\Windows\ -FileType EXE -recurse` displays the properties for all .exe and .com files within the Windows directory.

2. What rule condition type does your organization prefer?

## Related articles

- [How AppLocker works](how-applocker-works-techref.md)

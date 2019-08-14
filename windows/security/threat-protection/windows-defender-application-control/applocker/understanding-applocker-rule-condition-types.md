---
title: Understanding AppLocker rule condition types (Windows 10)
description: This topic for the IT professional describes the three types of AppLocker rule conditions.
ms.assetid: c21af67f-60a1-4f7d-952c-a6f769c74729
ms.reviewer: 
ms.author: macapara
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: mjcaparas
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
---

# Understanding AppLocker rule condition types

**Applies to**
- Windows 10
- Windows Server

This topic for the IT professional describes the three types of AppLocker rule conditions.

Rule conditions are criteria that the AppLocker rule is based on. Primary conditions are required to create an AppLocker rule. The three primary rule conditions are publisher, path, and file hash.

**Publisher**

To use a publisher condition, the files must be digitally signed by the software publisher, or you must do so by using an internal certificate. Rules that are specified to the version level might have to be updated when a new version of the file is released. For more info about this rule condition, see [Understanding the publisher rule condition in AppLocker](understanding-the-publisher-rule-condition-in-applocker.md).

**Path**

Any file can be assigned this rule condition; however, because path rules specify locations within the file system, any subdirectory will also be affected by the rule (unless explicitly exempted). For more info about this rule condition, see [Understanding the path rule condition in AppLocker](understanding-the-path-rule-condition-in-applocker.md).

**File hash**

Any file can be assigned this rule condition; however, the rule must be updated each time a new version of the file is released because the hash value is unique to that the version of the file. For more info about this rule condition, see [Understanding the file hash rule condition in AppLocker](understanding-the-file-hash-rule-condition-in-applocker.md).

### Considerations

Selecting the appropriate condition for each rule depends on the overall application control policy goals of the organization, the AppLocker rule maintenance goals, and the condition of the existing (or planned) application deployment. The following questions can help you decide which rule condition to use.

1.  Is the file digitally signed by a software publisher?

    If the file is signed by a software publisher, we recommend that you create rules with publisher conditions. You may still create file hash and path conditions for signed files. However, if the file is not digitally signed by a software publisher, you can:

    -   Sign the file by using an internal certificate.
    -   Create a rule by using a file hash condition.
    -   Create a rule by using a path condition.
    
        >**Note:**  To determine how many applications on a reference computer are digitally signed, you can use the **Get-AppLockerFileInformation** Windows PowerShell cmdlet for a directory of files. For example, 
        `Get-AppLockerFileInformation –Directory C:\Windows\ -FileType EXE -recurse` displays the properties for all .exe and .com files within the Windows directory.
         
2.  What rule condition type does your organization prefer?
    
    If your organization is already using Software Restriction Policies (SRP) to restrict what files users can run, rules using file hash or path conditions are probably already in place.
    
    >**Note:**  For a list of supported operating system versions and editions to which SRP and AppLocker rules can be applied, see [Requirements to use AppLocker](requirements-to-use-applocker.md).
     
## Related topics

- [How AppLocker works](how-applocker-works-techref.md)

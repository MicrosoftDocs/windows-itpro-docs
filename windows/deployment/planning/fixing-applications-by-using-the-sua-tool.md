---
title: Fixing Applications by Using the SUA Tool (Windows 10)
description: On the user interface for the Standard User Analyzer (SUA) tool, you can apply fixes to an application.
ms.assetid: 7f5947b1-977b-4d7e-bb52-fbe8e76f6b8b
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: appcompat
ms.sitesec: library
audience: itpro
author: aczechowski
ms.date: 04/19/2017
ms.topic: article
---

# Fixing Applications by Using the SUA Tool


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

On the user interface for the Standard User Analyzer (SUA) tool, you can apply fixes to an application.

**To fix an application by using the SUA tool**

1.  Use the SUA tool to test an application. For more information, see [Using the SUA Tool](using-the-sua-tool.md).

2.  After you finish testing, open the SUA tool.

3.  On the **Mitigation** menu, click the command that corresponds to the action that you want to take. The following table describes the commands.

    |Mitigation menu command|Description|
    |--- |--- |
    |**Apply Mitigations**|Opens the **Mitigate AppCompat Issues** dialog box, in which you can select the fixes that you intend to apply to the application.|
    |**Undo Mitigations**|Removes the application fixes that you just applied.<p>This option is available only after you apply an application fix and before you close the SUA tool. Alternatively, you can manually remove application fixes by using **Programs and Features** in Control Panel.|
    |**Export Mitigations as Windows Installer file**|Exports your application fixes as a Windows® Installer (.msi) file, which can then be deployed to other computers that are running the application.|

     

 

 






---
title: Export a GPO to a File
description: Export a GPO to a File
author: dansimp
ms.assetid: 0d01b1f7-a6a4-4d0d-9aa7-2d6f1ae93d9d
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Export a GPO to a File


You can export a controlled Group Policy Object (GPO) to a CAB file so that you can copy it to a domain in another forest and import the GPO into Advanced Group Policy Management (AGPM) in that domain. For information about how to import GPO settings into a new or existing GPO, see [Import a GPO from a File](import-a-gpo-from-a-file-ed.md).

A user account with the Editor or AGPM Administrator (Full Control) role or necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To export a GPO to a file**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab, click the **Controlled** tab to display the controlled GPOs.

3.  Right-click the GPO, and then click **Export to**.

4.  Enter a file name for the file to which you want to export the GPO, and then click **Export**. If the file does not exist, it is created. If it already exists, it is replaced.

### Additional considerations

-   By default, you must be an Editor or an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **List Contents**, **Read Settings**, and **Export GPO** permissions for the GPO.

### Additional references

-   [Using a Test Environment](using-a-test-environment.md)

 

 






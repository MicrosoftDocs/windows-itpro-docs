---
title: Import a GPO from a File
description: Import a GPO from a File
author: mjcaparas
ms.assetid: 6e901a52-1101-4fed-9f90-3819b573b378
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Import a GPO from a File


In Advanced Group Policy Management (AGPM), if you have exported a Group Policy Object (GPO) to a CAB file, you can import the policy settings from that GPO into an existing GPO in a domain in another forest. Importing policy settings into an existing GPO replaces all policy settings within that GPO. For information about exporting GPO settings to a CAB file, see [Export a GPO to a File](export-a-gpo-to-a-file.md).

A user account with the Editor or AGPM Administrator (Full Control) role or necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

## <a href="" id="bkmk-existing"></a>


**To import policy settings into an existing GPO**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the domain to which you want to import policy settings.

2.  On the **Contents** tab, click the **Controlled** tab to display the controlled GPOs.

3.  Check out the destination GPO to which you want to import policy settings.

4.  Right-click the destination GPO, point to **Import from**, and then click **File**.

5.  Follow the instructions in the **Import Settings Wizard** to select a GPO backup, import its policy settings to replace those in the destination GPO, and enter a comment for the audit trail of the destination GPO. By default, the destination GPO is checked in when the wizard is finished.

### Additional considerations

-   By default, you must be an Editor or an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **List Contents**, **Edit Settings**, and **Import GPO** permissions for the domain, and the GPO must be checked out by you.

-   Although an Editor cannot import policy settings into a new GPO during its creation, an Editor can request the creation of a new GPO and then import policy settings into it after it is created.

### Additional references

-   [Using a Test Environment](using-a-test-environment.md)

 

 






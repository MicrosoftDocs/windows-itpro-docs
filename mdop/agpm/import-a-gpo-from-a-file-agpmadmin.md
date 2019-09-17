---
title: Import a GPO from a File
description: Import a GPO from a File
author: dansimp
ms.assetid: 2cbcda72-4de3-47ad-aaf8-4fc7341d5a00
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


In Advanced Group Policy Management (AGPM), if you are an AGPM Administrator (Full Control) and you have exported a Group Policy Object (GPO) to a CAB file, you can import the policy settings from that GPO into a new GPO or an existing GPO in a domain in another forest. For information about exporting GPO settings to a CAB file, see [Export a GPO to a File](export-a-gpo-to-a-file.md).

A user account with the AGPM Administrator role or the necessary permissions in AGPM is required to import policy settings into a new controlled GPO. A user account with the Editor or AGPM Administrator role or necessary permissions in AGPM is required to import policy settings into an existing GPO. Review the details in "Additional considerations" in this topic.

## Importing policy settings from a file


When you import policy settings from a file, you can import them into a new GPO or an existing GPO. However, if you import policy settings into an existing GPO, all policy settings within it are replaced.

-   [Import policy settings into a new controlled GPO](#bkmk-new)

-   [Import policy settings into an existing GPO](#bkmk-existing)

### <a href="" id="bkmk-new"></a>

**To import policy settings into a new controlled GPO**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the domain to which you want to import policy settings.

2.  On the **Contents** tab, click the **Controlled** tab to display the controlled GPOs.

3.  Create a new controlled GPO. In the **New Controlled GPO** dialog box, click **Import** and then click **Launch Wizard**. For more information about how to create a GPO, see [Create a New Controlled GPO](create-a-new-controlled-gpo-agpm40.md).

4.  Follow the instructions in the **Import Settings Wizard** to select a GPO backup, import policy settings from it for the new GPO, and enter a comment for the audit trail of the new GPO.

### <a href="" id="bkmk-existing"></a>

**To import policy settings into an existing GPO**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the domain to which you want to import policy settings.

2.  On the **Contents** tab, click the **Controlled** tab to display the controlled GPOs.

3.  Check out the destination GPO to which you want to import policy settings.

4.  Right-click the destination GPO, point to **Import from**, and then click **File**.

5.  Follow the instructions in the **Import Settings Wizard** to select a GPO backup, import its policy settings to replace those in the destination GPO, and enter a comment for the audit trail of the destination GPO. By default, the destination GPO is checked in when the wizard is finished.

### Additional considerations

-   To import policy settings to a new controlled GPO, you must have **List Contents**, **Import GPO**, and **Create GPO** permissions for the domain. By default, you must be an AGPM Administrator to perform this procedure.

-   To import policy settings to an existing GPO, you must have **List Contents**, **Edit Settings**, and **Import GPO** permissions for the domain, and the GPO must be checked out by you. By default, you must be an Editor or an AGPM Administrator (Full Control) to perform this procedure.

### Additional references

-   [Managing the Archive](managing-the-archive-agpm40.md)

 

 






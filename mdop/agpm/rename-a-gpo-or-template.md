---
title: Rename a GPO or Template
description: Rename a GPO or Template
author: dansimp
ms.assetid: 64a1aaf4-f672-48b5-94c6-473bf1076cf3
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Rename a GPO or Template


You can rename a controlled Group Policy object (GPO) or a template.

A user account with the Editor or AGPM Administrator (Full Control) role, the user account of the Approver who created the GPO, or a user account with the necessary permissions in Advanced Group Policy Management is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To rename a GPO or template**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab, click the **Controlled** or **Templates** tab to display the item to rename.

3.  Right-click the GPO or template to rename and click **Rename**.

4.  Type the new name for the GPO or template and a comment, then click **OK**.

5.  When the **Progress** window indicates that overall progress is complete, click **Close**. The GPO or template appears under the new name on the **Contents** tab.

### Additional considerations

-   By default, you must be the Approver who created or controlled the GPO, an Editor, or an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **List Contents** and **Edit Settings** permission for the GPO.

-   When you rename a GPO that has been deployed, the name is immediately changed in the archive. The name is changed in the production environment only when the GPO is redeployed.

    Until the GPO is redeployed (or the production copy is deleted), the old name is still in use in the production environment and therefore cannot be used for another GPO. Likewise, the GPO in the archive cannot be renamed back to its original name until the GPO has been deployed (changing the name of the production copy) or the production copy has been deleted.

### Additional references

-   [Editing a GPO](editing-a-gpo.md)

 

 






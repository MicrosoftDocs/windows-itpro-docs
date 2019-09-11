---
title: Destroy a GPO
description: Destroy a GPO
author: dansimp
ms.assetid: bfabd71a-47f3-462e-b86f-5f15762b9e28
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Destroy a GPO


Approvers can destroy a Group Policy Object (GPO), removing it from the Recycle Bin and permanently deleting it so that it can no longer be restored.

A user account with the Approver or AGPM Administrator (Full Control) role or necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To permanently delete a GPO so it can no longer be restored**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab, click the **Recycle Bin** tab to display the deleted GPOs.

3.  Right-click the GPO to destroy, and then click **Destroy**.

4.  Click **Yes** to confirm that you want to permanently delete the selected GPO and all backups from the archive.

5.  When the **Progress** window indicates that overall progress is complete, click **Close**. The GPO is removed from the **Recycle Bin** tab and is permanently deleted.

### Additional considerations

-   By default, you must be an Approver or an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **List Contents** and **Delete GPO** permissions for the GPO.

### Additional references

-   [Deleting, Restoring, or Destroying a GPO](deleting-restoring-or-destroying-a-gpo-agpm30ops.md)

 

 






---
title: Label the Current Version of a GPO
description: Label the Current Version of a GPO
author: dansimp
ms.assetid: cadc8769-21da-44b0-8122-6cafdb448913
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Label the Current Version of a GPO


You can label the current version of a Group Policy Object (GPO) for easy identification in its history. You can use a label to identify a known good version to which you could roll back if a problem occurs. Also, by labeling multiple GPOs with the same label at one time, you can mark related GPOs that should be rolled back to the same point if rollback should later be necessary.

A user account with the Editor, Approver, or AGPM Administrator (Full Control) role or necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To label the current version of GPOs in their histories**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab, click the **Controlled** tab to display the controlled GPOs.

3.  Click a GPO for which to label the current version. To select multiple GPOs, press SHIFT and click the last GPO in a contiguous group of GPOs, or press CTRL and click individual GPOs. Right-click a selected GPO, and then click **Label**.

4.  Type a label and a comment to be displayed in the history of each GPO selected, and then click **OK**.

5.  When the **Progress** window indicates that overall progress is complete, click **Close**.

### Additional considerations

-   By default, you must be an Editor, an Approver, or an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **List Contents** and either **Edit Settings** or **Deploy GPO** permissions for the GPO.

### Additional references

-   [Editing a GPO](editing-a-gpo-agpm40.md)

 

 






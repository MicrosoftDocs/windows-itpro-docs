---
title: Review GPO Links
description: Review GPO Links
author: mjcaparas
ms.assetid: 3aaba9da-f0aa-466f-bd1c-49f11d00ea54
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Review GPO Links


You can display a diagram showing where a Group Policy Object (GPO) or GPOs that you select are linked to organizational units. GPO link diagrams are updated each time the GPO is controlled, imported, or checked in.

A user account with the Reviewer, Editor, Approver, or AGPM Administrator (Full Control) role or necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

## Reviewing GPO links


-   [For one or more GPOs](#bkmk-gpos)

-   [For one or more versions of a GPO](#bkmk-gpo-versions)

### <a href="" id="bkmk-gpos"></a>

**To display GPO links for one or more GPOs**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab in the details pane, click the **Controlled**, **Pending**, or **Recycle Bin** tab to display GPOs.

3.  Select one or more GPOs for which to display links, right-click a selected GPO, click **Settings**, and then click **GPO Links** to display a diagram of domains and organizational units with links to the selected GPO(s).

### <a href="" id="bkmk-gpo-versions"></a>

**To display GPO links for one or more versions of a GPO**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab in the details pane, click the **Controlled** or **Recycle Bin** tab to display GPOs.

3.  Double-click the GPO to display its history.

4.  Right-click the GPO version for which to review the settings, click **Settings**, and then click **HTML Report** or **XML Report** to display a summary of the GPO's settings.

### Additional considerations

-   By default, you must be a Reviewer, an Editor, an Approver, or an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **List Contents** and **Read Settings** permissions for the GPO. Also, to display the list of GPOs, you must have **List Contents** permission for the domain.

### Additional references

-   [Performing Reviewer Tasks](performing-reviewer-tasks-agpm40.md)

 

 






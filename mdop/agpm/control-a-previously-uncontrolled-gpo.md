---
title: Control a Previously Uncontrolled GPO
description: Control a Previously Uncontrolled GPO
author: dansimp
ms.assetid: 452689a9-4e32-4e3b-8208-56353a82bf36
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Control a Previously Uncontrolled GPO


To use Advanced Group Policy Management (AGPM) to provide change control for a Group Policy object (GPO), you must first control the GPO with AGPM.

A user account with the Approver or AGPM Administrator (Full Control) role or necessary permissions in Advanced Group Policy Management is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To control a previously uncontrolled GPO**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab in the details pane, click the **Uncontrolled** tab to display the uncontrolled GPOs.

3.  Right-click the GPO to be controlled with AGPM, and then click **Control**.

4.  Type a comment to be displayed in the history of the GPO, and then click **OK**.

5.  When the **Progress** window indicates that overall progress is complete, click **Close**. The GPO is removed from the list on the **Uncontrolled** tab and added to the **Controlled** tab.

### Additional considerations

-   By default, you must be an Approver or an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **List Contents** and **Create GPO** permissions for the domain.

### Additional references

-   [Creating, Controlling, or Importing a GPO](creating-controlling-or-importing-a-gpo-approver.md)

 

 






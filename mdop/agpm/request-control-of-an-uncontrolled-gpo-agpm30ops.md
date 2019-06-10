---
title: Request Control of an Uncontrolled GPO
description: Request Control of an Uncontrolled GPO
author: mjcaparas
ms.assetid: b668a67a-5a2c-4f6a-8b1c-efa3ca0794d4
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Request Control of an Uncontrolled GPO


To provide change control for an existing Group Policy Object (GPO), the GPO must be controlled. Unless you are an Approver or an AGPM Administrator (Full Control), you must request that the GPO be controlled.

A user account with the Editor or Reviewer role or necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To control an uncontrolled GPO**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab in the details pane, click the **Uncontrolled** tab to display the uncontrolled GPOs.

3.  Right-click the GPO to be controlled with AGPM, and then click **Control**.

4.  Unless you have special permission to control GPOs, you must submit a request for control. To receive a copy of the request, type your e-mail address in the **Cc** field. Type a comment to be displayed in the **History** of the GPO, and then click **Submit**.

5.  When the **Progress** window indicates that overall progress is complete, click **Close**. The GPO is removed from the list on the **Uncontrolled** tab and added to the **Pending** tab. When an Approver has approved your request, the GPO will be moved to the **Controlled** tab.

### Additional considerations

-   By default, you must be an Editor or a Reviewer to perform this procedure. Specifically, you must have **List Contents** and **Read Settings** permissions for the domain.

-   To withdraw your request before it has been approved, click the **Pending** tab. Right-click the GPO, and then click **Withdraw**. The GPO will be returned to the **Uncontrolled** tab.

### Additional references

-   [Creating, Controlling, or Importing a GPO](creating-controlling-or-importing-a-gpo-agpm30ops.md)

 

 






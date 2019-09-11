---
title: Request Control of a Previously Uncontrolled GPO
description: Request Control of a Previously Uncontrolled GPO
author: dansimp
ms.assetid: 00e8725d-5d7f-4eed-a5e6-c3631632cfbd
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Request Control of a Previously Uncontrolled GPO


To use Advanced Group Policy Management (AGPM) to provide change control for an existing Group Policy object (GPO), the GPO must be controlled with AGPM. Unless you are an Approver or an AGPM Administrator (Full Control), you must request that the GPO be controlled.

A user account with the Editor or Reviewer role or necessary permissions in Advanced Group Policy Management is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To control a previously uncontrolled GPO**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab in the details pane, click the **Uncontrolled** tab to display the uncontrolled GPOs.

3.  Right-click the GPO to be controlled with AGPM, and then click **Control**.

4.  Unless you have special permission to control GPOs, you must submit a request for control. To receive a copy of the request, type your e-mail address in the **Cc** field. Type a comment to be displayed in the **History** of the GPO, and then click **Submit**.

5.  When the **Progress** window indicates that overall progress is complete, click **Close**. The GPO is removed from the list on the **Uncontrolled** tab and added to the **Pending** tab. When an Approver has approved your request, the GPO will be moved to the **Controlled** tab.

### Additional considerations

-   By default, you must be an Editor or a Reviewer to perform this procedure. Specifically, you must have **List Contents** and **Read Settings** permissions for the domain.

-   To withdraw your request before it has been approved, click the **Pending** tab. Right-click the GPO, and then click **Withdraw**. The GPO will be returned to the **Uncontrolled** tab.

### Additional references

-   [Creating, Controlling, or Importing a GPO](creating-controlling-or-importing-a-gpo-editor.md)

 

 






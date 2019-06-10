---
title: Create a New Controlled GPO
description: Create a New Controlled GPO
author: mjcaparas
ms.assetid: f89eaae8-7858-4222-ba3f-a93a9d7ea5a3
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Create a New Controlled GPO


New Group Policy Objects (GPOs) created through the **Change Control** folder will automatically be controlled, enabling you to manage them.

A user account with the Approver or AGPM Administrator (Full Control) role or necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To create a new GPO with change control managed through AGPM**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  Right-click **Change Control**, and then click **New Controlled GPO**.

3.  In the **New Controlled GPO** dialog box:

    1.  Type a name for the new GPO.

    2.  Optional: Type a comment for the new GPO to be displayed in the **History** for the GPO.

    3.  To immediately deploy the new GPO to the production environment, click **Create live**. To create the new GPO offline without immediately deploying it, click **Create offline**.

    4.  Select the GPO template to use as a starting point for the new GPO.

    5.  Click **OK**.

4.  When the **Progress** window indicates that overall progress is complete, click **Close**. The new GPO is displayed in the list of GPOs on the **Controlled** tab.

### Additional considerations

-   By default, you must be an Approver or an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **List Contents** and **Create GPO** permissions for the domain.

### Additional references

-   [Creating, Controlling, or Importing a GPO](creating-controlling-or-importing-a-gpo-editor-agpm30ops.md)

 

 






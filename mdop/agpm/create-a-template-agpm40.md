---
title: Create a Template
description: Create a Template
author: dansimp
ms.assetid: b38423af-7d24-437a-98bc-01f1ae891127
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Create a Template


Creating a template enables you to save all of the settings of a particular version of a Group Policy Object (GPO) to use as a starting point for creating new GPOs.

**Note**  
A template is an uneditable, static version of a GPO for use as a starting point for creating new, editable GPOs.

 

A user account with the Editor or AGPM Administrator (Full Control) role or necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To create a template based on an existing GPO**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab in the details pane, click the **Controlled** or **Uncontrolled** tab to display available GPOs.

3.  Right-click the GPO from which you want to create a template, and then click **Save as Template**.

4.  Type a name for the template and a comment, and then click **OK**.

5.  When the **Progress** window indicates that overall progress is complete, click **Close**. The new template appears on the **Templates** tab.

### Additional considerations

-   By default, you must be an Editor or an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **List Contents** and **Create Template** permissions for the domain.

-   Renaming or deleting a template does not impact GPOs created from that template.

-   Because it cannot be altered, a template does not have a history.

### Additional references

-   [Creating a Template and Setting a Default Template](creating-a-template-and-setting-a-default-template-agpm40.md)

-   [Request the Creation of a New Controlled GPO](request-the-creation-of-a-new-controlled-gpo-agpm40.md)

 

 






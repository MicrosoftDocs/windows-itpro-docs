---
title: Set a Default Template
description: Set a Default Template
author: mjcaparas
ms.assetid: 07208b6b-cb3a-4f6c-9c84-36d4dc1486d8
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Set a Default Template


As an Editor, you can specify which of the available templates will be the default template suggested for all Group Policy administrators creating new Group Policy Objects (GPOs).

**Note**  
A template is an uneditable, static version of a GPO for use as a starting point for creating new, editable GPOs.

 

A user account with the Editor or AGPM Administrator (Full Control) role or necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To set the default template for use when creating new GPOs**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab in the details pane, click the **Templates** tab to display available templates.

3.  Right-click the template that you want to set as the default, and then click **Set as Default**.

4.  Click **Yes** to confirm.

5.  When the **Progress** window indicates that overall progress is complete, click **Close**. The default template has a blue icon and the state is identified as **Template (default)** on the **Templates** tab.

### Additional considerations

-   By default, you must be an Editor or an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **List Contents** and **Create Template** permissions for the domain.

-   After you set a template as the default, that template will be the one initially selected in the **New Controlled GPO** dialog box when Group Policy administrators create new GPOs. However, they will have the option to select any other GPO template, including **&lt;Empty GPO&gt;**, which does not include any settings.

-   Renaming or deleting a template does not impact GPOs created from that template.

-   Because it cannot be altered, a template does not have a history.

### Additional references

-   [Creating a Template and Setting a Default Template](creating-a-template-and-setting-a-default-template-agpm40.md)

-   [Request the Creation of a New Controlled GPO](request-the-creation-of-a-new-controlled-gpo-agpm40.md)

 

 






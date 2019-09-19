---
title: Request the Creation of a New Controlled GPO
description: Request the Creation of a New Controlled GPO
author: dansimp
ms.assetid: cb265238-386f-4780-a59a-0c9a4a87d736
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Request the Creation of a New Controlled GPO


Unless you are an Approver or an AGPM Administrator (Full Control), you must request the creation of a new Group Policy Object (GPO).

A user account with the Editor or Reviewer role or necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To create a new GPO with change control managed through AGPM**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  Right-click **Change Control**, and then click **New Controlled GPO**.

3.  Unless you have special permission to create GPOs, you must submit a request for creation. In the **New Controlled GPO** dialog box:

    1.  To receive a copy of the request, enter your e-mail address in the **Cc** field.

    2.  Type a name for the new GPO.

    3.  Optional: Type a comment for the new GPO.

    4.  To deploy the new GPO to the production environment of the domain immediately upon approval, click **Create live**. To create the new GPO offline without immediately deploying it upon approval, click **Create offline**.

    5.  Select the GPO template to use as a starting point for the new GPO.

    6.  Click **Submit**.

4.  When the **Progress** window indicates that overall progress is complete, click **Close**. The new GPO is displayed in the list of GPOs on the **Pending** tab. When an Approver has approved your request, the GPO will be moved to the **Controlled** tab.

### Additional considerations

-   By default, you must be an Editor or a Reviewer to perform this procedure. Specifically, you must have **List Contents** permission for the domain.

-   To withdraw your request before it has been approved, click the **Pending** tab. Right-click the GPO, then click **Withdraw**. The GPO will be destroyed.

### Additional references

-   [Creating or Controlling a GPO](creating-or-controlling-a-gpo-agpm40-ed.md)

 

 






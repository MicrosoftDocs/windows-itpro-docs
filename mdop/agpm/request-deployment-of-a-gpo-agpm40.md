---
title: Request Deployment of a GPO
description: Request Deployment of a GPO
author: dansimp
ms.assetid: 5783cfd0-bd93-46b4-8fa0-684bd39aa8fc
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Request Deployment of a GPO


After you have modified and checked in a Group Policy Object (GPO), deploy the GPO, so it will take effect in the production environment.

A user account with the Editor role or necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To request the deployment of a GPO to the production environment of the domain**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab, click the **Controlled** tab to display the controlled GPOs.

3.  Right-click the GPO to be deployed, and then click **Deploy**.

4.  Unless you are an Approver or AGPM Administrator or have special permission to deploy GPOs, you must submit a request for deployment. To receive a copy of the request, type your e-mail address in the **Cc** field. Type a comment to be displayed in the **History** for the GPO, and then click **Submit**.

5.  When the **Progress** window indicates that overall progress is complete, click **Close**. The GPO is displayed on the list of GPOs on the **Pending** tab. When an Approver has approved your request, the GPO will be moved from the **Pending** tab to the **Controlled** tab and be deployed.

### Additional considerations

-   By default, you must be an Editor to perform this procedure. Specifically, you must have **List Contents** and **Edit Settings** permissions for the GPO.

-   To withdraw your request before it has been approved, click the **Pending** tab. Right-click the GPO, and then click **Withdraw**. The GPO will be returned to the **Controlled** tab.

### Additional references

-   [Performing Editor Tasks](performing-editor-tasks-agpm40.md)

 

 






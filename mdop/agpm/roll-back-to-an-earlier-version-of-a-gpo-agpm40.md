---
title: Roll Back to an Earlier Version of a GPO
description: Roll Back to an Earlier Version of a GPO
author: mjcaparas
ms.assetid: 06ce9251-95e0-46d0-99c2-b9a0690e5891
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Roll Back to an Earlier Version of a GPO


An Approver can roll back changes to a Group Policy Object (GPO) by redeploying an earlier version of the GPO from its history. Deploying an earlier version of a GPO overwrites the version of the GPO currently in production.

A user account with the Approver or AGPM Administrator (Full Control) role or necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To deploy an earlier version of a GPO to the production environment of the domain**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab, click the **Controlled** tab to display the controlled GPOs.

3.  Double-click the GPO to be deployed to display its **History**.

4.  Right-click the version to be deployed, click **Deploy**, and then click **Yes**.

5.  When the **Progress** window indicates that overall progress is complete, click **Close**. In the **History** window, click **Close**.

**Note**  
To verify that the version that has been redeployed matches the version intended, examine a difference report for the two versions. In the **History** window for the GPO, highlight the two versions, and then right-click and select **Difference** and either **HTML Report** or **XML Report**.

 

### Additional considerations

-   By default, you must be an Approver or an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **List Contents** and **Deploy GPO** permissions for the GPO.

### Additional references

-   [Performing Approver Tasks](performing-approver-tasks-agpm40.md)

 

 






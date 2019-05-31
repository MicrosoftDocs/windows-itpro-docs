---
title: Use a Test Environment
description: Use a Test Environment
author: mjcaparas
ms.assetid: 86295084-b39e-4040-bb3f-15c3c1e99b1a
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Use a Test Environment


If you use a testing organizational unit (OU) to test Group Policy Objects (GPOs) before deployment to the production environment, you must have the necessary permissions to access the test OU. The use of a test OU is optional.

**To use a test OU**

1.  While you have the GPO checked out for editing, in the **Group Policy Management Console**, click **Group Policy Objects** in the forest and domain in which you are managing GPOs.

2.  Click the checked out copy of the GPO to be tested. The name will be preceded with **\[Checked Out\]**. (If it is not listed, click **Action**, then **Refresh**. Sort the names alphabetically, and **\[Checked Out\]** GPOs will typically appear at the top of the list.)

3.  Drag and drop the GPO to the test OU.

4.  Click **OK** in the dialog box asking whether to create a link to the GPO in the test OU.

### Additional considerations

-   When testing is complete, checking in the GPO automatically deletes the link to the checked-out copy of the GPO.

### Additional references

-   [Editing a GPO](editing-a-gpo-agpm30ops.md)

 

 






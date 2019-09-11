---
title: Test a GPO in a Separate Organizational Unit
description: Test a GPO in a Separate Organizational Unit
author: dansimp
ms.assetid: 9a9e6d22-74e6-41d8-ac2f-12a1b76ad5a0
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Test a GPO in a Separate Organizational Unit


If you use a testing organizational unit (OU) to test Group Policy Objects (GPOs) within the same domain before deployment to the production environment, you must have the necessary permissions to access the test OU. Using a test OU is optional.

**To use a test OU**

1.  Although you have the GPO checked out for editing, in the **Group Policy Management Console**, click **Group Policy Objects** in the forest and domain in which you are managing GPOs.

2.  Click the checked out copy of the GPO to be tested. The name will be preceded by **\[AGPM\]**. (If it is not listed, click **Action**, then **Refresh**. Sort the names alphabetically, and **\[AGPM\]** GPOs will typically appear at the top of the list.)

3.  Drag the GPO to the test OU.

4.  Click **OK** in the dialog box that asks whether to create a link to the GPO in the test OU.

### Additional considerations

-   When testing is complete, checking in the GPO automatically deletes the link to the checked-out copy of the GPO.

### Additional references

-   [Using a Test Environment](using-a-test-environment.md)

 

 






---
title: Configure Logging and Tracing
description: Configure Logging and Tracing
author: mjcaparas
ms.assetid: 419231f9-e9db-4f91-a7cf-a0a73db25256
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Configure Logging and Tracing


You can centrally configure optional logging and tracing for Advanced Group Policy Management (AGPM) using Administrative templates.

A user account with the AGPM Administrator (Full Control) role, the user account of the Approver who created the GPO used in these procedures, or a user account with the necessary permissions in Advanced Group Policy Management is required to complete these procedures. Additionally, a user account with access to the AGPM Server is required to initiate logging on the AGPM Server. Review the details in "Additional considerations" in this topic.

**To configure logging and tracing for AGPM**

1.  In the **Group Policy Management Console** tree, edit a GPO that is applied to all Group Policy administrators for which you want to turn on logging and tracing. (For more information, see [Editing a GPO](editing-a-gpo.md).)

2.  In the **Group Policy Object Editor**, click **Computer Configuration**, **Administrative Templates**, and **Windows Components**.

3.  If **AGPM** is not listed under **Windows Components**:

    1.  Right-click **Administrative Templates** and click **Add/Remove Templates**.

    2.  Click **Add**, select **agpm.admx** or **agpm.adm**, click **Open**, and then click **Close**.

4.  Under **Windows Components**, double-click **AGPM**.

5.  In the details pane, double-click **AGPM Logging**.

6.  In the **AGPM Logging Properties** window, click **Enabled**, and configure the level of detail to record in the logs.

7.  Click **OK**.

8.  Close the **Group Policy Object Editor**. (For more information, see [Deploy a GPO](deploy-a-gpo.md).) After Group Policy is updated, you must restart the AGPM Service to begin logging on the AGPM Server. Group Policy administrators must close and restart the GPMC to begin logging on their computers.

    **Trace file locations**:

    -   Client: %LocalAppData%\\Microsoft\\AGPM\\agpm.log

    -   Server: %ProgramData%\\Microsoft\\AGPM\\agpmserv.log

### Additional considerations

-   You must be able to edit and deploy a GPO to configure AGPM logging and tracing. See [Editing a GPO](editing-a-gpo.md) and [Deploy a GPO](deploy-a-gpo.md) for additional detail.

### Additional references

-   [Performing AGPM Administrator Tasks](performing-agpm-administrator-tasks.md)

 

 






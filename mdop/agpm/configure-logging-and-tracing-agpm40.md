---
title: Configure Logging and Tracing
description: Configure Logging and Tracing
author: dansimp
ms.assetid: 2418cb6a-7189-4080-8fe2-9c8d47dec62c
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


You can centrally configure optional logging and tracing using Administrative templates. This may be helpful when diagnosing any problems related to Advanced Group Policy Management (AGPM).

A user account with the AGPM Administrator (Full Control) role, the user account of the Approver who created the Group Policy Object (GPO) used in these procedures, or a user account with the necessary permissions in AGPM is required to complete these procedures. Additionally, a user account with access to the AGPM Server is required to initiate logging on the AGPM Server. Review the details in "Additional considerations" in this topic.

**To configure logging and tracing for AGPM**

1.  In the **Group Policy Management Console** tree, edit a GPO that is applied to all Group Policy administrators for which you want to turn on logging and tracing. (For more information, see [Editing a GPO](editing-a-gpo-agpm40.md).)

2.  In the **Group Policy Management Editor** window, click **Computer Configuration**, **Policies**, **Administrative Templates**, **Windows Components**, and **AGPM**.

3.  In the details pane, double-click **AGPM: Configure logging**.

4.  In the **Properties** window, click **Enabled**, and configure the level of detail to record in the logs.

5.  Click **OK**.

6.  Close the **Group Policy Management Editor** window. (For more information, see [Deploy a GPO](deploy-a-gpo-agpm40.md).) After Group Policy is updated, you must restart the AGPM Service to start, modify, or stop logging on the AGPM Server. Group Policy administrators must close and restart the GPMC to start, modify, or stop logging on their computers.

    **Trace file locations**:

    -   Client: %LocalAppData%\\Microsoft\\AGPM\\agpm.log

    -   Server: %ProgramData%\\Microsoft\\AGPM\\agpmserv.log

### Additional considerations

-   You must be able to edit and deploy a GPO to configure AGPM logging and tracing. See [Editing a GPO](editing-a-gpo-agpm40.md) and [Deploy a GPO](deploy-a-gpo-agpm40.md) for additional detail.

### Additional references

-   [Configuring Advanced Group Policy Management](configuring-advanced-group-policy-management-agpm40.md)

 

 






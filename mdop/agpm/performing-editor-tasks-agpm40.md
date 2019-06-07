---
title: Performing Editor Tasks
description: Performing Editor Tasks
author: mjcaparas
ms.assetid: 81976a01-2a95-4256-b703-9fb3c884ef34
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Performing Editor Tasks


In Advanced Group Policy Management (AGPM), an Editor is a person authorized by an AGPM Administrator (Full Control) to change Group Policy Objects (GPOs) and create GPO templates. Additionally, an Editor can request that a GPO be created, deleted, or restored. An Approver must approve the request for it to be implemented. An Editor can export a GPO to a file so that it can be copied to a domain in another forest, and import a GPO that was copied from another domain.

**Important**  
Make sure that you are connecting to the central archive for GPOs. For more information, see [Configure an AGPM Server Connection](configure-an-agpm-server-connection-agpm40.md).

 

-   [Creating or Controlling a GPO](creating-or-controlling-a-gpo-agpm40-ed.md)

-   [Editing a GPO](editing-a-gpo-agpm40.md)

-   [Using a Test Environment](using-a-test-environment.md)

-   [Request Deployment of a GPO](request-deployment-of-a-gpo-agpm40.md)

-   [Creating a Template and Setting a Default Template](creating-a-template-and-setting-a-default-template-agpm40.md)

-   [Deleting or Restoring a GPO](deleting-or-restoring-a-gpo-agpm40.md)

**Note**  
Because the Editor role includes the permissions for the Reviewer role, an Editor can also review settings and compare GPOs. See [Performing Reviewer Tasks](performing-reviewer-tasks-agpm40.md) for more information.

 

### Additional considerations

By default, the following permissions are provided for the Editor role:

-   List Contents

-   Read Settings

-   Edit Settings

-   Export GPO

-   Import GPO

-   Create Template

 

 






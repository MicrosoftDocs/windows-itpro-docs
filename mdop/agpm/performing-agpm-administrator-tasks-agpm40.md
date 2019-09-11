---
title: Performing AGPM Administrator Tasks
description: Performing AGPM Administrator Tasks
author: dansimp
ms.assetid: bc746f39-bdc9-4e2a-bc48-c3c7905de098
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Performing AGPM Administrator Tasks


Advanced Group Policy Management (AGPM) lets an AGPM Administrator (Full Control) configure domain-wide options and delegate permissions to Approvers, Editors, Reviewers, and AGPM Administrators. By default, an AGPM Administrator is someone who has Full Control— all AGPM permissions—and who therefore can perform tasks associated with any role.

In an environment in which multiple people develop Group Policy Objects (GPOs), you can choose to let all Group Policy administrators perform the same tasks and have the same level of access. Or, you can choose to let AGPM Administrators delegate permissions to Editors who can change GPOs and to Approvers who deploy GPOs to the production environment. AGPM Administrators can configure permissions to meet the needs of your organization.

-   [Configuring Advanced Group Policy Management](configuring-advanced-group-policy-management-agpm40.md): Configure the AGPM Server Connection and e-mail notification, delegate access to GPOs in the production environment, and configure logging and tracing for troubleshooting.

-   [Managing the Archive](managing-the-archive-agpm40.md): Delegate access to GPOs in the archive, limit the number of versions of each GPO stored, import a GPO from another domain, and back up and restore the archive.

-   [Managing the AGPM Service](managing-the-agpm-service-agpm40.md): Stop and start the AGPM Service or change the archive path, the AGPM Service Account, or the port on which the AGPM Service listens.

-   [Move the AGPM Server and the Archive](move-the-agpm-server-and-the-archive-agpm40.md): Move the AGPM Service, the archive, or both to a different server.

**Note**  
Because the AGPM Administrator role includes the permissions for all other roles, an AGPM Administrator can perform the tasks usually associated with any other role.

[Performing Approver Tasks](performing-approver-tasks-agpm40.md), such as creating, deploying, or deleting GPOs

[Performing Editor Tasks](performing-editor-tasks-agpm40.md), such as editing, renaming, labeling, or importing GPOs, creating templates, or setting a default template

[Performing Reviewer Tasks](performing-reviewer-tasks-agpm40.md), such as reviewing settings and comparing GPOs

 

### Additional considerations

By default, the AGPM Administrator role has Full Control—all AGPM permissions:

-   List Contents

-   Read Settings

-   Edit Settings

-   Create GPO

-   Deploy GPO

-   Delete GPO

-   Export GPO

-   Import GPO

-   Create Template

-   Modify Options

-   Modify Security

The **Modify Options** and **Modify Security** permissions are unique to the role of AGPM Administrator.

 

 






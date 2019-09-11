---
title: Performing AGPM Administrator Tasks
description: Performing AGPM Administrator Tasks
author: dansimp
ms.assetid: 32e694a7-be64-4943-bce2-2a3a15e5341f
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


An AGPM Administrator (Full Control) configures domain-wide options and delegates permissions to Approvers, Editors, Reviewers, and other AGPM Administrators. By default, an AGPM Administrator is an individual with Full Control (all Advanced Group Policy Management \[AGPM\] permissions) and therefore can also perform tasks associated with any role.

In an environment in which multiple people develop Group Policy objects (GPOs), you can choose whether all Advanced Group Policy Management (AGPM) users perform the same tasks and have the same level of access or whether AGPM Administrators delegate permissions to Editors who make changes to GPOs and to Approvers who deploy GPOs to the production environment. AGPM Administrators can configure permissions to meet the needs of your organization.

-   [Configure the AGPM Server Connection](configure-the-agpm-server-connection.md)

-   [Configure E-Mail Notification](configure-e-mail-notification.md)

-   [Delegate Domain-Level Access](delegate-domain-level-access.md)

-   [Delegate Access to an Individual GPO](delegate-access-to-an-individual-gpo.md)

-   [Configure Logging and Tracing](configure-logging-and-tracing.md)

-   [Managing the AGPM Service](managing-the-agpm-service.md)

    -   [Start and Stop the AGPM Service](start-and-stop-the-agpm-service.md)

    -   [Modify the Archive Path](modify-the-archive-path.md)

    -   [Modify the AGPM Service Account](modify-the-agpm-service-account.md)

    -   [Modify the Port on Which the AGPM Service Listens](modify-the-port-on-which-the-agpm-service-listens.md)

Also, because the AGPM Administrator role includes the permissions for all other roles, an AGPM Administrator can perform the tasks normally associated with any other role.

-   [Performing Approver Tasks](performing-approver-tasks.md), such as creating, deploying, or deleting GPOs

-   [Performing Editor Tasks](performing-editor-tasks.md), such as editing, renaming, labeling, or importing GPOs, creating templates, or setting a default template

-   [Performing Reviewer Tasks](performing-reviewer-tasks.md), such as reviewing settings and comparing GPOs

### Additional considerations

By default, the AGPM Administrator role has Full Control—all AGPM permissions:

-   List Contents

-   Read Settings

-   Edit Settings

-   Create GPO

-   Deploy GPO

-   Delete GPO

-   Modify Options

-   Modify Security

-   Create Template

The **Modify Options** and **Modify Security** permissions are unique to the role of AGPM Administrator.

 

 






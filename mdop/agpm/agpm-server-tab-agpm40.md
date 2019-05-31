---
title: AGPM Server Tab
description: AGPM Server Tab
author: mjcaparas
ms.assetid: a6689437-233e-4f33-a0d6-f7d432c96c00
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# AGPM Server Tab


The **AGPM Server** tab on the **Change Control** pane enables you to select an AGPM Server by entering a fully-qualified computer name and port, and to delete older versions of Group Policy Objects (GPOs) from the archive to conserve disk space on the AGPM Server.

## Specifying the AGPM Server


The AGPM Server selected determines which archive is displayed for you on the **Contents** tab and to which location the **Domain Delegation** settings are applied. The default port for Advanced Group Policy Management (AGPM) is port 4600.

If the AGPM Server connection is centrally configured using Administrative template settings, the options on this tab for configuring the connection are unavailable. For more information, see [Configure AGPM Server Connections](configure-agpm-server-connections-agpm40.md).

## Deleting old GPO versions


By default, all versions of every controlled GPO are retained in the archive. However, you can configure the AGPM Service to limit the number of versions retained for each GPO and automatically delete the oldest version when that limit is exceeded. Only GPO versions displayed on the **Unique Versions** tab of the **History** window count toward the limit.

**Note**  
The maximum number of unique versions to store for each GPO does not include the current version, so entering 0 retains only the current version. The limit must be no greater than 999 versions.

When a GPO version is deleted, a record of that version remains in the history of the GPO, but the GPO version itself is deleted from the archive. You can prevent a GPO version from being deleted by marking it in the history as not deletable.

 

### Additional references

-   [User Interface: Advanced Group Policy Management](user-interface-advanced-group-policy-management-agpm40.md)

-   [Performing AGPM Administrator Tasks](performing-agpm-administrator-tasks-agpm40.md)

-   [Performing Reviewer Tasks](performing-reviewer-tasks-agpm40.md)

 

 






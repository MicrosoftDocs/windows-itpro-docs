---
title: Release Notes for Microsoft Advanced Group Policy Management 4.0
description: Release Notes for Microsoft Advanced Group Policy Management 4.0
author: mjcaparas
ms.assetid: 44c19e61-c8e8-48aa-a2c2-20396d14d5bb
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Release Notes for Microsoft Advanced Group Policy Management 4.0


October 2009

## About Microsoft Advanced Group Policy Management 4.0


Microsoft Advanced Group Policy Management (AGPM) 4.0 extends the capabilities of the Group Policy Management Console (GPMC). AGPM provides comprehensive change control and improved management of Group Policy Objects (GPOs).

The following documents can help you get started with AGPM 4.0.

-   For an overview of the capabilities of AGPM, see [Overview of Microsoft Advanced Group Policy Management](https://go.microsoft.com/fwlink/?LinkID=162671) (https://go.microsoft.com/fwlink/?LinkID=162671).

-   For information about how AGPM 4.0 differs from AGPM 3.0, see [What's New in AGPM 4.0](https://go.microsoft.com/fwlink/?LinkId=160058) (https://go.microsoft.com/fwlink/?LinkId=160058).

-   For guidance about how to determine whether AGPM 4.0, AGPM 3.0, or AGPM 2.5 is appropriate for your environment, see [Choosing Which Version of AGPM to Install](https://go.microsoft.com/fwlink/?LinkId=145981) (https://go.microsoft.com/fwlink/?LinkId=145981).

-   For basic guidance about how to install AGPM and a sample scenario for using AGPM, see [Step-by-Step Guide for Microsoft Advanced Group Policy Management 4.0](https://go.microsoft.com/fwlink/?LinkID=153505) (https://go.microsoft.com/fwlink/?LinkID=153505). This guide is primarily designed to help evaluators and first-time users.

-   For information about how to upgrade from an earlier version of AGPM or detailed guidance about how to plan the deployment of AGPM in your organization, see the [Planning Guide for Microsoft Advanced Group Policy Management 4.0](https://go.microsoft.com/fwlink/?LinkID=156883) (https://go.microsoft.com/fwlink/?LinkID=156883).

-   For information about how to use AGPM to perform specific tasks, see the Advanced Group Policy Management 4.0 Help, which is also available on TechNet as the [Operations Guide for AGPM 4.0](https://go.microsoft.com/fwlink/?LinkId=159872) (https://go.microsoft.com/fwlink/?LinkId=159872).

## More information


For more information about AGPM, see the following:

-   [Advanced Group Policy Management TechNet Library](https://go.microsoft.com/fwlink/?LinkID=146846) (https://go.microsoft.com/fwlink/?LinkID=146846)

-   [Microsoft Desktop Optimization Pack TechCenter](https://go.microsoft.com/fwlink/?LinkId=159870) (http://www.microsoft.com/technet/mdop)

-   [Group Policy TechCenter](https://go.microsoft.com/fwlink/?LinkId=145531) (http://www.microsoft.com/gp)

## Providing feedback


You can post feedback or questions about AGPM to the [Group Policy Forum](https://go.microsoft.com/fwlink/?LinkId=145532) (https://go.microsoft.com/fwlink/?LinkId=145532).

## Known issues with AGPM 4.0


### Import from Production command does not import settings into a GPO that is checked out

If you edit a GPO in the production environment, you must import the GPO from production to update the GPO in the offline archive. The **Import from Production** command is intended to let you perform a final production backup before you finish editing so that you can roll back to the production backup if it is necessary.

If the GPO is checked out when you run the **Import from Production** command, then the production changes are not incorporated into the checked out version of the GPO. However, the imported version of the GPO is added to the history of the GPO even though that version is not available to be edited. When the GPO is checked in, that version will supersede the imported version in the archive, but both are available in the history of the GPO.

**Workaround:** Make sure that the GPO is checked in before you import it from production. If the GPO was not checked in before you imported it, you can use the **Undo Check Out** command to discard your changes and roll back to the version of the GPO that you imported from production.

### Checked out GPOs cannot be edited for several minutes in an environment that uses a multiple site Active Directory topology

AGPM uses a client/server model. The AGPM Server and the AGPM Client each determine their own closest domain controller for Group Policy operations. When you check out a GPO by using an AGPM Client, it is actually the AGPM Server that checks the GPO out from the offline archive to a temporary folder in the SYSVOL folder.

If the AGPM Server and the AGPM Client are in different sites, then the temporary checked out GPO may not be present on the local site's domain controller for several minutes or up to 30 minutes due to SYSVOL replication latency. In this situation, you cannot edit the checked out GPO using the GPMC on an AGPM Client until SYSVOL replication of the checked out GPO has occurred.

**Workaround:** As a best practice, you should position AGPM Clients in the same site as the AGPM Server to which they connect so that you do not have to wait for SYSVOL replication to occur before you can edit a checked out GPO.

### AGPM cannot read the backup limit if your account does not have permissions for the archive

On an AGPM Client, if you log on by using an account that has not been delegated permissions to the AGPM archive, start the Group Policy Management Console (GPMC), and then click **Change Control**, you receive the following error.

``` syntax
Failed to read backup purge limit for this domain. 

The following error occurred: 
You do not have sufficient permissions to perform this operation. 
Microsoft.Agpm.AccessDeniedException (80070005)
```

**Workaround:** Contact an AGPM Administrator (Full Control) and request that they delegate access to AGPM for your account. If you are an AGPM Administrator, log on by using an account to which the AGPM Administrator role is assigned so that you can delegate access for the additional account. For more information, see "Delegate Domain-Level Access to the Archive" in the AGPM Help.

## Release notes copyright information


Information in this document, including URL and other Internet Web site references, is subject to change without notice, and is provided for informational purposes only. The entire risk of the use or results of the use of this document remains with the user, and Microsoft Corporation makes no warranties, either express or implied. The example companies, organizations, products, people and events depicted herein are fictitious. No association with any real company, organization, product, person or event is intended or should be inferred. Complying with all applicable copyright laws is the responsibility of the user. Without limiting the rights under copyright, no part of this document may be reproduced, stored in or introduced into a retrieval system, or transmitted in any form or by any means (electronic, mechanical, photocopying, recording, or otherwise), or for any purpose, without the express written permission of Microsoft Corporation.

Microsoft may have patents, patent applications, trademarks, copyrights, or other intellectual property rights covering subject matter in this document. Except as expressly provided in any written license agreement from Microsoft, the furnishing of this document does not give you any license to these patents, trademarks, copyrights, or other intellectual property.



Microsoft, MS-DOS, Windows, Windows Server, and Windows Vista are either registered trademarks or trademarks of Microsoft Corporation in the U.S.A. and/or other countries.

The names of actual companies and products mentioned herein may be the trademarks of their respective owners.

 

 






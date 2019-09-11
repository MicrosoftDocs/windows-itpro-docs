---
title: How to Manage MBAM Administrator Roles
description: How to Manage MBAM Administrator Roles
author: dansimp
ms.assetid: 813ac0c4-3cf9-47af-b4cb-9395fd915e5c
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Manage MBAM Administrator Roles


After Microsoft BitLocker Administration and Monitoring (MBAM) Setup is complete for all server features, administrative users will have to be granted access to them. As a best practice, administrators who will manage or use Microsoft BitLocker Administration and Monitoring Server features should be assigned to Domain Services security groups, and then those groups should be added to the appropriate MBAM administrative local group.

**To manage MBAM Administrator Role memberships**

1.  Assign administrative users to security groups in Active Directory Domain Services.

2.  Add Active Directory security groups to the roles for MBAM administrative local groups on the MBAM server for the respective features.

    -   **MBAM System Administrators** have access to all MBAM features in the MBAM Administration and Monitoring website.

    -   **MBAM Helpdesk Users** have access to the Manage TPM and Drive Recovery options in the MBAM Administration and Monitoring website, but must fill in all fields when they use either option.

    -   **MBAM Report Users** have access to the Compliance and Audit reports in the MBAM Administration and Monitoring website.

    -   **MBAM Advanced Helpdesk Users** have access to the Manage TPM and Drive Recovery options in the MBAM Administration and Monitoring website, but are not required to fill in all fields when they use either option.

    For more information about roles for Microsoft BitLocker Administration and Monitoring, see [Planning for MBAM 2.0 Administrator Roles](planning-for-mbam-20-administrator-roles-mbam-2.md).

## Related topics


[Administering MBAM 2.0 Features](administering-mbam-20-features-mbam-2.md)

 

 






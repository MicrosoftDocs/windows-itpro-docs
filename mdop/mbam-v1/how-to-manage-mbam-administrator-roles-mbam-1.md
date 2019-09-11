---
title: How to Manage MBAM Administrator Roles
description: How to Manage MBAM Administrator Roles
author: dansimp
ms.assetid: c0f25a42-dbff-418d-a776-4fe23ee07d16
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


After Microsoft BitLocker Administration and Monitoring (MBAM) Setup is complete for all server features, administrative users must be granted access to these server features. As a best practice, administrators who will manage or use MBAM server features, should be assigned to Active Directory security groups and then those groups should be added to the appropriate MBAM administrative local group.

**To manage MBAM Administrator Role memberships**

1.  Assign administrative users to security groups in Active Directory Domain Services.

2.  Add Active Directory Domain Services security groups to the roles for MBAM administrative local groups on the Microsoft BitLocker Administration and Monitoring server for the respective features. The user roles are as follows:

    -   **MBAM System Administrators** have access to all Microsoft BitLocker Administration and Monitoring features in the MBAM administration website.

    -   **MBAM Hardware Users** have access to the Hardware Compatibility features in the MBAM administration website.

    -   **MBAM Helpdesk Users** have access to the Manage TPM and Drive Recovery options in the MBAM administration website, but must fill in all fields when they use either option.

    -   **MBAM Report Users** have access to the Compliance and Audit reports in the MBAM administration website.

    -   **MBAM Advanced Helpdesk Uses** have access to the Manage TPM and Drive Recovery options in the MBAM administration website. These users are not required to fill in all fields when they use either option.

    For more information about roles for Microsoft BitLocker Administration and Monitoring, see [Planning for MBAM 1.0 Administrator Roles](planning-for-mbam-10-administrator-roles.md).

## Related topics


[Administering MBAM 1.0 Features](administering-mbam-10-features.md)

 

 






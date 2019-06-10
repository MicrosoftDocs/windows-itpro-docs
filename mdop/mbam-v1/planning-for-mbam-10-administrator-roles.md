---
title: Planning for MBAM 1.0 Administrator Roles
description: Planning for MBAM 1.0 Administrator Roles
author: msfttracyp
ms.assetid: 95be0eb4-25e9-43ca-a8e7-27373d35544d
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Planning for MBAM 1.0 Administrator Roles


This topic includes and describes the administrator roles that are available in Microsoft BitLocker Administration and Monitoring (MBAM), as well as the server locations where the local groups are created.

##  MBAM Administrator roles


<a href="" id="---------------mbam-system-administrators"></a> **MBAM System Administrators**  
Administrators in this role have access to all MBAM features. The local group for this role is installed on the Administration and Monitoring Server.

<a href="" id="---------------mbam-hardware-users"></a> **MBAM Hardware Users**  
Administrators in this role have access to the Hardware Capability features from MBAM. The local group for this role is installed on the Administration and Monitoring Server.

<a href="" id="---------------mbam-helpdesk-users"></a> **MBAM Helpdesk Users**  
Administrators in this role have access to the Helpdesk features from MBAM. The local group for this role is installed on the Administration and Monitoring Server.

<a href="" id="---------------mbam--report-users"></a> **MBAM Report Users**  
Administrators in this role have access to the Compliance and Audit Reports feature from MBAM. The local group for this role is installed on the Administration and Monitoring Server, Compliance and Audit Database, and on the server that hosts the Compliance and Audit Reports.

<a href="" id="---------------mbam--advanced-helpdesk-users"></a> **MBAM Advanced Helpdesk Users**  
Administrators in this role have increased access to the Helpdesk features from MBAM. The local group for this role is installed on the Administration and Monitoring Server. If a user is a member of both MBAM Helpdesk Users and MBAM Advanced Helpdesk Users, the MBAM Advanced Helpdesk Users permissions will overwrite the MBAM Helpdesk User permissions.

**Important**  
To view the reports, an administrative user must be a member of the **MBAM Report Users** security group on the Administration and Monitoring Server, Compliance and Audit Database, and on the server that hosts the Compliance and Reports feature. As a best practice, create a security group in Active Directory with rights on the local **MBAM Report Users** security group on both the Administration and Monitoring Server and on the server that hosts the Compliance and Reports.

 

## Related topics


[Preparing your Environment for MBAM 1.0](preparing-your-environment-for-mbam-10.md)

 

 






---
title: Preparing your Environment for MBAM 1.0
description: Preparing your Environment for MBAM 1.0
author: dansimp
ms.assetid: 915f7c3c-70ad-4a90-a434-73e7fba97ecb
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Preparing your Environment for MBAM 1.0


Before you begin the Microsoft BitLocker Administration and Monitoring (MBAM) Setup, make sure that you have met the necessary prerequisites to install the product. If you know the prerequisites in advance, you can efficiently deploy the product and enable its features, which can support the business objectives of your organization more effectively.

## Review MBAM 1.0 deployment prerequisites


The MBAM Client and each of the MBAM Server features have specific prerequisites that must be met before they can be successfully installed.

To ensure successful installation of MBAM Clients and MBAM Server features, you should plan to ensure that computers specified for MBAM Client or MBAM Server feature installation are properly prepared for MBAM Setup.

**Note**  
MBAM Setup verifies if all prerequisites are met before installation starts. If they are not met, Setup will fail.

 

[MBAM 1.0 Deployment Prerequisites](mbam-10-deployment-prerequisites.md)

## Plan for MBAM 1.0 Group Policy requirements


Before MBAM can manage clients in the enterprise, you must define the Group Policy for the encryption requirements of your environment.

**Important**  
MBAM will not work with policies for stand-alone BitLocker drive encryption. Group Policy must be defined for MBAM; otherwise, the BitLocker encryption and enforcement will fail.

 

[Planning for MBAM 1.0 Group Policy Requirements](planning-for-mbam-10-group-policy-requirements.md)

## Plan for MBAM 1.0 administrator roles


MBAM administrator roles are managed by local groups that are created by MBAM Setup when you install the following: BitLocker Administration and Monitoring Server, the Compliance and Audit Reports feature, and the Compliance and Audit Status Database.

The membership of MBAM roles can be managed more effectively if you create security groups in Active Directory Domain Services, add the appropriate administrator accounts to those groups, and then add those security groups to the MBAM local groups. For more information, see [How to Manage MBAM Administrator Roles](how-to-manage-mbam-administrator-roles-mbam-1.md).

[Planning for MBAM 1.0 Administrator Roles](planning-for-mbam-10-administrator-roles.md)

## Other resources for MBAM planning


[Planning for MBAM 1.0](planning-for-mbam-10.md)

 

 






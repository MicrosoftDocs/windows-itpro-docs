---
title: Preparing your Environment for MBAM 2.0
description: Preparing your Environment for MBAM 2.0
author: msfttracyp
ms.assetid: 5fb01da9-620e-4992-9e54-2ed3fb69e6af
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Preparing your Environment for MBAM 2.0


Before beginning Microsoft BitLocker Administration and Monitoring (MBAM) Setup, you should make sure that you have met the prerequisites to install the product. When you know what the prerequisites are ahead of time, you can efficiently deploy the product and enable its features so that it most effectively supports your organization’s business objectives.

If you are deploying Microsoft BitLocker Administration and Monitoring with Microsoft System Center Configuration Manager 2007 or Microsoft System Center 2012 Configuration Manager, see [Planning to Deploy MBAM with Configuration Manager](planning-to-deploy-mbam-with-configuration-manager-2.md).

## Review MBAM 2.0 Deployment Prerequisites


The MBAM Client and each of the MBAM Server features have specific prerequisites that must be met before they can be successfully installed.

To ensure successful installation of MBAM Clients and MBAM Server features, ensure that computers specified for MBAM Client or MBAM Server feature installation are properly prepared for MBAM Setup.

**Note**  
MBAM Setup checks that all prerequisites are met before installation starts. If all prerequisites are not met, Setup will fail.

 

[MBAM 2.0 Deployment Prerequisites](mbam-20-deployment-prerequisites-mbam-2.md)

## Plan for MBAM 2.0 Group Policy Requirements


Before MBAM can manage clients in the enterprise, you must define Group Policy for the encryption requirements of your environment.

**Important**  
MBAM will not work with policies for stand-alone BitLocker drive encryption. Group Policy settings must be defined for MBAM, or BitLocker encryption and enforcement will fail.

 

[Planning for MBAM 2.0 Group Policy Requirements](planning-for-mbam-20-group-policy-requirements-mbam-2.md)

## Plan for MBAM 2.0 Administrator Roles


MBAM administrator roles are managed by local groups that are created by MBAM Setup when you install the BitLocker Administration and Monitoring Server, the Compliance and Audit Reports feature, and the Compliance and Audit Status Database.

The membership of Microsoft BitLocker Administration and Monitoring roles can best be managed by creating security groups in Active Directory Domain Services, adding the appropriate administrator accounts to those groups, and then adding those security groups to the BitLocker Administration and Monitoring local groups. For more information, see [How to Manage MBAM Administrator Roles](how-to-manage-mbam-administrator-roles-mbam-2.md).

## Other Resources for MBAM Planning


[Planning for MBAM 2.0](planning-for-mbam-20-mbam-2.md)

[MBAM 2.0 Supported Configurations](mbam-20-supported-configurations-mbam-2.md)

 

 






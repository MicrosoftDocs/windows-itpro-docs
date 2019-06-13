---
title: How to Deploy the MBAM Client to Desktop or Laptop Computers
description: How to Deploy the MBAM Client to Desktop or Laptop Computers
author: msfttracyp
ms.assetid: 56744922-bfdd-48f6-ae01-645ff53b64a8
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Deploy the MBAM Client to Desktop or Laptop Computers


The Microsoft BitLocker Administration and Monitoring (MBAM) client enables administrators to enforce and monitor BitLocker drive encryption on computers in the enterprise. The BitLocker client can be integrated into an organization by deploying the client through an electronic software distribution system, such as Active Directory Domain Services or Microsoft System Center Configuration Manager.

**Note**  
To review the Microsoft BitLocker Administration and Monitoring Client system requirements, see [MBAM 2.0 Supported Configurations](mbam-20-supported-configurations-mbam-2.md).

 

**To deploy the MBAM Client to desktop or laptop computers**

1.  Locate the MBAM client installation files that are provided with the MBAM software.

2.  Use Active Directory Domain Services or an enterprise software deployment tool like Microsoft System Center Configuration Manager to deploy the Windows Installer package to target computers.

3.  Configure the distribution settings or Group Policy to run the MBAM Client installation file. After successful installation, the MBAM Client applies the Group Policy settings that are received from a domain controller to begin BitLocker encryption and management functions. For more information about MBAM group policy settings, see [Planning for MBAM 2.0 Group Policy Requirements](planning-for-mbam-20-group-policy-requirements-mbam-2.md).

    **Important**  
    The MBAM Client will not start BitLocker encryption actions if a remote desktop protocol connection is active. All remote console connections must be closed before BitLocker encryption will begin.

     

## Related topics


[Deploying the MBAM 2.0 Client](deploying-the-mbam-20-client-mbam-2.md)

 

 






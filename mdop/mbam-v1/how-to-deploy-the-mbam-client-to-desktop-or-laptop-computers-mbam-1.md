---
title: How to Deploy the MBAM Client to Desktop or Laptop Computers
description: How to Deploy the MBAM Client to Desktop or Laptop Computers
author: msfttracyp
ms.assetid: f32927a2-4c05-4da8-acca-1108d1dfdb7e
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


The Microsoft BitLocker Administration and Monitoring (MBAM) Client enables administrators to enforce and monitor BitLocker drive encryption on computers in the enterprise. The MBAM Client can be integrated into an organization by deploying the client through tools, such as Active Directory Domain Services or an enterprise software deployment tool such as Microsoft System Center 2012 Configuration Manager.

**Note**  
To review the MBAM Client system requirements, see [MBAM 1.0 Supported Configurations](mbam-10-supported-configurations.md).

 

**To deploy the MBAM Client to desktop or laptop computers**

1.  Locate the MBAM Client installation files that are provided with the MBAM software.

2.  Deploy the Windows Installer package to target computers by using Active Directory Domain Services or an enterprise software deployment tool, such as Microsoft System Center 2012 Configuration Manager.

    **Note**  
    You should not use Group Policy to deploy the Windows Installer package.

     

3.  Configure the distribution settings or Group Policy to run the MBAM Client installation file. After successful installation, the MBAM Client applies the Group Policy settings that are received from a domain controller to begin BitLocker encryption and management functions. For more information about MBAM Group Policy settings, see [Planning for MBAM 1.0 Group Policy Requirements](planning-for-mbam-10-group-policy-requirements.md).

    **Important**  
    The MBAM Client will not start BitLocker encryption actions if a remote desktop protocol connection is active. All remote console connections must be closed before BitLocker encryption will begin.

     

## Related topics


[Deploying the MBAM 1.0 Client](deploying-the-mbam-10-client.md)

 

 






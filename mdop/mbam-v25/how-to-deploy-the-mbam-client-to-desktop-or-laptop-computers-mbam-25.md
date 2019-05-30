---
title: How to Deploy the MBAM Client to Desktop or Laptop Computers
description: How to Deploy the MBAM Client to Desktop or Laptop Computers
author: dansimp
ms.assetid: 3a7639e0-468e-4496-8be2-ed29b8e07c53
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Deploy the MBAM Client to Desktop or Laptop Computers


This topic explains how to deploy the MBAM Client to end users’ computers. You can deploy the MBAM Client through an electronic software distribution system, such as Active Directory Domain Services or Microsoft System Center Configuration Manager.

To deploy the MBAM Client as part of a Windows deployment, see [How to Enable BitLocker by Using MBAM as Part of a Windows Deployment](how-to-enable-bitlocker-by-using-mbam-as-part-of-a-windows-deploymentmbam-25.md).

Before you start the MBAM Client deployment, review the [MBAM 2.5 Supported Configurations](mbam-25-supported-configurations.md).

**To deploy the MBAM Client to desktop or laptop computers**

1.  Locate the MBAM Client installation files that are provided with the MBAM software.

2.  Use Active Directory Domain Services or an enterprise software deployment tool like Microsoft System Center Configuration Manager to deploy the Windows Installer package to target computers.

3.  Configure the distribution settings or Group Policy settings to run the MBAM Client installation file.

    After successful installation, the MBAM Client applies the Group Policy settings that are received from a domain controller to begin BitLocker Drive Encryption and management functions.

    **Important**  
    The MBAM Client does not start BitLocker Drive Encryption actions if a remote desktop protocol connection is active. All remote console connections must be closed and a user must be logged on to a physical console session before BitLocker Drive Encryption begins.

     


## Related topics
[Deploying the MBAM 2.5 Client](deploying-the-mbam-25-client.md)

[Planning for MBAM 2.5 Client Deployment](planning-for-mbam-25-client-deployment.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 






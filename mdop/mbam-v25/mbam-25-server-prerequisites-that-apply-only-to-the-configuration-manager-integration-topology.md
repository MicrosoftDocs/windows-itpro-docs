---
title: MBAM 2.5 Server Prerequisites that Apply Only to the Configuration Manager Integration Topology
description: MBAM 2.5 Server Prerequisites that Apply Only to the Configuration Manager Integration Topology
author: dansimp
ms.assetid: 74180d8d-7b0f-460f-b301-53595cde8381
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# MBAM 2.5 Server Prerequisites that Apply Only to the Configuration Manager Integration Topology


If you are installing Microsoft BitLocker Administration and Monitoring (MBAM) 2.5 by using the System Center Configuration Manager Integration feature, you must complete the prerequisites described in this topic, in addition to those in [MBAM 2.5 Server Prerequisites for Stand-alone and Configuration Manager Integration Topologies](mbam-25-server-prerequisites-for-stand-alone-and-configuration-manager-integration-topologies.md). You must also create or modify .mof files that are needed for the Configuration Manager Integration topology.

## Prerequisites for the Configuration Manager Integration Feature


If you are configuring MBAM with the System Center Configuration Manager Integration topology, you must complete additional prerequisites that are required for Configuration Manager.

[Prerequisites for the Configuration Manager Integration Feature](prerequisites-for-the-configuration-manager-integration-feature.md)

## Edit the Configuration.mof file


To enable the client computers to report BitLocker compliance details through the MBAM Configuration Manager Reports, you have to edit the Configuration.mof file for System Center 2012 Configuration Manager and Microsoft System Center Configuration Manager 2007.

[Edit the Configuration.mof File](edit-the-configurationmof-file-mbam-25.md)

## <a href="" id="create-or-edit-the-sms-def-mof-file"></a>Create or edit the Sms\_def.mof file


To enable the client computers to report BitLocker compliance details in the MBAM Configuration Manager Reports, you have to create or edit the Sms\_def.mof file. If you are using System Center 2012 Configuration Manager, you must create the file. In Configuration Manager 2007, the file already exists, so you need to edit, but not overwrite, the existing file.

[Create or Edit the Sms\_def.mof File](create-or-edit-the-sms-defmof-file-mbam-25.md)


## Related topics


[Preparing your Environment for MBAM 2.5](preparing-your-environment-for-mbam-25.md)

[MBAM 2.5 Supported Configurations](mbam-25-supported-configurations.md)

[Planning to Deploy MBAM 2.5](planning-to-deploy-mbam-25.md)

 

 
## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).





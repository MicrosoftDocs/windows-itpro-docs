---
title: Security Considerations for DaRT 7.0
description: Security Considerations for DaRT 7.0
author: msfttracyp
ms.assetid: 52ad7e6c-c169-4ba4-aa76-56335a585eb8
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# Security Considerations for DaRT 7.0


Microsoft Diagnostics and Recovery Toolset (DaRT) 7 includes functionality that lets an administrator run the DaRT tools remotely to resolve problems on an end-user computer. In earlier releases of DaRT, a help desk technician or administrator had to physically be at an end-user computer and boot into DaRT by using the CD or DVD that included the DaRT recovery image. Now, the help desk technician or administrator can perform the same procedures remotely.

Also in DaRT 7, in addition to burning a CD or DVD, you are now able to save the International Organization for Standardization (ISO) image to a USB flash drive. You can also put the ISO image on a network or include its contents as a recovery partition on a computer hard disk.

The **Remote Connection** feature in DaRT 7 lets end users access DaRT by using one of these new deployment methods. Therefore, they can more easily start DaRT and access the DaRT tools.

The new functionalities in DaRT 7 provide much more flexibility in how you use DaRT in your enterprise. However, they also create their own set of security issues that must be addressed. We recommend that you consider the following security tips when you configure DaRT.

## To help maintain security when you create the DaRT recovery image


When you are creating the DaRT recovery image, you can select the tools that you want to include. For security reasons, you might want to restrict end-user access to the more powerful DaRT tools, such as Disk Wipe and Locksmith. In DaRT 7, you can disable certain tools during configuration and still make them available to helpdesk agents when the end user starts the Remote Connection feature.

You can even configure the DaRT image so that the option to start a remote connection session is the only tool available to an end user.

**Important**  
After the remote connection is established, all the tools that you included in the recovery image, including those unavailable to the end user, will become available to the helpdesk agent working on the end–user computer.

 

For more information about including tools in the DaRT recovery image, see [How to Use the DaRT Recovery Image Wizard to Create the Recovery Image](how-to-use-the-dart-recovery-image-wizard-to-create-the-recovery-image-dart-7.md).

## To help maintain security by encrypting the DaRT recovery image


If you use one of the deployment options new in DaRT 7, for example, saving to a USB flash drive or creating a remote partition or a recovery partition, you can include your company’s preferred method of drive encryption on the ISO. This will help make sure that an end user cannot use the functionality of DaRT should they gain access to the recovery image. And it will also make sure that unauthorized users cannot boot into DaRT on computers that belong to someone else.

Your encryption method should be deployed and enabled in all computers.

**Note**  
DaRT 7 supports BitLocker natively.

 

## To help maintain security between two computers during Remote Connection


By default, the communication between two computers that have established a **Remote Connection** session may not be encrypted. Therefore, to help maintain security between the two computers, we recommend that both computers are a part of the same network.

## Related topics


[Operations for DaRT 7.0](operations-for-dart-70-new-ia.md)

 

 






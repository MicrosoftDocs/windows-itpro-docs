---
title: Deploying the DaRT Recovery Image
description: Deploying the DaRT Recovery Image
author: msfttracyp
ms.assetid: df5cb54a-be8c-4ed2-89ea-d3c67c2ef4d4
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Deploying the DaRT Recovery Image


After you have created the International Organization for Standardization (ISO) file that contains the Microsoft Diagnostics and Recovery Toolset (DaRT) 8.0 recovery image, you can deploy the DaRT 8.0 recovery image throughout your enterprise so that it is available to end users and help desk workers. There are four supported methods that you can use to deploy the DaRT recovery image. To review the advantages and disadvantages of each method, see [Planning How to Save and Deploy the DaRT 8.0 Recovery Image](planning-how-to-save-and-deploy-the-dart-80-recovery-image-dart-8.md).

Burn the ISO image file to a CD or DVD by using the DaRT Recovery Image wizard

Save the contents of the ISO image file to a USB Flash Drive (UFD) by using the DaRT Recovery Image wizard

Extract the boot.wim file from the ISO image and deploy as a remote partition that is available to end-user computers

Extract the boot.wim file from the ISO image and deploy in the recovery partition of a new Windows 8 installation

**Important**  
The **DaRT Recovery Image Wizard** provides the option to burn the image to a CD, DVD or UFD, but the other methods of saving and deploying the recovery image require additional steps that involve tools that are not included in DaRT. Some guidance and links for these other methods are provided in this section.

 

## Deploy the DaRT recovery image as part of a recovery partition


After you have finished running the DaRT Recovery Image wizard and created the recovery image, you can extract the boot.wim file from the ISO image file and deploy it as a recovery partition in a Windows 8 image.

[How to Deploy the DaRT Recovery Image as Part of a Recovery Partition](how-to-deploy-the-dart-recovery-image-as-part-of-a-recovery-partition-dart-8.md)

## Deploy the DaRT recovery image as a remote partition


You can host the recovery image on a central network boot server, such as Windows Deployment Services, and allow users or support staff to stream the image to computers on demand.

[How to Deploy the DaRT Recovery Image as a Remote Partition](how-to-deploy-the-dart-recovery-image-as-a-remote-partition-dart-8.md)

## Other resources for deploying the DaRT recovery image


[Deploying DaRT 8.0](deploying-dart-80-dart-8.md)

 

 






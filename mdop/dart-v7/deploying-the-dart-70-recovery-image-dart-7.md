---
title: Deploying the DaRT 7.0 Recovery Image
description: Deploying the DaRT 7.0 Recovery Image
author: msfttracyp
ms.assetid: 6bba7bff-800f-44e4-bcfc-e143115607ca
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w7
ms.date: 08/30/2016
---


# Deploying the DaRT 7.0 Recovery Image


After you have created the International Organization for Standardization (ISO) file that contains the Microsoft Diagnostics and Recovery Toolset (DaRT) 7 recovery image, you can deploy the DaRT recovery image throughout your enterprise so that it is available to end users and helpdesk agents. There are four supported methods that you can use to deploy the DaRT recovery image.

-   Burn the ISO image file to a CD or DVD

-   Save the contents of the ISO image file to a USB Flash Drive (UFD)

-   Extract the boot.wim file from the ISO image and deploy as a remote partition that is available to end-user computers

-   Extract the boot.wim file from the ISO image and deploy in the recovery partition of a new Windows 7 installation

**Important**  
The **DaRT Recovery Image Wizard** only provides the option to burn a CD or DVD. All other methods of saving and deploying the recovery image require additional steps that involve tools that are not included in DaRT. Some guidance and links for these other methods are provided in this section.

 

## Deploy the DaRT Recovery Image Using a USB Flash Drive


After you have finished running the DaRT Recovery Image Wizard, you can use the tool at <https://go.microsoft.com/fwlink/?LinkId=218888> to copy the ISO image file to a USB flash drive (UFD).

[How to Deploy the DaRT Recovery Image Using a USB Flash Drive](how-to-deploy-the-dart-recovery-image-using-a-usb-flash-drive-dart-7.md)

## Deploy the DaRT Recovery Image as Part of a Recovery Partition


After you have finished running the DaRT Recovery Image Wizard and created the recovery image, you can extract the boot.wim file from the ISO image file and deploy it as a recovery partition in a Windows 7 image.

[How to Deploy the DaRT Recovery Image as Part of a Recovery Partition](how-to-deploy-the-dart-recovery-image-as-part-of-a-recovery-partition-dart-7.md)

## Deploy the DaRT Recovery Image as a Remote Partition


After you have finished running the DaRT Recovery Image Wizard and created the recovery image, you can extract the boot.wim file from the ISO image file and deploy it as a remote partition on the network.

[How to Deploy the DaRT Recovery Image as a Remote Partition](how-to-deploy-the-dart-recovery-image-as-a-remote-partition-dart-7.md)

## Other resources for maintaining Deploying the DaRT Recovery Image


-   [Deploying DaRT 7.0](deploying-dart-70-new-ia.md)

 

 






---
title: Creating the DaRT 7.0 Recovery Image
description: Creating the DaRT 7.0 Recovery Image
author: msfttracyp
ms.assetid: ebb2ec58-0349-469d-a23f-3f944fe4c1fa
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# Creating the DaRT 7.0 Recovery Image


Microsoft Diagnostics and Recovery Toolset (DaRT) 7 includes the **DaRT Recovery Image Wizard** that is used in Windows to create a bootable International Organization for Standardization (ISO) image. An ISO image is a file that represents the raw contents of a CD.

## Use the DaRT Recovery Image Wizard to Create the Recovery Image


The ISO created by the DaRT Recovery Image Wizard contains the DaRT recovery image that lets you boot into a problem computer, even if it might otherwise not start. After you boot the computer into DaRT, you can run the different DaRT tools to try to diagnose and repair the computer.

You can write the ISO to a recordable CD or DVD, save it to a USB flash drive, or save it in a format that you can use to boot into DaRT from a remote partition or from a recovery partition. For more information, see [Deploying the DaRT 7.0 Recovery Image](deploying-the-dart-70-recovery-image-dart-7.md).

**Note**  
If your computer includes a CD-RW drive, the wizard offers to burn the ISO image to a blank CD or DVD. If your computer does not include a drive that is supported by the wizard, you can burn the ISO image onto a CD or DVD by using most programs that can burn a CD or DVD.

 

To create a bootable CD or DVD from the ISO image, you must have:

-   A CD-RW drive.

-   A recordable CD or DVD (in a format supported by the recordable drive).

-   Software that supports the recordable drive and supports burning an ISO image directly to CD or DVD.

    **Important**  
    Test the CD or DVD that you create on all the different kinds of computers that you intend to support because some computers cannot start from all kinds of recordable media.

     

To save the ISO image to a USB flash drive (UFD), you must have:

-   A correctly formatted UFD.

-   A program that you can use to mount the ISO image.

[How to Use the DaRT Recovery Image Wizard to Create the Recovery Image](how-to-use-the-dart-recovery-image-wizard-to-create-the-recovery-image-dart-7.md)

## Create a Time Limited Recovery Image


You can create a DaRT recovery image that can only be used for a certain number of days after it is generated. To do this, you must run the **DaRT Recovery Image Wizard** at a command prompt and specify the number of days.

[How to Create a Time Limited Recovery Image](how-to-create-a-time-limited-recovery-image-dart-7.md)

## Other resources for creating the DaRT 7 recovery image


-   [Deploying DaRT 7.0](deploying-dart-70-new-ia.md)

 

 






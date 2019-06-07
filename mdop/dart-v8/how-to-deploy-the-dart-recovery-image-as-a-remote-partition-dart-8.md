---
title: How to Deploy the DaRT Recovery Image as a Remote Partition
description: How to Deploy the DaRT Recovery Image as a Remote Partition
author: msfttracyp
ms.assetid: 58f4a6c6-6193-42bd-a095-0de868711af9
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# How to Deploy the DaRT Recovery Image as a Remote Partition


After you have finished running the Microsoft Diagnostics and Recovery Toolset (DaRT) 8.0 Recovery Image wizard and created the recovery image, you can extract the boot.wim file from the ISO image file and deploy it as a remote partition on the network.

**To deploy DaRT 8.0 as a remote partition**

1.  Extract the boot.wim file from the DaRT ISO image file.

    1.  Mount the ISO image file that you created in the **Create Startup Image** dialog box by using your company’s preferred method of mounting an image.

    2.  Open the ISO image file and copy the boot.wim file from the \\sources folder in the mounted image to a location on your computer or on an external drive.

        **Note**  
        If you burned a CD or DVD of the recovery image, you can open the files on the CD or DVD and copy the boot.wim file from the \\sources folder. This lets you skip the need to mount the image.

         

2.  Deploy the boot.wim file to a WDS server that can be accessed from end-user computers in your enterprise.

3.  Configure the WDS server to use the boot.wim file for DaRT by following your standard WDS deployment procedures.

For more information about how to deploy DaRT as a remote partition, see [Walkthrough: Deploy an Image by Using PXE](https://go.microsoft.com/fwlink/?LinkId=212108) and [Windows Deployment Services Getting Started Guide](https://go.microsoft.com/fwlink/?LinkId=212106).

## Related topics


[Creating the DaRT 8.0 Recovery Image](creating-the-dart-80-recovery-image-dart-8.md)

[Deploying the DaRT Recovery Image](deploying-the-dart-recovery-image-dart-8.md)

[Planning for DaRT 8.0](planning-for-dart-80-dart-8.md)

 

 






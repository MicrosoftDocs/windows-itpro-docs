---
title: How to Deploy the DaRT Recovery Image as a Remote Partition
description: How to Deploy the DaRT Recovery Image as a Remote Partition
author: msfttracyp
ms.assetid: 757c9340-8eac-42e8-85de-4302e436713a
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w7
ms.date: 08/30/2016
---


# How to Deploy the DaRT Recovery Image as a Remote Partition


After you have finished running the DaRT Recovery Image Wizard and created the recovery image, you can extract the boot.wim file from the ISO image file and deploy it as a remote partition on the network.

**To deploy DaRT as a remote partition**

1.  Extract the boot.wim file from the DaRT ISO image file.

    1.  Mount the ISO image file that you created in the **Create Startup Image** dialog box by using your company’s preferred method of mounting an image.

    2.  Open the ISO image file and copy the boot.wim file from the \\sources folder in the mounted image to a location on your computer or on an external drive.

        **Note**  
        If you burned a CD or DVD of the recovery image, you can open the files on the CD or DVD and copy the boot.wim file from the \\sources folder. This lets you skip the need to mount the image.

         

2.  Deploy the boot.wim file to a WDS server that can be accessed from end-user computers in your enterprise.

3.  Configure the WDS server to use the boot.wim file for DaRT by following your standard WDS deployment procedures.

For more information about how to deploy DaRT as a remote partition, see the following:

-   [Walkthrough: Deploy an Image by Using PXE](https://go.microsoft.com/fwlink/?LinkId=212108)

-   [Windows Deployment Services Getting Started Guide](https://go.microsoft.com/fwlink/?LinkId=212106)

## Related topics


[Deploying the DaRT 7.0 Recovery Image](deploying-the-dart-70-recovery-image-dart-7.md)

 

 






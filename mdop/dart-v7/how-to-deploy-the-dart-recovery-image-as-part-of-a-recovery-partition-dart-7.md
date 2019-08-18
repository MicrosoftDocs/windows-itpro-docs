---
title: How to Deploy the DaRT Recovery Image as Part of a Recovery Partition
description: How to Deploy the DaRT Recovery Image as Part of a Recovery Partition
author: msfttracyp
ms.assetid: 462f2d08-f03b-4a07-b2d3-c69205dc6f70
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to Deploy the DaRT Recovery Image as Part of a Recovery Partition


After you have finished running the DaRT Recovery Image Wizard and created the recovery image, you can extract the boot.wim file from the ISO image file and deploy it as a recovery partition in a Windows 7 image.

**To deploy DaRT in the recovery partition of a Windows 7 image**

1.  Create a target partition in your Windows 7 image that is equal to or greater than the size of the ISO image file that you created by using the **DaRT Recovery Image Wizard**.

    The minimum size required for a DaRT partition is approximately 300MB. However, we recommend 450MB to accommodate for the remote connection functionality in DaRT.

2.  Extract the boot.wim file from the DaRT ISO image file.

    1.  Mount the ISO image file that you created in the **Create Startup Image** dialog box by using your company’s preferred method of mounting an image.

    2.  Open the ISO image file and copy the boot.wim file from the \\sources folder in the mounted image to a location on your computer or on an external drive.

        **Note**  
        If you burned a CD or DVD of the recovery image, you can open the files on the CD or DVD and copy the boot.wim file from the \\sources folder. This lets you skip the need to mount the image.

         

3.  Use the boot.wim file to create a bootable recovery partition by using your company’s standard method for creating a custom Windows RE image.

    For more information about how to create or customize a recovery partition, see [Customizing the Windows RE Experience](https://go.microsoft.com/fwlink/?LinkId=214222).

4.  Replace the target partition in your Windows 7 image with the recovery partition.

After your Windows 7 image is ready, distribute the image to computers in your enterprise by using your company’s standard image deployment process. For more information about how to create a Windows 7 image, see [Building a Standard Image of Windows 7: Step-by-Step Guide](https://go.microsoft.com/fwlink/?LinkId=212103).

For more information about how to deploy a recovery solution to reinstall the factory image in the event of a system failure, see [Deploy a System Recovery Image](https://go.microsoft.com/fwlink/?LinkId=214221).

## Related topics


[Deploying the DaRT 7.0 Recovery Image](deploying-the-dart-70-recovery-image-dart-7.md)

 

 






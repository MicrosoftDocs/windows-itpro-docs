---
title: How to Deploy the DaRT Recovery Image Using a USB Flash Drive
description: How to Deploy the DaRT Recovery Image Using a USB Flash Drive
author: dansimp
ms.assetid: 5b7aa843-731e-47e7-b5f9-48d08da732d6
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to Deploy the DaRT Recovery Image Using a USB Flash Drive


After you have finished running the **DaRT Recovery Image Wizard**, you can use the tool at <https://go.microsoft.com/fwlink/?LinkId=218888> to copy the ISO image file to a USB flash drive (UFD).

You can also manually copy the ISO image file to a UFD by following the steps provided in this section.

**To save the DaRT recovery image to a USB flash drive**

1.  Format the USB flash drive.

    1.  From a running valid operating system or Windows PE session, insert your UFD.

    2.  At the command prompt with administrator permissions, type **DISKPART** and then type **LIST DISK**.

        The Command Prompt window displays the disk number of your UFD, for example **DISK 1**.

    3.  Enter the following commands one at a time at the command prompt.

        ``` syntax
        SELECT DISK 1
        CLEAN
        CREATE PARTITION PRIMARY
        SELECT PARTITION 1
        ACTIVE
        FORMAT FS=NTFS
        ASSIGN
        EXIT
        ```

        **Note**  
        The previous code example assumes Disk 1 is the UFD. If it is necessary, replace DISK 1 with your disk number.

         

2.  By using your company’s preferred method of mounting an image, mount the ISO image file that you created in the **Create Startup Image** dialog box of the **DaRT Recovery Image Wizard**. This requires that you have a method available to mount an image file.

3.  Open the mounted ISO image file and copy all its contents to the formatted USB flash drive.

    **Note**  
    If you burned a CD or DVD of the recovery image, you can open the files on the CD or DVD and copy the contents to the UFD. This lets you skip the need to mount the image.

     

## Related topics


[Deploying the DaRT 7.0 Recovery Image](deploying-the-dart-70-recovery-image-dart-7.md)

 

 






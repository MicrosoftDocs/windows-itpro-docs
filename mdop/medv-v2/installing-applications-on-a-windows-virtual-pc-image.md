---
title: Installing Applications on a Windows Virtual PC Image
description: Installing Applications on a Windows Virtual PC Image
author: levinec
ms.assetid: 32651eff-e3c6-4ef4-947d-2beddc695eac
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 08/30/2016
---


# Installing Applications on a Windows Virtual PC Image


After you have created a Windows Virtual PC image for use with Microsoft Enterprise Desktop Virtualization (MED-V) 2.0, you can install other components that are helpful when running MED-V, such as an electronic software distribution (ESD) system and antivirus software.

The following section provides information to help you install software on the MED-V image.

**Caution**  
For ease of MED-V workspace management after deployment, we recommend that you limit the number of components that you install on the MED-V image to those components that are required or that are helpful when using MED-V. For example, although they are not required to run MED-V, you can install an ESD system to use later for installing applications to a MED-V workspace and antivirus software for security on the image.

 

**Installing Software on a MED-V Image**

1.  If it is not currently running, open your MED-V virtual machine.

    1.  Click **Start**, click **All Programs**, click **Windows Virtual PC** and then click **Windows Virtual PC**.

    2.  Double-click your MED-V virtual machine.

2.  From inside the virtual machine operating system, locate the installation files for the software that you want to install.

3.  Follow the installation instructions that are provided by the software vendor.

    **Note**  
    After installation is complete, you might have to close and then restart the virtual machine.

     

Repeat these steps for any software or application that you want to install on the MED-V image. We recommend that you limit the number of applications that you preinstall on the image. The recommended process for installing applications and other software on the image is to preinstall an ESD system now and to use it later to deploy software to the image. Alternately, you can also use Group Policy or App-V to add or remove applications on a MED-V workspace. For more information, see [Managing Applications Deployed to MED-V Workspaces](managing-applications-deployed-to-med-v-workspaces.md).

For more information about how to install software on a virtual image, see the following articles:

-   [Publish and Use Virtual Applications](https://go.microsoft.com/fwlink/?LinkId=195926) (https://go.microsoft.com/fwlink/?LinkId=195926).

-   [Windows Virtual PC Help](https://go.microsoft.com/fwlink/?LinkId=182378) (https://go.microsoft.com/fwlink/?LinkId=182378).

After you have installed all of the software that you want on the MED-V image, your image is ready to be packaged.

## Related topics


[Configuring a Windows Virtual PC Image for MED-V](configuring-a-windows-virtual-pc-image-for-med-v.md)

[Prepare a MED-V Image](prepare-a-med-v-image.md)

 

 






---
title: Add a Windows 10 operating system image using Configuration Manager (Windows 10)
description: Operating system images are typically the production image used for deployment throughout the organization.
MSHAttr: PreferredLib /library
ms.assetid: 77f769cc-1a47-4f36-8082-201cd77b8d3b
keywords: ["image deploy distribute"]
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: CFaw
---

# Add a Windows 10 operating system image using Configuration Manager


**Applies to**

-   Windows 10

Operating system images are typically the production image used for deployment throughout the organization. This topic shows you how to add a Windows 10 operating system image created with Microsoft System Center 2012 R2 Configuration Manager, and how to distribute the image to a distribution point.

For the purposes of this topic, we will use CM01, a machine running Windows Server 2012 R2 Standard, as the distribution point. CM01 is a member of the domain contoso.com for the fictitious Contoso Corporation. For more details on the setup for this topic, please see [Deploy Windows 10 with the Microsoft Deployment Toolkit](deploy-windows-81-with-the-microsoft-deployment-toolkit.md). Our image is named REFW10-X64-001.wim. For details on building this image, please see [Create a Windows 10 reference image](create-a-windows-81-reference-image.md).

1.  Using File Explorer, in the **E:\\Sources\\OSD\\OS** folder, create a subfolder named **Windows 10 Enterprise x64 RTM**.

2.  Copy the REFW10-X64-001.wim file to the **E:\\Sources\\OSD\\OS\\Windows 10 Enterprise x64 RTM** folder.

    ![figure 17](images/fig17-win10image.png)

    Figure 17. The Windows 10 image copied to the Sources folder structure.

3.  Using the Configuration Manager Console, in the Software Library workspace, right-click **Operating System Images**, and select **Add Operating System Image**.

4.  On the **Data Source** page, in the **Path:** text box, browse to \\\\CM01\\Sources$\\OSD\\OS\\Windows 10 Enterprise x64 RTM\\REFW10-X64-001.wim and click **Next**.

5.  On the **General** page, assign the name Windows 10 Enterprise x64 RTM and click **Next** twice, and then click **Close**.

6.  Distribute the operating system image to the CM01 distribution point by right-clicking the Windows 10 Enterprise x64 RTM operating system image and selecting **Distribute Content**.

7.  In the Distribute Content Wizard, add the CM01 distribution point.

8.  View the content status for the Windows 10 Enterprise x64 RTM package. Do not continue until the distribution is completed. You also can review the E:\\Program Files\\Microsoft Configuration Manager\\Logs\\distmgr.log file and look for the **STATMSG: ID=2301** line.

    ![figure 18](images/fig18-distwindows.png)

    Figure 18. The distributed Windows 10 Enterprise x64 RTM package.

## Related topics


[Integrate Configuration Manager with MDT 2013 Update 1](integrate-configuration-manager-with-mdt-2013.md)

[Prepare for Zero Touch Installation of Windows 10 with Configuration Manager](prepare-for-zero-touch-installation-of-windows-81-with-configuration-manager.md)

[Create a custom Windows PE boot image with Configuration Manager](create-a-custom-windows-pe-50-boot-image-with-configuration-manager.md)

[Create an application to deploy with Windows 10 using Configuration Manager](create-an-application-to-deploy-with-windows-81-using-configuration-manager.md)

[Add drivers to a Windows 10 deployment with Windows PE using Configuration Manager](add-drivers-to-a-windows-81-deployment-with-windows-pe-using-configuration-manager.md)

[Create a task sequence with Configuration Manager and MDT](create-a-task-sequence-with-configuration-manager-and-mdt.md)

[Deploy Windows 10 using PXE and Configuration Manager](deploy-windows-81-using-pxe-and-configuration-manager.md)

[Refresh a Windows 7 SP1 client with Windows 10 using Configuration Manager](refresh-a-windows-7-sp1-client-with-windows-81-using-configuration-manager.md)

[Replace a Windows 7 SP1 client with Windows 10 using Configuration Manager](replace-a-windows-7-sp1-client-with-windows-81-using-configuration-manager.md)

 

 






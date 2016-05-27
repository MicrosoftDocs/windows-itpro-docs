---
title: Microsoft Surface Deployment Accelerator (Surface)
description: Microsoft Surface Deployment Accelerator provides a quick and simple deployment mechanism for organizations to reimage Surface devices.
ms.assetid: E7991E90-4AAE-44B6-8822-58BFDE3EADE4
keywords: deploy, install, tool
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: surface, devices
ms.sitesec: library
author: miladCA
---

# Microsoft Surface Deployment Accelerator


Microsoft Surface Deployment Accelerator provides a quick and simple deployment mechanism for organizations to reimage Surface devices.

Microsoft Surface Deployment Accelerator includes a wizard that automates the creation and configuration of a Microsoft recommended deployment experience by using free Microsoft deployment tools. The resulting deployment solution is complete with everything you need to immediately begin the deployment of Windows to a Surface device. You can also use Microsoft Surface Deployment Accelerator to create and capture a Windows reference image and then deploy it with the latest Windows Updates.

Microsoft Surface Deployment Accelerator is built on the powerful suite of deployment tools available from Microsoft including the Windows Assessment and Deployment Kit (ADK), the Microsoft Deployment Toolkit (MDT), and Windows Deployment Services (WDS). The resulting deployment share encompasses the recommended best practices for managing drivers during deployment and automating image creation and can serve as a starting point upon which you build your own customized deployment solution.

You can find more information about how to deploy to Surface devices, including step-by-step walkthroughs of customized deployment solution implementation, on the Deploy page of the [Surface TechCenter](http://go.microsoft.com/fwlink/p/?LinkId=691693).

**Download Microsoft Surface Deployment Accelerator**

You can download the installation files for Microsoft Surface Deployment Accelerator from the Microsoft Download Center. To download the installation files:

1.  Go to the [Surface Tools for IT](http://go.microsoft.com/fwlink/p/?LinkId=618121) page on the Microsoft Download Center.

2.  Click the **Download** button, select the **Surface\_Deployment\_Accelerator\_xxxx.msi** file, and then click **Next**.

## Microsoft Surface Deployment Accelerator prerequisites


Before you install Microsoft Surface Deployment Accelerator, your environment must meet the following prerequisites:

-   Microsoft Surface Deployment Accelerator must be installed on Windows Server 2012 R2 or later

-   PowerShell Script Execution Policy must be set to **Unrestricted**

-   DHCP and DNS must be enabled on the network where the Windows Server 2012 R2 environment is connected

-   To download Surface drivers and apps automatically the Windows Server 2012 R2 environment must have Internet access and Internet Explorer Enhanced Security Configuration must be disabled

-   To support network boot, the Windows Server 2012 R2 environment must have Windows Deployment Services installed and configured to respond to PXE requests

-   Access to Windows source files or installation media is required when you prepare a deployment with Microsoft Surface Deployment Accelerator

-   At least 6 GB of free space for each version of Windows you intend to deploy

## How Microsoft Surface Deployment Accelerator works


As you progress through the Microsoft Surface Deployment Accelerator wizard, you will be asked some basic questions about how your deployment solution should be configured. As you select the desired Surface models to be supported and apps to be installed (see Figure 1), the wizard will prepare scripts that download, install, and configure everything needed to perform a complete deployment and capture of a reference image. By using the network boot (PXE) capabilities of Windows Deployment Services (WDS), the resulting solution enables you to boot a Surface device from the network and perform a clean deployment of Windows.

![figure 1](images/sda-fig1-select-steps.png)

Figure 1: Select desired apps and drivers

When the Microsoft Surface Deployment Accelerator completes, you can use the deployment share to deploy over the network immediately. Simply boot your Surface device from the network using a Surface Ethernet Adapter and select the Surface deployment share you created with the Microsoft Surface Deployment Accelerator wizard. Select the **1- Deploy Microsoft Surface** task sequence and the wizard will walk you through an automated deployment of Windows to your Surface device.

You can modify the task sequence in the MDT Deployment Workbench to [include your own apps](http://go.microsoft.com/fwlink/p/?linkid=691700), or to [pause the automated installation routine](http://go.microsoft.com/fwlink/p/?linkid=691701). While the installation is paused, you can make changes to customize your reference image. After the image is captured, you can configure a deployment task sequence and distribute this custom configuration by using the same network boot capabilities as before.

>**Note:**&nbsp;&nbsp;With Microsoft Surface Deployment Accelerator v1.9.0258, Surface Pro 3, Surface Pro 4, and Surface Book are supported for Windows 10 deployment, and Surface Pro 3 is supported for Windows 8.1 deployment.

 

## <a href="" id="use-microsoft-surface-deployment-accelerator-without-an-internet-connection--"></a>Use Microsoft Surface Deployment Accelerator without an Internet connection


For environments where the Microsoft Surface Deployment Accelerator server will not be able to connect to the Internet, the required Surface files can be downloaded separately. To specify a local source for Surface driver and app files, select the **Copy from a local directory** option and specify the location of your downloaded files (see Figure 2). All of the driver and app files for your selected choices must be placed in the specified folder.

![figure 2](images/sda-fig2-specify-local.png)

Figure 2. Specify a local source for Surface driver and app files

You can find a full list of available driver downloads at [Download the latest firmware and drivers for Surface devices](deploy-the-latest-firmware-and-drivers-for-surface-devices.md)

>**Note:**&nbsp;&nbsp;Downloaded files do not need to be extracted. The downloaded files can be left as .zip files as long as they are stored in one folder.

 

 

 






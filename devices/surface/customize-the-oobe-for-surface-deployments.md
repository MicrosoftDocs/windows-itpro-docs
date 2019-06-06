---
title: Customize the OOBE for Surface deployments (Surface)
description: This article will walk you through the process of customizing the Surface out-of-box experience for end users in your organization.
ms.assetid: F6910315-9FA9-4297-8FA8-2C284A4B1D87
ms.reviewer: 
manager: dansimp
keywords: deploy, customize, automate, network, Pen, pair, boot
ms.localizationpriority: medium
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: surface, devices
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.date: 07/27/2017
---

# Customize the OOBE for Surface deployments


This article walks you through the process of customizing the Surface out-of-box experience for end users in your organization.

It is common practice in a Windows deployment to customize the user experience for the first startup of deployed computers — the out-of-box experience, or OOBE.

>[!NOTE]
>OOBE is also often used to describe the phase, or configuration pass, of Windows setup during which the user experience is displayed. For more information about the OOBE phase of setup, see [How Configuration Passes Work](https://msdn.microsoft.com/library/windows/hardware/dn898581.aspx).

In some scenarios, you may want to provide complete automation to ensure that at the end of a deployment, computers are ready for use without any interaction from the user. In other scenarios, you may want to leave key elements of the experience for users to perform necessary actions or select between important choices. For administrators deploying to Surface devices, each of these scenarios presents a unique challenge to overcome.

This article provides a summary of the scenarios where a deployment might require additional steps. It also provides the required information to ensure that the desired experience is achieved on any newly deployed Surface device. This article is intended for administrators who are familiar with the deployment process, as well as concepts such as answer files and [reference images](https://technet.microsoft.com/itpro/windows/deploy/create-a-windows-10-reference-image).

>[!NOTE]
>Although the OOBE phase of setup is still run during a deployment with an automated deployment solution such as the [Microsoft Deployment Toolkit (MDT)](https://go.microsoft.com/fwlink/p/?LinkId=618117) or System Center Configuration Manager Operating System Deployment (OSD), it is automated by the settings supplied in the Deployment Wizard and task sequence. For more information see:<br/>
>- [Deploy Windows 10 with the Microsoft Deployment Toolkit](https://technet.microsoft.com/itpro/windows/deploy/deploy-windows-10-with-the-microsoft-deployment-toolkit)
>- [Deploy Windows 10 with System Center 2012 R2 Configuration Manager](https://technet.microsoft.com/itpro/windows/deploy/deploy-windows-10-with-system-center-2012-r2-configuration-manager)

 

## Scenario 1: Wireless networking in OOBE with MDT 2013


When a wireless network adapter is present during OOBE, the **Join a wireless network** page is displayed, which prompts a user to connect to a wireless network. This page is not automatically hidden by deployment technologies, including MDT 2013, and therefore will be displayed even when a deployment is configured for complete automation.

To ensure that an automated deployment is not stopped by this page, the page must be hidden by configuring an additional setting in the answer file, **HideWirelessSetupInOOBE**. You can find additional information about the **HideWirelessSetupInOOBE** setting in [Unattended Windows Setup Reference](https://technet.microsoft.com/library/ff716213.aspx).

## Scenario 2: Surface Pen pairing in OOBE


When you first take a Surface Pro 3, Surface Pro 4, Surface Book, or Surface Studio out of the package and start it up, the first-run experience of the factory image includes a prompt that asks you to pair the included Surface Pen to the device. This prompt is only provided by the factory image that ships with the device and is not included in other images used for deployment, such as the Windows Enterprise installation media downloaded from the Volume Licensing Service Center. Because pairing the Bluetooth Surface Pen outside of this experience requires that you enter the Control Panel or PC Settings and manually pair a Bluetooth device, you may want to have users or a technician use this prompt to perform the pairing operation.

To provide the factory Surface Pen pairing experience in OOBE, you must copy four files from the factory Surface image into the reference image. You can copy these files into the reference environment before you capture the reference image, or you can add them later by using Deployment Image Servicing and Management (DISM) to mount the image. The four required files are:

-   %windir%\\system32\\oobe\\info\\default\\1033\\oobe.xml
-   %windir%\\system32\\oobe\\info\\default\\1033\\PenPairing\_en-US.png
-   %windir%\\system32\\oobe\\info\\default\\1033\\PenError\_en-US.png
-   %windir%\\system32\\oobe\\info\\default\\1033\\PenSuccess\_en-US.png

>[!NOTE]
>You should copy the files from a factory image for the same model Surface device that you intend to deploy to. For example, you should use the files from a Surface Pro 3 to deploy to Surface Pro 3, and the files from Surface Book to deploy Surface Book, but you should not use the files from a Surface Pro 3 to deploy Surface Book or Surface Pro 4.

 

The step-by-step process for adding these required files to an image is described in [Deploying Surface Pro 3 Pen and OneNote Tips](https://blogs.technet.microsoft.com/askcore/2014/07/15/deploying-surface-pro-3-pen-and-onenote-tips/). This blog post also includes tips to ensure that the necessary updates for the Surface Pen Quick Note-Taking Experience are installed, which allows users to send notes to OneNote with a single click.

 

 






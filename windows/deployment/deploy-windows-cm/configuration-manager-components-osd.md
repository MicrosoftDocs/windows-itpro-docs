---
title: Deploy Windows 10 with Configuration Manager (Windows 10)
description: If you have Configuration Manager in your environment, you will most likely want to use it to deploy Windows 10.
ms.assetid: eacd7b7b-dde0-423d-97cd-29bde9e8b363
ms.reviewer: 
manager: laurawi
ms.author: greglin
keywords: deployment, custom, boot
ms.prod: w10
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.sitesec: library
audience: itpro
author: greg-lindsay
ms.topic: article
---

## Components of Configuration Manager operating system deployment (OSD)

**Applies to**
-   Windows 10

Operating system deployment with Configuration Manager is part of the normal software distribution infrastructure, but there are additional components. For example, operating system deployment in Configuration Manager may use the State Migration Point role, which is not used by normal application deployment in Configuration Manager. This section describes the Configuration Manager components involved with the deployment of an operating system, such as Windows 10.

-   **State migration point (SMP).** The state migration point is used to store user state migration data during computer replace scenarios.
-   **Distribution point (DP).** The distribution point is used to store all packages in Configuration Manager, including the operating system deployment-related packages.
-   **Software update point (SUP).** The software update point, which is normally used to deploy updates to existing machines, also can be used to update an operating system as part of the deployment process. You also can use offline servicing to update the image directly on the Configuration Manager server.
-   **Reporting services point.** The reporting services point can be used to monitor the operating system deployment process.
-   **Boot images.** Boot images are the Windows Preinstallation Environment (Windows PE) images Configuration Manager uses to start the deployment.
-   **Operating system images.** The operating system image package contains only one file, the custom .wim image. This is typically the production deployment image.
-   **Operating system installers.** The operating system installers were originally added to create reference images using Configuration Manager. Instead, we recommend that you use MDT Lite Touch to create your reference images. For more information on how to create a reference image, see [Create a Windows 10 reference image](../deploy-windows-mdt/create-a-windows-10-reference-image.md).
-   **Drivers.** Like MDT Lite Touch, Configuration Manager also provides a repository (catalog) of managed device drivers.
-   **Task sequences.** The task sequences in Configuration Manager look and feel pretty much like the sequences in MDT Lite Touch, and they are used for the same purpose. However, in Configuration Manager the task sequence is delivered to the clients as a policy via the Management Point (MP). MDT provides additional task sequence templates to Configuration Manager.

    **Note**  The Windows Assessment and Deployment Kit (ADK) for Windows 10 is also required to support management and deployment of Windows 10.

## See also

-   [Microsoft Deployment Toolkit downloads and resources](https://go.microsoft.com/fwlink/p/?LinkId=618117)<br>
-   [Windows deployment tools](../windows-deployment-scenarios-and-tools.md)<br>
-   [Deploy Windows 10 with the Microsoft Deployment Toolkit](../deploy-windows-mdt/deploy-windows-10-with-the-microsoft-deployment-toolkit.md)<br>
-   [Upgrade to Windows 10 with the Microsoft Deployment Toolkit](../deploy-windows-mdt/upgrade-to-windows-10-with-the-microsoft-deployment-toolkit.md)<br>
-   [Sideload Windows Store apps](https://technet.microsoft.com/library/dn613831.aspx)<br>
-   [Windows ADK for Windows 10](https://go.microsoft.com/fwlink/p/?LinkId=526803)

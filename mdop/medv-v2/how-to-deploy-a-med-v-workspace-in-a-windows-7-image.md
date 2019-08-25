---
title: How to Deploy a MED-V Workspace in a Windows 7 Image
description: How to Deploy a MED-V Workspace in a Windows 7 Image
author: levinec
ms.assetid: a83aba4e-8681-4906-9872-f431c0bb15f9
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to Deploy a MED-V Workspace in a Windows 7 Image


You can install all the MED-V components into a Windows 7 image that you distribute throughout your enterprise just as you would any new installation of Windows 7. The end user then finishes the installation of the MED-V workspace by clicking a **Start** menu shortcut that you configure to start MED-V. First time setup starts and the end user follows the instructions to complete the configuration.

The following section provides information and instructions to help you deploy the MED-V workspace throughout your enterprise by using a Windows 7 image.

**To deploy a MED-V workspace in a Windows 7 image**

1.  Create a standard image of Windows 7. For more information, see [Building a Standard Image of Windows 7: Step-by-Step Guide](https://go.microsoft.com/fwlink/?LinkId=204843) (https://go.microsoft.com/fwlink/?LinkId=204843).

2.  In the Windows 7 image, install Windows Virtual PC and the Windows Virtual PC updates. For more information, see [Configure Installation Prerequisites](configure-installation-prerequisites.md).

3.  Install the MED-V Host Agent by using the MED-V\_HostAgent\_Setup installation file. For more information, see [How to Manually Install the MED-V Host Agent](how-to-manually-install-the-med-v-host-agent.md).

    **Warning**  
    Internet Explorer must be closed before you install the MED-V Host Agent, otherwise conflicts can occur later with URL redirection. You can also do this by specifying a computer restart during a distribution.

     

4.  Copy the MED-V workspace package files to the Windows 7 image. The MED-V workspace package files are the MED-V workspace installer, .medv file, and setup.exe file that you created by using the **MED-V Workspace Packager**.

    **Important**  
    The .medv and setup.exe file must be in the same folder as the MED-V workspace installer. Then, install the MED-V workspace by running setup.exe.

     

5.  Configure a shortcut on the **Start** menu to open the MED-V workspace package installation.

    Create a **Start** menu shortcut to the setup.exe file that lets the end user start a MED-V installation as required.

6.  By using your company’s standard image deployment process, distribute the Windows 7 image to computers in your enterprise that require MED-V.

When the end user has to access an application published in the MED-V workspace, they can click the **Start** menu shortcut to install the MED-V workspace. This automatically starts first time setup and completes the configuration of MED-V. After first time setup is complete, the end user can access the MED-V applications on the **Start** menu.

## Related topics


[MED-V 2.0 Deployment Overview](med-v-20-deployment-overview.md)

[How to Deploy a MED-V Workspace Through an Electronic Software Distribution System](how-to-deploy-a-med-v-workspace-through-an-electronic-software-distribution-system.md)

 

 






---
title: How to Manually Install the MED-V Host Agent
description: How to Manually Install the MED-V Host Agent
author: levinec
ms.assetid: 4becc90b-6481-4e1f-a4d3-aec74c8821ec
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Manually Install the MED-V Host Agent


There are two separate but related components to the Microsoft Enterprise Desktop Virtualization (MED-V) 2.0 solution: the MED-V Host Agent and Guest Agent. The Host Agent resides on the host computer (a user’s computer that is running Windows 7) and provides a channel to communicate with the MED-V guest (the MED-V virtual machine running in the host computer). It also provides certain MED-V related functionality, such as application publishing.

Typically, you deploy and install the MED-V Host Agent by using your company’s preferred method of provisioning software. However, before deploying MED-V across your enterprise, you might prefer to install the Host Agent locally for testing. This section provides step-by-step instructions for manually installing the MED-V Host Agent.

**Note**  
The MED-V Guest Agent is installed automatically during first time setup.

 

**Important**  
Close Internet Explorer before you install the MED-V Host Agent, otherwise conflicts can occur later with URL redirection. You can also do this by specifying a computer restart during a distribution.

 

**To install the MED-V Host Agent**

1.  Locate the MED-V installation files that you received as part of your software download.

2.  Double-click the MED-V\_HostAgent\_Setup installation file.

    The **Microsoft Enterprise Desktop Virtualization (MED-V) Host Agent Setup** wizard opens. Click **Next** to continue.

3.  Accept the Microsoft Software License Terms, and then click **Next**.

4.  Select the destination folder for installing the MED-V Host Agent. Click **Next**.

5.  To begin the Host Agent installation, click **Install**.

6.  After the installation is completed successfully, click **Finish** to close the wizard.

    To verify that the installation of the Host Agent was successful, click **Start**, click **All Programs**, click **Microsoft Enterprise Desktop Virtualization**, and then click **MED-V Host Agent**.

**Note**  
Until a MED-V workspace is installed, the MED-V Host Agent can be started and runs, but provides no functionality.

 

## Related topics


[How to Deploy the MED-V Components Through an Electronic Software Distribution System](how-to-deploy-the-med-v-components-through-an-electronic-software-distribution-system.md)

[How to Install the MED-V Workspace Packager](how-to-install-the-med-v-workspace-packager.md)

[How to Uninstall the MED-V Components](how-to-uninstall-the-med-v-components.md)

 

 






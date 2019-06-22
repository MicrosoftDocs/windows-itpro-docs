---
title: Examples of Virtual Machine Configurations
description: Examples of Virtual Machine Configurations
author: dansimp
ms.assetid: 5937601e-41ab-4ca2-8fa1-3c9154710cd6
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# Examples of Virtual Machine Configurations


The following are examples of typical virtual machine configurations: one in a persistent MED-V workspace and one in a revertible MED-V workspace.

**Note**  
These examples are not intended for use in all environments. Adjust the configuration according to your environment.

 

**To configure a typical domain setup in a persistent MED-V workspace**

1.  Configure Sysprep on the base image to create a unique SID. For more information, see [Creating a Virtual PC Image for MED-V](creating-a-virtual-pc-image-for-med-v.md#bkmk-howtoconfiguresysprepformedvimages).

2.  On the **VM Setup** tab, select the **Run VM Setup** check box.

3.  In the **VM Computer Name Pattern** section, configure the pattern for the machine image name. For more information, see [How to Configure VM Computer Name Pattern Properties](how-to-configure-vm-computer-name-pattern-propertiesmedvv2.md).

4.  Click **Script Editor**, and in the **VM Setup Script Editor** dialog box, configure the following actions:

    1.  **Rename Computer**

    2.  **Restart Windows**

    3.  **Check Connectivity**

    4.  **Join Domain**

    5.  **Disable Auto-Logon**

    For more information, see [How to Set Up Script Actions](how-to-set-up-script-actions.md).

5.  On the **Policy** menu, click **Commit**.

**To configure a typical setup in a revertible workspace**

1.  On the **VM Setup** tab, select the **Rename the VM based on the computer name pattern** check box.

2.  In the **VM Computer Name Pattern** section, configure the pattern for the machine image name. For more information, see [How to Configure VM Computer Name Pattern Properties](how-to-configure-vm-computer-name-pattern-propertiesmedvv2.md).

3.  On the **Policy** menu, click **Commit**.

## Related topics


[How to Configure the Virtual Machine Setup for a MED-V Workspace](how-to-configure-the-virtual-machine-setup-for-a-med-v-workspacemedvv2.md)

[How to Configure VM Computer Name Pattern Properties](how-to-configure-vm-computer-name-pattern-propertiesmedvv2.md)

[How to Set Up Script Actions](how-to-set-up-script-actions.md)

 

 






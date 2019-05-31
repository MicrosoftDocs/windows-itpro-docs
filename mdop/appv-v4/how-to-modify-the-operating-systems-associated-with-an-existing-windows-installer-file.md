---
title: How to Modify the Operating Systems Associated With an Existing Windows Installer File
description: How to Modify the Operating Systems Associated With an Existing Windows Installer File
author: eavena
ms.assetid: 0633f7e2-aebf-4e00-be02-35bc59dec420
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Modify the Operating Systems Associated With an Existing Windows Installer File


Use the following procedure to modify the operating system versions associated with an existing Windows Installer (**MSI**) file that was created by using the App-V Sequencer.

**To modify the operating systems of an existing Windows Installer file**

1.  Install the App-V Sequencer on a computer in your environment that has only the operating system installed. Alternatively, you can install the Sequencer on a computer running a virtual environment—for example, Microsoft Virtual PC. This method is useful because it is easier to maintain a clean sequencing environment that you can reuse with minimal additional configuration. For more information about installing the App-V Sequencer, see [How to Install the Sequencer](how-to-install-the-sequencer.md).

2.  Copy the entire virtual application package that contains the Windows Installer file you want to modify to the computer running the Sequencer.

3.  To modify the Windows Installer file, open the Sequencer console, select **Package** / **Open**, and then browse to the location where the virtual application package associated with the Windows Installer file is saved.

4.  To add or remove operating systems, select the **Deployment** tab in the Sequencer console. To specify additional operating systems that will be associated with the Windows Installer file, select the desired operating system, and then click the arrow that points to the **Selected** operating system list control.

    To remove an operating system association, select the operating system you want to remove, and then click the arrow that points to the **Available** operating system list control.

5.  To create a new Windows Installer that will be associated with the virtual application package, select **Generate Microsoft Windows Installer (MSI) Package**. Alternatively, you can select **Tools** / **Create MSI**.

    **Note**  
    If you select **Tools** / **Create MSI** to create a new Windows Installer file, you can skip **Step 6** of this procedure.

     

6.  To save the virtual application package, select **Package** / **Save**.

## Related topics


[Tasks for the Application Virtualization Sequencer](tasks-for-the-application-virtualization-sequencer.md)

 

 






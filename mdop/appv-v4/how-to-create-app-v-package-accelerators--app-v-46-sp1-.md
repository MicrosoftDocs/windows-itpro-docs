---
title: How to Create App-V Package Accelerators (App-V 4.6 SP1)
description: How to Create App-V Package Accelerators (App-V 4.6 SP1)
author: dansimp
ms.assetid: 585e692e-cebb-48ac-93ab-b2e7eb7ae7ad
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Create App-V Package Accelerators (App-V 4.6 SP1)


You can use App-V Package Accelerators to automatically generate a new virtual application package. After you have successfully created a Package Accelerator, you can reuse and share the Package Accelerator. For more information about Package Accelerators, see [About App-V Package Accelerators (App-V 4.6 SP1)](about-app-v-package-accelerators--app-v-46-sp1-.md). Creating App-V Package Accelerators is an advanced task. Package Accelerators can contain password and user-specific information. Therefore you must save Package Accelerators and the associated installation media in a secure location, and you should digitally sign the Package Accelerator after you create it so that the publisher can be verified when the App-V Package Accelerator is applied.

In some situations, to create the Package Accelerator, you might have to install the application locally on the computer running the Sequencer. First try to create the Package Accelerator by using the installation media, and if there are a number of missing files that are required, install the application locally to the computer running the Sequencer, and then create the Package Accelerator.

**Important**  
Before you begin the following procedure, you should do the following:

-   Copy the virtual application package that you must use to create the Package Accelerator locally to the computer running the Sequencer.

-   Copy all required installation files associated with the virtual application package to the computer running the Sequencer.

 

**Important**  
Disclaimer: The Microsoft Application Virtualization Sequencer does not give you any license rights to the software application you are using to create a Package Accelerator. You must abide by all end user license terms for such application. It is your responsibility to make sure the software application’s license terms allow you to create a Package Accelerator using Application Virtualization Sequencer.

 

**To create an App-V Package Accelerator**

1.  To start the App-V Sequencer, on the computer that is running the App-V Sequencer, click **Start** / **All Programs** / **Microsoft Application Virtualization** / **Microsoft Application Virtualization Sequencer**.

2.  To start the App-V **Create Package Accelerator** wizard, in the App-V Sequencer, click **Tools** / **Create Package Accelerator**.

3.  On the **Select Package** page, to specify an existing virtual application package to use to create the Package Accelerator, click **Browse**, and locate the existing virtual application package (.sprj file).

    **Tip**  
    Copy the files associated with the virtual application package you plan to use locally to the computer running the Sequencer.

     

    Click **Next**.

4.  On the **Installation Files** page, to specify the folder that contains the installation files that you used to create the original virtual application package, click **Browse**, and then select the directory that contains the installation files.

    **Tip**  
    Copy the folder that contains the required installation files to the computer running the Sequencer.

     

    If the application is already installed on the computer running the Sequencer, to specify the installation file, select **Files installed on local system**. To use this option, the application must already be installed in the default installation location.

5.  On the **Gathering Information** page, review the files that were not found in the location specified on the **Installation Files** page of this wizard. If the files displayed are not required, select **Remove these files**, and then click **Next**. If the files are required, click **Previous** and copy the required files to the directory specified on the **Installation Files** page.

    **Note**  
    You must either remove the unrequired files, or click **Previous** and locate the required files to advance to the next page of this wizard.

     

6.  On the **Select Files** page, carefully review the files that were detected, and clear any file that should be removed from the Package Accelerator. Select only files that are required for the application to run successfully, and then click **Next**.

7.  On the **Verify Applications** page, confirm that all installation files that are required to build the package are displayed. When the Package Accelerator is used to create a new package, all installation files displayed in the **Applications** pane are required to create the package.

    If necessary, to add additional Installer files, click **Add**. To remove unnecessary installation files, select the Installer file, and then click **Delete**. To edit the properties associated with an installer, click **Edit**. The installation files specified in this step will be required when the Package Accelerator is used to create a new virtual application package. After you have confirmed the information displayed, click **Next**.

8.  On the **Select Guidance** page, to specify a file that contains information about how the Package Accelerator, click **Browse**. For example, this file can contain information about how the computer running the Sequencer should be configured, application prerequisite information for target computers, and general notes. You should provide all required information for the Package Accelerator to be successfully applied. The file you select must be in rich text (.rtf) or text file (.txt) format. Click **Next**.

9.  On the **Create Package Accelerator** page, to specify where to save the Package Accelerator, click **Browse** and select the directory.

10. On the **Completion** page, to close the **Create Package Accelerator** wizard, click **Close**.

    **Important**  
    To help ensure that the Package Accelerator is as secure as possible, and so that the publisher can be verified when the Package Accelerator is applied, you should always digitally sign the Package Accelerator.

     

## Related topics


Configuring the Application Virtualization Sequencer (App-V 4.6 SP1)
[How to Apply a Package Accelerator to Create a Virtual Application Package (App-V 4.6 SP1)](how-to-apply-a-package-accelerator-to-create-a-virtual-application-package---app-v-46-sp1-.md)

 

 






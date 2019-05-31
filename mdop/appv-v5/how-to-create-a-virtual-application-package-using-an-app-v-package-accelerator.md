---
title: How to Create a Virtual Application Package Using an App-V Package Accelerator
description: How to Create a Virtual Application Package Using an App-V Package Accelerator
author: dansimp
ms.assetid: 715e7526-e100-419c-8fc1-75cbfe433835
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Create a Virtual Application Package Using an App-V Package Accelerator


**Important**  
The App-V 5.0 Sequencer does not grant any license rights to the software application that you use to create the Package Accelerator. You must abide by all end user license terms for the application that you use. It is your responsibility to make sure that the software application’s license terms allow you to create a Package Accelerator with the App-V 5.0 Sequencer.

 

Use the following procedure to create a virtual application package with the App-V 5.0 Package Accelerator.

**Note**  
Before you start this procedure, copy the required Package Accelerator locally to the computer that runs the App-V 5.0 Sequencer. You should also copy all required installation files for the package to a local directory on the computer that runs the Sequencer. This is the directory that you have to specify in step 5 of this procedure.

 

**To create a virtual application package with an App-V 5.0 Package Accelerator**

1.  To start the App-V Sequencer, on the computer that runs the App-V 5.0 Sequencer, click **Start** / **All Programs** / **Microsoft Application Virtualization** / **Microsoft Application Virtualization Sequencer**.

2.  To start the **Create New Package Wizard**, click **Create a New Virtual Application Package**. To create the package, select the **Create Package using a Package Accelerator** check box, and then click **Next**.

3.  To specify the package accelerator that will be used to create the new virtual application package, click **Browse** on the **Select Package Accelerator** page. Click **Next**.

    **Important**  
    If the publisher of the package accelerator cannot be verified and does not contain a valid digital signature, then before you click **Run**, you must confirm that you trust the source of the package accelerator. Confirm your choice in the **Security Warning** dialog box.

     

4.  On the **Guidance** page, review the publishing guidance information that is displayed in the information pane. This information was added when the Package Accelerator was created and it contains guidance about how to create and publish the package. To export the guidance information to a text (.txt) file, click **Export** and specify the location where the file should be saved, and then click **Next**.

5.  On the **Select Installation Files** page, click **Make New Folder** to create a local folder that contains all required installation files for the package, and specify where the folder should be saved. You must also specify a name to be assigned to the folder. You must then copy all required installation files to the location that you specified. If the folder that contains the installation files already exists on the computer that runs the Sequencer, click **Browse** to select the folder.

    Alternatively, if you have already copied the installation files to a directory on this computer, click **Make New Folder**, browse to the folder that contains the installation files, and then click **Next**.

    **Note**  
    You can specify the following types of supported installation files:

    -   Windows Installer files (**.msi**)

    -   Cabinet files (.cab)

    -   Compressed files with a .zip file name extension

    -   The actual application files

    The following file types are not supported: **.msp** and **.exe** files. If you specify an **.exe** file, you must extract the installation files manually.

     

    If the package accelerator requires an application to be installed before you apply the Package Accelerator, and if you have already installed the required application, select **I have installed all applications**, and then click **Next** on the **Local Installation** page.

6.  On the **Package Name** page, specify a name that will be associated with the package. The name that you specify identifies the package in the App-V Management Console. Click **Next**.

7.  On the **Create Package** page, provide comments that will be associated with the package. The comments should contain identifying information about the package that you are creating. To confirm the location where the package is created, review the information that is displayed in **Save Location**. To compress the package, select **Compress Package**. Select the **Compress Package** check box if the package will be streamed across the network, or when the package size exceeds 4 GB.

    To create the package, click **Create**. After the package is created, click **Next**.

8.  On the **Configure Software** page, to enable the Sequencer to configure the applications that are contained in the package, select **Configure Software**. In this step you can configure any associated tasks that must be completed in order to run the application on the target computers. For example, you can configure any associated license agreements.

    If you select **Configure Software**, the following items can be configured using the Sequencer as part of this step:

    -   **Load Package**. The Sequencer loads the files that are associated with the package. It can take several seconds to an hour to decode the package.

    -   **Run Each Program**. Optionally run the programs that are contained in the package. This step is helpful to complete any associated license or configuration tasks that are required to run the application before you deploy and run the package on target computers. To run all the programs at once, select at least one program, and then click **Run All**. To run specific programs, select the program or programs that you want to run, and then click **Run Selected**. Complete the required configuration tasks, and then close the applications. It can take several minutes for all programs to run. Click **Next**.

    -   **Save Package**. The Sequencer saves the package.

    -   **Primary Feature Block**. The Sequencer optimizes the package for streaming by rebuilding the primary feature block.

    If you do not want to configure the applications, click **Skip this step**, and to go to step 9 of this procedure, and then click **Next**.

9.  On the **Completion** page, after you review the information that is displayed in the **Virtual Application Package Report** pane, click **Close**.

    The package is now available in the Sequencer. To edit the package properties, click **Edit \[Package Name\]**. For more information about how to modify a package, see [How to Modify an Existing Virtual Application Package](how-to-modify-an-existing-virtual-application-package-beta.md).

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issu**e? Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Operations for App-V 5.0](operations-for-app-v-50.md)

 

 






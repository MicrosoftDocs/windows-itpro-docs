---
title: How to create a virtual application package using an App-V Package Accelerator (Windows 10)
description: How to create a virtual application package using an App-V Package Accelerator.
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 07/10/2018
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.topic: article
---
# How to create a virtual application package using an App-V Package Accelerator

>Applies to: Windows 10, version 1607

Use the following procedure to create a virtual application package with the App-V Package Accelerator.

>[!IMPORTANT]
>The App-V Sequencer does not grant any license rights to the software application that you use to create the package accelerator. You must abide by all end user license terms for the application that you use. It is your responsibility to make sure that the software application’s license terms allow you to create a package accelerator with the App-V Sequencer.

## Create a virtual application package with an App-V Package Accelerator

1. Make sure you've copied the required package accelerator locally to the computer running the App-V Sequencer. Also make sure to copy all required installation files for the package to a local folder on the computer running the Sequencer. This is the folder that you have to specify in step 6 of this procedure.

2. To start the App-V Sequencer on the computer that runs the Sequencer, go to **Start** > **All Programs** > **Microsoft Application Virtualization** > **Microsoft Application Virtualization Sequencer**.

3. Select **Create a New Virtual Application Package**. To create the package, select the **Create Package using a Package Accelerator** check box, then select **Next**.

4. To specify the package accelerator that will be used to create the new virtual application package, select **Browse** on the **Select Package Accelerator** page. Select **Next**.

    >[!IMPORTANT]
    >If the publisher of the package accelerator cannot be verified and does not contain a valid digital signature, then before you select **Run**, you must confirm that you trust the source of the package accelerator. Confirm your choice in the **Security Warning** dialog box.

5. On the **Guidance** page, review the publishing guidance information that is displayed in the information pane. This information was added when the package accelerator was created and it contains guidance about how to create and publish the package. To export the guidance information to a text (.txt) file, select **Export** and specify the location where the file should be saved, and then select **Next**.

6. On the **Select Installation Files** page, select **Make New Folder** to create a local folder that contains all required installation files for the package, and specify where the folder should be saved. You must also specify a name to be assigned to the folder. You must then copy all required installation files to the location that you specified. If the folder that contains the installation files already exists on the computer that runs the Sequencer, select **Browse** to select the folder.

    Alternatively, if you have already copied the installation files to a directory on this computer, select **Make New Folder**, browse to the folder that contains the installation files, then select **Next**.

   > [!NOTE]
    >You can specify the following types of supported installation files:
    > - Windows Installer files (**.msi**)
    > - Cabinet files (.cab)
    > - Compressed files with a .zip file name extension
    > - The actual application files
    > The following file types are not supported: **.msp** and **.exe** files. If you specify an **.exe** file, you must extract the installation files manually.

7. If the package accelerator requires you to install an application before you apply the package accelerator and you have already installed the required application, select **I have installed all applications**, then select **Next** on the **Local Installation** page.

8. On the **Package Name** page, specify a name that will be associated with the package. The name you choose will identify the package in the App-V Management Console. Select **Next**.

9. On the **Create Package** page, provide comments that will be associated with the package. The comments should contain identifying information about the package that you are creating. To confirm the location where the package is created, review the information displayed in **Save Location**. To compress the package, select **Compress Package**. Select the **Compress Package** check box if the package will be streamed across the network or the package size exceeds 4 GB.

10. To create the package, select **Create**. After the package is created, select **Next**.

11. On the **Configure Software** page, to enable the Sequencer to configure the applications contained within the package, select **Configure Software**. **Configure Software** will let you configure any associated tasks required to run the application on the target computers. For example, you can configure any associated license agreements.

    The following items can be configured using the Sequencer as part of this step:

    - **Load Package** loads files associated with the package. It can take several seconds to an hour to decode the package.
    - **Run Each Program** optionally runs programs contained within the package. This step can help you complete associated license or configuration tasks that must be completed before deploying and running the package on target computers. To run all the programs at once, select at least one program, and then select **Run All**. To run specific programs, select the program or programs that you want to run, and then select **Run Selected**. Complete the required configuration tasks, then close the applications. It can take several minutes for all programs to run. Select **Next**.
    - **Save Package** saves the package.
    - **Primary Feature Block** optimizes the package for streaming by rebuilding the primary feature block.

    If you don't want to configure the applications, select **Skip this step**, then select **Next**.

12. On the **Completion** page, after you review the information that is displayed in the **Virtual Application Package Report** pane, select **Close**.

    The package is now available in the Sequencer. To edit the package properties, select **Edit \[Package Name\]**. For more information about how to modify a package, see [How to modify an existing virtual application package](appv-modify-an-existing-virtual-application-package.md).





## Related topics

- [Operations for App-V](appv-operations.md)

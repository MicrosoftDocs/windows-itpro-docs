---
title: How to Apply a Package Accelerator to Create a Virtual Application Package (App-V 4.6 SP1)
description: How to Apply a Package Accelerator to Create a Virtual Application Package (App-V 4.6 SP1)
author: dansimp
ms.assetid: ca0bd514-2bbf-4130-8c77-98d991cbe016
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Apply a Package Accelerator to Create a Virtual Application Package (App-V 4.6 SP1)


You can use App-V Package Accelerators to automatically generate a new virtual application package. For more information about Package Accelerators, see [About App-V Package Accelerators (App-V 4.6 SP1)](about-app-v-package-accelerators--app-v-46-sp1-.md).

**Important**  
Disclaimer: The Application Virtualization Sequencer does not give you any license rights to the software application you are using to create a Package Accelerator. You must abide by all end user license terms for such application. It is your responsibility to make sure the software application’s license terms allow you to create a Package Accelerator using Application Virtualization Sequencer.



**Note**  
Before starting this procedure, copy the required Package Accelerator locally to the computer running the App-V Sequencer. You should also copy all required installation files for the package to a local directory on the computer running the Sequencer. This is the directory that you have to specify in step 5 of this procedure.



Use the following procedure to create a virtual application package by using a Package Accelerator.

**To create a virtual application package by using an App-V Package Accelerator**

1. To start the App-V Sequencer, on the computer that is running the App-V Sequencer, click **Start** / **All Programs** / **Microsoft Application Virtualization** / **Microsoft Application Virtualization Sequencer**.

2. To start the **Create New Package Wizard**, click **Create a New Virtual Application Package**. To create the package, select the **Create Package using a Package Accelerator** check box, and then click **Next**.

3. On the **Select Package Accelerator** page, to specify the Package Accelerator that will be used to create the new virtual application package, click **Browse** to locate the Package Accelerator that you want to use. Click **Next**.

   **Important**  
   If the publisher of the Package Accelerator cannot be verified and does not contain a valid digital signature, in the **Security Warning** dialog box, you must confirm that you trust the source of the Package Accelerator before you click **Run**.



4. On the **Guidance** page, review the publishing guidance information displayed in the information pane. The information displayed was added when the Package Accelerator was created and contains information about creating and publishing the package. To export the guidance information to a text (.txt) file, click **Export** and specify the location where the file should be saved, and then click **Next**.

5. On the **Select Installation Files** page, to create a local folder that contains all required installation files for the package, click **Make New Folder** and specify where the folder should be saved. You must also specify a name to be assigned to the folder. You must then copy all required installation files to the location that you specified. If the folder that contains the installation files already exists on the computer running the Sequencer, click **Browse** to select the folder.

   Alternatively, if you have already copied the installation files to a directory on this computer, click **Make New Folder**, browse to the folder that contains the installation files, and then click **Next**.

   **Note**  
   You can specify the following types of supported installation files:

   -   Windows Installer files(**.msi**

   -   .cab files

   -   Compressed files with a .zip file name extension

   -   The actual application files

   The following file types are not supported: **.msp** and<strong>.exe</strong> files. If you specify an **.exe** file you must extract the installation files manually.



~~~
If the Package Accelerator requires an application be installed prior to applying the Package Accelerator and you have installed the application, on the **Local Installation** page, select the check box **I have installed all applications**, and then click **Next**.
~~~

6. On the **Package Name** page, specify a name that will be associated with the package. The name specified identifies the package in the App-V Management Console. Click **Next**.

7. On the **Create Package** page, provide comments that will be associated with the package. The comments should contain identifying information about the package you are creating. To confirm the location where the package is created, review the information displayed in **Save Location**. To compress the package, select **Compress Package**. Select the **Compress Package** check box if the package will be streamed across the network, or when the package size exceeds 4 GB.

   To create the package, click **Create**. After the package has been created, click **Next**.

8. On the **Configure Software** page, to enable the Sequencer to configure the applications contained in the package, select **Configure Software**. This step is useful for configuring any associated tasks that must be completed to run the application on target computers, such as configuring any associated license agreements.

   If you select **Configure Software**, the following items are configured by the Sequencer as part of this step:

   -   **Load Package**. The Sequencer loads the files associated with the package. It can take several seconds to up to an hour to decode the package.

   -   **Run Each Program**. Optionally run the programs contained in the package. This step is helpful for completing any associated license or configuration tasks that are required to run the application before you deploy and run the package on target computers. To run all the programs at one time, select at least one program, and then click **Run All**. To run specific programs, select the program or programs you want to run, and then click **Run Selected**. Complete the required configuration tasks, and then close the applications. It can take several minutes for all programs to run. Click **Next**.

   -   **Save Package**. The Sequencer saves the package.

   -   **Primary Feature Block**. The Sequencer optimizes the package for streaming by rebuilding the primary feature block.

   If you do not want to configure the applications, click **Skip this step**, and to go to step 9 of this procedure, and then click **Next**.

9. On the **Completion** page, after you have reviewed the information displayed in the **Virtual Application Package Report** pane, click **Close**.

   The package is now available in the Sequencer. To edit the package properties, click **Edit \[Package Name\]**. For more information about modifying a package, see [How to Modify an Existing Virtual Application Package (App-V 4.6 SP1)](how-to-modify-an-existing-virtual-application-package--app-v-46-sp1-.md).

## Related topics


[Configuring the Application Virtualization Sequencer (App-V 4.6 SP1)](configuring-the-application-virtualization-sequencer--app-v-46-sp1-.md)

[How to Create App-V Package Accelerators (App-V 4.6 SP1)](how-to-create-app-v-package-accelerators--app-v-46-sp1-.md)










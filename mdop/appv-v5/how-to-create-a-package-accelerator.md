---
title: How to Create a Package Accelerator
description: How to Create a Package Accelerator
author: dansimp
ms.assetid: dfe305e5-7cf8-498f-9581-4805ffc722bd
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Create a Package Accelerator


App-V 5.0 package accelerators automatically generate new virtual application packages.

**Note**  
You can use PowerShell to create a package accelerator. For more information see [How to Create a Package Accelerator by Using PowerShell](how-to-create-a-package-accelerator-by-using-powershell.md).



Use the following procedure to create a package accelerator.

**Important**  
Package Accelerators can contain password and user-specific information. Therefore you must save Package Accelerators and the associated installation media in a secure location, and you should digitally sign the Package Accelerator after you create it so that the publisher can be verified when the App-V 5.0 Package Accelerator is applied.



**Important**  
Before you begin the following procedure, you should perform the following:

-   Copy the virtual application package that you will use to create the package accelerator locally to the computer running the sequencer.

-   Copy all required installation files associated with the virtual application package to the computer running the sequencer.



**To create a package accelerator**

1.  **Important**  
    The App-V 5.0 Sequencer does not grant any license rights to the software application you are using to create the Package Accelerator. You must abide by all end user license terms for the application you are using. It is your responsibility to make sure the software application’s license terms allow you to create a Package Accelerator using App-V 5.0 Sequencer.



~~~
To start the App-V 5.0 sequencer, on the computer that is running the sequencer, click **Start** / **All Programs** / **Microsoft Application Virtualization** / **Microsoft Application Virtualization Sequencer**.
~~~

2. To start the App-V 5.0 **Create Package Accelerator** wizard, in the App-V 5.0 sequencer console, click **Tools** / **Create Accelerator**.

3. On the **Select Package** page, to specify an existing virtual application package to use to create the Package Accelerator, click **Browse**, and locate the existing virtual application package (.appv file).

   **Tip**  
   Copy the files associated with the virtual application package you plan to use locally to the computer running the Sequencer.



~~~
Click **Next**.
~~~

4. On the **Installation Files** page, to specify the folder that contains the installation files that you used to create the original virtual application package, click **Browse**, and then select the directory that contains the installation files.

   **Tip**  
   Copy the folder that contains the required installation files to the computer running the Sequencer.



5. If the application is already installed on the computer running the sequencer, to specify the installation file, select **Files installed on local system**. To use this option, the application must already be installed in the default installation location.

6. On the **Gathering Information** page, review the files that were not found in the location specified on the **Installation Files** page of this wizard. If the files displayed are not required, select **Remove these files**, and then click **Next**. If the files are required, click **Previous** and copy the required files to the directory specified on the **Installation Files** page.

   **Note**  
   You must either remove the unrequired files, or click **Previous** and locate the required files to advance to the next page of this wizard.



7. On the **Select Files** page, carefully review the files that were detected, and clear any file that should be removed from the package accelerator. Select only files that are required for the application to run successfully, and then click **Next**.

8. On the **Verify Applications** page, confirm that all installation files that are required to build the package are displayed. When the Package Accelerator is used to create a new package, all installation files displayed in the **Applications** pane are required to create the package.

   If necessary, to add additional Installer files, click **Add**. To remove unnecessary installation files, select the Installer file, and then click **Delete**. To edit the properties associated with an installer, click **Edit**. The installation files specified in this step will be required when the Package Accelerator is used to create a new virtual application package. After you have confirmed the information displayed, click **Next**.

9. On the **Select Guidance** page, to specify a file that contains information about how the Package Accelerator, click **Browse**. For example, this file can contain information about how the computer running the Sequencer should be configured, application prerequisite information for target computers, and general notes. You should provide all required information for the Package Accelerator to be successfully applied. The file you select must be in rich text (.rtf) or text file (.txt) format. Click **Next**.

10. On the **Create Package Accelerator** page, to specify where to save the Package Accelerator, click **Browse** and select the directory.

11. On the **Completion** page, to close the **Create Package Accelerator** wizard, click **Close**.

   **Important**  
   To help ensure that the package accelerator is as secure as possible, and so that the publisher can be verified when the package accelerator is applied, you should always digitally sign the package accelerator.



~~~
**Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issu**e? Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).
~~~

## Related topics


[Operations for App-V 5.0](operations-for-app-v-50.md)

[How to Create a Virtual Application Package Using an App-V Package Accelerator](how-to-create-a-virtual-application-package-using-an-app-v-package-accelerator.md)










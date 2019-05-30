---
title: How to create a package accelerator (Windows 10)
description: How to create a package accelerator.
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 07/10/2018
ms.topic: article
---
# How to create a package accelerator

>Applies to: Windows 10, version 1607

App-V Package Accelerators automatically generate new virtual application packages.

>[!NOTE]
>You can use Windows PowerShell to create a package accelerator. For more information, see [How to create a package accelerator by using Windows PowerShell](appv-create-a-package-accelerator-with-powershell.md).

Use the following procedure to create a package accelerator.

>[!IMPORTANT]
>
>- Because package accelerators can contain password and user-specific information, you should save package accelerators and the associated installation media in a secure location, and you should also digitally sign the package accelerator after creating it so that you can verify the publisher when applying the App-V Package Accelerator.
>- Before you begin creating a package accelerator, do the following:
>     - Copy the virtual application package that you will use to create the package accelerator locally to the computer running the sequencer.
>     - Copy all required installation files associated with the virtual application package to the computer running the sequencer.
>- The App-V Sequencer does not grant any license rights to the software application you are using to create the package accelerator. You must abide by all end user license terms for the application you are using. It is your responsibility to make sure the software application’s license terms allow you to create a package accelerator with the App-V sequencer.

## Create a package accelerator

1. To start the App-V sequencer on the computer running the sequencer, select **Start** > **All Programs** > **Microsoft Application Virtualization** > **Microsoft Application Virtualization Sequencer**.

2. To start the App-V **Create Package Accelerator** wizard, in the App-V sequencer console, select **Tools** > **Create Accelerator**.

3. On the **Select Package** page, select **Browse** to specify an existing virtual application package to use to create the package accelerator, then locate the existing virtual application package (it will appear as an .appv file).

    >[!TIP]
    >Copy the files associated with the virtual application package you plan to use locally to the computer running the Sequencer.

    Select **Next**.

4. Go to the **Installation Files** page and select **Browse**, then select the directory that contains the installation files to specify the folder containing the original virtual package's installation files.

    >[!TIP]
    >Copy the folder that contains the required installation files to the computer running the Sequencer.

5. If the application is already installed on the computer running the sequencer, then select **Files installed on local system** to specify the installation file. To use this option, the application must already be installed in the default installation location.

6. On the **Gathering Information** page, review the files that you couldn't find in the location specified by the **Installation Files** page. If the files displayed are not required, select **Remove these files**, then select **Next**. If the files are required, select **Previous** and copy the required files to the directory specified on the **Installation Files** page.

    >[!NOTE]
    >You must either remove the unrequired files or select **Previous** and locate the required files to advance to the next page of this wizard.

7. On the **Select Files** page, carefully review the detected files. Clear any file the package accelerator doesn't need to run successfully and select only the files that the application requires. When you're done, select **Next**.

8. Confirm that the **Verify Applications** page displays all installation files required to build the package. The package accelerator requires all installation files displayed in the **Applications** pane in order to create the package.

    If you need to add additional Installer files, select **Add**. To remove unnecessary installation files, select the **Installer file**, then select **Delete**. To edit the properties associated with an installer, select **Edit**. The package accelerator requires the installation files specified in this step to create a new virtual application package. After you have confirmed the information displayed, select **Next**.

9. On the **Select Guidance** page, select **Browse** to specify the file that will provide the package accelerator with application instructions. For example, this file can contain information about how the computer running the Sequencer should be configured, application prerequisite information for target computers, and general notes. You should provide all required information for successful package accelerator application. The file you select must be in rich text (.rtf) or text file (.txt) format. After specifying the file, select **Next**.

10. On the **Create Package Accelerator** page, select **Browse** and select the directory where you want to save the package accelerator.

11. On the **Completion** page, select **Close**.

    >[!IMPORTANT]
    >You should always digitally sign the package accelerator to ensure that it is secure and can be verified by a publisher during application.





## Related topics

- [Operations for App-V](appv-operations.md)
- [How to create a virtual application package using an App-V Package Accelerator](appv-create-a-virtual-application-package-package-accelerator.md)

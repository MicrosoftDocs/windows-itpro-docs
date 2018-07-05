---
title: How to create a package accelerator (Windows 10)
description: How to create a package accelerator.
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
---
# How to create a package accelerator

>Applies to: Windows 10, version 1607

App-V package accelerators automatically generate new virtual application packages.

>[!NOTE]
>You can use Windows PowerShell to create a package accelerator. For more information, see [How to create a package accelerator by using Windows PowerShell](appv-create-a-package-accelerator-with-powershell.md).

Use the following procedure to create a package accelerator.

>[!IMPORTANT]
>
> - Package Accelerators can contain password and user-specific information. Therefore you must save Package Accelerators and the associated installation media in a secure location, and you should digitally sign the Package Accelerator after you create it so that the publisher can be verified when the App-V Package Accelerator is applied.
> - Before you begin the following procedure, perform the following:
     >- Copy the virtual application package that you will use to create the package accelerator locally to the computer running the sequencer.
     >- Copy all required installation files associated with the virtual application package to the computer running the sequencer.
> - The App-V Sequencer does not grant any license rights to the software application you are using to create the Package Accelerator. You must abide by all end user license terms for the application you are using. It is your responsibility to make sure the software application’s license terms allow you to create a package accelerator with the App-V sequencer.

## Create a package accelerator

1. To start the App-V sequencer on the computer running the sequencer, select **Start** > **All Programs** > **Microsoft Application Virtualization** > **Microsoft Application Virtualization Sequencer**.

2. To start the App-V **Create Package Accelerator** wizard, in the App-V sequencer console, select **Tools** > **Create Accelerator**.

3. On the **Select Package** page, to specify an existing virtual application package to use to create the Package Accelerator, select **Browse**, then locate the existing virtual application package (it will appear as an .appv file).

    >[!TIP]
    >Copy the files associated with the virtual application package you plan to use locally to the computer running the Sequencer.

    Select **Next**.

4. To specify the folder containing original virtual package's installation files, go to the **Installation Files** page and select **Browse**, then select the directory that contains the installation files.

    >[!TIP]
    >Copy the folder that contains the required installation files to the computer running the Sequencer.

5. If the application is already installed on the computer running the sequencer, to specify the installation file, select **Files installed on local system**. To use this option, the application must already be installed in the default installation location.

6. On the **Gathering Information** page, review the files that you couldn't find in the location specified on the **Installation Files** page of this wizard. If the files displayed are not required, select **Remove these files**, then select **Next**. If the files are required, select **Previous** and copy the required files to the directory specified on the **Installation Files** page.

    >[!NOTE]
    >You must either remove the unrequired files or select **Previous** and locate the required files to advance to the next page of this wizard.

7. On the **Select Files** page, carefully review the detected files and clear any file the package accelerator does not need to run successfully. Select only files that the application requires, then select **Next**.

8. Confirm that the **Verify Applications** page displays all installation files required to build the package. The Package Accelerator requires all installation files displayed in the **Applications** pane in order to create the package.

    If you need to add additional Installer files, select **Add**. To remove unnecessary installation files, select the **Installer file**, then select **Delete**. To edit the properties associated with an installer, select **Edit**. The Package Accelerator requires the installation files specified in this step to create a new virtual application package. After you have confirmed the information displayed, click **Next**.

9. On the **Select Guidance** page, to specify a file that contains information about how the Package Accelerator, click **Browse**. For example, this file can contain information about how the computer running the Sequencer should be configured, application prerequisite information for target computers, and general notes. You should provide all required information for the Package Accelerator to be successfully applied. The file you select must be in rich text (.rtf) or text file (.txt) format. Click **Next**.

10. On the **Create Package Accelerator** page, to specify where to save the Package Accelerator, click **Browse** and select the directory.

11. On the **Completion** page, to close the **Create Package Accelerator** wizard, click **Close**.

    >[!IMPORTANT]
    >To help ensure that the package accelerator is as secure as possible, and so that the publisher can be verified when the package accelerator is applied, you should always digitally sign the package accelerator.

## Have a suggestion for App-V?

Add or vote on suggestions on the [Application Virtualization feedback site](https://appv.uservoice.com/forums/280448-microsoft-application-virtualization).

## Related topics

- [Operations for App-V](appv-operations.md)
- [How to Create a Virtual Application Package Using an App-V Package Accelerator](appv-create-a-virtual-application-package-package-accelerator.md)

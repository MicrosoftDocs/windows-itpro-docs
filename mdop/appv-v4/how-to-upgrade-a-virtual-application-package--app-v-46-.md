---
title: How to Upgrade a Virtual Application Package (App-V 4.6)
description: How to Upgrade a Virtual Application Package (App-V 4.6)
author: eavena
ms.assetid: 3566227e-f3dc-4c32-af1f-e0211588118c
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Upgrade a Virtual Application Package (App-V 4.6)


Use the following procedure to upgrade an existing virtual application by using the Application Virtualization (App-V) Sequencer. You can also use the App-V Sequencer Console to make changes to an existing virtual application without performing an upgrade, but you cannot make modifications to the virtual application’s file system by using this method because the App-V Sequencer does not actually decode the associated .sft file. For more information about editing an existing package, see [How to Modify a Virtual Application Package (App-V 4.6)](how-to-modify-a-virtual-application-package--app-v-46-.md).

**To upgrade an existing virtual application**

1.  To start the App-V Sequencer Console, on the computer running the App-V Sequencer, select **Start** / **Programs** / **Microsoft Application Virtualization** / **Microsoft Application Virtualization Sequencer**.

2.  To open the existing virtual application package and start the **Sequencing Wizard**, select **Upgrade a Package**. Locate the package you want to upgrade, and click **Open**. In the **Browse For Folder** dialog box, specify the location where the upgraded version of the package will be placed. This location specified must be located on the drive specified as the application virtualization drive, which is typically the Q:\\ drive. To create a new folder, select **Make New Folder**.

    **Warning**  
    You must specify the root folder of the existing virtual application. Do not manually create a subfolder or the upgrade will fail.

     

3.  On the **Package Information** page, specify the **Package Name** that will be assigned to the updated package. The package name is required for generating the associated Windows Installer file. You should also add an optional comment that will be assigned to the package and that provides detailed information about the virtual application—for example, a version number. To display the **Advanced Options** page, select **Show Advanced Monitoring Options** and click **Next**; otherwise, proceed to step 5.

4.  On the **Advanced Options** page, to allow Microsoft Update to update the application as it is being sequenced, select **Allow Microsoft Update to run during monitoring**. If you select this option, Microsoft Updates are allowed to be installed during the monitoring phase and you will need to accept the associated updates for them to be installed. To remap the supported dynamic-link library (.dll) files so that they use a contiguous space of RAM, select **Rebase DLLs**. Selecting this option can conserve memory and help improve performance. Click **Next**.

5.  On the **Monitor Installation** page, when you are ready to update the application, click **Begin Monitoring**.

    When the updates to the application have been applied, click **Stop Monitoring**. Click **Next**.

6.  On the **Configure Applications** page, if necessary, configure the shortcuts and file type associations that will be associated with the virtual application. To add a new file type association or shortcut, click **Add**, and in the **Add Application** dialog box, specify the new element. To remove an existing shortcut or file type association, click **Remove**. To edit an existing element, select the element you want to modify, and then click **Edit**. Specify the configurations in the **Edit Application** dialog box. Click **Save**. Click **Next**.

7.  On the **Launch Applications** page, to start the application to ensure that the package has been installed correctly and is optimized for streaming, select the package and click **Launch**. This step is useful for configuring how the application initially runs on target computers and for accepting any associated license agreements before the package is made available to App-V clients. If multiple applications are associated with this package, you can select **Launch All** to open all of the applications. To sequence the package, click **Next**.

8.  To close the Sequencing Wizard, click **Finish**. To save the updated package, in the Sequencer Console, select **File** / **Save**.

    If you plan to deploy the updated package by using a Windows Installer file (.msi), you must create new one as follows: in the Sequencer Console, select **Tools** / **Create MSI**. The new Windows Installer file will be created and saved in the directory where the updated virtual application package is saved.

## Related topics


[How to Sequence a New Application (App-V 4.6)](how-to-sequence-a-new-application--app-v-46-.md)

 

 






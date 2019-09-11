---
title: How to Upgrade an Existing Virtual Application
description: How to Upgrade an Existing Virtual Application
author: dansimp
ms.assetid: ec531576-2423-4c2c-9b9f-da74174a6858
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Upgrade an Existing Virtual Application


You can upgrade an existing virtual application to a new version by using the Application Virtualization (App-V) Sequencer. The upgrade process is similar to creating a new virtual application. You must open the existing virtual application for an upgrade, make the necessary updates, and then save the updated virtual application to a new location in the package root directory.

You can also use the App-V Sequencer Console to make changes to an existing virtual application without performing an upgrade. However, you cannot make modifications to the virtual application’s file system by using this method because the App-V Sequencer does not actually decode the associated .sft file. For example; you can open an existing virtual application in the App-V Sequencer Console by selecting **Open** on the **File** menu. You can update the **Package Name** and the associated **Comments**, and you can make changes to the virtual file system and virtual registry. You can also create a Windows Installer file.

Use the following procedure to upgrade an existing virtual application.

**To upgrade an existing virtual application**

1.  To start the App-V Sequencer Console, on the computer running the App-V Sequencer, select **Start**/**Programs**/**Microsoft Application Virtualization**/**Microsoft Application Virtualization Sequencer**.

2.  To open the existing virtual application, in the App-V Console, select **File**/**Open for Package Upgrade**. Use the **Open For Package Upgrade** dialog box to locate the associated SPRJ file you want to open for upgrade.

3.  To specify the location of where the package will be decoded, click **Browse For Folder** and specify the Q:\\. This is the location where the package root directory will be created as specified in the associated SFT file. When you create the updated version of the package, it will be denoted with a sequential addition to the directory name—for example, “**.1**” will be added to the directory name located on the Q:\\ drive.

4.  To open the Sequencing Wizard, select **Tools**/**Sequencing Wizard**. On the **Package Information** page, optionally specify the new **Package Name** and add optional comments that will be associated with the updated virtual application. Click **Next**.

5.  On the **Monitor Installation** page, to begin monitoring the new installation, click **Begin Monitoring**. After the virtual environment has finished loading, install the updated version of the application, or apply updates to the existing application. After you have finished updating the virtual application, click **Stop Monitoring**, and then click **Next**.

6.  On the **Additional Files to Map to Virtual File System (VFS)** page, to specify additional files to be added to the Virtual File System (VFS), click **Add**. Browse to the file you want to add, and click **Open**. To clear existing files that have been added, click **Reset**, and then click **Next**.

7.  On the **Configure Applications** page, configure the shortcuts and file type associations that will be associated with the updated virtual application. Select the element you want to update, and then click **Edit Locations**. Specify the configurations in the **Shortcut Locations** dialog box, and then click **Next**.

8.  On the **Launch Applications** page, to start the application to ensure that the package is optimized for streaming, select the package and click **Launch**. This step is useful for configuring how the application initially runs on target computers and for accepting any associated license agreements before the package is made available to clients. If there are multiple applications associated with this package, you can select **Launch All** to open all of the applications. To sequence the new version of the virtual application, click **Next**.

9.  To finish and to close the Sequencing Wizard, on the **Sequence Package** page, click **Finish**.

10. After you have successfully updated the virtual application, to save the package, in the App-V Sequencer Console, on the **File** menu, select **Save**. The virtual application can be accessed in the directory specified in step 3.

## Related topics


[Application Virtualization Sequencer](application-virtualization-sequencer.md)

[How to Upgrade a Virtual Application by Using the Command Line](how-to-upgrade-a-virtual-application-by-using-the-command-line.md)

 

 






---
title: How to Upgrade a Sequenced Virtual Application Package
description: How to Upgrade a Sequenced Virtual Application Package
author: eavena
ms.assetid: ffa989f3-6621-4c59-9599-e3c3b3332f67
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Upgrade a Sequenced Virtual Application Package


You can upgrade an existing virtual application to a new version by using the Application Virtualization (App-V) Sequencer. The upgrade process is similar to creating a new virtual application. You must open the existing virtual application for an upgrade, make the necessary updates, and then save the updated virtual application to a new location in the package root directory. You can also use the App-V Sequencer Console to make changes to an existing virtual application without performing an upgrade. However, you cannot make modifications to the virtual application’s file system by using this method because the App-V Sequencer does not actually decode the associated .sft file. For example; you can open an existing virtual application in the App-V Sequencer Console by selecting **Open** on the **File** menu. You can update the **Package Name** and the associated **Comments**, and you can make changes to the virtual file system and virtual registry. You can also create a Windows Installer file.

**Caution**  
You should not reference a previous version of the Windows Installer (.msi) file when you upgrade an existing virtual application package because the previous version of the .sft file will be modified during the upgrade.

 

Use the following procedure to upgrade an existing virtual application.

**To upgrade an existing virtual application**

1.  To start the App-V Sequencer Console, on the computer running the App-V Sequencer, select **Start**/**Programs**/**Microsoft Application Virtualization**/**Microsoft Application Virtualization Sequencer**.

2.  To open the existing virtual application, in the App-V Console, select **File**/**Open for Package Upgrade**. Use the **Open For Package Upgrade** dialog box to locate the associated SPRJ file you want to open for upgrade.

3.  To specify the location of where the updated package will be decoded, browse to the location by using the **Browse For Folder** dialog box. This is the location where the package root directory will be created as specified in the associated SFT file. The directory that you specify must be a different location from where the original version of the virtual application is saved. You can click **Make New Folder** if the new target folder has not been created yet. You should select the root of the Application Virtualization drive to create the folder. When you create the updated version of the package, it will be denoted with a sequential addition to the directory name—for example, “**.1**” will be added to the directory name located on the Q:\\ drive.

    **Important**  
    The directory that you specify must be located in the package root directory on the Q:\\ drive. You can create a new folder, or you can create a subfolder under the directory where the original virtual application is saved. The name assigned to the new folder must not be longer than 8 eight characters.

     

4.  To open the Sequencing Wizard, select **Tools**/**Sequencing Wizard**. On the **Package Information** page, optionally specify the new **Package Name** and add optional comments that will be associated with the updated virtual application. Click **Next**.

5.  On the **Monitor Installation** page, to begin monitoring the new installation, click **Begin Monitoring**. After the virtual environment has finished loading, install the updated version of the application, or apply updates to the existing application. After you have finished updating the virtual application, click **Stop Monitoring**, and then click **Next**.

6.  On the **Additional Files to Map to Virtual File System (VFS)** page, to specify additional files to be added to the Virtual File System (VFS), click **Add**. Browse to the file you want to add, and click **Open**. To clear existing files that have been added, click **Reset**, and then click **Next**.

7.  On the **Configure Applications** page, configure the shortcuts and file type associations that will be associated with the updated virtual application. Select the element you want to update, and then click **Edit Locations**. Specify the configurations in the **Shortcut Locations** dialog box, and then click **Next**.

8.  On the **Launch Applications** page, to start the application to ensure that the package is optimized for streaming, select the package and click **Launch**. This step is useful for configuring how the application initially runs on target computers and for accepting any associated license agreements before the package is made available to clients. If there are multiple applications associated with this package, you can select **Launch All** to open all of the applications. To sequence the new version of the virtual application, click **Next**.

9.  To finish and to close the Sequencing Wizard, on the **Sequence Package** page, click **Finish**.

10. After you have successfully updated the virtual application, to save the package, in the App-V Sequencer Console, on the **File** menu, select **Save**. The virtual application can be accessed in the directory specified in step 3.

## Related topics


[Tasks for the Application Virtualization Sequencer](tasks-for-the-application-virtualization-sequencer.md)

 

 






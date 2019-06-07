---
title: How to Sequence an Application
description: How to Sequence an Application
author: eavena
ms.assetid: bd643dd6-dbf6-4469-bc70-c43ad9c69da9
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Sequence an Application


The Application Virtualization (App-V) Sequencer creates applications that can be run in a virtual environment. The App-V Sequencer monitors the installation and setup process for an application, and it records the information necessary for the application to run in a virtual environment. You can also use the App-V Sequencer to configure which files and configurations are applicable to all users and which files and configurations users can customize. When you sequence an application, you should save the package to a drive that is local to the computer you are sequencing on.

A sequenced application does not interact with the operating system because each application runs in a virtual environment and is isolated from other applications that might be installed or running on the target computer. This isolation dramatically reduces application conflicts and decreases the required amount of application pre-deployment testing.

After you successfully sequence the application, it is available in the App-V Sequencer Console.

**To sequence a new application**

1.  You must create the Application Virtualization drive to sequence a new virtual application. To create the Application Virtualization drive, map the Q:\\ drive to a location that can be used to save files while you are sequencing an application. You must then create individual directories for each application you plan to sequence on the Q:\\ drive. You can create the virtual application target folders before you sequence an application, or you can create it in step 5 of this procedure.

2.  To start the App-V Sequencer Console, on the computer that is running the App-V Sequencer, select **Start** / **Programs** / **Microsoft Application Virtualization** / **Microsoft Application Virtualization Sequencer**. To start the **Sequencing Wizard**, select **File** / **New Package**.

3.  On the **Package Information** page, specify the **Package Name** that will be assigned to the virtual application. The package name is required for generating the associated Windows Installer file. You should also add an optional comment that will be assigned to the package and that provides detailed information about the virtual application. To display the **Advanced Options** page, select **Show Advanced Monitoring Options**. Click **Next**.

    **Note**  
    To display the **Advanced Options** page, you must select **Show Advanced Monitoring Options**. If you do not require the **Advanced Options** page, skip to step 4.



4.  On the **Advanced Options** page, to specify the **Block Size** for the virtual application, select the size you want. The block size determines how the **.sft** file will be divided for streaming the package across the network to target computers. To allow Microsoft Update to update the application as it is being sequenced; select **Allow Microsoft Update to run during monitoring**. If you select this option, Microsoft Updates are allowed to be installed during the monitoring phase and you will need to accept the associated updates for them to be installed. To remap the supported dynamic link library (.dll) files so that they use a contiguous space of RAM, select **Rebase DLLs**. Selecting this option can conserve memory and help improve performance. Many applications do not support this option, but it is useful in environments with limited RAM such as in Remote Desktop Session Host (RD Session Host) Server scenarios. Click **Next**.

5.  On the **Monitor Installation** page, to monitor the installation of an application, click **Begin Monitoring**. After you click **Begin Monitoring**, specify the directory on the Q:\\ drive where the application will be installed. To install the application to a folder that has not been created, click **Make New Folder**. You must install each application that you sequence into a separate directory.

    **Important**  
    The folder name you specify must not be longer than 8 characters.



~~~
Wait for the virtual environment to load, and then install the application so that the App-V Sequencer can monitor the process. When you have completed the installation, click **Stop Monitoring**, and then click **Next**.
~~~

6. On the **Additional Files to Map to Virtual File System (VFS)** page, to specify additional files to be added to the Virtual File System (VFS), click **Add**. Browse to the file you want to add and click **Open**. To clear existing files that have been added, click **Reset**, and then click **Next**.

7. On the **Configure Applications** page, configure the shortcuts and file type associations that will be associated with the virtual application. Select the element that you want to update, and then click **Edit Locations**. Specify the configurations in the Shortcut Locations dialog box. Click **OK**, and then click **Next**.

8. On the **Launch Applications** page, to start the application to ensure that the package is optimized for streaming, select the package and click **Launch**. This step is useful for configuring how the application initially runs on target computers and for accepting any associated license agreements before the package is made available to clients. If there are multiple applications associated with this package, you can select **Launch All** to open all of the applications. To sequence the package, click **Next**.

9. On the **Sequence Package** page, to close the wizard, click **Finish**.

10. After you have successfully created the package, to save the package, in the App-V Sequencer Console, select **File** / **Save** and specify the name and the location where the package will be saved.

## Related topics


[Application Virtualization Sequencer](application-virtualization-sequencer.md)

[How to Sequence a New Application by Using the Command Line](how-to-sequence-a-new-application-by-using-the-command-line.md)










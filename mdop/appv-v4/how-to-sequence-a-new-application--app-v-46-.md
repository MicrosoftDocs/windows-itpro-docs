---
title: How to Sequence a New Application (App-V 4.6)
description: How to Sequence a New Application (App-V 4.6)
author: eavena
ms.assetid: f2c398c6-9200-4be3-b502-e00386fcd150
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Sequence a New Application (App-V 4.6)


Use the following procedure to create a new virtual application by using the Application Virtualization (App-V) Sequencer. You can also use the App-V Sequencer to configure which files and configurations are applicable to all users and which files and configurations users can customize. After you successfully sequence the application, it is available in the App-V Sequencer.

**Important**  
During sequencing, if the computer running the sequencer is running Windows Vista or Windows 7, and a restart is initiated outside of the virtual environment, for example, by clicking **Start** / **Shut Down**, you must click **Cancel** when prompted to close the program that is preventing Windows from shutting down. If you click **Force shut down**, the package creation will fail, and the computer will restart. When you click **Cancel**, the sequencer successfully records the restart while the application is being sequenced.



**To sequence a new application**

1.  To create the App-V drive, configure drive Q as the location that can be used to save files while you are sequencing an application. You must then create individual directories for each application that you plan to sequence on drive Q. You can create the virtual application targeted folders before you sequence an application, or you can create them in step 5 of this procedure.

    **Note**  
    The App-V drive you specify must be accessible on targeted computers. If drive Q is not accessible, you can choose a different drive letter.



2.  To start the App-V Sequencer Console, on the computer that is running the App-V Sequencer, select **Start** / **Programs** / **Microsoft Application Virtualization** / **Microsoft Application Virtualization Sequencer**. To start the Sequencing Wizard, click **Create a Package**.

3.  On the **Package Information** page, specify the **Package Name** that will be assigned to the virtual application. The package name is required for generating the associated Windows Installer file. You should also add an optional comment that will be assigned to the package and that provides detailed information about the virtual application. To display the **Advanced Options** page, select **Show Advanced Monitoring Options**, and then click **Next**; otherwise, proceed to step 5.

4.  On the **Advanced Options** page, to allow Microsoft Update to update the application as it is being sequenced, select **Allow Microsoft Update to run during monitoring**. If you select this option, Microsoft Updates can be installed during the monitoring phase, and you have to accept the associated updates for them to be installed. To remap the supported dynamic link library (.dll) files so that they use a contiguous space of RAM, select **Rebase DLLs**. Selecting this option can conserve memory and help improve performance. Many applications do not support this option, but it is useful in environments with limited RAM such as in Terminal Server scenarios. Click **Next**.

5.  On the **Monitor Installation** page, when you are ready to install the application, click **Begin Monitoring**, and in the **Browse for Folder** dialog box, specify the directory on drive Q where the application will be installed. If you did not configure drive Q and used a different drive letter for the application virtualization drive, select the drive letter you specified in step 1 of this procedure. To install the application to a folder that has not been created on the application virtualization drive, click **Make New Folder**. After you specify the folder, wait while the Sequencer configures the computer for sequencing.

    **Important**  
    You must install each application that you sequence into a separate directory on the virtual application drive, and the associated folder name must not be longer than eight characters.



~~~
After the computer has been configured for sequencing, install the application so that the App-V Sequencer can monitor the installation; when you are finished, click **Stop Monitoring**, and then click **Next**.
~~~

6. On the **Configure Applications** page, if necessary, configure the shortcuts and file type associations that will be associated with the virtual application. To add a new file type association or shortcut, click **Add**, and in the **Add Application** dialog box, specify the new element. To remove an existing shortcut or file type association, click **Remove**. To edit an existing element, select the element you want to modify, and then click **Edit**. Specify the configurations in the **Edit Application** dialog box. Click **Save**, and then click **Next**.

7. On the **Launch Applications** page, to start the application to ensure that the package has been installed correctly and is optimized for streaming, select the package, and then click **Launch**. This step is useful for configuring how the application initially runs on targeted computers and for accepting any associated license agreements before the package becomes available to App-V clients. If multiple applications are associated with this package, you can select **Launch All** to open all of the applications. To sequence the package, click **Next**.

8. After you have successfully created the package, in the App-V Sequencer Console, select **File** / **Save** and specify the name and the virtual drive location where the package will be saved.

   You can optionally create an associated Windows Installer file (**.msi**) to install the virtual application package on targeted computers. To create a Windows Installer file, open the package in the Sequencer and select **Tools** / **Create MSI**. The Windows Installer file will be created and saved in the directory where the virtual application package is saved.

   **Important**  
   After you have successfully created a virtual application package, you cannot run the virtual application package on the computer running the sequencer.



## Related topics


[How to Upgrade a Virtual Application Package (App-V 4.6)](how-to-upgrade-a-virtual-application-package--app-v-46-.md)










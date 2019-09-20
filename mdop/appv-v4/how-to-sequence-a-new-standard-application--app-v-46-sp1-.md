---
title: How to Sequence a New Standard Application (App-V 4.6 SP1)
description: How to Sequence a New Standard Application (App-V 4.6 SP1)
author: dansimp
ms.assetid: c4a2eb33-def8-4535-b93a-3d2de21ce29f
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Sequence a New Standard Application (App-V 4.6 SP1)


Use the following procedure to create a new standard virtual application package by using the Application Virtualization (App-V) Sequencer. This procedure applies to most applications that you sequence. For more information about the types of applications you can sequence, see [How to Determine Which Type of Application to Sequence (App-V 4.6 SP1)](how-to-determine-which-type-of-application-to-sequence---app-v-46-sp1-.md). You must run the sequencer (**SFTSequencer.exe**) using an account that has administrator privileges because of the changes the sequencer makes to the local system. These changes can include writing files to the **C:\\Program Files** directory, making registry changes, starting and stopping services, updating security descriptors for files, and changing permissions.

**Important**  
During sequencing, if the computer running the Sequencer is running Windows Vista or Windows 7 and a restart is initiated outside of the virtual environment, for example, **Start** / **Shut Down**, you must click **Cancel** when prompted to close the program that is preventing Windows Vista or Windows from shutting down. If you click **Force shut down**, the package creation fails. When you click **Cancel**, the Sequencer successfully records the restart while the application is being sequenced.



**Note**  
Running the App-V sequencer in Safe Mode is not supported.



**To sequence a new standard application**

1.  To start the App-V Sequencer, on the computer that is running the App-V Sequencer, click **Start** / **All Programs** / **Microsoft Application Virtualization** / **Microsoft Application Virtualization Sequencer**.

2.  To start the **Create New Package Wizard**, click **Create a New Virtual Application Package**. To create the package, select **Create Package (default)**, and then click **Next**.

3.  On the **Prepare Computer** page, review the issues that could cause the package creation to fail, or for the package to contain unnecessary data. We strongly recommend that you resolve all potential issues before you continue. After you have fixed the conflicts, to update the information that is displayed, click **Refresh**. After you have resolved all potential issues, click **Next**.

    **Important**  
    If you are required to disable virus scanning software, scan the computer running the Sequencer to ensure that no unwanted or malicious files could be added to the package.



4.  On the **Type of Application** page, click **Standard Application (default)** check box, and then click **Next**.

    For more information about the types of applications that you can sequence, see [How to Determine Which Type of Application to Sequence (App-V 4.6 SP1)](how-to-determine-which-type-of-application-to-sequence---app-v-46-sp1-.md).

5.  On the **Select Installer** page, click **Browse** and specify the installation file for the application. If the application does not have an associated installer file and you plan to run all installation steps manually, select the **Perform a Custom Installation** check box, and then Click **Next**.

6.  On the **Package Name** page, specify a name that will be associated with the package. The name helps identify the purpose and version of the application that are added to the package. The package name is also displayed in the App-V management console. The **Primary Virtual Application Directory** displays the Application Virtualization path where the application will be installed on target computers. To edit this location, select **Edit (Advanced)**.

    **Important**  
    Editing the Application Virtualization path is an advanced configuration task. You should fully understand the implications of changing the path. For most applications, the default path is recommended.



~~~
Click **Next**.
~~~

7. On the **Installation** page, when the Sequencer and application installer are ready, install the application so that the Sequencer can monitor the installation process. Perform the installation by using the application’s installation process. If additional installation files must be run as part of the installation, click **Run** to locate and run the additional installation files. When you are finished with the installation, select **I am finished installing**. Click **Next**.

8. On the **Installation** page, wait while the Sequencer configures the virtual application package.

9. On the **Configure Software** page, optionally run the programs contained in the package. This step helps complete any associated license or configuration tasks that are required to run the application before you deploy and run the package on target computers. To run all the programs at one time, select at least one program, and then click **Run All**. To run specific programs, select the program or programs you want to run, and then click **Run Selected**. Complete the required configuration tasks and then close the applications. It can take several minutes for all programs to run. Click **Next**.

10. On the **Installation Report** page, you can review information about the virtual application package you just sequenced. For a more detailed explanation about the information displayed in **Additional Information**, double-click the event. After you have reviewed the information, click **Next**.

11. On the **Customize** page, if you are finished installing and configuring the virtual application, select **Stop now** and skip to step 15 of this procedure. If you want to customize any of the items in the following list, select **Customize**.

    -   Edit the file type associations and the icons associated with an application.

    -   Prepare the virtual package for streaming. Streaming improves the experience when the virtual application package is run on target computers.

    -   Specify the operating systems that can run this package.

    Click **Next**.

12. On the **Edit Shortcuts** page, you can optionally configure the file type associations (FTA) and shortcut locations that will be associated with the various applications in the package. To create a new FTA, in the left pane, select and expand the application you want to customize, and then click **Add**. In the **Add File Type Association** dialog box, provide the necessary information for the new FTA. To review the shortcut information associated with an application, under the application, select **Shortcuts**, and in the **Location** pane, you can edit the icon file information. To edit an existing FTA, click **Edit**. To remove an FTA, select the FTA, and then click **Remove**. Click **Next**.

13. On the **Streaming** page, run each program so that it can be optimized and run more efficiently on target computers. It can take several minutes for all the applications to run. After all applications have run, close each of the applications, and then click **Next**.

   **Note**  
   If you want to stop an application from loading during this step, in the **Application Launch** dialog box, click **Stop**, and select one of the check boxes, **Stop all applications** or **Stop this application only**, depending on what you want.



14. On the **Target OS** page, specify the operating systems that can run this package. To enable all supported operating systems in your environment to run this package, select **Allow this package to run on any operating system**. To configure this package to run only on specific operating systems, select **Allow this package to run only on the following operating systems** and specify the operating systems that can run this package. Click **Next**.

   **Important**  
   The operating systems specified during this step reflect the operating systems on target computers that are enabled to run the package. You must ensure that the operating systems specified are supported by the application you are sequencing.



15. On the **Create Package** page, to modify the package without saving it, select **Continue to modify package without saving using the package editor**. Selecting this option opens the package in the Sequencer console so that you can modify the package before it is saved. Click **Next**.

   To save the package immediately, select the default **Save the package now**. Add optional **Comments** that will be associated with the package. Comments are useful for identifying version and other information about the package. The default **Save Location** is also displayed. To change the default location, click **Browse** and specify the new location. The uncompressed package size is displayed. If the package size exceeds 4 GB (uncompressed) and you plan to stream the package to target computers, you must select **Compress Package**. Click **Create**.

16. On the **Completion** page, after you have reviewed the information displayed in the **Virtual Application Package Report** pane, click **Close**. The information displayed in the **Virtual Application Package Report** pane is also available in the directory specified in step 15 of this procedure, in a file named **Report.xml**.

    The package is now available in the Sequencer. To edit the package properties, click **Edit \[Package Name\]**. For more information about modifying a package, see [How to Modify an Existing Virtual Application Package (App-V 4.6 SP1)](how-to-modify-an-existing-virtual-application-package--app-v-46-sp1-.md)

    **Important**  
    After you have successfully created a virtual application package, you cannot run the virtual application package on the computer that is running the Sequencer.



## Related topics


[Tasks for the Application Virtualization Sequencer (App-V 4.6 SP1)](tasks-for-the-application-virtualization-sequencer--app-v-46-sp1-.md)

[How to Determine Which Type of Application to Sequence (App-V 4.6 SP1)](how-to-determine-which-type-of-application-to-sequence---app-v-46-sp1-.md)










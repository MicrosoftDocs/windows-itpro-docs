---
title: How to Modify an Existing Virtual Application Package (App-V 4.6 SP1)
description: How to Modify an Existing Virtual Application Package (App-V 4.6 SP1)
author: dansimp
ms.assetid: f43a9927-4325-4b2d-829f-3068e4e84349
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Modify an Existing Virtual Application Package (App-V 4.6 SP1)


Use the following procedures to modify an existing virtual application package. You can use these procedures to:

-   Update an application that is part of an existing virtual application package. To perform this task, use the procedure **"To update an application in an existing application package"** in this document.

-   Modify the properties associated with an existing virtual application package. To perform this task, use the procedure **"To modify the properties associated with an existing virtual application package"** in this document.

-   Add a new application to an existing virtual application package. To perform this task, use the procedure **"To add a new application to an existing virtual application package"** in this document.

You must have the App-V Sequencer installed to modify a virtual application package. For more information about installing the App-V Sequencer, see [How to Install the Sequencer (App-V 4.6 SP1)](how-to-install-the-sequencer---app-v-46-sp1-.md).

**To update an application in an existing virtual application package**

1.  To start the App-V Sequencer, on the computer that is running the App-V Sequencer, click **Start** / **All Programs** / **Microsoft Application Virtualization** / **Microsoft Application Virtualization Sequencer**.

2.  In the App-V Sequencer, click **Modify an Existing Virtual Application Package**, and then click **Next**.

3.  On the **Select Task** page, click **Update Application in Existing Package**, and then click **Next**.

4.  On the **Select Package** page, click **Browse** to locate the virtual application package that contains the application that you want to update, and then click **Next**.

5.  On the **Prepare Computer** page, review the issues that could cause the application update to fail, or for the application update to contain unnecessary data. We strongly recommend that you resolve all potential issues before you continue. After you have fixed the conflicts, to update the information that is displayed, click **Refresh**. After you have resolved all potential issues, click **Next**.

    **Important**  
    If you are required to disable virus scanning software, scan the computer running the sequencer to ensure that no unwanted or malicious files are added to the package.

     

6.  On the **Select Installer** page, click **Browse** and specify the update installation file for the application. If the update does not have an associated installer file and you plan to run all installation steps manually, select the **Select this option to perform a custom installation** check box, and then click **Next**.

7.  On the **Installation** page, when the sequencer and application installer are ready, install the application update so the sequencer can monitor the installation process. If additional installation files must be run as part of the installation, click **Run** and locate and run the additional installation files. When you are finished with the installation, select **I am finished installing**. Click **Next**.

    **Note**  
    The sequencer monitors all changes and installations to the computer running the sequencer, including the changes and installations that are performed outside of the sequencing wizard.

     

8.  On the **Installation Report** page, you can review information about the virtual application you just updated. For a more detailed explanation about the information displayed in **Additional Information**, double-click the event. After you have reviewed the information, click **Next**.

9.  On the **Streaming** page, run each program so that it can be optimized and run more efficiently on target computers. It can take several minutes for all the applications to run. After all applications have run, close each of the applications, and then click **Next**.

    **Note**  
    If you want to stop an application from loading during this step, in the **Application Launch** dialog box, click **Stop**, and then click one of the following options, **Stop all applications** or **Stop this application only**, depending on what you want.

     

10. On the **Create Package** page, to modify the package without saving it, select the **Continue to modify package without saving using the package editor** check box. When you select this option, the package in the Sequencer console opens so that you can modify the package before it is saved. Click **Next**.

    To save the package immediately, select the default **Save the package now**. Add optional **Comments** that will be associated with the package. Comments are useful for identifying version and other information about the package. The default **Save Location** is also displayed. To change the default location, click **Browse** and specify the new location. The uncompressed package size is displayed. If the package size exceeds 4 GB (uncompressed) and you plan to stream the package to target computers, you must select **Compress Package**, and then click **Create**.

11. On the **Completion** page, click **Close** to close the wizard. The package is now available in the sequencer.

**To modify the properties associated with an existing virtual application package**

1.  To start the App-V Sequencer, on the computer that is running the App-V Sequencer, click **Start** / **All Programs** / **Microsoft Application Virtualization** / **Microsoft Application Virtualization Sequencer**.

2.  In the App-V Sequencer, click **Modify an Existing Virtual Application Package**, and then click **Next**.

3.  On the **Select Task** page, click **Edit Package**, and then click **Next**.

4.  On the **Select Package** page, click **Browse** to locate the virtual application package that contains the application properties that you want to modify, and then click **Edit**.

5.  In the Sequencer console, you can perform any of the following tasks:

    -   View package properties.

    -   View package change history.

    -   View associated package files.

    -   Edit registry settings.

    -   Review additional package settings (except operating system file properties).

    -   Create an associated Windows Installer (MSI).

    -   Modify OSD file.

    -   Compress and uncompress package.

    -   Add file type associations.

    -   Set virtualized registry key state (override or merge).

    -   Set virtualized folder state.

    -   Edit virtual file system mappings.

6.  When you have finished modifying the package properties, click **File** / **Save** to save the package,.

**To add a new application to an existing virtual application package**

1.  To start the App-V Sequencer, on the computer that is running the App-V Sequencer, click **Start** / **All Programs** / **Microsoft Application Virtualization** / **Microsoft Application Virtualization Sequencer**.

2.  In the App-V Sequencer, click **Modify an Existing Virtual Application Package**, and then click **Next**.

3.  On the **Select Task** page, click **Add New Application**, and then click **Next**.

4.  On the **Select Package** page, click **Browse** to locate the virtual application package that you want to add the application to, and then click **Next**.

5.  On the **Prepare Computer** page, review the issues that could cause the package creation to fail, or for the update to contain unnecessary data. We strongly recommend that you resolve all potential issues before you continue. After you have fixed the conflicts, to update the information that is displayed, click **Refresh**. After you have resolved all potential issues, click **Next**.

    **Important**  
    If you are required to disable virus scanning software, scan the computer running the sequencer to ensure that no unwanted or malicious files can be added to the package.

     

6.  On the **Select Installer** page, click **Browse** and specify the installation file for the application. If the application does not have an associated installer file and you plan to run all installation steps manually, select the **Select this option to perform a custom installation** check box, and then click **Next**.

7.  On the **Installation** page, when the sequencer and application installer are ready, install the application so the sequencer can monitor the installation process. If additional installation files must be run as part of the installation, click **Run**, and locate and run the additional installation files. When you are finished with the installation, select **I am finished installing**. Click **Next**. In the **Browse for Folder** dialog box, specify the primary directory where the application will be installed. This should be a new location so that you do not overwrite the existing version of the virtual application package.

    **Note**  
    All changes and installations to the computer running the sequencer are monitored by the sequencer, including the changes and installations that are performed outside of the sequencing wizard.

     

8.  On the **Configure Software** page, optionally run the programs contained in the package. This step helps complete any associated license or configuration tasks that are required to run the application before you deploy and run the package on target computers. To run all the programs at the same time, select at least one program, and then click **Run All**. To run specific programs, select the program or programs you want to run, and then click **Run Selected**. Complete the required configuration tasks and then close the applications. It can take several minutes for all programs to run. Click **Next**.

9.  On the **Installation Report** page, you can review information about the virtual application you just updated. For a more detailed explanation about the information displayed in **Additional Information**, double-click the event. After you have reviewed the information, click **Next**.

10. On the **Customize** page, if you are finished installing and configuring the virtual application, select **Stop now** and skip to step 14 of this procedure. If you want to customize any of the items in the following list, click **Customize**.

    -   Edit the file type associations associated with an application.

    -   Prepare the virtual package for streaming. Streaming improves the experience when the virtual application package is run on target computers.

    Click **Next**.

11. On the **Edit Shortcuts** page, you can optionally configure the file type associations (FTA) that will be associated with the various applications in the package. To create a new FTA, select and expand the application that you want to customize in the left pane, and then click **Add**. In the **Add File Type Association** dialog box, provide the necessary information for the new FTA. To review the shortcut information associated with an application, under the application, select the **Shortcuts** check box, and in the **Location** pane, you can review the icon file information. To edit an existing FTA, click **Edit**. To remove an FTA, select the FTA, and then click **Remove**. Click **Next**.

12. On the **Streaming** page, run each program so that it can be optimized and run more efficiently on target computers. It can take several minutes for all the applications to run. After all applications have run, close each of the applications, and then click **Next**.

    **Note**  
    If you want to stop an application from loading during this step, in the **Application Launch** dialog box, click **Stop** and select either the **Stop all applications** or the **Stop this application only** check box, depending on what you want.

     

13. On the **Create Package** page, select the **Continue to modify package without saving using the package editor** check box, to modify the package without saving it. When you select this option, the package in the sequencer console opens so that you can modify the package before it is saved. Click **Next**.

    Select the default **Save the package now**, to save the package immediately. Add optional **Comments** that will be associated with the package. Comments are useful for identifying version and other information about the package. The default **Save Location** is also displayed. To change the default location, click **Browse** and specify the new location. The uncompressed package size is displayed. If the package size exceeds 4 GB (uncompressed) and you plan to stream the package to target computers, you must select **Compress Package**. Click **Create**.

14. On the **Completion** page, click **Close**. The package is now available in the sequencer.

## Related topics


[Tasks for the Application Virtualization Sequencer (App-V 4.6 SP1)](tasks-for-the-application-virtualization-sequencer--app-v-46-sp1-.md)

 

 






---
title: How to Sequence a New Middleware Application (App-V 4.6 SP1)
description: How to Sequence a New Middleware Application (App-V 4.6 SP1)
author: eavena
ms.assetid: 304045c2-5e5e-4c91-b59e-a91fdf2500fb
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# How to Sequence a New Middleware Application (App-V 4.6 SP1)


Use the following procedure to create a new middleware virtual application package using the Application Virtualization (App-V) Sequencer. A middleware application is software that connects software modules or applications. For more information about the types of applications that you can sequence, see [How to Determine Which Type of Application to Sequence (App-V 4.6 SP1)](how-to-determine-which-type-of-application-to-sequence---app-v-46-sp1-.md).

Use this type of package by using Dynamic Suite Composition in App-V. Dynamic Suite Composition enables you to define a virtual application package as being dependent on another virtual application package. The dependency enables the application to interact with the middleware or plug-in in the virtual environment, where typically this interaction is prevented. This is useful because a secondary application package can be used with several other primary applications, which enables each primary application to reference the same secondary package. For more information about how to use Dynamic Suite Composition, see [How To Use Dynamic Suite Composition](https://go.microsoft.com/fwlink/?LinkID=203804&clcid=0x409) in the Microsoft Technical Library (https://go.microsoft.com/fwlink/?LinkID=203804&clcid=0x409).

**Important**  
During sequencing, if the computer running the App-V Sequencer is running Windows Vista or Windows 7 and a restart is initiated outside of the virtual environment, for example, **Start** / **Shut Down**, you must click **Cancel** when prompted to close the program that is preventing Windows from shutting down. If you click **Force shut down**, the package creation fails. When you click **Cancel**, App-V Sequencer successfully records the restart while the application is being sequenced.

 

**To sequence a new middleware application**

1.  To start App-V Sequencer, on the computer that is running App-V Sequencer, click **Start** / **All Programs** / **Microsoft Application Virtualization** / **Microsoft Application Virtualization Sequencer**.

2.  To start the **Create New Package Wizard**, click **Create a New Virtual Application Package**. To create the package, select **Create Package (default)**, and then click **Next**.

3.  On the **Prepare Computer** page, review the issues that might cause the package creation to fail, or for the package to contain unnecessary data. We strongly recommend that you resolve all potential issues before you continue. After you have fixed the conflicts, to update the information displayed, click **Refresh**. After you have resolved all potential issues, click **Next**.

    **Important**  
    If you are required to disable virus scanning software, you must scan the computer running the App-VSequencer to ensure that no unwanted or malicious files can be added to the package.

     

4.  On the **Type of Application** page, select **Middleware**, and then click **Next**.

    For more information about the types of applications that you can sequence, see [How to Determine Which Type of Application to Sequence (App-V 4.6 SP1)](how-to-determine-which-type-of-application-to-sequence---app-v-46-sp1-.md).

5.  On the **Select Installer** page, click **Browse** and specify the installation file for the application. If the application does not have an associated installer file and you plan to run all installation steps manually, select the **Select this option to perform a custom installation** check box, and then click **Next**.

6.  On the **Package Name** page, specify a name that will be associated with the package. The name helps identify the purpose and version of the application that will be added to the package. The package name is also displayed in the App-V Management Console. The **Installation Location** displays the application virtualization path where the application will be installed. To edit this location, select **Edit (Advanced)**.

    **Important**  
    Editing the Application Virtualization path is an advanced configuration task. You should fully understand the implications of changing the path. For most applications, we recommend the default path.

     

    Click **Next**.

7.  On the **Installation** page, when the Sequencer and middleware application installer are ready, install the application so that the Sequencer can monitor the installation process. Perform the installation by using the application’s installation process. If additional installation files must be run as part of the installation, click **Run**, to locate and run the additional installation files. When you are finished with the installation, select the **I am finished installing** check box, and then click **Next**.

8.  On the **Installation** page, wait while the Sequencer configures the virtual application package.

9.  On the **Installation Report** page, you can review information about the virtual application package that you just sequenced. For a more detailed explanation about the information displayed in **Additional Information**, double-click the event. After you have reviewed the information, click **Next**.

10. On the **Target OS** page, specify the operating systems that can run this package. To enable all supported operating systems in your environment to run this package, select the **Allow this package to run on any operating system** check box. To configure this package to run only on specific operating systems, select the **Allow this package to run only on the following operating systems** check box and select the operating systems that can run this package. Click **Next**.

11. On the **Create Package** page, to modify the package without saving it, select the **Continue to modify package without saving using the package editor** check box. Selecting this option opens the package in the Sequencer console so that you can modify the package before it is saved. Click **Next**.

    To save the package immediately, select the default, the **Save the package now** check box. Add optional comments in the **Comments** box that will be associated with the package. Comments are useful for identifying version and other information about the package. The default **Save Location** is also displayed. To change the default location, click **Browse**, and then specify the new location. The uncompressed package size is displayed. If the package size exceeds 4 GB (uncompressed) and you plan to stream the package to target computers, you must select **Compress Package**. Click **Create**.

12. On the **Completion** page, after you have reviewed the information displayed in the **Virtual Application Package Report** pane, click **Close**. The information displayed in the **Virtual Application Package Report** pane is also available in the directory specified in step 11 of this procedure, in a file named **Report.xml**.

    The package is now available in the Sequencer. To edit the package properties, click **Edit \[Package Name\]**. For more information about modifying a package, see [How to Modify an Existing Virtual Application Package (App-V 4.6 SP1)](how-to-modify-an-existing-virtual-application-package--app-v-46-sp1-.md)

    **Important**  
    After you have successfully created a virtual application package, you cannot run the virtual application package on the computer that is running the Sequencer.

     

## Related topics


[Tasks for the Application Virtualization Sequencer (App-V 4.6 SP1)](tasks-for-the-application-virtualization-sequencer--app-v-46-sp1-.md)

[How to Determine Which Type of Application to Sequence (App-V 4.6 SP1)](how-to-determine-which-type-of-application-to-sequence---app-v-46-sp1-.md)

 

 






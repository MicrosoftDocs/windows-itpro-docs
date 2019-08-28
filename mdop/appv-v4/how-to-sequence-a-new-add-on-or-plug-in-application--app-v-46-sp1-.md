---
title: How to Sequence a New Add-on or Plug-in Application (App-V 4.6 SP1)
description: How to Sequence a New Add-on or Plug-in Application (App-V 4.6 SP1)
author: eavena
ms.assetid: 2c018215-66e5-4301-8481-159891a6b35b
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Sequence a New Add-on or Plug-in Application (App-V 4.6 SP1)


Use the following procedure to create a new add-on or plug-in virtual application package by using the Application Virtualization (App-V) Sequencer. An add-on or plug-in application is an application that extends the functionality of an application, for example, a plug-in for Microsoft Excel. For more information about the types of applications you can sequence, see [How to Determine Which Type of Application to Sequence (App-V 4.6 SP1)](how-to-determine-which-type-of-application-to-sequence---app-v-46-sp1-.md).

**Important**  
Before performing the following procedure, install the parent application locally on the computer that is running the sequencer. For example, if you are sequencing a plug-in for Microsoft Excel, install Microsoft Excel locally on the computer that is running the sequencer. Also install the parent application in the same directory where the application is installed on target computers. If the plug-in or add-on is going to be used with an existing virtual application package, install the application on the same virtual application drive that was used when you created the parent virtual application package.



You can also use an existing virtual application package as the parent application. To use an existing virtual application package, use the following procedure before sequencing the new add-on or plug-in.

1.  To start the App-V Sequencer, on the computer that is running the App-V Sequencer, click **Start** / **All Programs** / **Microsoft Application Virtualization** / **Microsoft Application Virtualization Sequencer**.

2.  To expand an existing package to the computer running the sequencer, click **Tools** / **Expand Package to Local System**.

3.  Browse to and select the package (**.sprj** file) that you want to expand, and then click **Open**. Continue with the following procedure.

**To sequence a new add-on or plug-in application**

1.  To start the App-V Sequencer, on the computer that is running the App-V Sequencer, click **Start** / **All Programs** / **Microsoft Application Virtualization** / **Microsoft Application Virtualization Sequencer**.

2.  To start the **Create New Package Wizard**, click **Create a New Virtual Application Package**. To create the package, select **Create Package (default)**, and click then **Next**.

3.  On the **Prepare Computer** page, review the issues that might cause the package creation to fail, or for the package to contain unnecessary data. We strongly recommend that you resolve all potential issues before you continue. After you have fixed the conflicts, to update the information displayed, click **Refresh**. After you have resolved all potential issues, click **Next**.

    **Important**  
    If you are required to disable virus scanning software, scan the computer running the sequencer to ensure that no unwanted or malicious files could be added to the package.



4.  On the **Type of Application** page, select **Add-on or Plug-in**, and then click **Next**.

    For more information about the types of applications that you can sequence, see [How to Determine Which Type of Application to Sequence (App-V 4.6 SP1)](how-to-determine-which-type-of-application-to-sequence---app-v-46-sp1-.md).

5.  On the **Select Installer** page, click **Browse** and specify the installation file for the add-on or plug-in. If the application does not have an associated installer file and you plan to run all installation steps manually, select the **Select this option to perform a custom installation** check box, and then click **Next**.

6.  On the **Select Primary** page, click **Browse** and specify the parent application.

    **Important**  
    If the parent application that the add-on or plug-in you are installing is going to support has not been installed locally, stop here and install the application on the computer running the sequencer. For example, the **Excel.exe** program file must be installed locally for a Microsoft Excel plug-in.



~~~
Click **Next**.
~~~

7. On the **Package Name** page, specify a name that will be associated with the package. Use a name that helps identify the purpose and version of the application that will be added to the package. The package name will also be displayed in the App-V management console. The **Installation Location** displays the Application Virtualization path where the application will be installed. To edit this location, select **Edit (Advanced)**.

   **Important**  
   Editing the Application Virtualization path is an advanced configuration task. You should fully understand the implications of changing the path. For most applications, we recommend the default path.



~~~
Click **Next**.
~~~

8. On the **Installation** page, when the sequencer and application installer are ready, install the plug-in or add-in application so the sequencer can monitor the installation process. Perform the installation by using the application’s installation process. If additional installation files must be run as part of the installation, click **Run** and locate and run the additional installation files. When you are finished with the installation, select **I am finished installing**, and then click **Next**.

9. On the **Installation Report** page, you can review information about the virtual application package that you just sequenced. For a more detailed explanation about the information displayed in **Additional Information**, double-click the event. After you have reviewed the information, click **Next**.

10. On the **Customize** page, if you are finished installing and configuring the virtual application, select **Stop now** and skip to step 14 of this procedure. If you want to customize any of the items in the following list, select **Customize**.

    -   Edit the file type associations associated with an application.

    -   Prepare the virtual package for streaming. Streaming improves the experience when the virtual application package is run on target computers.

    -   Specify the operating systems that can run this package.

    Click **Next**.

11. On the **Edit Shortcuts** page, you can optionally configure the file type associations (FTA) that will be associated with the various applications in the package. To create a new FTA, in the left pane, select and expand the application that you want to customize, and then click **Add**. In the **Add File Type Association** dialog box, provide the necessary information for the new FTA. Under the application, select **Shortcuts** to review the shortcut information associated with an application. In the **Location** pane, you can review the icon file information. To edit an existing FTA, click **Edit**. To remove an FTA, select the FTA, and then click **Remove**. Click **Next**.

12. On the **Streaming** page, run each program so that it can be optimized and run more efficiently on target computers. It can take several minutes for all the applications to run. After all applications have run, close each of the applications, and then click **Next**.

   **Note**  
   If you want to stop an application from loading during this step, in the **Application Launch** dialog box, click **Stop** and select one of the check boxes, **Stop all applications** or **Stop this application only**.



13. On the **Target OS** page, specify the operating systems that can run this package. To enable all supported operating systems in your environment to run this package, select the **Allow this package to run on any operating system** check box. To configure this package to run only on specific operating systems, select the **Allow this package to run only on the following operating systems** check box, and then select the operating systems that can run this package. Click **Next**.

14. On the **Create Package** page, to modify the package without saving it, select **Continue to modify package without saving using the package editor** check box. Selecting this option opens the package in the Sequencer console so that you can modify the package before it is saved. Click **Next**.

   To save the package immediately, select the default **Save the package now**. Optionally, select **Comments** to add comments that will be associated with the package. Comments are useful for identifying version and other information about the package. The default **Save Location** is also displayed. To change the default location, click **Browse** and specify the new location. The uncompressed package size is displayed. If the package size exceeds 4 GB (uncompressed) and you plan to stream the package to target computers, you must select **Compress Package**. Click **Create**.

15. On the **Completion** page, after you have reviewed the information that is displayed in the **Successful Virtual Application Package Report** pane, click **Close**. The information displayed in the **Successful Virtual Application Package Report** pane is also available in the directory specified in step 14 of this procedure, in a file named **Reports.xml**.

   The package is now available in the sequencer. Click **Edit \[Package Name\]** to edit the package properties. For more information about modifying a package, see [How to Modify an Existing Virtual Application Package (App-V 4.6 SP1)](how-to-modify-an-existing-virtual-application-package--app-v-46-sp1-.md).

   **Important**  
   After you have successfully created a virtual application package, you cannot run the virtual application package on the computer that is running the sequencer.



## Related topics


[Tasks for the Application Virtualization Sequencer (App-V 4.6 SP1)](tasks-for-the-application-virtualization-sequencer--app-v-46-sp1-.md)

[How to Determine Which Type of Application to Sequence (App-V 4.6 SP1)](how-to-determine-which-type-of-application-to-sequence---app-v-46-sp1-.md)










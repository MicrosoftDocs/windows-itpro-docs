---
title: Manually sequence a new app using the Microsoft Application Virtualization Sequencer (App-V Sequencer) (Windows 10)
description: How to manually sequence a new app using the App-V Sequencer
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/16/2018
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.topic: article
---
# Manually sequence a new app using the Microsoft Application Virtualization Sequencer (App-V Sequencer)

>Applies to: Windows 10, version 1607 and later

In Windows 10, version 1607, the App-V Sequencer is included with the Windows ADK. For more info on how to install the App-V Sequencer, see [Install the App-V Sequencer](appv-install-the-sequencer.md).

## Before you start sequencing

1. Determine the type of virtualized application package you want to create:

    | Application type | Description |
    |---|---|
    | Standard | Creates a package that contains an application or a suite of applications. This is the preferred option for most application types. |
    | Add-on or plug-in | Creates a package that extends the functionality of a standard application, for example, a plug-in for Microsoft Excel. Additionally, you can use plug-ins for natively installed applications, or for another package that is linked by using connection groups. |
    | Middleware | Creates a package that is required by a standard application, for example, Java. Middleware packages are used for linking to other packages through connection groups. |

2. Copy all required installation files to the computer that is running the sequencer.

3. Make a backup image of your virtual environment before sequencing an application, and then revert to that image each time after you finish sequencing an application.

4. Review the following items:

    - If an application installer changes the security access to a new or existing file or directory, those changes are not captured in the package.
    - If short paths have been disabled for the virtualized package’s target volume, you must also sequence the package to a volume that was created and still has short-paths disabled. It cannot be the system volume.

>[!NOTE]
>The App-V Sequencer cannot sequence applications with filenames matching "CO_<_x_>" where *x* is any numeral. Error 0x8007139F will be generated.

## Sequence a new standard application

1. On the computer that runs the sequencer, select **All Programs**, and then select **Microsoft Application Virtualization**, and then select **Microsoft Application Virtualization Sequencer**.

2. In the sequencer, select **Create a New Virtual Application Package**. Select **Create Package (default)**, and then select **Next**.

3. On the **Prepare Computer** page, review the issues that could cause the package creation to fail or could cause the package to contain unnecessary data. You should resolve all potential issues before you continue. After making any corrections, select **Refresh** to display the updated information. After you have resolved all potential issues, select **Next**.

    >[!IMPORTANT]
    >If you are required to disable virus scanning software, you should first scan the computer that runs the sequencer in order to ensure that no unwanted or malicious files could be added to the package.

4. On the **Type of Application** page, select the **Standard Application (default)** check box, and then select **Next**.

5. On the **Select Installer** page, select **Browse** and specify the installation file for the application.

   > [!NOTE]
    >If the specified application installer modifies security access to a file or directory, existing or new, the associated changes will not be captured into the package.

    If the application does not have an associated installer file and you plan to run all installation steps manually, select the **Perform a Custom Installation** check box, and then select **Next**.

6. On the **Package Name** page, specify a name for the package. Use a name that helps identify the purpose and version of the application that will be added to the package. The package name is displayed in the App-V Management Console. Once you're done, select **Next**.

7. On the **Installation** page, when the sequencer and application installer are ready, you can install the application so that the sequencer can monitor the installation process.

    >[!IMPORTANT]
    >You should always install applications to a secure location and make sure no other users are logged on to the computer running the sequencer during monitoring.

    Use the application's installation process to perform the installation. If additional installation files must be run as part of the installation, select **Run** to locate and run the additional installation files. When you are finished with the installation, select **I am finished installing**, then select **Next**.

8. On the **Installation** page, wait while the sequencer configures the virtualized application package.

9. On the **Configure Software** page, optionally run the programs contained in the package. This step allows you to complete any necessary license or configuration tasks before you deploy and run the package on target computers. To run all the programs at one time, select at least one program, and then select **Run All**. To run specific programs, select the program or programs, and then select **Run Selected**. Complete the required configuration tasks and then close the applications. You may need to wait several minutes for all programs to run.

   > [!NOTE]
    >To run first-use tasks for any application that is not available in the list, open the application. The associated information will be captured during this step.

    Select **Next**.

10. On the **Installation Report** page, you can review information about the virtualized application package you have just sequenced. In **Additional Information**, double-click an event to obtain more detailed information. To proceed, select **Next**.

11. The **Customize** page is displayed. If you've finished installing and configuring the virtual application, select **Stop now** and skip to step 14 of this procedure. To perform either of the following customizations, select **Customize**.

    - Prepare the virtual package for streaming. Streaming improves the experience when the virtual application package is run on target computers.
    - Specify the operating systems that can run this package.

    Once you're ready, select **Next**.

12. On the **Streaming** page, run each program so that it can be optimized and run more efficiently on target computers. It can take several minutes for all the applications to run. After all applications have run, close each of the applications, and then select **Next**.

   > [!NOTE]
    >If you do not open any applications during this step, the default streaming method is on-demand streaming delivery. This means applications will be downloaded bit by bit until it can be opened. After that, depending on how the background loading is configured, it will load the rest of the application.

13. On the **Target OS** page, specify the operating systems that can run this package. To allow all supported operating systems in your environment to run this package, select **Allow this package to run on any operating system**. To configure this package to run only on specific operating systems, select **Allow this package to run only on the following operating systems** and select the operating systems that can run this package. After that, select **Next**.

    >[!IMPORTANT]
    >Make sure that the operating systems you specify here are supported by the application you are sequencing.

14. The **Create Package** page is displayed. To modify the package without saving it, select **Continue to modify package without saving using the package editor**. This option opens the package in the sequencer console so that you can modify the package before saving it. Select **Next**.

    To save the package immediately, select **Save the package now** (default). Add optional **Comments** to be associated with the package. Comments are useful for identifying the program version and other information about the package.

    >[!IMPORTANT]
    >The system does not support non-printable characters in **Comments** and **Descriptions**.

    The default **Save Location** is also displayed on this page. To change the default location, select **Browse** and specify the new location. After that, select **Create**.

15. The **Completion** page is displayed. Review the information in the **Virtual Application Package Report** pane as needed, then select **Close**. This information is also available in the **Report.xml** file located in the directory where the package was created.

    Your package should now be available in the sequencer.

    >[!IMPORTANT]
    >After you have successfully created a virtual application package, you can't run the virtual application package on the computer that is running the sequencer.

## Sequence an add-on or plug-in application

>[!NOTE]
>Before performing the following procedure, install the parent application locally on the computer that is running the sequencer. Or if you have the parent application virtualized, you can follow the steps in the add-on or plug-in workflow to unpack the parent application on the computer.
>For example, if you are sequencing a plug-in for Microsoft Excel, install Microsoft Excel locally on the computer that's running the sequencer. You should also install the parent application in the same directory where the application is installed on target computers. If the plug-in or add-on is going to be used with an existing virtual application package, install the application on the same virtual application drive that was used when you created the parent virtual application package.

1. On the computer that runs the sequencer, first, select **All Programs**, then select **Microsoft Application Virtualization**, and then select **Microsoft Application Virtualization Sequencer**.

2. In the sequencer, select **Create a New Virtual Application Package**, select **Create Package (default)**, and then select **Next**.

3. On the **Prepare Computer** page, review the issues that might cause the package creation to fail or could cause the package to contain unnecessary data. You should resolve all potential issues before you continue. After making any corrections, select **Refresh** to display the updated information. After you have resolved all potential issues, select **Next**.

    >[!IMPORTANT]
    >If you are required to disable virus scanning software, you should first scan the computer that runs the sequencer in order to ensure that no unwanted or malicious files could be added to the package.

4. On the **Type of Application** page, select **Add-on or Plug-in**, and then select **Next**.

5. On the **Select Installer** page, select **Browse** and specify the installation file for the add-on or plug-in. If the add-on or plug-in does not have an associated installer file and you plan to run all installation steps manually, select the **Select this option to perform a custom installation** check box, then select **Next**.

6. On the **Install Primary** page, ensure that the primary application is installed on the computer that runs the sequencer. Alternatively, you can expand an existing package that has been saved locally on the computer that runs the sequencer. To do this, select **Expand Package**, and then select the package. After you have expanded or installed the parent program, select **I have installed the primary parent program**.

7. Select **Next**.

8. On the **Package Name** page, type a name that will be associated with the package. Use a name that helps identify the purpose and version of the application that will be added to the package. The package name will be displayed in the App-V Management Console.

9. Select **Next**.

10. On the **Installation** page, when the sequencer and application installer are ready you can proceed to install the plug-in or add-in application so the sequencer can monitor the installation process. Use the application's installation process to perform the installation. If additional installation files must be run as part of the installation, select **Run** and locate and run the additional installation files. When you are finished with the installation, select **I am finished installing**, and then select **Next**.

11. On the **Installation Report** page, you can review information about the virtual application package that you just sequenced. For a more detailed explanation about the information displayed in **Additional Information**, double-click the event. After you have reviewed the information, select **Next**.

12. The **Customize** page is displayed. If you are finished installing and configuring the virtual application, select **Stop now** and skip to step 12 of this procedure. To perform either of the following customizations, select **Customize**.

    - Optimize how the package will run across a slow or unreliable network.
    - Specify the operating systems that can run this package.

    When you're finished, select **Next**.

13. On the **Streaming** page, run each program so that it can be optimized and run more efficiently on target computers. Streaming improves the experience when the virtual application package is run on target computers on high-latency networks. It can take several minutes for all applications to run. After all applications have run, close each application. You can also configure the package to be required to be fully downloaded before opening by selecting the **Force applications to be downloaded** check-box. Select **Next**.

   > [!NOTE]
    >If necessary, you can stop an application from loading during this step. In the **Application Launch** dialog box, select **Stop** and select one of the check boxes: **Stop all applications** or **Stop this application only**.

14. On the **Target OS** page, specify the operating systems that can run this package. To allow all supported operating systems in your environment to run this package, select the **Allow this package to run on any operating system** check box. To configure this package to run only on specific operating systems, select the **Allow this package to run only on the following operating systems** check box, and then select the operating systems that can run this package. Select **Next**.

15. The **Create Package** page is displayed. To modify the package without saving it, select **Continue to modify package without saving using the package editor** check box. This option opens the package in the sequencer console so that you can modify the package before it is saved. Select **Next**.

    To save the package immediately, select **Save the package now**. Optionally, add a **Description** for the package. Descriptions are useful for identifying the version and other important information about the package.

    >[!IMPORTANT]
    >The system does not support non-printable characters in Comments and Descriptions.

    The default **Save Location** is also displayed on this page. To change the default location, select **Browse** and specify the new location. Select **Create**.

### Sequence a middleware application

1. On the computer that runs the sequencer, select **All Programs**, then select **Microsoft Application Virtualization**, and then select **Microsoft Application Virtualization Sequencer**.

2. In the sequencer, select **Create a New Virtual Application Package**, select **Create Package (default)**, and then select **Next**.

3. On the **Prepare Computer** page, review the issues that could cause the package creation to fail or could cause the package to contain unnecessary data. You should resolve all potential issues before you continue. After making any corrections, select **Refresh** to display the updated information. After you have resolved all potential issues, select **Next**.

    >[!IMPORTANT]
    >If you are required to disable virus scanning software, you should first scan the computer that runs the App-V Sequencer in order to ensure that no unwanted or malicious files can be added to the package.

4. On the **Type of Application** page, select **Middleware**, and then select **Next**.

5. On the **Select Installer** page, select **Browse** and specify the installation file for the application. If the application does not have an associated installer file and you plan to run all installation steps manually, select the **Select this option to perform a custom installation** check box, then select **Next**.

6. On the **Package Name** page, type a name that will be associated with the package. Use a name that helps identify the purpose and version of the application that will be added to the package. The package name is displayed in the App-V Management Console.

7. Select **Next**.

8. On the **Installation** page, when the sequencer and middleware application installer are ready you can proceed to install the application so that the sequencer can monitor the installation process. Use the application's installation process to perform the installation. If additional installation files must be run as part of the installation, select **Run**, to locate and run the additional installation files. When you are finished with the installation, select the **I am finished installing** check box, and then select **Next**.

9. On the **Installation** page, wait while the sequencer configures the virtual application package.

10. On the **Installation Report** page, you can review information about the virtual application package that you have just sequenced. In **Additional Information**, double-click an event to obtain more detailed information. To proceed, select **Next**.

11. On the **Target OS** page, specify the operating systems that can run this package. To enable all supported operating systems in your environment to run this package, select the **Allow this package to run on any operating system** check box. To configure this package to run only on specific operating systems, select the **Allow this package to run only on the following operating systems** check box and select the operating systems that can run this package. Once you're done, select **Next**.

12. On the **Create Package** page is displayed. To modify the package without saving it, select **Continue to modify package without saving using the package editor**. This option opens the package in the sequencer console so that you can modify the package before it is saved. Select **Next**.

    To save the package immediately, select **Save the package now**. Optionally, add a **Description** to be associated with the package. Descriptions are useful for identifying the program version and other information about the package.

    >[!IMPORTANT]
    >The system does not support non-printable characters in comments and descriptions.

    The default **Save Location** is also displayed on this page. To change the default location, select **Browse** and specify the new location. Select **Create**.

13. The **Completion** page is displayed. Review the information in the **Virtual Application Package Report** pane as needed, then select **Close**. This information is also available in the **Report.xml** file that is located in the directory specified in step 11 of this procedure.

    The package is now available in the sequencer. To edit the package properties, select **Edit \[Package Name\]**.

    >[!IMPORTANT]
    >After you have successfully created a virtual application package, you can't run the virtual application package on the computer that is running the sequencer.





## Related topics

- [Install the App-V Sequencer](appv-install-the-sequencer.md)
- [Operations for App-V](appv-operations.md)

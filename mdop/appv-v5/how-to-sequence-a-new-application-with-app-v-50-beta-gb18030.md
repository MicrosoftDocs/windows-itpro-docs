---
title: How to Sequence a New Application with App-V 5.0
description: How to Sequence a New Application with App-V 5.0
author: dansimp
ms.assetid: a263fa84-cd6d-4219-a5c2-eb6a553b826c
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Sequence a New Application with App-V 5.0


**To review or do before you start sequencing**

1.  Determine the type of virtualized application package you want to create:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Application type</th>
    <th align="left">Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Standard</p></td>
    <td align="left"><p>Creates a package that contains an application or a suite of applications. This is the preferred option for most application types.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Add-on or plug-in</p></td>
    <td align="left"><p>Creates a package that extends the functionality of a standard application, for example, a plug-in for Microsoft Excel. Additionally, you can use plug-ins for natively installed applications, or for another package that is linked by using connection groups.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Middleware</p></td>
    <td align="left"><p>Creates a package that is required by a standard application, for example, Java. Middleware packages are used for linking to other packages by using connection groups.</p></td>
    </tr>
    </tbody>
    </table>



2.  Copy all required installation files to the computer that is running the sequencer.

3.  Make a backup image of your virtual environment before sequencing an application, and then revert to that image each time after you finish sequencing an application.

4.  Review the following items:

    -   If an application installer changes the security access to a new or existing file or directory, those changes are not captured in the package.

    -   If short paths have been disabled for the virtualized package’s target volume, you must also sequence the package to a volume that was created and still has short-paths disabled. It cannot be the system volume.

    -   Starting in App-V 5.0 SP3, the primary virtual application directory (PVAD) is hidden, but you can turn it back on. See [About App-V 5.0 SP3](about-app-v-50-sp3.md#bkmk-pvad-hidden).

**To sequence a new standard application**

1.  On the computer that runs the sequencer, click **All Programs**, and then Click **Microsoft Application Virtualization**, and then click **Microsoft Application Virtualization Sequencer**.

2.  In the sequencer, click **Create a New Virtual Application Package**. Select **Create Package (default)**, and then click **Next**.

3.  On the **Prepare Computer** page, review the issues that could cause the package creation to fail or could cause the package to contain unnecessary data. You should resolve all potential issues before you continue. After making any corrections, click **Refresh** to display the updated information. After you have resolved all potential issues, click **Next**.

    **Important**  
    If you are required to disable virus scanning software, you should first scan the computer that runs the sequencer in order to ensure that no unwanted or malicious files could be added to the package.



4.  On the **Type of Application** page, click the **Standard Application (default)** check box, and then click **Next**.

5.  On the **Select Installer** page, click **Browse** and specify the installation file for the application.

    **Note**  
    If the specified application installer modifies security access to a file or directory, existing or new, the associated changes will not be captured into the package.



~~~
If the application does not have an associated installer file and you plan to run all installation steps manually, select the **Perform a Custom Installation** check box, and then Click **Next**.
~~~

6. On the **Package Name** page, type a name that will be associated with the package. Use a name that helps identify the purpose and version of the application that will be added to the package. The package name is displayed in the App-V 5.0 Management Console.

   The **Primary Virtual Application Directory** displays the path where the application will be installed on target computers. To specify this location, select **Browse**.

   **Note**  
   Starting in App-V 5.0 SP3, the primary virtual application directory (PVAD) is hidden, but you can turn it back on. See [About App-V 5.0 SP3](about-app-v-50-sp3.md#bkmk-pvad-hidden).



~~~
**Important**  
The primary application virtual directory should match the installation location for the application that is being sequenced. For example, if you install Notepad to **C:\\Program Files\\Notepad**; you should configure **C:\\Program Files\\Notepad** as your primary virtual directory. Alternatively, you can choose to set **C:\\Notepad** as the primary virtual application directory, as long as during installation time, you configure the installer to install to **C:\\Notepad**. Editing the Application Virtualization path is an advanced configuration task. For most applications, the default path is recommended for the following reasons:

-   Application Compatibility. Some virtualized applications will not function correctly, or will fail to open if the directories are not configured with identical virtual directory paths.

-   Performance. Since no file system redirection is required, the runtime performance can improve.



**Tip**  
It is recommended that prior to Sequencing an application, you open the associated installer to determine the default installation directory, and then configure that location as the **Primary Virtual Application Directory**.



Click **Next**.
~~~

7. On the **Installation** page, when the sequencer and application installer are ready you can proceed to install the application so that the sequencer can monitor the installation process.

   **Important**  
   You should always install applications to a secure location and make sure no other users are logged on to the computer running the sequencer during monitoring.



~~~
Use the application's installation process to perform the installation. If additional installation files must be run as part of the installation, click **Run** to locate and run the additional installation files. When you are finished with the installation, select **I am finished installing**. Click **Next**.
~~~

8. On the **Installation** page, wait while the sequencer configures the virtualized application package.

9. On the **Configure Software** page, optionally run the programs contained in the package. This step allows you to complete any necessary license or configuration tasks before you deploy and run the package on target computers. To run all the programs at one time, select at least one program, and then click **Run All**. To run specific programs, select the program or programs, and then click **Run Selected**. Complete the required configuration tasks and then close the applications. You may need to wait several minutes for all programs to run.

   **Note**  
   To run first-use tasks for any application that is not available in the list, open the application. The associated information will be captured during this step.



~~~
Click **Next**.
~~~

10. On the **Installation Report** page, you can review information about the virtualized application package you have just sequenced. In **Additional Information**, double-click an event to obtain more detailed information. To proceed, click **Next**.

11. The **Customize** page is displayed. If you are finished installing and configuring the virtual application, select **Stop now** and skip to step 14 of this procedure. To perform either of the following customizations, select **Customize**.

    -   Prepare the virtual package for streaming. Streaming improves the experience when the virtual application package is run on target computers.

    -   Specify the operating systems that can run this package.

    Click **Next**.

12. On the **Streaming** page, run each program so that it can be optimized and run more efficiently on target computers. It can take several minutes for all the applications to run. After all applications have run, close each of the applications, and then click **Next**.

   **Note**  
   If you do not open any applications during this step, the default streaming method is on-demand streaming delivery. This means applications will be downloaded bit by bit until it can be opened, and then depending on how the background loading is configured, will load the rest of the application.



13. On the **Target OS** page, specify the operating systems that can run this package. To allow all supported operating systems in your environment to run this package, select **Allow this package to run on any operating system**. To configure this package to run only on specific operating systems, select **Allow this package to run only on the following operating systems** and select the operating systems that can run this package. Click **Next**.

   **Important**  
   Make sure that the operating systems you specify here are supported by the application you are sequencing.



14. The **Create Package** page is displayed. To modify the package without saving it, select **Continue to modify package without saving using the package editor**. This option opens the package in the sequencer console so that you can modify the package before it is saved. Click **Next**.

   To save the package immediately, select **Save the package now** (default). Add optional **Comments** to be associated with the package. Comments are useful for identifying the program version and other information about the package.

   **Important**  
   The system does not support non-printable characters in **Comments** and **Descriptions**.



~~~
The default **Save Location** is also displayed on this page. To change the default location, click **Browse** and specify the new location. Click **Create**.
~~~

15. The **Completion** page is displayed. Review the information in the **Virtual Application Package Report** pane as needed, then click **Close**. This information is also available in the **Report.xml** file that is located in the directory where the package was created.

   The package is now available in the sequencer.

   **Important**  
   After you have successfully created a virtual application package, you cannot run the virtual application package on the computer that is running the sequencer.



**To sequence an add-on or plug-in application**

1.  

    **Note**  
    Before performing the following procedure, install the parent application locally on the computer that is running the sequencer. Or if you have the parent application virtualized, you can follow the steps in the add-on or plug-in workflow to unpack the parent application on the computer.

    For example, if you are sequencing a plug-in for Microsoft Excel, install Microsoft Excel locally on the computer that is running the sequencer. Also install the parent application in the same directory where the application is installed on target computers. If the plug-in or add-on is going to be used with an existing virtual application package, install the application on the same virtual application drive that was used when you created the parent virtual application package.



~~~
On the computer that runs the sequencer, click **All Programs**, and then Click **Microsoft Application Virtualization**, and then click **Microsoft Application Virtualization Sequencer**.
~~~

2. *<strong><em>In the sequencer, click *</em>Create a New Virtual Application Package</strong>. Select **Create Package (default)**, and then click **Next**.

3. On the **Prepare Computer** page, review the issues that might cause the package creation to fail or could cause the package to contain unnecessary data. You should resolve all potential issues before you continue. After making any corrections, click **Refresh** to display the updated information. After you have resolved all potential issues, click **Next**.

   **Important**  
   If you are required to disable virus scanning software, you should first scan the computer that runs the sequencer in order to ensure that no unwanted or malicious files could be added to the package.



4. On the **Type of Application** page, select **Add-on or Plug-in**, and then click **Next**.

5. On the **Select Installer** page, click **Browse** and specify the installation file for the add-on or plug-in. If the add-on or plug-in does not have an associated installer file and you plan to run all installation steps manually, select the **Select this option to perform a custom installation** check box, and then click **Next**.

6. On the **Install Primary** page, ensure that the primary application is installed on the computer that runs the sequencer. Alternatively, you can expand an existing package that has been saved locally on the computer that runs the sequencer. To do this, click **Expand Package**, and then select the package. After you have expanded or installed the parent program, select **I have installed the primary parent program**.

   Click **Next**.

7. On the **Package Name** page, type a name that will be associated with the package. Use a name that helps identify the purpose and version of the application that will be added to the package. The package name will be displayed in the App-V 5.0 Management Console. The **Primary Virtual Application Directory** displays the path where the application will be installed. To specify this location, type the path, or click **Browse**.

   **Note**  
   Starting in App-V 5.0 SP3, the primary virtual application directory (PVAD) is hidden, but you can turn it back on. See [About App-V 5.0 SP3](about-app-v-50-sp3.md#bkmk-pvad-hidden).



~~~
Click **Next**.
~~~

8. On the **Installation** page, when the sequencer and application installer are ready you can proceed to install the plug-in or add-in application so the sequencer can monitor the installation process. Use the application's installation process to perform the installation. If additional installation files must be run as part of the installation, click **Run** and locate and run the additional installation files. When you are finished with the installation, select **I am finished installing**, and then click **Next**.

9. On the **Installation Report** page, you can review information about the virtual application package that you just sequenced. For a more detailed explanation about the information displayed in **Additional Information**, double-click the event. After you have reviewed the information, click **Next**.

10. The **Customize** page is displayed. If you are finished installing and configuring the virtual application, select **Stop now** and skip to step 12 of this procedure. To perform either of the following customizations, select **Customize**.

    -   Optimize how the package will run across a slow or unreliable network.

    -   Specify the operating systems that can run this package.

    Click **Next**.

11. On the **Streaming** page, run each program so that it can be optimized and run more efficiently on target computers. Streaming improves the experience when the virtual application package is run on target computers on high-latency networks. It can take several minutes for all the applications to run. After all applications have run, close each of the applications. You can also configure the package to be required to be fully downloaded before opening by selecting the **Force applications to be downloaded** check-box. Click **Next**.

   **Note**  
   If necessary, you can stop an application from loading during this step. In the **Application Launch** dialog box, click **Stop** and select one of the check boxes: **Stop all applications** or **Stop this application only**.



12. On the **Target OS** page, specify the operating systems that can run this package. To allow all supported operating systems in your environment to run this package, select the **Allow this package to run on any operating system** check box. To configure this package to run only on specific operating systems, select the **Allow this package to run only on the following operating systems** check box, and then select the operating systems that can run this package. Click **Next**.

13. The **Create Package** page is displayed. To modify the package without saving it, select **Continue to modify package without saving using the package editor** check box. This option opens the package in the sequencer console so that you can modify the package before it is saved. Click **Next**.

   To save the package immediately, select **Save the package now**. Optionally, add a **Description** that will be associated with the package. Descriptions are useful for identifying the version and other information about the package.

   **Important**  
   The system does not support non-printable characters in Comments and Descriptions.



~~~
The default **Save Location** is also displayed on this page. To change the default location, click **Browse** and specify the new location. Click **Create**.
~~~

**To sequence a middleware application**

1. On the computer that runs the sequencer, click **All Programs**, and then Click **Microsoft Application Virtualization**, and then click **Microsoft Application Virtualization Sequencer**.

2. *<strong><em>In the sequencer, click *</em>Create a New Virtual Application Package</strong>. Select **Create Package (default)**, and then click **Next**.

3. On the **Prepare Computer** page, review the issues that could cause the package creation to fail or could cause the package to contain unnecessary data. You should resolve all potential issues before you continue. After making any corrections, click **Refresh** to display the updated information. After you have resolved all potential issues, click **Next**.

   **Important**  
   If you are required to disable virus scanning software, you should first scan the computer that runs the App-V 5.0 Sequencer in order to ensure that no unwanted or malicious files can be added to the package.



4. On the **Type of Application** page, select **Middleware**, and then click **Next**.

5. On the **Select Installer** page, click **Browse** and specify the installation file for the application. If the application does not have an associated installer file and you plan to run all installation steps manually, select the **Select this option to perform a custom installation** check box, and then click **Next**.

6. On the **Package Name** page, type a name that will be associated with the package. Use a name that helps identify the purpose and version of the application that will be added to the package. The package name is displayed in the App-V 5.0 Management Console. The **Primary Virtual Application Directory** displays the path where the application will be installed. To specify this location, type the path or click **Browse**.

   Click **Next**.

7. On the **Installation** page, when the sequencer and middleware application installer are ready you can proceed to install the application so that the sequencer can monitor the installation process. Use the application's installation process to perform the installation. If additional installation files must be run as part of the installation, click **Run**, to locate and run the additional installation files. When you are finished with the installation, select the **I am finished installing** check box, and then click **Next**.

8. On the **Installation** page, wait while the sequencer configures the virtual application package.

9. On the **Installation Report** page, you can review information about the virtual application package that you have just sequenced. In **Additional Information**, double-click an event to obtain more detailed information. To proceed, click **Next**.

10. On the **Target OS** page, specify the operating systems that can run this package. To enable all supported operating systems in your environment to run this package, select the **Allow this package to run on any operating system** check box. To configure this package to run only on specific operating systems, select the **Allow this package to run only on the following operating systems** check box and select the operating systems that can run this package. Click **Next**.

11. On the **Create Package** page is displayed. To modify the package without saving it, select **Continue to modify package without saving using the package editor**. This option opens the package in the sequencer console so that you can modify the package before it is saved. Click **Next**.

    To save the package immediately, select **Save the package now**. Optionally, add a **Description** to be associated with the package. Descriptions are useful for identifying the program version and other information about the package.

    **Important**  
    The system does not support non-printable characters in Comments and Descriptions.



~~~
The default **Save Location** is also displayed on this page. To change the default location, click **Browse** and specify the new location. Click **Create**.
~~~

12. The **Completion** page is displayed. Review the information in the **Virtual Application Package Report** pane as needed, then click **Close**. This information is also available in the **Report.xml** file that is located in the directory specified in step 11 of this procedure.

   The package is now available in the sequencer. To edit the package properties, click **Edit \[Package Name\]**.

   **Important**  
   After you have successfully created a virtual application package, you cannot run the virtual application package on the computer that is running the sequencer.



~~~
**Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).
~~~

## Related topics


[Operations for App-V 5.0](operations-for-app-v-50.md)










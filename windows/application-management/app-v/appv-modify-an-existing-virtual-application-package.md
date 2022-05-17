---
title: How to Modify an Existing Virtual Application Package (Windows 10/11)
description: Learn how to modify an existing virtual application package and add a new application to an existing virtual application package.
author: aczechowski
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
---

# How to Modify an Existing Virtual Application Package

[!INCLUDE [Applies to Windows client versions](../includes/applies-to-windows-client-versions.md)]

This article explains how to:

-   [Update an application in an existing virtual application package](#update-an-application-in-an-existing-virtual-application-package)

-   [Modify the properties associated with an existing virtual application package](#modify-the-properties-associated-with-an-existing-virtual-application-package)

-   [Add a new application to an existing virtual application package](#add-a-new-application-to-an-existing-virtual-application-package)

**Before you update a package:**

-   Ensure that you’ve installed the Microsoft Application Virtualization (App-V) Sequencer, which is required for modifying a virtual application package. To install the App-V Sequencer, see [How to Install the Sequencer](appv-install-the-sequencer.md).

-   Save the .appv file in a secure location and always trust the source before trying to open the package for editing.

-   The Managing Authority section is erroneously removed from the deployment configuration file when you update a package. Before starting the update, copy the Managing Authority section from the existing deployment configuration file, and then paste the copied section into the new configuration file after the conversion is complete.

-   If you click **Modify an Existing Virtual Application Package** in the Sequencer in order to edit a package, but then make no changes and close the package, the streaming behavior of the package is changed. The primary feature block is removed from the StreamMap.xml file, and any files that were listed in the publishing feature block are removed. Users who receive the edited package experience that package as if it were stream-faulted, regardless of how the original package was configured.

## Update an application in an existing virtual application package

1.  On the computer that runs the sequencer, click **All Programs**, point to **Microsoft Application Virtualization**, and then click **Microsoft Application Virtualization Sequencer**.

2.  In the App-V Sequencer, click **Modify an Existing Virtual Application Package** &gt; **Next**.

3.  On the **Select Task** page, click **Update Application in Existing Package** &gt; **Next**.

4.  On the **Select Package** page, click **Browse** to locate the virtual application package that contains the application to update, and then click **Next**.

5.  On the **Prepare Computer** page, review the issues that could cause the application update to fail or cause the updated application to contain unnecessary data. Resolve all potential issues before you continue. After making any corrections and resolving all potential issues, click **Refresh** &gt; **Next**.

    **Important**  
    If you're required to disable virus scanning software, first scan the computer that runs the sequencer to ensure that no unwanted or malicious files are added to the package.

6.  On the **Select Installer** page, click **Browse** and specify the update installation file for the application. If the update doesn't have an associated installer file, and if you plan to run all installation steps manually, select the **Select this option to perform a custom installation** check box, and then click **Next**.

7.  On the **Installation** page, when the sequencer and application installer are ready you can proceed to install the application update so the sequencer can monitor the installation process. If additional installation files must be run as part of the installation, click **Run**, and then locate and run the additional installation files. When you're finished with the installation, select **I am finished installing**. Click **Next**.

    >**Note**&nbsp;&nbsp;The sequencer monitors all changes and installations that occur on the computer that runs the sequencer. This includes any changes and installations that are performed outside of the sequencing wizard.

8.  On the **Installation Report** page, you can review information about the updated virtual application. In **Additional Information**, double-click the event to obtain more detailed information. To proceed, click **Next**.

9.  On the **Streaming** page, run each program so that it can be optimized and run more efficiently on target computers. It can take several minutes for all of the applications to run. After all applications have run, close each of the applications, and then click **Next**.

    >**Note**&nbsp;&nbsp;You can stop an application from loading during this step. In the **Application Launch** dialog box, click **Stop**, and then select either **Stop all applications** or **Stop this application only**.

10. On the **Create Package** page, to modify the package without saving it, select the check box for **Continue to modify package without saving using the package editor**. When you select this option, the package opens in the App-V Sequencer console, where you can modify the package before it's saved. Click **Next**.

    To save the package immediately, select the default **Save the package now**. Add optional **Comments** to associate with the package. Comments are useful to identify the application version and provide other information about the package. The default **Save Location** is also displayed. To change the default location, click **Browse** and specify the new location. Click **Create**.

11. On the **Completion** page, click **Close** to close the wizard. The package is now available in the sequencer.


## Modify the properties associated with an existing virtual application package

1.  On the computer that runs the sequencer, click **All Programs**, point to **Microsoft Application Virtualization**, and then click **Microsoft Application Virtualization Sequencer**.

2.  In the App-V Sequencer, click **Modify an Existing Virtual Application Package** &gt; **Next**.

3.  On the **Select Task** page, click **Edit Package** &gt; **Next**.

4.  On the **Select Package** page, click **Browse** to locate the virtual application package that contains the application properties to modify, and then click **Edit**.

5.  In the App-V Sequencer console, perform any of the following tasks as needed:

    -   Import and export the manifest file.

    -   Enable or disable Browser Helper Objects.

    -   Import or export a VFS file.

    -   Import a directory into the virtual file system.

    -   Import and export virtual registry keys.

    -   View package properties.

    -   View associated package files.

    -   Edit registry settings.

    -   Review the extra package settings (except operating system file properties).

    -   Set virtualized registry key state (override or merge).

    -   Set virtualized folder state.

    -   Add or edit shortcuts and file type associations.

        >**Note**&nbsp;&nbsp;To edit shortcuts or file type associations, you must first open the package for upgrade to add a new application, and then proceed to the final editing page.

6.  When you finish changing the package properties, click **File** &gt; **Save** to save the package.

## Add a new application to an existing virtual application package

1.  On the computer that runs the sequencer, click **All Programs**, point to **Microsoft Application Virtualization**, and then click **Microsoft Application Virtualization Sequencer**.

2.  In the App-V Sequencer, click **Modify an Existing Virtual Application Package** &gt; **Next**.

3.  On the **Select Task** page, click **Add New Application** &gt; **Next**.

4.  On the **Select Package** page, click **Browse** to locate the virtual application package to which you'll add the application, and then click **Next**.

5.  On the **Prepare Computer** page, review the issues that could cause the package creation to fail or cause the revised package to contain unnecessary data. Resolve all potential issues before you continue. After making any corrections and resolving all potential issues, click **Refresh** &gt; **Next**.

    >**Important**&nbsp;&nbsp;If you're required to disable virus scanning software, first scan the computer that runs the sequencer to ensure that no unwanted or malicious files can be added to the package.

6.  On the **Select Installer** page, click **Browse** and specify the installation file for the application. If the application doesn't have an associated installer file and you plan to run all installation steps manually, select the **Select this option to perform a custom installation** check box, and then click **Next**.

7.  On the **Installation** page, when the sequencer and application installer are ready, install the application so that the sequencer can monitor the installation process. If more installation files must be run as part of the installation, click **Run**, and locate and run those installation files. When you finish the installation, select **I am finished installing** &gt; **Next**. In the **Browse for Folder** dialog box, specify the primary directory where the application will be installed. Ensure that this directory is a new location so that you don’t overwrite the existing version of the virtual application package.

    >**Note**&nbsp;&nbsp;The sequencer monitors all changes and installations that occur on the computer that runs the sequencer. This includes any changes and installations that are performed outside of the sequencing wizard.

8.  On the **Configure Software** page, optionally run the programs contained in the package. This step completes any associated license or configuration tasks that are required to run the application before you deploy and run the package on target computers. To run all the programs at the same time, select at least one program, and then click **Run All**. To run specific programs, select the program or programs you want to run, and then click **Run Selected**. Complete the required configuration tasks and then close the applications. It can take several minutes for all programs to run. Click **Next**.

9.  On the **Installation Report** page, you can review information about the updated virtual application. In **Additional Information**, double-click the event to obtain more detailed information, and then click **Next** to open the **Customize** page.

10. If you're finished installing and configuring the virtual application, select **Stop now** and skip to step 13 of this procedure. If you want to perform the following described customization, click **Customize**.

    If you're customizing, prepare the virtual package for streaming, and then click **Next**. Streaming improves the experience when the virtual application package is run on target computers.

11. On the **Streaming** page, run each program so that it can be optimized and run more efficiently on target computers. It can take several minutes for all the applications to run. After all applications have run, close each of the applications, and then click **Next**.

    >**Note**&nbsp;&nbsp;You can stop an application from loading during this step. In the **Application Launch** dialog box, click **Stop** and then select either **Stop all applications** or **Stop this application only**.

12. On the **Create Package** page, to modify the package without saving it, select the **Continue to modify package without saving using the package editor** check box. Selecting this option opens the package in the App-V Sequencer console, where you can modify the package before saving it. Click **Next**.

    To save the package immediately, select the default **Save the package now**. Add optional **Comments** to associate with the package. Comments are useful for providing application versions and other information about the package. The default **Save Location** is also displayed. To change the default location, click **Browse** and specify the new location. The uncompressed package size is displayed. Click **Create**.

13. On the **Completion** page, click **Close**. The package is now available in the sequencer.



<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related articles

[Operations for App-V](appv-operations.md)

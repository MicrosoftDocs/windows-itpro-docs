---
title: How to Install the Sequencer (App-V 4.6 SP1)
description: How to Install the Sequencer (App-V 4.6 SP1)
author: dansimp
ms.assetid: fe8eb876-28fb-46ae-b592-da055107e639
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Install the Sequencer (App-V 4.6 SP1)


The Microsoft Application Virtualization (App-V) Sequencer monitors and records the installation and setup process for applications so that the application can be run as a virtual application. You should install the App-V Sequencer on a computer that has only the operating system installed. Alternatively, you can install the Sequencer on a computer running in a virtual environment, for example, a virtual computer. This method is useful because it is easier to maintain a clean sequencing environment that you can reuse with minimal additional configuration.

You must have administrative credentials on the computer you are using to sequence the application, and the computer must not be running any version of App-V client. Creating a virtual application by using the App-V Sequencer requires multiple operations, so it is important that you install the Sequencer on a computer that meets or exceeds the [Application Virtualization Sequencer Hardware and Software Requirements](application-virtualization-sequencer-hardware-and-software-requirements.md).

**Note**  
Running the App-V sequencer in Safe Mode is not supported.



**To install the Microsoft Application Virtualization Sequencer**

1.  Copy the Microsoft Application Virtualization Sequencer installation files to the computer on which you want to install it.

2.  To start the Microsoft Application Virtualization Sequencer installation wizard, double-click **Setup.exe**. If the **Microsoft Visual C++ SP1 Redistributable Package (x86)** is not detected prior to installation, click **Install** to install the required prerequisite.

3.  To continue the installation, on the **Welcome** page, click **Next**.

4.  On the **License Agreement** page, to accept the terms of the license agreement, click **I accept the terms in the license agreement**, and then click **Next**.

5.  On the **Destination Folder** page, to accept the default installation folder, click **Next**. To specify a different destination folder, click **Change** and specify the installation folder that will be used for the installation. Click **Next**.

6.  On the **Virtual Drive** page, to configure the Application Virtualization default drive **Q:\\** (default) as the drive that all sequenced applications will run from, click **Next**. If you want to specify a different drive letter, use the list and select the drive letter that you want to use by selecting the appropriate drive letter, and then click **Next**.

    **Important**  
    The Application Virtualization drive letter specified with this step is the drive letter that virtual applications will be run from on target computers. The drive letter specified must be available, and not currently in use on the computers running the App-V client. If the specified drive is already in use, the virtual application fails on the target computer.



7.  On the **Ready to Install the Program** page, to start the installation, click **Install**.

8.  On the **InstallShield Wizard Completed** page, to close the installation wizard and open the App-V Sequencer, click **Finish**. To close the installation wizard without opening the Sequencer, clear **Launch the program**, and then click **Finish**.

    **Note**  
    If you installed the App-V Sequencer on a computer running a virtual environment, for example a virtual machine, you must now take a snapshot. After you sequence an application, you can revert to this image, so you can sequence the next application.



~~~
When you uninstall the Sequencer, the following registry keys are not removed from the computer that the Sequencer was installed on. Additionally, you must restart the computer after you have uninstalled the Sequencer so that all associated drivers can be stopped and the operation can be completed.

-   **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\SoftGrid**

-   **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\SoftGrid\\4.5**

-   **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\SoftGrid\\4.5\\SystemGuard**

-   **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\SoftGrid\\4.5\\SystemGuard\\SecKey**
~~~

## Related topics


[Configuring the Application Virtualization Sequencer (App-V 4.6 SP1)](configuring-the-application-virtualization-sequencer--app-v-46-sp1-.md)










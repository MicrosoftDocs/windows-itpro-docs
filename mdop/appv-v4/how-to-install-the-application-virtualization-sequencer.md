---
title: How to Install the Application Virtualization Sequencer
description: How to Install the Application Virtualization Sequencer
author: dansimp
ms.assetid: 89cdf60d-18b0-4204-aa9f-b402610f8f0e
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Install the Application Virtualization Sequencer


The Microsoft Application Virtualization Sequencer monitors and records the installation and setup process for applications so that the application can be run as a virtual application. You should install the Sequencer on a computer that has only the operating system installed. Alternatively, you can install the Sequencer on a computer running a virtual environment—for example, Microsoft Virtual PC. This method is useful because it is easier to maintain a clean sequencing environment that can be reused with minimal additional configuration.

You must have administrative rights on the computer you are using to sequence the application and the computer must not be running any version of the Application Virtualization (App-V) client. Creating a virtual application by using the Sequencer is very resource intensive, so it is important that you install the Sequencer on a computer that meets or exceeds the recommended requirements. Running the App-V sequencer in Safe Mode is not supported. For more information about the system requirements, see [Application Virtualization System Requirements](application-virtualization-system-requirements.md).

**Important**  
After you have sequenced an application, before you can properly sequence a new application you must reinstall the operating system and the Sequencer on the computer you are using to sequence applications.

 

**To install the Microsoft Application Virtualization Sequencer**

1.  Copy the Microsoft Application Virtualization Sequencer installation files to the computer that you want to install it on.

2.  To start the Microsoft Application Virtualization Sequencer installation wizard, select **setup.exe**. If the **Microsoft Visual C++ SP1 Redistributable Package (x86)** is not detected prior to installation, **setup.exe** will install it.

3.  On the **Welcome** page, click **Next**.

4.  On the **License Agreement** page, to accept the terms of the license agreement, select **I accept the terms in the license agreement**. Click **Next**.

5.  On the **Destination Folder** page, to accept the default installation folder, click **Next**. To specify a different destination folder, click **Change** and specify the installation folder that will be used for the installation. Click **Next**.

6.  On the **Ready to Install the Program** page, to start the installation, click **Install**.

7.  On the **InstallShield Wizard Completed** page, to close the installation wizard and open the Sequencer, click **Finish**. To close the installation wizard without opening the Sequencer, deselect **Launch the program** and click **Finish**.

## Related topics


[How to Upgrade the Application Virtualization Sequencer](how-to-upgrade-the-application-virtualization-sequencer.md)

[Application Virtualization Deployment Requirements](application-virtualization-deployment-requirements.md)

 

 






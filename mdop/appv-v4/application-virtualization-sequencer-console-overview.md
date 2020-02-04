---
title: Application Virtualization Sequencer Console Overview
description: Application Virtualization Sequencer Console Overview
author: dansimp
ms.assetid: 681bb40d-2937-4645-82aa-4a44775232d8
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Application Virtualization Sequencer Console Overview


The Application Virtualization (App-V) Sequencer creates applications so that they can be run in a virtual environment, as virtual applications. After an application has been sequenced, it can run from an App-V Server to target computers that are running the App-V Desktop Client or the App-V Client for Remote Desktop Services (formerly Terminal Services) by using a process called streaming. The App-V Sequencer monitors the installation and setup process for applications, and it records all the information necessary for the application to run in the virtual environment. This process also determines which files and configurations are applicable to all users and which configurations users can customize. Virtual applications run on target computers and have no effect on the operating system running on the target computer or on any applications that are installed on the target computer.

## Application Virtualization Sequencer Security Considerations


The App-V Sequencer runs all services detected at sequencing time using the Local System account and does not enforce security descriptors on service control requests. If the service was installed using a different user account or if the security descriptors are intended to grant different user groups specific service permissions, consider carefully whether the service should be virtualized. In some cases, you should install the service locally to ensure that the intended service security is preserved.

## Application Virtualization Sequencer Console Menu Options


The following menu items are available in the App-V Sequencer Console:

-   **File**—Contains various commands to help create, open, modify, and save sequenced applications.

-   **Edit**—Contains various commands for editing existing virtual applications.

-   **View**—Contains various commands for viewing properties of a virtual application.

-   **Tools**—Contains various tools and diagnostics for configuring virtual applications.

## Application Virtualization Sequencer Console Toolbar Options


The following toolbar buttons are available in the App-V Sequencer Console:

-   **New Package**—Click to create a new sequenced application.

-   **Open**—Click to open a sequenced application package in the App-V Sequencer Console.

-   **Open for Upgrade**—Click to open a sequenced application to upgrade or apply an update.

-   **Save**—Click to save a sequenced virtual application.

-   **Sequencing Wizard**—Click to open the Sequencing Wizard. You should use this button to start the Sequencing Wizard if you make any changes on the **General** tab under **Tools** / **Options**.

## Virtual Application Tabs


The following tabs are displayed when you view a virtual application in the App-V Sequencer Console:

-   **Properties**—Displays information about the selected virtual application. You can update the **Package Name** and **Comments** associated with the virtual application.

-   **Deployment**—Displays information about how the virtual application will be accessed by target computers. You can configure the virtual application delivery method, and you can configure which operating systems must be running on the target computer. You can also configure the associated output options. If you plan to have clients access a virtual application from a file, use the following format when specifying the path: **File://server/share/path/.sft**. Select **Enforce Security Descriptors** to preserve security associated with the package during an upgrade, or the permissions will be reset during the upgrade.

-   **Change History**—Displays information about updates that have been made to the virtual application.

-   **Files**—Displays the files associated with the selected virtual application. You can make minor revisions to the associated file properties by using the appropriate fields.

-   **Virtual Registry**—Displays the virtual registry associated with the selected virtual application. You can add or delete registry keys by right-clicking the appropriate entry.

-   **Virtual File System**—Displays the virtual file systems associated with the selected virtual application. You can add, delete, or edit file system entries on this tab by right-clicking the appropriate entry and selecting the option.

-   **Virtual Services**—Displays the services associated with the selected virtual application.

-   **OSD**—Displays information about the Open Software Descriptor (OSD) associated with the virtual application. You can update the files associated with the OSD file by right-clicking the appropriate entry and selecting the action that you want.

## Related topics


[Application Virtualization Sequencer](application-virtualization-sequencer.md)

 

 






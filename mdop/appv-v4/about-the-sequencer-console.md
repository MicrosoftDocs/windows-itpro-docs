---
title: About the Sequencer Console
description: About the Sequencer Console
author: dansimp
ms.assetid: 36ecba89-a0f5-4d4d-981c-7f581aa43695
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# About the Sequencer Console


Before you start using the Microsoft Application Virtualization (App-V) sequencer, you should be familiar with the following information about the App-V sequencer console. The following sections describe the tools available in the Sequencer console.

## Application Virtualization Sequencer Console Menu Options


The following menu items are available in the App-V Sequencer Console:

-   **File** - Contains various commands to help create, open, modify, and save sequenced applications.

-   **Edit** - Contains various commands for editing existing virtual applications.

-   **View** - Contains various commands for viewing properties of a virtual application.

-   **Tools** - Contains various tools and diagnostics for configuring virtual applications.

## <a href="" id="application-virtualization-sequencer-console-toolbar-options-"></a>Application Virtualization Sequencer Console Toolbar Options


The following toolbar buttons are available in the App-V Sequencer Console:

-   **New Package** - Click to create a new sequenced application.

-   **Open** - Click to open a sequenced application package in the App-V Sequencer Console.

-   **Open for Upgrade** - Click to open a sequenced application to upgrade or apply an update.

-   **Save** - Click to save a sequenced virtual application.

-   **Sequencing Wizard** - Click to open the Sequencing Wizard. You should use this button to start the Sequencing Wizard if you make any changes on the **General** tab under **Tools** / **Options**.

## Virtual Application Tabs


The following tabs are displayed when you view a virtual application in the App-V Sequencer Console:

-   **Properties** - Displays information about the selected virtual application. You can update the Package Name and Comments associated with the virtual application.

-   **Deployment** - Displays information about how the virtual application will be accessed by target computers. You can configure the virtual application delivery method, and you can configure which operating systems must be running on the target computer. You can also configure the associated output options. If you plan to have clients access a virtual application from a file, use the following format when specifying the path: **File://server/share/path/.sft**. Select **Enforce Security Descriptors** to preserve security associated with the package during an upgrade, or the permissions will be reset during the upgrade.

-   **Change History** - Displays information about updates that have been made to the virtual application.

-   **Files** - Displays the files associated with the selected virtual application. You can make minor revisions to the associated file properties by using the appropriate fields.

-   **Virtual Registry** - Displays the virtual registry associated with the selected virtual application. You can add or delete registry keys by right-clicking the appropriate entry.

-   **Virtual File System** - Displays the virtual file systems associated with the selected virtual application. You can add, delete, or edit file system entries on this tab by right-clicking the appropriate entry and selecting the option.

-   **Virtual Services** - Displays the services associated with the selected virtual application.

-   **OSD** - Displays information about the Open Software Descriptor (OSD) associated with the virtual application. You can update the files associated with the OSD file by right-clicking the appropriate entry and selecting the action that you want.

## Related topics


[Application Virtualization Sequencer Overview](application-virtualization-sequencer-overview.md)

 

 






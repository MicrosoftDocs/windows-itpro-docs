---
title: How to Create and Use a Project Template
description: How to Create and Use a Project Template
author: dansimp
ms.assetid: e5ac1dc8-a88f-4b16-8e3c-df07ef5e4c3b
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Create and Use a Project Template


You can use an App-V 5.1 project template to save commonly applied settings associated with an existing virtual application package. These settings can then be applied when you create new virtual application packages in your environment. Using a project template can streamline the process of creating virtual application packages.

**Note**  
You can, and often should apply an App-V 5.1 project template during a package upgrade. For example, if you sequenced an application with a custom exclusion list, it is recommended that an associated template is created and saved for later use while upgrading the sequenced application.

 

App-V 5.1 project templates differ from App-V 5.1 Application Accelerators because App-V 5.1 Application Accelerators are application-specific, and App-V 5.1 project templates can be applied to multiple applications.

Use the following procedures to create and apply a new template.

**To create a project template**

1.  To start the App-V 5.1 sequencer, on the computer that is running the sequencer, click **Start** / **All Programs** / **Microsoft Application Virtualization** / **Microsoft Application Virtualization Sequencer**.

2.  **Note**  
    If the virtual application package is currently open in the App-V 5.1 Sequencer console, skip to step 3 of this procedure.

     

    To open the existing virtual application package that contains the settings you want to save with the App-V 5.1 project template, click **File** / **Open**, and then click **Edit Package**. On the **Select Package** page, click **Browse** and locate the virtual application package that you want to open. Click **Edit**.

3.  In the App-V 5.1 Sequencer console, to save the template file, click **File** / **Save As Template**. After you have reviewed the settings that will be saved with the new template, click **OK**. Specify a name that will be associated with the new App-V 5.1 project template. Click Save.

    The new App-V 5.1 project template is saved in the directory specified in step 3 of this procedure.

**To apply a project template**

1.  **Important**  
    Creating a virtual application package using a project template in conjunction with a Package Accelerator is not supported.

     

    To start the App-V 5.1 sequencer, on the computer that is running the sequencer, click **Start** / **All Programs** / **Microsoft Application Virtualization** / **Microsoft Application Virtualization Sequencer**.

2.  To create or upgrade a new virtual application package by using an App-V 5.1 project template, click **File** / **New From Template**.

3.  To select the project template that you want to use, browse to the directory where the project template is saved, select the project template, and then click **Open**.

    Create the new virtual application package. The settings saved with the specified template will be applied to the new virtual application package that you are creating.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Operations for App-V 5.1](operations-for-app-v-51.md)

 

 






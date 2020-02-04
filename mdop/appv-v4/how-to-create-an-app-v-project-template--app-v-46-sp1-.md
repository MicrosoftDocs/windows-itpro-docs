---
title: How to Create an App-V Project Template (App-V 4.6 SP1)
description: How to Create an App-V Project Template (App-V 4.6 SP1)
author: dansimp
ms.assetid: 7e87fba2-b72a-4bc9-92b8-220e25aae99a
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Create an App-V Project Template (App-V 4.6 SP1)


You can use an App-V project template to save commonly applied settings associated with an existing virtual application package. These settings can then be applied when you create new virtual application packages in your environment which can help streamline the process of creating virtual application packages.

**Note**  
You can only apply an App-V project template when you are creating a new virtual application package. Applying project templates to existing virtual application packages is not supported.

 

For more information about applying an App-V project template, see [How to Apply an App-V Project Template (App-V 4.6 SP1)](how-to-apply-an-app-v-project-template--app-v-46-sp1-.md).

App-V project templates differ from App-V Application Accelerators because App-V Application Accelerators are application-specific, and App-V project templates can be applied to multiple applications. Additionally, you cannot use a project template when you use a Package Accelerator to create a virtual application package.

The following general settings are saved with an App-V project template:

-   **Advanced Monitoring Options**. Enables Microsoft Update to run during monitoring, Rebase **.dll’s**.

-   **Package Deployment Settings**. Contains **Protocol**, **Host Name**, **Port**, **Path**, **Operating Systems**, **Enforce Security Descriptors**, **Create MSI**, **Compress Package**.

-   **General Options**. Allows you to **Generate Microsoft Windows Installer (MSI)** package, **Allow Virtualization of Events**, **Allow Virtualization of Services**, **Append Package Version to Filename**.

-   **Exclusion Items**. Contains the Exclusion pattern list.

**To create a project template**

1.  To start the App-V Sequencer, on the computer that is running the App-V Sequencer, click **Start** / **All Programs** / **Microsoft Application Virtualization** / **Microsoft Application Virtualization Sequencer**.

2.  If the virtual application package is currently open in the App-V Sequencer, skip to step 3 of this procedure. To open the existing virtual application package that contains the settings you want to save with the App-V project template, click **File** / **Open** and click **Edit** **Package**. On the **Select Package** page, click **Browse** and locate the virtual application package that you want to open. Click **Edit**.

3.  In the App-V Sequencer console, click **File** / **Save As Template**. After you have reviewed the settings that will be saved with the new template, click **OK**. Specify a name that will be associated with the new App-V project template. Click **Save**.

    The new App-V project template is saved in the directory specified in step 3 of this procedure.

## Related topics


[Tasks for the Application Virtualization Sequencer (App-V 4.6 SP1)](tasks-for-the-application-virtualization-sequencer--app-v-46-sp1-.md)

[How to Apply an App-V Project Template (App-V 4.6 SP1)](how-to-apply-an-app-v-project-template--app-v-46-sp1-.md)

 

 






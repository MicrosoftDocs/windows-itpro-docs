---
title: How to Upgrade a Package Using the Open Package Command
description: How to Upgrade a Package Using the Open Package Command
author: eavena
ms.assetid: 67c10440-de8a-4547-a34b-f83206d0cc3b
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Upgrade a Package Using the Open Package Command


Use the Open Package command to upgrade or apply an update to a sequenced application package. When you upgrade an existing virtual application package using the command line, the original version of the .sft file is deleted. You should backup the associated .sft file before upgrading the package using the command line.

**To upgrade a package using the Open Package command**

1.  To open the package that will be upgraded, in the Application Virtualization (App-V) console select **File**, **Open Package for Upgrade**. In the **Open** dialog box, select the package that will be upgraded.

2.  To start the **Sequencing** wizard, select **Tools**, **Sequencing Wizard**. Complete the wizard applying the configuration changes, to save the new sequenced application, select **File**, **Save**.

3.  To append the version number to the package name, in the Sequencer console, select **Tools**, **Options**. Select **Append Package Version to Filename**. Click **OK**.

    **Important**  
    Updating the file name with the package version is essential to successfully completing the upgrade.

     

## Related topics


[How to Manage Virtual Applications Using the Command Line](how-to-manage-virtual-applications-using-the-command-line.md)

 

 






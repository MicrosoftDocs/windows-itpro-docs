---
title: How to deploy App-V packages using electronic software distribution (Windows 10)
description: How to deploy App-V packages using electronic software distribution.
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 09/27/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---
# How to deploy App-V packages using electronic software distribution

>Applies to: Windows 10, version 1607

You can use an electronic software distribution (ESD) system to deploy App-V virtual applications to App-V clients.

For component requirements and options for using an ESD to deploy App-V packages, see [Planning to deploy App-V with an electronic software distribution system](appv-planning-to-deploy-appv-with-electronic-software-distribution-solutions.md).

Use one of the following methods to publish packages to App-V client computers with an ESD:

- Use the functionality in a third-party ESD.
- Install the application on the target client computer with the associated Windows Installer (.msi) file that's created when you initially sequence the application. The .msi file contains the associated App-V package file information used to configure a package and copies the required package files to the client.
- Use Windows PowerShell cmdlets to deploy virtualized applications. For more information about using Windows PowerShell and App-V, see [Administering App-V by using Windows PowerShell](appv-administering-appv-with-powershell.md).

| Method | Description |
|---|---|
| Functionality provided by a third-party ESD | Use the functionality in a third-party ESD.|
| Stand-alone Windows Installer | Install the application on the target client computer by using the associated Windows Installer (.msi) file that is created when you initially sequence an application. The Windows Installer file contains the associated App-V package file information used to configure a package and copies the required package files to the client. |
| Windows PowerShell | Use Windows PowerShell cmdlets to deploy virtualized applications. For more information about using Windows PowerShell and App-V, see [Administering App-V by using Windows PowerShell](appv-administering-appv-with-powershell.md).|

## Deploy App-V packages with an ESD

1. Install the App-V Sequencer on a computer in your environment. For more information about installing the sequencer, see [How to install the Sequencer](appv-install-the-sequencer.md).

2. Use the App-V Sequencer to create a virtual application. To learn more about creating virtual applications, see [Creating and managing App-V virtualized applications](appv-creating-and-managing-virtualized-applications.md).

3. After you create the virtual application, deploy the package by using your ESD solution.





## Related topics

- [Operations for App-V](appv-operations.md)

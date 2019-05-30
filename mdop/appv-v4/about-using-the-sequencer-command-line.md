---
title: About Using the Sequencer Command Line
description: About Using the Sequencer Command Line
author: dansimp
ms.assetid: 0fd5f81b-17f9-4065-bce2-8785e8aac7c7
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# About Using the Sequencer Command Line


You can use the command line to create sequenced application packages. Using the command line to create virtual applications is useful in the following scenarios:

-   You need to create a large number of sequenced application packages.

-   You need to create a sequenced application package on a recurring basis.

**Important**  
Sequencing at the command prompt allows for default sequencing only. If you need to change default sequencing parameters, you must either manually modify a sequenced application package or re-sequence the application.

 

All subsequent modifications to existing sequenced application packages must be made using the sequencing wizard.

## Prerequisites


To sequence an application by using the command prompt, the following conditions must be met:

-   The application that is about to be sequenced must not require changes or workarounds made to it outside the installer or Windows Installer package.

-   Before sequencing, you must prepare a list of batch files for creating the sequenced application packages.

-   Review For more information about the command line parameters, see [Command-Line Parameters](command-line-parameters.md).

-   Review the errors that might be displayed when creating a sequenced application package by using the command line. For more information, see these errors, see [Command-Line Errors](command-line-errors.md).

## Related topics


[How to Manage Virtual Applications Using the Command Line](how-to-manage-virtual-applications-using-the-command-line.md)

 

 






---
title: How to Open a Sequenced Application Using the Command Line
description: How to Open a Sequenced Application Using the Command Line
author: dansimp
ms.assetid: dc23ee65-8aea-470e-bb3f-a2f2b06cb241
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Open a Sequenced Application Using the Command Line


You can open virtual application packages using the command line. You must run the **cmd** prompt as an administrator.

Use the following procedure to open sequenced application packages using the command line

**To open a sequenced application using the command line**

1.  To open the command prompt, click **Start**, and select **Run**, type **cmd**, and click **OK**.

2.  At a command prompt, type **cd\\** and specify the path to the directory where the Sequencer is installed and then press **Enter.**

3.  At the command prompt, type the following command, replacing the italicized text with your values:

    SFTSequencer /OPEN:*”specifies the .sprj file to open"*

    Press **Enter**.

4.  You can also specify the following optional parameters. At the command prompt, type the following commands, replacing the italicized text with your values:

    /PACKAGENAME:"*specifies the package name"*

    /MSI - specifies generating an associated Microsoft Windows Installer.

    /COMPRESS – specifies if the package will be compressed. By default, packages are not compressed.

    Press **Enter**.

    **Note**  
    If the installer or Windows Installer package has a graphical user interface, it will be displayed after you specify the command-line parameters.

     

## Related topics


[How to Manage Virtual Applications Using the Command Line](how-to-manage-virtual-applications-using-the-command-line.md)

 

 






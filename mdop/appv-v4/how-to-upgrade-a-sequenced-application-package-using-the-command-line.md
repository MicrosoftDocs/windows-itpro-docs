---
title: How to Upgrade a Sequenced Application Package Using the Command Line
description: How to Upgrade a Sequenced Application Package Using the Command Line
author: eavena
ms.assetid: 682fac46-c71d-4731-831b-81bfd5032764
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Upgrade a Sequenced Application Package Using the Command Line


Use the following procedure to upgrade a virtual application by using a command line. When you upgrade an existing virtual application package by using the command line, the original version of the .sft file is deleted. You should back up the associated .sft file before upgrading the package by using the command line.

**To upgrade a virtual application**

1.  On the computer that is running the Application Virtualization (App-V) Sequencer, to open the command prompt, select **Start**, **Run**, and type **cmd**. Click **OK**.

2.  At the command prompt, specify the location where the App-V Sequencer is installed. For example, at the command prompt, you could type the following: **cd C:\\Program Files\\Microsoft Application Virtualization Sequencer**.

3.  At the command prompt, type the following command, replacing the text in quotation marks with your values:

    `SFTSequencer /UPGRADE:"pathtosourceSPRJ" /INSTALLPACKAGE:"pathtoUpgradeInstaller" /DECODEPATH:"pathtodecodefolder" /OUTPUTFILE:"pathtodestinationSPRJ"`

    **Note**  
    You can specify additional parameters by using the command line, depending on the complexity of the application you are upgrading. For a complete list of parameters that are available for use with the App-V Sequencer, see [Command-Line Parameters](command-line-parameters.md).

     

    Use the value descriptions in the following table to help you determine the actual text you will use in the preceding command.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Value</th>
    <th align="left">Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><em>pathtosourceSPRJ</em></p></td>
    <td align="left"><p>Specifies the directory location of the virtual application to be upgraded.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><em>pathtoUpgradeInstaller</em></p></td>
    <td align="left"><p>Specifies the Windows Installer or a batch file that will be used to install an upgrade to the application.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><em>pathtodecodefolder</em></p></td>
    <td align="left"><p>Specify the directory in which to unpack the SFT file.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><em>pathtodestinationSPRJ</em></p></td>
    <td align="left"><p>Specifies the path and file name of the SPRJ file that will be created.</p></td>
    </tr>
    </tbody>
    </table>

     

4.  Press **Enter**.

## Related topics


[How to Manage Virtual Applications Using the Command Line](how-to-manage-virtual-applications-using-the-command-line.md)

 

 






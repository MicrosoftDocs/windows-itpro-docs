---
title: How to Sequence a New Application by Using the Command Line
description: How to Sequence a New Application by Using the Command Line
author: dansimp
ms.assetid: c3b5c842-6a91-4d0a-9a22-c7b8d1aeb09a
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Sequence a New Application by Using the Command Line


You can use a command line to sequence a new application. Using a command line is useful when you have to create a large number of virtual applications or when you need to create sequenced applications on a recurring basis.

**Important**  
Command-line sequencing allows for default sequencing only. If you need to change default installation settings for the application you are sequencing, you must either manually modify the virtual application or update the virtual application by using the Application Virtualization (App-V) Sequencer. For more information about updating a virtual application by using the App-V Sequencer, see [How to Upgrade an Existing Virtual Application](how-to-upgrade-an-existing-virtual-application.md).



Use the following procedure to create a virtual application by using the command line.

**To sequence an application by using the command line**

1.  On the computer that is running the App-V Sequencer, open the command prompt by selecting **Start**, **Run**, and then type **cmd**. Click **OK**.

2.  Use the command prompt to specify the location of where the App-V Sequencer is installed. For example, at the command prompt, you could type the following: **cd C:\\Program Files\\Microsoft Application Virtualization Sequencer**.

3.  At the command prompt, type the following command, replacing the text in quotation marks with your values:

    `SFTSequencer /INSTALLPACKAGE:"pathtoMSI" /INSTALLPATH:"pathtopackageroot" /OUTPUTFILE:"pathtodestinationSPRJ"`

    **Note**  
    You can specify additional parameters by using the command line, depending on the complexity of the application you are sequencing. For a complete list of parameters that are available for use with the App-V Sequencer, see [Sequencer Command-Line Parameters](sequencer-command-line-parameters.md).



~~~
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
<td align="left"><p><em>pathtoMSI</em></p></td>
<td align="left"><p>Specifies the Windows Installer or a batch file that will be used to install an application so that it can be sequenced.</p></td>
</tr>
<tr class="even">
<td align="left"><p><em>pathtopackageroot</em></p></td>
<td align="left"><p>Specify the package root directory.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><em>pathtodestinationSPRJ</em></p></td>
<td align="left"><p>Specifies the path and file name of the SPRJ file that will be created.</p></td>
</tr>
</tbody>
</table>
~~~



4. Press **Enter**.

## Related topics


[How to Create or Upgrade Virtual Applications Using the App-V Sequencer](how-to-create-or-upgrade-virtual-applications-using--the-app-v-sequencer.md)

[Sequencer Command-Line Error Codes](sequencer-command-line-error-codes.md)

[Sequencer Command-Line Parameters](sequencer-command-line-parameters.md)










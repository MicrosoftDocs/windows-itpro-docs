---
title: How to Create the Sequencer Package Root Directory
description: How to Create the Sequencer Package Root Directory
author: dansimp
ms.assetid: 23fe28f1-c284-43ee-b8b7-1dfbed94eea5
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Create the Sequencer Package Root Directory


The package root directory is the directory on the computer running the App-V Sequencer where files for the sequenced application are installed. This directory also exists virtually on the computer to which a sequenced application will be streamed. You should create the package root directory before you monitor the installation of a new application.

After you have created the package root directory, you can begin sequencing applications. For more information about sequencing a new application, see [How to Sequence an Application](how-to-sequence-an-application.md).

**To create the package root directory**

1.  To create the package root directory, on the computer running the App-V Sequencer, map the Q:\\ drive to the specified network location. The location you specify should have sufficient space to save the application you are sequencing.

2.  To create a directory that you can use for a new virtual application, create a folder on the Q:\\ drive and assign it a name.

    **Important**  
    The name you assign to virtual application files that will be saved in the package root directory should use the 8.3 naming format. The file names should be no longer than 8 characters with a three-character file name extension.

     

## Related topics


[Application Virtualization Sequencer](application-virtualization-sequencer.md)

[How to Modify the Log Directory Location](how-to-modify-the-log-directory-location.md)

[How to Modify the Scratch Directory Location](how-to-modify-the-scratch-directory-location.md)

 

 






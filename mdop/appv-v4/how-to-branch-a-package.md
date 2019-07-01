---
title: How to Branch a Package
description: How to Branch a Package
author: dansimp
ms.assetid: bfe46a8a-f0ee-4a71-9e9c-64ac08aac9c1
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Branch a Package


Use this procedure to modify an existing sequenced application package so you can run it side-by-side with the original sequenced application package. This process is called branching. When you branch a virtual application package you are able to run two versions of the same package. For example, you can apply a service pack to an existing package, and run it side-by-side with the original sequenced virtual application package.

Use the following procedure to branch a sequenced virtual application package.

**To branch a sequenced virtual application package**

1.  Open the Microsoft Application Virtualization (App-V) Sequencer. To specify the destination directory that contains the package (.sprj) you want to branch select **File**, **Open**.

2.  Navigate to the directory that contains the sequenced application you plan to branch and click **Open**.

3.  To save a copy of the package, in the App-V Sequencer, select **File**, **Save As**. Specify a new, unique name, and specify a new unique package root directory for the copy of the package. Click **Save**.

    **Important**  
    You must specify a new package name or you will overwrite the existing version of the package.



~~~
The sequencer will automatically generate new GUID files for the new package. The version number associated with the package will also be automatically appended to the OSD file name.
~~~

4. After you save the new version you can apply the required configuration changes and save the associated ICO, OSD, SFT, and SPRJ files to correct location on the Application Virtualization (App-V) server.

## Related topics


[Tasks for the Application Virtualization Sequencer](tasks-for-the-application-virtualization-sequencer.md)










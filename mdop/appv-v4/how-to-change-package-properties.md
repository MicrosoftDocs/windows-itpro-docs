---
title: How to Change Package Properties
description: How to Change Package Properties
author: dansimp
ms.assetid: 6050916a-d4fe-4dac-8f2a-47308dbbf481
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Change Package Properties


You can use the following procedures to modify an Application Virtualization package name and its associated comments.

If this is the first time the package has been created, you can also change the sequencing parameter block size, which determines how a sequenced application package is streamed from an Application Virtualization Server to an Application Virtualization Desktop Client.

**Note**  
When selecting a block size, consider the size of the SFT file and your network bandwidth. A file with a smaller block size takes longer to stream over the network, but it is less bandwidth intensive. Files with larger block sizes might stream faster, but they use more network bandwidth. Through experimentation, you can discover the optimum block size for streaming applications on your network.

 

The remainder of the package properties on the **Properties** tab is automatically generated and cannot be modified on this tab.

**To change the package name or comments**

1.  Click the **Properties** tab.

2.  In the **Package Name** text box, enter or edit the single name used for the package, which can contain multiple applications.

3.  In the **Comments** text box, optionally enter or edit any comments. The suggested best practice is to provide detail information about the package and sequencing.

4.  From the **File** menu, select **Save**.

**To change the block size**

1.  Click the **Properties** tab.

2.  On the **Block Size** drop-down list, select **4 KB**, **16 KB**, **32 KB**, or **64 KB**.

3.  From the **File** menu, select **Save**.

## Related topics


[About the Properties Tab](about-the-properties-tab.md)

[Sequencer Console](sequencer-console.md)

 

 






---
title: How to Create a Time Limited Recovery Image
description: How to Create a Time Limited Recovery Image
author: msfttracyp
ms.assetid: d2e29cac-c24c-4239-997f-0320b8a830ae
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Create a Time Limited Recovery Image


You can create a DaRT recovery image that can only be used for a certain number of days after it is generated. To do this, you must run the **DaRT Recovery Image Wizard** at a command prompt and specify the number of days.

**To create a recovery image that has a time limit**

1.  Open a Command Prompt with administrator credentials.

2.  Change the directory to the location of the ERDC.exe program.

3.  Using the following syntax, run the **DaRT Recovery Image Wizard**. *NumberOfDays* is a positive integer that represents the number of days that the DaRT recovery image will be usable.

    ``` syntax
    ERDC /e NumberOfDays
    ```

## Related topics


[Creating the DaRT 7.0 Recovery Image](creating-the-dart-70-recovery-image-dart-7.md)

 

 






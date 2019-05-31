---
title: Planning to Deploy DaRT 7.0
description: Planning to Deploy DaRT 7.0
author: msfttracyp
ms.assetid: 05e97cdb-a8c2-46e4-9c75-a7d12fe26fe8
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# Planning to Deploy DaRT 7.0


There are a number of different deployment configurations and prerequisites that you must consider before you create your deployment plan. This section includes information that can help you gather the information that you must have to formulate a deployment plan that best meets your business requirements.

Consider the following when you plan your Microsoft Diagnostics and Recovery Toolset (DaRT) 7 installation:

-   When you install DaRT, you can either install all functionality on an IT administrator computer where you will perform all the tasks associated with running DaRT. Or you can install only the DaRT functionality that creates the recovery image on the IT administrator computer. Then, install the functionality used to run DaRT, such as the **DaRT Remote Connection Viewer** and **Crash Analyzer**, on a helpdesk agent computer.

-   To be able to run DaRT remotely, make sure that the helpdesk agent computer and all computers that you might be troubleshooting remotely are on the same network.

-   Before you roll out DaRT into production, you can first build a lab environment for testing. A test lab should include a minimum of two computers, one to act as the IT administrator/helpdesk agent computer and one to act as an end-user computer. Or, you can use three computers in your lab if you want to separate the IT administrator responsibilities from those of the helpdesk agent.

## Review the supported configurations


You should review the Microsoft Diagnostics and Recovery Toolset (DaRT) 7 Supported Configurations information to confirm that the computers you have selected for client or feature installation meet the minimum hardware and operating system requirements.

[DaRT 7.0 Supported Configurations](dart-70-supported-configurations-dart-7.md)

## Plan for creating the DaRT recovery image


When you create the DaRT recovery image, you have to decide which tools to include on the image. When you make that decision, remember that end users might have access occasionally to the various DaRT tools. When you create the recovery image, you will also specify whether you want to include additional drivers or files. Determine the locations of any additional drivers or files that you want to include on the DaRT recovery image.

You should be aware of the prerequisites and other additional planning recommendations for creating the DaRT recovery image.

[Planning to Create the DaRT 7.0 Recovery Image](planning-to-create-the-dart-70-recovery-image.md)

## Plan for saving and deploying the DaRT recovery image


Several methods can be used to save and deploy the DaRT recovery image. When you are determining the method that you will use, consider the advantages and disadvantages of each. Also, consider how you want to use DaRT in your enterprise.

**Note**  
You might want to use more than one method in your organization. For example, you can boot into DaRT from a remote partition for most situations and have a USB flash drive available in case the end-user computer cannot connect to the network.

 

[Planning How to Save and Deploy the DaRT 7.0 Recovery Image](planning-how-to-save-and-deploy-the-dart-70-recovery-image.md)

## Other resources for Planning to Deploy DaRT


[Planning for DaRT 7.0](planning-for-dart-70-new-ia.md)

 

 






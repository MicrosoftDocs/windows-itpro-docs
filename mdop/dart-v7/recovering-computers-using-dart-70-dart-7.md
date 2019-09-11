---
title: Recovering Computers Using DaRT 7.0
description: Recovering Computers Using DaRT 7.0
author: dansimp
ms.assetid: bcded7ca-237b-4971-ac34-4394b05cbc50
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Recovering Computers Using DaRT 7.0


There are two methods available to recover computers using Microsoft Diagnostics and Recovery Toolset (DaRT) 7. You can either run the DaRT 7 recovery image locally or use The Remote Connection feature available in DaRT 7 to recover a remote computer. Both methods are described in more detail in this section.

## Recover Local Computers by Using the DaRT Recovery Image


To recover a local computer by using DaRT 7, you must be physically present at the end-user computer that is experiencing problems that require DaRT.

You have several different methods to choose from to boot into DaRT, depending on how you deploy the DaRT recovery image.

-   Insert a DaRT recovery image CD, DVD, or USB flash drive into the problem computer and use it to boot into the computer.

-   Boot into DaRT from a recovery partition on the problem computer.

-   Boot into DaRT from a remote partition on the network.

For information about the advantages and disadvantages of each method, see [Planning How to Save and Deploy the DaRT 7.0 Recovery Image](planning-how-to-save-and-deploy-the-dart-70-recovery-image.md).

Whichever method that you use to boot into DaRT, you must enable the boot device in the BIOS for the boot option or options that you want to make available to the end user.

**Note**  
Configuring the BIOS is unique, depending on the kind of hard disk drive, network adapters, and other hardware that is used in your organization.

 

[How to Recover Local Computers Using the DaRT Recovery Image](how-to-recover-local-computers-using-the-dart-recovery-image-dart-7.md)

## Recover Remote Computers by Using the DaRT Recovery Image


The Remote Connection feature in DaRT lets an IT administrator run the DaRT tools remotely on an end-user computer. After certain information is provided by the end user (or by a helpdesk professional working on the end-user computer), the IT administrator or helpdesk agent can take control of the end user's computer and run the necessary DaRT tools remotely.

**Important**  
The two computers establishing a remote connection must be part of the same network.

 

The **Diagnostics and Recovery Toolset** window includes the option to run DaRT on an end-user computer remotely from an administrator computer. The end user opens the DaRT tools on the problem computer and starts the remote session by clicking **Remote Connection**.

The Remote Connection feature on the end-user computer creates the following connection information: a ticket number, a port, and a list of all available IP addresses. The ticket number and port are generated randomly.

The IT administrator or helpdesk agent enters this information into the **DaRT Remote Connection Viewer** to establish the terminal services connection to the end-user computer. The terminal services connection that is established lets an IT administrator remotely interact with the DaRT tools on the end-user computer. The end-user computer then processes the connection information, shares its screen, and responds to instructions from the IT administrator computer.

[How to Recover Remote Computers Using the DaRT Recovery Image](how-to-recover-remote-computers-using-the-dart-recovery-image-dart-7.md)

## Other resources for recovering computers using DaRT 7


[Operations for DaRT 7.0](operations-for-dart-70-new-ia.md)

 

 






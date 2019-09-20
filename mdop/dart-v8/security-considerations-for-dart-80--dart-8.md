---
title: Security Considerations for DaRT 8.0
description: Security Considerations for DaRT 8.0
author: dansimp
ms.assetid: 45ef8164-fee7-41a1-9a36-de4e3264e7a8
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Security Considerations for DaRT 8.0


This topic contains a brief overview about the accounts and groups, log files, and other security-related considerations for Microsoft Diagnostics and Recovery Toolset (DaRT) 8.0. For more information, follow the links within this article.

## General security considerations


**Understand the security risks**. DaRT 8.0 includes functionality that lets an administrator or a help desk worker run the DaRT tools remotely to resolve problems on an end-user computer. In addition, you can save the International Organization for Standardization (ISO) image to a USB flash drive or put the ISO image on a network to include its contents as a recovery partition on a computer’s hard disk. These capabilities provide flexibility, but also create potential security risks that you should consider when configuring DaRT.

**Physically secure your computers**. When administrators and help desk workers are not physically at their computers, they should lock their computers and use a secured screen saver.

**Apply the most recent security updates to all computers**. Stay informed about new updates for operating systems by subscribing to the Security Notification service (<https://go.microsoft.com/fwlink/?LinkId=28819>).

## Limit end-user access to DaRT tools


When you are creating the DaRT recovery image, you can select the tools that you want to include. For security reasons, you might want to restrict end-user access to the more powerful DaRT tools, such as Disk Wipe and Locksmith. In DaRT 8.0, you can disable certain tools during configuration and still make them available to help desk workers when the end user starts the Remote Connection feature.

You can even configure the DaRT image so that the option to start a remote connection session is the only tool available to an end user.

**Important**  
After the remote connection is established, all the tools that you included in the recovery image, including those unavailable to the end user, will become available to any help desk worker who is working on the end–user computer.

 

For more information about including tools in the DaRT recovery image, see [Overview of the Tools in DaRT 8.0](overview-of-the-tools-in-dart-80-dart-8.md).

## Secure the DaRT recovery image


If you deploy the DaRT recovery image by saving it to a USB flash drive or by creating a remote partition or a recovery partition, you might want to include your company’s preferred method of drive encryption on the ISO. Encrypting the ISO helps to ensure that end users cannot use DaRT functionality if they were to gain access to the recovery image, and it ensures that unauthorized users cannot boot into DaRT on computers that belong to someone else. If you use an encryption method, be sure to deploy and enable it in all computers.

**Note**  
DaRT 8.0 supports BitLocker natively.

 

To include drive encryption, add the encryption solution files when you create the recovery image. Your encryption solution must be able to run on WinPE. End users who boot from the ISO are then able to access that encryption solution and unblock the drive.

## Maintain security between two computers when you use Remote Connection


By default, the communication between two computers that have established a **Remote Connection** session may not be encrypted. Therefore, to help maintain security between the two computers, we recommend that both computers are a part of the same network.

## Related topics


[Security and Privacy for DaRT 8.0](security-and-privacy-for-dart-80-dart-8.md)

 

 






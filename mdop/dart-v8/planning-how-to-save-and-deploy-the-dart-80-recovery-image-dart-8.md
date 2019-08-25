---
title: Planning How to Save and Deploy the DaRT 8.0 Recovery Image
description: Planning How to Save and Deploy the DaRT 8.0 Recovery Image
author: msfttracyp
ms.assetid: 939fbe17-0e30-4c85-8782-5b84d69442a7
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Planning How to Save and Deploy the DaRT 8.0 Recovery Image


You can save and deploy the Microsoft Diagnostics and Recovery Toolset (DaRT) 8.0 recovery image by using the following methods. When you are determining the method that you will use, consider the advantages and disadvantages of each. You should also consider your infrastructure and support staff. If you have a small infrastructure, you might want to deploy DaRT 8.0 by using removable media, since the recovery image will always be available if you install it to the local hard drive.

If your organization uses Active Directory Domain Services (AD DS), you may want to deploy recovery images as a network service by using Windows DS. Recovery images are always available to any connected computer. You can deploy multiple images from Windows DS and maintain them all in one place.

**Note**  
You may want to use more than one method in your organization. For example, you can boot into DaRT from a remote partition for most situations and have a USB flash drive available in case the end-user computer cannot connect to the network.

 

The following table shows some advantages and disadvantages of each method of using DaRT in your organization.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Method to Boot into DaRT</th>
<th align="left">Advantages</th>
<th align="left">Disadvantages</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Removable Media</strong></p>
<p>The recovery image is written to a CD, DVD, or USB drive to enable support staff to take the recovery tools with them to the unstable computer.</p></td>
<td align="left"><p>Supports scenarios in which the master boot record (MBR) is corrupted and you cannot access the hard disk and supports cases in which there is no network connection.</p>
<p>Enables you to create multiple recovery images with different tools to provide different levels of support.</p>
<p>Provides a built-in tool for burning recovery images to removable media.</p></td>
<td align="left"><p>Requires that support staff are physically at the end-user computer to boot into DaRT.</p>
<p>Requires time and maintenance to create multiple media with different configurations for 32-bit and 64-bit computers.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>From a remote (network) partition</strong></p>
<p>The recovery image is hosted on a network boot server like Windows Deployment Services (Windows DS), which allows users or support staff to stream it to computers on demand.</p></td>
<td align="left"><p>Available to all computers that have access to the network boot server.</p>
<p>Recovery images are hosted on a central server, which enables centralized updates.</p>
<p>Centralized help desk staff can provide repairs by using remote connectivity.</p>
<p>No local storage requirement on the clients.</p>
<p>Ability to create multiple recovery images with different tools for specific support levels.</p></td>
<td align="left"><p>The need to secure Windows DS infrastructure to ensure that regular users can start only the DaRT recovery image and not the full operating system imaging process.</p>
<p></p>
<p></p>
<p>Requires that the end-user computer is connected to the network at runtime.</p>
<p>Requires that the recovery image is brought across the network.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>From a recovery partition on the local hard drive</strong></p>
<p>The recovery image is installed on a local hard drive either manually or by using electronic software distribution systems like System Center Configuration Manager.</p></td>
<td align="left"><p>The recovery image is always available because it is pre-staged on the computer.</p>
<p>Centralized help desk staff can provide support by using Remote Connection.</p>
<p>The recovery image is centrally managed and deployed.</p>
<p>Additional recovery key requests on computers that are protected by Windows BitLocker drive encryption are eliminated.</p></td>
<td align="left"><p>Local storage is required.</p>
<p>A dedicated, unencrypted partition for recovery image placement is recommended to reduce the risk of a failed boot partition.</p>
<p>When updating DaRT, you must update all computers in your enterprise instead of just one partition (on the network) or removable device.</p>
<p>Additional consideration is required if you deploy the recovery image after BitLocker has been enabled.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Planning to Deploy DaRT 8.0](planning-to-deploy-dart-80-dart-8.md)

 

 






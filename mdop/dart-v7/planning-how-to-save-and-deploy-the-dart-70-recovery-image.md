---
title: Planning How to Save and Deploy the DaRT 7.0 Recovery Image
description: Planning How to Save and Deploy the DaRT 7.0 Recovery Image
author: msfttracyp
ms.assetid: d96e9363-6186-4fc3-9b83-ba15ed9694a5
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Planning How to Save and Deploy the DaRT 7.0 Recovery Image


Use the information in this section when you plan for saving and deploying the Microsoft Diagnostics and Recovery Toolset (DaRT) 7 recovery image.

## Planning How to Save and Deploy the DaRT Recovery Image


You can save and deploy the DaRT recovery image by using the following methods. When you are determining the method that you will use, consider the advantages and disadvantages of each. Also, consider how you want to use DaRT in your enterprise.

**Note**  
You might want to use more than one method in your organization. For example, you can boot into DaRT from a remote partition for most situations and have a USB flash drive available in case the end-user computer cannot connect to the network.

 

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
<td align="left"><p>From a CD or DVD</p></td>
<td align="left"><p>Supports scenarios in which the master boot record (MBR) is corrupted and you cannot access the hard disk. Also supports cases in which there is no network connection.</p>
<p>This is most familiar to users of earlier versions of DaRT, and a CD or DVD can be burned directly from the <strong>DaRT Recovery Image Wizard</strong>.</p></td>
<td align="left"><p>Requires that someone with access to the CD or DVD is physically at the end-user computer to boot into DaRT.</p></td>
</tr>
<tr class="even">
<td align="left"><p>From a USB flash drive (UFD)</p></td>
<td align="left"><p>Provides same advantages as booting from a CD or DVD and also provides support to computers that have no CD or DVD drive.</p></td>
<td align="left"><p>Requires you to format the UFD before you can use it to boot into DaRT. Also requires that someone with access to the UFD is physically at the end-user computer to boot into DaRT.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>From a remote (network) partition</p></td>
<td align="left"><p>Lets you boot into DaRT without needing a CD, DVD, or UFD. Also allows for easy upgrades of DaRT because there is only one file location to update.</p></td>
<td align="left"><p>Does not work if the end-user computer is not connected to the network.</p>
<p>Widely available to end users and might require additional security considerations when you are creating the recovery image.</p></td>
</tr>
<tr class="even">
<td align="left"><p>From a recovery partition</p></td>
<td align="left"><p>Lets you boot into DaRT without needing a CD, DVD, or UFD that includes instances in which there is no network connectivity.</p>
<p>Also, can be implemented and managed as part of your standard Windows image process by using automated distribution tools, such as System Center Configuration Manager.</p></td>
<td align="left"><p>When updating DaRT, requires you to update all computers in your enterprise instead of just one partition (on the network) or device (CD, DVD, or UFD).</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Planning to Deploy DaRT 7.0](planning-to-deploy-dart-70.md)

 

 






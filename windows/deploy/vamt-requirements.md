---
title: VAMT Requirements (Windows 10)
description: VAMT Requirements
ms.assetid: d14d152b-ab8a-43cb-a8fd-2279364007b9
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
---

# VAMT Requirements


## Product Key Requirements


The Volume Activation Management Tool (VAMT) can be used to perform activations using any of the following types of product keys.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Product Key Type</th>
<th align="left">Where to Obtain</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><ul>
<li><p>Multiple Activation Key (MAK)</p></li>
<li><p>Key Management Service (KMS) host key (CSVLK)</p></li>
<li><p>KMS client setup keys (GVLK)</p></li>
</ul></td>
<td align="left"><p>Volume licensing keys can only be obtained with a signed contract from Microsoft. For more info, see the [Microsoft Volume Licensing portal](http://go.microsoft.com/fwlink/p/?LinkId=227282).</p></td>
</tr>
<tr class="even">
<td align="left"><p>Retail product keys</p></td>
<td align="left"><p>Obtained at time of product purchase.</p></td>
</tr>
</tbody>
</table>

 

## System Requirements


The following table lists the system requirements for the VAMT host computer.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p>Computer and Processor</p></td>
<td align="left"><p>1 GHz x86 or x64 processor</p></td>
</tr>
<tr class="even">
<td align="left"><p>Memory</p></td>
<td align="left"><p>1 GB RAM for x86 or 2 GB RAM for x64</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Hard Disk</p></td>
<td align="left"><p>16 GB available hard disk space for x86 or 20 GB for x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>External Drive</p></td>
<td align="left"><p>Removable media (Optional)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Display</p></td>
<td align="left"><p>1024x768 or higher resolution monitor</p></td>
</tr>
<tr class="even">
<td align="left"><p>Network</p></td>
<td align="left"><p>Connectivity to remote computers via Windows® Management Instrumentation (TCP/IP) and Microsoft® Activation Web Service on the Internet via HTTPS</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Operating System</p></td>
<td align="left"><p>Windows 7, Windows 8, Windows 8.1, Windows 10, Windows Server 2008 R2, or Windows Server 2012.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Additional Requirements</p></td>
<td align="left"><ul>
<li><p>Connection to a SQL Server database. For more info, see [Install VAMT](install-vamt.md).</p></li>
<li><p>PowerShell 3.0: For Windows 8, Windows 8.1, Windows 10, and Windows Server® 2012, PowerShell is included in the installation. For previous versions of Windows and Windows Server, you must download PowerShell 3.0. To download PowerShell, go to [Download Windows PowerShell 3.0](http://go.microsoft.com/fwlink/p/?LinkId=218356).</p></li>
<li><p>If installing on Windows Server 2008 R2, you must also install .NET Framework 3.51.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

## Related topics


[Install and Configure VAMT](install-configure-vamt.md)

 

 






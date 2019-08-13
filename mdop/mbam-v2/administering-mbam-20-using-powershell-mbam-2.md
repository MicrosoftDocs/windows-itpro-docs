---
title: Administering MBAM 2.0 Using PowerShell
description: Administering MBAM 2.0 Using PowerShell
author: msfttracyp
ms.assetid: d785a8df-0a8c-4d70-abd2-93a762b4f3de
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Administering MBAM 2.0 Using PowerShell


Microsoft BitLocker Administration and Monitoring (MBAM) provides the following listed set of Windows PowerShell cmdlets. Administrators can use these PowerShell cmdlets to perform various Microsoft BitLocker Administration and Monitoring server tasks from the command line rather than from the MBAM administration website.

## How to Administer MBAM Using PowerShell


Use the PowerShell cmdlets described here to administer MBAM.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Name</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Install-Mbam</p></td>
<td align="left"><p>Installs the MBAM features that provide advanced policy, encryption, key recovery, and compliance reporting.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Uninstall-Mbam</p></td>
<td align="left"><p>Removes the MBAM features that provide advanced policy, encryption, key recovery, and compliance reporting tools.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Get-MbamBitLockerRecoveryKey</p></td>
<td align="left"><p>Requests an MBAM recovery key that will enable users to unlock a computer or encrypted drive.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Get-MbamTPMOwnerPassword</p></td>
<td align="left"><p>Provides users with a TPM owner password that they can use to unlock a Trusted Platform Module (TPM) when the TPM has locked them out and will no longer accept their PIN.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Operations for MBAM 2.0](operations-for-mbam-20-mbam-2.md)

 

 






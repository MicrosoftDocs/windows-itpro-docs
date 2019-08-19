---
title: Administering MBAM 1.0 by Using PowerShell
description: Administering MBAM 1.0 by Using PowerShell
author: msfttracyp
ms.assetid: 3bf2eca5-4ab7-4e84-9e80-c0c7d709647b
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Administering MBAM 1.0 by Using PowerShell


Microsoft BitLocker Administration and Monitoring (MBAM) provides the following listed set of Windows PowerShell cmdlets. Administrators can use these PowerShell cmdlets to perform various MBAM server tasks from the command prompt rather than from the MBAM administration website.

## How to administer MBAM by using PowerShell


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
<td align="left"><p>Add-MbamHardwareType</p></td>
<td align="left"><p>Adds a new hardware model to the MBAM hardware inventory. This cmdlet can also specify whether the hardware is supported or unsupported for BitLocker drive encryption.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Get-MbamBitLockerRecoveryKey</p></td>
<td align="left"><p>Requests an MBAM recovery key that will enable a user to unlock a computer or encrypted drive.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Get-MbamHardwareType</p></td>
<td align="left"><p>Gets a master hardware inventory that contains data that indicates whether hardware models are compatible or incompatible with BitLocker drive encryption.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Get-MbamTPMOwnerPassword</p></td>
<td align="left"><p>Provides a TPM owner password for a user to manage their TPM (Trusted Platform Module) access. Helps users when TPM has locked them out and will no longer accept their PIN.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Install-Mbam</p></td>
<td align="left"><p>Installs MBAM features that provide advanced group policy, encryption, key recovery, and compliance reporting tools.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Remove-MbamHardwareType</p></td>
<td align="left"><p>Removes the hardware models from the hardware inventory.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Set-MbamHardwareType</p></td>
<td align="left"><p>Allows management of a master hardware inventory to designate whether or not hardware models are capable or incapable to perform BitLocker encryption.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Uninstall-Mbam</p></td>
<td align="left"><p>Removes previously installed MBAM features that provide advanced policy, encryption, key recovery, and compliance reporting tools.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Operations for MBAM 1.0](operations-for-mbam-10.md)

 

 






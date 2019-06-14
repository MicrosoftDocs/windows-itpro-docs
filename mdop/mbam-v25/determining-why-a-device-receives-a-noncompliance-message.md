---
title: Determining why a Device Receives a Noncompliance Message
description: Determining why a Device Receives a Noncompliance Message
author: dansimp
ms.assetid: 793df330-a0ee-4759-b53a-95618ac74428
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/22/2017
---


# Determining why a Device Receives a Noncompliance Message


The following noncompliance codes are provided by WMI and describe the reasons why a particular device is reported by MBAM as noncompliant.

You can use your preferred method to view WMI. If you use PowerShell, run `gwmi -class mbam_volume -Namespace root\microsoft\mbam` from a PowerShell prompt and search for ReasonsForNoncompliance.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Non-Compliance Code</th>
<th align="left">Reason for Non-Compliance</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>0</p></td>
<td align="left"><p>Cipher strength not AES 256.</p></td>
</tr>
<tr class="even">
<td align="left"><p>1</p></td>
<td align="left"><p>MBAM Policy requires this volume to be encrypted but it is not.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>2</p></td>
<td align="left"><p>MBAM Policy requires this volume to NOT be encrypted, but it is.</p></td>
</tr>
<tr class="even">
<td align="left"><p>3</p></td>
<td align="left"><p>MBAM Policy requires this volume use a TPM protector, but it does not.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4</p></td>
<td align="left"><p>MBAM Policy requires this volume use a TPM+PIN protector, but it does not.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5</p></td>
<td align="left"><p>MBAM Policy does not allow non TPM machines to report as compliant.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>6</p></td>
<td align="left"><p>Volume has a TPM protector but the TPM is not visible (booted with recover key after disabling TPM in BIOS?).</p></td>
</tr>
<tr class="even">
<td align="left"><p>7</p></td>
<td align="left"><p>MBAM Policy requires this volume use a password protector, but it does not have one.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>8</p></td>
<td align="left"><p>MBAM Policy requires this volume NOT use a password protector, but it has one.</p></td>
</tr>
<tr class="even">
<td align="left"><p>9</p></td>
<td align="left"><p>MBAM Policy requires this volume use an auto-unlock protector, but it does not have one.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>10</p></td>
<td align="left"><p>MBAM Policy requires this volume NOT use an auto-unlock protector, but it has one.</p></td>
</tr>
<tr class="even">
<td align="left"><p>11</p></td>
<td align="left"><p>Policy conflict detected preventing MBAM from reporting this volume as compliant.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>12</p></td>
<td align="left"><p>A system volume is needed to encrypt the OS volume but it is not present.</p></td>
</tr>
<tr class="even">
<td align="left"><p>13</p></td>
<td align="left"><p>Protection is suspended for the volume.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>14</p></td>
<td align="left"><p>AutoUnlock unsafe unless the OS volume is encrypted.</p></td>
</tr>
<tr class="even">
<td align="left"><p>15</p></td>
<td align="left"><p>Policy requires minimum cypher strength is XTS-AES-128 bit, actual cypher strength is weaker than that.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>16</p></td>
<td align="left"><p>Policy requires minimum cypher strength is XTS-AES-256 bit, actual cypher strength is weaker than that.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Technical Reference for MBAM 2.5](technical-reference-for-mbam-25.md)

[Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md)

 
## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).
 






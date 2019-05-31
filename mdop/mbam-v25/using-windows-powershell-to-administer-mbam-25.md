---
title: Using Windows PowerShell to Administer MBAM 2.5
description: Using Windows PowerShell to Administer MBAM 2.5
author: dansimp
ms.assetid: 64668e76-2cba-433d-8d2d-50df0a4b2997
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 11/02/2016
---


# Using Windows PowerShell to Administer MBAM 2.5


This topic describes Windows PowerShell cmdlets for Microsoft BitLocker Administration and Monitoring (MBAM) that relate to recovering computers or drives when users get locked out.

For cmdlets that you use to configure MBAM Server features, see [Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md).

## <a href="" id="cmdlets-for-recovering-computers-or-drives-that-are-managed-by-mbam-"></a>Cmdlets for recovering computers or drives that are managed by MBAM


Use the following Windows PowerShell cmdlets to recover computers or drives that are managed by MBAM.

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
<td align="left"><p>Get-MbamBitLockerRecoveryKey</p></td>
<td align="left"><p>Requests an MBAM recovery key that enables users to unlock a computer or encrypted drive.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Get-MbamTPMOwnerPassword</p></td>
<td align="left"><p>Provides users with a TPM owner password that they can use to unlock a Trusted Platform Module (TPM) when the TPM has locked them out and will no longer accept their PIN.</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="---------mbam-cmdlet-help"></a> MBAM cmdlet Help


Windows PowerShell Help for MBAM cmdlets is available in the following formats:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Windows PowerShell Help format</th>
<th align="left">More information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>At a Windows PowerShell command prompt, type <strong>Get-Help</strong> &lt;<em>cmdlet</em>&gt;</p></td>
<td align="left"><p>To upload the latest Windows PowerShell cmdlets, follow the instructions in [Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>On TechNet as webpages</p></td>
<td align="left"><p>https://go.microsoft.com/fwlink/?LinkId=393498</p></td>
</tr>
<tr class="odd">
<td align="left"><p>On the Download Center as a Word .docx file</p></td>
<td align="left"><p>https://go.microsoft.com/fwlink/?LinkId=393497</p></td>
</tr>
<tr class="even">
<td align="left"><p>On the Download Center as a .pdf file</p></td>
<td align="left"><p>https://go.microsoft.com/fwlink/?LinkId=393499</p></td>
</tr>
</tbody>
</table>

 



## Related topics


[Administering MBAM 2.5 Features](administering-mbam-25-features.md)

[Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 






---
title: Prerequisites for MBAM 2.5 Clients
description: Prerequisites for MBAM 2.5 Clients
author: dansimp
ms.assetid: fc230679-9c84-4b99-a77c-bae7e7bf8145
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 04/23/2017
---


# Prerequisites for MBAM 2.5 Clients


Before you install the MBAM Client software on end users' computers, ensure that your environment and the client computers meet the following prerequisites.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>The enterprise domain must contain at least one Windows Server 2008 (or later) domain controller.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>The client computer must be logged on to the enterprise intranet.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>For Windows 7 client computers only: Each client must have Trusted Platform Module (TPM) capability (TPM 1.2 or later).</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>For Windows 8.1, Windows 10 RTM or Windows 10 version 1511 client computers only: If you want MBAM to be able to store and manage the TPM recovery keys, TPM auto-provisioning must be turned off, and MBAM must be set as the owner of the TPM before you deploy MBAM.</p>
<p>In MBAM 2.5 SP1 only, you no longer need to turn off TPM auto-provisioning, but you must make sure that the TPM Group Policy Objects are set to not escrow TPM OwnerAuth to Active Directory.</p></td>
<td align="left"><p><a href="mbam-25-security-considerations.md#bkmk-tpm" data-raw-source="[MBAM 2.5 Security Considerations](mbam-25-security-considerations.md#bkmk-tpm)">MBAM 2.5 Security Considerations</a></p></td>
</tr>
<tr class="odd">
<td align="left"><p>For Windows 10, version 1607 or later, only Windows can take ownership of the TPM. In addiiton, Windows will not retain the TPM owner password when provisioning the TPM.</p>
<p>In MBAM 2.5 SP1, you must turn on auto-provisioning.</p>
</p></td>
<td align="left"><p>See <a href="https://technet.microsoft.com/itpro/windows/keep-secure/change-the-tpm-owner-password" data-raw-source="[TPM owner password](https://technet.microsoft.com/itpro/windows/keep-secure/change-the-tpm-owner-password)">TPM owner password</a> for further details.
</p></td>
</tr>
<tr class="even">
<td align="left"><p>The TPM chip must be turned on in the BIOS and be resettable from the operating system.</p></td>
<td align="left"><p>See the BIOS documentation for more information.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>The computer’s hard disk must have at least two partitions and must be formatted with the NTFS file system.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>The computer’s hard disk must have a BIOS that is compatible with TPM and that supports USB devices during computer startup.</p></td>
<td align="left"><div class="alert">
<strong>Note</strong><br/><p>Ensure that the keyboard, video, or mouse are directly connected and not managed through a keyboard, video, or mouse (KVM) switch. A KVM switch can interfere with the ability of the computer to detect the physical presence of hardware.</p>
</div>
<div>

</div></td>
</tr>
<tr class="even">
<td align="left"><p>If you use a proxy, it must be visible in the system context. MBAM runs under the system context, not the user context.</p></td>
<td align="left"><p></p></td>
</tr>
</tbody>
</table>



**Important**  
If BitLocker was used without MBAM, MBAM can be installed and utilize the existing TPM information.




## Related topics


[MBAM 2.5 Supported Configurations](mbam-25-supported-configurations.md)

[Planning to Deploy MBAM 2.5](planning-to-deploy-mbam-25.md)


## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring).
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).







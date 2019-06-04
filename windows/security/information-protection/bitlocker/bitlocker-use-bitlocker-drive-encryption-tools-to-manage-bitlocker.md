---
title: BitLocker Use BitLocker Drive Encryption Tools to manage BitLocker (Windows 10)
description: This topic for the IT professional describes how to use tools to manage BitLocker.
ms.assetid: e869db9c-e906-437b-8c70-741dd61b5ea6
ms.reviewer: 
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 02/28/2019 
---

# BitLocker: Use BitLocker Drive Encryption Tools to manage BitLocker

**Applies to**
-   Windows 10

This topic for the IT professional describes how to use tools to manage BitLocker.

BitLocker Drive Encryption Tools include the command line tools manage-bde and repair-bde and the BitLocker cmdlets for Windows PowerShell.

Both manage-bde and the BitLocker cmdlets can be used to perform any task that can be accomplished through the BitLocker control panel and are appropriate to use for automated deployments and other scripting scenarios.

Repair-bde is a special circumstance tool that is provided for disaster recovery scenarios in which a BitLocker protected drive cannot be unlocked normally or using the recovery console.

1.  [Manage-bde](#bkmk-managebde)
2.  [Repair-bde](#bkmk-repairbde)
3.  [BitLocker cmdlets for Windows PowerShell](#bkmk-blcmdlets)

## <a href="" id="bkmk-managebde"></a>Manage-bde

Manage-bde is a command-line tool that can be used for scripting BitLocker operations. Manage-bde offers additional options not displayed in the BitLocker control panel. For a complete list of the manage-bde options, see the [Manage-bde](https://technet.microsoft.com/library/ff829849.aspx) command-line reference.

Manage-bde includes less default settings and requires greater customization for configuring BitLocker. For example, using just the `manage-bde -on` command on a data volume will fully encrypt the volume without any authenticating protectors. A volume encrypted in this manner still requires user interaction to turn on BitLocker protection, even though the command successfully completed because an authentication method needs to be added to the volume for it to be fully protected. The following sections provide examples of common usage scenarios for manage-bde.

### Using manage-bde with operating system volumes

Listed below are examples of basic valid commands for operating system volumes. In general, using only the `manage-bde -on <drive letter>` command will encrypt the operating system volume with a TPM-only protector and no recovery key. However, many environments require more secure protectors such as passwords or PIN and expect to be able to recover information with a recovery key. It is recommended that at least one primary protector and a recovery protector be added to an operating system volume.

A good practice when using manage-bde is to determine the volume status on the target system. Use the following command to determine volume status:

``` syntax
manage-bde -status
```
This command returns the volumes on the target, current encryption status, encryption method, and volume type (operating system or data) for each volume:

![Using manage-bde to check encryption status](images/manage-bde-status.png)

The following example illustrates enabling BitLocker on a computer without a TPM chip. Before beginning the encryption process you must create the startup key needed for BitLocker and save it to the USB drive. When BitLocker is enabled for the operating system volume, the BitLocker will need to access the USB flash drive to obtain the encryption key (in this example, the drive letter E represents the USB drive). You will be prompted to reboot to complete the encryption process.

``` syntax
manage-bde –protectors -add C: -startupkey E:
manage-bde -on C:
```

>**Note:**  After the encryption is completed, the USB startup key must be inserted before the operating system can be started.
 
An alternative to the startup key protector on non-TPM hardware is to use a password and an **ADaccountorgroup** protector to protect the operating system volume. In this scenario, you would add the protectors first. This is done with the command:

``` syntax
manage-bde -protectors -add C: -pw -sid <user or group>
```

This command will require you to enter and then confirm the password protector before adding them to the volume. With the protectors enabled on the volume, you can then turn BitLocker on.

On computers with a TPM it is possible to encrypt the operating system volume without any defined protectors using manage-bde. The command to do this is:

``` syntax
manage-bde -on C:
```

This will encrypt the drive using the TPM as the default protector. If you are not sure if a TPM protector is available, to list the protectors available for a volume, run the following command:

``` syntax
 manage-bde -protectors -get <volume>
```
### Using manage-bde with data volumes

Data volumes use the same syntax for encryption as operating system volumes but they do not require protectors for the operation to complete. Encrypting data volumes can be done using the base command: `manage-bde -on <drive letter>` or you can choose to add additional protectors to the volume first. It is recommended that at least one primary protector and a recovery protector be added to a data volume.

A common protector for a data volume is the password protector. In the example below, we add a password protector to the volume and turn BitLocker on.

``` syntax
manage-bde -protectors -add -pw C:
manage-bde -on C:
```

## <a href="" id="bkmk-repairbde"></a>Repair-bde

You may experience a problem that damages an area of a hard disk on which BitLocker stores critical information. This kind of problem may be caused by a hard disk failure or if Windows exits unexpectedly.

The BitLocker Repair Tool (Repair-bde) can be used to access encrypted data on a severely damaged hard disk if the drive was encrypted by using BitLocker. Repair-bde can reconstruct critical parts of the drive and salvage recoverable data as long as a valid recovery password or recovery key is used to decrypt the data. If the BitLocker metadata data on the drive has become corrupt, you must be able to supply a backup key package in addition to the recovery password or recovery key. This key package is backed up in Active Directory Domain Services (AD DS) if you used the default setting for AD DS backup. With this key package and either the recovery password or recovery key, you can decrypt portions of a BitLocker-protected drive if the disk is corrupted. Each key package will work only for a drive that has the corresponding drive identifier. You can use the BitLocker Recovery Password Viewer to obtain this key package from AD DS.

>**Tip:**  If you are not backing up recovery information to AD DS or if you want to save key packages alternatively, you can use the command `manage-bde -KeyPackage` to generate a key package for a volume.
 
The Repair-bde command-line tool is intended for use when the operating system does not start or when you cannot start the BitLocker Recovery Console. You should use Repair-bde if the following conditions are true:

1.  You have encrypted the drive by using BitLocker Drive Encryption.
2.  Windows does not start, or you cannot start the BitLocker recovery console.
3.  You do not have a copy of the data that is contained on the encrypted drive.

>**Note:**  Damage to the drive may not be related to BitLocker. Therefore, we recommend that you try other tools to help diagnose and resolve the problem with the drive before you use the BitLocker Repair Tool. The Windows Recovery Environment (Windows RE) provides additional options to repair computers.
 
The following limitations exist for Repair-bde:

-   The Repair-bde command-line tool cannot repair a drive that failed during the encryption or decryption process.
-   The Repair-bde command-line tool assumes that if the drive has any encryption, then the drive has been fully encrypted.

For more information about using repair-bde, see [Repair-bde](https://technet.microsoft.com/library/ff829851.aspx).

## <a href="" id="bkmk-blcmdlets"></a>BitLocker cmdlets for Windows PowerShell

Windows PowerShell cmdlets provide a new way for administrators to use when working with BitLocker. Using Windows PowerShell's scripting capabilities, administrators can integrate BitLocker options into existing scripts with ease. The list below displays the available BitLocker cmdlets.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Name</strong></p></td>
<td align="left"><p><strong>Parameters</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Add-BitLockerKeyProtector</strong></p></td>
<td align="left"><p>-ADAccountOrGroup</p>
<p>-ADAccountOrGroupProtector</p>
<p>-Confirm</p>
<p>-MountPoint</p>
<p>-Password</p>
<p>-PasswordProtector</p>
<p>-Pin</p>
<p>-RecoveryKeyPath</p>
<p>-RecoveryKeyProtector</p>
<p>-RecoveryPassword</p>
<p>-RecoveryPasswordProtector</p>
<p>-Service</p>
<p>-StartupKeyPath</p>
<p>-StartupKeyProtector</p>
<p>-TpmAndPinAndStartupKeyProtector</p>
<p>-TpmAndPinProtector</p>
<p>-TpmAndStartupKeyProtector</p>
<p>-TpmProtector</p>
<p>-WhatIf</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Backup-BitLockerKeyProtector</strong></p></td>
<td align="left"><p>-Confirm</p>
<p>-KeyProtectorId</p>
<p>-MountPoint</p>
<p>-WhatIf</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Disable-BitLocker</strong></p></td>
<td align="left"><p>-Confirm</p>
<p>-MountPoint</p>
<p>-WhatIf</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Disable-BitLockerAutoUnlock</strong></p></td>
<td align="left"><p>-Confirm</p>
<p>-MountPoint</p>
<p>-WhatIf</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Enable-BitLocker</strong></p></td>
<td align="left"><p>-AdAccountOrGroup</p>
<p>-AdAccountOrGroupProtector</p>
<p>-Confirm</p>
<p>-EncryptionMethod</p>
<p>-HardwareEncryption</p>
<p>-Password</p>
<p>-PasswordProtector</p>
<p>-Pin</p>
<p>-RecoveryKeyPath</p>
<p>-RecoveryKeyProtector</p>
<p>-RecoveryPassword</p>
<p>-RecoveryPasswordProtector</p>
<p>-Service</p>
<p>-SkipHardwareTest</p>
<p>-StartupKeyPath</p>
<p>-StartupKeyProtector</p>
<p>-TpmAndPinAndStartupKeyProtector</p>
<p>-TpmAndPinProtector</p>
<p>-TpmAndStartupKeyProtector</p>
<p>-TpmProtector</p>
<p>-UsedSpaceOnly</p>
<p>-WhatIf</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Enable-BitLockerAutoUnlock</strong></p></td>
<td align="left"><p>-Confirm</p>
<p>-MountPoint</p>
<p>-WhatIf</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Get-BitLockerVolume</strong></p></td>
<td align="left"><p>-MountPoint</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Lock-BitLocker</strong></p></td>
<td align="left"><p>-Confirm</p>
<p>-ForceDismount</p>
<p>-MountPoint</p>
<p>-WhatIf</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Remove-BitLockerKeyProtector</strong></p></td>
<td align="left"><p>-Confirm</p>
<p>-KeyProtectorId</p>
<p>-MountPoint</p>
<p>-WhatIf</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Resume-BitLocker</strong></p></td>
<td align="left"><p>-Confirm</p>
<p>-MountPoint</p>
<p>-WhatIf</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Suspend-BitLocker</strong></p></td>
<td align="left"><p>-Confirm</p>
<p>-MountPoint</p>
<p>-RebootCount</p>
<p>-WhatIf</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Unlock-BitLocker</strong></p></td>
<td align="left"><p>-AdAccountOrGroup</p>
<p>-Confirm</p>
<p>-MountPoint</p>
<p>-Password</p>
<p>-RecoveryKeyPath</p>
<p>-RecoveryPassword</p>
<p>-RecoveryPassword</p>
<p>-WhatIf</p></td>
</tr>
</tbody>
</table>
 
Similar to manage-bde, the Windows PowerShell cmdlets allow configuration beyond the options offered in the control panel. As with manage-bde, users need to consider the specific needs of the volume they are encrypting prior to running Windows PowerShell cmdlets.
A good initial step is to determine the current state of the volume(s) on the computer. You can do this using the `Get-BitLockerVolume` cmdlet.
The `Get-BitLockerVolume` cmdlet output gives information on the volume type, protectors, protection status and other details.

>**Tip:**  Occasionally, all protectors may not be shown when using `Get-BitLockerVolume` due to lack of space in the output display. If you do not see all of the protectors for a volume, you can use the Windows PowerShell pipe command (|) to format a full listing of the protectors.
`Get-BitLockerVolume C: | fl`
 
If you want to remove the existing protectors prior to provisioning BitLocker on the volume, you could use the `Remove-BitLockerKeyProtector` cmdlet. Accomplishing this requires the GUID associated with the protector to be removed.

A simple script can pipe the values of each Get-BitLockerVolume return out to another variable as seen below:

``` syntax
$vol = Get-BitLockerVolume
$keyprotectors = $vol.KeyProtector
```

Using this, you can display the information in the $keyprotectors variable to determine the GUID for each protector.

Using this information, you can then remove the key protector for a specific volume using the command:

``` syntax
Remove-BitLockerKeyProtector <volume>: -KeyProtectorID "{GUID}"
```

>**Note:**  The BitLocker cmdlet requires the key protector GUID enclosed in quotation marks to execute. Ensure the entire GUID, with braces, is included in the command.
 
### Using the BitLocker Windows PowerShell cmdlets with operating system volumes

Using the BitLocker Windows PowerShell cmdlets is similar to working with the manage-bde tool for encrypting operating system volumes. Windows PowerShell offers users a lot of flexibility. For example, users can add the desired protector as part command for encrypting the volume. Below are examples of common user scenarios and steps to accomplish them in BitLocker Windows PowerShell.

The following example shows how to enable BitLocker on an operating system drive using only the TPM protector:

``` syntax
Enable-BitLocker C:

```
In the example below, adds one additional protector, the StartupKey protector and chooses to skip the BitLocker hardware test. In this example, encryption starts immediately without the need for a reboot.

``` syntax
Enable-BitLocker C: -StartupKeyProtector -StartupKeyPath <path> -SkipHardwareTest
```

### Using the BitLocker Windows PowerShell cmdlets with data volumes

Data volume encryption using Windows PowerShell is the same as for operating system volumes. You should add the desired protectors prior to encrypting the volume. The following example adds a password protector to the E: volume using the variable $pw as the password. The $pw variable is held as a
SecureString value to store the user defined password.

``` syntax
$pw = Read-Host -AsSecureString
<user inputs password>
Enable-BitLockerKeyProtector E: -PasswordProtector -Password $pw
```
### Using an AD Account or Group protector in Windows PowerShell

The **ADAccountOrGroup** protector, introduced in Windows 8 and Windows Server 2012, is an Active Directory SID-based protector. This protector can be added to both operating system and data volumes, although it does not unlock operating system volumes in the pre-boot environment. The protector requires the SID for the domain account or group to link with the protector. BitLocker can protect a cluster-aware disk by adding a SID-based protector for the Cluster Name Object (CNO) that lets the disk properly failover to and be unlocked by any member computer of the cluster.

>**Warning:**  The **ADAccountOrGroup** protector requires the use of an additional protector for use (such as TPM, PIN, or recovery key) when used on operating system volumes
 
To add an **ADAccountOrGroup** protector to a volume requires either the actual domain SID or the group name preceded by the domain and a backslash. In the example below, the CONTOSO\\Administrator account is added as a protector to the data volume G.

``` syntax
Enable-BitLocker G: -AdAccountOrGroupProtector -AdAccountOrGroup CONTOSO\Administrator
```

For users who wish to use the SID for the account or group, the first step is to determine the SID associated with the account. To get the specific SID for a user account in Windows PowerShell, use the following command:

>**Note:**  Use of this command requires the RSAT-AD-PowerShell feature.
 
``` syntax
get-aduser -filter {samaccountname -eq "administrator"}
```

>**Tip:**  In addition to the PowerShell command above, information about the locally logged on user and group membership can be found using: WHOAMI /ALL. This does not require the use of additional features.
 
The following example adds an **ADAccountOrGroup** protector to the previously encrypted operating system volume using the SID of the account:

``` syntax
Add-BitLockerKeyProtector C: -ADAccountOrGroupProtector -ADAccountOrGroup S-1-5-21-3651336348-8937238915-291003330-500
```

>**Note:**  Active Directory-based protectors are normally used to unlock Failover Cluster enabled volumes.
 
## More information

- [BitLocker overview](bitlocker-overview.md)
- [BitLocker frequently asked questions (FAQ)](bitlocker-frequently-asked-questions.md)
- [Prepare your organization for BitLocker: Planning and policies](prepare-your-organization-for-bitlocker-planning-and-policies.md)
- [BitLocker: How to enable Network Unlock](bitlocker-how-to-enable-network-unlock.md)
- [BitLocker: How to deploy on Windows Server 2012](bitlocker-how-to-deploy-on-windows-server.md)

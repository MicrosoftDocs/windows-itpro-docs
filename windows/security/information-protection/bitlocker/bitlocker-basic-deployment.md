---
title: BitLocker basic deployment (Windows 10)
description: This topic for the IT professional explains how BitLocker features can be used to protect your data through drive encryption.
ms.assetid: 97c646cb-9e53-4236-9678-354af41151c4
ms.reviewer: 
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dulcemontemayor
ms.author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 02/28/2019
---

# BitLocker basic deployment

**Applies to**
-   Windows 10

This topic for the IT professional explains how BitLocker features can be used to protect your data through drive encryption.

## Using BitLocker to encrypt volumes

BitLocker provides full volume encryption (FVE) for operating system volumes, as well as fixed and removable data volumes. To support fully encrypted operating system volumes, BitLocker uses an unencrypted system volume for the files required to boot, decrypt, and load the operating system. This volume is automatically created during a new installation of both client and server operating systems.

In the event that the drive was prepared as a single contiguous space, BitLocker requires a new volume to hold the boot files. BdeHdCfg.exe can create these volumes.

> **Note:**  For more info about using this tool, see [Bdehdcfg](https://technet.microsoft.com/library/ee732026.aspx) in the Command-Line Reference.
 
BitLocker encryption can be done using the following methods:

-   BitLocker control panel
-   Windows Explorer
-   manage-bde command line interface
-   BitLocker Windows PowerShell cmdlets

### Encrypting volumes using the BitLocker control panel

Encrypting volumes with the BitLocker control panel (click **Start**, type **bitlocker**, click **Manage BitLocker**) is how many users will utilize BitLocker. The name of the BitLocker control panel is BitLocker Drive Encryption. The BitLocker control panel supports encrypting operating system, fixed data and removable data volumes. The BitLocker control panel will organize available drives in the appropriate category based on how the device reports itself to Windows. Only formatted volumes with assigned drive letters will appear properly in the BitLocker control panel applet.
To start encryption for a volume, select **Turn on BitLocker** for the appropriate drive to initialize the BitLocker Drive Encryption Wizard. BitLocker Drive Encryption Wizard options vary based on volume type (operating system volume or data volume).

### Operating system volume

Upon launch, the BitLocker Drive Encryption Wizard verifies the computer meets the BitLocker system requirements for encrypting an operating system volume. By default, the system requirements are:
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Requirement</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Hardware configuration</p></td>
<td align="left"><p>The computer must meet the minimum requirements for the supported Windows versions.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Operating system</p></td>
<td align="left"><p>BitLocker is an optional feature which can be installed by Server Manager on Windows Server 2012 and later.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Hardware TPM</p></td>
<td align="left"><p>TPM version 1.2 or 2.0</p>
<p>A TPM is not required for BitLocker; however, only a computer with a TPM can provide the additional security of pre-startup system integrity verification and multifactor authentication.</p></td>
</tr>
<tr class="even">
<td align="left"><p>BIOS configuration</p></td>
<td align="left"><ul>
<li><p>A Trusted Computing Group (TCG)-compliant BIOS or UEFI firmware.</p></li>
<li><p>The boot order must be set to start first from the hard disk, and not the USB or CD drives.</p></li>
<li><p>The firmware must be able to read from a USB flash drive during startup.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>File system</p></td>
<td align="left"><p>For computers that boot natively with UEFI firmware, at least one FAT32 partition for the system drive and one NTFS partition for the operating system drive.</p>
<p>For computers with legacy BIOS firmware, at least two NTFS disk partitions, one for the system drive and one for the operating system drive.</p>
<p>For either firmware, the system drive partition must be at least 350 megabytes (MB) and set as the active partition.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Hardware encrypted drive prerequisites (optional)</p></td>
<td align="left"><p>To use a hardware encrypted drive as the boot drive, the drive must be in the uninitialized state and in the security inactive state. In addition, the system must always boot with native UEFI version 2.3.1 or higher and the CSM (if any) disabled.</p></td>
</tr>
</tbody>
</table>
 
Upon passing the initial configuration, users are required to enter a password for the volume. If the volume does not pass the initial configuration for BitLocker, the user is presented with an error dialog describing the appropriate actions to be taken.
Once a strong password has been created for the volume, a recovery key will be generated. The BitLocker Drive Encryption Wizard will prompt for a location to save this key. A BitLocker recovery key is a special key that you can create when you turn on BitLocker Drive Encryption for the first time on each drive that you encrypt. You can use the recovery key to gain access to your computer if the drive that Windows is installed on (the operating system drive) is encrypted using BitLocker Drive Encryption and BitLocker detects a condition that prevents it from unlocking the drive when the computer is starting up. A recovery key can also be used to gain access to your files and folders on a removable data drive (such as an external hard drive or USB flash drive) that is encrypted using BitLocker To Go, if for some reason you forget the password or your computer cannot access the drive.

You should store the recovery key by printing it, saving it on removable media, or saving it as a file in a network folder or on your OneDrive, or on another drive of your computer that you are not encrypting. You cannot save the recovery key to the root directory of a non-removable drive and cannot be stored on the encrypted volume. You cannot save the recovery key for a removable data drive (such as a USB flash drive) on removable media. Ideally, you should store the recovery key separate from your computer. After you create a recovery key, you can use the BitLocker control panel to make additional copies.

When the recovery key has been properly stored, the BitLocker Drive Encryption Wizard will prompt the user to choose how to encrypt the drive. There are two options:

-   Encrypt used disk space only - Encrypts only disk space that contains data
-   Encrypt entire drive - Encrypts the entire volume including free space

It is recommended that drives with little to no data utilize the **used disk space only** encryption option and that drives with data or an operating system utilize the **encrypt entire drive** option.

> **Note:**  Deleted files appear as free space to the file system, which is not encrypted by **used disk space only**. Until they are wiped or overwritten, deleted files hold information that could be recovered with common data forensic tools.
 
Selecting an encryption type and choosing **Next** will give the user the option of running a BitLocker system check (selected by default) which will ensure that BitLocker can properly access the recovery and encryption keys before the volume encryption begins. It is recommended to run this system check before starting the encryption process. If the system check is not run and a problem is encountered when the operating system attempts to start, the user will need to provide the recovery key to start Windows.

After completing the system check (if selected), the BitLocker Drive Encryption Wizard will restart the computer to begin encryption. Upon reboot, users are required to enter the password chosen to boot into the operating system volume. Users can check encryption status by checking the system notification area or the BitLocker control panel.

Until encryption is completed, the only available options for managing BitLocker involve manipulation of the password protecting the operating system volume, backing up the recovery key, and turning BitLocker off.

### Data volume

Encrypting data volumes using the BitLocker control panel interface works in a similar fashion to encryption of the operating system volumes. Users select **Turn on BitLocker** within the control panel to begin the BitLocker Drive Encryption wizard.
Unlike for operating system volumes, data volumes are not required to pass any configuration tests for the wizard to proceed. Upon launching the wizard, a choice of authentication methods to unlock the drive appears. The available options are **password** and **smart card** and **automatically unlock this drive on this computer**. Disabled by default, the latter option will unlock the data volume without user input when the operating system volume is unlocked.

After selecting the desired authentication method and choosing **Next**, the wizard presents options for storage of the recovery key. These options are the same as for operating system volumes.
With the recovery key saved, selecting **Next** in the wizard will show available options for encryption. These options are the same as for operating system volumes; **used disk space only** and **full drive encryption**. If the volume being encrypted is new or empty, it is recommended that used space only encryption is selected.

With an encryption method chosen, a final confirmation screen displays before beginning the encryption process. Selecting **Start encrypting** will begin encryption.

Encryption status displays in the notification area or within the BitLocker control panel.

### <a href="" id="-onedrive-option-"></a> OneDrive option

There is a new option for storing the BitLocker recovery key using the OneDrive. This option requires that computers are not members of a domain and that the user is using a Microsoft Account. Local accounts do not give the option to utilize OneDrive. Using the OneDrive option is the default, recommended recovery key storage method for computers that are not joined to a domain.

Users can verify the recovery key was saved properly by checking their OneDrive for the BitLocker folder which is created automatically during the save process. The folder will contain two files, a readme.txt and the recovery key. For users storing more than one recovery password on their OneDrive,
they can identify the required recovery key by looking at the file name. The recovery key ID is appended to the end of the file name.

### Using BitLocker within Windows Explorer

Windows Explorer allows users to launch the BitLocker Drive Encryption wizard by right clicking on a volume and selecting **Turn On BitLocker**. This option is available on client computers by default. On servers, you must first install the BitLocker and Desktop-Experience features for this option to be available. After selecting **Turn on BitLocker**, the wizard works exactly as it does when launched using the BitLocker control panel.

## <a href="" id="bkmk-dep2"></a>Down-level compatibility

The following table shows the compatibility matrix for systems that have been BitLocker enabled then presented to a different version of Windows.

Table 1: Cross compatibility for Windows 10, Windows 8.1, Windows 8, and Windows 7 encrypted volumes

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p>Encryption Type</p></td>
<td align="left"><p>Windows 10 and Windows 8.1</p></td>
<td align="left"><p>Windows 8</p></td>
<td align="left"><p>Windows 7</p></td>
</tr>
<tr class="even">
<td align="left"><p>Fully encrypted on Windows 8</p></td>
<td align="left"><p>Presents as fully encrypted</p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p>Presented as fully encrypted</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Used Disk Space Only encrypted on Windows 8</p></td>
<td align="left"><p>Presents as encrypt on write</p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p>Presented as fully encrypted</p></td>
</tr>
<tr class="even">
<td align="left"><p>Fully encrypted volume from Windows 7</p></td>
<td align="left"><p>Presents as fully encrypted</p></td>
<td align="left"><p>Presented as fully encrypted</p></td>
<td align="left"><p>N/A</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Partially encrypted volume from Windows 7</p></td>
<td align="left"><p>Windows 10 and Windows 8.1 will complete encryption regardless of policy</p></td>
<td align="left"><p>Windows 8 will complete encryption regardless of policy</p></td>
<td align="left"><p>N/A</p></td>
</tr>
</tbody>
</table>


## <a href="" id="bkmk-dep3"></a>Encrypting volumes using the manage-bde command line interface

Manage-bde is a command-line utility that can be used for scripting BitLocker operations. Manage-bde offers additional options not displayed in the BitLocker control panel. For a complete list of the options, see [Manage-bde](https://technet.microsoft.com/library/ff829849.aspx).
Manage-bde offers a multitude of wider options for configuring BitLocker. This means that using the command syntax may require care and possibly later customization by the user. For example, using just the `manage-bde -on` command on a data volume will fully encrypt the volume without any authenticating protectors. A volume encrypted in this manner still requires user interaction to turn on BitLocker protection, even though the command successfully completed because an authentication method needs to be added to the volume for it to be fully protected.
Command line users need to determine the appropriate syntax for a given situation. The following section covers general encryption for operating system volumes and data volumes.

### Operating system volume

Listed below are examples of basic valid commands for operating system volumes. In general, using only the `manage-bde -on <drive letter>` command will encrypt the operating system volume with a TPM-only protector and no recovery key. However, many environments require more secure protectors such as passwords or PIN and expect to be able to recover information with a recovery key.

**Determining volume status**

A good practice when using manage-bde is to determine the volume status on the target system. Use the following command to determine volume status:

`manage-bde -status`

This command returns the volumes on the target, current encryption status and volume type (operating system or data) for each volume. Using this information, users can determine the best encryption method for their environment.

**Enabling BitLocker without a TPM**

For example, suppose that you want to enable BitLocker on a computer without a TPM chip. To properly enable BitLocker for the operating system volume, you will need to use a USB flash drive as a startup key to boot (in this example, the drive letter E). You would first create the startup key needed for BitLocker using the –protectors option and save it to the USB drive on E: and then begin the encryption process. You will need to reboot the computer when prompted to complete the encryption process.

```powershell
manage-bde –protectors -add C: -startupkey E:
manage-bde -on C:
```

**Enabling BitLocker with a TPM only**

It is possible to encrypt the operating system volume without any defined protectors using manage-bde. The command to do this is:

`manage-bde -on C:`

This will encrypt the drive using the TPM as the protector. If a user is unsure of the protector for a volume, they can use the -protectors option in manage-bde to list this information with the command:

`manage-bde -protectors -get <volume>`

**Provisioning BitLocker with two protectors**

Another example is a user on non-TPM hardware who wishes to add a password and SID-based protector to the operating system volume. In this instance, the user adds the protectors first. This is done with the command:

`manage-bde -protectors -add C: -pw -sid <user or group>`

This command will require the user to enter and then confirm the password protector before adding them to the volume. With the protectors enabled on the volume, the user just needs to turn BitLocker on.

### Data volume

Data volumes use the same syntax for encryption as operating system volumes but they do not require protectors for the operation to complete. Encrypting data volumes can be done using the base command: `manage-bde -on <drive letter>` or users can choose to add protectors to the volume. It is recommended that at least one primary protector and a recovery protector be added to a data volume.

**Enabling BitLocker with a password**

A common protector for a data volume is the password protector. In the example below, we add a password protector to the volume and turn BitLocker on.

```powershell
manage-bde -protectors -add -pw C:
manage-bde -on C:
```

## <a href="" id="bkmk-dep4"></a>Encrypting volumes using the BitLocker Windows PowerShell cmdlets

Windows PowerShell cmdlets provide an alternative way to work with BitLocker. Using Windows PowerShell's scripting capabilities, administrators can integrate BitLocker options into existing scripts with ease. The list below displays the available BitLocker cmdlets.
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
A good initial step is to determine the current state of the volume(s) on the computer. You can do this using the <code>Get-BitLocker</code> volume cmdlet. The output from this cmdlet displays information on the volume type, protectors, protection status, and other useful information.
Occasionally, all protectors may not be shown when using <strong>Get-BitLockerVolume</strong> due to lack of space in the output display. If you do not see all of the protectors for a volume, you can use the Windows PowerShell pipe command (|) to format a listing of the protectors.

> **Note:**  In the event that there are more than four protectors for a volume, the pipe command may run out of display space. For volumes with more than four protectors, use the method described in the section below to generate a listing of all protectors with protector ID.
 
`Get-BitLockerVolume C: | fl`

If you wanted to remove the existing protectors prior to provisioning BitLocker on the volume, you can utilize the `Remove-BitLockerKeyProtector` cmdlet. Accomplishing this requires the GUID associated with the protector to be removed.
A simple script can pipe the values of each **Get-BitLockerVolume** return out to another variable as seen below:
```powershell
$vol = Get-BitLockerVolume
$keyprotectors = $vol.KeyProtector
```
Using this, we can display the information in the **$keyprotectors** variable to determine the GUID for each protector.
Using this information, we can then remove the key protector for a specific volume using the command:
```powershell
Remove-BitLockerKeyProtector <volume>: -KeyProtectorID "{GUID}"
```
> **Note:**  The BitLocker cmdlet requires the key protector GUID enclosed in quotation marks to execute. Ensure the entire GUID, with braces, is included in the command.
 
### Operating system volume

Using the BitLocker Windows PowerShell cmdlets is similar to working with the manage-bde tool for encrypting operating system volumes. Windows PowerShell offers users a lot of flexibility. For example, users can add the desired protector as part command for encrypting the volume. Below are examples of common user scenarios and steps to accomplish them using the BitLocker cmdlets for Windows PowerShell.
To enable BitLocker with just the TPM protector. This can be done using the command:

```powershell
Enable-BitLocker C:
```
The example below adds one additional protector, the StartupKey protectors, and chooses to skip the BitLocker hardware test. In this example, encryption starts immediately without the need for a reboot.

```powershell
Enable-BitLocker C: -StartupKeyProtector -StartupKeyPath <path> -SkipHardwareTest
```
### Data volume

Data volume encryption using Windows PowerShell is the same as for operating system volumes. You should add the desired protectors prior to encrypting the volume. The following example adds a password protector to the E: volume using the variable $pw as the password. The $pw variable is held as a SecureString value to store the user defined password. Last, encryption begins.

```powershell
$pw = Read-Host -AsSecureString
<user inputs password>
Enable-BitLockerKeyProtector E: -PasswordProtector -Password $pw
```
### Using a SID based protector in Windows PowerShell

The ADAccountOrGroup protector is an Active Directory SID-based protector. This protector can be added to both operating system and data volumes, although it does not unlock operating system volumes in the pre-boot environment. The protector requires the SID for the domain account or group to link with the protector. BitLocker can protect a cluster-aware disk by adding a SID-based protector for the Cluster Name Object (CNO) that lets the disk properly failover and be unlocked to any member computer of the cluster.

>**Warning:**  The SID-based protector requires the use of an additional protector (such as TPM, PIN, recovery key, etc.) when used on operating system volumes.
 
To add an ADAccountOrGroup protector to a volume requires either the actual domain SID or the group name preceded by the domain and a backslash. In the example below, the CONTOSO\\Administrator account is added as a protector to the data volume G.

```powershell
Enable-BitLocker G: -AdAccountOrGroupProtector -AdAccountOrGroup CONTOSO\Administrator
```
For users who wish to use the SID for the account or group, the first step is to determine the SID associated with the account. To get the specific SID for a user account in Windows PowerShell, use the following command:

```powershell
get-aduser -filter {samaccountname -eq "administrator"}
```
> **Note:**  Use of this command requires the RSAT-AD-PowerShell feature.
> 
> **Tip:**  In addition to the Windows PowerShell command above, information about the locally logged on user and group membership can be found using: WHOAMI /ALL. This does not require the use of additional features.
 
In the example below, the user wishes to add a domain SID based protector to the previously encrypted operating system volume. The user knows the SID for the user account or group they wish to add and uses the following command:

```powershell
Add-BitLockerKeyProtector C: -ADAccountOrGroupProtector -ADAccountOrGroup "<SID>"
```
> **Note:**  Active Directory-based protectors are normally used to unlock Failover Cluster enabled volumes.
 
## <a href="" id="bkmk-dep5"></a> Checking BitLocker status

To check the BitLocker status of a particular volume, administrators can look at the status of the drive in the BitLocker control panel applet, Windows Explorer, manage-bde command line tool, or Windows PowerShell cmdlets. Each option offers different levels of detail and ease of use. We will look at each of the available methods in the following section.

### Checking BitLocker status with the control panel

Checking BitLocker status with the control panel is the most common method used by most users. Once opened, the status for each volume will display next to the volume description and drive letter. Available status return values with the control panel include:

| Status | Description |
| - | - |
| **On**|BitLocker is enabled for the volume |
| **Off**| BitLocker is not enabled for the volume |
| **Suspended** | BitLocker is suspended and not actively protecting the volume |
| **Waiting for Activation**| BitLocker is enabled with a clear protector key and requires further action to be fully protected|
 
If a drive is pre-provisioned with BitLocker, a status of "Waiting for Activation" displays with a yellow exclamation icon on volume E. This status means that there was only a clear protector used when encrypting the volume. In this case, the volume is not in a protected state and needs to have a secure key added to the volume before the drive is fully protected. Administrators can use the control panel, manage-bde tool, or WMI APIs to add an appropriate key protector. Once complete, the control panel will update to reflect the new status.
Using the control panel, administrators can choose **Turn on BitLocker** to start the BitLocker Drive Encryption wizard and add a protector, like PIN for an operating system volume (or password if no TPM exists), or a password or smart card protector to a data volume.
The drive security window displays prior to changing the volume status. Selecting **Activate BitLocker** will complete the encryption process.

Once BitLocker protector activation is completed, the completion notice is displayed.

### Checking BitLocker status with manage-bde

Administrators who prefer a command line interface can utilize manage-bde to check volume status. Manage-bde is capable of returning more information about the volume than the graphical user interface tools in the control panel. For example, manage-bde can display the BitLocker version in use, the encryption type, and the protectors associated with a volume.

To check the status of a volume using manage-bde, use the following command:

```powershell
manage-bde -status <volume>
```
> **Note:**  If no volume letter is associated with the -status command, all volumes on the computer display their status.
 
### Checking BitLocker status with Windows PowerShell

Windows PowerShell commands offer another way to query BitLocker status for volumes. Like manage-bde, Windows PowerShell includes the advantage of being able to check the status of a volume on a remote computer.

Using the Get-BitLockerVolume cmdlet, each volume on the system will display its current BitLocker status. To get information that is more detailed on a specific volume, use the following command:

```powershell
Get-BitLockerVolume <volume> -Verbose | fl
```
This command will display information about the encryption method, volume type, key protectors, etc.

### Provisioning BitLocker during operating system deployment

Administrators can enable BitLocker prior to operating system deployment from the Windows Pre-installation Environment. This is done with a randomly generated clear key protector applied to the formatted volume and encrypting the volume prior to running the Windows setup process. If the encryption uses the Used Disk Space Only option described later in this document, this step takes only a few seconds and incorporates well into regular deployment processes.

### Decrypting BitLocker volumes

Decrypting volumes removes BitLocker and any associated protectors from the volumes. Decryption should occur when protection is no longer required. BitLocker decryption should not occur as a troubleshooting step. BitLocker can be removed from a volume using the BitLocker control panel applet, manage-bde, or Windows PowerShell cmdlets. We will discuss each method further below.

### Decrypting volumes using the BitLocker control panel applet

BitLocker decryption using the control panel is done using a Wizard. The control panel can be called from Windows Explorer or by opening the directly. After opening the BitLocker control panel, users will select the Turn off BitLocker option to begin the process.
Once selected, the user chooses to continue by clicking the confirmation dialog. With Turn off BitLocker confirmed, the drive decryption process will begin and report status to the control panel.

The control panel does not report decryption progress but displays it in the notification area of the task bar. Selecting the notification area icon will open a modal dialog with progress.

Once decryption is complete, the drive will update its status in the control panel and is available for encryption.

### Decrypting volumes using the manage-bde command line interface

Decrypting volumes using manage-bde is very straightforward. Decryption with manage-bde offers the advantage of not requiring user confirmation to start the process. Manage-bde uses the -off command to start the decryption process. A sample command for decryption is:

```powershell
manage-bde -off C:
```
This command disables protectors while it decrypts the volume and removes all protectors when decryption is complete. If a user wishes to check the status of the decryption, they can use the following command:

```powershell
manage-bde -status C:
```
### Decrypting volumes using the BitLocker Windows PowerShell cmdlets

Decryption with Windows PowerShell cmdlets is straightforward, similar to manage-bde. The additional advantage Windows PowerShell offers is the ability to decrypt multiple drives in one pass. In the example below, the user has three encrypted volumes, which they wish to decrypt.

Using the Disable-BitLocker command, they can remove all protectors and encryption at the same time without the need for additional commands. An example of this command is:

```powershell
Disable-BitLocker
```
If a user did not want to input each mount point individually, using the `-MountPoint` parameter in an array can sequence the same command into one line without requiring additional user input. An example command is:

```powershell
Disable-BitLocker -MountPoint E:,F:,G:
```
## See also

- [Prepare your organization for BitLocker: Planning and policies](prepare-your-organization-for-bitlocker-planning-and-policies.md)
- [BitLocker recovery guide](bitlocker-recovery-guide-plan.md)
- [BitLocker: How to enable Network Unlock](bitlocker-how-to-enable-network-unlock.md)
- [BitLocker overview](bitlocker-overview.md)
 
 

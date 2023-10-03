---
title: Manage BitLocker in your organization
description: Learn how to use different tools to manage BitLocker in your organization.
ms.collection: 
  - tier1
ms.topic: how-to
ms.date: 07/25/2023
---

# Manage BitLocker in your organization

BitLocker drive encryption tools include the two command-line tools *manage-bde.exe* and *repair-bde.exe*, and the BitLocker PowerShell module.

The tools can be used to perform any tasks that can be accomplished through the BitLocker control panel and are appropriate to use for automated deployments and other scripting scenarios.


Follow the instructions below to configure your devices, selecting the option that best suits your needs.

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

Similar to manage-bde, the PowerShell cmdlets allow configuration beyond the options offered in the control panel. A good initial step is to determine the current state of the volume(s) on the computer. For example, to determine the current state of a volume you can use the `Get-BitLockerVolume` cmdlet, which provides information on the volume type, protectors, protection status, and other details.

```powershell
PS C:\> Get-BitLockerVolume C: | fl

ComputerName         : DESKTOP
MountPoint           : C:
EncryptionMethod     : XtsAes128
AutoUnlockEnabled    :
AutoUnlockKeyStored  : False
MetadataVersion      : 2
VolumeStatus         : FullyEncrypted
ProtectionStatus     : On
LockStatus           : Unlocked
EncryptionPercentage : 100
WipePercentage       : 0
VolumeType           : OperatingSystem
CapacityGB           : 1000
KeyProtector         : {Tpm, RecoveryPassword}
```

To remove the existing protectors prior to provisioning BitLocker on the volume, use the `Remove-BitLockerKeyProtector` cmdlet. Running this cmdlet requires the GUID associated with the protector to be removed.

The following commands return the list of key protectors and GUIDS:

```PowerShell
$vol = Get-BitLockerVolume
$keyprotectors = $vol.KeyProtector
$keyprotectors
```

By using this information, the key protector for a specific volume can be removed using the command:

```powershell
Remove-BitLockerKeyProtector <volume>: -KeyProtectorID "{GUID}"
```

> [!NOTE]
> The BitLocker cmdlet requires the key protector GUID enclosed in quotation marks to execute. Ensure the entire GUID, with braces, is included in the command.

#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)

```cmd
C:\>manage-bde -status

Volume C: [Local Disk]
[OS Volume]

    Size:                 1000 GB
    BitLocker Version:    2.0
    Conversion Status:    Used Space Only Encrypted
    Percentage Encrypted: 100.0%
    Encryption Method:    XTS-AES 128
    Protection Status:    Protection On
    Lock Status:          Unlocked
    Identification Field: Unknown
    Key Protectors:
        TPM
        Numerical Password
```

#### [:::image type="icon" source="images/controlpanel.svg"::: **Control Panel**](#tab/controlpanel)

---

## Manage-bde

Manage-bde is a command-line tool that can be used for scripting BitLocker operations. Manage-bde offers additional options not displayed in the BitLocker control panel. For a complete list of the `manage-bde.exe` options, see the [Manage-bde](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/ff829849(v=ws.11)) command-line reference.

Manage-bde includes fewer default settings and requires greater customization for configuring BitLocker. For example, using just the `manage-bde.exe -on` command on a data volume will fully encrypt the volume without any authenticating protectors. A volume encrypted in this manner still requires user interaction to turn on BitLocker protection, even though the command successfully completed because an authentication method needs to be added to the volume for it to be fully protected. The following sections provide examples of common usage scenarios for manage-bde.

### Using manage-bde with operating system volumes

Listed below are examples of basic valid commands for operating system volumes. In general, using only the `manage-bde.exe -on <drive letter>` command will encrypt the operating system volume with a TPM-only protector and no recovery key. However, many environments require more secure protectors such as passwords or PIN and expect information recovery with a recovery key. It's recommended to add at least one primary protector plus a recovery protector to an operating system volume.

A good practice when using `manage-bde.exe` is to determine the volume status on the target system. Use the following command to determine volume status:



This command returns the volumes on the target, current encryption status, encryption method, and volume type (operating system or data) for each volume.

The following example illustrates enabling BitLocker on a computer without a TPM chip. Before beginning the encryption process, the startup key needed for BitLocker must be created and saved to a USB drive. When BitLocker is enabled for the operating system volume, BitLocker will need to access the USB flash drive to obtain the encryption key. In this example, the drive letter E represents the USB drive. Once the commands are run, it will prompt to reboot the computer to complete the encryption process.

```cmd
manage-bde.exe -protectors -add C: -startupkey E:
manage-bde.exe -on C:
```

> [!NOTE]
> After the encryption is completed, the USB startup key must be inserted before the operating system can be started.

An alternative to the startup key protector on non-TPM hardware is to use a password and an **ADaccountorgroup** protector to protect the operating system volume. In this scenario, the protectors are added first. To add the protectors, enter the following command:

```cmd
manage-bde.exe -protectors -add C: -pw -sid <user or group>
```

The above command will require the password protector to be entered and confirmed before adding them to the volume. With the protectors enabled on the volume, BitLocker can then be turned on.

On computers with a TPM, it's possible to encrypt the operating system volume without defining any protectors using `manage-bde.exe`. To enable BitLocker on a computer with a TPM without defining any protectors, enter the following command:

```cmd
manage-bde.exe -on C:
```

The above command encrypts the drive using the TPM as the default protector. If verify if a TPM protector is available, the list of protectors available for a volume can be listed by running the following command:

```cmd
 manage-bde.exe -protectors -get <volume>
```

## Manage data volumes

Follow the instructions below to configure your devices, selecting the option that best suits your needs.

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

Data volume encryption using Windows PowerShell is the same as for operating system volumes. Add the desired protectors prior to encrypting the volume. The following example adds a password protector to the E: volume using the variable $pw as the password. The $pw variable is held as a
SecureString value to store the user-defined password.

```powershell
$pw = Read-Host -AsSecureString
<user inputs password>
Enable-BitLockerKeyProtector E: -PasswordProtector -Password $pw
```

> [!NOTE]
> The BitLocker cmdlet requires the key protector GUID enclosed in quotation marks to execute. Ensure the entire GUID, with braces, is included in the command.

#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)

Data volumes use the same syntax for encryption as operating system volumes but they don't require protectors for the operation to complete. Encrypting data volumes can be done using the base command:

`manage-bde.exe -on <drive letter>`

or additional protectors can be added to the volume first. It's recommended to add at least one primary protector plus a recovery protector to a data volume.

A common protector for a data volume is the password protector. In the example below, a password protector is added to the volume and then BitLocker is turned on.

```cmd
manage-bde.exe -protectors -add -pw C:
manage-bde.exe -on C:
```
#### [:::image type="icon" source="images/controlpanel.svg"::: **Control Panel**](#tab/controlpanel)

---

## BitLocker Repair Tool

Hard disk areas on which BitLocker stores critical information could be damaged, for example, when a hard disk fails or if Windows exits unexpectedly.

The BitLocker Repair Tool (*repair-bde.exe*) is useful for disaster recovery scenarios, in which a BitLocker protected drive can't be unlocked normally or using the recovery console.

The Repair Tool can reconstruct critical parts of the drive and salvage recoverable data, as long as a valid recovery password or recovery key is used to decrypt the data. If the BitLocker metadata data on the drive is corrupt, the backup key package in addition to the recovery password or recovery key must be supplied. The key package is backed up in Active Directory Domain Services (AD DS) if the default settings for AD DS backup are used. With the key package and either the recovery password or recovery key, portions of a corrupted BitLocker-protected drive can be decrypted. Each key package works only for a drive that has the corresponding drive identifier. The BitLocker Recovery Password Viewer can be used to obtain this key package from AD DS.

> [!TIP]
> If recovery information is not backed up to AD DS or if key packages need to be saved in an alternative way, use the following command to generate a key package for a volume:
>
> `manage-bde.exe -KeyPackage`

The Repair Tool is intended for use when the operating system doesn't start or when the BitLocker Recovery Console can't be started. Use Repair-bde in the following conditions:

- The drive is encrypted using BitLocker Drive Encryption
- Windows doesn't start, or the BitLocker recovery console can't start
- There isn't a backup copy of the data that is contained on the encrypted drive

> [!NOTE]
> Damage to the drive may not be related to BitLocker. Therefore, it is recommended to try other tools to help diagnose and resolve the problem with the drive before using the BitLocker Repair Tool. The Windows Recovery Environment (Windows RE) provides additional options to repair computers.

The following limitations exist for Repair-bde:

- The Repair-bde command-line tool can't repair a drive that failed during the encryption or decryption process.

- The Repair-bde command-line tool assumes that if the drive has any encryption, then the drive has been fully encrypted.

For more information about using repair-bde, see [Repair-bde](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/ff829851(v=ws.11)).

## BitLocker PowerShell module

The BitLocker PowerShell module enables administrators to integrate BitLocker options into existing scripts with ease. Here's a lists of the cmdlets included in the BitLocker PowerShell module:

- `Add-BitLockerKeyProtector`
- `Backup-BitLockerKeyProtector`
- `BackupToAAD-BitLockerKeyProtector`
- `Clear-BitLockerAutoUnlock`
- `Disable-BitLocker`
- `Disable-BitLockerAutoUnlock`
- `Enable-BitLocker`
- `Enable-BitLockerAutoUnlock`
- `Get-BitLockerVolume`
- `Lock-BitLocker`
- `Remove-BitLockerKeyProtector`
- `Resume-BitLocker`
- `Suspend-BitLocker`
- `Unlock-BitLocker`



### Using the BitLocker Windows PowerShell cmdlets with operating system volumes

Using the BitLocker Windows PowerShell cmdlets is similar to working with the manage-bde tool for encrypting operating system volumes. Windows PowerShell offers users flexibility. For example, users can add the desired protector as part command for encrypting the volume. Below are examples of common user scenarios and steps to accomplish them in BitLocker Windows PowerShell.

The following example shows how to enable BitLocker on an operating system drive using only the TPM protector:

```powershell
Enable-BitLocker C:
```

In the example below, adds one additional protector, the StartupKey protector and chooses to skip the BitLocker hardware test. In this example, encryption starts immediately without the need for a reboot.

```powershell
Enable-BitLocker C: -StartupKeyProtector -StartupKeyPath <path> -SkipHardwareTest
```

### Using an SID-based protector in Windows PowerShell

The **ADAccountOrGroup** protector is an Active Directory SID-based protector. This protector can be added to both operating system and data volumes, although it doesn't unlock operating system volumes in the pre-boot environment. The protector requires the SID for the domain account or group to link with the protector. BitLocker can protect a cluster-aware disk by adding an SID-based protector for the Cluster Name Object (CNO) that lets the disk properly failover and unlock to any member computer of the cluster.

> [!WARNING]
> The SID-based protector requires the use of an additional protector such as TPM, PIN, recovery key, etc. when used on operating system volumes.

To add an **ADAccountOrGroup** protector to a volume, either the domain SID is needed or the group name preceded by the domain and a backslash. In the example below, the **CONTOSO\\Administrator** account is added as a protector to the data volume G.

```powershell
Enable-BitLocker G: -AdAccountOrGroupProtector -AdAccountOrGroup CONTOSO\Administrator
```

For users who wish to use the SID for the account or group, the first step is to determine the SID associated with the account. To get the specific SID for a user account in Windows PowerShell, use the following command:

```powershell
Get-ADUser -filter {samaccountname -eq "administrator"}
```

> [!NOTE]
> Use of this command requires the RSAT-AD-PowerShell feature.

> [!TIP]
> In addition to the Windows PowerShell command above, information about the locally logged on user and group membership can be found using: `WHOAMI /ALL`. This doesn't require the use of additional features.

In the example below, the user wishes to add a domain SID-based protector to the previously encrypted operating system volume. The user knows the SID for the user account or group they wish to add and uses the following command:

```powershell
Add-BitLockerKeyProtector C: -ADAccountOrGroupProtector -ADAccountOrGroup "<SID>"
```

> [!NOTE]
> Active Directory-based protectors are normally used to unlock Failover Cluster-enabled volumes.



### Decrypt volumes

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)


Decryption with Windows PowerShell cmdlets is straightforward, similar to `manage-bde.exe`. Windows PowerShell offers the ability to decrypt multiple drives in one pass. In the example below, the user has three encrypted volumes, which they wish to decrypt.

Using the Disable-BitLocker command, they can remove all protectors and encryption at the same time without the need for more commands. An example of this command is:

```powershell
Disable-BitLocker
```

If a user didn't want to input each mount point individually, using the `-MountPoint` parameter in an array can sequence the same command into one line without requiring additional user input. An example command is:

```powershell
Disable-BitLocker -MountPoint E:,F:,G:
```


#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)


Decrypting volumes using `manage-bde.exe` is straightforward. Decryption with `manage-bde.exe` offers the advantage of not requiring user confirmation to start the process. Manage-bde uses the -off command to start the decryption process. A sample command for decryption is:

```powershell
manage-bde.exe -off C:
```

This command disables protectors while it decrypts the volume and removes all protectors when decryption is complete. If users wish to check the status of the decryption, they can use the following command:

```powershell
manage-bde.exe -status C:
```

#### [:::image type="icon" source="images/controlpanel.svg"::: **Control Panel**](#tab/controlpanel)

BitLocker decryption using the control panel is done using a wizard. The control panel can be called from Windows Explorer or by opening it directly. After opening the BitLocker control panel, users will select the **Turn off BitLocker** option to begin the process.
After selecting the **Turn off BitLocker** option, the user chooses to continue by clicking the confirmation dialog. With **Turn off BitLocker** confirmed, the drive decryption process begins and reports status to the control panel.

The control panel doesn't report decryption progress but displays it in the notification area of the task bar. Selecting the notification area icon will open a modal dialog with progress.

Once decryption is complete, the drive updates its status in the control panel and becomes available for encryption.

---
---
title: BitLocker operations guide
description: Learn how to use different tools to manage and operate BitLocker.
ms.topic: how-to
ms.date: 06/18/2024
---

# BitLocker operations guide

There are different tools and options to manage and operate BitLocker:

- the BitLocker PowerShell module
- the BitLocker drive encryption tools
- Control Panel

The BitLocker drive encryption tools and BitLocker PowerShell module can be used to perform any tasks that can be accomplished through the BitLocker Control Panel. They're appropriate to use for automated deployments and other scripting scenarios.\
The BitLocker Control Panel applet allows users to perform basic tasks such as turning on BitLocker on a drive and specifying unlock methods and authentication methods. The BitLocker Control Panel applet is appropriate to use for basic BitLocker tasks.

This article describes the BitLocker management tools and how to use them, providing practical examples.

## BitLocker PowerShell module

The BitLocker PowerShell module enables administrators to integrate BitLocker options into existing scripts with ease. For a list of cmdlets included in module, their description and syntax, check the [BitLocker PowerShell reference article][PS-1].

## BitLocker drive encryption tools

The BitLocker drive encryption tools include the two command-line tools:

- *Configuration Tool* (`manage-bde.exe`) can be used for scripting BitLocker operations, offering options that aren't present in the BitLocker Control Panel applet. For a complete list of the `manage-bde.exe` options, see the [Manage-bde reference][PREV-1]
- *Repair Tool* (`repair-bde.exe`) is useful for disaster recovery scenarios, in which a BitLocker protected drive can't be unlocked normally or using the recovery console

## BitLocker Control Panel applet

Encrypting volumes with the BitLocker Control Panel (select **Start**, enter `BitLocker`, select **Manage BitLocker**) is how many users will use BitLocker. The name of the BitLocker Control Panel applet is *BitLocker Drive Encryption*. The applet supports encrypting operating system, fixed data, and removable data volumes. The BitLocker Control Panel organizes available drives in the appropriate category based on how the device reports itself to Windows. Only formatted volumes with assigned drive letters appear properly in the BitLocker Control Panel applet.

### Use BitLocker within Windows Explorer

Windows Explorer allows users to launch the **BitLocker Drive Encryption Wizard** by right-clicking a volume and selecting **Turn On BitLocker**. This option is available on client computers by default. On servers, the BitLocker feature and the Desktop-Experience feature must first be installed for this option to be available. After selecting **Turn on BitLocker**, the wizard works exactly as it does when launched using the BitLocker Control Panel.

## Check the BitLocker status

To check the BitLocker status of a particular volume, administrators can look at the status of the drive in the BitLocker Control Panel applet, Windows Explorer, `manage-bde.exe` command-line tool, or Windows PowerShell cmdlets. Each option offers different levels of detail and ease of use.

Follow the instructions below verify the status of BitLocker, selecting the tool of your choice.

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

To determine the current state of a volume you can use the `Get-BitLockerVolume` cmdlet, which provides information on the volume type, protectors, protection status, and other details. For example:

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

#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)

With `manage-bde.exe` you can determine the volume status on the target system, for example:

```cmd
manage-bde.exe -status
```

This command returns the volumes on the target, current encryption status, encryption method, and volume type (operating system or data) for each volume.

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

Checking BitLocker status with the Control Panel is a common method used by most users. Once opened, the status for each volume is displayed next to the volume description and drive letter. Available status return values with applet include:

| Status | Description |
| - | - |
| **On**|BitLocker is enabled for the volume |
| **Off**| BitLocker isn't enabled for the volume |
| **Suspended** | BitLocker is suspended and not actively protecting the volume |
| **Waiting for Activation**| BitLocker is enabled with a clear protector key and requires further action to be fully protected|

If a drive is pre-provisioned with BitLocker, a status of **Waiting for Activation** displays with a yellow exclamation icon on the volume. This status means that there was only a clear protector used when encrypting the volume. In this case, the volume isn't in a protected state and needs to have a secure key added to the volume before the drive is fully protected. Administrators can use the Control Panel, PowerShell or `manage-bde.exe` to add an appropriate key protector. Once complete, the Control Panel updates to reflect the new status.

---

## Enable BitLocker

### OS drive with TPM protector

The following example shows how to enable BitLocker on an operating system drive using only the TPM protector and no recovery key:

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

```powershell
Enable-BitLocker C: -TpmProtector
```
#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)

```cmd
manage-bde.exe -on C:
```

#### [:::image type="icon" source="images/controlpanel.svg"::: **Control Panel**](#tab/controlpanel)

From the **BitLocker Drive Encryption** Control Panel applet:

1. Expand the OS drive and select the option **Turn on BitLocker**
1. When prompted, select the option **Let BitLocker automatically unlock my drive**
1. Back up the *recovery key* using one of the following methods:

   - **Save to your Microsoft Entra ID account** or **Microsoft Account** (if applicable)
   - **Save to a USB flash drive**
   - **Save to a file** - the file needs to be saved to a location that isn't on the device itself such as a network folder
   - **Print the recovery key**

1. Select **Next**
1. Choose one of the options to **encrypt used disk space only** or **encrypt entire drive** and select **Next**

   - **Encrypt used disk space only** - Encrypts only disk space that contains data
   - **Encrypt entire drive** - Encrypts the entire volume including free space. Also known as full disk encryption

    Each of the methods is recommended in the following scenarios:

     - **Encrypt used disk space only**:

       - The drive has never had data
       - Formatted or erased drives that in the past have never had confidential data that was never encrypted

     - **Encrypt entire drive** (full disk encryption):

       - Drives that currently have data
       - Drives that currently have an operating system
       - Formatted or erased drives that in the past had confidential data that was never encrypted

    > [!IMPORTANT]
    > Deleted files appear as free space to the file system, which isn't encrypted by **used disk space only**. Until they are wiped or overwritten, deleted files hold information that could be recovered with common data forensic tools.

1. Select an encryption mode and select **Next**

   - **New encryption mode**
   - **Compatible mode**

    > [!NOTE]
    > Normally **New encryption mode** should be chosen, but if the drive will be potentially moved to another device with an older Windows operating system, select **Compatible mode**
1. Select **Continue** > **Restart now**
1. After reboot, the OS performs a BitLocker system check and start encryption

Users can check encryption status using the BitLocker Control Panel applet.

> [!NOTE]
> After a recovery key is created, the BitLocker Control Panel can be used to make additional copies of the recovery key.

---

### OS drive with TPM protector and startup key

The following example shows how to enable BitLocker on an operating system drive using the TPM and *startup key* protectors.

Assuming the OS drive letter is `C:` and the USB flash drive is drive letter `E:`, here's the command:

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

If you choose to skip the BitLocker hardware test, encryption starts immediately without the need for a reboot.

```powershell
Enable-BitLocker C: -StartupKeyProtector -StartupKeyPath E: -SkipHardwareTest
```

#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)

```cmd
manage-bde.exe -protectors -add C: -TPMAndStartupKey E:
manage-bde.exe -on C:
```

If prompted, reboot the computer to complete the encryption process.

> [!NOTE]
> After the encryption is completed, the USB startup key must be inserted before the operating system can be started.

#### [:::image type="icon" source="images/controlpanel.svg"::: **Control Panel**](#tab/controlpanel)

The Control Panel applet doesn't allow enabling BitLocker and adding a startup key protector at the same time. To add a startup key protector, follow these steps:

- From the **BitLocker Drive Encryption** Control Panel applet, under the OS drive, select the option **Change how drive is unlocked at startup**
- When prompted, select the option **Insert a USB flash drive**
- Selecting the USB drive where you want to store the startup key, and select **Save**

---

After reboot, the BitLocker preboot screen displays and the USB startup key must be inserted before the operating system can be started:

:::image type="content" source="images/preboot-startup-key.png" alt-text="Screenshot of the BitLocker preboot screen asking for a USB drive containing the startup key.":::

### Data volumes

Data volumes use a similar process for encryption as operating system volumes, but they don't require protectors for the operation to complete.

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

Add the desired protectors prior to encrypting the volume. The following example adds a password protector to the `E:` volume using the variable `$pw` as the password. The `$pw` variable is held as a SecureString value to store the user-defined password:

```powershell
$pw = Read-Host -AsSecureString
<user inputs password>
Add-BitLockerKeyProtector E: -PasswordProtector -Password $pw
```

> [!NOTE]
> The BitLocker cmdlet requires the key protector GUID enclosed in quotation marks to execute. Ensure the entire GUID, with braces, is included in the command.

**Example**: Use PowerShell to enable BitLocker with a TPM protector

```powershell
Enable-BitLocker D: -EncryptionMethod XtsAes256 -UsedSpaceOnly -TpmProtector
```

**Example**: Use PowerShell to enable BitLocker with a TPM+PIN protector, in this case with a PIN set to *123456*:

```powershell
$SecureString = ConvertTo-SecureString "123456" -AsPlainText -Force
Enable-BitLocker C: -EncryptionMethod XtsAes256 -UsedSpaceOnly -Pin $SecureString -TPMandPinProtector
```

#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)

Encrypting data volumes can be done using the base command:

```cmd
manage-bde.exe -on <drive letter>
```

or additional protectors can be added to the volume first. It's recommended to add at least one primary protector plus a recovery protector to a data volume.

#### [:::image type="icon" source="images/controlpanel.svg"::: **Control Panel**](#tab/controlpanel)

Encrypting data volumes using the BitLocker Control Panel works in a similar fashion to encryption of the operating system volumes. Users select **Turn on BitLocker** within the BitLocker Control Panel to begin the **BitLocker Drive Encryption Wizard**.

---

## Manage BitLocker protectors

The management of BitLocker protectors consists in adding, removing, and backing up protectors.

Managed BitLocker protectors by using the following instructions, selecting the option that best suits your needs.

### List protectors

The list of protectors available for a volume (`C:` in the example) can be listed by running the following command:

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

```PowerShell
(Get-BitLockerVolume -mountpoint C).KeyProtector
```

#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)

```cmd
 manage-bde.exe -protectors -get C:
```

#### [:::image type="icon" source="images/controlpanel.svg"::: **Control Panel**](#tab/controlpanel)

This information isn't available in the Control Panel.

---

### Add protectors

#### Add a recovery password protector

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)


```PowerShell
Add-BitLockerKeyProtector -MountPoint C -RecoveryPasswordProtector
```

#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)

```cmd
manage-bde.exe -protectors -add -recoverypassword C:
```

#### [:::image type="icon" source="images/controlpanel.svg"::: **Control Panel**](#tab/controlpanel)

From the **BitLocker Drive Encryption** Control Panel applet, select the volume where you want to add a protector and select the option **Back up your recovery key**.

---

#### Add a password protector

A common protector for a *data volume* is the *password protector*. In the next example, a password protector is added to a volume.

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

```PowerShell
Add-BitLockerKeyProtector -MountPoint D -PasswordProtector
```

#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)

```cmd
manage-bde.exe -protectors -add -pw D:
```

#### [:::image type="icon" source="images/controlpanel.svg"::: **Control Panel**](#tab/controlpanel)

From the **BitLocker Drive Encryption** Control Panel applet, expand the drive where you want to add a password protector and select the option **Add password**. When prompted, enter and confirm a password to unlock the drive. Select **Finish** to complete the process.

---

#### Add an Active Directory protector

The Active Directory protector is a SID-based protector that can be added to both operating system and data volumes, although it doesn't unlock operating system volumes in the preboot environment. The protector requires the SID for the domain account or group to link with the protector. BitLocker can protect a cluster-aware disk by adding an SID-based protector for the Cluster Name Object (CNO) that lets the disk properly failover and unlock to any member computer of the cluster.

> [!IMPORTANT]
> The SID-based protector requires the use of an additional protector such as TPM, PIN, recovery key, etc. when used on operating system volumes.

> [!NOTE]
> This option is not available for Microsoft Entra joined devices.

In this example, a domain SID-based protector is added to a previously encrypted volume. The user knows the SID for the user account or group they wish to add and uses the following command:

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

```powershell
Add-BitLockerKeyProtector C: -ADAccountOrGroupProtector -ADAccountOrGroup "<SID>"
```

To add the protector to a volume, either the domain SID or the group name preceded by the domain and a backslash are needed. In the following example, the **CONTOSO\\Administrator** account is added as a protector to the data volume G.

```powershell
Enable-BitLocker G: -AdAccountOrGroupProtector -AdAccountOrGroup CONTOSO\Administrator
```

To use the SID for the account or group, the first step is to determine the SID associated with the security principal. To get the specific SID for a user account in Windows PowerShell, use the following command:

```powershell
Get-ADUser -filter {samaccountname -eq "administrator"}
```

> [!NOTE]
> Use of this command requires the RSAT-AD-PowerShell feature.

> [!TIP]
> Information about the locally logged on user and group membership can be found using: `whoami.exe /all`.

#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)

```cmd
manage-bde.exe -protectors -add -sid <user or group>
```

#### [:::image type="icon" source="images/controlpanel.svg"::: **Control Panel**](#tab/controlpanel)

This option isn't available in the Control Panel.

---

### Remove protectors

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

To remove existing protectors on a volume, use the `Remove-BitLockerKeyProtector` cmdlet. A GUID associated with the protector to be removed must be provided.

The following commands return the list of key protectors and GUIDS:

```PowerShell
$vol = Get-BitLockerVolume C
$keyprotectors = $vol.KeyProtector
$keyprotectors
```

By using this information, the key protector for a specific volume can be removed using the command:

```powershell
Remove-BitLockerKeyProtector <volume> -KeyProtectorID "{GUID}"
```

> [!NOTE]
> The BitLocker cmdlet requires the key protector GUID enclosed in quotation marks to execute. Ensure the entire GUID, with braces, is included in the command.

#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)

The following commands return the list of key protectors:

```cmd
manage-bde.exe -status C:
```

The following command removes keys protector of a certain type:

```cmd
manage-bde.exe -protectors -delete C: -type TPMandPIN
```

#### [:::image type="icon" source="images/controlpanel.svg"::: **Control Panel**](#tab/controlpanel)

From the **BitLocker Drive Encryption** Control Panel applet, expand the drive where you want to remove a protector and select the option to remove it, if available.

---

> [!NOTE]
> You must have at least one unlock method for any BitLocker-encrypted drives.

## Suspend and resume

Some configuration changes may require to suspend BitLocker and then resume it after the change is applied.

Suspend and resume BitLocker by using the following instructions, selecting the option that best suits your needs.

### Suspend BitLocker

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

```powershell
Suspend-BitLocker -MountPoint D
```

#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)

```cmd
manage-bde.exe -protectors -disable d:
```

#### [:::image type="icon" source="images/controlpanel.svg"::: **Control Panel**](#tab/controlpanel)

You can only suspend BitLocker protection for the OS drive when using the Control Panel.

From the **BitLocker Drive Encryption** Control Panel applet, select the OS drive and select the option **Suspend protection**.

---

### Resume BitLocker

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

```powershell
Resume-BitLocker -MountPoint D
```

#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)

```cmd
manage-bde.exe -protectors -enable d:
```

#### [:::image type="icon" source="images/controlpanel.svg"::: **Control Panel**](#tab/controlpanel)

From the **BitLocker Drive Encryption** Control Panel applet, select the OS drive and select the option **Resume protection**.

---

## Reset and backup a recovery password

It's recommended to invalidate a recovery password after its use. In this example the recovery password protector is removed from the OS drive, a new protector added, and backed up to Microsoft Entra ID or Active Directory.

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

Remove all recovery passwords from the OS volume:

```PowerShell
(Get-BitLockerVolume -MountPoint $env:SystemDrive).KeyProtector | `
  where-object {$_.KeyProtectorType -eq 'RecoveryPassword'} | `
  Remove-BitLockerKeyProtector -MountPoint $env:SystemDrive
```

Add a BitLocker recovery password protector for the OS volume:

```PowerShell
Add-BitLockerKeyProtector -MountPoint $env:SystemDrive -RecoveryPasswordProtector
```

Obtain the ID of the new recovery password:

```PowerShell
(Get-BitLockerVolume -mountpoint $env:SystemDrive).KeyProtector | where-object {$_.KeyProtectorType -eq 'RecoveryPassword'} | ft KeyProtectorId,RecoveryPassword
```

> [!NOTE]
>This next steps are not required if the policy setting [Choose how BitLocker-protected operating system drives can be recovered](configure.md?tabs=os#choose-how-bitlocker-protected-operating-system-drives-can-be-recovered) is configured to **Require BitLocker backup to AD DS**.

Copy the ID of the recovery password from the output.

Using the GUID from the previous step, replace the `{ID}` in the following command and use the following command to back up the recovery password to Microsoft Entra ID:

```PowerShell
BackuptoAAD-BitLockerKeyProtector -MountPoint $env:SystemDrive -KeyProtectorId "{ID}"
```

Or use the following command to back up the recovery password to Active Directory:

```PowerShell
Backup-BitLockerKeyProtector -MountPoint $env:SystemDrive -KeyProtectorId "{ID}"
```

> [!NOTE]
> The braces `{}` must be included in the ID string.

#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)

Remove all recovery passwords from the OS volume:

```cmd
manage-bde.exe -protectors -delete C: -type RecoveryPassword
```

Add a BitLocker recovery password protector for the OS volume:

```cmd
manage-bde.exe -protectors -add C: -RecoveryPassword
```

Obtain the ID of the new recovery password:

```cmd
manage-bde.exe -protectors -get C: -Type RecoveryPassword
```

> [!NOTE]
>This following steps are not required if the policy setting [Choose how BitLocker-protected operating system drives can be recovered](configure.md?tabs=os#choose-how-bitlocker-protected-operating-system-drives-can-be-recovered) is configured to **Require BitLocker backup to AD DS**.

Using the GUID from the previous step, replace the `{ID}` in the following command and use the following command to back up the recovery password to Microsoft Entra ID:

```cmd
manage-bde.exe -protectors -aadbackup C: -id {ID}
```

Or use the following command to back up the recovery password to Active Directory:

```cmd
manage-bde.exe -protectors -adbackup C: -id {ID}
```

> [!NOTE]
> The braces `{}` must be included in the ID string.

#### [:::image type="icon" source="images/controlpanel.svg"::: **Control Panel**](#tab/controlpanel)

This process can't be accomplished using the Control Panel. Use one of the other options instead.

---

## Disable BitLocker

Disabling BitLocker decrypts and removes any associated protectors from the volumes. Decryption should occur when protection is no longer required, and not as a troubleshooting step.

Disable BitLocker by using the following instructions, selecting the option that best suits your needs.

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

Windows PowerShell offers the ability to decrypt multiple drives in one pass. In the following example, the user has three encrypted volumes, which they wish to decrypt.

Using the Disable-BitLocker command, they can remove all protectors and encryption at the same time without the need for more commands. An example of this command is:

```powershell
Disable-BitLocker
```

To avoid specifying each mount point individually, use the `-MountPoint` parameter in an array to sequence the same command into one line, without requiring additional user input. Example:

```powershell
Disable-BitLocker -MountPoint C,D
```

#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)

Decryption with `manage-bde.exe` offers the advantage of not requiring user confirmation to start the process. Manage-bde uses the -off command to start the decryption process. A sample command for decryption is:

```cmd
manage-bde.exe -off C:
```

This command disables protectors while it decrypts the volume and removes all protectors when decryption is complete.

#### [:::image type="icon" source="images/controlpanel.svg"::: **Control Panel**](#tab/controlpanel)

BitLocker decryption using the Control Panel is done using a wizard. After opening the BitLocker Control Panel applet, select the **Turn off BitLocker** option to begin the process. To proceed, select the confirmation dialog. With **Turn off BitLocker** confirmed, the drive decryption process begins.

Once decryption is complete, the drive updates its status in the Control Panel and becomes available for encryption.

---

<!--links-->

[PREV-1]: /previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/ff829849(v=ws.11)
[PS-1]: /powershell/module/bitlocker

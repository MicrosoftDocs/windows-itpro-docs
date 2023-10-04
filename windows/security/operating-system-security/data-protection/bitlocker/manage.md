---
title: BitLocker management tools
description: Learn how to use different tools to operate BitLocker.
ms.collection: 
  - tier1
ms.topic: how-to
ms.date: 07/25/2023
---

# BitLocker management tools

There are differnt tools and options to manage and operate BitLocker:

- the BitLocker PowerShell module
- the BitLocker drive encryption tools
- Control Panel

The BitLocker drive encryption tools and BitLocker PowerShell module can be used to perform any tasks that can be accomplished through the BitLocker control panel. They are appropriate to use for automated deployments and other scripting scenarios.\
The BitLocker Control Panel applet allows users to perform basic tasks such as turning on BitLocker on a drive and specifying unlock methods and authentication methods. The BitLocker Control Panel applet is appropriate to use for basic BitLocker tasks.

This article describes the BitLocker management tools and how to use them, providing practical examples.

## BitLocker PowerShell module

The BitLocker PowerShell module enables administrators to integrate BitLocker options into existing scripts with ease. For a list of cmdlets included in module, their description and syntax, che the [BitLocker PowerShell reference article](/powershell/module/bitlocker).

## BitLocker drive encryption tools

The BitLocker drive encryption tools include the two command-line tools:

- *Configuration Tool* (`manage-bde.exe`) can be used for scripting BitLocker operations, offering options that aren't present in the BitLocker Control Panel applet. For a complete list of the `manage-bde.exe` options, see the [Manage-bde](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/ff829849(v=ws.11)) command-line reference
- *Repair Tool* (`repair-bde.exe`) is useful for disaster recovery scenarios, in which a BitLocker protected drive can't be unlocked normally or using the recovery console

### Repair tool

The Repair Tool can reconstruct critical parts of the drive and salvage recoverable data, as long as a valid recovery password or recovery key is used to decrypt the data. If the BitLocker metadata data on the drive is corrupt, the backup key package in addition to the recovery password or recovery key must be supplied. With the key package and either the recovery password or recovery key, portions of a corrupted BitLocker-protected drive can be decrypted. Each key package works only for a drive that has the corresponding drive identifier

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

- it can't repair a drive that failed during the encryption or decryption process
- it assumes that if the drive has any encryption, then the drive is fully encrypted

For more information about using repair-bde, see [Repair-bde](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/ff829851(v=ws.11)).

## Using BitLocker to encrypt volumes

BitLocker provides full volume encryption (FVE) for operating system volumes, and fixed and removable data drives. To support fully encrypted operating system drives, BitLocker uses an unencrypted system partition for the files required to boot, decrypt, and load the operating system. This volume is automatically created during a new installation of both client and server operating systems.

If the drive was prepared as a single contiguous space, BitLocker requires a new volume to hold the boot files. BdeHdCfg.exe can create these volumes.

> [!NOTE]
> For more info about using this tool, see [Bdehdcfg](/windows-server/administration/windows-commands/bdehdcfg) in the Command-Line Reference.

`Manage-bde.exe` is a command-line utility that can be used for scripting BitLocker operations. `Manage-bde.exe` offers additional options not displayed in the BitLocker control panel. For a complete list of the options, see [Manage-bde](/windows-server/administration/windows-commands/manage-bde).

`Manage-bde.exe` offers a multitude of wider options for configuring BitLocker. Using the command syntax may require care. For example, using just the `manage-bde.exe -on` command on a data volume will fully encrypt the volume without any authenticating protectors. A volume encrypted in this manner still requires user interaction to turn on BitLocker protection, even though the command successfully completed. For the volume to be fully protected, an authentication method needs to also be added to the volume in addition to running the `manage-bde.exe`command.

Command-line users need to determine the appropriate syntax for a given situation. The following section covers general encryption for operating system volumes and data volumes.

## Example: check the BitLocker status

To check the BitLocker status of a particular volume, administrators can look at the status of the drive in the BitLocker control panel applet, Windows Explorer, `manage-bde.exe` command-line tool, or Windows PowerShell cmdlets. Each option offers different levels of detail and ease of use.

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

`manage-bde.exe -status`

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

Checking BitLocker status with the control panel is a common method used by most users. Once opened, the status for each volume is displayed next to the volume description and drive letter. Available status return values with applet include:

| Status | Description |
| - | - |
| **On**|BitLocker is enabled for the volume |
| **Off**| BitLocker isn't enabled for the volume |
| **Suspended** | BitLocker is suspended and not actively protecting the volume |
| **Waiting for Activation**| BitLocker is enabled with a clear protector key and requires further action to be fully protected|

If a drive is pre-provisioned with BitLocker, a status of **Waiting for Activation** displays with a yellow exclamation icon on the volume. This status means that there was only a clear protector used when encrypting the volume. In this case, the volume isn't in a protected state and needs to have a secure key added to the volume before the drive is fully protected. Administrators can use the control panel, PowerShell or `manage-bde.exe` tool to add an appropriate key protector. Once complete, the Control Panel will update to reflect the new status.

---

## Example: enable BitLocker

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

The following example shows how to enable BitLocker on an operating system drive using only the TPM protector:

```powershell
Enable-BitLocker C:
```

In the next example, we add one more protector, the *StartupKey* protector, and choose to skip the BitLocker hardware test. Encryption starts immediately without the need for a reboot:

```powershell
Enable-BitLocker C: -StartupKeyProtector -StartupKeyPath <path> -SkipHardwareTest
```

#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)

Using only the `manage-bde.exe -on <drive letter>` command encrypts the operating system volume with a TPM-only protector and no recovery key. However, you may require more secure protectors such as passwords or PIN, and expect to be able to recover information with a recovery key.

### Enable BitLocker with a TPM only

It's possible to encrypt the operating system volume without any defined protectors by using `manage-bde.exe`. Use this command:

```cmd
manage-bde.exe -on C:
```

This command will encrypt the drive using the TPM as the protector. If users are unsure of the protector for a volume, they can use the `-protectors` option in `manage-bde.exe` to list this information by executing the following command:

```cmd
manage-bde.exe -protectors -get <volume>
```

### Provisioning BitLocker with two protectors

Another example is a user on a non-TPM hardware who wishes to add a password and SID-based protector to the operating system volume. In this instance, the user adds the protectors first. Adding the protectors is done with the command:

```cmd
manage-bde.exe -protectors -add C: -pw -sid <user or group>
```

This command requires the user to enter and then confirm the password protectors before adding them to the volume. With the protectors enabled on the volume, the user just needs to turn on BitLocker.

A common protector for a data volume is the password protector. In the next example, a password protector is added to the volume and turn on BitLocker.

```powershell
manage-bde.exe -protectors -add -pw C:
manage-bde.exe -on C:
```
### Enabling BitLocker without a TPM

Suppose BitLocker is desired on a computer without a TPM. In this scenario, a USB flash drive is needed as a startup key for the operating system volume. The startup key will then allow the computer to boot. To create the startup key using `manage-bde.exe`, the `-protectors` switch would be used specifying the `-startupkey` option. Assuming the USB flash drive is drive letter `E:`, then the following `manage-bde.exe` commands would be used t create the startup key and start the BitLocker encryption:

```powershell
manage-bde.exe -protectors -add C: -startupkey E:
manage-bde.exe -on C:
```

If prompted, reboot the computer to complete the encryption process.

### Data volume commands

Data volumes use the same syntax for encryption as operating system volumes but they don't require protectors for the operation to complete. Encrypting data volumes can be done using the base command:

```cmd
manage-bde.exe -on <drive letter>
```

Or users can choose to add protectors to the volume. It is recommended to add at least one primary protector and a recovery protector to a data volume.

#### [:::image type="icon" source="images/controlpanel.svg"::: **Control Panel**](#tab/controlpanel)

Encrypting volumes with the BitLocker control panel (select **Start**, enter `BitLocker`, select **Manage BitLocker**) is how many users will use BitLocker. The name of the BitLocker control panel is BitLocker Drive Encryption. The BitLocker control panel supports encrypting operating system, fixed data, and removable data volumes. The BitLocker control panel will organize available drives in the appropriate category based on how the device reports itself to Windows. Only formatted volumes with assigned drive letters will appear properly in the BitLocker control panel applet.

To start encryption for a volume, select **Turn on BitLocker** for the appropriate drive to initialize the **BitLocker Drive Encryption Wizard**. **BitLocker Drive Encryption Wizard** options vary based on volume type (operating system volume or data volume).

### Operating system volume

For the operating system volume the **BitLocker Drive Encryption Wizard** presents several screens that prompt for options while it performs several actions:

1. When the **BitLocker Drive Encryption Wizard**  first launches, it verifies the computer meets the BitLocker system requirements for encrypting an operating system volume. By default, the system requirements are:

    If the volume doesn't pass the initial configuration for BitLocker, the user is presented with an error dialog describing the appropriate actions to be taken.

2. Upon passing the initial configuration, users may be prompted to enter a password for the volume, for example, if a TPM isn't available. If a TPM is available, the password screen will be skipped.

3. After the initial configuration/password screens, a recovery key will be generated. The **BitLocker Drive Encryption Wizard** will prompt for a location to save the recovery key. A BitLocker recovery key is a special key that is created when BitLocker Drive Encryption is turned on for the first time on each drive that is encrypted. The recovery key can be used to gain access to the computer if:

   - The drive that Windows is installed on (the operating system drive) is encrypted using BitLocker Drive Encryption
   - BitLocker detects a condition that prevents it from unlocking the drive when the computer is starting up

    A recovery key can also be used to gain access to the files and folders on a removable data drive (such as an external hard drive or USB flash drive) that is encrypted using BitLocker To Go, if for some reason the password is forgotten or the computer can't access the drive.

    The recovery key can be stored using the following methods:

   - **Save to your Azure AD account** (if applicable)
   - **Save to a USB flash drive**
   - **Save to a file** - the file needs to be saved to a location that isn't on the computer itself such as a network folder or OneDrive
   - **Print the recovery key**

   The recovery key can't be stored at the following locations:

   - The drive being encrypted
   - The root directory of a non-removable/fixed drive
   - An encrypted volume

    > [!TIP]
    > Ideally, a computer's recovery key should be stored separate from the computer itself.

    > [!NOTE]
    > After a recovery key is created, the BitLocker control panel can be used to make additional copies of the recovery key.

4. The **BitLocker Drive Encryption Wizard** will then prompt how much of the drive to encrypt. The **BitLocker Drive Encryption Wizard** will have two options that determine how much of the drive is encrypted:

   - **Encrypt used disk space only** - Encrypts only disk space that contains data.
   - **Encrypt entire drive** - Encrypts the entire volume including free space. Also known as full disk encryption.

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

5. The **BitLocker Drive Encryption Wizard** will then prompt for an encryption mode:

   - **New encryption mode**
   - **Compatible mode**

    Normally **New encryption mode** should be chosen, but if the drive will be potentially moved to another computer with an older Windows operating system, then select **Compatible mode**.

6. After selecting an encryption mode, the **BitLocker Drive Encryption Wizard** will give the option of running a BitLocker system check via the option **Run BitLocker system check**. This system check will ensure that BitLocker can properly access the recovery and encryption keys before the volume encryption begins. it's recommended run this system check before starting the encryption process. If the system check isn't run and a problem is encountered when the operating system attempts to start, the user will need to provide the recovery key to start Windows.

After completing the system check (if selected), the **BitLocker Drive Encryption Wizard** will begin encryption. A reboot may be initiated to start encryption. If a reboot was initiated, if there was no TPM and a password was specified, the password will need to be entered to boot into the operating system volume.

Users can check encryption status by checking the system notification area or the BitLocker control panel.

Until encryption is completed, the only available options for managing BitLocker involve manipulation of the password protecting the operating system volume, backing up the recovery key, and turning off BitLocker.

### Data volume

Encrypting data volumes using the BitLocker control panel works in a similar fashion to encryption of the operating system volumes. Users select **Turn on BitLocker** within the BitLocker control panel to begin the **BitLocker Drive Encryption Wizard**.

1. Upon launching the **BitLocker Drive Encryption Wizard**, unlike for operating system volumes, data volumes aren't required to pass any configuration tests for the **BitLocker Drive Encryption Wizard** to proceed

2. A choice of authentication methods to unlock the drive appears. The available options are:

   - **Use a password to unlock the drive**
   - **Use my smart card to unlock the drive**
   - **Automatically unlock this drive on this computer** - Disabled by default but if enabled, this option will unlock the data volume without user input when the operating system volume is unlocked.

3. The **BitLocker Drive Encryption Wizard** presents options for storage of the recovery key. These options are the same as for operating system volumes:

   - **Save to your Azure AD account** (if applicable)
   - **Save to a USB flash drive**
   - **Save to a file** - the file needs to be saved to a location that isn't on the computer itself such as a network folder or OneDrive
   - **Print the recovery key**

4. After saving the recovery key, the **BitLocker Drive Encryption Wizard** will show available options for encryption. These options are the same as for operating system volumes:

   - **Encrypt used disk space only** - Encrypts only disk space that contains data.
   - **Encrypt entire drive** - Encrypts the entire volume including free space. Also known as full disk encryption.

5. The **BitLocker Drive Encryption Wizard** will then prompt for an encryption mode:

   - **New encryption mode**
   - **Compatible mode**

    Normally **New encryption mode** should be chosen, but if the drive will be potentially moved to another computer with an older Windows operating system, then select **Compatible mode**.

6. The **BitLocker Drive Encryption Wizard** will display a final confirmation screen before the encryption process begins. Selecting **Start encrypting** begins encryption.

Encryption status displays in the notification area or within the BitLocker control panel.

### OneDrive option

There's an option for storing the BitLocker recovery key using OneDrive. This option requires that computers aren't members of a domain and that the user is using a Microsoft Account. Local accounts don't give the option to use OneDrive. Using the OneDrive option is the default recommended recovery key storage method for computers that aren't joined to a domain.

Users can verify whether the recovery key was saved properly by checking OneDrive for the BitLocker folder. The BitLocker folder on OneDrive is created automatically during the save process. The folder will contain two files, a `readme.txt` and the recovery key. For users storing more than one recovery password on their OneDrive, they can identify the required recovery key by looking at the file name. The recovery key ID is appended to the end of the file name.

### Using BitLocker within Windows Explorer

Windows Explorer allows users to launch the **BitLocker Drive Encryption Wizard** by right-clicking a volume and selecting **Turn On BitLocker**. This option is available on client computers by default. On servers, the BitLocker feature and the Desktop-Experience feature must first be installed for this option to be available. After selecting **Turn on BitLocker**, the wizard works exactly as it does when launched using the BitLocker control panel.


---





















## Manage BitLocker protectors

Follow the instructions below manage BitLocker protectors, selecting the option that best suits your needs.

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

To remove the existing protectors prior to provisioning BitLocker on the volume, use the `Remove-BitLockerKeyProtector` cmdlet. Running this cmdlet requires the GUID associated with the protector to be removed.

The following commands return the list of key protectors and GUIDS:

```PowerShell
$vol = Get-BitLockerVolume C:
$keyprotectors = $vol.KeyProtector
$keyprotectors
```

By using this information, the key protector for a specific volume can be removed using the command:

```powershell
Remove-BitLockerKeyProtector <volume>: -KeyProtectorID "{GUID}"
```

> [!NOTE]
> The BitLocker cmdlet requires the key protector GUID enclosed in quotation marks to execute. Ensure the entire GUID, with braces, is included in the command.

Data volume encryption using Windows PowerShell is the same as for operating system volumes. Add the desired protectors prior to encrypting the volume. The following example adds a password protector to the E: volume using the variable $pw as the password. The $pw variable is held as a
SecureString value to store the user-defined password.

```powershell
$pw = Read-Host -AsSecureString
<user inputs password>
Enable-BitLockerKeyProtector E: -PasswordProtector -Password $pw
```

> [!NOTE]
> The BitLocker cmdlet requires the key protector GUID enclosed in quotation marks to execute. Ensure the entire GUID, with braces, is included in the command.



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

For Azure AD-joined computers, the recovery password should be stored in Azure AD.  

**Example**: *Use PowerShell to add a recovery password and back it up to Azure AD before enabling BitLocker*

```powershell
Add-BitLockerKeyProtector -MountPoint "C:" -RecoveryPasswordProtector

$BLV = Get-BitLockerVolume -MountPoint "C:"

BackupToAAD-BitLockerKeyProtector -MountPoint "C:" -KeyProtectorId $BLV.KeyProtector[0].KeyProtectorId
```

For domain-joined computers, including servers, the recovery password should be stored in Active Directory Domain Services (AD DS).

**Example**: *Use PowerShell to add a recovery password and back it up to AD DS before enabling BitLocker*

```powershell
Add-BitLockerKeyProtector -MountPoint "C:" -RecoveryPasswordProtector

$BLV = Get-BitLockerVolume -MountPoint "C:"

Backup-BitLockerKeyProtector -MountPoint "C:" -KeyProtectorId $BLV.KeyProtector[0].KeyProtectorId
```

PowerShell can then be used to enable BitLocker:

**Example**: *Use PowerShell to enable BitLocker with a TPM protector*

```powershell
Enable-BitLocker -MountPoint "D:" -EncryptionMethod XtsAes256 -UsedSpaceOnly -TpmProtector 
```

**Example**: *Use PowerShell to enable BitLocker with a TPM+PIN protector, in this case with a PIN set to 123456*

```powershell
$SecureString = ConvertTo-SecureString "123456" -AsPlainText -Force

Enable-BitLocker -MountPoint "C:" -EncryptionMethod XtsAes256 -UsedSpaceOnly -Pin $SecureString -TPMandPinProtector
```


#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)

Listed below are examples of basic valid commands for operating system volumes. In general, using only the `manage-bde.exe -on <drive letter>` command will encrypt the operating system volume with a TPM-only protector and no recovery key. However, many environments require more secure protectors such as passwords or PIN and expect information recovery with a recovery key. It's recommended to add at least one primary protector plus a recovery protector to an operating system volume.

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


Data volumes use the same syntax for encryption as operating system volumes but they don't require protectors for the operation to complete. Encrypting data volumes can be done using the base command:

`manage-bde.exe -on <drive letter>`

or additional protectors can be added to the volume first. It's recommended to add at least one primary protector plus a recovery protector to a data volume.

A common protector for a data volume is the password protector. In the example below, a password protector is added to the volume and then BitLocker is turned on.

```cmd
manage-bde.exe -protectors -add -pw C:
manage-bde.exe -on C:
```


#### [:::image type="icon" source="images/controlpanel.svg"::: **Control Panel**](#tab/controlpanel)

Using the control panel, administrators can choose **Turn on BitLocker** to start the BitLocker Drive Encryption wizard and add a protector, like PIN for an operating system volume (or password if no TPM exists), or a password or smart card protector to a data volume.
The drive security window displays prior to changing the volume status. Selecting **Activate BitLocker** will complete the encryption process.

Once BitLocker protector activation is completed, the completion notice is displayed.

---


### Decrypt volumes

Decrypting volumes removes BitLocker and any associated protectors from the volumes. Decryption should occur when protection is no longer required, and not as a troubleshooting step.

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

Windows PowerShell offers the ability to decrypt multiple drives in one pass. In the example below, the user has three encrypted volumes, which they wish to decrypt.

Using the Disable-BitLocker command, they can remove all protectors and encryption at the same time without the need for more commands. An example of this command is:

```powershell
Disable-BitLocker
```

If a user didn't want to input each mount point individually, using the `-MountPoint` parameter in an array can sequence the same command into one line without requiring additional user input. An example command is:

```powershell
Disable-BitLocker -MountPoint E:,F:,G:
```

#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)

Decryption with `manage-bde.exe` offers the advantage of not requiring user confirmation to start the process. Manage-bde uses the -off command to start the decryption process. A sample command for decryption is:

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

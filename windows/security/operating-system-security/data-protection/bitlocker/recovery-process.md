---
title: BitLocker recovery process
description: Learn how to manage BitLocker keys for Microsoft Entra joined, Microsoft Entra hybrid joined, and Active Directory joined devices.
ms.collection: 
  - highpri
  - tier1
ms.topic: how-to
ms.date: 10/30/2023
---

# BitLocker recovery process

This article describes how to recover BitLocker keys from Microsoft Entra ID and Active Directory Domain Services (AD DS). This article assumes that it's understood how to configure devices to automatically backup BitLocker recovery information, and what types of recovery information are saved to Microsoft Entra ID and AD DS.

## Recovery password retrieval

### Self-recovery

In some cases, users might have the recovery password in a printout or a USB flash drive and can perform self-recovery. It's recommended that the organization creates a policy for self-recovery. If self-recovery includes using a password or recovery key stored on a USB flash drive, the users must be warned not to store the USB flash drive in the same place as the PC, especially during travel. For example, if both the PC and the recovery items are in the same bag it would be easy for access to be gained to the PC by an unauthorized user. Another policy to consider is having users contact the Helpdesk before or after performing self-recovery so that the root cause can be identified.

A recovery key can't be stored in any of the following locations:

- The drive being encrypted
- The root directory of a non-removable drive
- An encrypted volume

> [!TIP]
> Ideally, a recovery key should be stored separate from the device itself.

> [!NOTE]
> Microsoft Entra ID provides a portal where recovery keys are also backed up, so users can retrieve their own recovery keys for self-service, if necessary.

### Help desk recovery

If the user doesn't have a recovery password printed or on a USB flash drive, the user will need to be able to retrieve the recovery password from an online source. If the PC is a member of a domain, the recovery password can be backed up to AD DS. However, back up of the recovery password to AD DS does not happen by default.
An administrator can obtain the *recovery password* from Microsoft Entra ID or AD DS and use it to unlock the drive. Storing recovery passwords in Microsoft Entra ID or AD DS is recommended to provide a way to obtain recovery passwords for drives in an organization if needed. This method requires to enable the policy settings:

- [Choose how BitLocker-protected operating system drives can be recovered](configure.md?tabs=os#choose-how-bitlocker-protected-operating-system-drives-can-be-recovered)
- [Choose how BitLocker-protected fixed drives can be recovered](configure.md?tabs=fixed#choose-how-bitlocker-protected-fixed-drives-can-be-recovered)
- [Choose how BitLocker-protected removable drives can be recovered](configure.md?tabs=removable#choose-how-bitlocker-protected-removable-drives-can-be-recovered)

In each of these policies, select **Save BitLocker recovery information to Active Directory Domain Services** and then choose which BitLocker recovery information to store in AD DS. Check the **Do not enable BitLocker until recovery information is stored in AD
DS** check box if it's desired to prevent users from enabling BitLocker unless the computer is connected to the domain and the backup of BitLocker recovery information for the drive to AD DS succeeds.

> [!NOTE]
> If the PCs are part of a workgroup, users are advised to save their BitLocker recovery password with their Microsoft account online. Having an online copy of the BitLocker recovery password is recommended to help ensure access to data is not lost in the event of a recovery being required.

The BitLocker Recovery Password Viewer for Active Directory Users and Computers tool allows domain administrators to view BitLocker recovery passwords for specific computer objects in Active Directory.

The following list can be used as a template for creating a recovery process for recovery password retrieval. This sample process uses the BitLocker Recovery Password Viewer for Active Directory Users and Computers tool.

| :ballot_box_with_check: | Recovery process step | Details |
|--|--| -- |
| :black_square_button: | Record the device name |The name of the user's device can be used to locate the recovery password in Microsoft Entra ID or AD DS. If the user doesn't know the name of the device, ask the user to read the first word of the **Drive Label** in the **BitLocker Drive Encryption Password Entry** user interface. This word is the computer name when BitLocker was enabled and is probably the current name of the computer.|
| :black_square_button: | Verify the user's identity |The person who is asking for the recovery password should be verified as the authorized user of that computer. It should also be verified whether the computer for which the user provided the name belongs to the user.|
| :black_square_button: | Locate the recovery password |Locate the computer object with the matching name in AD DS. Because computer object names are listed in the AD DS global catalog, the object should be able to be located even if it's a multi-domain forest.|
| :black_square_button: | Root cause analysis |Before giving the user the recovery password, information should be gatherer that will help determine why the recovery was needed. This information can be used to analyze the root cause during the post-recovery analysis|
| :black_square_button: | Provide the user the recovery password | Because the recovery password is 48 digits long, the user may need to record the password by writing it down or typing it on a different computer. If using MBAM or Configuration Manager BitLocker Management, the recovery password will be regenerated after it's recovered from the MBAM or Configuration Manager database to avoid the security risks associated with an uncontrolled password. |
| :black_square_button: | Rotate the recovery key | |

> [!NOTE]
> Because the 48-digit recovery password is long and contains a combination of digits, the user might mishear or mistype the password. The boot-time recovery console uses built-in checksum numbers to detect input errors in each 6-digit block of the 48-digit recovery password, and offers the user the opportunity to correct such errors.

## Post-recovery tasks

### BitLocker recovery analysis

When a volume is unlocked using a recovery password, an event is written to the event log, and the platform validation measurements are reset in the TPM to match the current configuration. Unlocking the volume means that the encryption key has been released and is ready for on-the-fly encryption when data is written to the volume, and on-the-fly decryption when data is read from the volume. After the volume is unlocked, BitLocker behaves the same way, regardless of how the access was granted.

If it's noticed that a computer is having repeated recovery password unlocks, an administrator might want to perform post-recovery analysis to determine the root cause of the recovery, and refresh BitLocker platform validation so that the user no longer needs to enter a recovery password each time that the computer starts up. For more information, see:

- [Determine the root cause of the recovery](#determine-the-root-cause-of-the-recovery)
- [Resolve the root cause](#resolve-the-root-cause)

### Determine the root cause of the recovery

If a user needed to recover the drive, it's important to determine the root cause that initiated the recovery as soon as possible. Properly analyzing the state of the computer and detecting tampering may reveal threats that have broader implications for enterprise security.

While an administrator can remotely investigate the cause of recovery in some cases, the end user might need to bring the computer that contains the recovered drive on site to analyze the root cause further.

Review and answer the following questions for the organization:

1. Which BitLocker protection mode is in effect (TPM, TPM + PIN, TPM + startup key, startup key only)? Which PCR profile is in use on the PC?
1. Did the user merely forget the PIN or lose the startup key? If a token was lost, where might the token be?
1. If TPM mode was in effect, was recovery caused by a boot file change?
1. If recovery was caused by a boot file change, is the boot file change due to an intended user action (for example, BIOS upgrade), or a malicious software?
1. When was the user last able to start the computer successfully, and what might have happened to the computer since then?
1. Might the user have encountered malicious software or left the computer unattended since the last successful startup?

To help answer these questions, use the BitLocker command-line tool to view the current configuration and protection mode:

```cmd
manage-bde.exe -status
```

Scan the event log to find events that help indicate why recovery was initiated (for example, if a boot file change occurred). Both of these capabilities can be performed remotely.

### Resolve the root cause

After it has been identified what caused recovery, BitLocker protection can be reset to avoid recovery on every startup.

The details of this reset can vary according to the root cause of the recovery. If root cause can't be determined, or if a malicious software or a rootkit infects the device, Helpdesk should apply best-practice virus policies to react appropriately.

> [!NOTE]
> BitLocker validation profile reset can be performed by suspending and resuming BitLocker.

:::row:::
  :::column span="1":::
    **Root cause**
  :::column-end:::
  :::column span="3":::
    **Steps**
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="1":::
    Unknown PIN
  :::column-end:::
  :::column span="3":::
    If a user has forgotten the PIN, the PIN must be reset while signed on to the computer in order to prevent BitLocker from initiating recovery each time the computer is restarted.

To prevent continued recovery due to an unknown PIN:

1. Unlock the device using the recovery password
1. From the BitLocker Control Panel applet, expand the drive and then select **Change PIN**
1. In the BitLocker Drive Encryption dialog, select **Reset a forgotten PIN**. If the signed in account isn't an administrator account, you must provide administrative credentials
1. In the PIN reset dialog, provide and confirm the new PIN to be used and then select **Finish**
1. The new PIN can be used the next time the drive needs to be unlocked.
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="1":::
    Lost startup key
  :::column-end:::
  :::column span="3":::
    If the USB flash drive that contains the startup key is lost, you must be unlock the drive using the recovery key. A new startup can then be created using PowerShell, the Command Prompt, or BitLocker.

For examples how to add BitLocker protectors, review the [BitLocker operations guide](operations-guide.md#add-protectors).
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="1":::
    Changes to boot files
  :::column-end:::
  :::column span="3":::
    This error occurs if the firmware is updated. BitLocker should be suspended before making changes to the firmware. Protection should then be resumed after the firmware update is complete. Suspending BitLocker prevents the device from going into recovery mode. However, if changes happen when BitLocker protection is on, the recovery password can be used to unlock the drive and the platform validation profile is updated so that recovery doesn't occur the next time.

For examples how to suspend and resume BitLocker protectors, review the [BitLocker operations guide](operations-guide.md#suspend-and-resume).
  :::column-end:::
:::row-end:::

## Windows RE and device encryption

Windows Recovery Environment (RE) can be used to recover access to a drive protected by BitLocker. If a device is unable to boot after two failures, *Startup Repair* automatically starts. When Startup Repair is launched automatically due to boot failures, it executes only operating system and driver file repairs if the boot logs or any available crash dump points to a specific corrupted file. Devices that include firmware to support specific TPM measurements for *PCR 7*, the TPM can validate that Windows RE is a trusted operating environment and unlock any BitLocker-protected drives if Windows RE hasn't been modified. If the Windows RE environment has been modified, for example, the TPM has been disabled, the drives stay locked until the BitLocker recovery key is provided. If Startup Repair isn't able to run automatically from the device and instead, Windows RE is manually started from a repair disk, the BitLocker recovery key must be provided to unlock the BitLocker-protected drives.

Windows RE also asks for a BitLocker recovery key when a **Remove everything** reset from Windows RE is started on a device that uses **TPM + PIN** or **Password for OS drive** protectors. If BitLocker recovery is started on a keyboardless device with TPM-only protection, Windows RE, not the boot manager, asks for the BitLocker recovery key. After the key is entered, Windows RE troubleshooting tools can be accessed, or Windows can be started normally.



### Retrieve the recovery password from Microsoft Entra ID

``` PowerShell
function Get-EntraBitLockerKeys{
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, HelpMessage = "Device name to retrieve the BitLocker keys from Microsoft Entra ID")]
        [string]$DeviceName
    )
    $DeviceID = (Get-MGDevice -filter "displayName eq '$DeviceName'").DeviceId
    if ($DeviceID){
      $KeyIds = (Get-MgInformationProtectionBitlockerRecoveryKey -Filter "deviceId eq '$DeviceId'").Id
      if ($keyIds) {
        Write-Host -ForegroundColor Yellow "Device name: $devicename"
        foreach ($keyId in $keyIds) {
          $recoveryKey = (Get-MgInformationProtectionBitlockerRecoveryKey -BitlockerRecoveryKeyId $keyId -Select "key").key
          Write-Host -ForegroundColor White " Key id: $keyid"
          Write-Host -ForegroundColor Cyan " BitLocker recovery key: $recoveryKey" 
        }
        } else {
        Write-Host -ForegroundColor Red "No BitLocker recovery keys found for device $DeviceName"
      }
    } else {
        Write-Host -ForegroundColor Red "Device $DeviceName not found"
    }
}

Install-Module Microsoft.Graph.Identity.SignIns -Scope CurrentUser -Force
Import-Module Microsoft.Graph.Identity.SignIns
Connect-MgGraph -Scopes 'BitlockerKey.Read.All' -NoWelcome
```

### Output example

``` PowerShell
PS C:\> Get-EntraBitLockerKeys -DeviceName DESKTOP-53O32QI
Device name: DESKTOP-53O32QI
 Key id: 4290b6c0-b17a-497a-8552-272cc30e80d4
 BitLocker recovery key: 496298-461032-321464-595518-463221-173943-033616-139579
 Key id: 045219ec-a53b-41ae-b310-08ec883aaedd
 BitLocker recovery key: 158422-038236-492536-574783-256300-205084-114356-069773
```

### Retrieve the recovery password from Active Directory

If multiple recovery passwords are stored under a computer object in AD DS, the name of the BitLocker recovery information object includes the date on which the password was created.

To make sure the correct password is provided and/or to prevent providing the incorrect password, ask the user to read the eight character password ID that is displayed in the recovery console.

Since the password ID is a unique value that is associated with each recovery password stored in AD DS, running a query using this ID finds the correct password to unlock the encrypted volume.

#### BitLocker Recovery Password Viewer

BitLocker Recovery Password Viewer is an optional tool included with the *Remote Server Administration Tools (RSAT)*, and it's an extension for the *Active Directory Users and Computers Microsoft Management Console (MMC)* snap-in.

With BitLocker Recovery Password Viewer you can:

- Check the Active Directory computer object's properties to retrieve the associated BitLocker recovery passwords
- Search Active Directory for BitLocker recovery password across all the domains in the Active Directory forest. Passwords can also be searched by password identifier (ID)

To complete the procedures in this scenario, the following requirements must be met:

- Domain administrator credentials
- Devices must be joined to the domain
- On the domain-joined devices, BitLocker must be enabled

The following procedures describe the most common tasks performed by using the BitLocker Recovery Password Viewer.

##### View the recovery passwords for a computer object

1. In **Active Directory Users and Computers**, locate and then select the container in which the computer is located
1. Right-click the computer object and select **Properties**
1. In the **Properties** dialog box, select the **BitLocker Recovery** tab to view the BitLocker recovery passwords that are associated with the computer

##### Copy the recovery passwords for a computer object

1. Follow the steps in the previous procedure to view the BitLocker recovery passwords
1. On the **BitLocker Recovery** tab of the **Properties** dialog box, right-click the BitLocker recovery password that needs to be copied, and then select **Copy Details**
1. Press <kbd>CTRL</kbd>+<kbd>V</kbd> to paste the copied text to a destination location, such as a text file or spreadsheet

##### Locate a recovery password by using a password ID

1. In Active Directory Users and Computers, right-click the domain container and select **Find BitLocker Recovery Password**
1. In the **Find BitLocker Recovery Password** dialog box, type the first eight characters of the recovery password in the **Password ID (first 8 characters)** box, and select **Search**
1. Once the recovery password is located, you can use the previous procedure to copy it

## Rotate keys

>[!TIP]
> For Microsoft Entra joined devices, the recovery password should be stored in Microsoft Entra ID
> For Active Directoy domain-joined devices, including servers, the recovery password should be stored in AD DS

SCCM rotate keys: /mem/configmgr/protect/deploy-use/bitlocker/recovery-service#rotate-keys
Intune rotate keys: /mem/intune/protect/encrypt-devices#rotate-bitlocker-recovery-keys

Prerequisites:

Client-driven recovery password rotation to Enable rotation on Azure AD-joined devices or Enable rotation on Azure AD and Hybrid-joined devices
Save BitLocker recovery information to Azure Active Directory to Enabled
Store recovery information in Azure Active Directory before enabling BitLocker to Required

## BitLocker Repair tool

If the recovery methods discussed earlier in this document don't unlock the volume, the *BitLocker Repair tool* (`repair-bde.exe`) can be used to decrypt the volume at the block level. The tool uses the *BitLocker key package* to help recover encrypted data from severely damaged drives.

The recovered data can then be used to salvage encrypted data, even if the correct recovery password fails to unlock the damaged volume. It's recommended to still save the recovery password, as a key package can't be used without the corresponding recovery password.

### Retrieve the BitLocker key package

To export a previously saved key package from AD DS, it's required to have read access to the BitLocker recovery passwords and key packages that are stored in AD DS. By default, only Domain Admins have access to BitLocker recovery information, but [access can be delegated to others](/archive/blogs/craigf/delegating-access-in-ad-to-bitlocker-recovery-information).

Use the Repair tool in the following conditions:

- The drive is encrypted using BitLocker
- Windows doesn't start, or the BitLocker recovery screen doesn't start
- There isn't a backup copy of the data that is contained on the encrypted drive

> [!NOTE]
> Damage to the drive may not be related to BitLocker. Therefore, it's recommended to try other tools to help diagnose and resolve the problem with the drive before using the BitLocker Repair Tool. The Windows Recovery Environment (Windows RE) provides more options to repair Windows.

The following limitations exist for Repair-bde:

- it can't repair a drive that failed *during* the encryption or decryption process
- it assumes that if the drive has any encryption, then the drive is fully encrypted

For a complete list of the `repair-bde.exe` options, see the [Repair-bde reference](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/ff829851(v=ws.11)).

### Microsoft Entra ID

#### Data Recovery Agents

To list data recovery agents configured for a BitLocker-protected drive, use the `manage-bde.exe` command, including certificate-based protectors. Example:

```cmd
C:\>manage-bde.exe -protectors -get E:

Volume E: []
All Key Protectors

    Numerical Password:
      ID: {24B0AA32-F8D0-40BA-BB05-73A800324C09}
      Password:
        461109-608201-413820-485342-181588-463056-430617-501391

    Data Recovery Agent (Certificate Based):
      ID: {3F81C18D-A685-4782-8F55-99C6452980E7}
      Certificate Thumbprint:
        9de688607336294a52b445d30d1eb92f0bec1e78
```

In this example, if the private key is available in the local certificate store, the administrator could use the following command to unlock the drive by using the data recovery agent protector:

```cmd
manage-bde -unlock E: -Certificate -ct 9de688607336294a52b445d30d1eb92f0bec1e78
```

---
title: BitLocker recovery process
description: Learn how to obtain BitLocker recovery information for Microsoft Entra joined, Microsoft Entra hybrid joined, and Active Directory joined devices, and how to restore access to a locked drive.
ms.topic: how-to
ms.date: 07/08/2024
---

# BitLocker recovery process

If a device or drive fails to unlock using the configured BitLocker mechanism, users may be able to self-recover it. If self-recovery isn't an option, or the user is unsure how to proceed, the helpdesk should have procedures in place to retrieve recovery information quickly and securely.

This article outlines the process of obtaining BitLocker recovery information for Microsoft Entra joined, Microsoft Entra hybrid joined, and Active Directory joined devices. It's assumed that the reader is already familiar with configuring devices to automatically back up BitLocker recovery information, and the available BitLocker recovery options. For more information, see the [BitLocker recovery overview](recovery-overview.md) article.

## Self-recovery

The BitLocker recovery password and recovery key for an operating system drive or a fixed data drive can be saved to one or more USB devices, printed, saved to Microsoft Entra ID or AD DS.

> [!TIP]
> Saving BitLocker recovery keys to Microsoft Entra ID or AD DS is a recommended approach. That way, a BitLocker administrator or helpdesk can assist users in attaining their keys.

If self-recovery includes using a password or recovery key stored on a USB flash drive, the users must be warned not to store the USB flash drive in the same place as the device, especially during travel. For example, if both the device and the recovery items are in the same bag, it would be easy for an unauthorized user to access the device. Another policy to consider is having users contact the helpdesk before or after performing self-recovery so that the root cause can be identified.

A recovery key can't be stored in any of the following locations:

- The drive being encrypted
- The root directory of a nonremovable drive
- An encrypted volume

### Self-recovery with recovery password

If you have access to the recovery key, enter the 48-digits in the preboot recovery screen.

- If you are having issues entering the recovery password in the preboot recovery screen, or you can no longer boot your device, you can connect the drive to another device as a secondary drive. For more information about the unlock process, see [Unlock a drive](operations-guide.md#unlock-a-drive)
- If unlocking with recovery password doesn't work you can use the [BitLocker Repair tool](#bitlocker-repair-tool) to regain access yo your drive

### Self-recovery in Microsoft Entra ID

If BitLocker recovery keys are stored in Microsoft Entra ID, users can access them using the following URL: https://myaccount.microsoft.com. From the **Devices** tab, users can select a Windows device that they own, and select the option **View BitLocker Keys**.

> [!NOTE]
> By default, users can retrieve their BitLocker reecovery keys from Microsoft Entra ID. This behavior can be modified with the option **Restrict users from recovering the BitLocker key(s) for their owned devices**. For more information, see [Restrict member users' default permissions][ENTRA-1].

### Self-recovery with USB flash drive

If users saved the recovery password on a USB drive, they can plug the drive into a locked device and follow the instructions. If the key was saved as a text file on the flash drive, users must use a different device to read the text file.

## Helpdesk recovery

If a user doesn't have a self-service recovery option, the helpdesk should be able to assist the user with one of the following options:

- If the device is Microsoft Entra joined or Microsoft Entra hybrid joined, BitLocker recovery information can be retrieved from Microsoft Entra ID
- If the device is domain joined, recovery information can be retrieved from Active Directory
- If the device is configured to use a DRA, the encrypted drive can be mounted on another device as a *data drive* for the DRA to be able to unlock the drive

> [!WARNING]
> The backup of the BitLocker recovery password to Microsoft Entra ID or AD DS may not happen automatically. Devices should be configured with policy settings to enable automatic backup, as described the [BitLocker recovery overview](recovery-overview.md) article.

The following list can be used as a template for creating a recovery process for recovery password retrieval by the helpdesk.

| :ballot_box_with_check: | Recovery process step | Details |
|--|--|--|
| :black_square_button: | Verify the user's identity |The person who is asking for the recovery password should be verified as the authorized user of that device. It should also be verified whether the device for which the user provided the name belongs to the user.|
| :black_square_button: | Record the device name |The name of the user's device can be used to locate the recovery password in Microsoft Entra ID or AD DS. |
| :black_square_button: | Record the recovery key ID |The recovery key ID can be used to locate the recovery password in Microsoft Entra ID or AD DS. The recovery key ID is displayed in the preboot recovery screen. |
| :black_square_button: | Locate the recovery password |Locate the BitLocker recovery password using the device name or the recovery key ID from Microsoft Entra ID or AD DS.|
| :black_square_button: | Root cause analysis |Before giving the user the recovery password, information should be gatherer to determine why the recovery is needed. The information can be used to perform root cause analysis.|
| :black_square_button: | Provide the user the recovery password | Since the 48-digit recovery password is long and contains a combination of digits, the user might mishear or mistype the password. The boot-time recovery console uses built-in checksum numbers to detect input errors in each 6-digit block of the 48-digit recovery password, and offers the user the opportunity to correct such errors. |
| :black_square_button: | Rotate the recovery password | If automatic password rotation is configured, Microsoft Entra joined and Microsoft Entra hybrid joined devices generate a new recovery password and store it in Microsoft Entra ID. An administrator can also trigger password rotation on-demand, using Microsoft Intune or Microsoft Configuration Manager. |

### Helpdesk recovery in Microsoft Entra ID

There are a few Microsoft Entra ID roles that allow a delegated administrator to read BitLocker recovery passwords from the devices in the tenant. While it's common for organizations to use the existing Microsoft Entra ID *[Cloud Device Administrator][ENTRA-2]* or *[Helpdesk Administrator][ENTRA-3]* built-in roles, you can also [create a custom role][ENTRA-5], delegating access to BitLocker keys using the `microsoft.directory/bitlockerKeys/key/read` permission. Roles can be delegated to access BitLocker recovery passwords for devices in specific Administrative Units.

> [!NOTE]
> When devices including [Windows Autopilot](/mem/autopilot/windows-autopilot) are reused to join to Entra, **and there is a new device owner**, that new device owner must contact an administrator to acquire the BitLocker recovery key for that device. Administrative unit scoped administrators will lose access to BitLocker recovery keys after device ownership changes. These scoped administrators will need to contact a non-scoped administrator for the recovery keys. For more information, see the article [Find the primary user of an Intune device](/mem/intune/remote-actions/find-primary-user#change-a-devices-primary-user).

The [Microsoft Entra admin center][ENTRA] allows administrators to retrieve BitLocker recovery passwords. To learn more about the process, see [View or copy BitLocker keys][ENTRA-4]. Another option to access BitLocker recovery passwords is to use the Microsoft Graph API, which might be useful for integrated or scripted solutions. For more information about this option, see [Get bitlockerRecoveryKey][GRAPH-1].

In the following example, we use Microsoft Graph PowerShell cmdlet [`Get-MgInformationProtectionBitlockerRecoveryKey`][PS-1] to build a PowerShell function that retrieves recovery passwords from Microsoft Entra ID:

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

After the function is loaded, it can be used to retrieve BitLocker recovery passwords for a specific device. Example:

``` PowerShell
PS C:\> Get-EntraBitLockerKeys -DeviceName DESKTOP-53O32QI
Device name: DESKTOP-53O32QI
 Key id: 4290b6c0-b17a-497a-8552-272cc30e80d4
 BitLocker recovery key: 496298-461032-321464-595518-463221-173943-033616-139579
 Key id: 045219ec-a53b-41ae-b310-08ec883aaedd
 BitLocker recovery key: 158422-038236-492536-574783-256300-205084-114356-069773
```

> [!NOTE]
> For devices that are managed by Microsoft Intune, BitLocker recovery passwords can be retrieved from the device properties in the Microsoft Intune admin center. For more information, see [View details for recovery keys][INT-1].

### Helpdesk recovery in Active Directory Domain Services

To export a recovery password from AD DS, you must have *read access* to objects stored in AD DS. By default, only *Domain Administrators* have access to BitLocker recovery information, but [access can be delegated][ARC-1] to specific security principals.

To facilitate the retrieval of BitLocker recovery passwords from AD DS, you can use the *BitLocker Recovery Password Viewer* tool. The tool is included with the *Remote Server Administration Tools (RSAT)*, and it's an extension for the *Active Directory Users and Computers Microsoft Management Console (MMC)* snap-in.

With BitLocker Recovery Password Viewer you can:

- Check the Active Directory computer object's properties to retrieve the associated BitLocker recovery passwords
- Search Active Directory for BitLocker recovery password across all the domains in the Active Directory forest

The following procedures describe the most common tasks performed by using the BitLocker Recovery Password Viewer.

##### View the recovery passwords for a computer object

1. Open **Active Directory Users and Computers** MMC snap-in, and select the container or OU in which the computer objects is located
1. Right-click the computer object and select **Properties**
1. In the **Properties** dialog box, select the **BitLocker Recovery** tab to view the BitLocker recovery passwords that are associated with the computer

##### Locate a recovery password by using a password ID

1. In **Active Directory Users and Computers**, right-click the domain container and select **Find BitLocker Recovery Password**
1. In the **Find BitLocker Recovery Password** dialog box, type the first eight characters of the recovery password in the **Password ID (first 8 characters)** box, and select **Search**

### Data Recovery Agents

If devices are configured with a DRA, the Helpdesk can use the DRA to unlock the drive. Once the BitLocker drive is attached to a device that has the private key of the DRA certificate, the drive can be unlocked by using the `manage-bde.exe` command.

For example, to list the DRA configured for a BitLocker-protected drive, use the following command:

```cmd
C:\>manage-bde.exe -protectors -get D:

Volume D: [Local Disk]
All Key Protectors

    Data Recovery Agent (Certificate Based):
      ID: {3A8F7DEA-878F-4663-B149-EE2EC9ADE40B}
      Certificate Thumbprint:
        f46563b1d4791d5bd827f32265341ff9068b0c42
```

If the private key of the certificate with a thumbprint of `f46563b1d4791d5bd827f32265341ff9068b0c42` is available in the local certificate store, an administrator can use the following command to unlock the drive with the DRA protector:

```cmd
manage-bde -unlock D: -Certificate -ct f46563b1d4791d5bd827f32265341ff9068b0c42
```

## Post-recovery tasks

When a volume is unlocked using a recovery password:

- an event is written to the Event Log
- the platform validation measurements are reset in the TPM to match the current configuration
- the encryption key is released and is ready for on-the-fly encryption/decryption when data is written/read to and from the volume

After the volume is unlocked, BitLocker behaves the same way, regardless of how the access was granted.

If a device experiences multiple recovery password events, an administrator should perform post-recovery analysis to determine the root cause of the recovery. Then, refresh the BitLocker platform validation to prevent entering a recovery password each time that the device starts up.

### Determine the root cause of the recovery

If a user needed to recover the drive, it's important to determine the root cause that initiated the recovery as soon as possible. Properly analyzing the state of the computer and detecting tampering might reveal threats that have broader implications for enterprise security.

While an administrator can remotely investigate the cause of recovery in some cases, the user might need to bring the device that contains the recovered drive on site to analyze the root cause further. Here are some questions that can be used to help determine the root cause of the recovery:

| :ballot_box_with_check: | Question |
|--|--|
| :black_square_button: | *Which BitLocker protection mode is configured (TPM, TPM + PIN, TPM + startup key, startup key only)?*|
| :black_square_button: | *If TPM mode is configured, was recovery caused by a boot file change?* |
| :black_square_button: | *Which PCR profile is in use on the device?*|
| :black_square_button: | *Did the user merely forget the PIN or lose the startup key?* |
| :black_square_button: | *If recovery was caused by a boot file change, is the boot file change due to an intended user action (for example, BIOS upgrade), or a malicious software?* |
| :black_square_button: | *When was the user last able to start the device successfully, and what might have happened to the device since then?* |
| :black_square_button: | *Might the user have encountered malicious software or left the device unattended since the last successful startup?* |

To help answer these questions, you can use the `manage-bde.exe -status` command to view the current configuration and protection mode. Scan the event log to find events that help indicate why recovery was initiated (for example, if a boot file change occurred).

### Resolve the root cause

After you identify the cause of the recovery, BitLocker protection can be reset to avoid recovery on every startup.

The details of the reset can vary according to the root cause of the recovery. If root cause can't be determined, or if a malicious software or a rootkit infects the device, the helpdesk should apply best-practice virus policies to react appropriately.

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
1. The new PIN can be used the next time the drive needs to be unlocked
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="1":::
    Lost startup key
  :::column-end:::
  :::column span="3":::
    If the USB flash drive that contains the startup key is lost, you can unlock the drive using the recovery key. A new startup can then be created using PowerShell, the Command Prompt, or the BitLocker Control Panel applet.

    For examples how to add BitLocker protectors, review the [BitLocker operations guide](operations-guide.md#add-protectors)
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="1":::
    Changes to boot files
  :::column-end:::
  :::column span="3":::
    This error occurs if the firmware is updated. BitLocker should be suspended before making changes to the firmware. Protection should then be resumed after the firmware update is complete. Suspending BitLocker prevents the device from going into recovery mode. However, if changes happen when BitLocker protection is on, the recovery password can be used to unlock the drive and the platform validation profile is updated so that recovery doesn't occur the next time.

    For examples how to suspend and resume BitLocker protectors, review the [BitLocker operations guide](operations-guide.md#suspend-and-resume)
  :::column-end:::
:::row-end:::

## Rotate passwords

Administrators can configure a policy setting to enable automatic recovery password rotation for Microsoft Entra joined and Microsoft Entra hybrid joined devices.\
When automatic recovery password rotation is enabled, devices automatically rotate the recovery password after the password is used to unlock the drive. This behavior helps to prevent the same recovery password from being used multiple times, which can be a security risk.

For more information, see [configure recovery password rotation](configure.md?tabs=common#configure-recovery-password-rotation).

Another option is to initiate the rotation of recovery passwords for individual devices remotely using Microsoft Intune or Microsoft Configuration Manager.

To learn more how to rotate BitLocker recovery passwords using Microsoft Intune or Microsoft Configuration Manager, see:

- [Microsoft Intune documentation][INT-1]
- [Microsoft Configuration Manager documentation][MCM-1]

## BitLocker Repair tool

If the recovery methods discussed earlier in this document don't unlock the volume, the *BitLocker Repair tool* (`repair-bde.exe`) can be used to decrypt the volume at the block level. The tool uses the *BitLocker key package* to help recover encrypted data from severely damaged drives.

The recovered data can then be used to salvage encrypted data, even if the correct recovery password fails to unlock the damaged volume. It's recommended to still save the recovery password, as a key package can't be used without the corresponding recovery password.

Use the Repair tool in the following conditions:

- The drive is encrypted using BitLocker
- Windows doesn't start, or the BitLocker recovery screen doesn't start
- There isn't a backup copy of the data that is contained on the encrypted drive

> [!NOTE]
> Damage to the drive may not be related to BitLocker. Therefore, it's recommended to try other tools to help diagnose and resolve the problem with the drive before using the BitLocker Repair Tool. The Windows Recovery Environment (Windows RE) provides more options to repair Windows.

The following limitations exist for Repair-bde:

- it can't repair a drive that failed *during* the encryption or decryption process
- it assumes that if the drive has any encryption, then the drive is fully encrypted

For a complete list of the `repair-bde.exe` options, see the [Repair-bde reference][PREV-1].

> [!NOTE]
> To export a key package from AD DS, you must have *read* access to the BitLocker recovery passwords and key packages that are stored in AD DS. By default, only Domain Admins have access to BitLocker recovery information, but [access can be delegated to others][ARC-1].

<!--links-->

[ARC-1]: /archive/blogs/craigf/delegating-access-in-ad-to-bitlocker-recovery-information
[ENTRA-1]: /entra/fundamentals/users-default-permissions#restrict-member-users-default-permissions
[ENTRA-2]: /entra/identity/role-based-access-control/permissions-reference#cloud-device-administrator
[ENTRA-3]: /entra/identity/role-based-access-control/permissions-reference#helpdesk-administrator
[ENTRA-4]: /entra/identity/devices/manage-device-identities#view-or-copy-bitlocker-keys
[ENTRA-5]: /entra/identity/role-based-access-control/custom-create
[ENTRA]: https://entra.microsoft.com
[GRAPH-1]: /graph/api/bitlockerrecoverykey-get
[INT-1]: /mem/intune/protect/encrypt-devices#view-details-for-recovery-keys
[MCM-1]: /mem/configmgr/protect/deploy-use/bitlocker/recovery-service#rotate-keys
[PREV-1]: /previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/ff829851(v=ws.11)
[PS-1]: /powershell/module/microsoft.graph.identity.signins/get-mginformationprotectionbitlockerrecoverykey

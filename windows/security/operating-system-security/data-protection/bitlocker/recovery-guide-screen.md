---
title: BitLocker recovery screen
description: Learn how to recover BitLocker keys from Microsoft Entra ID and Active Directory Domain Services (AD DS).
ms.collection: 
  - highpri
  - tier1
ms.topic: how-to
ms.date: 09/29/2023
---

# BitLocker recovery screen

During BitLocker recovery, Windows displays a custom recovery message and a few hints that identify where a key can be retrieved from. These improvements can help a user during BitLocker recovery.

### Custom recovery message

:::row:::
  :::column span="3":::
    BitLocker policy settings allows configuring a custom recovery message and URL on the BitLocker recovery screen. The custom recovery message and URL can include the address of the BitLocker self-service recovery portal, the IT internal website, or a phone number for support.
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/recovery-message-url.png" alt-text="Screenshot of the BitLocker recovery screen showing a custom URL." lightbox="images/recovery-message-url.png":::
  :::column-end:::
:::row-end:::

For more information, see [Configure preboot recovery message and URL](policy-settings.md?tabs=os#configure-preboot-recovery-message-and-url).

### BitLocker recovery key hints

:::row:::
  :::column span="3":::
    BitLocker metadata includes information about when and where a BitLocker recovery key was saved. This information isn't exposed through the UI or any public API. It's used solely by the BitLocker recovery screen in the form of hints to help a user locate a volume's recovery key. Hints are displayed on the recovery screen and refer to the location where the key was saved. The hints apply to both the boot manager recovery screen and the WinRE unlock screen.
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/recover-message-hint.png" alt-text="Screenshot of the BitLocker recovery screen showing a hint where the BitLocker recovery key was saved." lightbox="images/recover-message-hint.png":::
  :::column-end:::
:::row-end:::

> [!IMPORTANT]
> It's not recommend to print recovery keys or saving them to a file. Instead, use Microsoft Account, Microsoft Entra ID or Active Directory backup.

There are rules governing which hint is shown during the recovery (in the order of processing):

1. Always display custom recovery message, if configured via policy settings
1. Always display generic hint: **For more information, go to https://aka.ms/recoverykeyfaq.**
1. If multiple recovery keys exist on the volume, prioritize the last-created (and successfully backed up) recovery key
1. Prioritize keys with successful backup over keys that have never been backed up
1. Prioritize backup hints in the following order for remote backup locations: **Microsoft Account > Azure AD > Active Directory**
1. If a key has been printed and saved to file, display a combined hint **Look for a printout or a text file with the key**, instead of two separate hints
1. If multiple backups of the same type (remove vs. local) were done for the same recovery key, prioritize backup info with latest backup date
1. There's no specific hint for keys saved to an on-premises Active Directory. In this case, a custom message (if configured) or a generic message, **Contact your organization's help desk**, is displayed
1. If two recovery keys are present on the disk, but only one was successfully backed up, the system asks for a key that was backed up, even if another key is newer

#### Example 1 (single recovery key with single backup)

:::row:::
  :::column span="3":::
| Custom URL                 | Yes |
|----------------------------|-----|
| Saved to Microsoft Account | Yes |
| Saved to Azure AD          | No  |
| Saved to Active Directory  | No  |
| Printed                    | No  |
| Saved to file              | No  |
**Result:** The hints for the Microsoft account and custom URL are displayed.
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/rp-example1.png" alt-text="Screenshot of the BitLocker recovery screen showing a hint where the BitLocker recovery key was saved." lightbox="images/rp-example1.png":::
  :::column-end:::
:::row-end:::

| Custom URL                 | Yes |
|----------------------------|-----|
| Saved to Microsoft Account | Yes |
| Saved to Azure AD          | No  |
| Saved to Active Directory  | No  |
| Printed                    | No  |
| Saved to file              | No  |

**Result:** The hints for the Microsoft account and custom URL are displayed.

![Example 1 of Customized BitLocker recovery screen.](images/rp-example1.png)

#### Example 2 (single recovery key with single backup)

| Custom URL                 | Yes |
|----------------------------|-----|
| Saved to Microsoft Account | No  |
| Saved to Azure AD          | No  |
| Saved to Active Directory  | Yes |
| Printed                    | No  |
| Saved to file              | No  |

**Result:** Only the custom URL is displayed.

![Example 2 of customized BitLocker recovery screen.](images/rp-example2.png)

#### Example 3 (single recovery key with multiple backups)

| Custom URL                 | No  |
|----------------------------|-----|
| Saved to Microsoft Account | Yes |
| Saved to Azure AD          | Yes |
| Saved to Active Directory  | No  |
| Printed                    | Yes |
| Saved to file              | Yes |

**Result:** Only the Microsoft Account hint is displayed.

![Example 3 of customized BitLocker recovery screen.](images/rp-example3.png)

#### Example 4  (multiple recovery passwords)

| Custom URL                 | No       |
|----------------------------|----------|
| Saved to Microsoft Account | No       |
| Saved to Azure AD          | No       |
| Saved to Active Directory  | No       |
| Printed                    | No       |
| Saved to file              | Yes      |
| Creation time              | **1PM**  |
| Key ID                     | A564F193 |

| Custom URL                 | No       |
|----------------------------|----------|
| Saved to Microsoft Account | No       |
| Saved to Azure AD          | No       |
| Saved to Active Directory  | No       |
| Printed                    | No       |
| Saved to file              | No       |
| Creation time              | **3PM**  |
| Key ID                     | T4521ER5 |

**Result:** Only the hint for a successfully backed up key is displayed, even if it isn't the most recent key.

![Example 4 of customized BitLocker recovery screen.](images/rp-example4.png)

#### Example 5  (multiple recovery passwords)

| Custom URL                 | No       |
|----------------------------|----------|
| Saved to Microsoft Account | Yes      |
| Saved to Azure AD          | Yes      |
| Saved to Active Directory  | No       |
| Printed                    | No       |
| Saved to file              | No       |
| Creation time              | **1PM**  |
| Key ID                     | 99631A34 |

| Custom URL                 | No       |
|----------------------------|----------|
| Saved to Microsoft Account | No       |
| Saved to Azure AD          | Yes      |
| Saved to Active Directory  | No       |
| Printed                    | No       |
| Saved to file              | No       |
| Creation time              | **3PM**  |
| Key ID                     | 9DF70931 |

**Result:** The hint for the most recent key is displayed.

![Example 5 of customized BitLocker recovery screen.](images/rp-example5.png)

## Using additional recovery information

Besides the 48-digit BitLocker recovery password, other types of recovery information are stored in Active Directory. This section describes how this additional information can be used.

### BitLocker key package

If the recovery methods discussed earlier in this document don't unlock the volume, the BitLocker Repair tool can be used to decrypt the volume at the block level. The tool uses the BitLocker key package to help recover encrypted data from severely damaged drives. The recovered data can then be used to salvage encrypted data, even after the correct recovery password has failed to unlock the damaged volume. It's recommended to still save the recovery password. A key package can't be used without the corresponding recovery password.

> [!NOTE]
> The BitLocker Repair tool `repair-bde.exe` must be used to use the BitLocker key package.

The BitLocker key package isn't saved by default. To save the package along with the recovery password in AD DS, the **Backup recovery password and key package** option must be selected in the group policy settings that control the recovery method. The key package can also be exported from a working volume. For more information on how to export key packages, see [Retrieving the BitLocker Key Package](#retrieve-the-bitlocker-key-package).

## Resetting recovery passwords

It's recommended to invalidate a recovery password after it has been provided and used. The recovery password can be invalidated when it has been provided and used or for any other valid reason.

The recovery password and be invalidated and reset in two ways:

- **Use `manage-bde.exe`**: `manage-bde.exe` can be used to remove the old recovery password and add a new recovery password. The procedure identifies the command and the syntax for this method.

### Resetting a recovery password using `manage-bde.exe`

1. Remove the previous recovery password.

    ```cmd
    `manage-bde.exe` -protectors -delete C: -type RecoveryPassword
    ```

2. Add the new recovery password.

    ```cmd
    `manage-bde.exe` -protectors -add C: -RecoveryPassword
    ```

3. Get the ID of the new recovery password. From the screen, copy the ID of the recovery password.

    ```cmd
    `manage-bde.exe` -protectors -get C: -Type RecoveryPassword
    ```

4. Back up the new recovery password to AD DS.

    ```cmd
    `manage-bde.exe` -protectors -adbackup C: -id {EXAMPLE6-5507-4924-AA9E-AFB2EB003692}
    ```

    > [!WARNING]
    > The braces `{}` must be included in the ID string.

## Retrieve the BitLocker key package

Two methods can be used to retrieve the key package as described in Using Additional Recovery Information:

Export a previously saved key package from AD DS. Read access is required to BitLocker recovery passwords that are stored in AD DS.

Export a new key package from an unlocked, BitLocker-protected volume. Local administrator access to the working volume is required before any damage occurred to the volume.

   strRecoveryPassword = objFveInfo.Get("msFVE-RecoveryPassword")
   strKeyPackage = objFveInfo.Get("msFVE-KeyPackage")

### Example: retrieve Bitlocker recovery keys for a Microsoft Entra joined device

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
 Key id: 69622eba-9068-449d-bc94-53e375cf5d58
 BitLocker recovery key: 117612-564564-392623-622424-499697-461120-039083-522236
 Key id: 96723a5a-1cf7-4fd6-8142-1c6603195aec
 BitLocker recovery key: 230428-214104-446864-180785-025949-078650-715165-409893
 Key id: 6a7e153f-d5e9-4547-96d6-174ff0d0bdb4
 BitLocker recovery key: 241846-437393-298925-499389-123255-123640-709808-330682
```

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

For a complete list of the `repair-bde.exe` options, see the [Repair-bde reference](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/ff829851(v=ws.11)).

<!--

By default, only Domain Admins have access to BitLocker recovery information, but [access can be delegated to others](/archive/blogs/craigf/delegating-access-in-ad-to-bitlocker-recovery-information).
-->>


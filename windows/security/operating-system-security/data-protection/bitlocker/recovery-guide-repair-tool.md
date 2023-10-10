---
title: Repair tool
description: Learn how to recover BitLocker keys from Microsoft Entra ID and Active Directory Domain Services (AD DS).
ms.collection: 
  - highpri
  - tier1
ms.topic: how-to
ms.date: 09/29/2023
---

# Repair tool

Besides the 48-digit BitLocker recovery password, other types of recovery information are stored in Active Directory. This section describes how this additional information can be used.

### BitLocker key package

If the recovery methods discussed earlier in this document don't unlock the volume, the BitLocker Repair tool can be used to decrypt the volume at the block level. The tool uses the BitLocker key package to help recover encrypted data from severely damaged drives. The recovered data can then be used to salvage encrypted data, even after the correct recovery password has failed to unlock the damaged volume. It's recommended to still save the recovery password. A key package can't be used without the corresponding recovery password.

> [!NOTE]
> The BitLocker Repair tool `repair-bde.exe` must be used to use the BitLocker key package.

The BitLocker key package isn't saved by default. To save the package along with the recovery password in AD DS, the **Backup recovery password and key package** option must be selected in the group policy settings that control the recovery method. The key package can also be exported from a working volume. For more information on how to export key packages, see [Retrieving the BitLocker Key Package](#retrieve-the-bitlocker-key-package).

## Retrieve the BitLocker key package

Two methods can be used to retrieve the key package as described in Using Additional Recovery Information:

Export a previously saved key package from AD DS. Read access is required to BitLocker recovery passwords that are stored in AD DS.

Export a new key package from an unlocked, BitLocker-protected volume. Local administrator access to the working volume is required before any damage occurred to the volume.

   strRecoveryPassword = objFveInfo.Get("msFVE-RecoveryPassword")
   strKeyPackage = objFveInfo.Get("msFVE-KeyPackage")

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
-->

## Example: retrieve Bitlocker recovery keys for a Microsoft Entra joined device

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
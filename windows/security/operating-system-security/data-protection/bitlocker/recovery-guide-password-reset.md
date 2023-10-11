---
title: Manage BitLocker recovery password
description: Learn how to recover BitLocker keys from Microsoft Entra ID and Active Directory Domain Services (AD DS).
ms.collection: 
  - highpri
  - tier1
ms.topic: how-to
ms.date: 09/29/2023
---

# Recovery password

## Retrieve the BitLocker recovery password protector for the OS volume

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

```PowerShell
(Get-BitLockerVolume -mountpoint $env:SystemDrive).KeyProtector | where-object {$_.KeyProtectorType -eq 'RecoveryPassword'} | ft KeyProtectorId,RecoveryPassword
```

#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)
---


## Add a BitLocker recovery password protector for the OS volume

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

```PowerShell
Add-BitLockerKeyProtector -MountPoint -mountpoint $env:SystemDrive -RecoveryPasswordProtector
```

#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)
---

## Remove a BitLocker key protector

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

```PowerShell
Remove-BitLockerKeyProtector -MountPoint C: -KeyProtectorId "{GUID}"
```

#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)
---


## Backup a recovery password

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

```PowerShell
(Get-BitLockerVolume -mountpoint $env:SystemDrive).KeyProtector | where-object {$_.KeyProtectorType -eq 'RecoveryPassword'} | ft KeyProtectorId,RecoveryPassword
BackuptoAAD-BitLockerKeyProtector -MountPoint $env:SystemDrive -KeyProtectorId "{GUID}"
```

#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)

---

## Reset recovery password

It's recommended to invalidate a recovery password after it has been provided and used. The recovery password can be invalidated when it has been provided and used or for any other valid reason.

#### [:::image type="icon" source="images/powershell.svg"::: **PowerShell**](#tab/powershell)

#### [:::image type="icon" source="images/cmd.svg"::: **Command Prompt**](#tab/cmd)

`manage-bde.exe` can be used to remove the old recovery password and add a new recovery password. The procedure identifies the command and the syntax for this method.

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

---

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
```

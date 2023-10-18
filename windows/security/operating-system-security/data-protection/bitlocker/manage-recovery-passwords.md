---
title: Manage BitLocker recovery passwords
description: Learn how to manage BitLocker keys for Microsoft Entra joined, Microsoft Entra hybrid joined, and Active Directory joined devices.
ms.collection: 
  - highpri
  - tier1
ms.topic: how-to
ms.date: 09/29/2023
---

# Manage BitLocker recovery passwords

### OneDrive option

There's an option for storing the BitLocker recovery key using OneDrive. This option requires that computers aren't members of a domain and that the user is using a Microsoft Account. Local user accounts don't have the option to use OneDrive. Using the OneDrive option is the default recommended recovery key storage method for computers that aren't joined to a domain.

Users can verify whether the recovery key is saved properly by checking OneDrive for the *BitLocker* folder, which is created automatically during the save process. The folder contains two files, a `readme.txt` and the recovery key. For users storing more than one recovery password on their OneDrive, they can identify the required recovery key by looking at the file name. The recovery key ID is appended to the end of the file name.

## Retrieve Bitlocker recovery keys for a Microsoft Entra joined device

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

## Retrieve Bitlocker recovery keys from Active Directory with BitLocker Recovery Password Viewer

BitLocker Recovery Password Viewer is an optional tool included with the *Remote Server Administration Tools (RSAT)*. With Recovery Password Viewer, you can view the BitLocker recovery passwords that are stored in Active Directory Domain Services (AD DS). The tool is an extension for the *Active Directory Users and Computers Microsoft Management Console (MMC)* snap-in.

With BitLocker Recovery Password Viewer you can:

- Check the Active Directory computer object's properties to find the associated BitLocker recovery passwords
- Search Active Directory for BitLocker recovery password across all the domains in the Active Directory forest. Passwords can also be searched by password identifier (ID)

### Requirements

To complete the procedures in this scenario, the following requirements must be met:

- Domain administrator credentials
- Devices must be joined to the domain
- On the domain-joined devices, BitLocker must be enabled

The following procedures describe the most common tasks performed by using the BitLocker Recovery Password Viewer.

### Install BitLocker Recovery Password Viewer


### View the recovery passwords for a computer object

1. In **Active Directory Users and Computers**, locate and then select the container in which the computer is located
1. Right-click the computer object and select **Properties**
1. In the **Properties** dialog box, select the **BitLocker Recovery** tab to view the BitLocker recovery passwords that are associated with the computer

## Copy the recovery passwords for a computer object

1. Follow the steps in the previous procedure to view the BitLocker recovery passwords
1. On the **BitLocker Recovery** tab of the **Properties** dialog box, right-click the BitLocker recovery password that needs to be copied, and then select **Copy Details**
1. Press <kbd>CTRL</kbd>+<kbd>V</kbd> to paste the copied text to a destination location, such as a text file or spreadsheet

## Locate a recovery password by using a password ID

1. In Active Directory Users and Computers, right-click the domain container and select **Find BitLocker Recovery Password**
1. In the **Find BitLocker Recovery Password** dialog box, type the first eight characters of the recovery password in the **Password ID (first 8 characters)** box, and select **Search**
1. Once the recovery password is located, you can use the previous procedure to copy it

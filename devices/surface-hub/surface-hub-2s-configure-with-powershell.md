---
title: "Configure Surface Hub 2S accounts with PowerShell"
description: "Learn how to configure Surface Hub 2S accounts with PowerShell"
keywords: separate values with commas
ms.prod: surface-hub
ms.sitesec: library
author: robmazz
ms.author: robmazz
audience: Admin
ms.topic: article
ms.localizationpriority: Normal
---
# Configure Surface Hub 2S online accounts with PowerShell

## Connect to Exchange Online PowerShell

```
$365Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.outlook.com/powershell -Credential (Get-Credential) -Authentication Basic –AllowRedirection $ImportResults = Import-PSSession $365Session
```

## Create a new Room Mailbox

```
New-Mailbox -MicrosoftOnlineServicesID account@YourDomain.com -Alias SurfaceHub2S -Name SurfaceHub2S -Room -EnableRoomMailboxAccount $true -RoomMailboxPassword (ConvertTo-SecureString  -String "<Enter Strong Password>" -AsPlainText -Force)
```

## Set Calendar Auto processing

```
Set-CalendarProcessing -Identity "account@YourDomain.com" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false –AllowConflicts   $false –DeleteComments $false -DeleteSubject $false -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This room is equipped with a Surface Hub"
```

## Assign a license


```
Connect-MsolService
Set-Msoluser -UserPrincipalName account@YourDomain.com -UsageLocation IE
Set-MsolUserLicense -UserPrincipalName "account@YourDomain.com" -AddLicenses "contoso:MEETING_ROOM"
```	 
# Connect to Skype for Business Online using PowerShell

**Install prerequisites**

- [Visual C++ 2017 Redistributable](https://aka.ms/vs/15/release/vc_redist.x64.exe)
- [Skype for Business Online PowerShell Module](https://www.microsoft.com/en-us/download/confirmation.aspx?id=39366)

```
Import-Module LyncOnlineConnector
$SfBSession = New-CsOnlineSession -Credential (Get-Credential)
Import-PSSession $SfBSession -AllowClobber
Enable the Skype for Business meeting room
Enable-CsMeetingRoom -Identity account@YourDomain.com -RegistrarPoo(Get-CsTenant).Registrarpool -SipAddressType EmailAddress
```
	 

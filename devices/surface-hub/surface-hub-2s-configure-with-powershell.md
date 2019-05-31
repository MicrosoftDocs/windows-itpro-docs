---
title: "Configure Surface Hub 2S accounts via PowerShell"
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
# Configure Surface Hub 2S accounts via PowerShell

## Connect to Exchange Online PowerShell

 ```PowerShell
 $365Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.outlook.com/powershell -Credential (Get-Credential) -Authentication Basic –AllowRedirection $ImportResults = Import-PSSession $365Session
 ```

## Create a new Room Mailbox

 ```PowerShell
New-Mailbox -MicrosoftOnlineServicesID account@YourDomain.com -Alias SurfaceHub2S -Name SurfaceHub2S -Room -EnableRoomMailboxAccount $true -RoomMailboxPassword (ConvertTo-SecureString  -String "<Enter Strong Password>" -AsPlainText -Force) 
```

## Set Calendar Auto processing
   ```PowerShell
   Set-CalendarProcessing -Identity "account@YourDomain.com" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false –AllowConflicts   $false –DeleteComments $false -DeleteSubject $false -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This room is equipped with a Surface Hub"
```
## Assign a license

```PowerShell
Connect-MsolService
Set-Msoluser -UserPrincipalName account@YourDomain.com -UsageLocation IE
Set-MsolUserLicense -UserPrincipalName "account@YourDomain.com" -AddLicenses "contoso:MEETING_ROOM"
```
	 
# Connecting to Skype for Business Online using PowerShell

**Install prerequisites**

- [Visual C++ 2017 Redistributable](https://aka.ms/vs/15/release/vc_redist.x64.exe)
- [Skype for Business Online PowerShell Module](https://www.microsoft.com/en-us/download/confirmation.aspx?id=39366)

```PowerShell
 Import-Module LyncOnlineConnector
 $SfBSession = New-CsOnlineSession -Credential (Get-Credential)
 Import-PSSession $SfBSession -AllowClobber
 Enable the Skype for Business meeting room
 Enable-CsMeetingRoom -Identity account@YourDomain.com -RegistrarPoo(Get-CsTenant).Registrarpool -SipAddressType EmailAddress
```
	 
# Configuring on-premises accounts using PowerShell
## Connect to Exchange Server PowerShell

> [!NOTE]
> It is important that you know the FQDN of the Client Access service of the on-premises Exchange server.

```PowerShell
 $ExchServer = Read-Host "Please Enter the FQDN of your Exchange Server"
  $ExchSession = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri http://$ExchServer/PowerShell/ -Authentication Kerberos -Credential (Get-Credential)
  Import-PSSession $ExchSession
```

## Create the device account
   ```PowerShell
New-Mailbox -UserPrincipalName Hub01@contoso.com -Alias Hub01 -Name "Hub 01" -Room -EnableRoomMailboxAccount $true -RoomMailboxPassword (ConvertTo-SecureString -String <password> -AsPlainText -Force)
```

## Set automatic calendar processing
 ```PowerShell
Set-CalendarProcessing -Identity "HUB01@contoso.com" -AutomateProcessing AutoAccept -AddOrganizerToSubject $false –AllowConflicts   $false –DeleteComments $false -DeleteSubject $false -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse "This room is equipped with a Surface Hub"
   ```

## Enable the Skype for Business object

> [!NOTE]
> It is important that you know the FQDN of the Skype for Business Registrar Pool.


```PowerShell
Enable-CsMeetingRoom -Identity Contoso\HUB01 -SipAddressType emailaddress -RegistrarPool SfbIEFE01.contoso.local
```

# Mobile Device Mailbox Policy

You may need to create a new Mobile Device Mailbox Policy (also known as ActiveSync Policy) to allow your Surface Hub to connect to your online or on-premises environment.


## Create a Surface Hub mobile device mailbox policy
```PowerShell
New-MobileDeviceMailboxPolicy -Name “Surface Hubs” -PasswordEnabled $false
```

## Additional settings

It is recommended to add a MailTip to Surface Hub rooms so users remember to make the meeting a Skype for Business or Teams meeting:

```PowerShell
Set-Mailbox "Surface Hub 2S" -MailTip "This is a Surface Hub room. Please make sure this is a Microsoft Teams meeting." 
```

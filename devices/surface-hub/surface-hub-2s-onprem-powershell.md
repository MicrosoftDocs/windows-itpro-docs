---
title: "Configure Surface Hub 2S on-premises accounts with PowerShell"
description: "Learn how to configure Surface Hub 2S on-premises accounts with PowerShell"
keywords: separate values with commas
ms.prod: surface-hub
ms.sitesec: library
author: robmazz
ms.author: robmazz
audience: Admin
ms.topic: article
ms.localizationpriority: Normal
---

# Configure Surface Hub 2S on-premises accounts with PowerShell

## Connect to Exchange Server PowerShell

> [!IMPORTANT]
> You'll need the Fully Qualified Domain Name (FQDN) for the Client Access service of the on-premises Exchange server for some of these cmdlets.

```PowerShell
$ExchServer = Read-Host "Please Enter the FQDN of your Exchange Server"
$ExchSession = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri http://$ExchServer/PowerShell/ -Authentication Kerberos -Credential (Get-Credential)
Import-PSSession $ExchSession
```

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

## Mobile Device Mailbox Policy

You may need to create a Mobile Device Mailbox Policy (also known as ActiveSync Policy) to allow your Surface Hub to connect to your online or on-premises environment.

## Create a Surface Hub mobile device mailbox policy

```PowerShell
New-MobileDeviceMailboxPolicy -Name “Surface Hubs” -PasswordEnabled $false
```

## Additional settings

It is recommended to add a MailTip to Surface Hub rooms so users remember to make the meeting a Skype for Business or Teams meeting:

```PowerShell
Set-Mailbox "Surface Hub 2S" -MailTip "This is a Surface Hub room. Please make sure this is a Microsoft Teams meeting."
```

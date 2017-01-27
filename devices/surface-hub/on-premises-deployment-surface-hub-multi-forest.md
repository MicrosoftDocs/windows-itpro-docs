---
title: On-premises deployment multi-forest (Surface Hub)
description: This topic explains how you add a device account for your Microsoft Surface Hub when you have a multi-forest, on-premises deployment.
ms.assetid: 80E12195-A65B-42D1-8B84-ECC3FCBAAFC6
keywords: single forest deployment, on prem deployment, device account, Surface Hub
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: surfacehub
author: TrudyHa
localizationpriority: medium
---

# On-premises deployment for Surface Hub in a multi-forest environment


This topic explains how you add a device account for your Microsoft Surface Hub when you have a multi-forest, on-premises deployment.

If you have a multi-forest on-premises deployment with Microsoft Exchange 2013 or later and Skype for Business 2013 or later, then you can [use the provided PowerShell scripts](appendix-a-powershell-scripts-for-surface-hub.md#create-on-premise-ps-scripts) to create device accounts. If you’re using a single-forest deployment, see [On-premises deployment for Surface Hub in a single-forest environment](on-premises-deployment-surface-hub-device-accounts.md).

1.  Start a remote PowerShell session from a PC and connect to Exchange.

    Be sure you have the right permissions set to run the associated cmdlets.

    Note here that `$strExchangeServer` is the fully qualified domain name (FQDN) of your Exchange server, and `$strLyncFQDN` is the FQDN of your Skype for Business server.

    ```PowerShell
    Set-ExecutionPolicy Unrestricted
    $org='contoso.microsoft.com'
    $cred=Get-Credential $admin@$org
    $sessExchange = New-PSSession -ConfigurationName microsoft.exchange -Credential $cred -AllowRedirection -Authentication Kerberos -ConnectionUri "http://$strExchangeServer/powershell" -WarningAction SilentlyContinue
    $sessLync = New-PSSession -Credential $cred -ConnectionURI "https://$strLyncFQDN/OcsPowershell" -AllowRedirection -WarningAction SilentlyContinue
    Import-PSSession $sessExchange
    Import-PSSession $sessLync
    ```

2.  After establishing a session, create a new mailbox in the Resource Forest. This will allow the account to authenticate into the Surface Hub.

    If you're changing an existing resource mailbox:

    ```PowerShell
    New-Mailbox -UserPrincipalName HUB01@contoso.com -Alias HUB01 -Name "Hub-01"
    ```

3.  After setting up the mailbox, you will need to either create a new Exchange ActiveSync policy, or use a compatible existing policy.

Surface Hubs are only compatible with device accounts that have an ActiveSync policy where the PasswordEnabled property is set to False. If this isn’t set properly, then Exchange services on the Surface Hub (mail, calendar, and joining meetings), will not be enabled.

If you haven’t created a compatible policy yet, use the following cmdlet-—this one creates a policy called "Surface Hubs". Once it’s created, you can apply the same policy to other device accounts.


    ```PowerShell
    $easPolicy = New-MobileDeviceMailboxPolicy -Name “SurfaceHubs” -PasswordEnabled $false
    ```

    Once you have a compatible policy, then you will need to apply the policy to the device account. 

    ```PowerShell
    Set-CASMailbox $acctUpn -ActiveSyncMailboxPolicy $easPolicy -ActiveSyncEnabled $true
    Set-Mailbox $acctUpn -Type Room
    ```

4.  Various Exchange properties can be set on the device account to improve the meeting experience for people. You can see which properties need to be set in the [Exchange properties](exchange-properties-for-surface-hub-device-accounts.md) section.

    ```PowerShell
    Set-CalendarProcessing -Identity $acctUpn -AutomateProcessing AutoAccept -AddOrganizerToSubject $false –AllowConflicts $false –DeleteComments $false -DeleteSubject $false -RemovePrivateProperty $false
    Set-CalendarProcessing -Identity $acctUpn -AddAdditionalResponse $true -AdditionalResponse "This is a Surface Hub room!"
    ```

5.  If you decide to have the password not expire, you can set that with PowerShell cmdlets too. See [Password management](password-management-for-surface-hub-device-accounts.md) for more information. This should be set in the User Forest.

    ```PowerShell
    Set-AdUser $acctUpn -PasswordNeverExpires $true
    ```

6.  Enable the account in Active Directory so it will authenticate to the Surface Hub. This should be set in the User Forest.

    ```PowerShell
    Set-AdUser $acctUpn -Enabled $true
    ```

6. You now need to change the room mailbox to a linked mailbox:

    ```PowerShell
    $cred=Get-Credential AuthForest\LinkedRoomTest1
    Set-mailbox -Alias LinkedRoomTest1 -LinkedMasterAccount AuthForest\LinkedRoomTest1 -LinkedDomainController AuthForest-4939.AuthForest.extest.contoso.com -Name LinkedRoomTest1 -LinkedCredential $cred -Identity LinkedRoomTest1
    ```

7.  Enable the device account with Skype for Business by enabling your Surface Hub AD account on a Skype for Business Server pool:

    ```PowerShell
    Enable-CsMeetingRoom -SipAddress "sip:HUB01@contoso.com"
     -DomainController DC-ND-001.contoso.com -RegistrarPool LYNCPool15.contoso.com
     -Identity HUB01
    ```

    You'll need to use the Session Initiation Protocol (SIP) address and domain controller for the Surface Hub, along with your own Skype for Business Server pool identifier and user identity.



 






---
title: On-premises deployment (Surface Hub)
description: This topic explains how you add a device account for your Microsoft Surface Hub when you have a single-forest, on-premises deployment.
ms.assetid: 80E12195-A65B-42D1-8B84-ECC3FCBAAFC6
keywords: ["single forest deployment", "on prem deployment", "device account", "Surface Hub"]
author: TrudyHa
---

# On-premises deployment (Surface Hub)


This topic explains how you add a device account for your Microsoft Surface Hub when you have a single-forest, on-premises deployment.

If you have a single-forest on-premises deployment with Microsoft Exchange 2013 or later and Skype for Business 2013 or later, then you can [use the provided PowerShell scripts](appendix-a-powershell-scripts-for-surface-hub.md#create-on-premise-ps-scripts) to create device accounts. If you’re using a multi-forest deployment, or are using Exchange 2010 or Lync 2010, you can use equivalent cmdlets that will produce the same results. Those cmdlets are described in this section.

1.  Start a remote PowerShell session from a PC and connect to Exchange.

    Be sure you have the right permissions set to run the associated cmdlets.

    Note here that `$strExchangeServer` is the fully qualified domain name (FQDN) of your Exchange server, and `$strLyncFQDN` is the FQDN of your Skype for Business server.

    ```PowerShell
    Set-ExecutionPolicy Unrestricted
    $org=&#39;contoso.microsoft.com&#39;
    $cred=Get-Credential $admin@$org
    $sessExchange = New-PSSession -ConfigurationName microsoft.exchange -Credential $cred -AllowRedirection -Authentication Kerberos -ConnectionUri "http://$strExchangeServer/powershell" -WarningAction SilentlyContinue
    $sessLync = New-PSSession -Credential $cred -ConnectionURI "https://$strLyncFQDN/OcsPowershell" -AllowRedirection -WarningAction SilentlyContinue
    Import-PSSession $sessExchange
    Import-PSSession $sessLync
    ```

2.  After establishing a session, you’ll either create a new mailbox and enable it as a RoomMailboxAccount, or change the settings for an existing room mailbox. This will allow the account to authenticate into the Surface Hub.

    If you're changing an existing resource mailbox:

    ```PowerShell
    Set-Mailbox -Identity &#39;HUB01&#39; -EnableRoomMailboxAccount $true -RoomMailboxPassword (ConvertTo-SecureString -String <password> -AsPlainText -Force)
    ```

    If you’re creating a new resource mailbox:

    ```PowerShell
    New-Mailbox -UserPrincipalName HUB01@contoso.com -Alias HUB01 -Name "Hub-01" -Room -EnableRoomMailboxAccount $true -RoomMailboxPassword (ConvertTo-SecureString -String <password> -AsPlainText -Force)
    ```

3.  After setting up the mailbox, you will need to either create a new Exchange ActiveSync policy, or use a compatible existing policy.

    Surface Hubs are only compatible with device accounts that have an ActiveSync policy where the **PasswordEnabled** property is set to False. If this isn’t set properly, then Exchange services on the Surface Hub (mail, calendar, and joining meetings), will not be enabled.

    If you haven’t created a compatible policy yet, use the following cmdlet—this one creates a policy called "Surface Hubs". Once it’s created, you can apply the same policy to other device accounts.

    ```PowerShell
    $easPolicy = New-MobileDeviceMailboxPolicy -Name “SurfaceHubs” -PasswordEnabled $false
    ```

    Once you have a compatible policy, then you will need to apply the policy to the device account. However, policies can only be applied to user accounts and not resource mailboxes. You need to convert the mailbox into a user type, apply the policy, and then convert it back into a mailbox—you may need to re-enable it and set the password again too.

    ```PowerShell
    Set-Mailbox $acctUpn -Type Regular
    Set-CASMailbox $acctUpn -ActiveSyncMailboxPolicy $easPolicy
    Set-Mailbox $acctUpn -Type Room
    Set-Mailbox $credNewAccount.UserName -RoomMailboxPassword $credNewAccount.Password -EnableRoomMailboxAccount $true
    ```

4.  Various Exchange properties can be set on the device account to improve the meeting experience for people. You can see which properties need to be set in the [Exchange properties](exchange-properties-for-surface-hub-device-accounts.md) section.

    ```PowerShell
    Set-CalendarProcessing -Identity $acctUpn -AutomateProcessing AutoAccept -AddOrganizerToSubject $false –AllowConflicts $false –DeleteComments $false -DeleteSubject $false -RemovePrivateProperty $false
    Set-CalendarProcessing -Identity $acctUpn -AddAdditionalResponse $true -AdditionalResponse "This is a <tla rid="surface_hub"/> room!"
    ```

5.  If you decide to have the password not expire, you can set that with PowerShell cmdlets too. See [Password management](password-management-for-surface-hub-device-accounts.md) for more information.

    ```PowerShell
    Set-AdUser $acctUpn -PasswordNeverExpires $true
    ```

6.  Enable the account in Active Directory so it will authenticate to the Surface Hub.

    ```PowerShell
    Set-AdUser $acctUpn -Enabled $true
    ```

7.  Enable the device account with Skype for Business by enabling your Surface Hub AD account on a Skype for Business Server pool:

    ```PowerShell
    Enable-CsMeetingRoom -SipAddress "sip:HUB01@contoso.com"
     -DomainController DC-ND-001.contoso.com -RegistrarPool LYNCPool15.contoso.com
     -Identity HUB01
    ```

    You'll need to use the Session Initiation Protocol (SIP) address and domain controller for the Surface Hub, along with your own Skype for Business Server pool identifier and user identity.

8.  OPTIONAL: You can also allow your Surface Hub to make and receive public switched telephone network (PSTN) phone calls by enabling Enterprise Voice for your account. Enterprise Voice isn't a requirement for Surface Hub, but if you want PSTN dialing functionality for the Surface Hub client, here's how to enable it:

    ```PowerShell
    CsMeetingRoom HUB01 -DomainController DC-ND-001.contoso.com
     -LineURItel: +14255550555;ext=50555" Set-CsMeetingRoom -DomainController DC-ND-001.contoso.com
     -Identity HUB01 -EnterpriseVoiceEnabled $true
    ```

    Again, you'll need to replace the provided domain controller and phone number examples with your own information. The parameter value `$true` stays the same.

 

 






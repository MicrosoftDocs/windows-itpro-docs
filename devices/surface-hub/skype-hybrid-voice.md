---
title: Online or hybrid deployment using Skype Hybrid Voice environment  (Surface Hub)
description: This topic explains how to enable Skype for Business Cloud PBX with on premises PSTN connectivity via Cloud Connector Edition or Skype for Business 2015 pool.
keywords: hybrid deployment, Skype Hybrid Voice 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: surfacehub
author: jdeckerMS
localizationpriority: medium
---

# Online or hybrid deployment using Skype Hybrid Voice environment  (Surface Hub)

This topic explains how to enable Skype for Business Cloud PBX with on-premises Public Switched Telephone Network (PSTN) connectivity via Cloud Connector Edition or Skype for Business 2015 pool. In this option. your Skype for Business home pools and Exchange servers are in the Cloud, and are connected by PSTN via an on-premises pool running Skype for Business 2015 or Cloud Connector edition. [Learn more about different Cloud PBX options](https://technet.microsoft.com/library/mt612869.aspx).  

If you deployed Skype for Business Cloud PBX with one of the hybrid voice options, follow the steps below to enable the room account for Surface Hub. It is important to create a regular user account first, assign all hybrid voice options and phone numbers, and then convert the account to a room account. If you do not follow this order, you will not be able to assign a hybrid phone number.  

>[!WARNING]
>If you create an account before configuration of Hybrid voice (you run Enable-CSMeetingRoom command), you will not be able to configure required hybrid voice parameters. In order to configure hybrid voice parameters for a previously configured account or to reconfigure a phone number, delete the E5 or E3  + Cloud PBX add-on license. Follow the steps below, starting at step 3.

1. Create a new user account for Surface Hub. This example uses `surfacehub2@adatum.com`. The account can be created in local Active Directory and synchronized to the cloud, or created directly in the cloud. 

    ![new object user](images/new-user-hybrid-voice.png)

2.	Select **Password Never Expires**. This is important for a Surface Room device.

    ![Password never expires](images/new-user-password-hybrid-voice.png)

3.	In Office 365, add **E5** license or **E3 and Cloud PBX** add-on to the user account created for the room. This is required for Hybrid Voice to work.

    ![Add product license](images/product-license-hybrid-voice.png)

4.	Wait approximately 15 minutes until your user account appears in Skype for Business Online.

5.	After your user is created in Skype for Business Online, enable it for Hybrid Voice in Skype for Business Remote PowerShell by running the following cmdlet:

    ```
    Set-csuser surfacehub2@adatum.biz EnterpriseVoiceEnabled $true -HostedVocieMail $true -onpremlineuri tel:+15005000102
    ```
    
6.	Validate Hybrid Voice call flow by placing test calls.

7.	Start a remote PowerShell session on a PC and connect to Exchange by running the following cmdlets.

    ```
    Set-ExecutionPolicy Unrestricted
    $cred=Get-Credential -Message "Please use your Office 365 admin credentials"
    $sess= New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/ps1-liveid/ -Credential $cred -Authentication Basic -AllowRedirection
    Import-PSSession $sess
    ```
    
8.	After establishing a session, modify the mailbox account on previous steps and enable it as a RoomMailboxAccount. This allows the account to authenticate with Surface Hub.

    ```
    Set-Mailbox surfacehub2@adatum.biz -Type Room
    Set-Mailbox surfacehub2@adatum.biz -EnableRoomMailboxAccount $true -RoomMailboxPassword (ConvertTo-SecureString -String <password> -AsPlainText -Force)
    ```
    
9.	After setting up the mailbox, you will need to either create a new Exchange ActiveSync policy, or use a compatible existing policy.

    Surface Hubs are only compatible with device accounts that have an ActiveSync policy where the **PasswordEnabled** property is set to **False**. If this isn’t set properly, then Exchange services on the Surface Hub (mail, calendar, and joining meetings), will not be enabled.
    
    If you haven’t created a compatible policy yet, use the following cmdlet—this one creates a policy called "Surface Hubs". Once it’s created, you can apply the same policy to other device accounts.

    ```
    $easPolicy = New-MobileDeviceMailboxPolicy -Name “SurfaceHubs” -PasswordEnabled $false
    ```
    
    Once you have a compatible policy, then you will need to apply the policy to the device account. However, policies can only be applied to user accounts and not resource mailboxes. You need to convert the mailbox into a user type, apply the policy, and then convert it back into a mailbox—you may need to re-enable it and set the password again.
    
    ```
    Set-Mailbox surfacehub2@adatum.biz -Type Regular
    Set-CASMailbox surfacehub2@adatum.biz -ActiveSyncMailboxPolicy $easPolicy.id
    Set-Mailbox surfacehub2@adatum.biz -Type Room
    $credNewAccount = Get-Credential -Message "Please provide the Surface Hub username and password"
    Set-Mailbox surfacehub2@adatum.biz -RoomMailboxPassword $credNewAccount.Password -EnableRoomMailboxAccount $true
    ```
    
10.	Various Exchange properties must be set on the device account to improve the meeting experience. You can see which properties need to be set in [Exchange properties](exchange-properties-for-surface-hub-device-accounts.md).

    ```
    Set-CalendarProcessing surfacehub2@adatum.biz -AutomateProcessing AutoAccept -AddOrganizerToSubject $false –AllowConflicts $false –DeleteComments $false -DeleteSubject $false -RemovePrivateProperty $false
    Set-CalendarProcessing surfacehub2@adatum.biz -AddAdditionalResponse $true -AdditionalResponse "This is a Surface Hub room!"
    ```

11.	Enable the mailbox as a meeting device in Skype for Business Online. The first step is to understand your home registrar, to get the registrar pool. The second step is to run cmdlet which enables the acount as a meeting device (you need registrarpool with from the first cmdlet)

    ```
    Get-CsTenant | select registrarpool
    Enable-CsMeetingRoom surfacehub2@adatum.biz -RegistrarPool  'sippoolbl20a04.infra.lync.com' -SipAddressType UserPrincipalName
    ```
    
    As a result of running this cmdlet, users will be asked if they are in a meeting room, as shown in the following image. **Yes** will mute the microphone and speaker.

    ![](images/adjust-room-audio.png)

    It also will change lobby behavior, you can read about lobby behavior. 
    
At this moment the  room account is fully configured, including Hybrid Voice. Additional attributes, like description, location, etc., must be set in on-premises as we sync the room from on-premises. If you create a room in online, these parameters can be set online. 

In the following image, you can see how the device appears to users.


![](images/select-room-hybrid-voice.png)
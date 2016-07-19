---
title: Online deployment with Office 365 (Surface Hub)
description: This topic has instructions for adding a device account for your Microsoft Surface Hub when you have a pure, online deployment.
ms.assetid: D325CA68-A03F-43DF-8520-EACF7C3EDEC1
keywords: device account for Surface Hub, online deployment
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: surfacehub
author: TrudyHa
localizationpriority: high
---

# Online deployment with Office 365 (Surface Hub)


This topic has instructions for adding a device account for your Microsoft Surface Hub when you have a pure, online deployment.

If you have a pure, online (O365) deployment, then you can [use the provided PowerShell scripts](appendix-a-powershell-scripts-for-surface-hub.md#create-os356-ps-scripts) to create device accounts. If you’re using Microsoft Exchange 2010 or Lync 2010, you can use equivalent cmdlets that will produce the same results. Those cmdlets are described in this section.

1.  Start a remote PowerShell session on a PC and connect to Exchange.

    Be sure you have the right permissions set to run the associated cmdlets.

    ```PowerShell
    Set-ExecutionPolicy Unrestricted
    $org='contoso.microsoft.com'
    $cred=Get-Credential $admin@$org
    $sess= New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $cred -Authentication Basic -AllowRedirection
    Import-PSSession $sess
    ```

2.  After establishing a session, you’ll either create a new mailbox and enable it as a RoomMailboxAccount, or change the settings for an existing room mailbox. This will allow the account to authenticate into the Surface Hub.

    If you're changing an existing resource mailbox:

    ```PowerShell
    Set-Mailbox -Identity 'HUB01' -EnableRoomMailboxAccount $true -RoomMailboxPassword (ConvertTo-SecureString -String <password> -AsPlainText -Force)
    ```

    If you’re creating a new resource mailbox:

    ```PowerShell
    New-Mailbox -MicrosoftOnlineServicesID HUB01@contoso.com -Alias HUB01 -Name "Hub-01" -Room -EnableRoomMailboxAccount $true -RoomMailboxPassword (ConvertTo-SecureString -String <password> -AsPlainText -Force)
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
    Set-CASMailbox $acctUpn -ActiveSyncMailboxPolicy $easPolicy.Id
    Set-Mailbox $acctUpn -Type Room
    Set-Mailbox $credNewAccount.UserName -RoomMailboxPassword $credNewAccount.Password -EnableRoomMailboxAccount $true
    ```

4.  Various Exchange properties must be set on the device account to improve the meeting experience. You can see which properties need to be set in the [Exchange properties](exchange-properties-for-surface-hub-device-accounts.md) section.

    ```PowerShell
    Set-CalendarProcessing -Identity $acctUpn -AutomateProcessing AutoAccept -AddOrganizerToSubject $false –AllowConflicts $false –DeleteComments $false -DeleteSubject $false -RemovePrivateProperty $false
    Set-CalendarProcessing -Identity $acctUpn -AddAdditionalResponse $true -AdditionalResponse "This is a Surface Hub room!"
    ```

5.  Connect to Azure AD.

    You need to connect to Azure AD to apply some account settings. You can run this cmdlet to connect.

    ```PowerShell
    Connect-MsolService -Credential $cred
    ```

6.  If you decide to have the password not expire, you can set that with PowerShell cmdlets too. See [Password management](password-management-for-surface-hub-device-accounts.md) for more information.

    ```PowerShell
    Set-MsolUser -UserPrincipalName $acctUpn -PasswordNeverExpires $true
    ```

7.  The device account needs to have a valid Office 365 (O365) license, or Exchange and Skype for Business will not work. If you have the license, you need to assign a usage location to your device account—this determines what license SKUs are available for your account.

    Next, you can use `Get-MsolAccountSku` to retrieve a list of available SKUs for your O365 tenant.

    Once you list out the SKUs, you can add a license using the `Set-MsolUserLicense` cmdlet. In this case, `$strLicense` is the SKU code that you see (for example, *contoso:STANDARDPACK*).

    ```PowerShell
    Set-MsolUser -UserPrincipalName $acctUpn -UsageLocation "US"
    Get-MsolAccountSku
    Set-MsolUserLicense -UserPrincipalName $acctUpn -AddLicenses $strLicense
    ```

8.  Enable the device account with Skype for Business.

    In order to enable Skype for Business, your environment will need to meet the following prerequisites:

    -   You'll need to have Lync Online (Plan 2) or higher in your O365 plan. The plan needs to support conferencing capability.
    -   If you need Enterprise Voice (PSTN telephony) using telephony service providers for the Surface Hub, you need Lync Online (Plan 3).
    -   Your tenant users must have Exchange mailboxes.
    -   Your Surface Hub account does require a Lync Online (Plan 2) or Lync Online (Plan 3) license, but it does not require an Exchange Online license.

    <!-- -->

    -   Start by creating a remote PowerShell session from a PC.

        ```PowerShell
        Import-Module LyncOnlineConnector  
        $cssess=New-CsOnlineSession -Credential $cred  
        Import-PSSession $cssess -AllowClobber
        ```

    -   To enable your Surface Hub account for Skype for Business Server, run this cmdlet:

        ```PowerShell
        Enable-CsMeetingRoom -Identity $rm -RegistrarPool  
        "sippoolbl20a04.infra.lync.com" -SipAddressType EmailAddress
        ```

        If you aren't sure what value to use for the `RegistrarPool` parameter in your environment, you can get the value from an existing Skype for Business user using this cmdlet:

        ```PowerShell
        Get-CsOnlineUser -Identity ‘alice@contoso.microsoft.com’| fl *registrarpool*
        ```

9.  Assign Skype for Business license to your Surface Hub account.

    Once you've completed the preceding steps to enable your Surface Hub account in Skype for Business Online, you need to assign a license to the Surface Hub. Using the O365 administrative portal, assign either a Skype for Business Online (Plan 2) or a Skype for Business Online (Plan 3) to the device.

    -   Login as a tenant administrator, open the O365 Administrative Portal, and click on the Admin app.
    -   Click on **Users and Groups** and then **Add users, reset passwords, and more**.
    -   Select the Surface Hub account, and then click or tap the pen icon, which means edit.
    -   Click on the **Licenses** option.
    -   In the **Assign licenses** section, you need to select Skype for Business (Plan 2) or Skype for Business (Plan 3), depending on your licensing and what you've decided in terms of needing Enterprise Voice. You'll have to use a Plan 3 license if you want to use Enterprise Voice on your Surface Hub.
    -   Click **Save** and you're done.

>**Note**: It's also possible to use the Windows Azure Active Directory Module for Windows PowerShell to run the cmdlets needed to assign one of these licenses, but that's not covered here.

For validation, you should be able to use any Skype for Business client (PC, Android, etc) to log in to this account.






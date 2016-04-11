---
title: Hybrid deployment (Surface Hub)
description: A hybrid deployment requires special processing in order to set up a device account for your Microsoft Surface Hub.
ms.assetid: 7BFBB7BE-F587-422E-9CE4-C9DDF829E4F1
keywords: ["hybrid deployment", "device account for Surface Hub", "Exchange hosted on-prem", "Exchange hosted online"]
author: TrudyHa
---

# Hybrid deployment (Surface Hub)


A hybrid deployment requires special processing in order to set up a device account for your Microsoft Surface Hub. If you’re using a hybrid deployment, in which your organization has a mix of services, with some hosted on-premises and some hosted online, then your configuration will depend on where each service is hosted. This topic covers hybrid deployments for [Exchange hosted on-prem](#hybrid-exchange-on-prem), and [Exchange hosted online](#hybrid-exchange-online). Because there are so many different variations in this type of deployment, it's not possible to provide detailed instructions for all of them. The following process will work for many configurations. If the process isn't right for your setup, we recommend that you use PowerShell (see [Appendix: PowerShell](appendix-a-powershell-scripts-for-surface-hub.md)) to achieve the same end result as documented here, and for other deployment options. You should then use the provided PowerShell script to verify your Surface Hub setup. (See [Account Verification Script](appendix-a--powershell.md#acct-verification-ps-scripts).)

## <a href="" id="hybrid-exchange-on-prem"></a>Exchange on-prem


Use this procedure if you use Exchange on-prem.

1.  For this procedure, you'll be using AD admin tools to add an email address for your on-prem domain account. This account will be synced to Office 365.

    1.  In **Active Directory Users and Computers** AD tool, right-click on the folder or Organizational Unit that your Surface Hub accounts will be created in, click **New**, and **User**.
    2.  Type the display name from the previous cmdlet into the **Full name** box, and the alias into the **User logon name** box. Click **Next**.

        ![new object box for creating a new user in active directory. ](images/hybriddeployment-01a.png)

    3.  Type the password for this account. You'll need to retype it for verification. Make sure the **Password never expires** checkbox is the only option selected.
        **Important**  Selecting **Password never expires** is a requirement for Skype for Business on the Surface Hub. Your domain rules may prohibit passwords that don't expire. If so, you'll need to create an exception for each Surface Hub device account.

         

        ![image showing password dialog box. ](images/hybriddeployment-02a.png)
    4.  Click **Finish** to create the account.

        ![image with account name, logon name, and password options for new user. ](images/hybriddeployment-03a.png)

2.  After you've created the account, run a directory synchronization. When it's complete, go to the users page in your Office 365 admin center and verify that the account created in the previous steps has merged to online.
3.  Enable the remote mailbox.

    Open your on-prem Exchange Management Shell with administrator permissions, and run this cmdlet.

    ```PowerShell
    Enable-Mailbox &#39;HUB01@contoso.com&#39; -RemoteRoutingAddress &#39;HUB01@contoso.com&#39; -Room
    ```

4.  Connect to Microsoft Exchange Online and set some properties for the account in Office 365.

    Start a remote PowerShell session on a PC and connect to Microsoft Exchange. Be sure you have the right permissions set to run the associated cmdlets.

    The next steps will be run on your Office 365 tenant.

    ```PowerShell
    Set-ExecutionPolicy Unrestricted
    $org=&#39;contoso.com&#39;
    $cred=Get-Credential $admin@$org
    $sess= New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri &#39;https://outlook.office365.com/powershell-liveid/&#39; -Credential $cred -Authentication Basic -AllowRedirection
    Import-PSSession $sess
    ```

5.  Create a new Exchange ActiveSync policy, or use a compatible existing policy.

    Surface Hubs are only compatible with device accounts that have an ActiveSync policy where the **PasswordEnabled** property is set to False. If this isn’t set properly, then Exchange services on the Surface Hub (mail, calendar, and joining meetings), will not be enabled.

    If you haven’t created a compatible policy yet, use the following cmdlet—this one creates a policy called "Surface Hubs". Once it’s created, you can apply the same policy to other device accounts.

    ```PowerShell
    $easPolicy = New-MobileDeviceMailboxPolicy -Name “SurfaceHubs” -PasswordEnabled $false
    ```

    Once you have a compatible policy, then you will need to apply the policy to the device account.

    ```PowerShell
    Set-CASMailbox &#39;HUB01@contoso.com&#39; -ActiveSyncMailboxPolicy $easPolicy
    ```

6.  Set Exchange properties.

    Setting Exchange properties on the device account to improve the meeting experience. You can see which properties need to be set in the [Exchange properties](exchange-properties-for-surface-hub-device-accounts.md) section.

    ```PowerShell
    Set-CalendarProcessing -Identity &#39;HUB01@contoso.com&#39; -AutomateProcessing AutoAccept -AddOrganizerToSubject $false –AllowConflicts $false –DeleteComments $false -DeleteSubject $false -RemovePrivateProperty $false
    Set-CalendarProcessing -Identity &#39;HUB01@contoso.com&#39; -AddAdditionalResponse $true -AdditionalResponse &#39;This is a Surface Hub room!&#39;
    ```

7.  Connect to Azure AD.

    You need to connect to Azure AD to apply some account settings. You can run this cmdlet to connect.

    ```PowerShell
    Connect-MsolService -Credential $cred
    ```

8.  Assign an Office 365 license.

    The device account needs to have a valid Office 365 (O365) license, or Exchange and Skype for Business will not work. If you have the license, you need to assign a usage location to your device account—this determines what license SKUs are available for your account.

    Next, you can use `Get-MsolAccountSku` to retrieve a list of available SKUs for your O365 tenant.

    Once you list out the SKUs, you can add a license using the `Set-MsolUserLicense` cmdlet. In this case, `$strLicense` is the SKU code that you see (for example, *contoso:STANDARDPACK*).

    ```PowerShell
    Set-MsolUser -UserPrincipalName &#39;HUB01@contoso.com&#39; -UsageLocation &#39;US&#39;
    Get-MsolAccountSku
    Set-MsolUserLicense -UserPrincipalName &#39;HUB01@contoso.com&#39; -AddLicenses $strLicense
    ```

9.  Enable the device account with Skype for Business.

    In order to enable Skype for Business, your environment will need to meet the following prerequisites:

    -   You'll need to have Lync Online (Plan 2) or higher in your O365 plan. The plan needs to support conferencing capability.
    -   If you need Enterprise Voice (PSTN telephony) using telephony service providers for the Surface Hub, you need Lync Online (Plan 3).
    -   Your tenant users must have Exchange mailboxes.
    -   Your Surface Hub account does require a Lync Online (Plan 2) or Lync Online (Plan 3) license, but it does not require an Exchange Online license.

    1.  Start by creating a remote PowerShell session from a PC.

        ```PowerShell
        Import-Module LyncOnlineConnector  
        $cssess=New-CsOnlineSession -Credential $cred  
        Import-PSSession $cssess -AllowClobber
        ```

    2.  To enable your Surface Hub account for Skype for Business Server, run this cmdlet:

        ```PowerShell
        Enable-CsMeetingRoom -Identity $rm -RegistrarPool  
        &#39;sippoolbl20a04.infra.lync.com&#39; -SipAddressType EmailAddress
        ```

        If you aren't sure what value to use for the `RegistrarPool` parameter in your environment, you can get the value from an existing Skype for Business user using this cmdlet:

        ```PowerShell
        Get-CsOnlineUser -Identity ‘alice@contoso.com’| fl *registrarpool*
        ```

10. Assign Skype for Business license to your Surface Hub account

    Once you've completed the preceding steps to enable your Surface Hub account in Skype for Business Online, you need to assign a license to the Surface Hub. Using the O365 administrative portal, assign either a Skype for Business Online (Plan 2) or a Skype for Business Online (Plan 3) to the device.

    1.  Login as a tenant administrator, open the O365 Administrative Portal, and click on the Admin app.
    2.  Click on **Users and Groups** and then **Add users, reset passwords, and more**.
    3.  Click the Surface Hub account, and then click the pen icon to edit the account information.
    4.  Click **Licenses**.
    5.  In **Assign licenses**, select Skype for Business (Plan 2) or Skype for Business (Plan 3), depending on your licensing and Enterprise Voice requirements. You'll have to use a Plan 3 license if you want to use Enterprise Voice on your Surface Hub.
    6.  Click **Save**.

    **Note**  You can also use the Windows Azure Active Directory Module for Windows PowerShell to run the cmdlets needed to assign one of these licenses, but that's not covered here.

     

    For validation, you should be able to use any Skype for Business client (PC, Android, etc) to log in to this account.

## <a href="" id="hybrid-exchange-online"></a>Exchange online


Use this procedure if you use Exchange online.

1.  Create an email account in Office 365.

    Start a remote PowerShell session on a PC and connect to Exchange. Be sure you have the right permissions set to run the associated cmdlets.

    ```PowerShell
    Set-ExecutionPolicy Unrestricted
    $org=&#39;contoso.microsoft.com
    $cred=Get-Credential $admin@$org
    $sess= New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $cred -Authentication Basic -AllowRedirection
    Import-PSSession $sess
    ```

2.  Set up mailbox.

    After establishing a session, you’ll either create a new mailbox and enable it as a RoomMailboxAccount, or change the settings for an existing room mailbox. This will allow the account to authenticate into the Surface Hub.

    If you're changing an existing resource mailbox:

    ```PowerShell
    Set-Mailbox -Identity &#39;HUB01&#39; -EnableRoomMailboxAccount $true -RoomMailboxPassword (ConvertTo-SecureString -String <password> -AsPlainText -Force)
    ```

    If you’re creating a new resource mailbox:

    ```PowerShell
    New-Mailbox -MicrosoftOnlineServicesID &#39;HUB01@contoso.com&#39; -Alias HUB01 -Name "Hub-01" -Room -EnableRoomMailboxAccount $true -RoomMailboxPassword (ConvertTo-SecureString -String <password> -AsPlainText -Force)
    ```

3.  Create Exchange ActiveSync policy.

    After setting up the mailbox, you will need to either create a new Exchange ActiveSync policy, or use a compatible existing policy.

    Surface Hubs are only compatible with device accounts that have an ActiveSync policy where the **PasswordEnabled** property is set to False. If this isn’t set properly, then Exchange services on the Surface Hub (mail, calendar, and joining meetings), will not be enabled.

    If you haven’t created a compatible policy yet, use the following cmdlet—this one creates a policy called "Surface Hubs". Once it’s created, you can apply the same policy to other device accounts.

    ```PowerShell
    $easPolicy = New-MobileDeviceMailboxPolicy -Name “SurfaceHubs” -PasswordEnabled $false
    ```

    Once you have a compatible policy, then you will need to apply the policy to the device account. However, policies can only be applied to user accounts and not resource mailboxes. You need to convert the mailbox into a user type, apply the policy, and then convert it back into a mailbox—you may need to re-enable it and set the password again too.

    ```PowerShell
    Set-Mailbox $acctUpn -Type Regular
    Set-CASMailbox &#39;HUB01@contoso.com&#39; -ActiveSyncMailboxPolicy $easPolicy
    Set-Mailbox &#39;HUB01@contoso.com&#39; -Type Room
    Set-Mailbox &#39;HUB01@contoso.com&#39; -RoomMailboxPassword $credNewAccount.Password -EnableRoomMailboxAccount $true
    ```

4.  Set Exchange properties.

    Various Exchange properties must be set on the device account to improve the meeting experience. You can see which properties need to be set in the [Exchange properties](exchange-properties-for-surface-hub-device-accounts.md) section.

    ```PowerShell
    Set-CalendarProcessing -Identity &#39;HUB01@contoso.com&#39; -AutomateProcessing AutoAccept -AddOrganizerToSubject $false –AllowConflicts $false –DeleteComments $false -DeleteSubject $false -RemovePrivateProperty $false
    Set-CalendarProcessing -Identity &#39;HUB01@contoso.com&#39; -AddAdditionalResponse $true -AdditionalResponse "This is a Surface Hub room!"
    ```

5.  Add email address for your on-prem domain account.

    For this procedure, you'll be using AD admin tools to add an email address for your on-prem domain account.

    1.  In **Active Directory Users and Computers** AD tool, right-click on the folder or Organizational Unit that your Surface Hub accounts will be created in, click **New**, and **User**.
    2.  Type the display name from the previous cmdlet into the **Full name** box, and the alias into the **User logon name** box. Click **Next**.

        ![new object box for creating a new user in active directory. ](images/hybriddeployment-01a.png)

    3.  Type the password for this account. You'll need to retype it for verification. Make sure the **Password never expires** checkbox is the only option selected.
        **Important**  Selecting **Password never expires** is a requirement for Skype for Business on the Surface Hub. Your domain rules may prohibit passwords that don't expire. If so, you'll need to create an exception for each Surface Hub device account.

         

        ![image showing password dialog box. ](images/hybriddeployment-02a.png)
    4.  Click **Finish** to create the account.

        ![image with account name, logon name, and password options for new user. ](images/hybriddeployment-03a.png)

6.  Directory synchronization.

    After you've created the account, run a directory synchronization. When it's complete, go to the users page and verify that the two accounts created in the previous steps have merged.

7.  Connect to Azure AD.

    You need to connect to Azure AD to apply some account settings. You can run this cmdlet to connect.

    ```PowerShell
    Connect-MsolService -Credential $cred
    ```

8.  Assign an Office 365 license.

    The device account needs to have a valid Office 365 (O365) license, or Exchange and Skype for Business will not work. If you have the license, you need to assign a usage location to your device account—this determines what license SKUs are available for your account.

    Next, you can use `Get-MsolAccountSku` to retrieve a list of available SKUs for your O365 tenant.

    Once you list out the SKUs, you can add a license using the `Set-MsolUserLicense` cmdlet. In this case, `$strLicense` is the SKU code that you see (for example, *contoso:STANDARDPACK*).

    ```PowerShell
    Set-MsolUser -UserPrincipalName &#39;HUB01@contoso.com&#39; -UsageLocation &#39;US&#39;
    Get-MsolAccountSku
    Set-MsolUserLicense -UserPrincipalName &#39;HUB01@contoso.com&#39; -AddLicenses $strLicense
    ```

9.  Enable the device account with Skype for Business.

    In order to enable Skype for Business, your environment will need to meet the following prerequisites:

    -   You'll need to have Lync Online (Plan 2) or higher in your O365 plan. The plan needs to support conferencing capability.
    -   If you need Enterprise Voice (PSTN telephony) using telephony service providers for the Surface Hub, you need Lync Online (Plan 3).
    -   Your tenant users must have Exchange mailboxes.
    -   Your Surface Hub account does require a Lync Online (Plan 2) or Lync Online (Plan 3) license, but it does not require an Exchange Online license.

    1.  Start by creating a remote PowerShell session from a PC.

        ```PowerShell
        Import-Module LyncOnlineConnector  
        $cssess=New-CsOnlineSession -Credential $cred  
        Import-PSSession $cssess -AllowClobber
        ```

    2.  To enable your Surface Hub account for Skype for Business Server, run this cmdlet:

        ```PowerShell
        Enable-CsMeetingRoom -Identity $rm -RegistrarPool  
        &#39;sippoolbl20a04.infra.lync.com&#39; -SipAddressType EmailAddress
        ```

        If you aren't sure what value to use for the `RegistrarPool` parameter in your environment, you can get the value from an existing Skype for Business user using this cmdlet:

        ```PowerShell
        Get-CsOnlineUser -Identity ‘alice@contoso.com’| fl *registrarpool*
        ```

10. Assign Skype for Business license to your Surface Hub account

    Once you've completed the preceding steps to enable your Surface Hub account in Skype for Business Online, you need to assign a license to the Surface Hub. Using the O365 administrative portal, assign either a Skype for Business Online (Plan 2) or a Skype for Business Online (Plan 3) to the device.

    1.  Login as a tenant administrator, open the O365 Administrative Portal, and click on the Admin app.
    2.  Click on **Users and Groups** and then **Add users, reset passwords, and more**.
    3.  Click the Surface Hub account, and then click the pen icon to edit the account information.
    4.  Click **Licenses**.
    5.  In **Assign licenses**, select Skype for Business (Plan 2) or Skype for Business (Plan 3), depending on your licensing and Enterprise Voice requirements. You'll have to use a Plan 3 license if you want to use Enterprise Voice on your Surface Hub.
    6.  Click **Save**.

    **Note**  You can also use the Windows Azure Active Directory Module for Windows PowerShell to run the cmdlets needed to assign one of these licenses, but that's not covered here.

     

    For validation, you should be able to use any Skype for Business client (PC, Android, etc) to log in to this account.

 

 






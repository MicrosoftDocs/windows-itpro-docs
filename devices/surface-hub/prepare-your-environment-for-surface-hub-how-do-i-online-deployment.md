---
title: Online deployment with Office 365 Microsoft Surface Hub
description: This topic has instructions for adding a device account for your Microsoft Surface Hub when you have a pure online deployment.
MSHAttr: PreferredLib /library
ms.assetid: D325CA68-A03F-43DF-8520-EACF7C3EDEC1
keywords: ["device account for Surface Hub", "online deployment"]
author: TrudyHa
---

# Online deployment with Office 365 - Microsoft Surface Hub


This topic has instructions for adding a device account for your Microsoft Surface Hub when you have a pure, online deployment.

If you have a pure, online (O365) deployment, then you can [use the provided Windows PowerShell scripts](appendix-a--powershell.md#create-os356-ps-scripts) to create device accounts. If you’re using Microsoft Exchange 2010 or Lync 2010, you can use equivalent cmdlets that will produce the same results. Those cmdlets are described in this section.

1.  Start a remote PowerShell session on a PC and connect to Exchange.

    Be sure you have the right permissions set to run the associated cmdlets.

    <span codelanguage="PowerShell"></span>
    <table>
    <colgroup>
    <col width="100%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">PowerShell</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><pre><code>Set-ExecutionPolicy Unrestricted
    $org=&#39;contoso.microsoft.com&#39;
    $cred=Get-Credential $admin@$org
    $sess= New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $cred -Authentication Basic -AllowRedirection
    Import-PSSession $sess</code></pre></td>
    </tr>
    </tbody>
    </table>

2.  After establishing a session, you’ll either create a new mailbox and enable it as a RoomMailboxAccount, or change the settings for an existing room mailbox. This will allow the account to authenticate into the Surface Hub.

    If you're changing an existing resource mailbox:

    <span codelanguage="PowerShell"></span>
    <table>
    <colgroup>
    <col width="100%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">PowerShell</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><pre><code>Set-Mailbox -Identity &#39;HUB01&#39; -EnableRoomMailboxAccount $true -RoomMailboxPassword (ConvertTo-SecureString -String &lt;password&gt; -AsPlainText -Force)</code></pre></td>
    </tr>
    </tbody>
    </table>

    If you’re creating a new resource mailbox:

    <span codelanguage="PowerShell"></span>
    <table>
    <colgroup>
    <col width="100%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">PowerShell</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><pre><code>New-Mailbox -MicrosoftOnlineServicesID HUB01@contoso.com -Alias HUB01 -Name &quot;Hub-01&quot; -Room -EnableRoomMailboxAccount $true -RoomMailboxPassword (ConvertTo-SecureString -String &lt;password&gt; -AsPlainText -Force)</code></pre></td>
    </tr>
    </tbody>
    </table>

3.  After setting up the mailbox, you will need to either create a new Exchange ActiveSync policy, or use a compatible existing policy.

    Surface Hubs are only compatible with device accounts that have an ActiveSync policy where the **PasswordEnabled** property is set to False. If this isn’t set properly, then Exchange services on the Surface Hub (mail, calendar, and joining meetings), will not be enabled.

    If you haven’t created a compatible policy yet, use the following cmdlet—this one creates a policy called "Surface Hubs". Once it’s created, you can apply the same policy to other device accounts.

    <span codelanguage="PowerShell"></span>
    <table>
    <colgroup>
    <col width="100%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">PowerShell</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><pre><code>$easPolicy = New-MobileDeviceMailboxPolicy -Name “SurfaceHubs” -PasswordEnabled $false</code></pre></td>
    </tr>
    </tbody>
    </table>

    Once you have a compatible policy, then you will need to apply the policy to the device account. However, policies can only be applied to user accounts and not resource mailboxes. You need to convert the mailbox into a user type, apply the policy, and then convert it back into a mailbox—you may need to re-enable it and set the password again too.

    <span codelanguage="PowerShell"></span>
    <table>
    <colgroup>
    <col width="100%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">PowerShell</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><pre><code>Set-Mailbox $acctUpn -Type Regular
    Set-CASMailbox $acctUpn -ActiveSyncMailboxPolicy $easPolicy
    Set-Mailbox $acctUpn -Type Room
    Set-Mailbox $credNewAccount.UserName -RoomMailboxPassword $credNewAccount.Password -EnableRoomMailboxAccount $true</code></pre></td>
    </tr>
    </tbody>
    </table>

4.  Various Exchange properties must be set on the device account to improve the meeting experience. You can see which properties need to be set in the [Exchange properties](prepare-your-environment-for-surface-hub-how-do-i-exchange-properties.md) section.

    <span codelanguage="PowerShell"></span>
    <table>
    <colgroup>
    <col width="100%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">PowerShell</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><pre><code>Set-CalendarProcessing -Identity $acctUpn -AutomateProcessing AutoAccept -AddOrganizerToSubject $false –AllowConflicts $false –DeleteComments $false -DeleteSubject $false -RemovePrivateProperty $false
    Set-CalendarProcessing -Identity $acctUpn -AddAdditionalResponse $true -AdditionalResponse &quot;This is a &lt;tla rid=&quot;surface_hub&quot;/&gt; room!&quot;</code></pre></td>
    </tr>
    </tbody>
    </table>

5.  Connect to Azure AD.

    You need to connect to Azure AD to apply some account settings. You can run this cmdlet to connect.

    <span codelanguage="PowerShell"></span>
    <table>
    <colgroup>
    <col width="100%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">PowerShell</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><pre><code>Connect-MsolService -Credential $cred</code></pre></td>
    </tr>
    </tbody>
    </table>

6.  If you decide to have the password not expire, you can set that with PowerShell cmdlets too. See [Password management](prepare-your-environment-for-surface-hub-how-do-i-password-management.md) for more information.

    <span codelanguage="PowerShell"></span>
    <table>
    <colgroup>
    <col width="100%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">PowerShell</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><pre><code>Set-MsolUser -UserPrincipalName $acctUpn -PasswordNeverExpires $true</code></pre></td>
    </tr>
    </tbody>
    </table>

7.  The device account needs to have a valid Office 365 (O365) license, or Exchange and Skype for Business will not work. If you have the license, you need to assign a usage location to your device account—this determines what license SKUs are available for your account.

    Next, you can use `Get-MsolAccountSku` to retrieve a list of available SKUs for your O365 tenant.

    Once you list out the SKUs, you can add a license using the `Set-MsolUserLicense` cmdlet. In this case, `$strLicense` is the SKU code that you see (for example, *contoso:STANDARDPACK*).

    <span codelanguage="PowerShell"></span>
    <table>
    <colgroup>
    <col width="100%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">PowerShell</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><pre><code>Set-MsolUser -UserPrincipalName $acctUpn -UsageLocation &quot;US&quot;
    Get-MsolAccountSku
    Set-MsolUserLicense -UserPrincipalName $acctUpn -AddLicenses $strLicense</code></pre></td>
    </tr>
    </tbody>
    </table>

8.  Enable the device account with Skype for Business.

    In order to enable Skype for Business, your environment will need to meet the following prerequisites:

    -   You'll need to have Lync Online (Plan 2) or higher in your O365 plan. The plan needs to support conferencing capability.
    -   If you need Enterprise Voice (PSTN telephony) using telephony service providers for the Surface Hub, you need Lync Online (Plan 3).
    -   Your tenant users must have Exchange mailboxes.
    -   Your Surface Hub account does require a Lync Online (Plan 2) or Lync Online (Plan 3) license, but it does not require an Exchange Online license.

    1.  Start by creating a remote PowerShell session from a PC.

        <span codelanguage="PowerShell"></span>
        <table>
        <colgroup>
        <col width="100%" />
        </colgroup>
        <thead>
        <tr class="header">
        <th align="left">PowerShell</th>
        </tr>
        </thead>
        <tbody>
        <tr class="odd">
        <td align="left"><pre><code>Import-Module LyncOnlineConnector  
        $cssess=New-CsOnlineSession -Credential $cred  
        Import-PSSession $cssess -AllowClobber</code></pre></td>
        </tr>
        </tbody>
        </table>

    2.  To enable your Surface Hub account for Skype for Business Server, run this cmdlet:

        <span codelanguage="PowerShell"></span>
        <table>
        <colgroup>
        <col width="100%" />
        </colgroup>
        <thead>
        <tr class="header">
        <th align="left">PowerShell</th>
        </tr>
        </thead>
        <tbody>
        <tr class="odd">
        <td align="left"><pre><code>Enable-CsMeetingRoom -Identity $rm -RegistrarPool  
        &quot;sippoolbl20a04.infra.lync.com&quot; -SipAddressType EmailAddress</code></pre></td>
        </tr>
        </tbody>
        </table>

        If you aren't sure what value to use for the `RegistrarPool` parameter in your environment, you can get the value from an existing Skype for Business user using this cmdlet:

        <span codelanguage="PowerShell"></span>
        <table>
        <colgroup>
        <col width="100%" />
        </colgroup>
        <thead>
        <tr class="header">
        <th align="left">PowerShell</th>
        </tr>
        </thead>
        <tbody>
        <tr class="odd">
        <td align="left"><pre><code>Get-CsOnlineUser -Identity ‘alice@contoso.microsoft.com’| fl *registrarpool*</code></pre></td>
        </tr>
        </tbody>
        </table>

9.  Assign Skype for Business license to your Surface Hub account.

    Once you've completed the preceding steps to enable your Surface Hub account in Skype for Business Online, you need to assign a license to the Surface Hub. Using the O365 administrative portal, assign either a Skype for Business Online (Plan 2) or a Skype for Business Online (Plan 3) to the device.

    1.  Login as a tenant administrator, open the O365 Administrative Portal, and click on the Admin app.
    2.  Click on **Users and Groups** and then **Add users, reset passwords, and more**.
    3.  Select the Surface Hub account, and then click or tap the pen icon, which means edit.
    4.  Click on the **Licenses** option.
    5.  In the **Assign licenses** section, you need to select Skype for Business (Plan 2) or Skype for Business (Plan 3), depending on your licensing and what you've decided in terms of needing Enterprise Voice. You'll have to use a Plan 3 license if you want to use Enterprise Voice on your Surface Hub.
    6.  Click **Save** and you're done.

    **Note**  It's also possible to use the Windows Azure Active Directory Module for Windows PowerShell to run the cmdlets needed to assign one of these licenses, but that's not covered here.

     

    For validation, you should be able to use any Skype for Business client (PC, Android, etc) to log in to this account.

 

 






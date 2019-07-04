---
title: Policy CSP - LocalPoliciesSecurityOptions
description: Policy CSP - LocalPoliciesSecurityOptions
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2018
ms.reviewer: 
manager: dansimp
---

# Policy CSP - LocalPoliciesSecurityOptions

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.


<hr/>

<!--Policies-->
## LocalPoliciesSecurityOptions policies  

<dl>
  <dd>
    <a href="#localpoliciessecurityoptions-accounts-blockmicrosoftaccounts">LocalPoliciesSecurityOptions/Accounts_BlockMicrosoftAccounts</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-accounts-limitlocalaccountuseofblankpasswordstoconsolelogononly">LocalPoliciesSecurityOptions/Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-accounts-renameadministratoraccount">LocalPoliciesSecurityOptions/Accounts_RenameAdministratorAccount</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-accounts-renameguestaccount">LocalPoliciesSecurityOptions/Accounts_RenameGuestAccount</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-devices-allowundockwithouthavingtologon">LocalPoliciesSecurityOptions/Devices_AllowUndockWithoutHavingToLogon</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-devices-allowedtoformatandejectremovablemedia">LocalPoliciesSecurityOptions/Devices_AllowedToFormatAndEjectRemovableMedia</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-devices-preventusersfrominstallingprinterdriverswhenconnectingtosharedprinters">LocalPoliciesSecurityOptions/Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-devices-restrictcdromaccesstolocallyloggedonuseronly">LocalPoliciesSecurityOptions/Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-domainmember-digitallyencryptorsignsecurechanneldataalways">LocalPoliciesSecurityOptions/DomainMember_DigitallyEncryptOrSignSecureChannelDataAlways</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-domainmember-digitallyencryptsecurechanneldatawhenpossible">LocalPoliciesSecurityOptions/DomainMember_DigitallyEncryptSecureChannelDataWhenPossible</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-domainmember-disablemachineaccountpasswordchanges">LocalPoliciesSecurityOptions/DomainMember_DisableMachineAccountPasswordChanges</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-interactivelogon-displayuserinformationwhenthesessionislocked">LocalPoliciesSecurityOptions/InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-interactivelogon-donotdisplaylastsignedin">LocalPoliciesSecurityOptions/InteractiveLogon_DoNotDisplayLastSignedIn</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-interactivelogon-donotdisplayusernameatsignin">LocalPoliciesSecurityOptions/InteractiveLogon_DoNotDisplayUsernameAtSignIn</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-interactivelogon-donotrequirectrlaltdel">LocalPoliciesSecurityOptions/InteractiveLogon_DoNotRequireCTRLALTDEL</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-interactivelogon-machineinactivitylimit">LocalPoliciesSecurityOptions/InteractiveLogon_MachineInactivityLimit</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-interactivelogon-messagetextforusersattemptingtologon">LocalPoliciesSecurityOptions/InteractiveLogon_MessageTextForUsersAttemptingToLogOn</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-interactivelogon-messagetitleforusersattemptingtologon">LocalPoliciesSecurityOptions/InteractiveLogon_MessageTitleForUsersAttemptingToLogOn</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-interactivelogon-smartcardremovalbehavior">LocalPoliciesSecurityOptions/InteractiveLogon_SmartCardRemovalBehavior</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-microsoftnetworkclient-digitallysigncommunicationsalways">LocalPoliciesSecurityOptions/MicrosoftNetworkClient_DigitallySignCommunicationsAlways</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-microsoftnetworkclient-digitallysigncommunicationsifserveragrees">LocalPoliciesSecurityOptions/MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-microsoftnetworkclient-sendunencryptedpasswordtothirdpartysmbservers">LocalPoliciesSecurityOptions/MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-microsoftnetworkserver-amountofidletimerequiredbeforesuspendingsession">LocalPoliciesSecurityOptions/MicrosoftNetworkServer_AmountOfIdleTimeRequiredBeforeSuspendingSession</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-microsoftnetworkserver-digitallysigncommunicationsalways">LocalPoliciesSecurityOptions/MicrosoftNetworkServer_DigitallySignCommunicationsAlways</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-microsoftnetworkserver-digitallysigncommunicationsifclientagrees">LocalPoliciesSecurityOptions/MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-networkaccess-donotallowanonymousenumerationofsamaccounts">LocalPoliciesSecurityOptions/NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-networkaccess-donotallowanonymousenumerationofsamaccountsandshares">LocalPoliciesSecurityOptions/NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-networkaccess-restrictanonymousaccesstonamedpipesandshares">LocalPoliciesSecurityOptions/NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-networkaccess-restrictclientsallowedtomakeremotecallstosam">LocalPoliciesSecurityOptions/NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-networksecurity-allowlocalsystemtousecomputeridentityforntlm">LocalPoliciesSecurityOptions/NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-networksecurity-allowpku2uauthenticationrequests">LocalPoliciesSecurityOptions/NetworkSecurity_AllowPKU2UAuthenticationRequests</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-networksecurity-donotstorelanmanagerhashvalueonnextpasswordchange">LocalPoliciesSecurityOptions/NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-networksecurity-lanmanagerauthenticationlevel">LocalPoliciesSecurityOptions/NetworkSecurity_LANManagerAuthenticationLevel</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-networksecurity-minimumsessionsecurityforntlmsspbasedclients">LocalPoliciesSecurityOptions/NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-networksecurity-minimumsessionsecurityforntlmsspbasedservers">LocalPoliciesSecurityOptions/NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-networksecurity-restrictntlm-addremoteserverexceptionsforntlmauthentication">LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-networksecurity-restrictntlm-auditincomingntlmtraffic">LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-networksecurity-restrictntlm-incomingntlmtraffic">LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-networksecurity-restrictntlm-outgoingntlmtraffictoremoteservers">LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-recoveryconsole-allowautomaticadministrativelogon">LocalPoliciesSecurityOptions/RecoveryConsole_AllowAutomaticAdministrativeLogon</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-shutdown-allowsystemtobeshutdownwithouthavingtologon">LocalPoliciesSecurityOptions/Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-shutdown-clearvirtualmemorypagefile">LocalPoliciesSecurityOptions/Shutdown_ClearVirtualMemoryPageFile</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-systemobjects-requirecaseinsensitivityfornonwindowssubsystems">LocalPoliciesSecurityOptions/SystemObjects_RequireCaseInsensitivityForNonWindowsSubsystems</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-useraccountcontrol-allowuiaccessapplicationstopromptforelevation">LocalPoliciesSecurityOptions/UserAccountControl_AllowUIAccessApplicationsToPromptForElevation</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-useraccountcontrol-behavioroftheelevationpromptforadministrators">LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForAdministrators</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-useraccountcontrol-behavioroftheelevationpromptforstandardusers">LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-useraccountcontrol-detectapplicationinstallationsandpromptforelevation">LocalPoliciesSecurityOptions/UserAccountControl_DetectApplicationInstallationsAndPromptForElevation</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-useraccountcontrol-onlyelevateexecutablefilesthataresignedandvalidated">LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-useraccountcontrol-onlyelevateuiaccessapplicationsthatareinstalledinsecurelocations">LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-useraccountcontrol-runalladministratorsinadminapprovalmode">LocalPoliciesSecurityOptions/UserAccountControl_RunAllAdministratorsInAdminApprovalMode</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-useraccountcontrol-switchtothesecuredesktopwhenpromptingforelevation">LocalPoliciesSecurityOptions/UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-useraccountcontrol-useadminapprovalmode">LocalPoliciesSecurityOptions/UserAccountControl_UseAdminApprovalMode</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-useraccountcontrol-virtualizefileandregistrywritefailurestoperuserlocations">LocalPoliciesSecurityOptions/UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-accounts-blockmicrosoftaccounts"></a>**LocalPoliciesSecurityOptions/Accounts_BlockMicrosoftAccounts**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents users from adding new Microsoft accounts on this computer.

If you select the "Users cannot add Microsoft accounts" option, users will not be able to create new Microsoft accounts on this computer, switch a local account to a Microsoft account, or connect a domain account to a Microsoft account. This is the preferred option if you need to limit the use of Microsoft accounts in your enterprise.

If you select the "Users cannot add or log on with Microsoft accounts" option, existing Microsoft account users will not be able to log on to Windows. Selecting this option might make it impossible for an existing administrator on this computer to log on and manage the system.

If you disable or do not configure this policy (recommended), users will be able to use Microsoft accounts with Windows.

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Accounts: Block Microsoft accounts*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - disabled (users will be able to use Microsoft accounts with Windows).
-   1 - enabled (users cannot add Microsoft accounts).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-accounts-limitlocalaccountuseofblankpasswordstoconsolelogononly"></a>**LocalPoliciesSecurityOptions/Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Accounts: Limit local account use of blank passwords to console logon only

This security setting determines whether local accounts that are not password protected can be used to log on from locations other than the physical computer console. If enabled, local accounts that are not password protected will only be able to log on at the computer's keyboard.

Default: Enabled.

Warning:

Computers that are not in physically secure locations should always enforce strong password policies for all local user accounts. Otherwise, anyone with physical access to the computer can log on by using a user account that does not have a password. This is especially important for portable computers.
If you apply this security policy to the Everyone group, no one will be able to log on through Remote Desktop Services.

This setting does not affect logons that use domain accounts.
It is possible for applications that use remote interactive logons to bypass this setting.

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Accounts: Limit local account use of blank passwords to console logon only*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
Valid values:  
- 0 -  disabled - local accounts that are not password protected can be used to log on from locations other than the physical computer console
- 1 -  enabled - local accounts that are not password protected will only be able to log on at the computer's keyboard

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-accounts-renameadministratoraccount"></a>**LocalPoliciesSecurityOptions/Accounts_RenameAdministratorAccount**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Accounts: Rename administrator account

This security setting determines whether a different account name is associated with the security identifier (SID) for the account Administrator. Renaming the well-known Administrator account makes it slightly more difficult for unauthorized persons to guess this privileged user name and password combination.

Default: Administrator.

Value type is string. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP English name: *Accounts: Rename administrator account*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-accounts-renameguestaccount"></a>**LocalPoliciesSecurityOptions/Accounts_RenameGuestAccount**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Accounts: Rename guest account

This security setting determines whether a different account name is associated with the security identifier (SID) for the account "Guest." Renaming the well-known Guest account makes it slightly more difficult for unauthorized persons to guess this user name and password combination.

Default: Guest.

Value type is string. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP English name: *Accounts: Rename guest account*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-devices-allowundockwithouthavingtologon"></a>**LocalPoliciesSecurityOptions/Devices_AllowUndockWithoutHavingToLogon**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Devices: Allow undock without having to log on. 

This security setting determines whether a portable computer can be undocked without having to log on. If this policy is enabled, logon is not required and an external hardware eject button can be used to undock the computer. If disabled, a user must log on and have the Remove computer from docking station privilege to undock the computer.
Default: Enabled.

Caution:

Disabling this policy may tempt users to try and physically remove the laptop from its docking station using methods other than the external hardware eject button. Since this may cause damage to the hardware, this setting, in general, should only be disabled on laptop configurations that are physically securable.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Devices: Allow undock without having to log on*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-devices-allowedtoformatandejectremovablemedia"></a>**LocalPoliciesSecurityOptions/Devices_AllowedToFormatAndEjectRemovableMedia**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Devices: Allowed to format and eject removable media

This security setting determines who is allowed to format and eject removable NTFS media. This capability can be given to:

- Administrators
- Administrators and Interactive Users

Default: This policy is not defined and only Administrators have this ability.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Devices: Allowed to format and eject removable media*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-devices-preventusersfrominstallingprinterdriverswhenconnectingtosharedprinters"></a>**LocalPoliciesSecurityOptions/Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Devices: Prevent users from installing printer drivers when connecting to shared printers

For a computer to print to a shared printer, the driver for that shared printer must be installed on the local computer. This security setting determines who is allowed to install a printer driver as part of connecting to a shared printer. If this setting is enabled, only Administrators can install a printer driver as part of connecting to a shared printer. If this setting is disabled, any user can install a printer driver as part of connecting to a shared printer.

Default on servers: Enabled.
Default on workstations: Disabled

Note

This setting does not affect the ability to add a local printer. This setting does not affect Administrators.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Devices: Prevent users from installing printer drivers*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-devices-restrictcdromaccesstolocallyloggedonuseronly"></a>**LocalPoliciesSecurityOptions/Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Devices: Restrict CD-ROM access to locally logged-on user only

This security setting determines whether a CD-ROM is accessible to both local and remote users simultaneously.

If this policy is enabled, it allows only the interactively logged-on user to access removable CD-ROM media. If this policy is enabled and no one is logged on interactively, the CD-ROM can be accessed over the network.

Default: This policy is not defined and CD-ROM access is not restricted to the locally logged-on user.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Devices: Restrict CD-ROM access to locally logged-on user only*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-domainmember-digitallyencryptorsignsecurechanneldataalways"></a>**LocalPoliciesSecurityOptions/DomainMember_DigitallyEncryptOrSignSecureChannelDataAlways**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

> [!WARNING]
> Starting in the version 1809 of Windows, this policy is deprecated.

Domain member: Digitally encrypt or sign secure channel data (always)

This security setting determines whether all secure channel traffic initiated by the domain member must be signed or encrypted.

When a computer joins a domain, a computer account is created. After that, when the system starts, it uses the computer account password to create a secure channel with a domain controller for its domain. This secure channel is used to perform operations such as NTLM pass through authentication, LSA SID/name Lookup etc.

This setting determines whether or not all secure channel traffic initiated by the domain member meets minimum security requirements. Specifically it determines whether all secure channel traffic initiated by the domain member must be signed or encrypted. If this policy is enabled, then the secure channel will not be established unless either signing or encryption of all secure channel traffic is negotiated. If this policy is disabled, then encryption and signing of all secure channel traffic is negotiated with the Domain Controller in which case the level of signing and encryption depends on the version of the Domain Controller and the settings of the following two policies:

Domain member: Digitally encrypt secure channel data (when possible)
Domain member: Digitally sign secure channel data (when possible)

Default: Enabled.

Notes:

If this policy is enabled, the policy Domain member: Digitally sign secure channel data (when possible) is assumed to be enabled regardless of its current setting. This ensures that the domain member attempts to negotiate at least signing of the secure channel traffic.
If this policy is enabled, the policy Domain member: Digitally sign secure channel data (when possible) is assumed to be enabled regardless of its current setting. This ensures that the domain member attempts to negotiate at least signing of the secure channel traffic.
Logon information transmitted over the secure channel is always encrypted regardless of whether encryption of ALL other secure channel traffic is negotiated or not.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Domain member: Digitally encrypt or sign secure channel data (always)*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-domainmember-digitallyencryptsecurechanneldatawhenpossible"></a>**LocalPoliciesSecurityOptions/DomainMember_DigitallyEncryptSecureChannelDataWhenPossible**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

> [!WARNING]
> Starting in the version 1809 of Windows, this policy is deprecated.

Domain member: Digitally encrypt secure channel data (when possible)

This security setting determines whether a domain member attempts to negotiate encryption for all secure channel traffic that it initiates.

When a computer joins a domain, a computer account is created. After that, when the system starts, it uses the computer account password to create a secure channel with a domain controller for its domain. This secure channel is used to perform operations such as NTLM pass-through authentication, LSA SID/name Lookup etc.

This setting determines whether or not the domain member attempts to negotiate encryption for all secure channel traffic that it initiates. If enabled, the domain member will request encryption of all secure channel traffic. If the domain controller supports encryption of all secure channel traffic, then all secure channel traffic will be encrypted. Otherwise only logon information transmitted over the secure channel will be encrypted. If this setting is disabled, then the domain member will not attempt to negotiate secure channel encryption.

Default: Enabled.

Important

There is no known reason for disabling this setting. Besides unnecessarily reducing the potential confidentiality level of the secure channel, disabling this setting may unnecessarily reduce secure channel throughput, because concurrent API calls that use the secure channel are only possible when the secure channel is signed or encrypted.

Note: Domain controllers are also domain members and establish secure channels with other domain controllers in the same domain as well as domain controllers in trusted domains.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Domain member: Digitally encrypt secure channel data (when possible)*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-domainmember-disablemachineaccountpasswordchanges"></a>**LocalPoliciesSecurityOptions/DomainMember_DisableMachineAccountPasswordChanges**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

> [!WARNING]
> Starting in the version 1809 of Windows, this policy is deprecated.

Domain member: Disable machine account password changes

Determines whether a domain member periodically changes its computer account password. If this setting is enabled, the domain member does not attempt to change its computer account password. If this setting is disabled, the domain member attempts to change its computer account password as specified by the setting for Domain Member: Maximum age for machine account password, which by default is every 30 days.

Default: Disabled.

Notes

This security setting should not be enabled. Computer account passwords are used to establish secure channel communications between members and domain controllers and, within the domain, between the domain controllers themselves. Once it is established, the secure channel is used to transmit sensitive information that is necessary for making authentication and authorization decisions.
This setting should not be used in an attempt to support dual-boot scenarios that use the same computer account. If you want to dual-boot two installations that are joined to the same domain, give the two installations different computer names.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Domain member: Disable machine account password changes*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-interactivelogon-displayuserinformationwhenthesessionislocked"></a>**LocalPoliciesSecurityOptions/InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Interactive Logon:Display user information when the session is locked  


Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Interactive logon: Display user information when the session is locked*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
Valid values:
- 1 - User display name, domain and user names
- 2 - User display name only
- 3 - Do not display user information

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-interactivelogon-donotdisplaylastsignedin"></a>**LocalPoliciesSecurityOptions/InteractiveLogon_DoNotDisplayLastSignedIn**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Interactive logon: Don't display last signed-in

This security setting determines whether the Windows sign-in screen will show the username of the last person who signed in on this PC.
If this policy is enabled, the username will not be shown.

If this policy is disabled, the username will be shown.

Default: Disabled.

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Interactive logon: Don't display last signed-in*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
Valid values:  
- 0 - disabled (username will be shown)
- 1 - enabled (username will not be shown)

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-interactivelogon-donotdisplayusernameatsignin"></a>**LocalPoliciesSecurityOptions/InteractiveLogon_DoNotDisplayUsernameAtSignIn**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Interactive logon: Don't display username at sign-in

This security setting determines whether the username of the person signing in to this PC appears at Windows sign-in, after credentials are entered, and before the PC desktop is shown.

If this policy is enabled, the username will not be shown.

If this policy is disabled, the username will be shown.

Default: Disabled.

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Interactive logon: Don't display username at sign-in*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
Valid values:  
- 0 - disabled (username will be shown)
- 1 - enabled (username will not be shown)

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-interactivelogon-donotrequirectrlaltdel"></a>**LocalPoliciesSecurityOptions/InteractiveLogon_DoNotRequireCTRLALTDEL**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Interactive logon: Do not require CTRL+ALT+DEL

This security setting determines whether pressing CTRL+ALT+DEL is required before a user can log on.

If this policy is enabled on a computer, a user is not required to press CTRL+ALT+DEL to log on. Not having to press CTRL+ALT+DEL leaves users susceptible to attacks that attempt to intercept the users' passwords. Requiring CTRL+ALT+DEL before users log on ensures that users are communicating by means of a trusted path when entering their passwords.

If this policy is disabled, any user is required to press CTRL+ALT+DEL before logging on to Windows.

Default on domain-computers: Enabled: At least Windows  8/Disabled: Windows 7 or earlier.
Default on stand-alone computers: Enabled.

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Interactive logon: Do not require CTRL+ALT+DEL*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
Valid values:  
- 0 - disabled
- 1 - enabled (a user is not required to press CTRL+ALT+DEL to log on)

> [!NOTE]
> I would recommend if you are the only user on windows 10 machine, then don't enable it.


<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-interactivelogon-machineinactivitylimit"></a>**LocalPoliciesSecurityOptions/InteractiveLogon_MachineInactivityLimit**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Interactive logon: Machine inactivity limit.

Windows notices inactivity of a logon session, and if the amount of inactive time exceeds the inactivity limit, then the screen saver will run, locking the session.

Default: not enforced.

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Interactive logon: Machine inactivity limit*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
Valid values:  
- 0 - disabled 
- 1 - enabled (session will lock after amount of inactive time exceeds the inactivity limit)

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-interactivelogon-messagetextforusersattemptingtologon"></a>**LocalPoliciesSecurityOptions/InteractiveLogon_MessageTextForUsersAttemptingToLogOn**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Interactive logon: Message text for users attempting to log on

This security setting specifies a text message that is displayed to users when they log on.

This text is often used for legal reasons, for example, to warn users about the ramifications of misusing company information or to warn them that their actions may be audited.

Default: No message.

Value type is string. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Interactive logon: Message text for users attempting to log on*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-interactivelogon-messagetitleforusersattemptingtologon"></a>**LocalPoliciesSecurityOptions/InteractiveLogon_MessageTitleForUsersAttemptingToLogOn**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Interactive logon: Message title for users attempting to log on

This security setting allows the specification of a title to appear in the title bar of the window that contains the Interactive logon: Message text for users attempting to log on.

Default: No message.

Value type is string. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Interactive logon: Message title for users attempting to log on*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-interactivelogon-smartcardremovalbehavior"></a>**LocalPoliciesSecurityOptions/InteractiveLogon_SmartCardRemovalBehavior**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Interactive logon: Smart card removal behavior

This security setting determines what happens when the smart card for a logged-on user is removed from the smart card reader.

The options are:

 No Action
 Lock Workstation
 Force Logoff
 Disconnect if a Remote Desktop Services session 

If you click Lock Workstation in the Properties dialog box for this policy, the workstation is locked when the smart card is removed, allowing users to leave the area, take their smart card with them, and still maintain a protected session.

If you click Force Logoff in the Properties dialog box for this policy, the user is automatically logged off when the smart card is removed.

If you click Disconnect if a Remote Desktop Services session, removal of the smart card disconnects the session without logging the user off. This allows the user to insert the smart card and resume the session later, or at another smart card reader-equipped computer, without having to log on again. If the session is local, this policy functions identically to Lock Workstation.

Note: Remote Desktop Services was called Terminal Services in previous versions of Windows Server.

Default: This policy is not defined, which means that the system treats it as No action.

On Windows Vista and above: For this setting to work, the Smart Card Removal Policy service must be started.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Interactive logon: Smart card removal behavior*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-microsoftnetworkclient-digitallysigncommunicationsalways"></a>**LocalPoliciesSecurityOptions/MicrosoftNetworkClient_DigitallySignCommunicationsAlways**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Microsoft network client: Digitally sign communications (always)

This security setting determines whether packet signing is required by the SMB client component.

The server message block (SMB) protocol provides the basis for Microsoft file and print sharing and many other networking operations, such as remote Windows administration. To prevent man-in-the-middle attacks that modify SMB packets in transit, the SMB protocol supports the digital signing of SMB packets. This policy setting determines whether SMB packet signing must be negotiated before further communication with an SMB server is permitted.

If this setting is enabled, the Microsoft network client will not communicate with a Microsoft network server unless that server agrees to perform SMB packet signing. If this policy is disabled, SMB packet signing is negotiated between the client and server.

Default: Disabled.


Notes

All Windows operating systems support both a client-side SMB component and a server-side SMB component. On Windows 2000 and later operating systems, enabling or requiring packet signing for client and server-side SMB components is controlled by the following four policy settings:
Microsoft network client: Digitally sign communications (always) - Controls whether or not the client-side SMB component requires packet signing.
Microsoft network client: Digitally sign communications (if server agrees) - Controls whether or not the client-side SMB component has packet signing enabled.
Microsoft network server: Digitally sign communications (always) - Controls whether or not the server-side SMB component requires packet signing.
Microsoft network server: Digitally sign communications (if client agrees) - Controls whether or not the server-side SMB component has packet signing enabled.
SMB packet signing can significantly degrade SMB performance, depending on dialect version, OS version, file sizes, processor offloading capabilities, and application IO behaviors.
For more information, reference: https://go.microsoft.com/fwlink/?LinkID=787136.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Microsoft network client: Digitally sign communications (always)*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-microsoftnetworkclient-digitallysigncommunicationsifserveragrees"></a>**LocalPoliciesSecurityOptions/MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Microsoft network client: Digitally sign communications (if server agrees)

This security setting determines whether the SMB client attempts to negotiate SMB packet signing.

The server message block (SMB) protocol provides the basis for Microsoft file and print sharing and many other networking operations, such as remote Windows administration. To prevent man-in-the-middle attacks that modify SMB packets in transit, the SMB protocol supports the digital signing of SMB packets. This policy setting determines whether the SMB client component attempts to negotiate SMB packet signing when it connects to an SMB server.

If this setting is enabled, the Microsoft network client will ask the server to perform SMB packet signing upon session setup. If packet signing has been enabled on the server, packet signing will be negotiated. If this policy is disabled, the SMB client will never negotiate SMB packet signing.

Default: Enabled.

Notes

All Windows operating systems support both a client-side SMB component and a server-side SMB component. On Windows 2000 and later, enabling or requiring packet signing for client and server-side SMB components is controlled by the following four policy settings:
Microsoft network client: Digitally sign communications (always) - Controls whether or not the client-side SMB component requires packet signing.
Microsoft network client: Digitally sign communications (if server agrees) - Controls whether or not the client-side SMB component has packet signing enabled.
Microsoft network server: Digitally sign communications (always) - Controls whether or not the server-side SMB component requires packet signing.
Microsoft network server: Digitally sign communications (if client agrees) - Controls whether or not the server-side SMB component has packet signing enabled.
If both client-side and server-side SMB signing is enabled and the client establishes an SMB 1.0 connection to the server, SMB signing will be attempted.
SMB packet signing can significantly degrade SMB performance, depending on dialect version, OS version, file sizes, processor offloading capabilities, and application IO behaviors. This setting only applies to SMB 1.0 connections.
For more information, reference: https://go.microsoft.com/fwlink/?LinkID=787136.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Microsoft network client: Digitally sign communications (if server agrees)*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-microsoftnetworkclient-sendunencryptedpasswordtothirdpartysmbservers"></a>**LocalPoliciesSecurityOptions/MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Microsoft network client: Send unencrypted password to connect to third-party SMB servers

If this security setting is enabled, the Server Message Block (SMB) redirector is allowed to send plaintext passwords to non-Microsoft SMB servers that do not support password encryption during authentication.

Sending unencrypted passwords is a security risk.

Default: Disabled.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Microsoft network client: Send unencrypted password to third-party SMB servers*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-microsoftnetworkserver-amountofidletimerequiredbeforesuspendingsession"></a>**LocalPoliciesSecurityOptions/MicrosoftNetworkServer_AmountOfIdleTimeRequiredBeforeSuspendingSession**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Microsoft network server: Amount of idle time required before suspending a session

This security setting determines the amount of continuous idle time that must pass in a Server Message Block (SMB) session before the session is suspended due to inactivity.

Administrators can use this policy to control when a computer suspends an inactive SMB session. If client activity resumes, the session is automatically reestablished.

For this policy setting, a value of 0 means to disconnect an idle session as quickly as is reasonably possible. The maximum value is 99999, which is 208 days; in effect, this value disables the policy.

Default:This policy is not defined, which means that the system treats it as 15 minutes for servers and undefined for workstations.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Microsoft network server: Amount of idle time required before suspending session*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-microsoftnetworkserver-digitallysigncommunicationsalways"></a>**LocalPoliciesSecurityOptions/MicrosoftNetworkServer_DigitallySignCommunicationsAlways**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Microsoft network server: Digitally sign communications (always)

This security setting determines whether packet signing is required by the SMB server component.

The server message block (SMB) protocol provides the basis for Microsoft file and print sharing and many other networking operations, such as remote Windows administration. To prevent man-in-the-middle attacks that modify SMB packets in transit, the SMB protocol supports the digital signing of SMB packets. This policy setting determines whether SMB packet signing must be negotiated before further communication with an SMB client is permitted.

If this setting is enabled, the Microsoft network server will not communicate with a Microsoft network client unless that client agrees to perform SMB packet signing. If this setting is disabled, SMB packet signing is negotiated between the client and server.

Default:

Disabled for member servers.
Enabled for domain controllers.

Notes

All Windows operating systems support both a client-side SMB component and a server-side SMB component. On Windows 2000 and later, enabling or requiring packet signing for client and server-side SMB components is controlled by the following four policy settings:
Microsoft network client: Digitally sign communications (always) - Controls whether or not the client-side SMB component requires packet signing.
Microsoft network client: Digitally sign communications (if server agrees) - Controls whether or not the client-side SMB component has packet signing enabled.
Microsoft network server: Digitally sign communications (always) - Controls whether or not the server-side SMB component requires packet signing.
Microsoft network server: Digitally sign communications (if client agrees) - Controls whether or not the server-side SMB component has packet signing enabled.
Similarly, if client-side SMB signing is required, that client will not be able to establish a session with servers that do not have packet signing enabled. By default, server-side SMB signing is enabled only on domain controllers.
If server-side SMB signing is enabled, SMB packet signing will be negotiated with clients that have client-side SMB signing enabled.
SMB packet signing can significantly degrade SMB performance, depending on dialect version, OS version, file sizes, processor offloading capabilities, and application IO behaviors.

Important

For this policy to take effect on computers running Windows 2000, server-side packet signing must also be enabled. To enable server-side SMB packet signing, set the following policy:
Microsoft network server: Digitally sign communications (if server agrees)

For Windows 2000 servers to negotiate signing with Windows NT 4.0 clients, the following registry value must be set to 1 on the Windows 2000 server:
HKLM\System\CurrentControlSet\Services\lanmanserver\parameters\enableW9xsecuritysignature
For more information, reference: https://go.microsoft.com/fwlink/?LinkID=787136.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Microsoft network server: Digitally sign communications (always)*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-microsoftnetworkserver-digitallysigncommunicationsifclientagrees"></a>**LocalPoliciesSecurityOptions/MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Microsoft network server: Digitally sign communications (if client agrees)

This security setting determines whether the SMB server will negotiate SMB packet signing with clients that request it.

The server message block (SMB) protocol provides the basis for Microsoft file and print sharing and many other networking operations, such as remote Windows administration. To prevent man-in-the-middle attacks that modify SMB packets in transit, the SMB protocol supports the digital signing of SMB packets. This policy setting determines whether the SMB server will negotiate SMB packet signing when an SMB client requests it.

If this setting is enabled, the Microsoft network server will negotiate SMB packet signing as requested by the client. That is, if packet signing has been enabled on the client, packet signing will be negotiated. If this policy is disabled, the SMB client will never negotiate SMB packet signing.

Default: Enabled on domain controllers only.

Important

For Windows 2000 servers to negotiate signing with Windows NT 4.0 clients, the following registry value must be set to 1 on the server running Windows 2000: HKLM\System\CurrentControlSet\Services\lanmanserver\parameters\enableW9xsecuritysignature

Notes

All Windows operating systems support both a client-side SMB component and a server-side SMB component. For Windows 2000 and above, enabling or requiring packet signing for client and server-side SMB components is controlled by the following four policy settings:
Microsoft network client: Digitally sign communications (always) - Controls whether or not the client-side SMB component requires packet signing.
Microsoft network client: Digitally sign communications (if server agrees) - Controls whether or not the client-side SMB component has packet signing enabled.
Microsoft network server: Digitally sign communications (always) - Controls whether or not the server-side SMB component requires packet signing.
Microsoft network server: Digitally sign communications (if client agrees) - Controls whether or not the server-side SMB component has packet signing enabled.
If both client-side and server-side SMB signing is enabled and the client establishes an SMB 1.0 connection to the server, SMB signing will be attempted.
SMB packet signing can significantly degrade SMB performance, depending on dialect version, OS version, file sizes, processor offloading capabilities, and application IO behaviors. This setting only applies to SMB 1.0 connections.
For more information, reference: https://go.microsoft.com/fwlink/?LinkID=787136.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Microsoft network server: Digitally sign communications (if client agrees)*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networkaccess-donotallowanonymousenumerationofsamaccounts"></a>**LocalPoliciesSecurityOptions/NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network access: Do not allow anonymous enumeration of SAM accounts

This security setting determines what additional permissions will be granted for anonymous connections to the computer.

Windows allows anonymous users to perform certain activities, such as enumerating the names of domain accounts and network shares. This is convenient, for example, when an administrator wants to grant access to users in a trusted domain that does not maintain a reciprocal trust.

This security option allows additional restrictions to be placed on anonymous connections as follows:

Enabled: Do not allow enumeration of SAM accounts. This option replaces Everyone with Authenticated Users in the security permissions for resources.
Disabled: No additional restrictions. Rely on default permissions.

Default on workstations: Enabled.
Default on server:Enabled.

Important

This policy has no impact on domain controllers.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Network access: Do not allow anonymous enumeration of SAM accounts*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networkaccess-donotallowanonymousenumerationofsamaccountsandshares"></a>**LocalPoliciesSecurityOptions/NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network access: Do not allow anonymous enumeration of SAM accounts and shares

This security setting determines whether anonymous enumeration of SAM accounts and shares is allowed.

Windows allows anonymous users to perform certain activities, such as enumerating the names of domain accounts and network shares. This is convenient, for example, when an administrator wants to grant access to users in a trusted domain that does not maintain a reciprocal trust. If you do not want to allow anonymous enumeration of SAM accounts and shares, then enable this policy.

Default: Disabled.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Network access: Do not allow anonymous enumeration of SAM accounts and shares*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networkaccess-restrictanonymousaccesstonamedpipesandshares"></a>**LocalPoliciesSecurityOptions/NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network access: Restrict anonymous access to Named Pipes and Shares

When enabled, this security setting restricts anonymous access to shares and pipes to the settings for:

Network access: Named pipes that can be accessed anonymously
Network access: Shares that can be accessed anonymously
Default: Enabled.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Network access: Restrict anonymous access to Named Pipes and Shares*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networkaccess-restrictclientsallowedtomakeremotecallstosam"></a>**LocalPoliciesSecurityOptions/NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network access: Restrict clients allowed to make remote calls to SAM

This policy setting allows you to restrict remote rpc connections to SAM.

If not selected, the default security descriptor will be used.

This policy is supported on at least Windows Server 2016.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Network access: Restrict clients allowed to make remote calls to SAM*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networksecurity-allowlocalsystemtousecomputeridentityforntlm"></a>**LocalPoliciesSecurityOptions/NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network security: Allow Local System to use computer identity for NTLM

This policy setting allows Local System services that use Negotiate to use the computer identity when reverting to NTLM authentication.

If you enable this policy setting, services running as Local System that use Negotiate will use the computer identity. This might cause some authentication requests between Windows operating systems to fail and log an error.

If you disable this policy setting, services running as Local System that use Negotiate when reverting to NTLM authentication will authenticate anonymously.

By default, this policy is enabled on Windows 7 and above.

By default, this policy is disabled on Windows Vista.

This policy is supported on at least Windows Vista or Windows Server 2008.

Note: Windows Vista or Windows Server 2008 do not expose this setting in Group Policy.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Network security: Allow Local System to use computer identity for NTLM*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networksecurity-allowpku2uauthenticationrequests"></a>**LocalPoliciesSecurityOptions/NetworkSecurity_AllowPKU2UAuthenticationRequests**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network security: Allow PKU2U authentication requests to this computer to use online identities.

This policy will be turned off by default on domain joined machines. This would prevent online identities from authenticating to the domain joined machine.


Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Network security: Allow PKU2U authentication requests to this computer to use online identities.*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
Valid values:  
- 0 - disabled
- 1 - enabled (allow PKU2U authentication requests to this computer to use online identities.)

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networksecurity-donotstorelanmanagerhashvalueonnextpasswordchange"></a>**LocalPoliciesSecurityOptions/NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network security: Do not store LAN Manager hash value on next password change

This security setting determines if, at the next password change, the LAN Manager (LM) hash value for the new password is stored. The LM hash is relatively weak and prone to attack, as compared with the cryptographically stronger Windows NT hash. Since the LM hash is stored on the local computer in the security database the passwords can be compromised if the security database is attacked.


Default on Windows Vista and above: Enabled
Default on Windows XP: Disabled.

Important

Windows 2000 Service Pack 2 (SP2) and above offer compatibility with authentication to previous versions of Windows, such as Microsoft Windows NT 4.0.
This setting can affect the ability of computers running Windows 2000 Server, Windows 2000 Professional, Windows XP, and the Windows Server 2003 family to communicate with computers running Windows 95 and Windows 98.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Network security: Do not store LAN Manager hash value on next password change*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networksecurity-lanmanagerauthenticationlevel"></a>**LocalPoliciesSecurityOptions/NetworkSecurity_LANManagerAuthenticationLevel**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network security LAN Manager authentication level

This security setting determines which challenge/response authentication protocol is used for network logons. This choice affects the level of authentication protocol used by clients, the level of session security negotiated, and the level of authentication accepted by servers as follows:

Send LM and NTLM responses: Clients use LM and NTLM authentication and never use NTLMv2 session security; domain controllers accept LM, NTLM, and NTLMv2 authentication.

Send LM and NTLM - use NTLMv2 session security if negotiated: Clients use LM and NTLM authentication and use NTLMv2 session security if the server supports it; domain controllers accept LM, NTLM, and NTLMv2 authentication.

Send NTLM response only: Clients use NTLM authentication only and use NTLMv2 session security if the server supports it; domain controllers accept LM, NTLM, and NTLMv2 authentication.

Send NTLMv2 response only: Clients use NTLMv2 authentication only and use NTLMv2 session security if the server supports it; domain controllers accept LM, NTLM, and NTLMv2 authentication.

Send NTLMv2 response only\refuse LM: Clients use NTLMv2 authentication only and use NTLMv2 session security if the server supports it; domain controllers refuse LM (accept only NTLM and NTLMv2 authentication).

Send NTLMv2 response only\refuse LM and NTLM: Clients use NTLMv2 authentication only and use NTLMv2 session security if the server supports it; domain controllers refuse LM and NTLM (accept only NTLMv2 authentication).

Important

This setting can affect the ability of computers running Windows 2000 Server, Windows 2000 Professional, Windows XP Professional, and the Windows Server 2003 family to communicate with computers running Windows NT 4.0 and earlier over the network. For example, at the time of this writing, computers running Windows NT 4.0 SP4 and earlier did not support NTLMv2. Computers running Windows 95 and Windows 98 did not support NTLM.

Default:

Windows 2000 and windows XP: send LM and NTLM responses

Windows Server 2003: Send NTLM response only

Windows Vista, Windows Server 2008, Windows 7, and Windows Server 2008 R2: Send NTLMv2 response only

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Network security: LAN Manager authentication level*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networksecurity-minimumsessionsecurityforntlmsspbasedclients"></a>**LocalPoliciesSecurityOptions/NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network security: Minimum session security for NTLM SSP based (including secure RPC) clients

This security setting allows a client to require the negotiation of 128-bit encryption and/or NTLMv2 session security. These values are dependent on the LAN Manager Authentication Level security setting value. The options are:

Require NTLMv2 session security: The connection will fail if NTLMv2 protocol is not negotiated.
Require 128-bit encryption: The connection will fail if strong encryption (128-bit) is not negotiated.

Default:

Windows XP, Windows Vista, Windows 2000 Server, Windows Server 2003, and Windows Server 2008: No requirements.

Windows 7 and Windows Server 2008 R2: Require 128-bit encryption

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Network security: Minimum session security for NTLM SSP based (including secure RPC) clients*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networksecurity-minimumsessionsecurityforntlmsspbasedservers"></a>**LocalPoliciesSecurityOptions/NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network security: Minimum session security for NTLM SSP based (including secure RPC) servers

This security setting allows a server to require the negotiation of 128-bit encryption and/or NTLMv2 session security. These values are dependent on the LAN Manager Authentication Level security setting value. The options are:

Require NTLMv2 session security: The connection will fail if message integrity is not negotiated.
Require 128-bit encryption. The connection will fail if strong encryption (128-bit) is not negotiated.

Default:

Windows XP, Windows Vista, Windows 2000 Server, Windows Server 2003, and Windows Server 2008: No requirements.

Windows 7 and Windows Server 2008 R2: Require 128-bit encryption

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Network security: Minimum session security for NTLM SSP based (including secure RPC) servers*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networksecurity-restrictntlm-addremoteserverexceptionsforntlmauthentication"></a>**LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network security: Restrict NTLM: Add remote server exceptions for NTLM authentication

This policy setting allows you to create an exception list of remote servers to which clients are allowed to use NTLM authentication if the  "Network Security: Restrict NTLM: Outgoing NTLM traffic to remote servers" policy setting is configured.

If you configure this policy setting, you can define a list of remote servers to which clients are allowed to use NTLM authentication.

If you do not configure this policy setting, no exceptions will be applied.

The naming format for servers on this exception list is the fully qualified domain name (FQDN) or NetBIOS server name used by the application, listed one per line. To ensure exceptions the name used by all applications needs to be in the list, and to ensure an exception is accurate, the server name should be listed in both naming formats . A single asterisk (*) can be used anywhere in the string as a wildcard character.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Network security: Restrict NTLM: Add remote server exceptions for NTLM authentication*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networksecurity-restrictntlm-auditincomingntlmtraffic"></a>**LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network security: Restrict NTLM: Audit Incoming NTLM Traffic

This policy setting allows you to audit incoming NTLM traffic.

If you select "Disable", or do not configure this policy setting, the server will not log events for incoming NTLM traffic.

If you select "Enable auditing for domain accounts", the server will log events for NTLM pass-through authentication requests that would be blocked when the "Network Security: Restrict NTLM: Incoming NTLM traffic" policy setting is set to the "Deny all domain accounts" option.

If you select "Enable auditing for all accounts", the server will log events for all NTLM authentication requests that would be blocked when the "Network Security: Restrict NTLM: Incoming NTLM traffic" policy setting is set to the "Deny all accounts" option.

This policy is supported on at least Windows 7 or Windows Server 2008 R2.

Note: Audit events are recorded on this computer in the "Operational" Log located under the Applications and Services Log/Microsoft/Windows/NTLM.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Network security: Restrict NTLM: Audit Incoming NTLM Traffic*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networksecurity-restrictntlm-incomingntlmtraffic"></a>**LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network security: Restrict NTLM: Incoming NTLM traffic

This policy setting allows you to deny or allow incoming NTLM traffic.

If you select "Allow all" or do not configure this policy setting, the server will allow all NTLM authentication requests.

If you select "Deny all domain accounts," the server will deny NTLM authentication requests for domain logon and display an NTLM blocked error, but allow local account logon.

If you select "Deny all accounts," the server will deny NTLM authentication requests from incoming traffic and display an NTLM blocked error.

This policy is supported on at least Windows 7 or Windows Server 2008 R2.

Note: Block events are recorded on this computer in the "Operational" Log located under the Applications and Services Log/Microsoft/Windows/NTLM.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Network security: Restrict NTLM: Incoming NTLM traffic*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networksecurity-restrictntlm-outgoingntlmtraffictoremoteservers"></a>**LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network security: Restrict NTLM: Outgoing NTLM traffic to remote servers

This policy setting allows you to deny or audit outgoing NTLM traffic from this Windows 7 or this Windows Server 2008 R2 computer to any Windows remote server.

If you select "Allow all" or do not configure this policy setting, the client computer can authenticate identities to a remote server by using NTLM authentication.

If you select "Audit all," the client computer logs an event for each NTLM authentication request to a remote server. This allows you to identify those servers receiving NTLM authentication requests from the client computer.

If you select "Deny all," the client computer cannot authenticate identities to a remote server by using NTLM authentication. You can use the "Network security: Restrict NTLM: Add remote server exceptions for NTLM authentication" policy setting to define a list of remote servers to which clients are allowed to use NTLM authentication.

This policy is supported on at least Windows 7 or Windows Server 2008 R2.

Note: Audit and block events are recorded on this computer in the "Operational" Log located under the Applications and Services Log/Microsoft/Windows/NTLM.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Network security: Restrict NTLM: Outgoing NTLM traffic to remote servers*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-recoveryconsole-allowautomaticadministrativelogon"></a>**LocalPoliciesSecurityOptions/RecoveryConsole_AllowAutomaticAdministrativeLogon**  

> [!Warning]  
> Starting with Windows 10 version 1803, this policy is deprecated.

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Description-->
Recovery console: Allow automatic administrative logon

This security setting determines if the password for the Administrator account must be given before access to the system is granted. If this option is enabled, the Recovery Console does not require you to provide a password, and it automatically logs on to the system.

Default: This policy is not defined and automatic administrative logon is not allowed.

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--SupportedValues-->
Valid values:  
- 0 - disabled
- 1 - enabled (allow automatic administrative logon)

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-shutdown-allowsystemtobeshutdownwithouthavingtologon"></a>**LocalPoliciesSecurityOptions/Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Shutdown: Allow system to be shut down without having to log on

This security setting determines whether a computer can be shut down without having to log on to Windows.

When this policy is enabled, the Shut Down command is available on the Windows logon screen.

When this policy is disabled, the option to shut down the computer does not appear on the Windows logon screen. In this case, users must be able to log on to the computer successfully and have the Shut down the system user right before they can perform a system shutdown.

Default on workstations: Enabled.
Default on servers: Disabled.

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Shutdown: Allow system to be shut down without having to log on*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
Valid values:  
- 0 - disabled
- 1 - enabled (allow system to be shut down without having to log on)

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-shutdown-clearvirtualmemorypagefile"></a>**LocalPoliciesSecurityOptions/Shutdown_ClearVirtualMemoryPageFile**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Shutdown: Clear virtual memory pagefile

This security setting determines whether the virtual memory pagefile is cleared when the system is shut down.

Virtual memory support uses a system pagefile to swap pages of memory to disk when they are not used. On a running system, this pagefile is opened exclusively by the operating system, and it is well protected. However, systems that are configured to allow booting to other operating systems might have to make sure that the system pagefile is wiped clean when this system shuts down. This ensures that sensitive information from process memory that might go into the pagefile is not available to an unauthorized user who manages to directly access the pagefile.

When this policy is enabled, it causes the system pagefile to be cleared upon clean shutdown. If you enable this security option, the hibernation file (hiberfil.sys) is also zeroed out when hibernation is disabled.

Default: Disabled.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *Shutdown: Clear virtual memory pagefile*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-systemobjects-requirecaseinsensitivityfornonwindowssubsystems"></a>**LocalPoliciesSecurityOptions/SystemObjects_RequireCaseInsensitivityForNonWindowsSubsystems**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
System objects: Require case insensitivity for non-Windows subsystems

This security setting determines whether case insensitivity is enforced for all subsystems. The Win32 subsystem is case insensitive. However, the kernel supports case sensitivity for other subsystems, such as POSIX.

If this setting is enabled, case insensitivity is enforced for all directory objects, symbolic links, and IO objects, including file objects. Disabling this setting does not allow the Win32 subsystem to become case sensitive.

Default: Enabled.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-useraccountcontrol-allowuiaccessapplicationstopromptforelevation"></a>**LocalPoliciesSecurityOptions/UserAccountControl_AllowUIAccessApplicationsToPromptForElevation**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
User Account Control: Allow UIAccess applications to prompt for elevation without using the secure desktop.

This policy setting controls whether User Interface Accessibility (UIAccess or UIA) programs can automatically disable the secure desktop for elevation prompts used by a standard user.

Enabled: UIA programs, including Windows Remote Assistance, automatically disable the secure desktop for elevation prompts. If you do not disable the "User Account Control: Switch to the secure desktop when prompting for elevation" policy setting, the prompts appear on the interactive user's desktop instead of the secure desktop.

Disabled: (Default)  

The secure desktop can be disabled only by the user of the interactive desktop or by disabling the "User Account Control: Switch to the secure desktop when prompting for elevation" policy setting.

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *User Account Control: Allow UIAccess applications to prompt for elevation without using the secure desktop*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
Valid values:  
- 0 - disabled
- 1 - enabled (allow UIAccess applications to prompt for elevation without using the secure desktop)

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-useraccountcontrol-behavioroftheelevationpromptforadministrators"></a>**LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForAdministrators**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
User Account Control: Behavior of the elevation prompt for administrators in Admin Approval Mode

This policy setting controls the behavior of the elevation prompt for administrators.

The options are:

- 0 - Elevate without prompting: Allows privileged accounts to perform an operation that requires elevation without requiring consent or credentials. Note: Use this option only in the most constrained environments.

- 1 - Prompt for credentials on the secure desktop: When an operation requires elevation of privilege, the user is prompted on the secure desktop to enter a privileged user name and password. If the user enters valid credentials, the operation continues with the user's highest available privilege.

- 2 - Prompt for consent on the secure desktop: When an operation requires elevation of privilege, the user is prompted on the secure desktop to select either Permit or Deny. If the user selects Permit, the operation continues with the user's highest available privilege.

- 3 - Prompt for credentials: When an operation requires elevation of privilege, the user is prompted to enter an administrative user name and password. If the user enters valid credentials, the operation continues with the applicable privilege.

- 4 - Prompt for consent: When an operation requires elevation of privilege, the user is prompted to select either Permit or Deny. If the user selects Permit, the operation continues with the user's highest available privilege.

- 5 - Prompt for consent for non-Windows binaries: (Default) When an operation for a non-Microsoft application requires elevation of privilege, the user is prompted on the secure desktop to select either Permit or Deny. If the user selects Permit, the operation continues with the user's highest available privilege.

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *User Account Control: Behavior of the elevation prompt for administrators in Admin Approval Mode*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-useraccountcontrol-behavioroftheelevationpromptforstandardusers"></a>**LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
User Account Control: Behavior of the elevation prompt for standard users
This policy setting controls the behavior of the elevation prompt for standard users.

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *User Account Control: Behavior of the elevation prompt for standard users*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Automatically deny elevation requests: When an operation requires elevation of privilege, a configurable access denied error message is displayed. An enterprise that is running desktops as standard user may choose this setting to reduce help desk calls.
-   1 - Prompt for credentials on the secure desktop: When an operation requires elevation of privilege, the user is prompted on the secure desktop to enter a different user name and password. If the user enters valid credentials, the operation continues with the applicable privilege.
-   3 (Default) - Prompt for credentials:  When an operation requires elevation of privilege, the user is prompted to enter an administrative user name and password. If the user enters valid credentials, the operation continues with the applicable privilege.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-useraccountcontrol-detectapplicationinstallationsandpromptforelevation"></a>**LocalPoliciesSecurityOptions/UserAccountControl_DetectApplicationInstallationsAndPromptForElevation**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
User Account Control: Detect application installations and prompt for elevation

This policy setting controls the behavior of application installation detection for the computer.

The options are:

Enabled: (Default) When an application installation package is detected that requires elevation of privilege, the user is prompted to enter an administrative user name and password. If the user enters valid credentials, the operation continues with the applicable privilege.

Disabled: Application installation packages are not detected and prompted for elevation. Enterprises that are running standard user desktops and use delegated installation technologies such as Group Policy Software Installation or Systems Management Server (SMS) should disable this policy setting. In this case, installer detection is unnecessary.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *User Account Control: Detect application installations and prompt for elevation*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-useraccountcontrol-onlyelevateexecutablefilesthataresignedandvalidated"></a>**LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
User Account Control: Only elevate executable files that are signed and validated

This policy setting enforces public key infrastructure (PKI) signature checks for any interactive applications that request elevation of privilege. Enterprise administrators can control which applications are allowed to run by adding certificates to the Trusted Publishers certificate store on local computers.

The options are:
- 0 - Disabled: (Default) Does not enforce PKI certification path validation before a given executable file is permitted to run.
- 1 - Enabled: Enforces the PKI certification path validation for a given executable file before it is permitted to run.

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *User Account Control: Only elevate executables that are signed and validated*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-useraccountcontrol-onlyelevateuiaccessapplicationsthatareinstalledinsecurelocations"></a>**LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
User Account Control: Only elevate UIAccess applications that are installed in secure locations

This policy setting controls whether applications that request to run with a User Interface Accessibility (UIAccess) integrity level must reside in a secure location in the file system. Secure locations are limited to the following:

- â€¦\Program Files\, including subfolders
- â€¦\Windows\system32\
- â€¦\Program Files (x86)\, including subfolders for 64-bit versions of Windows

Note: Windows enforces a public key infrastructure (PKI) signature check on any interactive application that requests to run with a UIAccess integrity level regardless of the state of this security setting.

The options are:  
- 0 - Disabled: An application runs with UIAccess integrity even if it does not reside in a secure location in the file system.
- 1 - Enabled: (Default) If an application resides in a secure location in the file system, it runs only with UIAccess integrity.

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *User Account Control: Only elevate UIAccess applications that are installed in secure locations*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-useraccountcontrol-runalladministratorsinadminapprovalmode"></a>**LocalPoliciesSecurityOptions/UserAccountControl_RunAllAdministratorsInAdminApprovalMode**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
User Account Control: Turn on Admin Approval Mode

This policy setting controls the behavior of all User Account Control (UAC) policy settings for the computer. If you change this policy setting, you must restart your computer.

The options are:
- 0 - Disabled: Admin Approval Mode and all related UAC policy settings are disabled. Note: If this policy setting is disabled, the Security Center notifies you that the overall security of the operating system has been reduced.
- 1 - Enabled: (Default) Admin Approval Mode is enabled. This policy must be enabled and related UAC policy settings must also be set appropriately to allow the built-in Administrator account and all other users who are members of the Administrators group to run in Admin Approval Mode. 


Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *User Account Control: Run all administrators in Admin Approval Mode*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-useraccountcontrol-switchtothesecuredesktopwhenpromptingforelevation"></a>**LocalPoliciesSecurityOptions/UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
User Account Control: Switch to the secure desktop when prompting for elevation

This policy setting controls whether the elevation request prompt is displayed on the interactive user's desktop or the secure desktop.

The options are:
- 0 - Disabled: All elevation requests go to the interactive user's desktop. Prompt behavior policy settings for administrators and standard users are used.
- 1 - Enabled: (Default) All elevation requests go to the secure desktop regardless of prompt behavior policy settings for administrators and standard users.

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *User Account Control: Switch to the secure desktop when prompting for elevation*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-useraccountcontrol-useadminapprovalmode"></a>**LocalPoliciesSecurityOptions/UserAccountControl_UseAdminApprovalMode**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
User Account Control: Use Admin Approval Mode for the built-in Administrator account

This policy setting controls the behavior of Admin Approval Mode for the built-in Administrator account.

The options are:

• Enabled: The built-in Administrator account uses Admin Approval Mode. By default, any operation that requires elevation of privilege will prompt the user to approve the operation.

• Disabled: (Default) The built-in Administrator account runs all applications with full administrative privilege.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *User Account Control: Admin Approval Mode for the Built-in Administrator account*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-useraccountcontrol-virtualizefileandregistrywritefailurestoperuserlocations"></a>**LocalPoliciesSecurityOptions/UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
User Account Control: Virtualize file and registry write failures to per-user locations

This policy setting controls whether application write failures are redirected to defined registry and file system locations. This policy setting mitigates applications that run as administrator and write run-time application data to %ProgramFiles%, %Windir%, %Windir%\system32, or HKLM\Software.

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *User Account Control: Virtualize file and registry write failures to per-user locations*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - Disabled: Applications that write data to protected locations fail.
- 1 - Enabled: (Default) Application write failures are redirected at run time to defined user locations for both the file system and registry.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.
-   5 - Added in Windows 10, version 1809.
-   6 - Added in the next major release of Windows 10.

<!--/Policies-->


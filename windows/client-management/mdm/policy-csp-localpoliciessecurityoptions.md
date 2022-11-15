---
title: Policy CSP - LocalPoliciesSecurityOptions
description: These settings prevent users from adding new Microsoft accounts on a specific computer using LocalPoliciesSecurityOptions.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 12/16/2021
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - LocalPoliciesSecurityOptions

<hr/>

<!--Policies-->
## LocalPoliciesSecurityOptions policies

<dl>
  <dd>
    <a href="#localpoliciessecurityoptions-accounts-blockmicrosoftaccounts">LocalPoliciesSecurityOptions/Accounts_BlockMicrosoftAccounts</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-accounts-enableadministratoraccountstatus">LocalPoliciesSecurityOptions/Accounts_EnableAdministratorAccountStatus</a>
  </dd>  <dd>
    <a href="#localpoliciessecurityoptions-accounts-enableguestaccountstatus">LocalPoliciesSecurityOptions/Accounts_EnableGuestAccountStatus</a>
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
    <a href="#localpoliciessecurityoptions-shutdown-allowsystemtobeshutdownwithouthavingtologon">LocalPoliciesSecurityOptions/Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn</a>
  </dd>
  <dd>
    <a href="#localpoliciessecurityoptions-shutdown-clearvirtualmemorypagefile">LocalPoliciesSecurityOptions/Shutdown_ClearVirtualMemoryPageFile</a>
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

> [!NOTE]
> To find data formats (and other policy-related details), see [Policy DDF file](./policy-ddf-file.md).

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-accounts-blockmicrosoftaccounts"></a>**LocalPoliciesSecurityOptions/Accounts_BlockMicrosoftAccounts**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents users from adding new Microsoft accounts on this computer.

If you select the "Users cannot add Microsoft accounts" option, users won't be able to create new Microsoft accounts on this computer. Switch a local account to a Microsoft account, or connect a domain account to a Microsoft account. This option is the preferred option if you need to limit the use of Microsoft accounts in your enterprise.

If you select the "Users cannot add or log on with Microsoft accounts" option, existing Microsoft account users won't be able to sign in to Windows. Selecting this option might make it impossible for an existing administrator on this computer to sign in and manage the system.

If you disable or don't configure this policy (recommended), users will be able to use Microsoft accounts with Windows.

This policy supports the following:
- Supported value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Accounts: Block Microsoft accounts*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - disabled (users will be able to use Microsoft accounts with Windows).
-   1 - enabled (users can't add Microsoft accounts).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-accounts-enableadministratoraccountstatus"></a>**LocalPoliciesSecurityOptions/Accounts_EnableAdministratorAccountStatus**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This setting allows the administrator to enable the local Administrator account.

This policy supports the following:
- Supported value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Accounts: Enable Administrator Account Status*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - disabled (local Administrator account is disabled).
-   1 - enabled (local Administrator account is enabled).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>
<!--Policy-->
<a href="" id="localpoliciessecurityoptions-accounts-enableguestaccountstatus"></a>**LocalPoliciesSecurityOptions/Accounts_EnableGuestAccountStatus**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This setting allows the administrator to enable the guest Administrator account.

This policy supports the following:
- Supported value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Accounts: Enable Guest Account Status*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - disabled (local Administrator account is disabled).
-   1 - enabled (local Administrator account is enabled).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>
<!--Policy-->

<a href="" id="localpoliciessecurityoptions-accounts-limitlocalaccountuseofblankpasswordstoconsolelogononly"></a>**LocalPoliciesSecurityOptions/Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Accounts: Limit local account use of blank passwords to console logon only

This security setting determines whether local accounts that aren't password protected can be used to sign in from locations other than the physical computer console. If enabled, local accounts that aren't password protected will only be able to sign in at the computer's keyboard.

Default: Enabled

> [!WARNING]
> Computers that aren't in physically secure locations should always enforce strong password policies for all local user accounts. Otherwise, anyone with physical access to the computer can sign in by using a user account that doesn't have a password. This is especially important for portable computers.
>
> If you apply this security policy to the Everyone group, no one will be able to sign in through Remote Desktop Services.

This setting doesn't affect sign in that use domain accounts.
It's possible for applications that use remote interactive sign in to bypass this setting.

This policy supports the following:
- Supported value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Accounts: Limit local account use of blank passwords to console logon only*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
Valid values:
- 0 -  disabled - local accounts that aren't password protected can be used to sign in from locations other than the physical computer console.
- 1 -  enabled - local accounts that aren't password protected will only be able to sign in at the computer's keyboard.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-accounts-renameadministratoraccount"></a>**LocalPoliciesSecurityOptions/Accounts_RenameAdministratorAccount**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Accounts: Rename administrator account

This security setting determines whether a different account name is associated with the security identifier (SID) for the account Administrator. Renaming the well-known Administrator account makes it slightly more difficult for unauthorized persons to guess this privileged user name and password combination.

Default: Administrator

This policy supports the following:
- Supported value type is string.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Accounts: Rename administrator account*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-accounts-renameguestaccount"></a>**LocalPoliciesSecurityOptions/Accounts_RenameGuestAccount**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Accounts: Rename guest account

This security setting determines whether a different account name is associated with the security identifier (SID) for the account "Guest." Renaming the well-known Guest account makes it slightly more difficult for unauthorized persons to guess this user name and password combination.

Default: Guest

This policy supports the following:
- Supported value type is string.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Accounts: Rename guest account*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-devices-allowundockwithouthavingtologon"></a>**LocalPoliciesSecurityOptions/Devices_AllowUndockWithoutHavingToLogon**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Devices: Allow undock without having to sign in

This security setting determines whether a portable computer can be undocked without having to sign in. If this policy is enabled, sign in isn't required and an external hardware eject button can be used to undock the computer. If disabled, a user must sign in and have the Remove computer from docking station privilege to undock the computer.

Default: Enabled

> [!CAUTION]
> Disabling this policy may tempt users to try and physically remove the laptop from its docking station using methods other than the external hardware eject button. Since this may cause damage to the hardware, this setting, in general, should only be disabled on laptop configurations that are physically securable.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Devices: Allow undock without having to log on*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-devices-allowedtoformatandejectremovablemedia"></a>**LocalPoliciesSecurityOptions/Devices_AllowedToFormatAndEjectRemovableMedia**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Devices: Allowed to format and eject removable media

This security setting determines who is allowed to format and eject removable NTFS media. This capability can be given to:

- Administrators.
- Administrators and Interactive Users.

Default: This policy isn't defined, and only Administrators have this ability.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Devices: Allowed to format and eject removable media*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-devices-preventusersfrominstallingprinterdriverswhenconnectingtosharedprinters"></a>**LocalPoliciesSecurityOptions/Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Devices: Prevent users from installing printer drivers when connecting to shared printers

For a computer to print to a shared printer, the driver for that shared printer must be installed on the local computer. This security setting determines who is allowed to install a printer driver as part of connecting to a shared printer. If this setting is enabled, only Administrators can install a printer driver as part of connecting to a shared printer. If this setting is disabled, any user can install a printer driver as part of connecting to a shared printer.

Default on servers: Enabled
Default on workstations: Disabled

>[!NOTE]
>This setting doesn't affect the ability to add a local printer. This setting doesn't affect Administrators.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Devices: Prevent users from installing printer drivers*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-devices-restrictcdromaccesstolocallyloggedonuseronly"></a>**LocalPoliciesSecurityOptions/Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

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

Default: This policy isn't defined and CD-ROM access isn't restricted to the locally logged-on user.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Devices: Restrict CD-ROM access to locally logged-on user only*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-interactivelogon-displayuserinformationwhenthesessionislocked"></a>**LocalPoliciesSecurityOptions/InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Interactive Logon: Display user information when the session is locked

This policy supports the following:
- Supported value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Interactive logon: Display user information when the session is locked*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
Valid values:
- 1 - User display name, domain and user names.
- 2 - User display name only.
- 3 - Don't display user information.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-interactivelogon-donotdisplaylastsignedin"></a>**LocalPoliciesSecurityOptions/InteractiveLogon_DoNotDisplayLastSignedIn**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Interactive logon: Don't display last signed-in

This security setting determines whether the Windows sign-in screen will show the username of the last person who signed in on this PC.

If this policy is enabled, the username won't be shown.

If this policy is disabled, the username will be shown.

Default: Disabled

This policy supports the following:
- Supported value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Interactive logon: Don't display last signed-in*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
Valid values:
- 0 - disabled (username will be shown).
- 1 - enabled (username won't be shown).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-interactivelogon-donotdisplayusernameatsignin"></a>**LocalPoliciesSecurityOptions/InteractiveLogon_DoNotDisplayUsernameAtSignIn**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Interactive logon: Don't display username at sign-in

This security setting determines whether the username of the person signing in to this PC appears at Windows sign-in, after credentials are entered, and before the PC desktop is shown.

If this policy is enabled, the username won't be shown.

If this policy is disabled, the username will be shown.

Default: Disabled

This policy supports the following:
- Supported value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Interactive logon: Don't display username at sign-in*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
Valid values:
- 0 - disabled (username will be shown).
- 1 - enabled (username won't be shown).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-interactivelogon-donotrequirectrlaltdel"></a>**LocalPoliciesSecurityOptions/InteractiveLogon_DoNotRequireCTRLALTDEL**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Interactive logon: Don't require CTRL+ALT+DEL

This security setting determines whether pressing CTRL+ALT+DEL is required before a user can sign in.

If this policy is enabled on a computer, a user isn't required to press CTRL+ALT+DEL to sign in. Not having to press CTRL+ALT+DEL leaves users susceptible to attacks that attempt to intercept the users' passwords. Requiring CTRL+ALT+DEL before users sign in ensures that users are communicating through a trusted path when entering their passwords.

If this policy is disabled, any user is required to press CTRL+ALT+DEL before logging on to Windows.

Default on domain-computers: Enabled: At least Windows 8 / Disabled: Windows 7 or earlier.
Default on stand-alone computers: Enabled

This policy supports the following:
- Supported value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Interactive logon: Do not require CTRL+ALT+DEL*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
Valid values:
- 0 - disabled.
- 1 - enabled (a user isn't required to press CTRL+ALT+DEL to sign in).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-interactivelogon-machineinactivitylimit"></a>**LocalPoliciesSecurityOptions/InteractiveLogon_MachineInactivityLimit**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Interactive logon: Machine inactivity limit

Windows notices inactivity of a sign-in session, and if the amount of inactive time exceeds the inactivity limit, then the screen saver will run, locking the session.

Default: Not enforced

This policy supports the following:
- Supported value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Interactive logon: Machine inactivity limit*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
Valid values: From 0 to 599940, where the value is the amount of inactivity time (in seconds) after which the session will be locked. If it's set to zero (0), the setting is disabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-interactivelogon-messagetextforusersattemptingtologon"></a>**LocalPoliciesSecurityOptions/InteractiveLogon_MessageTextForUsersAttemptingToLogOn**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Interactive logon: Message text for users attempting to sign in

This security setting specifies a text message that is displayed to users when they sign in.

This text is often used for legal reasons. For example, to warn users about the ramifications of misusing company information or to warn them that their actions may be audited.

Default: No message

This policy supports the following:
- Supported value type is string.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Interactive logon: Message text for users attempting to log on*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-interactivelogon-messagetitleforusersattemptingtologon"></a>**LocalPoliciesSecurityOptions/InteractiveLogon_MessageTitleForUsersAttemptingToLogOn**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Interactive logon: Message title for users attempting to sign in

This security setting allows the specification of a title to appear in the title bar of the window that contains the Interactive logon: Message text for users attempting to sign in.

Default: No message

This policy supports the following:
- Supported value type is string.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Interactive logon: Message title for users attempting to log on*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-interactivelogon-smartcardremovalbehavior"></a>**LocalPoliciesSecurityOptions/InteractiveLogon_SmartCardRemovalBehavior**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

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

- No Action
- Lock Workstation
- Force Logoff
- Disconnect if a Remote Desktop Services session

If you click Lock Workstation in the Properties dialog box for this policy, the workstation is locked when the smart card is removed, allowing users to leave the area, take their smart card with them, and still maintain a protected session.

If you click Force Logoff in the Properties dialog box for this policy, the user is automatically signed off when the smart card is removed.

If you click Disconnect on a Remote Desktop Services session, removal of the smart card disconnects the session without logging off the user. This policy allows the user to insert the smart card and resume the session later, or at another smart card reader-equipped computer, without having to sign in again. If the session is local, this policy functions identically to Lock Workstation.

> [!NOTE]
> Remote Desktop Services was called Terminal Services in previous versions of Windows Server.

Default: This policy isn't defined, which means that the system treats it as No action.

On Windows Vista and above: For this setting to work, the Smart Card Removal Policy service must be started.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Interactive logon: Smart card removal behavior*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-microsoftnetworkclient-digitallysigncommunicationsalways"></a>**LocalPoliciesSecurityOptions/MicrosoftNetworkClient_DigitallySignCommunicationsAlways**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Microsoft network client: Digitally sign communications (always)

This security setting determines whether packet signing is required by the SMB client component. The server message block (SMB) protocol provides the basis for Microsoft file, print sharing, and many other networking operations, such as remote Windows administration. To prevent man-in-the-middle attacks that modify SMB packets in transit, the SMB protocol supports the digital signing of SMB packets. This policy setting determines whether SMB packet signing must be negotiated before further communication with an SMB server is permitted.

If this setting is enabled, the Microsoft network client won't communicate with a Microsoft network server unless that server agrees to perform SMB packet signing. If this policy is disabled, SMB packet signing is negotiated between the client and server.

Default: Disabled

> [!Note]
> All Windows operating systems support both a client-side SMB component and a server-side SMB component. Enabling or requiring packet signing for client and server-side SMB components is controlled by the following four policy settings:
> - Microsoft network client: Digitally sign communications (always) - Controls whether or not the client-side SMB component requires packet signing.
> - Microsoft network client: Digitally sign communications (if server agrees) - Controls whether or not the client-side SMB component has packet signing enabled.
> - Microsoft network server: Digitally sign communications (always) - Controls whether or not the server-side SMB component requires packet signing.
> - Microsoft network server: Digitally sign communications (if client agrees) - Controls whether or not the server-side SMB component has packet signing enabled.
>
> SMB packet signing can significantly degrade SMB performance, depending on dialect version, OS version, file sizes, processor offloading capabilities, and application IO behaviors. For more information, reference: [Reduced performance after SMB Encryption or SMB Signing is enabled - Windows Server | Microsoft Docs](/troubleshoot/windows-server/networking/reduced-performance-after-smb-encryption-signing).

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Microsoft network client: Digitally sign communications (always)*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-microsoftnetworkclient-digitallysigncommunicationsifserveragrees"></a>**LocalPoliciesSecurityOptions/MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Microsoft network client: Digitally sign communications (if server agrees)

This security setting determines whether the SMB client attempts to negotiate SMB packet signing.

The server message block (SMB) protocol provides the basis for Microsoft file, print sharing, and many other networking operations, such as remote Windows administration. To prevent man-in-the-middle attacks that modify SMB packets in transit, the SMB protocol supports the digital signing of SMB packets. This policy setting determines whether the SMB client component attempts to negotiate SMB packet signing when it connects to an SMB server.

If this setting is enabled, the Microsoft network client will ask the server to perform SMB packet signing upon session setup. If packet signing has been enabled on the server, packet signing will be negotiated. If this policy is disabled, the SMB client will never negotiate SMB packet signing.

Default: Enabled

> [!Note]
> All Windows operating systems support both a client-side SMB component and a server-side SMB component. Enabling or requiring packet signing for client and server-side SMB components is controlled by the following four policy settings:
> - Microsoft network client: Digitally sign communications (always) - Controls whether or not the client-side SMB component requires packet signing.
> - Microsoft network client: Digitally sign communications (if server agrees) - Controls whether or not the client-side SMB component has packet signing enabled.
> - Microsoft network server: Digitally sign communications (always) - Controls whether or not the server-side SMB component requires packet signing.
> - Microsoft network server: Digitally sign communications (if client agrees) - Controls whether or not the server-side SMB component has packet signing enabled.
> If both client-side and server-side SMB signing is enabled and the client establishes an SMB 1.0 connection to the server, SMB signing will be attempted.
>
> SMB packet signing can significantly degrade SMB performance, depending on dialect version, OS version, file sizes, processor offloading capabilities, and application IO behaviors. This setting only applies to SMB 1.0 connections.
> For more information, reference: [Reduced performance after SMB Encryption or SMB Signing is enabled - Windows Server | Microsoft Docs](/troubleshoot/windows-server/networking/reduced-performance-after-smb-encryption-signing).

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Microsoft network client: Digitally sign communications (if server agrees)*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-microsoftnetworkclient-sendunencryptedpasswordtothirdpartysmbservers"></a>**LocalPoliciesSecurityOptions/MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Microsoft network client: Send unencrypted password to connect to third-party SMB servers

If this security setting is enabled, the Server Message Block (SMB) redirector is allowed to send plaintext passwords to non-Microsoft SMB servers that don't support password encryption during authentication.

Sending unencrypted passwords is a security risk.

Default: Disabled

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Microsoft network client: Send unencrypted password to third-party SMB servers*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-microsoftnetworkserver-amountofidletimerequiredbeforesuspendingsession"></a>**LocalPoliciesSecurityOptions/MicrosoftNetworkServer_AmountOfIdleTimeRequiredBeforeSuspendingSession**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

> [!WARNING]
> Starting in Windows 10, version 1803, this policy is deprecated.

Microsoft network server: Amount of idle time required before suspending a session

This security setting determines the amount of continuous idle time that must pass in a Server Message Block (SMB) session before the session is suspended due to inactivity.

Administrators can use this policy to control when a computer suspends an inactive SMB session. If client activity resumes, the session is automatically reestablished.

For this policy setting, a value of 0 means to disconnect an idle session as quickly as is reasonably possible. The maximum value is 99999, which is 208 days; in effect, this value disables the policy.

Default: This policy isn't defined, which means that the system treats it as 15 minutes for servers and undefined for workstations.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Microsoft network server: Amount of idle time required before suspending session*
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

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Microsoft network server: Digitally sign communications (always)

This security setting determines whether packet signing is required by the SMB server component.

The server message block (SMB) protocol provides the basis for Microsoft file, print sharing, and many other networking operations, such as remote Windows administration. To prevent man-in-the-middle attacks that modify SMB packets in transit, the SMB protocol supports the digital signing of SMB packets. This policy setting determines whether SMB packet signing must be negotiated before further communication with an SMB client is permitted.

If this setting is enabled, the Microsoft network server won't communicate with a Microsoft network client, unless that client agrees to perform SMB packet signing. If this setting is disabled, SMB packet signing is negotiated between the client and server.

Default: Disabled for member servers. Enabled for domain controllers.

> [!NOTE]
> All Windows operating systems support both a client-side SMB component and a server-side SMB component. Enabling or requiring packet signing for client and server-side SMB components is controlled by the following four policy settings:
> - Microsoft network client: Digitally sign communications (always) - Controls whether or not the client-side SMB component requires packet signing.
> - Microsoft network client: Digitally sign communications (if server agrees) - Controls whether or not the client-side SMB component has packet signing enabled.
> - Microsoft network server: Digitally sign communications (always) - Controls whether or not the server-side SMB component requires packet signing.
> - Microsoft network server: Digitally sign communications (if client agrees) - Controls whether or not the server-side SMB component has packet signing enabled.
>
> Similarly, if client-side SMB signing is required, that client won't be able to establish a session with servers that don't have packet signing enabled. By default, server-side SMB signing is enabled only on domain controllers.
> If server-side SMB signing is enabled, SMB packet signing will be negotiated with clients that have client-side SMB signing enabled.
> SMB packet signing can significantly degrade SMB performance, depending on dialect version, OS version, file sizes, processor offloading capabilities, and application IO behaviors. For more information, reference: [Reduced performance after SMB Encryption or SMB Signing is enabled - Windows Server | Microsoft Docs](/troubleshoot/windows-server/networking/reduced-performance-after-smb-encryption-signing).

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Microsoft network server: Digitally sign communications (always)*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-microsoftnetworkserver-digitallysigncommunicationsifclientagrees"></a>**LocalPoliciesSecurityOptions/MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Microsoft network server: Digitally sign communications (if client agrees)

This security setting determines whether the SMB server will negotiate SMB packet signing with clients that request it.

The server message block (SMB) protocol provides the basis for Microsoft file, print sharing, and many other networking operations, such as remote Windows administration. To prevent man-in-the-middle attacks that modify SMB packets in transit, the SMB protocol supports the digital signing of SMB packets. This policy setting determines whether the SMB server will negotiate SMB packet signing when an SMB client requests it.

If this setting is enabled, the Microsoft network server will negotiate SMB packet signing as requested by the client. That is, if packet signing has been enabled on the client, packet signing will be negotiated. If this policy is disabled, the SMB client will never negotiate SMB packet signing.

Default: Enabled on domain controllers only.

> [!NOTE]
> All Windows operating systems support both a client-side SMB component and a server-side SMB component. Enabling or requiring packet signing for client and server-side SMB components is controlled by the following four policy settings:
> - Microsoft network client: Digitally sign communications (always) - Controls whether or not the client-side SMB component requires packet signing.
> - Microsoft network client: Digitally sign communications (if server agrees) - Controls whether or not the client-side SMB component has packet signing enabled.
> - Microsoft network server: Digitally sign communications (always) - Controls whether or not the server-side SMB component requires packet signing.
> - Microsoft network server: Digitally sign communications (if client agrees) - Controls whether or not the server-side SMB component has packet signing enabled.
> If both client-side and server-side SMB signing is enabled and the client establishes an SMB 1.0 connection to the server, SMB signing will be attempted.
>
> SMB packet signing can significantly degrade SMB performance, depending on dialect version, OS version, file sizes, processor offloading capabilities, and application IO behaviors. This setting only applies to SMB 1.0 connections.
For more information, reference: [Reduced performance after SMB Encryption or SMB Signing is enabled - Windows Server | Microsoft Docs](/troubleshoot/windows-server/networking/reduced-performance-after-smb-encryption-signing).

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Microsoft network server: Digitally sign communications (if client agrees)*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networkaccess-donotallowanonymousenumerationofsamaccounts"></a>**LocalPoliciesSecurityOptions/NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network access: Don't allow anonymous enumeration of SAM accounts

This security setting determines what other permissions will be granted for anonymous connections to the computer.

Windows allows anonymous users to perform certain activities, such as enumerating the names of domain accounts and network shares. This feature is convenient, for example, when an administrator wants to grant access to users in a trusted domain that doesn't maintain a reciprocal trust.

This security option allows more restrictions to be placed on anonymous connections as follows:

Enabled: Don't allow enumeration of SAM accounts. This option replaces Everyone with Authenticated Users in the security permissions for resources.
Disabled: No extra restrictions. Rely on default permissions.

Default on workstations: Enabled
Default on server: Enabled

> [!IMPORTANT]
> This policy has no impact on domain controllers.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Network access: Do not allow anonymous enumeration of SAM accounts*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networkaccess-donotallowanonymousenumerationofsamaccountsandshares"></a>**LocalPoliciesSecurityOptions/NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network access: Don't allow anonymous enumeration of SAM accounts and shares

This security setting determines whether anonymous enumeration of SAM accounts and shares is allowed.

Windows allows anonymous users to perform certain activities, such as enumerating the names of domain accounts and network shares. This feature is convenient, for example, when an administrator wants to grant access to users in a trusted domain that doesn't maintain a reciprocal trust. If you don't want to allow anonymous enumeration of SAM accounts and shares, then enable this policy.

Default: Disabled

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Network access: Do not allow anonymous enumeration of SAM accounts and shares*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networkaccess-restrictanonymousaccesstonamedpipesandshares"></a>**LocalPoliciesSecurityOptions/NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network access: Restrict anonymous access to Named Pipes and Shares

When enabled, this security setting restricts anonymous access to shares and pipes to the settings for:

- Network access: Named pipes that can be accessed anonymously.
- Network access: Shares that can be accessed anonymously.
- Default: Enabled.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Network access: Restrict anonymous access to Named Pipes and Shares*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networkaccess-restrictclientsallowedtomakeremotecallstosam"></a>**LocalPoliciesSecurityOptions/NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

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
-   GP Friendly name: *Network access: Restrict clients allowed to make remote calls to SAM*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networksecurity-allowlocalsystemtousecomputeridentityforntlm"></a>**LocalPoliciesSecurityOptions/NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network security: Allow Local System to use computer identity for NTLM.

When services connect to devices that are running versions of the Windows operating system earlier than Windows Vista or Windows Server 2008, services that run as Local System and use SPNEGO (Negotiate) that revert to NTLM will authenticate anonymously. In Windows Server 2008 R2 and Windows 7 and later, if a service connects to a computer running Windows Server 2008 or Windows Vista, the system service uses the computer identity.

When a service connects with the device identity, signing and encryption are supported to provide data protection. (When a service connects anonymously, a system-generated session key is created, which provides no protection, but it allows applications to sign and encrypt data without errors. Anonymous authentication uses a NULL session, which is a session with a server in which no user authentication is performed; and therefore, anonymous access is allowed.)

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Network security: Allow Local System to use computer identity for NTLM*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
Valid values:
- 0 - Disabled.
- 1 - Enabled (Allow Local System to use computer identity for NTLM).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networksecurity-allowpku2uauthenticationrequests"></a>**LocalPoliciesSecurityOptions/NetworkSecurity_AllowPKU2UAuthenticationRequests**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network security: Allow PKU2U authentication requests to this computer to use online identities.

This policy will be turned off by default on domain joined machines. This disablement would prevent online identities from authenticating to the domain joined machine.

This policy supports the following:
- Supported value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Network security: Allow PKU2U authentication requests to this computer to use online identities.*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
Valid values:
- 0 - disabled.
- 1 - enabled (allow PKU2U authentication requests to this computer to use online identities).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networksecurity-donotstorelanmanagerhashvalueonnextpasswordchange"></a>**LocalPoliciesSecurityOptions/NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network security: Don't store LAN Manager hash value on next password change

This security setting determines if, at the next password change, the LAN Manager (LM) hash value for the new password is stored. The LM hash is relatively weak and prone to attack, as compared with the cryptographically stronger Windows NT hash. Since the LM hash is stored on the local computer in the security database, the passwords can be compromised if the security database is attacked.

- Default on Windows Vista and above: Enabled
- Default on Windows XP: Disabled

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Network security: Do not store LAN Manager hash value on next password change*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networksecurity-lanmanagerauthenticationlevel"></a>**LocalPoliciesSecurityOptions/NetworkSecurity_LANManagerAuthenticationLevel**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network security LAN Manager authentication level

This security setting determines which challenge/response authentication protocol is used for network logon. This choice affects the level of authentication protocol used by clients, the level of session security negotiated, and the level of authentication accepted by servers as follows:

- Send LM and NTLM responses: Clients use LM and NTLM authentication and never use NTLMv2 session security; domain controllers accept LM, NTLM, and NTLMv2 authentication.

- Send LM and NTLM - use NTLMv2 session security if negotiated: Clients use LM and NTLM authentication and use NTLMv2 session security if the server supports it; domain controllers accept LM, NTLM, and NTLMv2 authentication.

- Send NTLM response only: Clients use NTLM authentication only and use NTLMv2 session security if the server supports it; domain controllers accept LM, NTLM, and NTLMv2 authentication.

- Send NTLMv2 response only: Clients use NTLMv2 authentication only and use NTLMv2 session security if the server supports it; domain controllers accept LM, NTLM, and NTLMv2 authentication.

- Send NTLMv2 response only\refuse LM: Clients use NTLMv2 authentication only and use NTLMv2 session security if the server supports it; domain controllers refuse LM (accept only NTLM and NTLMv2 authentication).

- Send NTLMv2 response only\refuse LM and NTLM: Clients use NTLMv2 authentication only and use NTLMv2 session security if the server supports it; domain controllers refuse LM and NTLM (accept only NTLMv2 authentication).

- Default:

- windows XP: send LM and NTLM responses.

- Windows Server 2003: Send NTLM response only.

Windows Vista, Windows Server 2008, Windows 7, and Windows Server 2008 R2: Send NTLMv2 response only.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Network security: LAN Manager authentication level*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networksecurity-minimumsessionsecurityforntlmsspbasedclients"></a>**LocalPoliciesSecurityOptions/NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network security: Minimum session security for NTLM SSP based (including secure RPC) clients.

This security setting allows a client device to require the negotiation of 128-bit encryption and/or NTLMv2 session security. These values are dependent on the LAN Manager Authentication Level security setting value. The options are:

- Require NTLMv2 session security: The connection will fail if message integrity isn't negotiated.
- Require 128-bit encryption: The connection will fail if strong encryption (128-bit) isn't negotiated.

- Default:

- Windows XP, Windows Vista, Windows Server 2003, and Windows Server 2008: No requirements.

- Windows 7 and Windows Server 2008 R2: Require 128-bit encryption.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Network security: Minimum session security for NTLM SSP based (including secure RPC) clients*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networksecurity-minimumsessionsecurityforntlmsspbasedservers"></a>**LocalPoliciesSecurityOptions/NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network security: Minimum session security for NTLM SSP based (including secure RPC) servers

This security setting allows a server to require the negotiation of 128-bit encryption and/or NTLMv2 session security. These values are dependent on the LAN Manager Authentication Level security setting value. The options are:

- Require NTLMv2 session security: The connection will fail if message integrity isn't negotiated.

- Require 128-bit encryption. The connection will fail if strong encryption (128-bit) isn't negotiated.

- Default:

- Windows XP, Windows Vista, Windows Server 2003, and Windows Server 2008: No requirements.

- Windows 7 and Windows Server 2008 R2: Require 128-bit encryption.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Network security: Minimum session security for NTLM SSP based (including secure RPC) servers*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-networksecurity-restrictntlm-addremoteserverexceptionsforntlmauthentication"></a>**LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network security: Restrict NTLM: Add remote server exceptions for NTLM authentication

This policy setting allows you to create an exception list of remote servers to which clients are allowed to use NTLM authentication, if the "Network Security: Restrict NTLM: Outgoing NTLM traffic to remote servers" policy setting is configured.

If you configure this policy setting, you can define a list of remote servers to which clients are allowed to use NTLM authentication.

If you don't configure this policy setting, no exceptions will be applied.

The naming format for servers on this exception list is the fully qualified domain name (FQDN) or NetBIOS server name used by the application, listed one per line. To ensure exceptions, the name used by all applications needs to be in the list, and to ensure an exception is accurate, the server name should be listed in both naming formats. A single asterisk (*) can be used anywhere in the string as a wildcard character.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Network security: Restrict NTLM: Add remote server exceptions for NTLM authentication*
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
<a href="" id="localpoliciessecurityoptions-networksecurity-restrictntlm-auditincomingntlmtraffic"></a>**LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network security: Restrict NTLM: Audit Incoming NTLM Traffic

This policy setting allows you to audit incoming NTLM traffic.

If you select "Disable", or don't configure this policy setting, the server won't log events for incoming NTLM traffic.

If you select "Enable auditing for domain accounts", the server will log events for NTLM pass-through authentication requests that would be blocked when the "Network Security: Restrict NTLM: Incoming NTLM traffic" policy setting is set to the "Deny all domain accounts" option.

If you select "Enable auditing for all accounts", the server will log events for all NTLM authentication requests that would be blocked when the "Network Security: Restrict NTLM: Incoming NTLM traffic" policy setting is set to the "Deny all accounts" option.

This policy is supported on at least Windows 7 or Windows Server 2008 R2.

> [!NOTE]
> Audit events are recorded on this computer in the "Operational" Log located under the Applications and Services Log/Microsoft/Windows/NTLM.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Network security: Restrict NTLM: Audit Incoming NTLM Traffic*
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
<a href="" id="localpoliciessecurityoptions-networksecurity-restrictntlm-incomingntlmtraffic"></a>**LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network security: Restrict NTLM: Incoming NTLM traffic

This policy setting allows you to deny or allow incoming NTLM traffic.

If you select "Allow all" or don't configure this policy setting, the server will allow all NTLM authentication requests.

If you select "Deny all domain accounts," the server will deny NTLM authentication requests for domain sign in and display an NTLM blocked error, but allow local account sign in.

If you select "Deny all accounts," the server will deny NTLM authentication requests from incoming traffic and display an NTLM blocked error.

This policy is supported on at least Windows 7 or Windows Server 2008 R2.

> [!NOTE]
> Block events are recorded on this computer in the "Operational" Log located under the Applications and Services Log/Microsoft/Windows/NTLM.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Network security: Restrict NTLM: Incoming NTLM traffic*
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
<a href="" id="localpoliciessecurityoptions-networksecurity-restrictntlm-outgoingntlmtraffictoremoteservers"></a>**LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network security: Restrict NTLM: Outgoing NTLM traffic to remote servers

This policy setting allows you to deny or audit outgoing NTLM traffic from this Windows 7 or this Windows Server 2008 R2 computer to any Windows remote server.

If you select "Allow all" or don't configure this policy setting, the client computer can authenticate identities to a remote server by using NTLM authentication.

If you select "Audit all," the client computer logs an event for each NTLM authentication request to a remote server. This logging allows you to identify those servers receiving NTLM authentication requests from the client computer.

If you select "Deny all," the client computer can't authenticate identities to a remote server by using NTLM authentication. You can use the "Network security: Restrict NTLM: Add remote server exceptions for NTLM authentication" policy setting to define a list of remote servers to which clients are allowed to use NTLM authentication.

This policy is supported on at least Windows 7 or Windows Server 2008 R2.

> [!NOTE]
> Audit and block events are recorded on this computer in the "Operational" Log located under the Applications and Services Log/Microsoft/Windows/NTLM.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Network security: Restrict NTLM: Outgoing NTLM traffic to remote servers*
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
<a href="" id="localpoliciessecurityoptions-shutdown-allowsystemtobeshutdownwithouthavingtologon"></a>**LocalPoliciesSecurityOptions/Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Shutdown: Allow system to be shut down without having to sign in

This security setting determines whether a computer can be shut down without having to sign in to Windows.

When this policy is enabled, the Shut Down command is available on the Windows logon screen.

When this policy is disabled, the option to shut down the computer doesn't appear on the Windows logon screen. In this case, users must be able to sign in to the computer successfully and have the Shut down the system user right before they can perform a system shutdown.

- Default on workstations: Enabled.
- Default on servers: Disabled.

This policy supports the following:
- Supported value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Shutdown: Allow system to be shut down without having to log on*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
Valid values:
- 0 - disabled.
- 1 - enabled (allow system to be shut down without having to sign in).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-shutdown-clearvirtualmemorypagefile"></a>**LocalPoliciesSecurityOptions/Shutdown_ClearVirtualMemoryPageFile**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Shutdown: Clear virtual memory pagefile

This security setting determines whether the virtual memory pagefile is cleared when the system is shut down.

Virtual memory support uses a system pagefile to swap pages of memory to disk when they aren't used. On a running system, this pagefile is opened exclusively by the operating system, and it's well protected. However, systems that are configured to allow booting to other operating systems might have to ensure that the system pagefile is wiped clean when this system shuts down. This cleaning ensures that sensitive information from process memory that might go into the pagefile isn't available to an unauthorized user who manages to directly access the pagefile.

When this policy is enabled, it causes the system pagefile to be cleared upon clean shutdown. If you enable this security option, the hibernation file (hiberfil.sys) is also zeroed out when hibernation is disabled.

Default: Disabled

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *Shutdown: Clear virtual memory pagefile*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-useraccountcontrol-allowuiaccessapplicationstopromptforelevation"></a>**LocalPoliciesSecurityOptions/UserAccountControl_AllowUIAccessApplicationsToPromptForElevation**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
User Account Control: Allow UIAccess applications to prompt for elevation without using the secure desktop.

This policy setting controls whether User Interface Accessibility (UIAccess or UIA) programs can automatically disable the secure desktop for elevation prompts used by a standard user.

Enabled: UIA programs, including Windows Remote Assistance, automatically disable the secure desktop for elevation prompts. If you don't disable the "User Account Control: Switch to the secure desktop when prompting for elevation" policy setting, the prompts appear on the interactive user's desktop instead of the secure desktop.

Disabled: (Default)

The secure desktop can be disabled only by the user of the interactive desktop or by disabling the "User Account Control: Switch to the secure desktop when prompting for elevation" policy setting.

This policy supports the following:
- Supported value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *User Account Control: Allow UIAccess applications to prompt for elevation without using the secure desktop*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
Valid values:
- 0 - disabled.
- 1 - enabled (allow UIAccess applications to prompt for elevation without using the secure desktop).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-useraccountcontrol-behavioroftheelevationpromptforadministrators"></a>**LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForAdministrators**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

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

- 0 - Elevate without prompting: Allows privileged accounts to perform an operation that requires elevation without requiring consent or credentials.

  > [!NOTE]
  > Use this option only in the most constrained environments.

- 1 - Prompt for credentials on the secure desktop: When an operation requires elevation of privilege, the user is prompted on the secure desktop to enter a privileged user name and password. If the user enters valid credentials, the operation continues with the user's highest available privilege.

- 2 - Prompt for consent on the secure desktop: When an operation requires elevation of privilege, the user is prompted on the secure desktop to select either Permit or Deny. If the user selects Permit, the operation continues with the user's highest available privilege.

- 3 - Prompt for credentials: When an operation requires elevation of privilege, the user is prompted to enter an administrative user name and password. If the user enters valid credentials, the operation continues with the applicable privilege.

- 4 - Prompt for consent: When an operation requires elevation of privilege, the user is prompted to select either Permit or Deny. If the user selects Permit, the operation continues with the user's highest available privilege.

- 5 - Prompt for consent for non-Windows binaries: (Default) When an operation for a non-Microsoft application requires elevation of privilege, the user is prompted on the secure desktop to select either Permit or Deny. If the user selects Permit, the operation continues with the user's highest available privilege.

This policy supports the following:
- Supported value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *User Account Control: Behavior of the elevation prompt for administrators in Admin Approval Mode*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-useraccountcontrol-behavioroftheelevationpromptforstandardusers"></a>**LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
User Account Control: Behavior of the elevation prompt for standard users

This policy setting controls the behavior of the elevation prompt for standard users.

This policy supports the following:
- Supported value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *User Account Control: Behavior of the elevation prompt for standard users*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Automatically deny elevation requests: When an operation requires elevation of privilege, a configurable access denied error message is displayed. An enterprise that is running desktops as standard user, may choose this setting to reduce help desk calls.
-   1 - Prompt for credentials on the secure desktop: When an operation requires elevation of privilege, the user is prompted on the secure desktop to enter a different user name and password. If the user enters valid credentials, the operation continues with the applicable privilege.
-   3 (Default) - Prompt for credentials: When an operation requires elevation of privilege, the user is prompted to enter an administrative user name and password. If the user enters valid credentials, the operation continues with the applicable privilege.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-useraccountcontrol-detectapplicationinstallationsandpromptforelevation"></a>**LocalPoliciesSecurityOptions/UserAccountControl_DetectApplicationInstallationsAndPromptForElevation**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

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

- Enabled: (Default) When an application installation package is detected that requires elevation of privilege, the user is prompted to enter an administrative user name and password. If the user enters valid credentials, the operation continues with the applicable privilege.

- Disabled: Application installation packages aren't detected and prompted for elevation. Enterprises that are running standard user desktops and use delegated installation technologies such as Group Policy Software Installation or Systems Management Server (SMS) should disable this policy setting. In this case, installer detection is unnecessary.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *User Account Control: Detect application installations and prompt for elevation*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-useraccountcontrol-onlyelevateexecutablefilesthataresignedandvalidated"></a>**LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
User Account Control: Only elevate executable files that are signed and validated

This policy setting enforces public key infrastructure (PKI) signature checks for any interactive applications that request elevation of privilege. Enterprise administrators can control which applications are allowed to run, by adding certificates to the Trusted Publishers certificate store on local computers.

The options are:
- 0 - Disabled: (Default) Doesn't enforce PKI certification path validation before a given executable file is permitted to run.
- 1 - Enabled: Enforces the PKI certification path validation for a given executable file before it's permitted to run.

This policy supports the following:
- Supported value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *User Account Control: Only elevate executables that are signed and validated*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-useraccountcontrol-onlyelevateuiaccessapplicationsthatareinstalledinsecurelocations"></a>**LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
User Account Control: Only elevate UIAccess applications that are installed in secure locations

This policy setting controls, whether applications that request to run with a User Interface Accessibility (UIAccess) integrity level must reside in a secure location in the file system. Secure locations are limited to the following locations:

- .\Program Files\, including subfolders
- .\Windows\system32\
- .\Program Files (x86)\, including subfolders for 64-bit versions of Windows

> [!NOTE]
> Windows enforces a public key infrastructure (PKI) signature check on any interactive application that requests to run with a UIAccess integrity level regardless of the state of this security setting.

The options are:
- 0 - Disabled: An application runs with UIAccess integrity even if it doesn't reside in a secure location in the file system.
- 1 - Enabled: (Default) If an application resides in a secure location in the file system, it runs only with UIAccess integrity.

This policy supports the following:
- Supported value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *User Account Control: Only elevate UIAccess applications that are installed in secure locations*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-useraccountcontrol-runalladministratorsinadminapprovalmode"></a>**LocalPoliciesSecurityOptions/UserAccountControl_RunAllAdministratorsInAdminApprovalMode**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

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
- 0 - Disabled: Admin Approval Mode and all related UAC policy settings are disabled.

  > [!NOTE]
  > If this policy setting is disabled, Windows Security notifies you that the overall security of the operating system has been reduced.

- 1 - Enabled: (Default) Admin Approval Mode is enabled. This policy must be enabled and related UAC policy settings must also be set appropriately, to allow the built-in Administrator account and all other users who are members of the Administrators group to run in Admin Approval Mode.

This policy supports the following:
- Supported value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *User Account Control: Run all administrators in Admin Approval Mode*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-useraccountcontrol-switchtothesecuredesktopwhenpromptingforelevation"></a>**LocalPoliciesSecurityOptions/UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

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

This policy supports the following:
- Supported value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *User Account Control: Switch to the secure desktop when prompting for elevation*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-useraccountcontrol-useadminapprovalmode"></a>**LocalPoliciesSecurityOptions/UserAccountControl_UseAdminApprovalMode**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

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
-   GP Friendly name: *User Account Control: Admin Approval Mode for the Built-in Administrator account*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localpoliciessecurityoptions-useraccountcontrol-virtualizefileandregistrywritefailurestoperuserlocations"></a>**LocalPoliciesSecurityOptions/UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
User Account Control: Virtualize file and registry write failures to per-user locations

This policy setting controls whether application write failures are redirected to defined registry and file system locations. This policy setting mitigates applications that run as administrator and write run-time application data to %ProgramFiles%, %Windir%, %Windir%\system32, or HKLM\Software.

This policy supports the following:
- Supported value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--RegistryMapped-->
GP Info:
-   GP Friendly name: *User Account Control: Virtualize file and registry write failures to per-user locations*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - Disabled: Applications that write data to protected locations fail.
- 1 - Enabled: (Default) Application write failures are redirected at run time to defined user locations for both the file system and registry.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)

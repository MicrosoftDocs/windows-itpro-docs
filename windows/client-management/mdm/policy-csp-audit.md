---
title: Policy CSP - Audit
description: Learn how the Policy CSP - Audit setting causes an audit event to be generated when an account can't sign in to a computer because the account is locked out.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.localizationpriority: medium
ms.date: 09/27/2019
---

# Policy CSP - Audit

<hr/>

<!--Policies-->
## Audit policies  

<dl>
  <dd>
    <a href="#audit-accountlogonlogoff-auditaccountlockout">Audit/AccountLogonLogoff_AuditAccountLockout</a>
  </dd>
  <dd>
    <a href="#audit-accountlogonlogoff-auditgroupmembership">Audit/AccountLogonLogoff_AuditGroupMembership</a>
  </dd>
  <dd>
    <a href="#audit-accountlogonlogoff-auditipsecextendedmode">Audit/AccountLogonLogoff_AuditIPsecExtendedMode</a>
  </dd>
  <dd>
    <a href="#audit-accountlogonlogoff-auditipsecmainmode">Audit/AccountLogonLogoff_AuditIPsecMainMode</a>
  </dd>
  <dd>
    <a href="#audit-accountlogonlogoff-auditipsecquickmode">Audit/AccountLogonLogoff_AuditIPsecQuickMode</a>
  </dd>
  <dd>
    <a href="#audit-accountlogonlogoff-auditlogoff">Audit/AccountLogonLogoff_AuditLogoff</a>
  </dd>
  <dd>
    <a href="#audit-accountlogonlogoff-auditlogon">Audit/AccountLogonLogoff_AuditLogon</a>
  </dd>
  <dd>
    <a href="#audit-accountlogonlogoff-auditnetworkpolicyserver">Audit/AccountLogonLogoff_AuditNetworkPolicyServer</a>
  </dd>
  <dd>
    <a href="#audit-accountlogonlogoff-auditotherlogonlogoffevents">Audit/AccountLogonLogoff_AuditOtherLogonLogoffEvents</a>
  </dd>
  <dd>
    <a href="#audit-accountlogonlogoff-auditspeciallogon">Audit/AccountLogonLogoff_AuditSpecialLogon</a>
  </dd>
  <dd>
    <a href="#audit-accountlogonlogoff-audituserdeviceclaims">Audit/AccountLogonLogoff_AuditUserDeviceClaims</a>
  </dd>
  <dd>
    <a href="#audit-accountlogon-auditcredentialvalidation">Audit/AccountLogon_AuditCredentialValidation</a>
  </dd>
  <dd>
    <a href="#audit-accountlogon-auditkerberosauthenticationservice">Audit/AccountLogon_AuditKerberosAuthenticationService</a>
  </dd>
  <dd>
    <a href="#audit-accountlogon-auditkerberosserviceticketoperations">Audit/AccountLogon_AuditKerberosServiceTicketOperations</a>
  </dd>
  <dd>
    <a href="#audit-accountlogon-auditotheraccountlogonevents">Audit/AccountLogon_AuditOtherAccountLogonEvents</a>
  </dd>
  <dd>
    <a href="#audit-accountmanagement-auditapplicationgroupmanagement">Audit/AccountManagement_AuditApplicationGroupManagement</a>
  </dd>
  <dd>
    <a href="#audit-accountmanagement-auditcomputeraccountmanagement">Audit/AccountManagement_AuditComputerAccountManagement</a>
  </dd>
  <dd>
    <a href="#audit-accountmanagement-auditdistributiongroupmanagement">Audit/AccountManagement_AuditDistributionGroupManagement</a>
  </dd>
  <dd>
    <a href="#audit-accountmanagement-auditotheraccountmanagementevents">Audit/AccountManagement_AuditOtherAccountManagementEvents</a>
  </dd>
  <dd>
    <a href="#audit-accountmanagement-auditsecuritygroupmanagement">Audit/AccountManagement_AuditSecurityGroupManagement</a>
  </dd>
  <dd>
    <a href="#audit-accountmanagement-audituseraccountmanagement">Audit/AccountManagement_AuditUserAccountManagement</a>
  </dd>
  <dd>
    <a href="#audit-dsaccess-auditdetaileddirectoryservicereplication">Audit/DSAccess_AuditDetailedDirectoryServiceReplication</a>
  </dd>
  <dd>
    <a href="#audit-dsaccess-auditdirectoryserviceaccess">Audit/DSAccess_AuditDirectoryServiceAccess</a>
  </dd>
  <dd>
    <a href="#audit-dsaccess-auditdirectoryservicechanges">Audit/DSAccess_AuditDirectoryServiceChanges</a>
  </dd>
  <dd>
    <a href="#audit-dsaccess-auditdirectoryservicereplication">Audit/DSAccess_AuditDirectoryServiceReplication</a>
  </dd>
  <dd>
    <a href="#audit-detailedtracking-auditdpapiactivity">Audit/DetailedTracking_AuditDPAPIActivity</a>
  </dd>
  <dd>
    <a href="#audit-detailedtracking-auditpnpactivity">Audit/DetailedTracking_AuditPNPActivity</a>
  </dd>
  <dd>
    <a href="#audit-detailedtracking-auditprocesscreation">Audit/DetailedTracking_AuditProcessCreation</a>
  </dd>
  <dd>
    <a href="#audit-detailedtracking-auditprocesstermination">Audit/DetailedTracking_AuditProcessTermination</a>
  </dd>
  <dd>
    <a href="#audit-detailedtracking-auditrpcevents">Audit/DetailedTracking_AuditRPCEvents</a>
  </dd>
  <dd>
    <a href="#audit-detailedtracking-audittokenrightadjusted">Audit/DetailedTracking_AuditTokenRightAdjusted</a>
  </dd>
  <dd>
    <a href="#audit-objectaccess-auditapplicationgenerated">Audit/ObjectAccess_AuditApplicationGenerated</a>
  </dd>
  <dd>
    <a href="#audit-objectaccess-auditcentralaccesspolicystaging">Audit/ObjectAccess_AuditCentralAccessPolicyStaging</a>
  </dd>
  <dd>
    <a href="#audit-objectaccess-auditcertificationservices">Audit/ObjectAccess_AuditCertificationServices</a>
  </dd>
  <dd>
    <a href="#audit-objectaccess-auditdetailedfileshare">Audit/ObjectAccess_AuditDetailedFileShare</a>
  </dd>
  <dd>
    <a href="#audit-objectaccess-auditfileshare">Audit/ObjectAccess_AuditFileShare</a>
  </dd>
  <dd>
    <a href="#audit-objectaccess-auditfilesystem">Audit/ObjectAccess_AuditFileSystem</a>
  </dd>
  <dd>
    <a href="#audit-objectaccess-auditfilteringplatformconnection">Audit/ObjectAccess_AuditFilteringPlatformConnection</a>
  </dd>
  <dd>
    <a href="#audit-objectaccess-auditfilteringplatformpacketdrop">Audit/ObjectAccess_AuditFilteringPlatformPacketDrop</a>
  </dd>
  <dd>
    <a href="#audit-objectaccess-audithandlemanipulation">Audit/ObjectAccess_AuditHandleManipulation</a>
  </dd>
  <dd>
    <a href="#audit-objectaccess-auditkernelobject">Audit/ObjectAccess_AuditKernelObject</a>
  </dd>
  <dd>
    <a href="#audit-objectaccess-auditotherobjectaccessevents">Audit/ObjectAccess_AuditOtherObjectAccessEvents</a>
  </dd>
  <dd>
    <a href="#audit-objectaccess-auditregistry">Audit/ObjectAccess_AuditRegistry</a>
  </dd>
  <dd>
    <a href="#audit-objectaccess-auditremovablestorage">Audit/ObjectAccess_AuditRemovableStorage</a>
  </dd>
  <dd>
    <a href="#audit-objectaccess-auditsam">Audit/ObjectAccess_AuditSAM</a>
  </dd>
  <dd>
    <a href="#audit-policychange-auditauthenticationpolicychange">Audit/PolicyChange_AuditAuthenticationPolicyChange</a>
  </dd>
  <dd>
    <a href="#audit-policychange-auditauthorizationpolicychange">Audit/PolicyChange_AuditAuthorizationPolicyChange</a>
  </dd>
  <dd>
    <a href="#audit-policychange-auditfilteringplatformpolicychange">Audit/PolicyChange_AuditFilteringPlatformPolicyChange</a>
  </dd>
  <dd>
    <a href="#audit-policychange-auditmpssvcrulelevelpolicychange">Audit/PolicyChange_AuditMPSSVCRuleLevelPolicyChange</a>
  </dd>
  <dd>
    <a href="#audit-policychange-auditotherpolicychangeevents">Audit/PolicyChange_AuditOtherPolicyChangeEvents</a>
  </dd>
  <dd>
    <a href="#audit-policychange-auditpolicychange">Audit/PolicyChange_AuditPolicyChange</a>
  </dd>
  <dd>
    <a href="#audit-privilegeuse-auditnonsensitiveprivilegeuse">Audit/PrivilegeUse_AuditNonSensitivePrivilegeUse</a>
  </dd>
  <dd>
    <a href="#audit-privilegeuse-auditotherprivilegeuseevents">Audit/PrivilegeUse_AuditOtherPrivilegeUseEvents</a>
  </dd>
  <dd>
    <a href="#audit-privilegeuse-auditsensitiveprivilegeuse">Audit/PrivilegeUse_AuditSensitivePrivilegeUse</a>
  </dd>
  <dd>
    <a href="#audit-system-auditipsecdriver">Audit/System_AuditIPsecDriver</a>
  </dd>
  <dd>
    <a href="#audit-system-auditothersystemevents">Audit/System_AuditOtherSystemEvents</a>
  </dd>
  <dd>
    <a href="#audit-system-auditsecuritystatechange">Audit/System_AuditSecurityStateChange</a>
  </dd>
  <dd>
    <a href="#audit-system-auditsecuritysystemextension">Audit/System_AuditSecuritySystemExtension</a>
  </dd>
  <dd>
    <a href="#audit-system-auditsystemintegrity">Audit/System_AuditSystemIntegrity</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="audit-accountlogonlogoff-auditaccountlockout"></a>**Audit/AccountLogonLogoff_AuditAccountLockout**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by a failed attempt to sign in to an account that is locked out.

If you configure this policy setting, an audit event is generated when an account can't sign in to a computer because the account is locked out. Success audits record successful attempts and Failure audits record unsuccessful attempts.

Sign-in events are essential for understanding user activity and to detect potential attacks.

Volume: Low.

<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Account Lockout*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Logon/Logoff*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0—Off/None
- 1 (default)—Success 
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-accountlogonlogoff-auditgroupmembership"></a>**Audit/AccountLogonLogoff_AuditGroupMembership**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy allows you to audit the group membership information in the user's sign-in token. Events in this subcategory are generated on the computer on which a sign-in session is created. For an interactive sign in, the security audit event is generated on the computer that the user logged on to. For a network sign in, such as accessing a shared folder on the network, the security audit event is generated on the computer hosting the resource.

When this setting is configured, one or more security audit events are generated for each successful sign in. Enable the Audit Logon setting under Advanced Audit Policy Configuration\System Audit Policies\Logon/Logoff. Multiple events are generated if the group membership information can't fit in a single security audit event.

Volume: Low on a client computer. Medium on a domain controller or a network server.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Group Membership*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Logon/Logoff*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-accountlogonlogoff-auditipsecextendedmode"></a>**Audit/AccountLogonLogoff_AuditIPsecExtendedMode**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by Internet Key Exchange protocol (IKE) and Authenticated Internet Protocol (AuthIP) during Extended Mode negotiations.

If you configure this policy setting, an audit event is generated during an IPsec Extended Mode negotiation. Success audits record successful attempts and Failure audits record unsuccessful attempts.
If you don't configure this policy setting, no audit event is generated during an IPsec Extended Mode negotiation.

Volume: High.

<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit IPsec Extended Mode*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Logon/Logoff*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-accountlogonlogoff-auditipsecmainmode"></a>**Audit/AccountLogonLogoff_AuditIPsecMainMode**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by Internet Key Exchange protocol (IKE) and Authenticated Internet Protocol (AuthIP) during Main Mode negotiations.

If you configure this policy setting, an audit event is generated during an IPsec Main Mode negotiation. Success audits record successful attempts and Failure audits record unsuccessful attempts.
If you don't configure this policy setting, no audit event is generated during an IPsec Main Mode negotiation.

Volume: High.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit IPsec Main Mode*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Logon/Logoff*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-accountlogonlogoff-auditipsecquickmode"></a>**Audit/AccountLogonLogoff_AuditIPsecQuickMode**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by Internet Key Exchange protocol (IKE) and Authenticated Internet Protocol (AuthIP) during Quick Mode negotiations.

If you configure this policy setting, an audit event is generated during an IPsec Quick Mode negotiation. Success audits record successful attempts and Failure audits record unsuccessful attempts. If you don't configure this policy setting, no audit event is generated during an IPsec Quick Mode negotiation.

Volume: High.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit IPsec Quick Mode*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Logon/Logoff*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-accountlogonlogoff-auditlogoff"></a>**Audit/AccountLogonLogoff_AuditLogoff**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by the closing of a sign-in session. These events occur on the computer that was accessed. For an interactive sign out the security audit event is generated on the computer that the user account logged on to.

If you configure this policy setting, an audit event is generated when a sign-in session is closed. Success audits record successful attempts to close sessions and Failure audits record unsuccessful attempts to close sessions.
If you don't configure this policy setting, no audit event is generated when a sign-in session is closed.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Logoff*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Logon/Logoff*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0—Off/None
- 1 (default)—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-accountlogonlogoff-auditlogon"></a>**Audit/AccountLogonLogoff_AuditLogon**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by user account sign-in attempts on the computer.
Events in this subcategory are related to the creation of sign in sessions and occur on the computer that was accessed. For an interactive sign in, the security audit event is generated on the computer that the user account signed in to. For a network sign in, such as accessing a shared folder on the network, the security audit event is generated on the computer hosting the resource. 
The following events are included:  
- Successful sign in attempts.
- Failed sign in attempts.
- Sign-in attempts using explicit credentials. This event is generated when a process attempts to sign in an account by explicitly specifying that account’s credentials. This process most commonly occurs in batch sign-in configurations, such as scheduled tasks or when using the RUNAS command.
- Security identifiers (SIDs) were filtered and not allowed to sign in.

Volume: Low on a client computer. Medium on a domain controller or a network server.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Logon*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Logon/Logoff*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0—Off/None
- 1 (default)—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-accountlogonlogoff-auditnetworkpolicyserver"></a>**Audit/AccountLogonLogoff_AuditNetworkPolicyServer**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by RADIUS (IAS) and Network Access Protection (NAP) user access requests. These requests can be Grant, Deny, Discard, Quarantine, Lock, and Unlock.
If you configure this policy setting, an audit event is generated for each IAS and NAP user access request. Success audits record successful user access requests and Failure audits record unsuccessful attempts.
If you don't configure this policy settings, IAS and NAP user access requests aren't audited.

Volume: Medium or High on NPS and IAS server. No volume on other computers.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Network Policy Server*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Logon/Logoff*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0—Off/None
- 1—Success
- 2—Failure
- 3 (default)—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-accountlogonlogoff-auditotherlogonlogoffevents"></a>**Audit/AccountLogonLogoff_AuditOtherLogonLogoffEvents**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit other logon/logoff-related events that aren't covered in the “Logon/Logoff” policy setting, such as the following:  
- Terminal Services session disconnections.
- New Terminal Services sessions.
- Locking and unlocking a workstation.
- Invoking a screen saver.
- Dismissal of a screen saver.
- Detection of a Kerberos replay attack, in which a Kerberos request was received twice with identical information. This condition could be caused by network misconfiguration.
- Access to a wireless network granted to a user or computer account.
- Access to a wired 802.1x network granted to a user or computer account.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Other Logon Logoff Events*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Logon/Logoff*

<!--/DbMapped-->
<!--SupportedValues-->
The following values are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-accountlogonlogoff-auditspeciallogon"></a>**Audit/AccountLogonLogoff_AuditSpecialLogon**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by special sign ins, such as:  
- The use of a special sign in, which is a sign in that has administrator-equivalent privileges and can be used to elevate a process to a higher level.
- A sign in by a member of a Special Group. Special Groups enable you to audit events generated when a member of a certain group has logged on to your network. You can configure a list of group security identifiers (SIDs) in the registry. If any of those SIDs are added to a token during sign in and the subcategory is enabled, an event is logged. For more information about this feature, see [Audit Special Logon](/windows/security/threat-protection/auditing/audit-special-logon).

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Special Logon*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Logon/Logoff*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0—Off/None
- 1 (default)—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-accountlogonlogoff-audituserdeviceclaims"></a>**Audit/AccountLogonLogoff_AuditUserDeviceClaims**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy allows you to audit user and device claims information in the user's sign-in token. Events in this subcategory are generated on the computer on which a sign-in session is created. For an interactive sign in, the security audit event is generated on the computer that the user signed in to. For a network sign in, such as accessing a shared folder on the network, the security audit event is generated on the computer hosting the resource.

User claims are added to a sign-in token when claims are included with a user's account attributes in Active Directory. Device claims are added to the sign-in token when claims are included with a device's computer account attributes in Active Directory. In addition, compound identity must be enabled for the domain and on the computer where the user logged on.

When this setting is configured, one or more security audit events are generated for each successful sign in. You must also enable the Audit Logon setting under Advanced Audit Policy Configuration\System Audit Policies\Logon/Logoff. Multiple events are generated if the user and device claims information can't fit in a single security audit event.

Volume: Low on a client computer. Medium on a domain controller or a network server.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit User Device Claims*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Logon/Logoff*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-accountlogon-auditcredentialvalidation"></a>**Audit/AccountLogon_AuditCredentialValidation**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by validation tests on user account sign-in credentials.

Events in this subcategory occur only on the computer that is authoritative for those credentials. For domain accounts, the domain controller is authoritative. For local accounts, the local computer is authoritative.

Volume: High on domain controllers.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Credential Validation*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Account Logon*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-accountlogon-auditkerberosauthenticationservice"></a>**Audit/AccountLogon_AuditKerberosAuthenticationService**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by Kerberos authentication ticket-granting ticket (TGT) requests.

If you configure this policy setting, an audit event is generated after a Kerberos authentication TGT request. Success audits record successful requests and Failure audits record unsuccessful requests.
If you don't configure this policy setting, no audit event is generated after a Kerberos authentication TGT request.

Volume: High on Kerberos Key Distribution Center servers.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Kerberos Authentication Service*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Account Logon*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-accountlogon-auditkerberosserviceticketoperations"></a>**Audit/AccountLogon_AuditKerberosServiceTicketOperations**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by Kerberos authentication ticket-granting ticket (TGT) requests submitted for user accounts.

If you configure this policy setting, an audit event is generated after a Kerberos authentication TGT is requested for a user account. Success audits record successful requests and Failure audits record unsuccessful requests.
If you don't configure this policy setting, no audit event is generated after a Kerberos authentication TGT is request for a user account.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Kerberos Service Ticket Operations*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Account Logon*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-accountlogon-auditotheraccountlogonevents"></a>**Audit/AccountLogon_AuditOtherAccountLogonEvents**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by responses to credential requests submitted for a user account sign in that aren't credential validation or Kerberos tickets.

Currently, there are no events in this subcategory.

<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Other Account Logon Events*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Account Logon*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-accountmanagement-auditapplicationgroupmanagement"></a>**Audit/AccountManagement_AuditApplicationGroupManagement**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by changes to application groups as follows:  
- Application group is created, changed, or deleted.
- Member is added or removed from an application group.

If you configure this policy setting, an audit event is generated when an attempt to change an application group is made. Success audits record successful attempts and Failure audits record unsuccessful attempts.
If you don't configure this policy setting, no audit event is generated when an application group changes.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Application Group Management*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Account Management*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-accountmanagement-auditcomputeraccountmanagement"></a>**Audit/AccountManagement_AuditComputerAccountManagement**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by changes to computer accounts such as when a computer account is created, changed, or deleted.

If you configure this policy setting, an audit event is generated when an attempt to change a computer account is made. Success audits record successful attempts and Failure audits record unsuccessful attempts.
If you don't configure this policy setting, no audit event is generated when a computer account changes.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Computer Account Management*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Account Management*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-accountmanagement-auditdistributiongroupmanagement"></a>**Audit/AccountManagement_AuditDistributionGroupManagement**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by changes to distribution groups as follows:  
- Distribution group is created, changed, or deleted.
- Member is added or removed from a distribution group.
- Distribution group type is changed.

If you configure this policy setting, an audit event is generated when an attempt to change a distribution group is made. Success audits record successful attempts and Failure audits record unsuccessful attempts.
If you don't configure this policy setting, no audit event is generated when a distribution group changes.

> [!Note]
> Events in this subcategory are logged only on domain controllers.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Distribution Group Management*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Account Management*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-accountmanagement-auditotheraccountmanagementevents"></a>**Audit/AccountManagement_AuditOtherAccountManagementEvents**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by other user account changes that aren't covered in this category, such as:  
- The password hash of a user account was accessed. This change happens during an Active Directory Management Tool password migration.
- The Password Policy Checking API was called. Calls to this function can be part of an attack when a malicious application tests the policy to reduce the number of attempts during a password dictionary attack.
- Changes to the Default Domain Group Policy under the following Group Policy paths:
Computer Configuration\Windows Settings\Security Settings\Account Policies\Password Policy
Computer Configuration\Windows Settings\Security Settings\Account Policies\Account Lockout Policy.

> [!Note]
> The security audit event is logged when the policy setting is applied. It doesn't occur at the time when the settings are modified.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Other Account Management Events*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Account Management*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-accountmanagement-auditsecuritygroupmanagement"></a>**Audit/AccountManagement_AuditSecurityGroupManagement**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by changes to security groups, such as:  
- Security group is created, changed, or deleted.
- Member is added or removed from a security group.
- Group type is changed.

If you configure this policy setting, an audit event is generated when an attempt to change a security group is made. Success audits record successful attempts and Failure audits record unsuccessful attempts.
If you don't configure this policy setting, no audit event is generated when a security group changes.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Security Group Management*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Account Management*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0—Off/None
- 1 (default)—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-accountmanagement-audituseraccountmanagement"></a>**Audit/AccountManagement_AuditUserAccountManagement**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit changes to user accounts. 
The events included are as follows:  
- A user account is created, changed, deleted; renamed, disabled, enabled, locked out, or unlocked.
- A user account’s password is set or changed.
- A security identifier (SID) is added to the SID History of a user account.
- The Directory Services Restore Mode password is configured.
- Permissions on administrative user accounts are changed.
- Credential Manager credentials are backed up or restored.

If you configure this policy setting, an audit event is generated when an attempt to change a user account is made. Success audits record successful attempts and Failure audits record unsuccessful attempts. 
If you don't configure this policy setting, no audit event is generated when a user account changes.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit User Account Management*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Account Management*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0—Off/None
- 1 (default)—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-dsaccess-auditdetaileddirectoryservicereplication"></a>**Audit/DSAccess_AuditDetailedDirectoryServiceReplication**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by detailed Active Directory Domain Services (AD DS) replication between domain controllers.

Volume: High.

<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Detailed Directory Service Replication*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/DS Access*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-dsaccess-auditdirectoryserviceaccess"></a>**Audit/DSAccess_AuditDirectoryServiceAccess**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated when an Active Directory Domain Services (AD DS) object is accessed. 

Only AD DS objects with a matching system access control list (SACL) are logged.

Events in this subcategory are similar to the Directory Service Access events available in previous versions of Windows.

Volume: High on domain controllers. None on client computers.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Directory Service Access*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/DS Access*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-dsaccess-auditdirectoryservicechanges"></a>**Audit/DSAccess_AuditDirectoryServiceChanges**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by changes to objects in Active Directory Domain Services (AD DS). Events are logged when an object is created, deleted, modified, moved, or undeleted.

When possible, events logged in this subcategory indicate the old and new values of the object’s properties.

Events in this subcategory are logged only on domain controllers, and only objects in AD DS with a matching system access control list (SACL) are logged.

> [!Note]
> Actions on some objects and properties don't cause audit events to be generated due to settings on the object class in the schema.

If you configure this policy setting, an audit event is generated when an attempt to change an object in AD DS is made. Success audits record successful attempts, however unsuccessful attempts are NOT recorded.
If you don't configure this policy setting, no audit event is generated when an attempt to change an object in AD DS object is made.

Volume: High on domain controllers only.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Directory Service Changes*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/DS Access*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-dsaccess-auditdirectoryservicereplication"></a>**Audit/DSAccess_AuditDirectoryServiceReplication**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit replication between two Active Directory Domain Services (AD DS) domain controllers.

If you configure this policy setting, an audit event is generated during AD DS replication. Success audits record successful replication and Failure audits record unsuccessful replication.
If you don't configure this policy setting, no audit event is generated during AD DS replication.

>[!Note]
> Events in this subcategory are logged only on domain controllers.

Volume: Medium on domain controllers. None on client computers.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Directory Service Replication*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/DS Access*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-detailedtracking-auditdpapiactivity"></a>**Audit/DetailedTracking_AuditDPAPIActivity**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated when encryption or decryption requests are made to the Data Protection application interface (DPAPI). DPAPI is used to protect secret information such as stored password and key information. For more information about DPAPI, see [How to use Data Protection](/dotnet/standard/security/how-to-use-data-protection).

If you configure this policy setting, an audit event is generated when an encryption or decryption request is made to DPAPI. Success audits record successful requests and Failure audits record unsuccessful requests.
If you don't configure this policy setting, no audit event is generated when an encryption or decryption request is made to DPAPI.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit DPAPI Activity*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Detailed Tracking*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-detailedtracking-auditpnpactivity"></a>**Audit/DetailedTracking_AuditPNPActivity**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit when plug and play detects an external device.

If you configure this policy setting, an audit event is generated whenever plug and play detects an external device. Only Success audits are recorded for this category.
If you don't configure this policy setting, no audit event is generated when an external device is detected by plug and play.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit PNP Activity*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Detailed Tracking*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-detailedtracking-auditprocesscreation"></a>**Audit/DetailedTracking_AuditProcessCreation**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated when a process is created or starts. The name of the application or user that created the process is also audited.

If you configure this policy setting, an audit event is generated when a process is created. Success audits record successful attempts and Failure audits record unsuccessful attempts.
If you don't configure this policy setting, no audit event is generated when a process is created.

Volume: Depends on how the computer is used.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Process Creation*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Detailed Tracking*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-detailedtracking-auditprocesstermination"></a>**Audit/DetailedTracking_AuditProcessTermination**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated when a process ends. 

If you configure this policy setting, an audit event is generated when a process ends. Success audits record successful attempts and Failure audits record unsuccessful attempts.
If you don't configure this policy setting, no audit event is generated when a process ends.

Volume: Depends on how the computer is used.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Process Termination*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Detailed Tracking*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-detailedtracking-auditrpcevents"></a>**Audit/DetailedTracking_AuditRPCEvents**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit inbound remote procedure call (RPC) connections.

If you configure this policy setting, an audit event is generated when a remote RPC connection is attempted. Success audits record successful attempts and Failure audits record unsuccessful attempts.
If you don't configure this policy setting, no audit event is generated when a remote RPC connection is attempted.

Volume: High on RPC servers.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit RPC Events*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Detailed Tracking*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-detailedtracking-audittokenrightadjusted"></a>**Audit/DetailedTracking_AuditTokenRightAdjusted**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by adjusting the privileges of a token.

Volume: High.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Token Right Adjusted*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Detailed Tracking*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-objectaccess-auditapplicationgenerated"></a>**Audit/ObjectAccess_AuditApplicationGenerated**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit applications that generate events using the Windows Auditing application programming interfaces (APIs). Applications designed to use the Windows Auditing API use this subcategory to log auditing events related to their function.
Events in this subcategory include:  
- Creation of an application client context.
- Deletion of an application client context.
- Initialization of an application client context.
- Other application operations using the Windows Auditing APIs.

Volume: Depends on the applications that are generating them.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Application Generated*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Object Access*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-objectaccess-auditcentralaccesspolicystaging"></a>**Audit/ObjectAccess_AuditCentralAccessPolicyStaging**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit access requests where the permission granted or denied by a proposed policy differs from the current central access policy on an object.

If you configure this policy setting, an audit event is generated each time a user accesses an object and the permission granted by the current central access policy on the object differs from that of the permission granted by the proposed policy. The resulting audit event will be generated as follows:  
1. Success audits, when configured, records access attempts when the current central access policy grants access but the proposed policy denies access.
2. Failure audits when configured records access attempts when:  
   - The current central access policy doesn't grant access but the proposed policy grants access.
   - A principal requests the maximum access rights they're allowed and the access rights granted by the current central access policy are different than the access rights granted by the proposed policy.

Volume: Potentially high on a file server when the proposed policy differs significantly from the current central access policy.

<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Central Access Policy Staging*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Object Access*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-objectaccess-auditcertificationservices"></a>**Audit/ObjectAccess_AuditCertificationServices**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit Active Directory Certificate Services (AD CS) operations.
AD CS operations include:  

- AD CS startup/shutdown/backup/restore.
- Changes to the certificate revocation list (CRL).
- New certificate requests.
- Issuing of a certificate.
- Revocation of a certificate.
- Changes to the Certificate Manager settings for AD CS.
- Changes in the configuration of AD CS.
- Changes to a Certificate Services template.
- Importing of a certificate.
- Publishing of a certification authority certificate is to Active Directory Domain Services.
- Changes to the security permissions for AD CS.
- Archival of a key.
- Importing of a key.
- Retrieval of a key.
- Starting of Online Certificate Status Protocol (OCSP) Responder Service.
- Stopping of Online Certificate Status Protocol (OCSP) Responder Service.

Volume: Medium or Low on computers running Active Directory Certificate Services.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Certification Services*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Object Access*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-objectaccess-auditdetailedfileshare"></a>**Audit/ObjectAccess_AuditDetailedFileShare**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit attempts to access files and folders on a shared folder. The Detailed File Share setting logs an event every time a file or folder is accessed, whereas the File Share setting only records one event for any connection established between a client and file share.  Detailed File Share audit events include detailed information about the permissions or other criteria used to grant or deny access.

If you configure this policy setting, an audit event is generated when an attempt is made to access a file or folder on a share. The administrator can specify whether to audit only successes, only failures, or both successes and failures.

> [!Note]
> There are no system access control lists (SACLs) for shared folders. If this policy setting is enabled, access to all shared files and folders on the system is audited.

Volume: High on a file server or domain controller because of SYSVOL network access required by Group Policy.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Detailed File Share*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Object Access*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-objectaccess-auditfileshare"></a>**Audit/ObjectAccess_AuditFileShare**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit attempts to access a shared folder.

If you configure this policy setting, an audit event is generated when an attempt is made to access a shared folder. If this policy setting is defined, the administrator can specify whether to audit only successes, only failures, or both successes and failures.

> [!Note]
> There are no system access control lists (SACLs) for shared folders. If this policy setting is enabled, access to all shared folders on the system is audited.

Volume: High on a file server or domain controller because of SYSVOL network access required by Group Policy.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit File Share*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Object Access*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-objectaccess-auditfilesystem"></a>**Audit/ObjectAccess_AuditFileSystem**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit user attempts to access file system objects. A security audit event is generated only for objects that have system access control lists (SACL) specified, and only if the type of access requested, such as Write, Read, or Modify and the account making the request match the settings in the SACL. For more information about enabling object access auditing, see [Apply a basic audit policy on a file or folder](/windows/security/threat-protection/auditing/apply-a-basic-audit-policy-on-a-file-or-folder).

If you configure this policy setting, an audit event is generated each time an account accesses a file system object with a matching SACL. Success audits record successful attempts and Failure audits record unsuccessful attempts.
If you don't configure this policy setting, no audit event is generated when an account accesses a file system object with a matching SACL.

> [!Note]
> You can set a SACL on a file system object using the Security tab in that object's Properties dialog box.

Volume: Depends on how the file system SACLs are configured.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit File System*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Object Access*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-objectaccess-auditfilteringplatformconnection"></a>**Audit/ObjectAccess_AuditFilteringPlatformConnection**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit connections that are allowed or blocked by the Windows Filtering Platform (WFP). 
The following events are included:  
- The Windows Firewall Service blocks an application from accepting incoming connections on the network.
- The WFP allows a connection.
- The WFP blocks a connection.
- The WFP permits a bind to a local port.
- The WFP blocks a bind to a local port.
- The WFP allows a connection.
- The WFP blocks a connection.
- The WFP permits an application or service to listen on a port for incoming connections.
- The WFP blocks an application or service to listen on a port for incoming connections.

If you configure this policy setting, an audit event is generated when connections are allowed or blocked by the WFP. Success audits record events generated when connections are allowed and Failure audits record events generated when connections are blocked.

If you don't configure this policy setting, no audit event is generated when connected are allowed or blocked by the WFP.

Volume: High.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Filtering Platform Connection*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Object Access*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-objectaccess-auditfilteringplatformpacketdrop"></a>**Audit/ObjectAccess_AuditFilteringPlatformPacketDrop**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit packets that are dropped by Windows Filtering Platform (WFP).

Volume: High.

<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Filtering Platform Packet Drop*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Object Access*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-objectaccess-audithandlemanipulation"></a>**Audit/ObjectAccess_AuditHandleManipulation**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated when a handle to an object is opened or closed. Only objects with a matching system access control list (SACL) generate security audit events.

If you configure this policy setting, an audit event is generated when a handle is manipulated. Success audits record successful attempts and Failure audits record unsuccessful attempts.
If you don't configure this policy setting, no audit event is generated when a handle is manipulated.

> [!Note]
> Events in this subcategory generate events only for object types where the corresponding Object Access subcategory is enabled. For example, if File system object access is enabled, handle manipulation security audit events are generated. If Registry object access isn't enabled, handle manipulation security audit events will not be generated.

Volume: Depends on how SACLs are configured.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Handle Manipulation*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Object Access*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-objectaccess-auditkernelobject"></a>**Audit/ObjectAccess_AuditKernelObject**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit attempts to access the kernel, which includes mutexes and semaphores. 
Only kernel objects with a matching system access control list (SACL) generate security audit events.

> [!Note]
> The Audit: Audit the access of global system objects policy setting controls the default SACL of kernel objects.

Volume: High if auditing access of global system objects is enabled.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Kernel Object*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Object Access*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-objectaccess-auditotherobjectaccessevents"></a>**Audit/ObjectAccess_AuditOtherObjectAccessEvents**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by the management of task scheduler jobs or COM+ objects. 
For scheduler jobs, the following are audited:  
- Job created.
- Job deleted.
- Job enabled.
- Job disabled.
- Job updated.

For COM+ objects, the following are audited:  
- Catalog object added.
- Catalog object updated.
- Catalog object deleted.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Other Object Access Events*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Object Access*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-objectaccess-auditregistry"></a>**Audit/ObjectAccess_AuditRegistry**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit attempts to access registry objects. A security audit event is generated only for objects that have system access control lists (SACLs) specified, and only if the type of access requested, such as Read, Write, or Modify, and the account making the request match the settings in the SACL.

If you configure this policy setting, an audit event is generated each time an account accesses a registry object with a matching SACL. Success audits record successful attempts and Failure audits record unsuccessful attempts.
If you don't configure this policy setting, no audit event is generated when an account accesses a registry object with a matching SACL.

> [!Note]
> You can set a SACL on a registry object using the Permissions dialog box.

Volume: Depends on how registry SACLs are configured.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Registry*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Object Access*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-objectaccess-auditremovablestorage"></a>**Audit/ObjectAccess_AuditRemovableStorage**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit user attempts to access file system objects on a removable storage device. A security audit event is generated only for all objects for all types of access requested.

If you configure this policy setting, an audit event is generated each time an account accesses a file system object on a removable storage. Success audits record successful attempts and Failure audits record unsuccessful attempts.

If you don't configure this policy setting, no audit event is generated when an account accesses a file system object on a removable storage.

<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Removable Storage*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Object Access*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-objectaccess-auditsam"></a>**Audit/ObjectAccess_AuditSAM**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by attempts to access to Security Accounts Manager (SAM) objects.
SAM objects include:  
- SAM_ALIAS -- A local group.
- SAM_GROUP -- A group that isn't a local group.
- SAM_USER – A user account.
- SAM_DOMAIN – A domain.
- SAM_SERVER – A computer account.

If you configure this policy setting, an audit event is generated when an attempt to access a kernel object is made. Success audits record successful attempts and Failure audits record unsuccessful attempts.
If you don't configure this policy setting, no audit event is generated when an attempt to access a kernel object is made.

> [!Note]
> Only the System Access Control List (SACL) for SAM_SERVER can be modified.

Volume: High on domain controllers. For more information about reducing the number of events generated by auditing the access of global system objects, see [Audit the access of global system objects](/windows/security/threat-protection/security-policy-settings/audit-audit-the-access-of-global-system-objects).

<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit SAM*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Object Access*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-policychange-auditauthenticationpolicychange"></a>**Audit/PolicyChange_AuditAuthenticationPolicyChange**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by changes to the authentication policy, such as:  
- Creation of forest and domain trusts.
- Modification of forest and domain trusts.
- Removal of forest and domain trusts.
- Changes to Kerberos policy under Computer Configuration\Windows Settings\Security Settings\Account Policies\Kerberos Policy.
- Granting of any of the following user rights to a user or group:  
    - Access This Computer From the Network.
    - Allow Logon Locally.
    - Allow Logon Through Terminal Services.
    - Logon as a Batch Job.
    - Logon a Service.
- Namespace collision. For example, when a new trust has the same name as an existing namespace name.

If you configure this policy setting, an audit event is generated when an attempt to change the authentication policy is made. Success audits record successful attempts and Failure audits record unsuccessful attempts.
If you don't configure this policy setting, no audit event is generated when the authentication policy is changed.

> [!Note]
> The security audit event is logged when the group policy is applied. It doesn't occur at the time when the settings are modified.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Authentication Policy Change*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Policy Change*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0—Off/None
- 1 (default)—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-policychange-auditauthorizationpolicychange"></a>**Audit/PolicyChange_AuditAuthorizationPolicyChange**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by changes to the authorization policy, such as:  
- Assignment of user rights (privileges), such as SeCreateTokenPrivilege, that aren't audited through the “Authentication Policy Change” subcategory.
- Removal of user rights (privileges), such as SeCreateTokenPrivilege, that aren't audited through the “Authentication Policy Change” subcategory.
- Changes in the Encrypted File System (EFS) policy.
- Changes to the Resource attributes of an object.
- Changes to the Central Access Policy (CAP) applied to an object.

If you configure this policy setting, an audit event is generated when an attempt to change the authorization policy is made. Success audits record successful attempts and Failure audits record unsuccessful attempts.
If you don't configure this policy setting, no audit event is generated when the authorization policy changes.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Authorization Policy Change*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Policy Change*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-policychange-auditfilteringplatformpolicychange"></a>**Audit/PolicyChange_AuditFilteringPlatformPolicyChange**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by changes to the Windows Filtering Platform (WFP), such as: 
- IPsec services status.
- Changes to IPsec policy settings.
- Changes to Windows Firewall policy settings.
- Changes to WFP providers and engine.

If you configure this policy setting, an audit event is generated when a change to the WFP is attempted. Success audits record successful attempts and Failure audits record unsuccessful attempts.
If you don't configure this policy setting, no audit event is generated when a change occurs to the WFP.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Filtering Platform Policy Change*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Policy Change*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-policychange-auditmpssvcrulelevelpolicychange"></a>**Audit/PolicyChange_AuditMPSSVCRuleLevelPolicyChange**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by changes in policy rules used by the Microsoft Protection Service (MPSSVC). This service is used by Windows Firewall. 
Events include:  
- Reporting of active policies when Windows Firewall service starts.
- Changes to Windows Firewall rules.
- Changes to Windows Firewall exception list.
- Changes to Windows Firewall settings.
- Rules ignored or not applied by Windows Firewall Service.
- Changes to Windows Firewall Group Policy settings.

If you configure this policy setting, an audit event is generated by attempts to change policy rules used by the MPSSVC. Success audits record successful attempts and Failure audits record unsuccessful attempts.
If you don't configure this policy setting, no audit event is generated by changes in policy rules used by the MPSSVC.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit MPSSVC Rule Level Policy Change*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Policy Change*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-policychange-auditotherpolicychangeevents"></a>**Audit/PolicyChange_AuditOtherPolicyChangeEvents**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by other security policy changes that aren't audited in the policy change category, such as:  
- Trusted Platform Module (TPM) configuration changes.
- Kernel-mode cryptographic self tests.
- Cryptographic provider operations.
- Cryptographic context operations or modifications.
- Applied Central Access Policies (CAPs) changes.
- Boot Configuration Data (BCD) modifications.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Other Policy Change Events*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Policy Change*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-policychange-auditpolicychange"></a>**Audit/PolicyChange_AuditPolicyChange**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit changes in the security audit policy settings, such as:  
- Settings permissions and audit settings on the Audit Policy object.
- Changes to the system audit policy.
- Registration of security event sources.
- De-registration of security event sources.
- Changes to the per-user audit settings.
- Changes to the value of CrashOnAuditFail.
- Changes to the system access control list on a file system or registry object.
- Changes to the Special Groups list.

> [!Note]
> System access control list (SACL) change auditing is done when a SACL for an object changes and the policy change category is enabled. Discretionary access control list (DACL) and ownership changes are audited when object access auditing is enabled and the object's SACL is configured for auditing of DACL/Owner change.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Policy Change*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Policy Change*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0—Off/None
- 1 (default)—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-privilegeuse-auditnonsensitiveprivilegeuse"></a>**Audit/PrivilegeUse_AuditNonSensitivePrivilegeUse**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by the use of non-sensitive privileges (user rights).
The following privileges are non-sensitive:  
- Access Credential Manager as a trusted caller.
- Access this computer from the network.
- Add workstations to domain.
- Adjust memory quotas for a process.
- Allow Logon Locally.
- Allow Logon Through Terminal Services.
- Bypass traverse checking.
- Change the system time.
- Create a pagefile.
- Create global objects.
- Create permanent shared objects.
- Create symbolic links.
- Deny access this computer from the network.
- Deny log on as a batch job.
- Deny log on as a service.
- Deny log on locally.
- Deny log on through Terminal Services.
- Force shutdown from a remote system.
- Increase a process working set.
- Increase scheduling priority.
- Lock pages in memory.
- Log on as a batch job.
- Log on as a service.
- Modify an object label.
- Perform volume maintenance tasks.
- Profile single process.
- Profile system performance.
- Remove computer from docking station.
- Shut down the system.
- Synchronize directory service data.

If you configure this policy setting, an audit event is generated when a non-sensitive privilege is called. Success audits record successful calls and Failure audits record unsuccessful calls.
If you don't configure this policy setting, no audit event is generated when a non-sensitive privilege is called.

Volume: Very High.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Non Sensitive Privilege Use*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Privilege Use*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-privilegeuse-auditotherprivilegeuseevents"></a>**Audit/PrivilegeUse_AuditOtherPrivilegeUseEvents**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
Not used.

<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Other Privilege Use Events*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Privilege Use*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-privilegeuse-auditsensitiveprivilegeuse"></a>**Audit/PrivilegeUse_AuditSensitivePrivilegeUse**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated when sensitive privileges (user rights) are used, such as:  
- A privileged service is called.
- One of the following privileges is called:  
    - Act as part of the operating system.
    - Back up files and directories.
    - Create a token object.
    - Debug programs.
    - Enable computer and user accounts to be trusted for delegation.
    - Generate security audits.
    - Impersonate a client after authentication.
    - Load and unload device drivers.
    - Manage auditing and security log.
    - Modify firmware environment values.
    - Replace a process-level token.
    - Restore files and directories.
    - Take ownership of files or other objects.

If you configure this policy setting, an audit event is generated when sensitive privilege requests are made. Success audits record successful requests and Failure audits record unsuccessful requests.
If you don't configure this policy setting, no audit event is generated when sensitive privilege requests are made.

Volume: High.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Sensitive Privilege Use*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/Privilege Use*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-system-auditipsecdriver"></a>**Audit/System_AuditIPsecDriver**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by the IPsec filter driver, such as:  
- Startup and shutdown of the IPsec services.
- Network packets dropped due to integrity check failure.
- Network packets dropped due to replay check failure.
- Network packets dropped due to being in plaintext.
- Network packets received with incorrect Security Parameter Index (SPI). This incorrect value may indicate that either the network card isn't working correctly or the driver needs to be updated.
- Inability to process IPsec filters.

If you configure this policy setting, an audit event is generated on an IPsec filter driver operation. Success audits record successful attempts and Failure audits record unsuccessful attempts.
If you don't configure this policy setting, no audit event is generated on an IPSec filter driver operation.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit IPsec Driver*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/System*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-system-auditothersystemevents"></a>**Audit/System_AuditOtherSystemEvents**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit any of the following events:  
- Startup and shutdown of the Windows Firewall service and driver.
- Security policy processing by the Windows Firewall Service.
- Cryptography key file and migration operations.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Other System Events*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/System*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0—Off/None
- 1—Success
- 2—Failure
- 3 (default)—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-system-auditsecuritystatechange"></a>**Audit/System_AuditSecurityStateChange**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events generated by changes in the security state of the computer, such as the following events:  
- Startup and shutdown of the computer.
- Change of system time.
- Recovering the system from CrashOnAuditFail, which is logged after a system restarts when the security event log is full and the CrashOnAuditFail registry entry is configured.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Security State Change*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/System*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0—Off/None
- 1 (default)—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-system-auditsecuritysystemextension"></a>**Audit/System_AuditSecuritySystemExtension**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events related to security system extensions or services, such as the following:  
- A security system extension, such as an authentication, notification, or security package is loaded and is registered with the Local Security Authority (LSA). It's used to authenticate sign-in attempts, submit sign-in requests, and any account or password changes. Examples of security system extensions are Kerberos and NTLM.
- A service is installed and registered with the Service Control Manager. The audit log contains information about the service name, binary, type, start type, and service account.

If you configure this policy setting, an audit event is generated when an attempt is made to load a security system extension. Success audits record successful attempts and Failure audits record unsuccessful attempts.
If you don't configure this policy setting, no audit event is generated when an attempt is made to load a security system extension.

Volume: Low. Security system extension events are generated more often on a domain controller than on client computers or member servers.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit Security System Extension*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/System*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 (default)—Off/None
- 1—Success
- 2—Failure
- 3—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="audit-system-auditsystemintegrity"></a>**Audit/System_AuditSystemIntegrity**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows you to audit events that violate the integrity of the security subsystem, such as:  
- Events that couldn't be written to the event log because of a problem with the auditing system.
- A process that uses a local procedure call (LPC) port that isn't valid in an attempt to impersonate a client by replying, reading, or writing to or from a client address space.
- The detection of a Remote Procedure Call (RPC) that compromises system integrity.
- The detection of a hash value of an executable file that isn't valid as determined by Code Integrity.
- Cryptographic operations that compromise system integrity.

Volume: Low.
<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Audit System Integrity*
-   GP path: *Windows Settings/Security Settings/Advanced Audit Policy Configuration/System Audit Policies/System*

<!--/DbMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0—Off/None
- 1—Success
- 2—Failure
- 3 (default)—Success+Failure

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>



<!--/Policies-->
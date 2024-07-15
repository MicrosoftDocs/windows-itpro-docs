---
title: What's new in Windows 10 Enterprise LTSC 2015
manager: aaroncz
ms.author: mstewart
description: New and updated IT pro content about new features in Windows 10 Enterprise LTSC 2015 (also known as Windows 10 Enterprise 2015 LTSB).
ms.service: windows-client
author: mestew
ms.localizationpriority: low
ms.topic: reference
ms.subservice: itpro-fundamentals
ms.date: 07/09/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/" target="_blank">Windows 10 Enterprise LTSC 2015</a>
---

# What's new in Windows 10 Enterprise LTSC 2015

This article lists new and updated features and content that are of interest to IT pros for Windows 10 Enterprise LTSC 2015 (LTSB). For a brief description of the LTSC servicing channel, see [Windows 10 Enterprise LTSC](overview.md).

> [!NOTE]
> Windows 10 Enterprise LTSC 2015 was first available on July 29, 2015. Features in Windows 10 Enterprise LTSC 2015 are equivalent to Windows 10, version 1507.

## Deployment

### Provisioning devices using Windows Imaging and Configuration Designer (ICD)

With Windows 10, you can create provisioning packages that let you quickly and efficiently configure a device without having to install a new image. An IT administrator who uses Windows Provisioning can easily specify the configuration and settings required to enroll devices into management using a wizard-driven user interface, and then apply this configuration to target devices in a matter of minutes. It's best suited for small- to medium-sized businesses with deployments that range from tens to a few hundred computers.

[Learn more about provisioning in Windows 10](/windows/configuration/provisioning-packages/provisioning-packages)

## Security

### AppLocker

AppLocker was available for Windows 8.1, and is improved with Windows 10. See [Requirements to use AppLocker](/windows/security/application-security/application-control/windows-defender-application-control/applocker/requirements-to-use-applocker) for a list of operating system requirements.

Enhancements to AppLocker in Windows 10 include:

-   A new parameter was added to the [New-AppLockerPolicy](/powershell/module/applocker/new-applockerpolicy) Windows PowerShell cmdlet that lets you choose whether executable and DLL rule collections apply to non-interactive processes. To enable this parameter, set the **ServiceEnforcement** to **Enabled**.
-   A new [AppLocker](/windows/client-management/mdm/applocker-csp) configuration service provider was added to allow you to enable AppLocker rules by using an MDM server.

[Learn how to manage AppLocker within your organization](/windows/security/application-security/application-control/windows-defender-application-control/applocker/applocker-overview).

### BitLocker

Enhancements to AppLocker in Windows 10 include:

-   **Encrypt and recover your device with Microsoft Entra**. In addition to using a Microsoft Account, automatic device encryption can now encrypt your devices that are joined to a Microsoft Entra domain. When the device is encrypted, the BitLocker recovery key is automatically escrowed to Microsoft Entra. This escrow will make it easier to recover your BitLocker key online.
-   **DMA port protection**. You can use the [DataProtection/AllowDirectMemoryAccess](/windows/client-management/mdm/policy-csp-dataprotection#allowdirectmemoryaccess) MDM policy to block DMA ports when the device is starting up. Also, when a device is locked, all unused DMA ports are turned off, but any devices that are already plugged into a DMA port will continue to work. When the device is unlocked, all DMA ports are turned back on.
-   **New Group Policy for configuring pre-boot recovery**. You can now configure the pre-boot recovery message and recover URL that is shown on the pre-boot recovery screen. For more information, see [BitLocker preboot recovery screen](/windows/security/operating-system-security/data-protection/bitlocker/preboot-recovery-screen).

[Learn how to deploy and manage BitLocker within your organization](/windows/security/operating-system-security/data-protection/bitlocker/).

### Certificate management

For Windows 10-based devices, you can use your MDM server to directly deploy client authentication certificates using Personal Information Exchange (PFX), in addition to enrolling using Simple Certificate Enrollment Protocol (SCEP), including certificates to enable Windows Hello for Business in your enterprise. You'll be able to use MDM to enroll, renew, and delete certificates.

### Microsoft Passport

In Windows 10, [Microsoft Passport](/windows/security/identity-protection/hello-for-business/deploy/requirements) replaces passwords with strong two-factor authentication that consists of an enrolled device and a Windows Hello (biometric) or PIN.

Microsoft Passport lets users authenticate to a Microsoft account, an Active Directory account, a Microsoft Entra ID account, or non-Microsoft service that supports Fast ID Online (FIDO) authentication. After an initial two-step verification during Microsoft Passport enrollment, a Microsoft Passport is set up on the user's device and the user sets a gesture, which can be Windows Hello or a PIN. The user provides the gesture to verify identity; Windows then uses Microsoft Passport to authenticate users and help them to access protected resources and services.

### Security auditing

In Windows 10, security auditing has added some improvements:

-   [New audit subcategories](#bkmk-auditsubcat)
-   [More info added to existing audit events](#bkmk-moreinfo)

#### <a href="" id="bkmk-auditsubcat"></a>New audit subcategories

In Windows 10, two new audit subcategories were added to the Advanced Audit Policy Configuration to provide greater granularity in audit events:

-   [Audit Group Membership](/windows/security/threat-protection/auditing/audit-handle-manipulation) Found in the Logon/Logoff audit category, the Audit Group Membership subcategory allows you to audit the group membership information in a user's logon token. Events in this subcategory are generated when group memberships are enumerated or queried on the PC where the sign-in session was created. For an interactive logon, the security audit event is generated on the PC that the user logged on to. For a network logon, such as accessing a shared folder on the network, the security audit event is generated on the PC hosting the resource.
    When this setting is configured, one or more security audit events are generated for each successful sign-in. You must also enable the **Audit Logon** setting under **Advanced Audit Policy Configuration\\System Audit Policies\\Logon/Logoff**. Multiple events are generated if the group membership information can't fit in a single security audit event.
-   [Audit PNP Activity](/windows/security/threat-protection/auditing/audit-pnp-activity) Found in the Detailed Tracking category, the Audit PNP Activity subcategory allows you to audit when plug and play detects an external device.
    Only Success audits are recorded for this category. If you don't configure this policy setting, no audit event is generated when an external device is detected by plug and play.
    A PnP audit event can be used to track down changes in system hardware and will be logged on the PC where the change took place. A list of hardware vendor IDs is included in the event.

#### <a href="" id="bkmk-moreinfo"></a>More info added to existing audit events

With Windows 10, version 1507, we've added more info to existing audit events to make it easier for you to put together a full audit trail and come away with the information you need to protect your enterprise. Improvements were made to the following audit events:

-   [Changed the kernel default audit policy](#bkmk-kdal)
-   [Added a default process SACL to LSASS.exe](#bkmk-lsass)
-   [Added new fields in the logon event](#bkmk-logon)
-   [Added new fields in the process creation event](#bkmk-logon)
-   [Added new Security Account Manager events](#bkmk-sam)
-   [Added new BCD events](#bkmk-bcd)
-   [Added new PNP events](#bkmk-pnp)

#### <a href="" id="bkmk-kdal"></a>Changed the kernel default audit policy

In previous releases, the kernel depended on the Local Security Authority (LSA) to retrieve information in some of its events. In Windows 10, the process creation events audit policy is automatically enabled until an actual audit policy is received from LSA. This setting results in better auditing of services that may start before LSA starts.

#### <a href="" id="bkmk-lsass"></a>Added a default process SACL to LSASS.exe

In Windows 10, a default process SACL was added to LSASS.exe to log processes attempting to access LSASS.exe. The SACL is `L"S:(AU;SAFA;0x0010;;;WD)"`. You can enable this process under **Advanced Audit Policy Configuration\\Object Access\\Audit Kernel Object**.
This process-when enabled-can help identify attacks that steal credentials from the memory of a process.

#### <a href="" id="bkmk-logon"></a>New fields in the sign-in event

The sign-in event ID 4624 has been updated to include more verbose information to make them easier to analyze. The following fields have been added to event 4624:

1.  **MachineLogon** String: yes or no
    If the account that signed in to the PC is a computer account, this field will be yes. Otherwise, the field is no.
2.  **ElevatedToken** String: yes or no
    If an account has signed in to the PC through the "administrative sign-in" method, this field will be yes. Otherwise, the field is no. Additionally, if this field is part of a split token, the linked sign-in ID (LSAP\_LOGON\_SESSION) will also be shown.
3.  **TargetOutboundUserName** String
    **TargetOutboundUserDomain** String
    The username and domain of the identity that was created by the LogonUser method for outbound traffic.
4.  **VirtualAccount** String: yes or no
    If the account that logged into the PC is a virtual account, this field will be yes. Otherwise, the field is no.
5.  **GroupMembership** String
    A list of all of the groups in the user's token.
6.  **RestrictedAdminMode** String: yes or no
    If the user logs into the PC in restricted admin mode with Remote Desktop, this field will be yes.

#### <a href="" id="bkmk-process"></a>New fields in the process creation event

The sign-in event ID 4688 has been updated to include more verbose information to make them easier to analyze. The following fields have been added to event 4688:
1.  **TargetUserSid** String
    The SID of the target principal.
2.  **TargetUserName** String
    The account name of the target user.
3.  **TargetDomainName** String
    The domain of the target user.
4.  **TargetLogonId** String
    The sign-in ID of the target user.
5.  **ParentProcessName** String
    The name of the creator process.
6.  **ParentProcessId** String
    A pointer to the actual parent process if it's different from the creator process.

#### <a href="" id="bkmk-sam"></a>New Security Account Manager events

In Windows 10, new SAM events were added to cover SAM APIs that perform read/query operations. In previous versions of Windows, only write operations were audited. The new events are event ID 4798 and event ID 4799. The following APIs are now audited:
-   SamrEnumerateGroupsInDomain
-   SamrEnumerateUsersInDomain
-   SamrEnumerateAliasesInDomain
-   SamrGetAliasMembership
-   SamrLookupNamesInDomain
-   SamrLookupIdsInDomain
-   SamrQueryInformationUser
-   SamrQueryInformationGroup
-   SamrQueryInformationUserAlias
-   SamrGetMembersInGroup
-   SamrGetMembersInAlias
-   SamrGetUserDomainPasswordInformation

#### <a href="" id="bkmk-bcd"></a>New BCD events

Event ID 4826 has been added to track the following changes to the Boot Configuration Database (BCD):
-   DEP/NEX settings
-   Test signing
-   PCAT SB simulation
-   Debug
-   Boot debug
-   Integrity Services
-   Disable Winload debugging menu

#### <a href="" id="bkmk-pnp"></a>New PNP events

Event ID 6416 has been added to track when an external device is detected through Plug and Play. One important scenario is if an external device that contains malware is inserted into a high-value machine that doesn't expect this type of action, such as a domain controller.

### Trusted Platform Module

#### New TPM features in Windows 10

The following sections describe the new and changed functionality in the TPM for Windows 10:

-   [Device health attestation](#bkmk-dha)
-   [Microsoft Passport](/windows/security/identity-protection/hello-for-business/deploy/requirements) support
-   [Device Guard](/windows/security/application-security/application-control/introduction-to-device-guard-virtualization-based-security-and-windows-defender-application-control) support
-   [Credential Guard](/windows/security/identity-protection/credential-guard/) support

### <a href="" id="bkmk-dha"></a>Device health attestation

Device health attestation enables enterprises to establish trust based on hardware and software components of a managed device. With device health attestation, you can configure an MDM server to query a health attestation service that will allow or deny a managed device access to a secure resource.

Some things that you can check on the device are:

-   Is Data Execution Prevention supported and enabled?
-   Is BitLocker Drive Encryption supported and enabled?
-   Is SecureBoot supported and enabled?

> [!NOTE]
> The device must be running Windows 10 and it must support at least TPM 2.0.

[Learn how to deploy and manage TPM within your organization](/windows/security/hardware-security/tpm/trusted-platform-module-overview).

### User Account Control

User Account Control (UAC) helps prevent malware from damaging a computer and helps organizations deploy a better-managed desktop environment.

You shouldn't turn off UAC because such a setting isn't supportive of devices running Windows 10. If you do turn off UAC, all Universal Windows Platform apps stop working. You must always set the **HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\System\\EnableLUA** registry value to 1. If you need to provide auto elevation for programmatic access or installation, you could set the **HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\System\\ConsentPromptBehaviorAdmin** registry value to 0, which is the same as setting the UAC slider Never Notify. This setting isn't recommended for devices running Windows 10.

For more info about how to manage UAC, see [UAC group policy settings and registry key settings](/windows/security/application-security/application-control/user-account-control/settings-and-configuration).

In Windows 10, User Account Control has added some improvements:

-   **Integration with the Antimalware Scan Interface (AMSI)**. The [AMSI](/windows/win32/amsi/antimalware-scan-interface-portal) scans all UAC elevation requests for malware. If malware is detected, the admin privilege is blocked.

[Learn how to manage User Account Control within your organization](/windows/security/application-security/application-control/user-account-control/).

### VPN profile options

Windows 10 provides a set of VPN features that both increase enterprise security and provide an improved user experience, including:

- Always-on auto connection behavior
- App=triggered VPN
- VPN traffic filters
- Lock down VPN
- Integration with Microsoft Passport for Work

[Learn more about the VPN options in Windows 10.](/windows/security/operating-system-security/network-security/vpn/vpn-profile-options)


## Management

Windows 10 provides mobile device management (MDM) capabilities for PCs, laptops, tablets, and phones that enable enterprise-level management of corporate-owned and personal devices.

### MDM support

MDM policies for Windows 10 align with the policies supported in Windows 8.1 and are expanded to address even more enterprise scenarios, such as managing multiple users who have Microsoft Entra ID accounts, full control over the Microsoft Store, VPN configuration, and more.

MDM support in Windows 10 is based on Open Mobile Alliance (OMA) Device Management (DM) protocol 1.2.1 specification.

Corporate-owned devices can be enrolled automatically for enterprises using Azure AD. [Reference for mobile device management for Windows 10](/windows/client-management/mdm/)

### Unenrollment

When a person leaves your organization and you unenroll the user account or device from management, the enterprise-controlled configurations and apps are removed from the device. You can unenroll the device remotely or the person can unenroll by manually removing the account from the device.

When a personal device is unenrolled, the user's data and apps are untouched, while enterprise information such as certificates, VPN profiles, and enterprise apps are removed.

### Infrastructure

Enterprises have the following identity and management choices.

| Area | Choices |
|---|---|
| Identity   | Active Directory; Azure AD         |
| Grouping   | Domain join; Workgroup; Azure AD join    |
| Device management | Group Policy; Microsoft Configuration Manager; Microsoft Intune; other MDM solutions; Exchange ActiveSync; Windows PowerShell; Windows Management Instrumentation (WMI) |

> [!NOTE]
> With the release of Windows Server 2012 R2, Network Access Protection (NAP) was deprecated and the NAP client has now been removed in Windows 10. For more information about support lifecycles, see [Microsoft Support Lifecycle](/lifecycle/).

 
### Device lockdown


Do you need a computer that can only do one thing? For example:

-   A device in the lobby that customers can use to view your product catalog.
-   A portable device that drivers can use to check a route on a map.
-   A device that a temporary worker uses to enter data.

You can configure a persistent locked down state to [create a kiosk-type device](/windows/configuration/kiosk-methods). When the locked-down account is logged on, the device displays only the app that you select.

You can also [configure a lockdown state](/windows/configuration/lock-down-windows-10-to-specific-apps) that takes effect when a given user account logs on. The lockdown restricts the user to only the apps that you specify.

Lockdown settings can also be configured for device look and feel, such as a theme or a [custom layout on the Start screen](/windows/configuration/windows-10-start-layout-options-and-policies).

### Start layout

A standard Start layout can be useful on devices that are common to multiple users and devices that are locked down for specialized purposes. Starting in Windows 10, version 1511, administrators can configure a *partial* Start layout, which applies specified tile groups while allowing users to create and customize their own tile groups. Learn how to [customize and export Start layout](/windows/configuration/customize-and-export-start-layout).

Administrators can also use mobile device management (MDM) or Group Policy to disable the use of [Windows Spotlight on the lock screen](/windows/configuration/windows-spotlight).

## Updates 

Windows Update for Business enables information technology administrators to keep the Windows 10-based devices in their organization always up to date with the latest security defenses and Windows features by directly connecting these systems to Microsoft's Windows Update service.

By using group policy objects, Windows Update for Business is an easily established and implemented system that enables organizations and administrators to exercise control on how their Windows 10-based devices are updated, by allowing:

-   **Deployment and validation groups**; where administrators can specify which devices go first in an update wave, and which devices will come later (to ensure any quality bars are met).

-   **Peer-to-peer delivery**, which administrators can enable to make delivery of updates to branch offices and remote sites with limited bandwidth efficient.

-   **Use with existing tools** such as Microsoft Intune and Configuration Manager.

Together, these Windows Update for Business features help reduce device management costs, provide controls over update deployment, offer quicker access to security updates, and provide access to the latest innovations from Microsoft on an ongoing basis. Windows Update for Business is a free service for all Windows 10 Pro, Enterprise, and Education editions, and can be used independent of, or in conjunction with, existing device management solutions such as Windows Server Update Services (WSUS) and [Microsoft Configuration Manager](/configmgr).


Learn more about [Windows Update for Business](/windows/deployment/update/waas-manage-updates-wufb).

For more information about updating Windows 10, see [Windows 10 servicing options for updates and upgrades](/windows/deployment/update/waas-servicing-strategy-windows-10-updates).

## Microsoft Edge

The new chromium-based Microsoft Edge isn't included in the LTSC release of Windows 10.  However, you can download and install it separately [here](https://www.microsoft.com/edge/business/download).

## See Also

[Windows 10 Enterprise LTSC](overview.md): A description of the LTSC servicing channel with links to information about each release.

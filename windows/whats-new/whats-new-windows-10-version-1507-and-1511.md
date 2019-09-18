---
title: What's new in Windows 10, versions 1507 and 1511 (Windows 10)
description: This topic lists new and updated topics in the What's new in Windows 10 documentation for Windows 10 and Windows 10 Mobile.
ms.assetid: 75F285B0-09BE-4821-9B42-37B9BE54CEC6
ms.reviewer: 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
manager: laurawi
ms.author: greglin
ms.localizationpriority: high
ms.topic: article
---

# What's new in Windows 10, versions 1507 and 1511

Below is a list of some of the new and updated features included in  the initial release of Windows 10 (version 1507) and the Windows 10 update to version 1511.

>[!NOTE]
>For release dates and servicing options for each version, see [Windows 10 release information](https://technet.microsoft.com/windows/release-info).
 

## Deployment

### Provisioning devices using Windows Imaging and Configuration Designer (ICD)

With Windows 10, you can create provisioning packages that let you quickly and efficiently configure a device without having to install a new image. Windows provisioning makes it easy for IT administrators to configure end-user devices without imaging. Using Windows Provisioning, an IT administrator can easily specify desired configuration and settings required to enroll the devices into management (through a wizard-driven user interface) and then apply that configuration to target devices in a matter of minutes. It is best suited for small- to medium-sized businesses with deployments that range from tens to a few hundred computers.

[Learn more about provisioning in Windows 10.](/windows/configuration/provisioning-packages/provisioning-packages)


## Security

### Applocker

#### New Applocker features in Windows 10, version 1507

-   A new parameter was added to the [New-AppLockerPolicy](https://technet.microsoft.com/library/hh847211.aspx) Windows PowerShell cmdlet that lets you choose whether executable and DLL rule collections apply to non-interactive processes. To enable this, set the **ServiceEnforcement** to **Enabled**.
-   A new [AppLocker](https://msdn.microsoft.com/library/windows/hardware/dn920019.aspx) configuration service provider was add to allow you to enable AppLocker rules by using an MDM server.
-   You can manage Windows 10 Mobile devices by using the new [AppLocker CSP](https://msdn.microsoft.com/library/windows/hardware/dn920019.aspx).

[Learn how to manage AppLocker within your organization](/windows/device-security/applocker/applocker-overview).

### Bitlocker

#### New Bitlocker features in Windows 10, version 1511

- **XTS-AES encryption algorithm**. BitLocker now supports the XTS-AES encryption algorithm. XTS-AES provides additional protection from a class of attacks on encryption that rely on manipulating cipher text to cause predictable changes in plain text. BitLocker supports both 128-bit and 256-bit XTS-AES keys.
  It provides the following benefits:
  - The algorithm is FIPS-compliant.
  - Easy to administer. You can use the BitLocker Wizard, manage-bde, Group Policy, MDM policy, Windows PowerShell, or WMI to manage it on devices in your organization.
    >**Note:**  Drives encrypted with XTS-AES will not be accessible on older version of Windows. This is only recommended for fixed and operating system drives. Removable drives should continue to use the AES-CBC 128-bit or AES-CBC 256-bit algorithms.

#### New Bitlocker features in Windows 10, version 1507

<!-- The link in the first bullet below will need to be refreshed Jan/Feb 2017. -->

-   **Encrypt and recover your device with Azure Active Directory**. In addition to using a Microsoft Account, automatic [Device Encryption](https://technet.microsoft.com/itpro/windows/keep-secure/windows-10-security-guide#device-encryption) can now encrypt your devices that are joined to an Azure Active Directory domain. When the device is encrypted, the BitLocker recovery key is automatically escrowed to Azure Active Directory. This will make it easier to recover your BitLocker key online.
-   **DMA port protection**. You can use the [DataProtection/AllowDirectMemoryAccess](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#dataprotection-allowdirectmemoryaccess) MDM policy to block DMA ports when the device is starting up. Also, when a device is locked, all unused DMA ports are turned off, but any devices that are already plugged into a DMA port will continue to work. When the device is unlocked, all DMA ports are turned back on.
-   **New Group Policy for configuring pre-boot recovery**. You can now configure the pre-boot recovery message and recover URL that is shown on the pre-boot recovery screen. For more info, see the [Configure pre-boot recovery message and URL](https://technet.microsoft.com/itpro/windows/keep-secure/bitlocker-group-policy-settings#bkmk-configurepreboot) section in "BitLocker Group Policy settings."

[Learn how to deploy and manage BitLocker within your organization](/windows/device-security/bitlocker/bitlocker-overview).

### Credential Guard

#### New Credential Guard features in Windows 10, version 1511

-   **Credential Manager support**. Credentials that are stored with Credential Manager, including domain credentials, are protected with Credential Guard with the following considerations:
    -   Credentials that are saved by the Remote Desktop Protocol cannot be used. Employees in your organization can manually store credentials in Credential Manager as generic credentials.
    -   Applications that extract derived domain credentials using undocumented APIs from Credential Manager will no longer be able to use those saved derived credentials.
    -   You cannot restore credentials using the Credential Manager control panel if the credentials were backed up from a PC that has Credential Guard turned on. If you need to back up your credentials, you must do this before you enable Credential Guard. Otherwise, you won't be able to restore those credentials.
-   **Enable Credential Guard without UEFI lock**. You can enable Credential Guard by using the registry. This allows you to disable Credential Guard remotely. However, we recommend that Credential Guard is enabled with UEFI lock. You can configure this by using Group Policy.
-   **CredSSP/TsPkg credential delegation**. CredSSP/TsPkg cannot delegate default credentials when Credential Guard is enabled.

[Learn how to deploy and manage Credential Guard within your organization](/windows/access-protection/credential-guard/credential-guard).

### Easier certificate management


For Windows 10-based devices, you can use your MDM server to directly deploy client authentication certificates using Personal Information Exchange (PFX), in addition to enrolling using Simple Certificate Enrollment Protocol (SCEP), including certificates to enable Windows Hello for Business in your enterprise. You'll be able to use MDM to enroll, renew, and delete certificates. As in Windows Phone 8.1, you can use the [Certificates app](https://go.microsoft.com/fwlink/p/?LinkId=615824) to review the details of certificates on your device. [Learn how to install digital certificates on Windows 10 Mobile.](/windows/access-protection/installing-digital-certificates-on-windows-10-mobile)

### Microsoft Passport

In Windows 10, [Microsoft Passport](/windows/access-protection/hello-for-business/hello-identity-verification) replaces passwords with strong two-factor authentication that consists of an enrolled device and a Windows Hello (biometric) or PIN.

Microsoft Passport lets users authenticate to a Microsoft account, an Active Directory account, a Microsoft Azure Active Directory (AD) account, or non-Microsoft service that supports Fast ID Online (FIDO) authentication. After an initial two-step verification during Microsoft Passport enrollment, a Microsoft Passport is set up on the user's device and the user sets a gesture, which can be Windows Hello or a PIN. The user provides the gesture to verify identity; Windows then uses Microsoft Passport to authenticate users and help them to access protected resources and services.

### Security auditing

#### New Security auditing features in Windows 10, version 1511

-   The [WindowsSecurityAuditing](https://go.microsoft.com/fwlink/p/?LinkId=690517) and [Reporting](https://go.microsoft.com/fwlink/p/?LinkId=690525) configuration service providers allow you to add security audit policies to mobile devices.

#### New features in Windows 10, version 1507

In Windows 10, security auditing has added some improvements:
-   [New audit subcategories](#bkmk-auditsubcat)
-   [More info added to existing audit events](#bkmk-moreinfo)

##### <a href="" id="bkmk-auditsubcat"></a>New audit subcategories

In Windows 10, two new audit subcategories were added to the Advanced Audit Policy Configuration to provide greater granularity in audit events:
-   [Audit Group Membership](/windows/device-security/auditing/audit-group-membership) Found in the Logon/Logoff audit category, the Audit Group Membership subcategory allows you to audit the group membership information in a user's logon token. Events in this subcategory are generated when group memberships are enumerated or queried on the PC where the logon session was created. For an interactive logon, the security audit event is generated on the PC that the user logged on to. For a network logon, such as accessing a shared folder on the network, the security audit event is generated on the PC hosting the resource.
    When this setting is configured, one or more security audit events are generated for each successful logon. You must also enable the **Audit Logon** setting under **Advanced Audit Policy Configuration\\System Audit Policies\\Logon/Logoff**. Multiple events are generated if the group membership information cannot fit in a single security audit event.
-   [Audit PNP Activity](/windows/device-security/auditing/audit-pnp-activity) Found in the Detailed Tracking category, the Audit PNP Activity subcategory allows you to audit when plug and play detects an external device.
    Only Success audits are recorded for this category. If you do not configure this policy setting, no audit event is generated when an external device is detected by plug and play.
    A PnP audit event can be used to track down changes in system hardware and will be logged on the PC where the change took place. A list of hardware vendor IDs are included in the event.

##### <a href="" id="bkmk-moreinfo"></a>More info added to existing audit events

With Windows 10, version 1507, we've added more info to existing audit events to make it easier for you to put together a full audit trail and come away with the information you need to protect your enterprise. Improvements were made to the following audit events:
-   [Changed the kernel default audit policy](#bkmk-kdal)
-   [Added a default process SACL to LSASS.exe](#bkmk-lsass)
-   [Added new fields in the logon event](#bkmk-logon)
-   [Added new fields in the process creation event](#bkmk-logon)
-   [Added new Security Account Manager events](#bkmk-sam)
-   [Added new BCD events](#bkmk-bcd)
-   [Added new PNP events](#bkmk-pnp)

##### <a href="" id="bkmk-kdal"></a>Changed the kernel default audit policy

In previous releases, the kernel depended on the Local Security Authority (LSA) to retrieve info in some of its events. In Windows 10, the process creation events audit policy is automatically enabled until an actual audit policy is received from LSA. This results in better auditing of services that may start before LSA starts.

##### <a href="" id="bkmk-lsass"></a>Added a default process SACL to LSASS.exe

In Windows 10, a default process SACL was added to LSASS.exe to log processes attempting to access LSASS.exe. The SACL is L"S:(AU;SAFA;0x0010;;;WD)". You can enable this under **Advanced Audit Policy Configuration\\Object Access\\Audit Kernel Object**.
This can help identify attacks that steal credentials from the memory of a process.

##### <a href="" id="bkmk-logon"></a>New fields in the logon event

The logon event ID 4624 has been updated to include more verbose information to make them easier to analyze. The following fields have been added to event 4624:
1.  **MachineLogon** String: yes or no
    If the account that logged into the PC is a computer account, this field will be yes. Otherwise, the field is no.
2.  **ElevatedToken** String: yes or no
    If the account that logged into the PC is an administrative logon, this field will be yes. Otherwise, the field is no. Additionally, if this is part of a split token, the linked login ID (LSAP\_LOGON\_SESSION) will also be shown.
3.  **TargetOutboundUserName** String
    **TargetOutboundUserDomain** String
    The username and domain of the identity that was created by the LogonUser method for outbound traffic.
4.  **VirtualAccount** String: yes or no
    If the account that logged into the PC is a virtual account, this field will be yes. Otherwise, the field is no.
5.  **GroupMembership** String
    A list of all of the groups in the user's token.
6.  **RestrictedAdminMode** String: yes or no
    If the user logs into the PC in restricted admin mode with Remote Desktop, this field will be yes.
    For more info on restricted admin mode, see [Restricted Admin mode for RDP](http://blogs.technet.com/b/kfalde/archive/2013/08/14/restricted-admin-mode-for-rdp-in-windows-8-1-2012-r2.aspx).

##### <a href="" id="bkmk-process"></a>New fields in the process creation event

The logon event ID 4688 has been updated to include more verbose information to make them easier to analyze. The following fields have been added to event 4688:
1.  **TargetUserSid** String
    The SID of the target principal.
2.  **TargetUserName** String
    The account name of the target user.
3.  **TargetDomainName** String
    The domain of the target user..
4.  **TargetLogonId** String
    The logon ID of the target user.
5.  **ParentProcessName** String
    The name of the creator process.
6.  **ParentProcessId** String
    A pointer to the actual parent process if it's different from the creator process.

##### <a href="" id="bkmk-sam"></a>New Security Account Manager events

In Windows 10, new SAM events were added to cover SAM APIs that perform read/query operations. In previous versions of Windows, only write operations were audited. The new events are event ID 4798 and event ID 4799. The following APIs are now audited:
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

##### <a href="" id="bkmk-bcd"></a>New BCD events

Event ID 4826 has been added to track the following changes to the Boot Configuration Database (BCD):
-   DEP/NEX settings
-   Test signing
-   PCAT SB simulation
-   Debug
-   Boot debug
-   Integrity Services
-   Disable Winload debugging menu

##### <a href="" id="bkmk-pnp"></a>New PNP events

Event ID 6416 has been added to track when an external device is detected through Plug and Play. One important scenario is if an external device that contains malware is inserted into a high-value machine that doesn’t expect this type of action, such as a domain controller.

[Learn how to manage your security audit policies within your organization](/windows/device-security/auditing/security-auditing-overview).

### Trusted Platform Module

#### New TPM features in Windows 10, version 1511

-   Key Storage Providers (KSPs) and srvcrypt support elliptical curve cryptography (ECC).

#### New TPM features in Windows 10, version 1507

The following sections describe the new and changed functionality in the TPM for Windows 10:
-   [Device health attestation](#bkmk-dha)
-   [Microsoft Passport](/windows/access-protection/hello-for-business/hello-identity-verification) support
-   [Device Guard](/windows/device-security/device-guard/introduction-to-device-guard-virtualization-based-security-and-code-integrity-policies) support
-   [Credential Guard](/windows/access-protection/credential-guard/credential-guard) support

### <a href="" id="bkmk-dha"></a>Device health attestation

Device health attestation enables enterprises to establish trust based on hardware and software components of a managed device. With device health attestation, you can configure an MDM server to query a health attestation service that will allow or deny a managed device access to a secure resource.
Some things that you can check on the device are:
-   Is Data Execution Prevention supported and enabled?
-   Is BitLocker Drive Encryption supported and enabled?
-   Is SecureBoot supported and enabled?

> **Note**  The device must be running Windows 10 and it must support at least TPM 2.0.

[Learn how to deploy and manage TPM within your organization](/windows/device-security/tpm//trusted-platform-module-overview).

### User Account Control

User Account Control (UAC) helps prevent malware from damaging a computer and helps organizations deploy a better-managed desktop environment.

You should not turn off UAC because this is not a supported scenario for devices running Windows 10. If you do turn off UAC, all Univeral Windows Platform apps stop working. You must always set the **HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\System\\EnableLUA** registry value to 1. If you need to provide auto elevation for programmatic access or installation, you could set the **HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\System\\ConsentPromptBehaviorAdmin** registry value to 0, which is the same as setting the UAC slider Never Notify. This is not recommended for devices running Windows 10.

For more info about how manage UAC, see [UAC Group Policy Settings and Registry Key Settings](/windows/access-protection/user-account-control/user-account-control-group-policy-and-registry-key-settings).

In Windows 10, User Account Control has added some improvements.

#### New User Account Control features in Windows 10, version 1507

-   **Integration with the Antimalware Scan Interface (AMSI)**. The [AMSI](https://msdn.microsoft.com/library/windows/desktop/dn889587.aspx) scans all UAC elevation requests for malware. If malware is detected, the admin privilege is blocked.

[Learn how to manage User Account Control within your organization](/windows/access-protection/user-account-control/user-account-control-overview).

### VPN profile options

Windows 10 provides a set of VPN features that both increase enterprise security and provide an improved user experience, including:

- Always-on auto connection behavior
- App=triggered VPN
- VPN traffic filters
- Lock down VPN
- Integration with Microsoft Passport for Work

[Learn more about the VPN options in Windows 10.](/windows/access-protection/vpn/vpn-profile-options)


## Management

Windows 10 provides mobile device management (MDM) capabilities for PCs, laptops, tablets, and phones that enable enterprise-level management of corporate-owned and personal devices.

### MDM support

MDM policies for Windows 10 align with the policies supported in Windows 8.1 and are expanded to address even more enterprise scenarios, such as managing multiple users who have Microsoft Azure Active Directory (Azure AD) accounts, full control over the Microsoft Store, VPN configuration, and more.

MDM support in Windows 10 is based on [Open Mobile Alliance (OMA)](https://go.microsoft.com/fwlink/p/?LinkId=533885) Device Management (DM) protocol 1.2.1 specification.

Corporate-owned devices can be enrolled automatically for enterprises using Azure AD. [Reference for Mobile device management for Windows 10](https://go.microsoft.com/fwlink/p/?LinkId=533172)

### Unenrollment


When a person leaves your organization and you unenroll the user account or device from management, the enterprise-controlled configurations and apps are removed from the device. You can unenroll the device remotely or the person can unenroll by manually removing the account from the device.

When a personal device is unenrolled, the user's data and apps are untouched, while enterprise information such as certificates, VPN profiles, and enterprise apps are removed.

### Infrastructure


Enterprises have the following identity and management choices.

| Area | Choices |
|---|---|
| Identity   | Active Directory; Azure AD         |
| Grouping   | Domain join; Workgroup; Azure AD join    |
| Device management | Group Policy; System Center Configuration Manager; Microsoft Intune; other MDM solutions; Exchange ActiveSync; Windows PowerShell; Windows Management Instrumentation (WMI) |

 > **Note**  
With the release of Windows Server 2012 R2, Network Access Protection (NAP) was deprecated and the NAP client has now been removed in Windows 10. For more information about support lifecycles, see [Microsoft Support Lifecycle](https://go.microsoft.com/fwlink/p/?LinkID=613512).

 
### Device lockdown


Do you need a computer that can only do one thing? For example:

-   A device in the lobby that customers can use to view your product catalog.

-   A portable device that drivers can use to check a route on a map.

-   A device that a temporary worker uses to enter data.

You can configure a persistent locked down state to [create a kiosk-type device](https://technet.microsoft.com/itpro/windows/manage/set-up-a-device-for-anyone-to-use). When the locked-down account is logged on, the device displays only the app that you select.

You can also [configure a lockdown state](https://technet.microsoft.com/itpro/windows/manage/lock-down-windows-10-to-specific-apps) that takes effect when a given user account logs on. The lockdown restricts the user to only the apps that you specify.

Lockdown settings can also be configured for device look and feel, such as a theme or a [custom layout on the Start screen](https://technet.microsoft.com/itpro/windows/manage/windows-10-start-layout-options-and-policies).

### Customized Start layout

A standard, customized Start layout can be useful on devices that are common to multiple users and devices that are locked down for specialized purposes. Starting in Windows 10, version 1511, administrators can configure a *partial* Start layout, which applies specified tile groups while allowing users to create and customize their own tile groups. Learn how to [customize and export Start layout](/windows/configuration/customize-and-export-start-layout).

Administrators can also use mobile device management (MDM) or Group Policy to disable the use of [Windows Spotlight on the lock screen](/windows/configuration/windows-spotlight).

### Microsoft Store for Business
**New in Windows 10, version 1511**

With the Microsoft Store for Business, organizations can make volume purchases of Windows apps. The Store for Business provides app purchases based on organizational identity, flexible distribution options, and the ability to reclaim or re-use licenses. Organizations can also use the Store for Business to create a private store for their employees that includes apps from the Store, as well private Line-of-Business (LOB) apps.

For more information, see [Microsoft Store for Business overview](/microsoft-store/windows-store-for-business-overview).


## Updates

Windows Update for Business enables information technology administrators to keep the Windows 10-based devices in their organization always up to date with the latest security defenses and Windows features by directly connecting these systems to Microsoft’s Windows Update service.

By using [Group Policy Objects](https://go.microsoft.com/fwlink/p/?LinkId=699279), Windows Update for Business is an easily established and implemented system which enables organizations and administrators to exercise control on how their Windows 10-based devices are updated, by allowing:

-   **Deployment and validation groups**; where administrators can specify which devices go first in an update wave, and which devices will come later (to ensure any quality bars are met).

-   **Peer-to-peer delivery**, which administrators can enable to make delivery of updates to branch offices and remote sites with limited bandwidth very efficient.

-   **Use with existing tools** such as System Center Configuration Manager and the [Enterprise Mobility Suite](https://go.microsoft.com/fwlink/p/?LinkId=699281).

Together, these Windows Update for Business features help reduce device management costs, provide controls over update deployment, offer quicker access to security updates, as well as provide access to the latest innovations from Microsoft on an ongoing basis. Windows Update for Business is a free service for all Windows 10 Pro, Enterprise, and Education editions, and can be used independent of, or in conjunction with, existing device management solutions such as [Windows Server Update Services (WSUS)](https://technet.microsoft.com/library/hh852345.aspx) and [System Center Configuration Manager](https://technet.microsoft.com/library/gg682129.aspx).


Learn more about [Windows Update for Business](/windows/deployment/update/waas-manage-updates-wufb).

For more information about updating Windows 10, see [Windows 10 servicing options for updates and upgrades](/windows/deployment/update/waas-servicing-strategy-windows-10-updates).

## Microsoft Edge
Microsoft Edge takes you beyond just browsing to actively engaging with the web through features like Web Note, Reading View, and Cortana.

-   **Web Note.** Microsoft Edge lets you annotate, highlight, and call things out directly on webpages.
-   **Reading view.** Microsoft Edge lets you enjoy and print online articles in a distraction-free layout that's optimized for your screen size. While in reading view, you can also save webpages or PDF files to your reading list, for later viewing.
-   **Cortana.** Cortana is automatically enabled on Microsoft Edge. Microsoft Edge lets you highlight words for more info and gives you one-click access to things like restaurant reservations and reviews, without leaving the webpage.
-   **Compatibility and security.** Microsoft Edge lets you continue to use IE11 for sites that are on your corporate intranet or that are included on your Enterprise Mode Site List. You must use IE11 to run older, less secure technology, such as ActiveX controls.

### Enterprise guidance
Microsoft Edge is the default browser experience for Windows 10 and Windows 10 Mobile. However, if you're running web apps that need ActiveX controls, we recommend that you continue to use Internet Explorer 11 for them. If you don't have IE11 installed anymore, you can download it from the Microsoft Store or from the [Internet Explorer 11 download page](https://go.microsoft.com/fwlink/p/?linkid=290956).

We also recommend that you upgrade to IE11 if you're running any earlier versions of Internet Explorer. IE11 is supported on Windows 7, Windows 8.1, and Windows 10. So any legacy apps that work with IE11 will continue to work even as you migrate to Windows 10.

[Learn more about using Microsoft Edge in the enterprise](https://technet.microsoft.com/itpro/microsoft-edge/enterprise-guidance-using-microsoft-edge-and-ie11)


## Learn more

- [Windows 10 release information](https://technet.microsoft.com/windows/release-info)


 

 






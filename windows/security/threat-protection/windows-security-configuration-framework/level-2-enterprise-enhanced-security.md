---
title: Level 2 enterprise enhanced security configuration
description: Describes the policies, controls, and organizational behaviors for Windows security configuration framework level 2 enterprise security configuration.
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.author: appcompatguy
author: appcompatguy
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 05/29/2019
---

# Level 2 enterprise enhanced security configuration

**Applies to**  

-   Windows 10

Level 2 is the security configuration recommended as a standard for devices where users access more sensitive information. These devices are a natural target in enterprises today. While targeting high levels of security, these recommendations do not assume a large staff of highly skilled security practitioners, and therefore should be accessible to most enterprise organizations.
A level 2 configuration should include all the configurations from level 1 and add the following security policies, controls, and organizational behaviors.

## Hardware

Devices targeting level 2 should support all level 1 features, and add the following hardware features:

- [Virtualization and HVCI Enabled](https://docs.microsoft.com/windows-hardware/design/device-experiences/oem-vbs)
- [Drivers and Apps HVCI-Ready](https://docs.microsoft.com/windows-hardware/test/hlk/testref/driver-compatibility-with-device-guard)
- [Windows Hello](https://docs.microsoft.com/windows-hardware/design/device-experiences/windows-hello-biometric-requirements)
- [DMA I/O Protection](https://docs.microsoft.com/windows/security/information-protection/kernel-dma-protection-for-thunderbolt) 

## Policies

The policies enforced in level 2 include all of the policies recommended for level 1 and adds the
below policies to implement more controls and a more sophisticated security
configuration than level 1. While they may have a slightly higher impact to
users or to applications, they enforce a level of security more commensurate
with the risks facing users with access to sensitive information. Microsoft
recommends using [the rings methodology](https://docs.microsoft.com/windows/deployment/update/waas-deployment-rings-windows-10-updates) for these security configurations and
controls, with a moderate timeline that is anticipated to be slightly longer
than the process in level 1.

### Security Template Policies

| Feature | Policy Setting | Policy Value | Description |
|---------|----------------|--------------|-------------|
| Security Options | User Account Control: Behavior of the elevation prompt for standard users  | Automatically deny elevation requests | This policy setting controls the behavior of the elevation prompt for standard users. Automatically deny elevation requests: When an operation requires elevation of privilege, an access denied error message is displayed. An enterprise that is running desktops as standard user may choose this setting to reduce help desk calls.  |
| User Rights Assignments | Deny access to this computer from the network | NT AUTHORITY\\Local Account | Determines which users are prevented from accessing a computer over the network. This policy setting supersedes the Access this computer from the network policy setting if a user account is subject to both policies. |
| User Rights Assignments | Deny log on through Remote Desktop Services | NT AUTHORITY\\Local Account | Determines which users and groups are prohibited from logging on as a Remote Desktop Services client. |

### Computer Policies

| Feature | Policy Setting | Policy Value | Description |
|---------|----------------|--------------|-------------|
| Control Panel / Personalization | Prevent enabling lock screen camera | Enabled | Disables the lock screen camera toggle switch in PC Settings and prevents a camera from being invoked on the lock screen. By default, users can enable invocation of an available camera on the lock screen. If you enable this setting, users will no longer be able to enable or disable lock screen camera access in PC Settings and the camera cannot be invoked on the lock screen. |
| Network / WLAN Service / WLAN Settings | Allow Windows to automatically connect to suggested open hotspots to networks shared by contacts and to hotspots offering paid services | Disabled | This policy setting determines whether users can enable the following WLAN settings: "Connect to suggested open hotspots," "Connect to networks shared by my contacts," and "Enable paid services". |
| System / Device Guard | Turn on Virtualization Based Security | - [[[main setting]]] = Enabled <br/> - Virtualization Based Protection of Code Integrity = Enabled with UEFI lock <br/> - Credential Guard Configuration = Enabled with UEFI lock <br/> - Select Platform Security Level = Secure Boot <br/> - Secure Launch Configuration = Enabled <br/> - Require UEFI Memory Attributes Table = False | Specifies whether Virtualization Based Security is enabled. Virtualization Based Security uses the Windows Hypervisor to provide support for security services. Virtualization Based Security requires Secure Boot and can optionally be enabled with the use of DMA Protections. DMA protections require hardware support and will only be enabled on correctly configured devices. |
| System / Internet Communication Management / Internet Communication settings | Turn off downloading of print drivers over HTTP | Enabled | This policy setting specifies whether to allow this client to download print driver packages over HTTP. To set up HTTP printing non-inbox drivers need to be downloaded over HTTP. Note: This policy setting does not prevent the client from printing to printers on the Intranet or the Internet over HTTP. It only prohibits downloading drivers that are not already installed locally. if you enable this policy setting, print drivers cannot be downloaded over HTTP. If you disable or do not configure this policy setting, users can download print drivers over HTTP. |
| System / Logon | Turn on convenience PIN sign-in | Disabled | This policy setting allows you to control whether a domain user can sign in using a convenience PIN. |
| System / Remote Assistance | Configure Solicited Remote Assistance | - [[[main setting]]] = Disabled <br/> - Maximum ticket time (value) = [[[delete]]] <br/> - Maximum ticket time (units) = [[[delete]]] <br/> - Method for sending email invitations = [[[delete]]] <br/> - Permit remote control of this computer = [[[delete]]] | This policy setting allows you to turn on or turn off Solicited (Ask for) Remote Assistance on this computer. |
| Windows Components / App Privacy | Let Windows apps activate with voice while the system is locked | Force Deny | Specifies whether Windows apps can be activated by voice while the system is locked. If you choose the "User is in control" option, employees in your organization can decide whether users can interact with applications using speech while the system is locked by using Settings > Privacy on the device. If you choose the "Force Allow" option, users can interact with applications using speech while the system is locked and employees in your organization cannot change it. If you choose the "Force Deny" option, users cannot interact with applications using speech while the system is locked and employees in your organization cannot change it. If you disable or do not configure this policy setting, employees in your organization can decide whether users can interact with applications using speech while the system is locked by using Settings > Privacy on the device. This policy is applied to Windows apps and Cortana. It takes precedence of the Allow Cortana above lock policy. This policy is applicable only when Allow voice activation policy is configured to allow applications to be activated with voice. |
| Windows Components / BitLocker Drive Encryption / Removable Data Drives | Deny write access to removable drives not protected by BitLocker  | Enabled  | This policy setting configures whether BitLocker protection is required for a computer to be able to write data to a removable data drive. If you enable this policy setting, all removable data drives that are not BitLocker-protected will be mounted as read-only. If the drive is protected by BitLocker, it will be mounted with read and write access. If the "Deny write access to devices configured in another organization" option is selected, only drives with identification fields matching the computer's identification fields will be given write access. When a removable data drive is accessed, it will be checked for valid identification field and allowed identification fields. These fields are defined by the "Provide the unique identifiers for your organization" policy setting. If you disable or do not configure this policy setting, all removable data drives on the computer will be mounted with read and write access. Note: This policy setting can be overridden by the policy settings under User Configuration\\Administrative Templates\\System\\Removable Storage Access. If the "Removable Disks: Deny write access" policy setting is enabled, this policy setting will be ignored. |
| Windows Components / Internet Explorer | Prevent bypassing SmartScreen Filter warnings | Enabled | This policy setting determines whether the user can bypass warnings from SmartScreen Filter. SmartScreen Filter prevents the user from browsing to or downloading from sites that are known to host malicious content. SmartScreen Filter also prevents the execution of files that are known to be malicious. |
| Windows Components / Internet Explorer | Prevent bypassing SmartScreen Filter warnings about files that are not commonly downloaded from the Internet | Enabled | This policy setting determines whether the user can bypass warnings from SmartScreen Filter. SmartScreen Filter warns the user about executable files that Internet Explorer users do not commonly download from the Internet. |
| Windows Components / Internet Explorer  | Prevent per-user installation of ActiveX controls | Enabled | This policy setting allows you to prevent the installation of ActiveX controls on a per-user basis. If you enable this policy setting, ActiveX controls cannot be installed on a per-user basis. |
| Windows Components / Internet Explorer | Security Zones: Do not allow users to add/delete sites | Enabled | Prevents users from adding or removing sites from security zones. A security zone is a group of Web sites with the same security level. If you enable this policy, the site management settings for security zones are disabled. |
| Windows Components / Internet Explorer | Security Zones: Do not allow users to change policies | Enabled | Prevents users from changing security zone settings. A security zone is a group of Web sites with the same security level. If you enable this policy, the Custom Level button and security-level slider on the Security tab in the Internet Options dialog box are disabled. |
| Windows Components / Internet Explorer | Security Zones: Use only machine settings | Enabled | Applies security zone information to all users of the same computer. A security zone is a group of Web sites with the same security level. If you enable this policy, changes that the user makes to a security zone will apply to all users of that computer. |
| Windows Components / Internet Explorer | Turn off Crash Detection | Enabled | This policy setting allows you to manage the crash detection feature of add-on Management. If you enable this policy setting, a crash in Internet Explorer will exhibit behavior found in Windows XP Professional Service Pack 1 and earlier, namely, to invoke Windows Error Reporting. All policy settings for Windows Error Reporting continue to apply. |
| Windows Components / Internet Explorer / Internet Control Panel / Security Page / Internet Zone | Download signed ActiveX controls | Disable | This policy setting allows you to manage whether users may download signed ActiveX controls from a page in the zone. |
| Windows Components / Microsoft Edge | Prevent bypassing Windows Defender SmartScreen prompts for files | Enabled | This policy setting lets you decide whether employees can override the Windows Defender SmartScreen warnings about downloading unverified files. If you enable this setting, employees can't ignore Windows Defender SmartScreen warnings and they are blocked from downloading the unverified files. If you disable or don't configure this setting, employees can ignore Windows Defender SmartScreen warnings and continue the download process. |
| Windows Components / Windows Defender SmartScreen / Microsoft Edge | Prevent bypassing Windows Defender SmartScreen prompts for sites | Enabled | Lets you decide whether employees can override the Windows Defender SmartScreen warnings about potentially malicious websites |
| Windows Components / Remote Desktop Services / Remote Desktop  | Do not allow drive redirection | Enabled | This policy setting specifies whether to prevent the mapping of client drives in a Remote Desktop Services session (drive redirection). By default, an RD Session Host server maps client drives automatically upon connection. Mapped drives appear in the session folder tree in File Explorer or Computer in the format \<driveletter\> on \<computername\>. You can use this policy setting to override this behavior. if you enable this policy setting, client drive redirection is not allowed in Remote Desktop Services sessions and Clipboard file copy redirection is not allowed on computers running Windows Server 2003 Windows 8 and Windows XP. If you disable this policy setting client drive redirection is always allowed. In addition, Clipboard file copy redirection is always allowed if Clipboard redirection is allowed. If you do not configure this policy setting client drive redirection and Clipboard file copy redirection are not specified at the Group Policy level. |
| Windows Components / Windows Defender Antivirus | Configure detection for potentially unwanted applications | Enabled: Audit | Enable or disable detection for potentially unwanted applications. You can choose to block, audit, or allow when potentially unwanted software is being downloaded or attempts to install itself on your computer. |
| Windows Components / Windows Game Recording and Broadcasting | Enables or disables Windows Game Recording and Broadcasting | Disabled | This setting enables or disables the Windows Game Recording and Broadcasting features. If you disable this setting, Windows Game Recording will not be allowed. |

### User Policies

| Feature | Policy Setting | Policy Value | Description |
|---------|----------------|--------------|-------------|
| Start Menu and Taskbar / Notifications | Turn off toast notifications on the lock screen | Enabled | Turns off toast notifications on the lock screen. |
| Windows Components / Cloud Content | Do not suggest third-party content in the Windows spotlight | Enabled | Windows spotlight features like lock screen spotlight, suggested apps in Start menu or Windows tips will no longer suggest apps and content from third-party software publishers |
| Windows Components / Internet Explorer | Turn on the auto-complete feature for user names and passwords on forms | Disabled | This AutoComplete feature can remember and suggest User names and passwords on Forms. If you enable this setting, the user cannot change "User name and passwords on forms" or "prompt me to save passwords". The Auto Complete feature for User names and passwords on Forms will be turned on. You have to decide whether to select "prompt me to save passwords". If you disable this setting the user cannot change "User name and passwords on forms" or "prompt me to save passwords". The Auto Complete feature for User names and passwords on Forms is turned off. The user also cannot opt to be prompted to save passwords. If you do not configure this setting, the user has the freedom of turning on Auto complete for User name and passwords on forms and the option of prompting to save passwords. To display this option, the users open the Internet Options dialog box, click the Contents Tab and click the Settings button. |

### Services

Microsoft recommends disabling the following services when their use is not required for a user to perform their work.

| Type | Name | Description |
|------|------|-------------|
| Scheduled Task | XblGameSaveTask                   | Syncs save data for Xbox Live save-enabled games                                  |
| Services       | Xbox Accessory Management Service | Manages connected Xbox accessories                                                |
| Services       | Xbox Game Monitoring              | Monitors Xbox games currently being played                                        |
| Services       | Xbox Live Auth Manager            | Provides authentication and authorization services for interactive with Xbox Live |
| Services       | Xbox Live Game Save               | Syncs save data for Xbox live save enabled games                                  |
| Services       | Xbox Live Networking Service      | Supports the Windows.Networking.XboxLive API                                      |

## Controls

The controls enforced in level 2 implement more controls and a more sophisticated security
configuration than level 1. While they may have a slightly higher impact to
users or to applications, they enforce a level of security more commensurate
with the risks facing users with access to sensitive information. Microsoft
recommends using the Audit/Enforce methodology for controls with an Audit mode,
and [the rings methodology](https://docs.microsoft.com/windows/deployment/update/waas-deployment-rings-windows-10-updates) for those that do not, with a moderate timeline that
is anticipated to be slightly longer than the process in level 1.

| Feature Set                                                 | Feature                                               | Description    |
|-------------------------------------------------------------|-------------------------------------------------------|----------------|
| [Windows Hello for Business](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-identity-verification) | Configure and enforce Windows Hello for Business | In Windows 10, Windows Hello for Business replaces passwords with strong two-factor authentication on PCs and mobile devices. This authentication consists of a new type of user credential that is tied to a device and uses a biometric or PIN. Windows Hello addresses the following problems with passwords: <br/>- Strong passwords can be difficult to remember, and users often reuse passwords on multiple sites.<br/>- Server breaches can expose symmetric network credentials (passwords).<br/>- Passwords are subject to replay attacks.<br/>- Users can inadvertently expose their passwords due to phishing attacks. |
| [Conditional Access](https://docs.microsoft.com/azure/active-directory/conditional-access/) | Configure and enforce Conditional Access rules based on <br/> - Application Risk <br/> - Session Risk | With conditional access, you can implement automated access control decisions for accessing your cloud apps that are based on conditions. Conditional access policies are enforced after the first-factor authentication has been completed. Therefore, conditional access is not intended as a first line defense for scenarios like denial-of-service (DoS) attacks, but can utilize signals from these events (e.g. the sign-in risk level, location of the request, and so on) to determine access. |
| [Exploit protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/exploit-protection-exploit-guard) | Enforce memory protection for OS-level controls: <br>- Control flow guard (CFG)<br>- Data Execution Protection (DEP)<br>- Mandatory ASLR<br>- Bottom-Up ASLR<br>- High-entropy ASLR<br>- Validate Exception Chains (SEHOP)<br>- Validate heap integrity     | Exploit protection helps protect devices from malware that use exploits to spread and infect to other devices. It consists of several mitigations that can be applied at either the operating system level, or at the individual app level. There is a risk to application compatibility, as some applications may rely on blocked behavior (e.g. dynamically generating code without marking memory as executable). Microsoft recommends gradually deploying this configuration using [the rings methodology](https://docs.microsoft.com/windows/deployment/update/waas-deployment-rings-windows-10-updates).        |        
| [Attack Surface Reduction (ASR)](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/attack-surface-reduction-exploit-guard)| Configure and enforce [Attack Surface Reduction rules](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/attack-surface-reduction-exploit-guard#attack-surface-reduction-rules)| Attack surface reduction controls help prevent actions and apps that are typically used by exploit-seeking malware to infect machines. There is a risk to application compatibility, as some applications may rely on blocked behavior (e.g. an Office application spawning a child process). Each control has an Audit mode, and as such, Microsoft recommends the Audit / Enforce Methodology (repeated here):<br>1) Audit – enable the controls in audit mode, and gather audit data in a centralized location<br>2) Review – review the audit data to assess potential impact (both positive and negative) and configure any exemptions from the security control you need to configure<br>3) Enforce – Deploy the configuration of any exemptions and convert the control to enforce mode |
| [Controlled Folder Access (CFA)](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/enable-controlled-folders-exploit-guard) | Configure and audit [Controlled Folder Access](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/enable-controlled-folders-exploit-guard) | Controlled folder access helps you protect valuable data from malicious apps and threats, such as ransomware. Controlled folder access is supported on Windows Server 2019 as well as Windows 10 clients. Controlled folder access works best with Microsoft Defender Advanced Threat Protection, which gives you detailed reporting into controlled folder access events and blocks as part of the usual alert investigation scenarios. <br/> All apps (any executable file, including .exe, .scr, .dll files and others) are assessed by Windows Defender Antivirus, which then determines if the app is malicious or safe. If the app is determined to be malicious or suspicious, then it will not be allowed to make changes to any files in any protected folder. <br/> Microsoft recommends the Audit / Enforce Methodology (repeated here):<br>1) Audit – enable the controls in audit mode, and gather audit data in a centralized location<br>2) Review – review the audit data to assess potential impact (both positive and negative) and configure any exemptions from the security control you need to configure<br>3) Enforce – Deploy the configuration of any exemptions and convert the control to enforce mode

## Behaviors

The behaviors recommended in level 2 implement a more sophisticated security process. While they may require a more sophisticated organization, they enforce
a level of security more commensurate with the risks facing users with access to
sensitive information.

| Feature Set| Feature  | Description  |
|------------|----------|--------------|
| Antivirus  | Configure Protection Updates to failover to retrieval from Microsoft | Sources for Windows Defender Antivirus Protection Updates can be provided in an ordered list. If you are using internal distribution, such as SCCM or WSUS, configure Microsoft Update lower in the list as a failover.  |
| OS Security Updates | Deploy Windows Quality Updates within 4 days | As the time between release of a patch and an exploit based on the reverse engineering of that patch continues to shrink, engineering a process that provides the ability to validate and deploy quality updates addressing known security vulnerabilities is a critical aspect of security hygiene.|
| Helpdesk| 1:1 Administration| A simple and common model for helpdesk support is to add the Helpdesk group as a permanent member of the Local Administrators group of every device. If any device is compromised and helpdesk can connect to it, then these credentials can be used to obtain privilege on any / all other devices. Design and implement a strategy to provide helpdesk support without providing 1:all admin access – constraining the value of these Helpdesk credentials |



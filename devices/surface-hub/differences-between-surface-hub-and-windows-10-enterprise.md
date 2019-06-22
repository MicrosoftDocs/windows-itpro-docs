---
title: Operating system essentials (Surface Hub)
description: This topic explains unique aspects of the Windows 10 Team operating system and how it differs from Windows 10 Enterprise.
keywords: change history
ms.prod: surface-hub
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.date: 06/20/2019
ms.reviewer: 
manager: dansimp
ms.localizationpriority: medium
---

# Operating system essentials (Surface Hub)

The Surface Hub operating system, Windows 10 Team, is based on Windows 10 Enterprise, providing rich support for enterprise management, security, and other features. However, there are important differences between them. While the Enterprise edition is designed for PCs, Windows 10 Team is designed from the ground up for large screens and meeting rooms. When you evaluate security and management requirements for Surface Hub, it's best to consider it as a new operating system. This article is designed to help highlight the key differences between Windows 10 Team on Surface Hub and Windows 10 Enterprise, and what the differences mean for your organization.

## User interface

### Shell (OS user interface)

The Surface Hub's shell is designed from the ground up to be large screen and touch optimized. It doesn't use the same shell as Windows 10 Enterprise.

*Organization policies that this may affect:* <br> Settings related to controls in the Windows 10 Enterprise shell don't apply for Surface Hub.

### Lock screen and screensaver

Surface Hub doesn't have a lock screen or a screen saver, but it has a similar feature called the welcome screen. The welcome screen shows scheduled meetings from the device account's calendar, and easy entry points to the Surface Hub's top apps - Skype for Business, Whiteboard, and Connect.

*Organization policies that this may affect:* <br> Settings for lock screen, screen timeout, and screen saver don't apply for Surface Hub.

### User sign-in

Surface Hub is designed to be used in communal spaces, such as meeting rooms. Unlike Windows PCs, anyone can walk up and use a Surface Hub without requiring a user to sign in. To enable this communal functionality, Surface Hub does not support Windows sign-in the same way that Windows 10 Enterprise does (e.g., signing in a user to the OS and using those credentials throughout the OS). Instead, there is always a local, auto signed-in, low-privilege user signed in to the Surface Hub. It doesn't support signing in any additional users, including admin users (e.g., when an admin signs in, they are not signed in to the OS).

Users can sign in to a Surface Hub, but they will not be signed in to the OS. For example, when a user signs in to Apps or My Meetings and Files, the users is signed in only to the apps or services, not to the OS. As a result, the signed-in user is able to retrieve their cloud files and personal meetings stored in the cloud, and these credentials are discarded when **End session** is activated.


*Organization policies that this may affect:* <br> Generally, Surface Hub uses lockdown features rather than user access control to enforce security. Policies related to password requirements, interactive logon, user accounts, and access control don't apply for Surface Hub.

### Saving and browsing files

Users have access to a limited set of directories on the Surface Hub:
- Music
- Videos
- Documents
- Pictures
- Downloads

Files saved locally in these directories are deleted when users press **End session**. To save content created during a meeting, users should save files to a USB drive or to OneDrive.

*Organization policies that this may affect:* <br> Policies related to access permissions and ownership of files and folders don't apply for Surface Hub. Users can't browse and save files to system directories and network folders.

## Applications

### Default applications

With few exceptions, the default Universal Windows Platform (UWP) apps on Surface Hub are also available on Windows 10 PCs.

UWP apps pre-installed on Surface Hub:
- Alarms & Clock
- Calculator
- Connect
- Excel Mobile
- Feedback Hub
- File Explorer*
- Get Started
- Maps
- Microsoft Edge
- Microsoft Power BI
- OneDrive
- Photos
- PowerPoint Mobile
- Settings*
- Skype for Business*
- Store
- Whiteboard*
- Word Mobile

*Apps with an asterisk (&ast;) are unique to Surface Hub*

*Organization policies that this may affect:* <br> Use guidelines for Windows 10 Enterprise to determine the features and network requirements for default apps on the Surface Hub.

### Installing apps, drivers, and services

To help preserve the appliance-like nature of the device, Surface Hub only supports installing Universal Windows Platform (UWP) apps, and does not support installing classic Win32 apps, services and drivers. Furthermore, only admins have access to install UWP apps.

*Organization policies that this may affect:* <br> Employees can only use the apps that have been installed by admins, helping mitigate against unintended use. Surface Hub doesn't support installing Win32 agents required by most traditional PC management and monitoring tools.

## Security and lockdown

For Surface Hub to be used in communal spaces, such as meeting rooms, its custom OS implements many of the security and lockdown features available in Windows 10.

Surface Hub implements these Windows 10 security features:
- [UEFI Secure Boot](https://msdn.microsoft.com/windows/hardware/commercialize/manufacture/desktop/secure-boot-overview)
- [User Mode Code Integrity (UMCI) with Device Guard](https://technet.microsoft.com/itpro/windows/keep-secure/introduction-to-device-guard-virtualization-based-security-and-code-integrity-policies)
- [Application restriction policies using AppLocker](https://technet.microsoft.com/itpro/windows/keep-secure/applocker-overview)
- [BitLocker Drive Encryption](https://technet.microsoft.com/itpro/windows/keep-secure/bitlocker-overview)
- [Trusted Platform Module (TPM)](https://technet.microsoft.com/itpro/windows/keep-secure/trusted-platform-module-overview)
- [Windows Defender](https://technet.microsoft.com/itpro/windows/keep-secure/windows-defender-in-windows-10)
- [User Account Control (UAC)](https://technet.microsoft.com/itpro/windows/keep-secure/user-account-control-overview) for access to the Settings app

These Surface Hub features provide additional security:
- Custom UEFI firmware
- Custom shell and Start menu limits device to meeting functions
- Custom File Explorer only grants access to files and folders under My Documents
- Custom Settings app only allows admins to modify device settings
- Downloading advanced Plug and Play drivers is disabled

*Organization policies that this may affect:* <br> Consider these features when performing your security assessment for Surface Hub.

## Management

### Device settings

Device settings can be configured through the Settings app. The Settings app is customized for Surface Hub, but also contains many familiar settings from Windows 10 Desktop. A User Accounts Control (UAC) prompt appears when opening up the Settings app to verify the admin's credentials, but this does not sign in the admin.

*Organization policies that this may affect:* <br> Employees can use the Surface Hub for meetings, but cannot modify any device settings. In addition to lockdown features, this ensures that employees only use the device for meeting functions.

### Administrative features

The administrative features in Windows 10 Enterprise, such as the Microsoft Management Console, Run, Command Prompt, PowerShell, registry editor, event viewer, and task manager are not supported on Surface Hub. The Settings app contains all of the administrative features locally available on Surface Hub.

*Organization policies that this may affect:* <br> Surface Hubs are not managed like traditional PCs. Use MDM to configure settings and OMS to monitor your Surface Hub.

### Remote management and monitoring

Surface Hub supports remote management through mobile device management (MDM), and monitoring through Operations Management Suite (OMS).

*Organization policies that this may affect:* <br> Surface Hub doesn't support installing Win32 agents required by most traditional PC management and monitoring tools, such as System Center Operations Manager.

### Group policy

Surface Hub does not support group policy, including auditing. Instead, use MDM to apply policies to your Surface Hub. For more information about MDM, see [Manage settings with an MDM provider](manage-settings-with-mdm-for-surface-hub.md).

*Organization policies that this may affect:* <br> Use MDM to manage Surface Hub rather than group policy.

### Remote assistance

Surface Hub does not support remote assistance.

*Organization policies that this may affect:* <br> Policies related to remote assistance don't apply for Surface Hub.

## Network

### Domain join and Azure Active Directory (Azure AD) join 

Surface Hub uses domain join and Azure AD join primarily to provide a directory-backed admin group. Users can't sign in with a domain account. For more information, see [Admin group management](admin-group-management-for-surface-hub.md).

*Organization policies that this may affect:* <br> Group policies are not applied when a Surface Hub is joined to your domain. Policies related to domain membership don't apply for Surface Hub.

### Accessing domain resources

Users can sign in to Microsoft Edge to access intranet sites and online resources (such as Office 365). If your Surface Hub is configured with a device account, the system uses it to access Exchange and Skype for Business. However, Surface Hub doesn't support accessing domain resources such as file shares and printers.

*Organization policies that this may affect:* <br> Policies related to accessing domain objects don't apply for Surface Hub.

<!--
### Endpoints



*Organization policies that this may affect:* <br> 
-->

### Diagnostic data

The Surface Hub OS uses the Windows 10 Connected User Experience and Telemetry component to gather and transmit diagnostic data. For more information, see [Configure Windows diagnostic data in your organization](https://technet.microsoft.com/itpro/windows/manage/configure-windows-diagnostic-data-in-your-organization).

*Organization policies that this may affect:* <br> Configure diagnostic data levels for Surface Hub in the same way as you do for Windows 10 Enterprise.

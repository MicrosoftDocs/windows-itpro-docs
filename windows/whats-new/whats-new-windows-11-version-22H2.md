---
title: What's new in Windows 11, version 22H2 for IT pros
description: Learn more about what's new in Windows 11 version 21H2, including servicing updates, Windows Subsystem for Linux, the latest CSPs, and more.
manager: dougeby
ms.prod: w10
ms.author: mstewart
author: mestew
ms.localizationpriority: medium
ms.topic: article
ms.collection: highpri
ms.custom: intro-overview
---

# What's new in Windows 11, version 22H2

**Applies to**: Windows 11, version 22H2
<!--6681501-->
Windows 11 22H2 is a feature update for Windows 11. It includes all features and fixes in previous cumulative updates to Windows 11, version 21H2, the original Windows 11 release version. This article lists the new and updated features IT Pros should know.

Windows 11, version 22H2 follows the [Windows 11 servicing timeline](/lifecycle/faq/windows#windows-11):

- **Windows 11 Professional**: Serviced for 24 months from the release date.
- **Windows 11 Enterprise**: Serviced for 36 months from the release date.

Windows 11, version 22H2 is available through Windows Server Update Services (including Configuration Manager), Windows Update for Business, and the Volume Licensing Service Center (VLSC). For more information, see [Placeholder blog link](https://blogs.windows.com/windowsexperience).

To learn more about the status of the update rollout, known issues, and new information, see [Windows release health](/windows/release-health/).

## Windows accessibility
<!--6294246 -->

## Personal Data Encryption
<!--5963468 -->
Personal data encryption (PDE) is a security feature introduced in Windows 11, version 22H2 that provides encryption of individual files. PDE occurs in addition to other encryption methods such as BitLocker.

PDE utilizes Windows Hello for Business to link data encryption keys with user credentials. This feature can minimize the number of credentials the user has to remember to gain access to files. For example, when using BitLocker with PIN, a user would need to authenticate twice - once with the BitLocker PIN and a second time with Windows credentials. This requirement requires users to remember two different credentials. With PDE, users only need to enter one set of credentials via Windows Hello for Business.

For more information, see [Personal Data Encryption](/windows/security/information-protection/personal-data-encryption/overview-pde).


## Start menu layout
<!--6286095-->
Windows 11, version 22H2 now supports additional CSPs for customizing the start menu layout. These CSPs allow you to hide the app list and disable context menus.

For more information, see [Supported configuration service provider (CSP) policies for Windows 11 Start menu](/windows/configuration/supported-csp-start-menu-layout-windows#existing-windows-csp-policies-that-windows-11-supports).


## WebAuthn APIs support ECC
<!--6021798-->
Elliptic-curve cryptography (ECC) is now supported by WebAuthn APIs for Windows 11, version 22H2 clients.

For more information, see [WebAuthn APIs for passwordless authentication on Windows](/windows/security/identity-protection/hello-for-business/webauthn-apis).

## Enhanced Phishing Protection
<!--6286059, 6063796-->
**Enhanced Phishing Protection** in **Microsoft Defender SmartScreen** helps protect Microsoft school or work passwords against phishing and unsafe usage on websites and in applications. Enhanced Phishing Protection works alongside Windows security protections to help protect Windows 11 work or school sign-in passwords.

[For more information, see [Enhanced Phishing Protection in Microsoft Defender SmartScreen](/windows/security/threat-protection/microsoft-defender-smartscreen/phishing-protection-microsoft-defender-smartscreen).

## Education
<!--6286248, 6286399-->
Starting in Windows 11 SE, version 22H2, **Stickers** is a new feature that allows students to decorate their desktop with digital stickers. Students can choose from over 500 cheerful, education-friendly digital stickers. Stickers can be arranged, resized, and customized on top of the desktop background. Each student's stickers remain, even when the background change.

For more information, see [Configure Stickers for Windows 11 SE](/education/windows/edu-stickers).

Starting in Windows 11, version 22H2, you can deploy education themes to your devices. The education themes are designed for students using devices in a school. Themes allow the end user to quickly configure the look and feel of the device, with preset wallpaper, accent color, and other settings. Students can choose their own themes, making it feel the device is their own.

For more information, see [Configure education themes for Windows 11](/education/windows/edu-themes).

## Windows Update notifications
<!--6286260 -->

The following items were added for Windows Update notifications:

- You can now block user notifications for Windows Updates during active hours. This setting is especially useful for educational organizations that want to prevent Windows Update notifications from occurring during class time. For more information, see [Control restart notifications](/windows/deployment/update/waas-restart#control-restart-notifications).

- The organization name now appears in the Windows Update notifications when Windows clients are associated with an Azure AD tenant. 
For more information, see [Display organization name in Windows Update notifications](/windows/deployment/update/waas-wu-settings#bkmk_display-name).

## Windows Hello
<!-- 6286360-->


## Credential Guard
<!--6289166-->
Compatible Windows 11 Enterprise version 22H2 devices will have **Windows Defender Credential Guard** turned on by default. This changes the default state of the feature in Windows, though system administrators can still modify this enablement state.

For more information, see [Manage Windows Defender Credential Guard](/windows/security/identity-protection/credential-guard/credential-guard-manage).

## Local Administrator Password Solution (LAPS)
<!--6399966-->

## Manageability
<!--6286218-->

## Smart App Control
<!-- 6286281-->
**Smart App Control** adds significant protection from malware, including new and emerging threats, by blocking apps that are malicious or untrusted. **Smart App Control** also helps to block potentially unwanted apps, which are apps that may cause your device to run slowly, display unexpected ads, offer extra software you didn't want, or do other things you don't expect.

For more information, see [Smart App Control](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control.md#wdac-and-smart-app-control).

## Malicious and vulnerable driver blocking
<!--6286432-->
The vulnerable driver blocklist is automatically enabled on devices for the following two new conditions:
- When Smart App Control is enabled
- For clean installs of Windows

For more information, see [recommended block rules](/windows/security/threat-protection/windows-defender-application-control/microsoft-recommended-block-rules#microsoft-vulnerable-driver-blocklist).

## Pluton
<!--6286417 -->
Microsoft Pluton security processor is a chip-to-cloud security technology built with Zero Trust principles at the core. Microsoft Pluton provides hardware-based root of trust, secure identity, secure attestation, and cryptographic services. Pluton technology is a combination of a secure subsystem, which is part of the System on Chip (SoC) and Microsoft authored software that runs on this integrated secure subsystem. Microsoft Pluton can be enabled on devices with Pluton capable processors running Windows 11, version 22H2.

For more information, see [Microsoft Pluton security processor](/windows/security/information-protection/pluton/microsoft-pluton-security-processor).

## Security hardening and threat protection
<!--6289245-->
Windows 11, version 22H2 supports additional protection for the Local Security Authority (LSA) process to prevent code injection that could compromise credentials.

For more information, see [Configuring Additional LSA Protection](/windows-server/security/credentials-protection-and-management/configuring-additional-lsa-protection?toc=/windows/security/toc.json&bc=/windows/security/breadcrumb/toc.json).

## Improvements to task manager
<!--6294316-->
- A new command bar was added to each page to give access to common actions
- Task Manager will automatically match the system wide theme configured in **Windows Settings**
- Added an efficiency mode that allows you to limit the resource usage of a process
- Updated the user experience for Task Manager

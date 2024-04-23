---
title: Application and driver control
description: Windows 11 security book - Application and driver control.
ms.topic: overview
ms.date: 04/09/2024
---

# Application and driver control

Windows 11 offers a rich application platform with layers of security like isolation and code integrity that help protect your valuable data. Developers can also take advantage of these
capabilities to build in security from the ground up to protect against breaches and malware.

## Smart App Control

Smart App Control prevents users from running malicious applications on Windows devices by blocking untrusted or unsigned applications. Smart App Control goes beyond previous built-in browser protections by adding another layer of security that is woven directly into the core of the OS at the process level. Using AI, our new Smart App Control only allows processes to run if they are predicted to be safe based on existing and new intelligence updated daily.

Smart App Control builds on top of the same cloud-based AI used in App Control for Business to predict the safety of an application so that users can be confident that their applications are safe and reliable on their new Windows devices. Additionally, Smart App Control blocks unknown script files and macros from the web are blocked, greatly improving security for everyday users.
Smart App Control will ship with new devices with Windows 11, version 22H2 installed.

Devices running previous versions of Windows 11 will have to be reset with a clean installation of Windows 11, version 22H2 to take advantage of this feature. Smart App Control will be disabled on devices enrolled in enterprise management. We suggest enterprises running line-of-business applications continue to leverage App Control for Business.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Smart App Control](/windows/apps/develop/smart-app-control/overview)

## App Control for Business

Your organization is only as secure as the applications that run on your devices. With application control, apps must earn trust to run, in contrast to an application trust model where all code is assumed trustworthy. By helping prevent unwanted or malicious code from running, application control is an important part of an effective security strategy. Many organizations cite application control as one of the most effective means of defending against executable file-based malware.

Windows 10 and above include App Control for Business (previously called Windows Defender Application Control) as well as AppLocker. App Control for Business is the next-generation app control solution for Windows and provides powerful control over what runs in your environment. Customers who were using AppLocker on previous versions of Windows can continue to use the feature as they consider whether to switch to App Control for Business for stronger protection.

Customers using Microsoft Intune<sup>[\[9\]](conclusion.md#footnote9)</sup> to manage their devices are now able to configure App Control for Business in the admin console, including setting up Intune as a managed installer.

Customers can use some built-in options for App Control for Business or upload their own policy as an XML file for Intune to package and deploy.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Application Control for Windows](/windows/security/application-security/application-control/windows-defender-application-control/wdac)

## User Account Control

User Account Control (UAC) helps prevent malware from damaging a PC and enables organizations to deploy a better-managed desktop. With UAC, apps and tasks always run in the security context of a non-administrator account unless an administrator specifically authorizes administrator-level access to the system. UAC can block the automatic installation of unauthorized apps and prevent inadvertent changes to system settings.

Organizations can use a modern device management (MDM) solution like Microsoft Intune<sup>[\[9\]](conclusion.md#footnote9)</sup> to remotely configure UAC settings. Organizations without MDM can change settings directly
on the device.

Enabling UAC helps prevent malware from altering PC settings and potentially gaining access to networks and sensitive data. UAC can also block the automatic installation of unauthorized
apps and prevent inadvertent changes to system settings.

Users with standard accounts, or those using administrative accounts with UAC enabled, run most programs with limited access rights. This includes the Windows shell and any apps started from the shell, such as Windows Explorer, a web browser, productivity suite, graphics programs, or games.

Some apps require additional permissions and will not work properly (or at all) when running with limited permissions. When an app needs to run with more than standard user rights, UAC allows users to run apps with a "full" administrator token (with administrative groups and privileges) instead of their default user access token. Users continue to operate in the standard user security context while enabling certain executables to run with elevated privileges if needed.

:::image type="content" source="images/uac-settings.png" alt-text="Screenshot of the UAC settings." border="false":::

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [How User Account Control works](/windows/security/identity-protection/user-account-control/how-user-account-control-works)

## Microsoft vulnerable driver blocklist

The Windows kernel is the most privileged software and is therefore a compelling target for malware authors. Since Windows has strict requirements for code running in the kernel, cybercriminals commonly exploit vulnerabilities in kernel drivers to get access. Microsoft works with ecosystem partners to constantly identify and respond to potentially vulnerable kernel drivers. Prior to the Windows 11 2022 Update, Windows enforced a block policy when hypervisor-protected code integrity (HVCI) was enabled to prevent vulnerable versions of drivers from running. Beginning with the Windows 11 2022 Update, the block policy is now on by default for all new Windows PCs, and users can opt in to enforce the policy from the Windows Security app.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Microsoft recommended driver block rules](/windows/security/threat-protection/windows-defender-application-control/microsoft-recommended-driver-block-rules)

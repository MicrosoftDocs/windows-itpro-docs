---
author: paolomatarazzo
ms.author: paoloma
ms.date: 06/05/2023
ms.topic: include
---

## Application Control

| Security Measures | Features & Capabilities |
|:---|:---|
| **[User Account Control (UAC)](/windows/security/application-security/application-control/user-account-control/)** | User Account Control (UAC) helps prevent malware from damaging a PC and helps organizations deploy a better-managed desktop. With UAC, apps and tasks always run in the security context of a non-administrator account, unless an administrator specifically authorizes administrator-level access to the system. UAC can block the automatic installation of unauthorized apps and prevent inadvertent changes to system settings. Enabling UAC helps prevent malware from altering PC settings and potentially gaining access to networks and sensitive data. UAC can also block the automatic installation of unauthorized apps and prevent inadvertent changes to system settings.  |
| **[Windows Defender Application Control (WDAC)](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control)** |  |
| **[Smart App Control](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control)** | Smart App Control prevents users from running malicious applications on Windows devices by blocking untrusted or unsigned applications. Smart App Control goes beyond previous built-in browser protections, by adding another layer of security that is woven directly into the core of the OS at the process level. Using AI, our new Smart App Control only allows processes to run that are predicted to be safe based on existing and new intelligence processed daily. Smart App Control builds on top of the same cloud-based AI used in Windows Defender Application Control (WDAC) to predict the safety of an application, so people can be confident they are using safe and reliable applications on their new Windows 11 devices, or Windows 11 devices that have been reset. |

## Application Isolation

| Security Measures | Features & Capabilities |
|:---|:---|
| **[Microsoft Defender Application Guard (MDAG) for Edge standalone mode](/windows/security/threat-protection/microsoft-defender-application-guard/md-app-guard-overview)** | Standalone mode allows Windows users to use hardware-isolated browsing sessions without any administrator or management policy configuration. In this mode, user must manually start Microsoft Edge in Application Guard from Edge menu for browsing untrusted sites |
| **[Microsoft Defender Application Guard (MDAG) for Edge enterprise mode and enterprise management](/windows/security/threat-protection/microsoft-defender-application-guard/configure-md-app-guard)** | Microsoft Defender Application Guard protect user's desktop while they browse the Internet using Microsoft Edge browser. Application Guard in enterprise mode automatically redirects untrusted website navigations in an anonymous and isolated Hyper-V based container which is separate from the host operating system. With Enterprise mode you can define your corporate boundaries by explicitly adding trusted domains and can customizing the Application Guard experience to meet and enforce your organization needs on Windows devices. |
| **Microsoft Defender Application Guard (MDAG) public APIs** | Enable applications using them to be isolated Hyper-V based container which is separate from the host operating system. |
| **[Microsoft Defender Application Guard (MDAG) for Microsoft Office](https://support.microsoft.com/office/application-guard-for-office-9e0fb9c2-ffad-43bf-8ba3-78f785fdba46)** | Application Guard protects Office files including Word, PowerPoint, and Excel. Application icons will have a small shield if Application Guard has been enabled and they are under protection. |
| **[Microsoft Defender Application Guard (MDAG) configure via MDM](/windows/client-management/mdm/windowsdefenderapplicationguard-csp)** | The WindowsDefenderApplicationGuard configuration service provider (CSP) is used by the enterprise to configure the settings in Microsoft Defender Application Guard. |
| **[Windows containers](/virtualization/windowscontainers/about/)** | Universal Windows Platform (UWP) applications run in Windows containers known as app containers. Processes that run in app containers operate with low integrity level, meaning they have limited access to resources they do not own. Because the default integrity level of most resources is medium integrity level, the UWP app can access only a subset of the filesystem, registry, and other resources. The app container also enforces restrictions on network connectivity; for example, access to a local host is not allowed. As a result, malware or infected apps have limited footprint for escape. |
| **[Windows Sandbox](/windows/security/application-security/application-isolation/windows-sandbox/windows-sandbox-overview)** | Windows Sandbox provides a lightweight desktop environment to safely run untrusted Win32 applications in isolation, using the same hardware-based Hyper-V virtualization technology to isolate apps without fear of lasting impact to your PC. |

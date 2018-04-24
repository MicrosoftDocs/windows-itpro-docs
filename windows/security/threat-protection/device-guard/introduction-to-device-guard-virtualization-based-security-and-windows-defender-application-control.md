---
title: Introduction to Windows Defender Device Guard - virtualization-based security and code integrity policies (Windows 10)
description: Microsoft Windows Defender Device Guard is a feature set that consists of both hardware and software system integrity hardening features that revolutionize the Windows operating system’s security.
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: high
author: mdsakibMSFT
ms.date: 04/19/2018
---

# Introduction to Windows Defender Device Guard: virtualization-based security and Windows Defender Application Control

**Applies to**
-   Windows 10
-   Windows Server 2016

With Windows 10, we introduced Windows Defender Device Guard, a set of hardware and OS technologies that, when configured together, allow enterprises to lock down Windows systems so they operate with many of the properties of mobile devices. 
In this configuration, Device Guard restricts devices to only run authorized apps by using a feature called configurable code integrity (CI), while simultaneously hardening the OS against kernel memory attacks through the use of virtualization-based protection of code integrity (more specifically, HVCI). 

Configurable CI has these advantages over other solutions:

1. Configurable CI policy is enforced by the Windows kernel itself. As such, the policy takes effect early in the boot sequence before nearly all other OS code and before traditional antivirus solutions run. 
2. Configurable CI allows customers to set application control policy not only over code running in user mode, but also kernel mode hardware and software drivers and even code that runs as part of Windows. 
3. Customers can protect the configurable CI policy even from local administrator tampering by digitally signing the policy. Then changing the policy requires administrative privilege and access to the organization’s digital signing process, making it extremely difficult for an attacker or malware that managed to gain administrative privilege to alter the application control policy. 
4. The entire configurable CI enforcement mechanism can be protected by HVCI, where even if a vulnerability exists in kernel mode code, the likelihood that an attacker could successfully exploit it is significantly diminished. Why is this relevant? That’s because an attacker that compromises the kernel would otherwise have enough privilege to disable most system defenses and override the application control policies enforced by configurable CI or any other application control solution.

## (Re-)Introducing Windows Defender Application Control

When we originally designed Device Guard it was built with a specific security promise in mind. Although there were no direct dependencies between its two main OS features, configurable CI and HVCI, we intentionally focused our marketing story around the Device Guard lockdown state you achieve when deploying them together. 

However, this unintentionally left an impression for many customers that the two features were inexorably linked and could not be deployed separately. 
And given that HVCI relies on the Windows virtualization-based security, it comes with additional hardware, firmware, and kernel driver compatibility requirements that some older systems can’t meet. 

As a result, many customers assumed that they couldn’t use configurable CI either. 
But configurable CI carries no specific hardware or software requirements other than running Windows 10, which means many customers were wrongly denied the benefits of this powerful application control capability.

Since the initial release of Windows 10, the world has witnessed numerous hacking and malware attacks where application control alone could have prevented the attack altogether. So we are promoting configurable CI within our security stack and giving it a name of its own: [Windows Defender Application Control](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-control). 
We hope this branding change will help us better communicate options for adopting application control within an organization.

Does this mean Windows Defender Device Guard is going away? Not at all. Device Guard will continue to exist as a way to describe the fully locked down state achieved through the use of Windows Defender Application Control (WDAC), HVCI, and hardware and firmware security features. It also allows us to work with our OEM partners to identify specifications for devices that are “Device Guard capable” so that our joint customers can easily purchase devices that meet all of the hardware and firmware requirements of the original Device Guard scenario.

## Related topics

[Windows Defender Application Control](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-control)

[Dropping the Hammer Down on Malware Threats with Windows 10’s Windows Defender Device Guard](https://channel9.msdn.com/Events/Ignite/2015/BRK2336)

[Driver compatibility with Windows Defender Device Guard in Windows 10](https://blogs.msdn.microsoft.com/windows_hardware_certification/2015/05/22/driver-compatibility-with-device-guard-in-windows-10)

[Code integrity](https://technet.microsoft.com/library/dd348642.aspx)



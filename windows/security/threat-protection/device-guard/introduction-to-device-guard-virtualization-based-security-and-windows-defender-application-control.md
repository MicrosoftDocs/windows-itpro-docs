---
title: Windows Defender Application Control Configurable Code Integrity and Virtualization-based security  (Windows 10)
description: Microsoft Windows 10 has a feature set that consists of both hardware and software system integrity hardening capabilites that revolutionize the Windows operating system’s security.
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
author: mdsakibMSFT
ms.date: 04/19/2018
---

# Windows Defender Application Control Configurable Code Integrity and Virtualization-based security (aka Windows Defender Device Guard)

**Applies to**
-   Windows 10
-   Windows Server 2016

Windows 10 includes a set of hardware and OS technologies that, when configured together, allow enterprises to "lock down" Windows systems so they operate with many of the properties of mobile devices. In this configuration, specific technologies work together to restrict devices to only run authorized apps by using a feature called configurable code integrity (CI), while simultaneously hardening the OS against kernel memory attacks through the use of virtualization-based protection of code integrity (more specifically, HVCI). 

Configurable CI and HVCI are very powerful protections that can be used separately. However, when these two technologies are configured to work together, they present a very strong protection capability for Windows 10 devices. Starting with the Windows 10 Anniversary Update (1607), this combined "configuration state" of Configurable CI and HVCI has been referred to as Windows Defender Device Guard. 

Using Configurable CI to restrict devices to only autherized apps has these advantages over other solutions:

1. Configurable CI policy is enforced by the Windows kernel itself. As such, the policy takes effect early in the boot sequence before nearly all other OS code and before traditional antivirus solutions run. 
2. Configurable CI allows customers to set application control policy not only over code running in user mode, but also kernel mode hardware and software drivers and even code that runs as part of Windows. 
3. Customers can protect the configurable CI policy even from local administrator tampering by digitally signing the policy. This would mean that changing the policy would require both administrative privilege and access to the organization’s digital signing process, making it extremely difficult for an attacker with administrative privledge, or malicious software that managed to gain administrative privilege, to alter the application control policy. 
4. The entire configurable CI enforcement mechanism can be protected by HVCI, where even if a vulnerability exists in kernel mode code, the likelihood that an attacker could successfully exploit it is significantly diminished. Why is this relevant? That’s because an attacker that compromises the kernel would otherwise have enough privilege to disable most system defenses and override the application control policies enforced by configurable CI or any other application control solution.

## (Re-)Introducing Windows Defender Application Control

When we originally designed the configuration state that we have referred to as Windows Defender Device Guard, we did so with a specific security promise in mind. Although there were no direct dependencies between the two main OS features of the Device Guard configuration, configurable CI and HVCI, we intentionally focused our discussion around the Device Guard lockdown state you achieve when deploying them together. 

However, the use of the term Device Guard to describe this configuration state has unintentionally left an impression for many IT professionals that the two features were inexorably linked and could not be deployed separately. 
Additionally, given that HVCI relies on Windows virtualization-based security, it comes with additional hardware, firmware, and kernel driver compatibility requirements that some older systems can’t meet. 

As a result, many IT Professionals assumed that because some systems couldn't use HVCI, they couldn’t use configurable CI either. 
But configurable CI carries no specific hardware or software requirements other than running Windows 10, which means many IT professionals were wrongly denied the benefits of this powerful application control capability.

Since the initial release of Windows 10, the world has witnessed numerous hacking and malware attacks where application control alone could have prevented the attack altogether. With this in mind, we are discussing and documenting configurable CI as a independent technology within our security stack and giving it a name of its own: [Windows Defender Application Control](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-control). 
We hope this change will help us better communicate options for adopting application control within an organization.

Does this mean Windows Defender Device Guard configuration state is going away? Not at all. The term Device Guard will continue to be used as a way to describe the fully locked down state achieved through the use of Windows Defender Application Control (WDAC), HVCI, and hardware and firmware security features. It also allows us to work with our OEM partners to identify specifications for devices that are “Device Guard capable” so that our joint customers can easily purchase devices that meet all of the hardware and firmware requirements of the original "Device Guard" locked down scenario for Windows 10 based devices.

## Related topics

[Windows Defender Application Control](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-control)

[Dropping the Hammer Down on Malware Threats with Windows 10’s Windows Defender Device Guard](https://channel9.msdn.com/Events/Ignite/2015/BRK2336)

[Driver compatibility with Windows Defender Device Guard in Windows 10](https://blogs.msdn.microsoft.com/windows_hardware_certification/2015/05/22/driver-compatibility-with-device-guard-in-windows-10)

[Code integrity](https://technet.microsoft.com/library/dd348642.aspx)



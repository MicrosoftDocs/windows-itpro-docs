---
title: Deployment guidelines for Windows Defender Device Guard (Windows 10)
description: Plan your deployment of Hypervisor-Protected Code Integrity (also known as Memory Integrity). Learn about hardware requirements, deployment approaches, code signing and code integrity policies.
keywords: virtualization, security, malware
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 10/20/2017
ms.reviewer: 
ms.author: vinpa
ms.technology: itpro-security
---

# Baseline protections and other qualifications for virtualization-based protection of code integrity

**Applies to** 
- Windows 10

Computers must meet certain hardware, firmware, and software requirements in order to take advantage of Hypervisor-Protected Code Integrity (HVCI), a  virtualization-based security (VBS) feature in Windows. HVCI is referred to as Memory Integrity under the Core Isolation section of the Windows security settings. Computers lacking these requirements can still be protected by Windows Defender Application Control (WDAC) policies—the difference is that those computers won't be as hardened against certain threats.

For example, hardware that includes CPU virtualization extensions and SLAT will be hardened against malware that attempts to gain access to the kernel, but without protected BIOS options such as “Boot only from internal hard drive,” the computer could be booted (by a malicious person who has physical access) into an operating system on bootable media.

> [!WARNING]
>  Virtualization-based protection of code integrity may be incompatible with some devices and applications. We strongly recommend testing this configuration in your lab before enabling virtualization-based protection of code integrity on production systems. Failure to do so may result in unexpected failures up to and including data loss or a blue screen error (also called a stop error).

The following tables provide more information about the hardware, firmware, and software required for deployment of WDAC and HVCI. The tables describe baseline protections, plus protections for improved security that are associated with hardware and firmware options available in 2015, 2016, and 2017.

> [!NOTE]
> Beginning with Windows 10, version 1607, Trusted Platform Module (TPM 2.0) must be enabled by default on new computers.

## Baseline protections

|Baseline Protections            | Description                                        | Security benefits |
|--------------------------------|----------------------------------------------------|-------------------|
| Hardware: **64-bit CPU**       | A 64-bit computer is required for the Windows hypervisor to provide VBS. |  |
| Hardware: **CPU virtualization extensions**,<br>plus **extended page tables** | These hardware features are required for VBS:<br>One of the following virtualization extensions:<br>• VT-x (Intel) or<br>• AMD-V<br>And:<br>• Extended page tables, also called Second Level Address Translation (SLAT). | VBS provides isolation of the secure kernel from the normal operating system. Vulnerabilities and zero-days in the normal operating system can't be exploited because of this isolation. |
| Firmware: **UEFI firmware version 2.3.1.c or higher with UEFI Secure Boot** | See the System.Fundamentals.Firmware.UEFISecureBoot requirement in the [Windows Hardware Compatibility Specifications for Windows 10, version 1809 and Windows Server 2019 - Systems download](https://go.microsoft.com/fwlink/?linkid=2027110). You can find previous versions of the Windows Hardware Compatibility Program Specifications and Policies [here](/windows-hardware/design/compatibility/whcp-specifications-policies). | UEFI Secure Boot helps ensure that the device boots only authorized code. This guarantee can prevent boot kits and root kits from installing and persisting across reboots.  |
| Firmware: **Secure firmware update process**      | UEFI firmware must support secure firmware update found under the System.Fundamentals.Firmware.UEFISecureBoot requirement in the [Windows Hardware Compatibility Specifications for Windows 10, version 1809 and Windows Server 2019 - Systems download](https://go.microsoft.com/fwlink/?linkid=2027110). You can find previous versions of the Windows Hardware Compatibility Program Specifications and Policies [here](/windows-hardware/design/compatibility/whcp-specifications-policies).  | UEFI firmware just like software can have security vulnerabilities that, when found, need to be patched through firmware updates. Patching helps prevent root kits from getting installed. |
| Software: **HVCI compatible drivers**       | See the Filter.Driver.DeviceGuard.DriverCompatibility requirement in the [Windows Hardware Compatibility Specifications for Windows 10, version 1809 and Windows Server 2019 - Filter driver download](https://go.microsoft.com/fwlink/?linkid=2027110). You can find previous versions of the Windows Hardware Compatibility Program Specifications and Policies [here](/windows-hardware/design/compatibility/whcp-specifications-policies). | [HVCI Compatible](https://blogs.msdn.microsoft.com/windows_hardware_certification/2015/05/22/driver-compatibility-with-device-guard-in-windows-10/) drivers help ensure that VBS can maintain appropriate memory permissions. This increases resistance to bypassing vulnerable kernel drivers and helps ensure that malware can't run in kernel. Only code verified through code integrity can run in kernel mode.  |
| Software: Qualified **Windows operating system**  | Windows 10 Enterprise, Windows 10 Pro, Windows 10 Education, Windows Server 2016, or Windows 10 IoT Enterprise<br><blockquote><p><b>Important:</b><br> Windows Server 2016 running as a domain controller does not support Windows Defender Credential Guard. Only virtualization-based protection of code integrity is supported in this configuration.</p></blockquote> | Support for VBS and for management features. |

> **Important**&nbsp;&nbsp;The following tables list additional qualifications for improved security. You can use WDAC and HVCI with hardware, firmware, and software that support baseline protections, even if they do not support protections for improved security. However, we strongly recommend meeting these additional qualifications to significantly strengthen the level of security that WDAC and HVCI can provide.

## Other qualifications for improved security

The following tables describe other hardware and firmware qualifications, and the improved security that is available when these qualifications are met.


### More security qualifications starting with Windows 10, version 1507, and Windows Server 2016, Technical Preview 4

| Protections for Improved Security       | Description                                        | Security benefits |
|---------------------------------------------|----------------------------------------------------|------|
| Firmware: **Securing Boot Configuration and Management** | • BIOS password or stronger authentication must be supported.<br>• In the BIOS configuration, BIOS authentication must be set.<br>• There must be support for protected BIOS option to configure list of permitted boot devices (for example, “Boot only from internal hard drive”) and boot device order, overriding BOOTORDER modification made by operating system.<br>• In the BIOS configuration, BIOS options related to security and boot options (list of permitted boot devices, boot order) must be secured to prevent other operating systems from starting and to prevent changes to the BIOS settings. | • BIOS password or stronger authentication helps ensure that only authenticated Platform BIOS administrators can change BIOS settings. This guarantee helps protect against a physically present user with BIOS access.<br>• Boot order when locked provides protection against the computer being booted into WinRE or another operating system on bootable media. |

<br>

### More security qualifications starting with Windows 10, version 1607, and Windows Server 2016


| Protections for Improved Security        | Description                                        | Security benefits |
|---------------------------------------------|----------------------------------------------------|-----|
| Firmware: **Hardware Rooted Trust Platform Secure Boot** | • Boot Integrity (Platform Secure Boot) must be supported. See the System.Fundamentals.Firmware.CS.UEFISecureBoot.ConnectedStandby requirement in the [Windows Hardware Compatibility Specifications for Windows 10, version 1809 and Windows Server 2019 - Systems download](https://go.microsoft.com/fwlink/?linkid=2027110). You can find previous versions of the Windows Hardware Compatibility Program Specifications and Policies [here](/windows-hardware/design/compatibility/whcp-specifications-policies).<br>• The Hardware Security Test Interface (HSTI) 1.1.a must be implemented. See [Hardware Security Testability Specification](/windows-hardware/test/hlk/testref/hardware-security-testability-specification). | • Boot Integrity (Platform Secure Boot) from Power-On provides protections against physically present attackers, and defense-in-depth against malware.<br>• HSTI 1.1.a provides extra security assurance for correctly secured silicon and platform. |
| Firmware: **Firmware Update through Windows Update** | Firmware must support field updates through Windows Update and UEFI encapsulation update. | Helps ensure that firmware updates are fast, secure, and reliable. |
| Firmware: **Securing Boot Configuration and Management** | • Required BIOS capabilities: Ability of OEM to add ISV, OEM, or Enterprise Certificate in Secure Boot DB at manufacturing time.<br>• Required configurations: Microsoft UEFI CA must be removed from Secure Boot DB. Support for 3rd-party UEFI modules is permitted but should use ISV-provided certificates or OEM certificate for the specific UEFI software.| • Enterprises can choose to allow proprietary EFI drivers/applications to run.<br>• Removing Microsoft UEFI CA from Secure Boot DB provides full control to enterprises over software that runs before the operating system boots. |

<br>

### More security qualifications starting with Windows 10, version 1703


| Protections for Improved Security          | Description                                        | Security benefits |
|---------------------------------------------|----------------------------------------------------|------|
| Firmware: **VBS enablement of NX protection for UEFI runtime services** | • VBS will enable No-Execute (NX) protection on UEFI runtime service code and data memory regions. UEFI runtime service code must support read-only page protections, and UEFI runtime service data must not be executable.<br>• UEFI runtime service must meet these requirements: <br>&nbsp;&nbsp;&nbsp;&nbsp;• Implement UEFI 2.6 EFI_MEMORY_ATTRIBUTES_TABLE. All UEFI runtime service memory (code and data) must be described by this table. <br>&nbsp;&nbsp;&nbsp;&nbsp;• PE sections need to be page-aligned in memory (not required for in non-volitile storage).<br>&nbsp;&nbsp;&nbsp;&nbsp;• The Memory Attributes Table needs to correctly mark code and data as RO/NX for configuration by the OS:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• All entries must include attributes EFI_MEMORY_RO, EFI_MEMORY_XP, or both <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• No entries may be left with neither of the above attributes, indicating memory that is both executable and writable. Memory must be either readable and executable or writeable and non-executable. <br><blockquote><p><b>Notes:</b><br>• This only applies to UEFI runtime service memory, and not UEFI boot service memory. <br>• This protection is applied by VBS on OS page tables.</p></blockquote><br> Also note the following guidelines: <br>• Don't use sections that are both writeable and executable<br>• Don't attempt to directly modify executable system memory<br>• Don't use dynamic code  | • Vulnerabilities in UEFI runtime, if any, will be blocked from compromising VBS (such as in functions like UpdateCapsule and SetVariable)<br>• Reduces the attack surface to VBS from system firmware.   |
| Firmware: **Firmware support for SMM protection** | The [Windows SMM Security Mitigations Table (WSMT) specification](https://download.microsoft.com/download/1/8/A/18A21244-EB67-4538-BAA2-1A54E0E490B6/WSMT.docx) contains details of an Advanced Configuration and Power Interface (ACPI) table that was created for use with Windows operating systems that support Windows virtualization-based security (VBS) features.| • Protects against potential vulnerabilities in UEFI runtime services, if any, will be blocked from compromising VBS (such as in functions like UpdateCapsule and SetVariable)<br>• Reduces the attack surface to VBS from system firmware.<br>• Blocks other security attacks against SMM.  |

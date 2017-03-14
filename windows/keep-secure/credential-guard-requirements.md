---
title: Credential Guard Requirements (Windows 10)
description: Introduced in Windows 10 Enterprise, Credential Guard uses virtualization-based security to isolate secrets so that only privileged system software can access them.
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
localizationpriority: high
author: brianlic-msft
---

# Requirements

**Applies to**
-   Windows 10
-   Windows Server 2016

For Credential Guard to provide protections, the computers you are protecting must meet certain baseline hardware, firmware, and software requirements which we will refer to as [Hardware and software requirements](#hardware-and-software-requirements). Additionally Credential Guard blocks specific authentication capabilities, so applications which require blocked capabilities will break. We will refer to this as [Application requirements](#application-requirements). Beyond that, computers can meet additional hardware and firmware qualifications, and receive additional protection—those computers will be more hardened against certain threats. To keep this section brief, those will be in [Security Considerations](#security-considerations).

### Hardware and software requirements

To provide basic protection against OS level attempts to read Credential Manager domain credentials, NTLM and Kerberos derived credentials, Credential Manager uses:
- Support for Virtualization-based security (required)
- Secure boot (required)
- TPM 2.0 either discrete or firmware (preferred - provides binding to hardware)
- UEFI lock (preferred - prevents attacker from disabling with a simple registry key change)

The Virtualization-based security requires:
- 64 bit CPU
- CPU virtualization extensions plus extended page tables
- Windows hypervisor

### Application requirements

When Credential Guard is enabled, specific authentication capabilities are blocked, so applications which require blocked capabilities will break. Applications should be tested prior to deployment to ensure compatiblity with the reduced functionality. 

>[!WARNING] 
> Enabling Credential Guard on domain controllers is not supported. <br>
> The domain controller hosts authentication services which integrate with processes isolated when Credential Guard is enabled, causing crashes. 

>[!NOTE]
> Credential Guard does not provide protections for the Active Directory database or the Security Accounts Manager (SAM). The credentials protected by Kerberos and NTLM when Credential Guard is enabled are also in the Active Directory database (on domain controllers) and the SAM (for local accounts). 

Applications will break if they require:
- Kerberos DES encryption support
- Kerberos unconstrained delegation
- Extracting the Kerberos TGT
- NTLMv1

Applications will prompt & expose credentials to risk if they require:
- Digest authentication
- Credential delegation
- MS-CHAPv2

Applications may cause performance issues when they attempt to hook the isolated Credential Guard process. 

### Security considerations

All computers that meet baseline protections for hardware, firmware, and software can use Credential Guard. 
Computers that meet additional qualifications can provide additional protections to further reduce the attack surface.  
The following tables describe baseline protections, plus protections for improved security that are associated with hardware and firmware options available in 2015, 2016, and 2017.

> [!NOTE]  
> Beginning with Windows 10, version 1607, Trusted Platform Module (TPM 2.0) must be enabled by default on new shipping computers. <br>
> If you are an OEM, see [PC OEM requirements for Device Guard and Credential Guard](https://msdn.microsoft.com/library/windows/hardware/mt767514.aspx).<br>

#### Baseline protections

|Baseline Protections                   | Description                                        |
|---------------------------------------------|----------------------------------------------------|
| Hardware: **64-bit CPU**              | A 64-bit computer is required for the Windows hypervisor to provide VBS. |
| Hardware: **CPU virtualization extensions**,<br>plus **extended page tables** | **Requirements**: These hardware features are required for VBS:<br>One of the following virtualization extensions:<br>• VT-x (Intel) or<br>• AMD-V<br>And:<br>• Extended page tables, also called Second Level Address Translation (SLAT).<br><br>**Security benefits**: VBS provides isolation of secure kernel from normal operating system. Vulnerabilities and Day 0s in normal operating system cannot be exploited because of this isolation. |
| Hardware: **Trusted Platform Module (TPM)**  |  **Requirement**: TPM 1.2 or TPM 2.0, either discrete or firmware.<br>[TPM recommendations](https://technet.microsoft.com/itpro/windows/keep-secure/tpm-recommendations)<br><br>**Security benefits**: A TPM provides protection for VBS encryption keys that are stored in the firmware. This helps protect against attacks involving a physically present user with BIOS access. |
| Firmware: **UEFI firmware version 2.3.1.c or higher with UEFI Secure Boot** | **Requirements**: See the following Windows Hardware Compatibility Program requirement: [System.Fundamentals.Firmware.UEFISecureBoot](http://msdn.microsoft.com/library/windows/hardware/dn932805.aspx#system-fundamentals-firmware-uefisecureboot)<br><br>**Security benefits**: UEFI Secure Boot helps ensure that the device boots only authorized code. This can prevent boot kits and root kits from installing and persisting across reboots.  |
| Firmware: **Secure firmware update process**      | **Requirements**: UEFI firmware must support secure firmware update found under the following Windows Hardware Compatibility Program requirement: [System.Fundamentals.Firmware.UEFISecureBoot](http://msdn.microsoft.com/library/windows/hardware/dn932805.aspx#system-fundamentals-firmware-uefisecureboot).<br><br>**Security benefits**: UEFI firmware just like software can have security vulnerabilities that, when found, need to be patched through firmware updates. Patching helps prevent root kits from getting installed. |
| Software: Qualified **Windows operating system**  | **Requirement**: Windows 10 Enterprise, Windows 10 Education, Windows Server 2016, or Windows 10 IoT Enterprise<br><blockquote><p><strong>Important:</strong><br> Windows Server 2016 running as a domain controller does not support Credential Guard. Only Device Guard is supported in this configuration.</p></blockquote><br>**Security benefits**: Support for VBS and for management features that simplify configuration of Credential Guard. |

> [!IMPORTANT]
> The following tables list additional qualifications for improved security. We strongly recommend meeting the additional qualifications to significantly strengthen the level of security that Credential Guard can provide.

#### 2015 Additional security qualifications starting with Windows 10, version 1507, and Windows Server 2016 Technical Preview 4

| Protections for Improved Security          | Description                                        |
|---------------------------------------------|----------------------------------------------------|
| Hardware: **IOMMU** (input/output memory management unit)  |  **Requirement**: VT-D or AMD Vi IOMMU<br><br>**Security benefits**: An IOMMU can enhance system resiliency against memory attacks. For more information, see [ACPI description tables](https://msdn.microsoft.com/windows/hardware/drivers/bringup/acpi-system-description-tables). |
| Firmware: **Securing Boot Configuration and Management** | **Requirements**:<br>• BIOS password or stronger authentication must be supported.<br>• In the BIOS configuration, BIOS authentication must be set.<br>• There must be support for protected BIOS option to configure list of permitted boot devices (for example, “Boot only from internal hard drive”) and boot device order, overriding BOOTORDER modification made by operating system.<br>• In the BIOS configuration, BIOS options related to security and boot options (list of permitted boot devices, boot order) must be secured to prevent other operating systems from starting and to prevent changes to the BIOS settings.<br><br>**Security benefits**:<br>• BIOS password or stronger authentication helps ensure that only authenticated Platform BIOS administrators can change BIOS settings. This helps protect against a physically present user with BIOS access.<br>• Boot order when locked provides protection against the computer being booted into WinRE or another operating system on bootable media. |
| Firmware: **Secure MOR, revision 2 implementation**  |  **Requirement**: Secure MOR, revision 2 implementation<br><br>**Security benefits**: A secure MOR bit prevents advanced memory attacks. For more information, see [Secure MOR implementation](https://msdn.microsoft.com/windows/hardware/drivers/bringup/device-guard-requirements). |

<br>

#### 2016 Additional security qualifications starting with Windows 10, version 1607, and Windows Server 2016

> [!IMPORTANT]
> The following tables list additional qualifications for improved security. Systems that meet these additional qualifications can provide more protections.

| Protections for Improved Security         | Description                                        |
|---------------------------------------------|----------------------------------------------------|
| Firmware: **Hardware Rooted Trust Platform Secure Boot** | **Requirements**:<br>Boot Integrity (Platform Secure Boot) must be supported. See the Windows Hardware Compatibility Program requirements under [System.Fundamentals.Firmware.CS.UEFISecureBoot.ConnectedStandby](https://msdn.microsoft.com/library/windows/hardware/dn932807(v=vs.85).aspx#system_fundamentals_firmware_cs_uefisecureboot_connectedstandby)<br>• The Hardware Security Test Interface (HSTI) must be implemented. See [Hardware Security Testability Specification](https://msdn.microsoft.com/en-us/library/windows/hardware/mt712332(v=vs.85).aspx).<br><br>**Security benefits**:<br>• Boot Integrity (Platform Secure Boot) from Power-On provides protections against physically present attackers, and defense-in-depth against malware.<br>• HSTI provides additional security assurance for correctly secured silicon and platform. |
| Firmware: **Firmware Update through Windows Update** | **Requirements**: Firmware must support field updates through Windows Update and UEFI encapsulation update.<br><br>**Security benefits**: Helps ensure that firmware updates are fast, secure, and reliable. |
| Firmware: **Securing Boot Configuration and Management** | **Requirements**:<br>• Required BIOS capabilities: Ability of OEM to add ISV, OEM, or Enterprise Certificate in Secure Boot DB at manufacturing time.<br>• Required configurations: Microsoft UEFI CA must be removed from Secure Boot DB. Support for 3rd-party UEFI modules is permitted but should leverage ISV-provided certificates or OEM certificate for the specific UEFI software.<br><br>**Security benefits**:<br>• Enterprises can choose to allow proprietary EFI drivers/applications to run.<br>• Removing Microsoft UEFI CA from Secure Boot DB provides full control to enterprises over software that runs before the operating system boots. |

<br>

#### 2017 Additional security qualifications starting with Windows 10, version 1703 

The following table lists qualifications for Windows 10, version 1703, which are in addition to all preceding qualifications. 

| Protection for Improved Security          | Description                                        |
|---------------------------------------------|----------------------------------------------------|
| Firmware: **VBS enablement of NX protection for UEFI runtime services** | **Requirements**:<br>• VBS will enable No-Execute (NX) protection on UEFI runtime service code and data memory regions. UEFI runtime service code must support read-only page protections, and UEFI runtime service data must not be exceutable.<br>• UEFI runtime service must meet these requirements: <br>&nbsp;&nbsp;&nbsp;&nbsp;- Implement UEFI 2.6 EFI_MEMORY_ATTRIBUTES_TABLE. All UEFI runtime service memory (code and data) must be described by this table. <br>&nbsp;&nbsp;&nbsp;&nbsp;- PE sections need to be page-aligned in memory (not required for in non-volitile storage).<br>&nbsp;&nbsp;&nbsp;&nbsp;- The Memory Attributes Table needs to correctly mark code and data as RO/NX for configuration by the OS:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- All entries must include attributes EFI_MEMORY_RO, EFI_MEMORY_XP, or both <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- No entries may be left with neither of the above attributes, indicating memory that is both exceutable and writable. Memory must be either readable and executable or writeable and non-executable. <br><blockquote><p><strong>Notes:</strong><br>• This only applies to UEFI runtime service memory, and not UEFI boot service memory. <br>• This protection is applied by VBS on OS page tables.</p></blockquote><br> Please also note the following: <br>• Do not use sections that are both writeable and exceutable<br>• Do not attempt to directly modify executable system memory<br>• Do not use dynamic code<br><br>**Security benefits**:<br>• Vulnerabilities in UEFI runtime, if any, will be blocked from compromising VBS (such as in functions like UpdateCapsule and SetVariable)<br>• Reduces the attack surface to VBS from system firmware.     |
| Firmware: **Firmware support for SMM protection** | **Requirements**: The [Windows SMM Security Mitigations Table (WSMT) specification](http://download.microsoft.com/download/1/8/A/18A21244-EB67-4538-BAA2-1A54E0E490B6/WSMT.docx) contains details of an Advanced Configuration and Power Interface (ACPI) table that was created for use with Windows operating systems that support Windows virtualization-based security (VBS) features.<br><br>**Security benefits**:<br>• Protects against potential vulnerabilities in UEFI runtime services, if any, will be blocked from compromising VBS (such as in functions like UpdateCapsule and SetVariable)<br>• Reduces the attack surface to VBS from system firmware.<br>• Blocks additional security attacks against SMM. |

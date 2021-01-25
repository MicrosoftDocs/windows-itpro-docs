---
title: Windows Defender Credential Guard Requirements (Windows 10)
description: Windows Defender Credential Guard baseline hardware, firmware, and software requirements, and additional protections for improved security.
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: dansimp
ms.author: dansimp
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
ms.date: 09/30/2020
ms.reviewer: 
---

# Windows Defender Credential Guard: Requirements

## Applies to

- Windows 10 Enterprise
- Windows Server 2016

For Windows Defender Credential Guard to provide protection, the computers you are protecting must meet certain baseline hardware, firmware, and software requirements, which we will refer to as [Hardware and software requirements](#hardware-and-software-requirements). Additionally, Windows Defender Credential Guard blocks specific authentication capabilities, so applications that require such capabilities will break. We will refer to these requirements as [Application requirements](#application-requirements). Beyond these requirements, computers can meet additional hardware and firmware qualifications, and receive additional protections. Those computers will be more hardened against certain threats. For detailed information on baseline protections, plus protections for improved security that are associated with hardware and firmware options available in 2015, 2016, and 2017, refer to the tables in [Security Considerations](#security-considerations).

## Hardware and software requirements

To provide basic protections against OS level attempts to read Credential Manager domain credentials, NTLM and Kerberos derived credentials, Windows Defender Credential Guard uses:

- Support for Virtualization-based security (required)
- Secure boot (required)
- Trusted Platform Module (TPM, preferred - provides binding to hardware) versions 1.2 and 2.0 are supported, either discrete or firmware
- UEFI lock (preferred - prevents attacker from disabling with a simple registry key change)

The Virtualization-based security requires:

- 64-bit CPU
- CPU virtualization extensions plus extended page tables
- Windows hypervisor (does not require Hyper-V Windows Feature to be installed)

### Windows Defender Credential Guard deployment in virtual machines

Credential Guard can protect secrets in a Hyper-V virtual machine, just as it would on a physical machine. When Credential Guard is deployed on a VM, secrets are protected from attacks inside the VM. Credential Guard does not provide additional protection from privileged system attacks originating from the host.

#### Requirements for running Windows Defender Credential Guard in Hyper-V virtual machines

- The Hyper-V host must have an IOMMU, and run at least Windows Server 2016 or Windows 10 version 1607.
- The Hyper-V virtual machine must be Generation 2, have an enabled virtual TPM, and be running at least Windows Server 2016 or Windows 10.
  - TPM is not a requirement, but we recommend that you implement TPM.

For information about other host platforms, see [Enabling Windows Server 2016 and Hyper-V virtualization based security features on other platforms](https://blogs.technet.microsoft.com/windowsserver/2016/09/29/enabling-windows-server-2016-and-hyper-v-virtualization-based-security-features-on-other-platforms/).

For information about Windows Defender Remote Credential Guard hardware and software requirements, see [Windows Defender Remote Credential Guard requirements](https://docs.microsoft.com/windows/access-protection/remote-credential-guard#hardware-and-software-requirements).

## Application requirements

When Windows Defender Credential Guard is enabled, specific authentication capabilities are blocked, so applications that require such capabilities will break. Applications should be tested prior to deployment to ensure compatibility with the reduced functionality.

> [!WARNING]
> Enabling Windows Defender Credential Guard on domain controllers is not supported.
> The domain controller hosts authentication services which integrate with processes isolated when Windows Defender Credential Guard is enabled, causing crashes.

> [!NOTE]
> Windows Defender Credential Guard does not provide protections for the Active Directory database or the Security Accounts Manager (SAM). The credentials protected by Kerberos and NTLM when Windows Defender Credential Guard is enabled are also in the Active Directory database (on domain controllers) and the SAM (for local accounts).

Applications will break if they require:

- Kerberos DES encryption support
- Kerberos unconstrained delegation
- Extracting the Kerberos TGT
- NTLMv1

Applications will prompt and expose credentials to risk if they require:

- Digest authentication
- Credential delegation
- MS-CHAPv2

Applications may cause performance issues when they attempt to hook the isolated Windows Defender Credential Guard process.

Services or protocols that rely on Kerberos, such as file shares, remote desktop, or BranchCache, continue to work and are not affected by Windows Defender Credential Guard.

## Security considerations

All computers that meet baseline protections for hardware, firmware, and software can use Windows Defender Credential Guard.
Computers that meet additional qualifications can provide additional protections to further reduce the attack surface.
The following tables describe baseline protections, plus protections for improved security that are associated with hardware and firmware options available in 2015, 2016, and 2017.

> [!NOTE]
> Beginning with Windows 10, version 1607, Trusted Platform Module (TPM 2.0) must be enabled by default on new shipping computers.
>
> If you are an OEM, see [PC OEM requirements for Windows Defender Credential Guard](https://msdn.microsoft.com/library/windows/hardware/mt767514.aspx).

### Baseline protections

|Baseline Protections|Description|Security benefits
|---|---|---|
|Hardware: **64-bit CPU**        |A 64-bit computer is required for the Windows hypervisor to provide VBS.|
|Hardware: **CPU virtualization extensions**, plus **extended page tables**|**Requirements**: </br> - These hardware features are required for VBS: One of the following virtualization extensions: - VT-x (Intel) or - AMD-V And: - Extended page tables, also called Second Level Address Translation (SLAT).|VBS provides isolation of secure kernel from normal operating system. </br></br> Vulnerabilities and Day 0s in normal operating system cannot be exploited because of this isolation.|
|Hardware: **Trusted Platform Module (TPM)**|**Requirement**: </br> - TPM 1.2 or TPM 2.0, either discrete or firmware. [TPM recommendations](https://technet.microsoft.com/itpro/windows/keep-secure/tpm-recommendations)|A TPM provides protection for VBS encryption keys that are stored in the firmware. TPM helps protect against attacks involving a physically present user with BIOS access.|
|Firmware: **UEFI firmware version 2.3.1.c or higher with UEFI Secure Boot**|**Requirements**: </br> - See the following Windows Hardware Compatibility Program requirement: System.Fundamentals.Firmware.UEFISecureBoot|UEFI Secure Boot helps ensure that the device boots only authorized code, and can prevent boot kits and root kits from installing and persisting across reboots.|
|Firmware: **Secure firmware update process**|**Requirements**: </br> - UEFI firmware must support secure firmware update found under the following Windows Hardware Compatibility Program requirement: System.Fundamentals.Firmware.UEFISecureBoot.|UEFI firmware just like software can have security vulnerabilities that, when found, need to be patched through firmware updates. Patching helps prevent root kits from getting installed.|
|Software: Qualified **Windows operating system**|**Requirement**: </br> - Windows 10 or Windows Server 2016.|Support for VBS and for management features that simplify configuration of Windows Defender Credential Guard.|

> [!IMPORTANT]
> Windows Server 2016 running as a domain controller does not support Windows Defender Credential Guard.

> [!IMPORTANT]
> The following tables list additional qualifications for improved security. We strongly recommend meeting the additional qualifications to significantly strengthen the level of security that Windows Defender Credential Guard can provide.

### 2015 Additional security qualifications starting with Windows 10, version 1507, and Windows Server 2016 Technical Preview 4

|Protections for Improved Security|Description|
|---|---|
|Hardware: **IOMMU** (input/output memory management unit)|**Requirement**: </br> - VT-D or AMD Vi IOMMU </br> </br> **Security benefits**: </br> - An IOMMU can enhance system resiliency against memory attacks. For more information, see [Advanced Configuration and Power Interface (ACPI) description tables](https://msdn.microsoft.com/windows/hardware/drivers/bringup/acpi-system-description-tables)|
|Firmware: **Securing Boot Configuration and Management**|**Requirements**: </br> - BIOS password or stronger authentication must be supported. </br> - In the BIOS configuration, BIOS authentication must be set. </br> - There must be support for protected BIOS option to configure list of permitted boot devices (for example, “Boot only from internal hard drive”) and boot device order, overriding BOOTORDER modification made by operating system. </br> - In the BIOS configuration, BIOS options related to security and boot options (list of permitted boot devices, boot order) must be secured to prevent other operating systems from starting and to prevent changes to the BIOS settings.|
|Firmware: **Secure MOR, revision 2 implementation**|**Requirement**: </br> - Secure MOR, revision 2 implementation|

### 2016 Additional security qualifications starting with Windows 10, version 1607, and Windows Server 2016

> [!IMPORTANT]
> The following tables list additional qualifications for improved security. Systems that meet these additional qualifications can provide more protections.

|Protections for Improved Security|Description|Security Benefits|
|---|---|---|
|Firmware: **Hardware Rooted Trust Platform Secure Boot**|**Requirements**: </br> - Boot Integrity (Platform Secure Boot) must be supported. See the Windows Hardware Compatibility Program requirements under System.Fundamentals.Firmware.CS.UEFISecureBoot.ConnectedStandby</br> - The Hardware Security Test Interface (HSTI) must be implemented. See [Hardware Security Testability Specification](https://msdn.microsoft.com/library/windows/hardware/mt712332(v=vs.85).aspx).|Boot Integrity (Platform Secure Boot) from Power-On provides protections against physically present attackers, and defense-in-depth against malware. </br> - HSTI provides additional security assurance for correctly secured silicon and platform.|
|Firmware: **Firmware Update through Windows Update**|**Requirements**: </br> - Firmware must support field updates through Windows Update and UEFI encapsulation update.|Helps ensure that firmware updates are fast, secure, and reliable.|
|Firmware: **Securing Boot Configuration and Management**|**Requirements**: </br> - Required BIOS capabilities: Ability of OEM to add ISV, OEM, or Enterprise Certificate in Secure Boot DB at manufacturing time. </br> - Required configurations: Microsoft UEFI CA must be removed from Secure Boot DB. Support for 3rd-party UEFI modules is permitted but should leverage ISV-provided certificates or OEM certificate for the specific UEFI software.|- Enterprises can choose to allow proprietary EFI drivers/applications to run. </br> - Removing Microsoft UEFI CA from Secure Boot DB provides full control to enterprises over software that runs before the operating system boots.|

### 2017 Additional security qualifications starting with Windows 10, version 1703

The following table lists qualifications for Windows 10, version 1703, which are in addition to all preceding qualifications.

|Protections for Improved Security|Description|Security Benefits
|---|---|---|
|Firmware: **VBS enablement of No-Execute (NX) protection for UEFI runtime services**|**Requirements**: </br> - VBS will enable NX protection on UEFI runtime service code and data memory regions. UEFI runtime service code must support read-only page protections, and UEFI runtime service data must not be executable. UEFI runtime service must meet these requirements: </br> - Implement UEFI 2.6 EFI_MEMORY_ATTRIBUTES_TABLE. All UEFI runtime service memory (code and data) must be described by this table. </br> - PE sections must be page-aligned in memory (not required for in non-volatile storage). </br> - The Memory Attributes Table needs to correctly mark code and data as RO/NX for configuration by the OS: </br> - All entries must include attributes EFI_MEMORY_RO, EFI_MEMORY_XP, or both. </br> - No entries may be left with neither of the above attributes, indicating memory that is both executable and writable. Memory must be either readable and executable or writable and non-executable. </br> (**SEE IMPORTANT INFORMATION AFTER THIS TABLE**)|Vulnerabilities in UEFI runtime, if any, will be blocked from compromising VBS (such as in functions like UpdateCapsule and SetVariable) </br> - Reduces the attack surface to VBS from system firmware.|
|Firmware: **Firmware support for SMM protection**|**Requirements**: </br> - The [Windows SMM Security Mitigations Table (WSMT) specification](https://download.microsoft.com/download/1/8/A/18A21244-EB67-4538-BAA2-1A54E0E490B6/WSMT.docx) contains details of an ACPI table that was created for use with Windows operating systems that support Windows virtualization-based security (VBS) features.|- Protects against potential vulnerabilities in UEFI runtime services, if any, will be blocked from compromising VBS (such as in functions like UpdateCapsule and SetVariable) </br> - Reduces the attack surface to VBS from system firmware. </br> - Blocks additional security attacks against SMM.|

> [!IMPORTANT]
>
> Regarding **VBS enablement of NX protection for UEFI runtime services**:
>
> - This only applies to UEFI runtime service memory, and not UEFI boot service memory.
>
> - This protection is applied by VBS on OS page tables.
>
>   Please also note the following:
>
>   - Do not use sections that are both writable and executable
>
>   - Do not attempt to directly modify executable system memory
>
>   - Do not use dynamic code

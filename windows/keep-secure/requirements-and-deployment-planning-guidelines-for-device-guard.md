---
title: Requirements and deployment planning guidelines for Device Guard (Windows 10)
description: To help you plan a deployment of Microsoft Device Guard, this article describes hardware requirements for Device Guard, outlines deployment approaches, and describes methods for code signing and the deployment of code integrity policies. 
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
localizationpriority: high
author: brianlic-msft
---

# Requirements and deployment planning guidelines for Device Guard

**Applies to**
-   Windows 10
-   Windows Server 2016

This article describes the following:

- [Hardware, firmware, and software requirements for Device Guard](#hardware-firmware-and-software-requirements-for-device-guard)
    - [Device Guard requirements for baseline protections](#device-guard-requirements-for-baseline-protections)
    - [Device Guard requirements for improved security](#device-guard-requirements-for-improved-security)
- [Device Guard deployment in different scenarios: types of devices](#device-guard-deployment-in-different-scenarios-types-of-devices)	
- [Reviewing your applications: application signing and catalog files](#reviewing-your-applications-application-signing-and-catalog-files)
- [Code integrity policy formats and signing](#code-integrity-policy-formats-and-signing)

The information in this article provides a foundation for [Planning and getting started on the Device Guard deployment process](planning-and-getting-started-on-the-device-guard-deployment-process.md).

## Hardware, firmware, and software requirements for Device Guard

To deploy Device Guard in a way that uses all of its virtualization-based security (VBS) features, the computers you are protecting must meet certain hardware, firmware, and software requirements. However, computers lacking some of the hardware and firmware requirements will still receive some protection when you deploy code integrity policies—the difference is that those computers will not be as hardened against certain threats. 

For example, hardware that includes CPU virtualization extensions and SLAT will be hardened against malware that attempts to gain access to the kernel, but without protected BIOS options such as “Boot only from internal hard drive,” the computer could be booted (by a malicious person who has physical access) into an operating system on bootable media. For an outline of how VBS-related hardware strengthens the hardening offered by Device Guard, see [Introduction to Device Guard: virtualization-based security and code integrity policies](introduction-to-device-guard-virtualization-based-security-and-code-integrity-policies.md).

You can deploy Device Guard in phases, and plan these phases in relation to the computer purchases you plan for your next hardware refresh.

The following tables provide more information about the hardware, firmware, and software required for deployment of various Device Guard features. The tables describe baseline protections, plus protections for improved security that are associated with hardware and firmware options available in 2015, available in 2016, and announced as options for 2017.

> **Notes**
> - To understand the requirements in the following tables, you will need to be familiar with the main features in Device Guard: configurable code integrity policies, virtualization-based security (VBS), and Universal Extensible Firmware Interface (UEFI) Secure Boot. For information about these features, see [How Device Guard features help protect against threats](introduction-to-device-guard-virtualization-based-security-and-code-integrity-policies.md#how-device-guard-features-help-protect-against-threats).
> - For new computers running Windows 10, Trusted Platform Module (TPM 2.0) must be enabled by default. This requirement is not restated in the tables that follow.

## Device Guard requirements for baseline protections

|Baseline Protections - requirement           | Description                                        |
|---------------------------------------------|----------------------------------------------------|
| Hardware: **64-bit CPU**              | A 64-bit computer is required for the Windows hypervisor to provide VBS. |
| Hardware: **CPU virtualization extensions**,<br>plus **extended page tables** | **Requirements**: These hardware features are required for VBS:<br>One of the following virtualization extensions:<br>- VT-x (Intel) or<br>- AMD-V<br>And:<br>- Extended page tables, also called Second Level Address Translation (SLAT).<br><br>**Security benefits**: VBS provides isolation of secure kernel from normal operating system. Vulnerabilities and Day 0s in normal operating system cannot be exploited because of this isolation. |
| Firmware: **UEFI firmware version 2.3.1.c or higher with UEFI Secure Boot** | **Requirements**: See the following Windows Hardware Compatibility Program requirement: [System.Fundamentals.Firmware.UEFISecureBoot](http://msdn.microsoft.com/library/windows/hardware/dn932805.aspx#system-fundamentals-firmware-uefisecureboot)<br><br>**Security benefits**: UEFI Secure Boot helps ensure that the device boots only authorized code. This can prevent boot kits and root kits from installing and persisting across reboots.  |
| Firmware: **Secure firmware update process**      | **Requirements**: UEFI firmware must support secure firmware update found under the following Windows Hardware Compatibility Program requirement: [System.Fundamentals.Firmware.UEFISecureBoot](http://msdn.microsoft.com/library/windows/hardware/dn932805.aspx#system-fundamentals-firmware-uefisecureboot).<br><br>**Security benefits**: UEFI firmware just like software can have security vulnerabilities that, when found, need to be patched through firmware updates. Patching helps prevent root kits from getting installed. |
| Software: **HVCI compatible drivers**       | **Requirements**: See the Windows Hardware Compatibility Program requirements under [Filter.Driver.DeviceGuard.DriverCompatibility](https://msdn.microsoft.com/library/windows/hardware/mt589732(v=vs.85).aspx).<br><br>**Security benefits**: [HVCI Compatible](https://blogs.msdn.microsoft.com/windows_hardware_certification/2015/05/22/driver-compatibility-with-device-guard-in-windows-10/) drivers help ensure that VBS can maintain appropriate memory permissions. This increases resistance to bypassing vulnerable kernel drivers and helps ensure that malware cannot run in kernel. Only code verified through code integrity can run in kernel mode. |
| Software: Qualified **Windows operating system**  | **Requirement**: Windows 10 Enterprise, Windows 10 Education, Windows 2016 Server, or Windows Enterprise IoT<br><br>**Security benefits**: Support for VBS and for management features that simplify configuration of Device Guard. |

> **Important**&nbsp;&nbsp;The preceding table lists requirements for baseline protections. The following tables list requirements for improved security. You can use Device Guard with hardware, firmware, and software that support baseline protections, even if they do not support protections for improved security. However, we strongly recommend meeting the requirements for improved security, to significantly strengthen the level of security that Device Guard can provide.

## Device Guard requirements for improved security

The following tables describes additional hardware and firmware requirements, and the improved security that is available when those requirements are met.

### 2015 Additional Qualification Requirements for Device Guard (starting with Windows 10, version 1507, and Windows Server 2016, Technical Preview 4)

| Protections for Improved Security - requirement         | Description                                        |
|---------------------------------------------|----------------------------------------------------|
| Firmware: **Securing Boot Configuration and Management** | **Requirements**:<br>- BIOS password or stronger authentication must be supported.<br>- In the BIOS configuration, BIOS authentication must be set.<br>- There must be support for protected BIOS option to configure list of permitted boot devices (for example, “Boot only from internal hard drive”) and boot device order, overriding BOOTORDER modification made by operating system.<br>- In the BIOS configuration, BIOS options related to security and boot options (list of permitted boot devices, boot order) must be secured to prevent other operating systems from starting and to prevent changes to the BIOS settings.<br><br>**Security benefits**:<br>- BIOS password or stronger authentication helps ensure that only authenticated Platform BIOS administrators can change BIOS settings. This helps protect against a physically present user with BIOS access.<br>- Boot order when locked provides protection against the computer being booted into WinRE or another operating system on bootable media. |

<br>

### 2016 Additional Qualification Requirements for Device Guard (starting with Windows 10, version 1607, and Windows Server 2016)

> **Important**&nbsp;&nbsp;The following tables list requirements for improved security, beyond the level of protection described in the preceding tables. You can use Device Guard with hardware, firmware, and software that do not support the following protections for improved security. As your systems meet more requirements, more protections become available to them.

| Protections for Improved Security - requirement         | Description                                        |
|---------------------------------------------|----------------------------------------------------|
| Firmware: **Hardware Rooted Trust Platform Secure Boot** | **Requirements**:<br>Boot Integrity (Platform Secure Boot) must be supported. See the Windows Hardware Compatibility Program requirements under [System.Fundamentals.Firmware.CS.UEFISecureBoot.ConnectedStandby](https://msdn.microsoft.com/library/windows/hardware/dn932807(v=vs.85).aspx#system_fundamentals_firmware_cs_uefisecureboot_connectedstandby)<br>- The Hardware Security Test Interface (HSTI) must be implemented. See [Hardware Security Testability Specification](https://msdn.microsoft.com/en-us/library/windows/hardware/mt712332(v=vs.85).aspx).<br><br>**Security benefits**:<br>- Boot Integrity (Platform Secure Boot) from Power-On provides protections against physically present attackers, and defense-in-depth against malware.<br>- HSTI provides additional security assurance for correctly secured silicon and platform. |
| Firmware: **Firmware Update through Windows Update** | **Requirements**: Firmware must support field updates through Windows Update and UEFI encapsulation update.<br><br>**Security benefits**: Helps ensure that firmware updates are fast, secure, and reliable. |
| Firmware: **Securing Boot Configuration and Management** | **Requirements**:<br>- Required BIOS capabilities: Ability of OEM to add ISV, OEM, or Enterprise Certificate in Secure Boot DB at manufacturing time.<br>- Required configurations: Microsoft UEFI CA must be removed from Secure Boot DB. Support for 3rd-party UEFI modules is permitted but should leverage ISV-provided certificates or OEM certificate for the specific UEFI software.<br><br>**Security benefits**:<br>- Enterprises can choose to allow proprietary EFI drivers/applications to run.<br>- Removing Microsoft UEFI CA from Secure Boot DB provides full control to enterprises over software that runs before the operating system boots. |

<br>

### 2017 Additional Qualification Requirements for Device Guard (announced as options for future Windows operating systems for 2017) 

| Protections for Improved Security - requirement         | Description                                        |
|---------------------------------------------|----------------------------------------------------|
| Firmware: **UEFI NX Protections**  | **Requirements**:<br>- All UEFI memory that is marked executable must be read only. Memory marked writable must not be executable.<br><br>UEFI Runtime Services:<br>- Must implement the UEFI 2.6 EFI_MEMORY_ATTRIBUTES_TABLE. The entire UEFI runtime must be described by this table.<br>- All entries must include attributes EFI_MEMORY_RO, EFI_MEMORY_XP, or both.<br>- No entries may be left with neither of the above attributes, indicating memory that is both executable and writable. Memory MUST be either readable and executable OR writeable and non-executable.<br><br>**Security benefits**:<br>- Protects against potential vulnerabilities in UEFI runtime in functions such as Update Capsule, Set Variables, and so on, so they can't compromise VBS.<br>- Reduces attack surface to VBS from system firmware. |
| Firmware: **Firmware support for SMM protection** | **Requirements**: The [Windows SMM Security Mitigations Table (WSMT) specification](http://download.microsoft.com/download/1/8/A/18A21244-EB67-4538-BAA2-1A54E0E490B6/WSMT.docx) contains details of an Advanced Configuration and Power Interface (ACPI) table that was created for use with Windows operating systems that support Windows virtualization-based security (VBS) features.<br><br>**Security benefits**:<br>- Protects against potential vulnerabilities in UEFI runtime in functions such as Update Capsule, Set Variables, and so on, so they can't compromise VBS.<br>- Reduces attack surface to VBS from system firmware.<br>- Blocks additional security attacks against SMM. |

## Device Guard deployment in different scenarios: types of devices

Typically, deployment of Device Guard happens best in phases, rather than being a feature that you simply “turn on.” The choice and sequence of phases depends on the way various computers and other devices are used in your organization, and to what degree IT manages those devices. The following table can help you begin to develop a plan for deploying Device Guard in your organization.

| **Type of device**                 | **How Device Guard relates to this type of device**  | **Device Guard components that you can use to protect this kind of device**    |
|------------------------------------|------------------------------------------------------|--------------------------------------------------------------------------------|
| **Fixed-workload devices**: Perform same tasks every day.<br>Lists of approved applications rarely change.<br>Examples: kiosks, point-of-sale systems, call center computers. | Device Guard can be deployed fully, and deployment and ongoing administration are relatively straightforward.<br>After Device Guard deployment, only approved applications can run. This is because of protections offered by the Hypervisor Code Integrity (HVCI) service. | - VBS (hardware-based) protections, enabled.<br><br>- Code integrity policies in enforced mode, with UMCI enabled. |
| **Fully managed devices**: Allowed software is restricted by IT department.<br>Users can request additional software, or install from a list of applications provided by IT department.<br>Examples: locked-down, company-owned desktops and laptops. | An initial baseline code integrity policy can be established and enforced. Whenever the IT department approves additional applications, it will update the code integrity policy and (for unsigned LOB applications) the catalog.<br>Code integrity policies are supported by the HVCI service. | - VBS (hardware-based) protections, enabled.<br><br>- Code integrity policies in enforced mode, with UMCI enabled. |
| **Lightly managed devices**: Company-owned, but users are free to install software.<br>Devices are required to run organization's antivirus solution and client management tools. | Device Guard can be used to help protect the kernel, and to monitor (audit) for problem applications rather than limiting the applications that can be run. | - VBS (hardware-based) protections, enabled. When enabled with a code integrity policy in audit mode only, VBS means the hypervisor helps enforce the default kernel-mode code integrity policy, which protects against unsigned drivers or system files.<br><br>- Code integrity policies, with UMCI enabled, but running in audit mode only. This means applications are not blocked—the policy just logs an event whenever an application outside the policy is started.  |
| **Bring Your Own Device**: Employees are allowed to bring their own devices, and also use those devices away from work. | Device Guard does not apply. Instead, you can explore other hardening and security features with MDM-based conditional access solutions, such as Microsoft Intune. | N/A | 

## Reviewing your applications: application signing and catalog files 

Typically, code integrity policies are configured to use the application's signing certificate as part or all of what identifies the application as trusted. This means that applications must either use embedded signing—where the signature is part of the binary—or catalog signing, where you generate a “catalog file” from the applications, sign it, and through the signed catalog file, configure the code integrity policy to recognize the applications as signed.

Catalog files can be very useful for unsigned LOB applications that cannot easily be given an embedded signature. However, catalogs need to be updated each time an application is updated. In contrast, with embedded signing, your code integrity policies typically do not have to be updated when an application is updated. For this reason, if code-signing is or can be included in your in-house application development process, it can simplify the management of your code integrity policies (compared to using catalog signing).

To obtain signed applications or embed signatures in your in-house applications, you can choose from a variety of methods:

- Using the Windows Store publishing process. All apps that come out of the Microsoft Store are automatically signed with special signatures that can roll-up to our certificate authority (CA) or to your own.

- Using your own digital certificate or public key infrastructure (PKI). ISV's and enterprises can sign their own Classic Windows applications themselves, adding themselves to the trusted list of signers.

- Using a non-Microsoft signing authority. ISV's and enterprises can use a trusted non-Microsoft signing authority to sign all of their own Classic Windows applications.

To use catalog signing, you can choose from the following options:

- Use the Device Guard signing portal available in the Windows Store for Business. The portal is a Microsoft web service that you can use to sign your Classic Windows applications. For more information, see [Device Guard signing](https://technet.microsoft.com/itpro/windows/manage/device-guard-signing-portal).

- Create your own catalog files, which are described in the next section. For information about how creating catalog files fits into Device Guard deployment, see [Planning and getting started on the Device Guard deployment process](planning-and-getting-started-on-the-device-guard-deployment-process.md).

### Catalog files

Catalog files (which you can create in Windows 10 with a tool called Package Inspector) contain information about all deployed and executed binary files associated with your trusted but unsigned applications. When you create catalog files, you can also include signed applications for which you do not want to trust the signer but rather the specific application. After creating a catalog, you must sign the catalog file itself by using enterprise public key infrastructure (PKI), or a purchased code signing certificate. Then you can distribute the catalog, so that your trusted applications can be handled by code integrity policies in the same way as any other signed application.

Catalog files are simply Secure Hash Algorithm 2 (SHA2) hash lists of discovered binaries. These binaries’ hash values are updated each time an application is updated, which requires the catalog file to be updated also.

After you have created and signed your catalog files, you can configure your code integrity policies to trust the signer or signing certificate of those files.

> **Note**&nbsp;&nbsp;Package Inspector only works on operating systems that support Device Guard, such as Windows 10 Enterprise, Windows 10 Education, Windows 2016 Server, or Windows Enterprise IoT.

For information about how creating catalog files fits into Device Guard deployment, see [Planning and getting started on the Device Guard deployment process](planning-and-getting-started-on-the-device-guard-deployment-process.md). For procedures for working with catalog files, see [Deploy catalog files to support code integrity policies](deploy-catalog-files-to-support-code-integrity-policies.md).

## Code integrity policy formats and signing

When you generate a code integrity policy, you are generating a binary-encoded XML document that includes configuration settings for both the User and Kernel-modes of Windows 10 Enterprise, along with restrictions on Windows 10 script hosts. You can view your original XML document in a text editor, for example if you want to check the rule options that are present in the **&lt;Rules&gt;** section of the file.

We recommend that you keep the original XML file for use when you need to merge the code integrity policy with another policy or update its rule options. For deployment purposes, the file is converted to a binary format, which can be done using a simple Windows PowerShell command.

When the code integrity policy is deployed, it restricts the software that can run on a device. The XML document can be signed, helping to add additional protection against administrative users changing or removing the policy. 

## Related topics

- [Planning and getting started on the Device Guard deployment process](planning-and-getting-started-on-the-device-guard-deployment-process.md)
- [Deploy Device Guard: deploy code integrity policies](deploy-device-guard-deploy-code-integrity-policies.md)



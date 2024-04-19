---
title: Operating System security
description: Windows 11 security book - Operating System security chapter.
ms.topic: overview
ms.date: 04/09/2024
---

# System security

## Trusted Boot (Secure Boot + Measured Boot)

Windows 11 requires all PCs to use Unified Extensible Firmware Interface (UEFI)'s Secure Boot feature. When a Windows 11 device starts, Secure Boot and Trusted Boot work together to prevent malware and corrupted components from loading. Secure Boot provides initial protection, then Trusted Boot picks up the process.

Secure Boot makes a safe and trusted path from the Unified Extensible Firmware Interface (UEFI) through the Windows kernel's Trusted Boot sequence. Malware attacks on the Windows boot sequence are blocked by the signature-enforcement handshakes throughout the boot sequence between the UEFI, bootloader, kernel, and application environments.

To reduce the risk of firmware rootkits, the PC verifies that firmware is digitally signed as it begins the boot process. Then Secure Boot checks the OS bootloader's digital signature as well as all code that runs prior to the operating system starting to ensure the signature and code are uncompromised and trusted by the Secure Boot policy.

Trusted Boot picks up the process that begins with Secure Boot. The Windows bootloader verifies the digital signature of the Windows kernel before loading it. The Windows kernel, in turn, verifies every other component of the Windows startup process, including boot drivers, startup files, and any antimalware product's early-launch antimalware (ELAM) driver. If any of these files have been tampered with, the bootloader detects the problem and refuses to load the corrupted component. Often, Windows can automatically repair the corrupted component, restoring the integrity of Windows and allowing the PC to start normally.

Tampering or malware attacks on the Windows boot sequence are blocked by the signature enforcement handshakes between the UEFI, bootloader, kernel, and application environments.

For more information about these features and how they help prevent rootkits and bootkits from loading during the startup process, see [Secure the Windows boot process](../operating-system-security/system-security/secure-the-windows-10-boot-process.md)

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Secure Boot and Trusted Boot](../operating-system-security/system-security/trusted-boot.md)

## Cryptography

Cryptography is designed to protect user and system data. The cryptography stack in Windows 11 extends from the chip to the cloud, enabling Windows, applications, and services to protect system and user secrets. For example, data can be encrypted so that only a specific reader with a unique key can read it. As a basis for data security, cryptography helps prevent anyone except the intended recipient from reading data, performs integrity checks to ensure data is free of tampering, and authenticates identity to ensure that communication is secure. Windows 11 cryptography is certified to meet the Federal Information Processing Standard (FIPS) 140. FIPS 140 certification ensures that US government-approved algorithms are correctly implemented.

Learn more: FIPS 140 validation

Windows cryptographic modules provide low-level primitives such as:

- Random number generators (RNG)
- Support for AES 128/256 with XTS, ECB, CBC, CFB, CCM, and GCM modes of operation; RSA and DSA 2048, 3072, and 4096 key sizes; ECDSA over curves P-256, P-384, P-521
- Hashing (support for SHA1, SHA-256, SHA-384, and SHA-512)
- Signing and verification (padding support for OAEP, PSS, and PKCS1)
- Key agreement and key derivation (support for ECDH over NIST-standard prime curves P-256, P-384, P-521 and HKDF)

Application developers can use these cryptographic modules to perform low-level cryptographic operations (Bcrypt), key storage operations (NCrypt), protect static data (DPAPI), and securely share secrets (DPAPI-NG).

Learn more: Cryptography and certificate management

Developers can access the modules on Windows through the Cryptography Next Generation API (CNG), which is powered by Microsoft's open-source cryptographic library, SymCrypt. SymCrypt supports complete transparency through its open-source code. In addition, SymCrypt offers performance optimization for cryptographic operations by taking advantage of assembly and hardware acceleration when available.

SymCrypt is part of Microsoft's commitment to transparency, which includes the global Microsoft Government Security Program that aims to provide the confidential security information and resources people need to trust Microsoft's products and services. The program offers controlled access to source code, threat and vulnerability information
exchange, opportunities to engage with technical content about Microsoft's products and services, and access to five globally distributed Transparency Centers.

## Certificates

To help safeguard and authenticate information, Windows provides comprehensive support for certificates and certificate management. The built-in certificate management command-line utility (certmgr.exe) or MMC snap-in (certmgr.msc) can be used to view and manage certificates, certificate trust lists (CTLs), and
certificate revocation lists (CRLs). Whenever a certificate is used in Windows, we validate that the leaf certificate and all the certificates in its chain of trust have not been revoked or compromised. The CTLs and CRLs on the machine are used as a reference for PKI trust and are updated monthly by the Microsoft Trusted Root program. If a trusted certificate or root is revoked, all global devices will be updated, meaning users can trust that Windows will automatically protect against vulnerabilities in public key infrastructure. For cloud and enterprise deployments, Windows also offers users the ability to auto-enroll and renew certificates in Active Directory with Group Policy to reduce the risk of potential outages due to certificate expiration or misconfiguration. Additionally, enterprise certificate pinning can be used to help reduce man-in-the-middle attacks by enabling users to protect their internal domain names from chaining to unwanted certificates. A web application's server authentication certificate chain is checked to ensure it matches a restricted set of certificate authorities. Any web application triggering a name mismatch will start event logging and prevent user access from Microsoft Edge.

## Code signing and integrity

To ensure that Windows files have not been tampered with, the Windows Code Integrity process verifies the signature of each file in Windows. Code signing is core to establishing the integrity of firmware, drivers, and software across the Windows platform. Code signing creates a digital signature by encrypting the hash of the file with the private key portion of a code-signing certificate and embedding the signature into the file. The Windows code integrity process verifies the signed file by decrypting the signature to check the integrity of the file and confirm that it is from a reputable publisher, ensuring that the file hasn't been tampered with.

The digital signature is evaluated across the Windows environment on Windows boot code, Windows kernel code, and Windows user mode applications. Secure Boot and Code Integrity verify the signature on bootloaders, Option ROMs, and other boot components to ensure that it is trusted and from a reputable publisher. For drivers not published by Microsoft, Kernel Code Integrity verifies the signature on kernel drivers and requires that drivers be signed by Windows or certified by the Windows Hardware Compatibility Program (WHCP). This program ensures that third-party drivers are compatible with various hardware and Windows and that the drivers are from vetted driver developers.

## Device health attestation

The Windows device health attestation process supports a Zero Trust paradigm that shifts the focus from static, network-based perimeters to users, assets, and resources. The attestation process confirms the device, firmware, and boot process are in a good state and have not been tampered with before they can access corporate resources. These
determinations are made with data stored in the TPM, which provides a secure root-of-trust. The information is sent to an attestation service such as Azure Attestation to verify that the device is in a trusted state. Then a modern device management (MDM) tool like Microsoft Intune<sup>[\[9\]](conclusion.md#footnote9)</sup> reviews device health and connects this information with Microsoft Entra ID<sup>[\[9\]](conclusion.md#footnote9)</sup> for conditional access.

Windows includes many security features to help protect users from malware and attacks. However, security components are trustworthy only if the platform boots as expected and is not tampered with. As noted above, Windows relies on Unified Extensible Firmware Interface (UEFI) Secure Boot, ELAM, DRTM, Trusted Boot, and other low-level hardware and firmware security features to protect your PC from attacks. From the moment you power on your PC until your antimalware starts, Windows is backed with the appropriate hardware configurations that help keep you safe. Measured Boot, implemented by bootloaders and BIOS, verifies and cryptographically records each step of the boot in a chained manner. These events are bound to the TPM, that functions as a hardware root-of-trust. Remote attestation is the mechanism by which these events are read and verified by a service to provide a verifiable, unbiased, and tamper-resilient report. Remote attestation is the trusted auditor of your system's boot, allowing reliant parties to bind trust to the device and its security.

A summary of the steps involved in attestation and Zero-Trust on a Windows device are as follows:

- During each step of the boot process - such as a file load, update of special variables, and more - information such as file hashes and signature(s) are measured in the TPM Platform Configuration Register (PCRs). The measurements are bound by a Trusted Computing Group specification that dictates which events can be recorded and the format of each event. The data provides important information about device security from the moment it powers on
- Once Windows has booted, the attestor (or verifier) requests the TPM get the measurements stored in its PCRs alongside the Measured Boot log. Together, these form the attestation evidence that's sent to the Microsoft Azure Attestation Service
- The TPM is verified by using the keys or cryptographic material available on the chipset with an Azure Certificate Service
- The above information is sent to the Azure Attestation Service to verify that the device is in a trusted state.

Learn more: Control the health of Windows devices

## Windows security policy settings and auditing

Security policy settings are a critical part of your overall security strategy. Windows provides a robust set of security setting policies that IT administrators can use to help protect Windows devices and other resources in your organization. Security policies settings are rules you can configure on a device, or multiple devices, to control:

- User authentication to a network or device
- Resources that users are permitted to access
- Whether to record a user or group's actions in the event log
- Membership in a group

Security auditing is one of the most powerful tools that you can use to maintain the integrity of your network and assets. Auditing can help identify attacks, network vulnerabilities, and attacks against high-value targets. You can specify categories of security-related events to create an audit policy tailored to the needs of your organization.

All auditing categories are disabled when Windows is first installed. Before enabling them, follow these steps to create an effective security auditing policy:

1. Identify your most critical resources and activities.
1. Identify the audit settings you need to track them.
1. Assess the advantages and potential costs associated with each resource or setting.
1. Test these settings to validate your choices.
1. Develop plans for deploying and managing your audit policy.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Security policy settings](/windows/security/threat-protection/security-policy-settings/security-policy-settings)
- [Security auditing](/windows/security/threat-protection/auditing/security-auditing-overview)

## Assigned Access

With Assigned Access, Windows devices restrict functionality to pre-selected applications depending on the user and keep individual identities separate, which is ideal for public-facing or shared devices. Configuring a device in Kiosk Mode is a straightforward process. You can do this locally on the device or remotely using modern device management.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Windows kiosks and restricted user experiences](/windows/configuration/assigned-access)

## Config Refresh

With traditional Group Policy, policies were refreshed on a PC when a user signed in and every 90 minutes by default. Administrators could adjust that timing to be shorter to ensure that the PC's policies were compliant with the management settings set by IT.

By contrast, with an MDM solution like Microsoft Intune<sup>[\[9\]](conclusion.md#footnote9)</sup>, policies are refreshed when a user signs in and then at eight-hour intervals by default. But as more available group policies were implemented through MDM, one remaining gap was the longer period between the reapplication of a changed policy.

Config Refresh allows settings in the Policy configuration service provider (CSP) that drift due to misconfiguration, registry edits, or malicious software on a PC to be reset to the value the administrator intended every 90 minutes by default. It is configurable to refresh every 30 minutes if desired. The Policy CSP covers hundreds of settings that were traditionally set with Group Policy and are now set through MDM.

Config Refresh can also be *paused* for a configurable period of time, after which it will be reenabled. This is to support scenarios where a helpdesk technician might need to reconfigure a PC for troubleshooting purposes. It can also be resumed at any time by an administrator.

## Windows security settings

Visibility and awareness of device security and health are key to any action taken. The Windows built-in security settings provide an at-a-glance view of the security status and health of your device. These insights help you identify issues and act to make sure you're protected. You can quickly see the status of your virus and threat protection, firewall and network security, device security controls, and more.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Windows security settings](https://support.microsoft.com/windows/stay-protected-with-windows-security-2ae0363d-0ada-c064-8b56-6a39afb6a963)
- [Windows Security](../operating-system-security/system-security/windows-defender-security-center/windows-defender-security-center.md)

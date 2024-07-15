---
title: Introduction to Windows security
description: System security book.
ms.date: 09/01/2023
ms.topic: tutorial
ms.author: paoloma
ms.collection:
  - essentials-security
content_well_notification:
  - AI-contribution
author: paolomatarazzo
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
ai-usage: ai-assisted
---

# Introduction to Windows security

The acceleration of digital transformation and the expansion of both remote and hybrid work brings new opportunities to organizations, communities, and individuals. This expansion introduces new threats and risks.

Organizations worldwide are adopting a **Zero Trust** security model based on the premise that no person or device anywhere can have access until safety and integrity is proven. Windows 11 is built on Zero Trust principles to enable hybrid productivity and new experiences anywhere, without compromising security. Windows 11 raises the [security baselines](operating-system-security/device-management/windows-security-configuration-framework/windows-security-baselines.md) with new requirements for advanced hardware and software protection that extends from chip to cloud.

## How Windows 11 enables Zero Trust protection

A Zero Trust security model gives the right people the right access at the right time. Zero Trust security is based on three principles:

1. Reduce risk by explicitly verifying data points such as user identity, location, and device health for every access request, without exception
1. When verified, give people and devices access to only necessary resources for the necessary amount of time
1. Use continuous analytics to drive threat detection and improve defenses

For Windows 11, the Zero Trust principle of *verify explicitly* applies to risks introduced by both devices and people. Windows 11 provides *chip-to-cloud security*, enabling IT administrators to implement strong authorization and authentication processes with features like [Windows Hello for Business](identity-protection/hello-for-business/index.md). IT administrators also gain attestation and measurements for determining if a device meets requirements and can be trusted. Windows 11 works out-of-the-box with Microsoft Intune and Microsoft Entra ID, which enables timely and seamless access decisions. Furthermore, IT administrators can easily customize Windows to meet specific user and policy requirements for access, privacy, compliance, and more.

### Security, by default

Windows 11 is a natural evolution of its predecessor, Windows 10. We have collaborated with our manufacturer and silicon partners to incorporate extra hardware security measures that address the increasingly complex security threats of today. These measures not only enable the hybrid work and learning that many organizations now embrace but also help bolster our already strong foundation and resilience against attacks.

### Enhanced hardware and operating system security

With hardware-based isolation security that begins at the chip, Windows 11 stores sensitive data behind other barriers separated from the operating system. As a result, information including encryption keys and user credentials are protected from unauthorized access and tampering.

In Windows 11, hardware and software work together to protect the operating system. For example, new devices come with [Virtualization-based security (VBS)](/windows-hardware/design/device-experiences/oem-vbs) and [Secure Boot](operating-system-security/system-security/trusted-boot.md) built-in and enabled by default to contain and limit malware exploits.

### Robust application security and privacy controls

To help keep personal and business information protected and private, Windows 11 has multiple layers of application security that safeguard critical data and code integrity. Application isolation and controls, code integrity, privacy controls, and least-privilege principles enable developers to build in security and privacy from the ground up. This integrated security protects against breaches and malware, helps keep data private, and gives IT administrators the controls they need.

In Windows 11, [Microsoft Defender Application Guard](/windows-hardware/design/device-experiences/oem-app-guard) uses Hyper-V virtualization technology to isolate untrusted websites and Microsoft Office files in containers, separate from and unable to access the host operating system and enterprise data. To protect privacy, Windows 11 also provides more controls over which apps and features can collect and use data such as the device's location, or access resources like camera and microphone.

### Secured identities

Passwords have been an important part of digital security for a long time, and they're also a top target for cybercriminals. Windows 11 provides powerful protection against credential theft with chip-level hardware security. Credentials are protected by layers of hardware and software security such as [TPM 2.0](information-protection/tpm/trusted-platform-module-overview.md), [VBS](/windows-hardware/design/device-experiences/oem-vbs), and/or [Credential Guard](identity-protection/credential-guard/index.md), making it harder for attackers to steal credentials from a device. With [Windows Hello for Business](identity-protection/hello-for-business/index.md), users can quickly sign in with face, fingerprint, or PIN for passwordless protection. Windows 11 also supports [FIDO2 security keys](/azure/active-directory/authentication/howto-authentication-passwordless-security-key) for passwordless authentication.

### Connecting to cloud services

Microsoft offers comprehensive cloud services for identity, storage, and access management in addition to the tools needed to attest that Windows devices connecting to your network are trustworthy. You can also enforce compliance and conditional access with a modern device management (MDM) service such as Microsoft Intune, which works with Microsoft Entra ID and Microsoft Azure Attestation to control access to applications and data through the cloud.

## Next steps

To learn more about the security features included in Windows 11, read the [Windows 11 Security Book](book/index.md).

<!--(https://aka.ms/Windows11SecurityBook).-->

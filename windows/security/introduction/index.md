---
title: Introduction to Windows security
description: System security book.
ms.date: 04/10/2023
ms.topic: tutorial
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
---

# Introduction to Windows security

The acceleration of digital transformation and the expansion of both remote and hybrid workplaces brings new opportunities to organizations, communities, and individuals. Our work styles have transformed. And now more than ever, employees need simple, intuitive user experiences to collaborate and stay productive, wherever work happens. But the expansion of access and ability to work anywhere has also introduced new threats and risks. According to data from the Microsoft commissioned Security Signals report, 75% of security decision-makers at the vice-president level and above feel the move to hybrid work leaves their organization more vulnerable to security threats. And [Microsoft's 2022 Work Trend Index](https://www.microsoft.com/security/blog/2022/04/05/new-security-features-for-windows-11-will-help-protect-hybrid-work/) shows "cybersecurity issues and risks" are top concerns for business decisions makers, who worry about issues like malware, stolen credentials, devices that lack security updates, and physical attacks on lost or stolen devices.

:::image type="content" source="chip-to-cloud.svg" lightbox="chip-to-cloud.svg" alt-text="chip to cloud diagram":::

## How Windows 11 enables zero-trust protection

A zero-trust security model gives the right people the right access at the right time. Zero-trust security is based on three principles:

1. Reduce risk by explicitly verifying data points such as user identity, location, and device health for every access request, without exception
2. When verified, give people and devices access to only necessary resources for the necessary amount of time
3. Use continuous analytics to drive threat detection and improve defenses

You should continue to strengthen your zero-trust posture as well. To improve threat detection and defenses, verify end-to-end encryption and use analytics to gain visibility.

For Windows 11, the zero-trust principle of *verify explicitly* applies to risks introduced by both devices and people. Windows 11 provides chip-to-cloud security, enabling IT administrators to implement strong authorization and authentication processes with tools such as our premier solution Windows Hello for Business. IT administrators also gain attestation and measurements for determining if a device meets requirements and can be trusted. In addition, Windows 11 works out-of-the-box with Microsoft Endpoint Manager and Azure Active Directory, so access decisions and enforcement are seamless. Plus, IT administrators can easily customize Windows 11 to meet specific user and policy requirements for access, privacy, compliance, and more.

Individual users also benefit from powerful safeguards including new standards for hardware-based security and passwordless protection that help safeguard data and privacy.

## Security, by default

Nearly 90% of security decision makers surveyed say outdated hardware leaves organizations more open to attacks and using modern hardware would help protect against future threats. Building on the innovations of Windows 10, we've worked with our manufacturer and silicon partners to provide additional hardware security capabilities to meet the evolving threat landscape and enable hybrid work and learning. The new set of hardware security requirements that comes with Windows 11 supports new ways of working with a foundation that is even stronger and more resilient to attacks.

## Enhanced hardware and operating system security

With hardware-based isolation security that begins at the chip, Windows 11 stores sensitive data behind additional barriers separated from the operating system. As a result, information including encryption keys and user credentials are protected from unauthorized access and tampering.

In Windows 11, hardware and software work together to protect the operating system. For example, new devices come with virtualization-based security (VBS) and Secure Boot built-in and enabled by default to contain and limit malware exploits. <sup>[\[1\]](#note1)</sup>

## Robust application security and privacy controls

To help keep personal and business information protected and private, Windows 11 has multiple layers of application security that safeguard critical data and code integrity. Application isolation and controls, code integrity, privacy controls, and least-privilege principles enable developers to build in security and privacy from the ground up. This integrated security protects against breaches and malware, helps keep data private, and gives IT administrators the controls they need.

In Windows 11, [Microsoft Defender Application Guard](https://docs.microsoft.com/windows-hardware/design/device-experiences/oem-app-guard) <sup>[\[2\]](#note2)</sup> uses Hyper-V virtualization technology to isolate untrusted websites and Microsoft Office files in containers, separate from and unable to access the host operating system and enterprise data. To protect privacy, Windows 11 also provides more controls over which apps and features can collect and use data such as the device's location, or access resources like camera and microphone.

## Secured identities

Passwords have been an important part of digital security for a long time, and they're also a top target for cybercriminals. Windows 11 provides powerful protection against credential theft with chip-level hardware security. Credentials are protected by layers of hardware and software security such as TPM 2.0, VBS, and/or Windows Defender Credential Guard, making it harder for attackers to steal credentials from a device. And with Windows Hello, users can quickly sign in with face, fingerprint, or PIN for passwordless protection. <sup>[\[3\]](#note3)</sup>

## Connecting to cloud services

Microsoft offers comprehensive cloud services for identity, storage, and access management in addition to the tools needed to attest that Windows 11 devices connecting to your network are trustworthy. You can also enforce compliance and conditional access with a modern device management (MDM) service such as Microsoft Endpoint Manager, which works with Azure Active Directory and Microsoft Azure Attestation to control access to applications and data through the cloud. <sup>[\[4\]](#note4)</sup>

<sup><a name="note1"></a>[1]</sup> Hypervisor-protected coder integrity, which activates virtualization-based security, is enabled by default on clean installations only.\
<sup><a name="note2"></a>[2]</sup> Windows 10 Pro and above support Application Guard protection for Microsoft Edge. Microsoft Defender Application Guard for Office requires Windows 10 Enterprise, and Microsoft 365 E5 or Microsoft 365 E5 Security.\
<sup><a name="note3"></a>[3]</sup> Windows Hello supports multi-factor authentication including facial recognition, fingerprint, and PIN. Requires specialized hardware such as fingerprint reader, illuminated IT sensor or other biometric sensors and capable devices.\
<sup><a name="note4"></a>[4]</sup> Microsoft Endpoint Manager and Microsoft Azure Active Directory subscriptions sold separately.\

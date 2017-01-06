---
title: Trusted Platform Module (Windows 10)
description: This topic for the IT professional provides links to information about the Trusted Platform Module (TPM) and how Windows uses it for access control and authentication.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
localizationpriority: high
author: brianlic-msft
---

# Trusted Platform Module

**Applies to**
-   Windows 10
-   Windows Server 2016

Trusted Platform Module (TPM) technology is designed to provide hardware-based, security-related functions. A TPM chip is a secure crypto-processor that helps you with actions such as generating, storing, and limiting the use of cryptographic keys. The following topics provide details.

<!-- The description for "Manage TPM lockout" might need updating-- the topic is being revised in December 2016 or January 2017. -->

| Topic | Description |
|-------|-------------|
| [Trusted Platform Module Overview](trusted-platform-module-overview.md) | Provides an overview of the Trusted Platform Module (TPM) and how Windows uses it for access control and authentication. |
| [TPM fundamentals](tpm-fundamentals.md) | Provides background about how a TPM can work with cryptographic keys. Also describes technologies that work with the TPM, such as TPM-based virtual smart cards. |
| [TPM Group Policy settings](trusted-platform-module-services-group-policy-settings.md) | Describes TPM services that can be controlled centrally by using Group Policy settings. |
| [Back up the TPM recovery information to AD DS](backup-tpm-recovery-information-to-ad-ds.md) | For Windows 10, version 1511 and Windows 10, version 1507 only, describes how to back up a computer’s TPM information to Active Directory Domain Services. |
| [Manage TPM commands](manage-tpm-commands.md) | Describes methods by which a local or domain administrator can block or allow specific TPM commands. |
| [Manage TPM lockout](manage-tpm-lockout.md) | Describes how TPM lockout works (to help prevent tampering or malicious attacks), and outlines ways to work with TPM lockout settings. |
| [Change the TPM owner password](change-the-tpm-owner-password.md) | In most cases, applies to Windows 10, version 1511 and Windows 10, version 1507 only. Tells how to change the TPM owner password. |
| [View status, clear, or troubleshoot the TPM](initialize-and-configure-ownership-of-the-tpm.md) | Describes actions you can take through the TPM snap-in, TPM.msc: view TPM status, troubleshoot TPM initialization, and clear keys from the TPM. Also, for TPM 1.2 and Windows 10, version 1507 or 1511, describes how to turn the TPM on or off. |
| [Understanding PCR banks on TPM 2.0 devices](switch-pcr-banks-on-tpm-2-0-devices.md) | Provides background about what happens when you switch PCR banks on TPM 2.0 devices. |
| [TPM recommendations](tpm-recommendations.md) | Discusses aspects of TPMs such as the difference between TPM 1.2 and 2.0, and the Windows 10 features for which a TPM is required or recommended. |

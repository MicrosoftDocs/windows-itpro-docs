---
title: Trusted Platform Module Technology Overview
description: Learn about the Trusted Platform Module (TPM) and how Windows uses it for access control and authentication.
ms.topic: conceptual
ms.date: 07/10/2024
ms.collection:
- tier1
---

# Trusted Platform Module Technology Overview

This article describes the Trusted Platform Module (TPM) and how Windows uses it for access control and authentication.

## Feature description

The [Trusted Platform Module (TPM)](/windows/security/information-protection/tpm/trusted-platform-module-overview) technology is designed to provide hardware-based, security-related functions. A TPM chip is a secure crypto-processor that is designed to carry out cryptographic operations. The chip includes multiple physical security mechanisms to make it tamper-resistant, and malicious software is unable to tamper with the security functions of the TPM. Some of the advantages of using TPM technology are:

- Generate, store, and limit the use of cryptographic keys.
- Use it for device authentication by using the TPM's unique RSA key, which is burned into the chip.
- Help ensure platform integrity by taking and storing security measurements of the boot process.

The most common TPM functions are used for system integrity measurements and for key creation and use. During the boot process of a system, the boot code that is loaded (including firmware and the operating system components) can be measured and recorded in the TPM. The integrity measurements can be used as evidence for how a system started and to make sure that a TPM-based key was used only when the correct software was used to boot the system.

TPM-based keys can be configured in various ways. One option is to make a TPM-based key unavailable outside the TPM. This is good to mitigate phishing attacks because it prevents the key from being copied and used without the TPM. TPM-based keys can also be configured to require an authorization value to use them. If too many incorrect authorization guesses occur, the TPM activates its dictionary attack logic and prevents further authorization value guesses.

Different versions of the TPM are defined in specifications by the Trusted Computing Group (TCG). For more information, see the [TCG Web site](http://www.trustedcomputinggroup.org/work-groups/trusted-platform-module/).

[!INCLUDE [trusted-platform-module-tpm-20](../../../../includes/licensing/trusted-platform-module-tpm.md)]

## Automatic initialization of the TPM with Windows

Starting with Windows 10 and Windows 11, the operating system automatically initializes and takes ownership of the TPM. This means that in most cases, we recommend that you avoid configuring the TPM through the TPM management console, **TPM.msc**. There are a few exceptions, mostly related to resetting or performing a clean installation on a PC. For more information, see [Clear all the keys from the TPM](initialize-and-configure-ownership-of-the-tpm.md#clear-all-the-keys-from-the-tpm).

> [!NOTE]
> We're [no longer actively developing the TPM management console](/windows-server/get-started-19/removed-features-19#features-were-no-longer-developing) beginning with Windows Server 2019 and Windows 10, version 1809.

In certain specific enterprise scenarios limited to Windows 10, versions 1507 and 1511, Group Policy might be used to back up the TPM owner authorization value in Active Directory. Because the TPM state persists across operating system installations, this TPM information is stored in a location in Active Directory that is separate from computer objects.

## Practical applications

Certificates can be installed or created on computers that are using the TPM. After a computer is provisioned, the RSA private key for a certificate is bound to the TPM and can't be exported. The TPM can also be used as a replacement for smart cards, which reduces the costs associated with creating and disbursing smart cards.

Automated provisioning in the TPM reduces the cost of TPM deployment in an enterprise. New APIs for TPM management can determine if TPM provisioning actions require physical presence of a service technician to approve TPM state change requests during the boot process.

Anti-malware software can use the boot measurements of the operating system start state to prove the integrity of a computer running Windows. These measurements include the launch of Hyper-V to test that datacenters using virtualization aren't running untrusted hypervisors. With BitLocker Network Unlock, IT administrators can push an update without concerns that a computer is waiting for PIN entry.

The TPM has several Group Policy settings that might be useful in certain enterprise scenarios. For more info, see [TPM Group Policy Settings](trusted-platform-module-services-group-policy-settings.md).

## Device health attestation

Device health attestation enables enterprises to establish trust based on hardware and software components of a managed device. With device heath attestation, you can configure an MDM server to query a health attestation service that allows or denies a managed device access to a secure resource.

Some security issues that you can check on the devices include:

- Is Data Execution Prevention supported and enabled?
- Is BitLocker Drive Encryption supported and enabled?
- Is SecureBoot supported and enabled?

> [!NOTE]
>  Windows supports Device Health Attestation with TPM 2.0. TPM 2.0 requires UEFI firmware. A device with legacy BIOS and TPM 2.0 won't work as expected.

## Supported versions for device health attestation

| TPM version | Windows 11  | Windows 10  | Windows Server 2022 | Windows Server 2019 | Windows Server 2016 |
|-------------|-------------|-------------|---------------------|---------------------|---------------------|
| TPM 1.2     |             | >= ver 1607 |                     |      Yes            |    >= ver 1607      |
| TPM 2.0     |   **Yes**   |  **Yes**    |    **Yes**          |    **Yes**          |    **Yes**          |

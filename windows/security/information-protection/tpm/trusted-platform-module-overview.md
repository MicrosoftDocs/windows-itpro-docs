---
title: Trusted Platform Module Technology Overview (Windows 10)
description: This topic for the IT professional describes the Trusted Platform Module (TPM) and how Windows uses it for access control and authentication.
ms.assetid: face8932-b034-4319-86ac-db1163d46538
ms.reviewer: 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dulcemontemayor
ms.author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 11/29/2018
---

# Trusted Platform Module Technology Overview

**Applies to**
-   Windows 10
-   Windows Server 2016
-   Windows Server 2019

This topic for the IT professional describes the Trusted Platform Module (TPM) and how Windows uses it for access control and authentication.

## Feature description

Trusted Platform Module (TPM) technology is designed to provide hardware-based, security-related functions. A TPM chip is a secure crypto-processor that is designed to carry out cryptographic operations. The chip includes multiple physical security mechanisms to make it tamper resistant, and malicious software is unable to tamper with the security functions of the TPM. Some of the key advantages of using TPM technology are that you can:

-   Generate, store, and limit the use of cryptographic keys.

-   Use TPM technology for platform device authentication by using the TPM’s unique RSA key, which is burned into itself.

-   Help ensure platform integrity by taking and storing security measurements.

The most common TPM functions are used for system integrity measurements and for key creation and use. During the boot process of a system, the boot code that is loaded (including firmware and the operating system components) can be measured and recorded in the TPM. The integrity measurements can be used as evidence for how a system started and to make sure that a TPM-based key was used only when the correct software was used to boot the system.

TPM-based keys can be configured in a variety of ways. One option is to make a TPM-based key unavailable outside the TPM. This is good to mitigate phishing attacks because it prevents the key from being copied and used without the TPM. TPM-based keys can also be configured to require an authorization value to use them. If too many incorrect authorization guesses occur, the TPM will activate its dictionary attack logic and prevent further authorization value guesses.

Different versions of the TPM are defined in specifications by the Trusted Computing Group (TCG). For more information, consult the [TCG Web site](http://www.trustedcomputinggroup.org/work-groups/trusted-platform-module/).

### Automatic initialization of the TPM with Windows 10

Starting with Windows 10, the operating system automatically initializes and takes ownership of the TPM. This means that in most cases, we recommend that you avoid configuring the TPM through the TPM management console, **TPM.msc**. There are a few exceptions, mostly related to resetting or performing a clean installation on a PC. For more information, see [Clear all the keys from the TPM](initialize-and-configure-ownership-of-the-tpm.md#clear-all-the-keys-from-the-tpm). We're [no longer actively developing the TPM management console](https://docs.microsoft.com/windows-server/get-started-19/removed-features-19#features-were-no-longer-developing) beginning with Windows Server 2019 and Windows 10, version 1809.

In certain specific enterprise scenarios limited to Windows 10, versions 1507 and 1511, Group Policy might be used to back up the TPM owner authorization value in Active Directory. Because the TPM state persists across operating system installations, this TPM information is stored in a location in Active Directory that is separate from computer objects.

## Practical applications

Certificates can be installed or created on computers that are using the TPM. After a computer is provisioned, the RSA private key for a certificate is bound to the TPM and cannot be exported. The TPM can also be used as a replacement for smart cards, which reduces the costs associated with creating and disbursing smart cards.

Automated provisioning in the TPM reduces the cost of TPM deployment in an enterprise. New APIs for TPM management can determine if TPM provisioning actions require physical presence of a service technician to approve TPM state change requests during the boot process.

Antimalware software can use the boot measurements of the operating system start state to prove the integrity of a computer running Windows 10 or Windows Server 2016. These measurements include the launch of Hyper-V to test that datacenters using virtualization are not running untrusted hypervisors. With BitLocker Network Unlock, IT administrators can push an update without concerns that a computer is waiting for PIN entry.

The TPM has several Group Policy settings that might be useful in certain enterprise scenarios. For more info, see [TPM Group Policy Settings](trusted-platform-module-services-group-policy-settings.md).

## New and changed functionality

For more info on new and changed functionality for Trusted Platform Module in Windows 10, see [What's new in Trusted Platform Module?](https://technet.microsoft.com/itpro/windows/whats-new/whats-new-windows-10-version-1507-and-1511#trusted-platform-module).

## Device health attestation

Device health attestation enables enterprises to establish trust based on hardware and software components of a managed device. With device heath attestation, you can configure an MDM server to query a health attestation service that will allow or deny a managed device access to a secure resource.

Some things that you can check on the device are:

-   Is Data Execution Prevention supported and enabled?

-   Is BitLocker Drive Encryption supported and enabled?

-   Is SecureBoot supported and enabled?

> [!NOTE]
>  Windows 10, Windows Server 2016 and Windows Server 2019 support Device Health Attestation with TPM 2.0. Support for TPM 1.2 was added beginning with Windows version 1607 (RS1). TPM 2.0 requires UEFI firmware. A computer with legacy BIOS and TPM 2.0 won't work as expected.

## Supported versions for device health attestation

| TPM version | Windows 10  | Windows Server 2016 | Windows Server 2019 |
|-------------|-------------|---------------------|---------------------|
| TPM 1.2     | >= ver 1607 |    >= ver 1607      |       Yes           |
| TPM 2.0     |    Yes      |        Yes          |       Yes           |


## Related topics

- [Trusted Platform Module](trusted-platform-module-top-node.md) (list of topics)
- [Details on the TPM standard](https://www.microsoft.com/research/project/the-trusted-platform-module-tpm/) (has links to features using TPM)
- [TPM Base Services Portal](https://docs.microsoft.com/windows/desktop/TBS/tpm-base-services-portal)
- [TPM Base Services API](https://docs.microsoft.com/windows/desktop/api/_tbs/)
- [TPM Cmdlets in Windows PowerShell](https://docs.microsoft.com/powershell/module/trustedplatformmodule)
- [Prepare your organization for BitLocker: Planning and Policies - TPM configurations](https://docs.microsoft.com/windows/security/information-protection/bitlocker/prepare-your-organization-for-bitlocker-planning-and-policies#bkmk-tpmconfigurations)
- [Azure device provisioning: Identity attestation with TPM](https://azure.microsoft.com/blog/device-provisioning-identity-attestation-with-tpm/)
- [Azure device provisioning: A manufacturing timeline for TPM devices](https://azure.microsoft.com/blog/device-provisioning-a-manufacturing-timeline-for-tpm-devices/)
- [Windows 10: Enabling vTPM (Virtual TPM)](https://social.technet.microsoft.com/wiki/contents/articles/34431.windows-10-enabling-vtpm-virtual-tpm.aspx)
- [How to Multiboot with Bitlocker, TPM, and a Non-Windows OS](https://social.technet.microsoft.com/wiki/contents/articles/9528.how-to-multiboot-with-bitlocker-tpm-and-a-non-windows-os.aspx)

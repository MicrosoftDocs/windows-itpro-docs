---
title: Trusted Platform Module Technology Overview (Windows 10)
description: This topic for the IT professional describes the Trusted Platform Module (TPM) and how Windows uses it for access control and authentication. The topic provides links to other resources about the TPM.
ms.assetid: face8932-b034-4319-86ac-db1163d46538
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
localizationpriority: high
author: brianlic-msft
---

# Trusted Platform Module Technology Overview

**Applies to**
-   Windows 10

This topic for the IT professional describes the Trusted Platform Module (TPM) and how Windows uses it for access control and authentication. The topic provides links to other resources about the TPM.

## <a href="" id="bkmk-over"></a>Feature description

Trusted Platform Module (TPM) technology is designed to provide hardware-based, security-related functions. A TPM chip is a secure crypto-processor that is designed to carry out cryptographic operations. The chip includes multiple physical security mechanisms to make it tamper resistant, and malicious software is unable to tamper with the security functions of the TPM. Some of the key advantages of using TPM technology are that you can:

-   Generate, store, and limit the use of cryptographic keys.
-   Use TPM technology for platform device authentication by using the TPM’s unique RSA key, which is burned into itself.
-   Help ensure platform integrity by taking and storing security measurements.

The most common TPM functions are used for system integrity measurements and for key creation and use. During the boot process of a system, the boot code that is loaded (including firmware and the operating system components) can be measured and recorded in the TPM. The integrity measurements can be used as evidence for how a system started and to make sure that a TPM-based key was used only when the correct software was used to boot the system.

TPM-based keys can be configured in a variety of ways. One option is to make a TPM-based key unavailable outside the TPM. This is good to mitigate phishing attacks because it prevents the key from being copied and used without the TPM. TPM-based keys can also be configured to require an authorization value to use them. If too many incorrect authorization guesses occur, the TPM will activate its dictionary attack logic and prevent further authorization value guesses.

Different versions of the TPM are defined in specifications by the Trusted Computing Group (TCG). For more information, consult the TCG Web site (<http://www.trustedcomputinggroup.org/developers/trusted_platform_module>).

Windows can automatically provision and manage the TPM. Group Policy settings can be configured to control whether the TPM owner authorization value is backed up in Active Directory. Because the TPM state persists across operating system installations, TPM information is stored in a location in Active Directory that is separate from computer objects. Depending on an enterprise’s security goals, Group Policy can be configured to allow or prevent local administrators from resetting the TPM’s dictionary attack logic. Standard users can use the TPM, but Group Policy controls limit how many authorization failures standard users can attempt so that one user is unable to prevent other users or the administrator from using the TPM. TPM technology can also be used as a virtual smart card and for secure certificate storage. With BitLocker Network Unlock, domain-joined computers are not prompted for a BitLocker PIN.

## <a href="" id="bkmk-app"></a>Practical applications

Certificates can be installed or created on computers that are using the TPM. After a computer is provisioned, the RSA private key for a certificate is bound to the TPM and cannot be exported. The TPM can also be used as a replacement for smart cards, which reduces the costs associated with creating and disbursing smart cards.

Automated provisioning in the TPM reduces the cost of TPM deployment in an enterprise. New APIs for TPM management can determine if TPM provisioning actions require physical presence of a service technician to approve TPM state change requests during the boot process.

Antimalware software can use the boot measurements of the operating system start state to prove the integrity of a computer running Windows 10, Windows 8.1, Windows 8, Windows Server 2012 R2, or Windows Server 2012. These measurements include the launch of Hyper-V to test that datacenters using virtualization are not running untrusted hypervisors. With BitLocker Network Unlock, IT administrators can push an update without concerns that a computer is waiting for PIN entry.

The TPM has several Group Policy settings that can be used to manage how it is used. These settings can be used to manage the owner authorization value, the blocked TPM commands, the standard user lockout, and the backup of the TPM to AD DS. For more info, see [Trusted Platform Module Services Group Policy Settings](trusted-platform-module-services-group-policy-settings.md).

## <a href="" id="bkmk-new"></a>New and changed functionality

For more info on new and changed functionality for Trusted Platform Module in Windows 10, see [What's new in Trusted Platform Module?](../whats-new/trusted-platform-module.md).

## <a href="" id="bkmk-dha"></a>Device health attestation

Device health attestation enables enterprises to establish trust based on hardware and software components of a managed device. With device heath attestation, you can configure an MDM server to query a health attestation service that will allow or deny a managed device access to a secure resource.

Some things that you can check on the device are:

-   Is Data Execution Prevention supported and enabled?
-   Is BitLocker Drive Encryption supported and enabled?
-   Is SecureBoot supported and enabled?

>**Note:**  The device must be running Windows 10 and it must support at least TPM 2.0.
 
## <a href="" id="bkmk-supportedversions"></a>Supported versions

| TPM version | Windows 10 | Windows Server 2012 R2, Windows 8.1, and Windows RT | Windows Server 2012, Windows 8, and Windows RT | Windows Server 2008 R2 and Windows 7 |
| - | - | - | - | - |
| TPM 1.2| X| X| X| X|
| TPM 2.0| X| X| X| X| 

## <a href="" id="bkmk-additionalresources"></a>Additional Resources

- [TPM Fundamentals](tpm-fundamentals.md)
- [TPM Group Policy settings](trusted-platform-module-services-group-policy-settings.md)
- [TPM Cmdlets in Windows PowerShell](http://technet.microsoft.com/library/jj603116.aspx)
- [AD DS schema extensions to support TPM backup](ad-ds-schema-extensions-to-support-tpm-backup.md)
- [Prepare your organization for BitLocker: Planning and Policies - TPM configurations](http://technet.microsoft.com/library/jj592683.aspx)
 
 

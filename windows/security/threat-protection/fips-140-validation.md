---
title: FIPS 140 Validation
description: This topic provides information on how Microsoft products and cryptographic modules comply with the U.S. Federal government standard FIPS 140.
ms.prod: w10
audience: ITPro
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
ms.localizationpriority: medium
ms.date: 04/03/2018
---


# FIPS 140 Validation

On this page

  - [Introduction](https://technet.microsoft.com/library/cc750357.aspx#id0eo)
  - [FIPS 140 Overview](https://technet.microsoft.com/library/cc750357.aspx#id0ebd)
  - [Microsoft Product Validation (Information for Procurement Officers and Auditors)](https://technet.microsoft.com/library/cc750357.aspx#id0ezd)
  - [Information for System Integrators](https://technet.microsoft.com/library/cc750357.aspx#id0eve)
  - [Information for Software Developers](https://technet.microsoft.com/library/cc750357.aspx#id0eibac)
  - [FIPS 140 FAQ](https://technet.microsoft.com/library/cc750357.aspx#id0eqcac)
  - [Microsoft FIPS 140 Validated Cryptographic Modules](https://technet.microsoft.com/library/cc750357.aspx#id0ewfac)
  - [Cryptographic Algorithms](https://technet.microsoft.com/library/cc750357.aspx#id0erobg)

Updated: March 2018

 

## Introduction

This document provides information on how Microsoft products and cryptographic modules comply with the U.S. Federal government standard, *Federal Information Processing Standard (FIPS) 140 – Security Requirements for Cryptographic Modules* \[FIPS 140\].

### Audience

This document is primarily focused on providing information for three parties:

[Procurement Officer](https://technet.microsoft.com/library/cc750357.aspx#_microsoft_product_validation) – Responsible for verifying that Microsoft products (or even third-party applications) are either FIPS 140 validated or utilize a Microsoft FIPS 140 validated cryptographic module.

[System Integrator](https://technet.microsoft.com/library/cc750357.aspx#_information_for_system) – Responsible for ensuring that Microsoft Products are configured properly to use only FIPS 140 validated cryptographic modules.

[Software Developer](https://technet.microsoft.com/library/cc750357.aspx#_information_for_software) – Responsible for building software products that utilize Microsoft FIPS 140 validated cryptographic modules.

### Document Map

This document is broken into seven major sections:

[FIPS 140 Overview](https://technet.microsoft.com/library/cc750357.aspx#_fips_140_overview) – Provides an overview of the FIPS 140 standard as well as provides some historical information about the standard.

[Microsoft Product Validation (Information for Procurement Officers and Auditors)](https://technet.microsoft.com/library/cc750357.aspx#_microsoft_product_validation) – Provides information on how Microsoft products are FIPS 140 validated.

[Information for System Integrators](https://technet.microsoft.com/library/cc750357.aspx#_information_for_system) – Describes how to configure and verify that Microsoft Products are being used in a manner consistent with the product’s FIPS 140 Security Policy.

[Information for Software Developers](https://technet.microsoft.com/library/cc750357.aspx#_information_for_software) – Identifies how developers can leverage the Microsoft FIPS 140 validated cryptographic modules.

[FAQ](https://technet.microsoft.com/library/cc750357.aspx#_fips_140_faq) – Frequently Asked Questions.

[Microsoft FIPS 140 Validated Cryptographic Modules](https://technet.microsoft.com/library/cc750357.aspx#_microsoft_fips_140) – Explains Microsoft cryptographic architecture and identifies specific modules that are FIPS 140 validated.

[Cryptographic Algorithms](https://technet.microsoft.com/library/cc750357.aspx#_cryptographic_algorithms) – Lists the cryptographic algorithm, modes, states, key sizes, Windows versions, and corresponding cryptographic algorithm validation certificates.

## FIPS 140 Overview

### FIPS 140 Standard

FIPS 140 is a US government and Canadian government standard that defines a minimum set of the security requirements for products that implement cryptography. This standard is designed for cryptographic modules that are used to secure sensitive but unclassified information. Testing against the FIPS 140 standard is maintained by the Cryptographic Module Validation Program (CMVP), a joint effort between the US National Institute of Standards and Technology (NIST) and the Communications Security Establishment of Canada (CSEC).

The current standard defines four-levels of increasing security, 1 through 4. Most software products (including all Microsoft products) are tested against the Level 1 security requirements.

### Applicability of the FIPS standard

Within the US Federal government, the FIPS 140 standard applies to any security system (whether hardware, firmware, software, or a combination thereof) to be used by agencies for protecting sensitive but unclassified information. Some agencies have expanded its use by requiring that the modules to be procured for secret systems also meet the FIPS 140 requirements.

The FIPS 140 standard has also been used by different standards bodies, specification groups, nations, and private institutions as a requirement or guideline for those products (e.g. – Digital Cinema Systems Specification).

### History of 140-1

FIPS 140-1 is the original working version of the standard made official on January 11, 1994. The standard remained in effect until FIPS 140-2 became mandatory for new products on May 25, 2002.

### FIPS 140-2

FIPS 140-2 is currently the active version of the standard.

### Microsoft FIPS Support Policy

Microsoft actively maintains FIPS 140 validation for its cryptographic modules.

### FIPS Mode of Operation

The common term “FIPS mode” is used in this document and Security Policy documents. When a cryptographic module contains both FIPS-approved and non-FIPS approved security methods, it must have a "FIPS mode of operation" to ensure only FIPS-approved security methods may be used. When a module is in "FIPS mode", a non-FIPS approved method cannot be used instead of a FIPS-approved method.

## Microsoft Product Validation (Information for Procurement Officers and Auditors)

This section provides information for Procurement Officers and Auditors who are responsible for ensuring that Microsoft products with FIPS 140 validated cryptographic modules are used in their organization. The goal of this section is to provide an overview of the Microsoft developed products and modules and explain how the validated cryptographic modules are used.

### Microsoft Product Relationship with CNG and CAPI libraries

Rather than validate individual components and products, Microsoft chooses to validate only the underlying cryptographic modules. Subsequently, many Windows components and Microsoft products are built to rely on the Cryptographic API: Next Generation (CNG) and legacy Cryptographic API (CAPI) FIPS 140 validated cryptographic modules. Windows components and Microsoft products use the documented application programming interfaces (APIs) for each of the modules to access various cryptographic services.

The following list contains some of the Windows components and Microsoft products that rely on FIPS 140 validated cryptographic modules:

  - Schannel Security Package
  - Remote Desktop Protocol (RDP) Client
  - Encrypting File System (EFS)
  - Some Microsoft .NET Framework Applications (.NET also provides cryptographic algorithm implementations that have not been FIPS 140 validated.)
  - BitLocker® Drive Full-volume Encryption
  - IPsec Settings of Windows Firewall

## Information for System Integrators

This section provides information for System Integrators and Auditors who are responsible for deploying Microsoft products in a manner consistent with the product’s FIPS 140 Security Policy.

There are two steps to ensure that Microsoft products operate in FIPS mode:

1.  Selecting/Installing FIPS 140 validated cryptographic modules
2.  Setting FIPS local/group security policy flag.

### Step 1 – Selecting/Installing FIPS 140 Validated Cryptographic Modules

Systems Integrators must ensure that all cryptographic modules installed are, in fact, FIPS 140 validated. This can be accomplished by cross-checking the version number of the installed module with the list of validated binaries. The list of validated CAPI binaries is identified in the [CAPI Validated Cryptographic Modules](https://technet.microsoft.com/library/cc750357.aspx#_capi_validated_cryptographic) section below and the list of validated CNG binaries is identified in the [CNG Validated Cryptographic Modules](https://technet.microsoft.com/library/cc750357.aspx#_cng_validated_cryptographic) section below. There are similar sections for all other validated cryptographic modules.

The version number of the installed binary is found by right-clicking the module file and clicking on the Version or Details tab. Cryptographic modules are stored in the "windows\\system32" or "windows\\system32\\drivers" directory.

### Step 2 – Setting FIPS Local/Group Security Policy Flag

The Windows operating system provides a group (or local) security policy setting, “System cryptography: Use FIPS compliant algorithms for encryption, hashing, and signing”, which is used by many Microsoft products to determine whether to operate in a FIPS-approved mode. When this policy is set, the validated cryptographic modules in Windows will also operate in a FIPS-approved mode.

**Note** – There is no enforcement of the FIPS policy by the operating system or the validated cryptographic modules. Instead, each individual application must check this flag and enforce the Security Policy of the validated cryptographic modules.

#### Instructions on Setting the FIPS Local/Group Security Policy Flag

While there are alternative methods for setting the FIPS local/group security policy flag, the following method is included as a guide to users with Administrative privileges. This description is for the Local Security Policy, but the Group Security Policy may be set in a similar manner.

1.  Open the 'Run' menu by pressing the combination 'Windows Key + R'.
2.  Type 'secpol.msc' and press 'Enter' or click the 'Ok' button.
3.  In the Local Security Policy management console window that opens, use the left tab to navigate to the Local Policies -\&gt; Security Options.
4.  Scroll down the right pane and double-click 'System cryptography: Use FIPS compliant algorithms for encryption, hashing, and signing'.
5.  In the properties window, select the 'Enabled' option and click the 'Apply' button.

#### Microsoft Components and Products That Utilize FIPS Local/Group Security Policy

The following list details some of the Microsoft components that use the cryptographic functionality implemented by either CNG or legacy CAPI. When the FIPS Local/Group Security Policy is set, the following components will enforce the validated module Security Policy.

  - Schannel Security Package
  - Remote Desktop Protocol (RDP) Client
  - Encrypting File System (EFS)
  - Some Microsoft .NET Framework Applications (.NET also provides cryptographic algorithm implementations that have not been FIPS 140 validated.)
  - BitLocker® Drive Full-volume Encryption
  - IPsec Settings of Windows Firewall

#### Effects of Setting FIPS Local/Group Security Policy Flag

When setting the FIPS local/group security policy flag, the behavior of several Microsoft components and products are affected. The most noticeable difference will be that the components enforcing this setting will only use those algorithms approved or allowed in FIPS mode. The specific changes to the products listed above are:

  - Schannel Security Package forced to negotiate sessions using TLS. The following supported Cipher Suites are disabled:

  -  - TLS\_RSA\_WITH\_RC4\_128\_SHA
      - TLS\_RSA\_WITH\_RC4\_128\_MD5
      - SSL\_CK\_RC4\_128\_WITH\_MD5
      - SSL\_CK\_DES\_192\_EDE3\_CBC\_WITH\_MD5
      - TLS\_RSA\_WITH\_NULL\_MD5
      - TLS\_RSA\_WITH\_NULL\_SHA

  - The set of cryptographic algorithms that a Remote Desktop Protocol (RDP) server will use is scoped to:

  -  - CALG\_RSA\_KEYX - RSA public key exchange algorithm
      - CALG\_3DES - Triple DES encryption algorithm
      - CALG\_AES\_128 - 128 bit AES
      - CALG\_AES\_256 - 256 bit AES
      - CALG\_SHA1 - SHA hashing algorithm
      - CALG\_SHA\_256 - 256 bit SHA hashing algorithm
      - CALG\_SHA\_384 - 384 bit SHA hashing algorithm
      - CALG\_SHA\_512 - 512 bit SHA hashing algorithm

  - Any Microsoft .NET Framework applications, such as Microsoft ASP.NET or Windows Communication Foundation (WCF), only allow algorithm implementations that are validated to FIPS 140, meaning only classes that end in "CryptoServiceProvider" or "Cng" can be used. Any attempt to create an instance of other cryptographic algorithm classes or create instances that use non-allowed algorithms will cause an InvalidOperationException exception.

  - Verification of ClickOnce applications fails unless the client computer has .NET Framework 2.0 SP1 or later service pack installed or .NET Framework 3.5 or later installed.

  - On Windows Vista and Windows Server 2008 and later, BitLocker Drive Encryption switches from AES-128 using the elephant diffuser to using the approved AES-256 encryption. Recovery passwords are not created or backed up. Instead, backup a recovery key on a local drive or on a network share. To use the recovery key, put the key on a USB device and plug the device into the computer.

Please be aware that selection of FIPS mode can limit product functionality (See <http://support.microsoft.com/kb/811833>).

## Information for Software Developers

This section is targeted at developers who wish to build their own applications using the FIPS 140 validated cryptographic modules.

Each of the validated cryptographic modules defines a series of rules that must be followed. The security rules for each validated cryptographic module are specified in the Security Policy document. Links to each of the Security Policy documents is provided in the [Microsoft FIPS 140 Validated Cryptographic Modules](https://technet.microsoft.com/library/cc750357.aspx#_microsoft_fips_140) section below. Generally, the restriction in Microsoft validated cryptographic modules is limiting the use of cryptography to only FIPS Approved cryptographic algorithms, modes, and key sizes.

### Using Microsoft Cryptographic Modules in a FIPS mode of operation

No matter whether developing with native languages or using .NET, it is important to first check whether the CNG modules for the target system are FIPS validated. The list of validated CNG binaries is identified in the [CNG Validated Cryptographic Modules](https://technet.microsoft.com/library/cc750357.aspx#_cng_validated_cryptographic) section.

When developing using CNG directly, it is the responsibility of the developer to follow the security rules outlined in the FIPS 140 Security Policy for each module. The security policy for each module is provided on the CMVP website. Links to each of the Security Policy documents is provided in the tables below. It is important to remember that setting the FIPS local/group security policy Flag (discussed above) does not affect the behavior of the modules when used for developing custom applications.

If you are developing your application using .NET instead of using the native libraries, then setting the FIPS local policy flag will generate an exception when an improper .NET class is used for cryptography (i.e. the cryptographic classes whose names end in "Managed"). The names of these allowed classes end with "Cng", which use the CNG binaries or "CryptoServiceProvider", which use the legacy CAPI binaries.

### Key Strengths and Validity Periods

NIST Special Publication 800-131A Revision 1, Transitions: Recommendation for Transitioning the Use of Cryptographic Algorithms and Key Lengths, dated November 2015, \[[SP 800-131A](http://dx.doi.org/10.6028/nist.sp.800-131ar1)\], offers guidance for moving to stronger cryptographic keys and algorithms. This does not replace NIST SP 800-57, Recommendation for Key Management Part 1: General, \[[SP 800-57](http://csrc.nist.gov/publications/pubssps.html#800-57-part1)\], but gives more specific guidance. One of the most important topics discussed in these publications deals with the key strengths of FIPS Approved algorithms and their validity periods. When developing applications that use FIPS Approved algorithms, it is also extremely important to select appropriate key sizes based on the security lifetimes recommended by NIST.

## FIPS 140 FAQ

The following are answers to commonly asked questions for the FIPS 140-2 validation of Microsoft products.

1.  How does FIPS 140 relate to the Common Criteria?  
    **Answer:** These are two separate security standards with different, but complementary, purposes. FIPS 140 is a standard designed specifically for validating product modules that implement cryptography. On the other hand, Common Criteria is designed to help evaluate security functions in IT products.  
    In many cases, Common Criteria evaluations will rely on FIPS 140 validations to provide assurance that cryptographic functionality is implemented properly.
2.  How does FIPS 140 relate to Suite B?  
    **Answer:** Suite B is simply a set of cryptographic algorithms defined by the U.S. National Security Agency (NSA) as part of its Cryptographic Modernization Program. The set of Suite B cryptographic algorithms are to be used for both unclassified information and most classified information.  
    The Suite B cryptographic algorithms are a subset of the FIPS Approved cryptographic algorithms as allowed by the FIPS 140 standard.
3.  There are so many modules listed on the NIST website for each release, how are they related and how do I tell which one applies to me?  
    **Answer:** Microsoft strives to validate all releases of its cryptographic modules. Each module provides a different set of cryptographic algorithms. If you are required to use only FIPS validated cryptographic modules, you simply need to verify that the version being used appears on the validation list.  
    Please see the [Microsoft FIPS 140 Validated Cryptographic Modules](https://technet.microsoft.com/library/cc750357.aspx#_microsoft_fips_140)section for a complete list of Microsoft validated modules.
4.  My application links against crypt32.dll, cryptsp.dll, advapi32.dll, bcrypt.dll, bcryptprimitives.dll, or ncrypt.dll. What do I need to do to assure I’m using FIPS 140 validated cryptographic modules?  
    **Answer:** crypt32.dll, cryptsp.dll, advapi32.dll, and ncrypt.dll are intermediary libraries that will offload all cryptographic operations to the FIPS validated cryptographic modules. Bcrypt.dll itself is a validated cryptographic module for Windows Vista and Windows Server 2008. For Windows 7 and Windows Server 2008 R2 and later, bcryptprimitives.dll is the validated module, but bcrypt.dll remains as one of the libraries to link against.  
    You must first verify that the underlying CNG cryptographic module is validated. Once verified, you'll need to confirm that you're using the module correctly in FIPS mode (See [Information for Software Developers](https://technet.microsoft.com/library/cc750357.aspx#_information_for_software) section for details).
5.  What does "When operated in FIPS mode" mean on certificates?  
    **Answer:** This caveat identifies that a required configuration and security rules must be followed in order to use the cryptographic module in a manner consistent with its FIPS 140 Security Policy. The security rules are defined in the Security Policy for the module and usually revolve around using only FIPS Approved cryptographic algorithms and key sizes. Please see the Security Policy for the specific security rules for each cryptographic module (See [Microsoft FIPS 140 Validated Cryptographic Modules](https://technet.microsoft.com/library/cc750357.aspx#_microsoft_fips_140) section for links to each policy).
6.  Which FIPS validated module is called when Windows 7 or Windows 8 is configured to use the FIPS setting in the wireless configuration?  
    **Answer:** CNG is used. This setting tells the wireless driver to call FIPS 140-2 validated cryptographic modules instead of using the driver’s own cryptography, if any.
7.  Is BitLocker to Go FIPS 140-2 validated?  
    **Answer:** There are two separate parts for BitLocker to Go. One part is simply a native feature of BitLocker and as such, it uses FIPS 140-2 validated cryptographic modules. The other part is the BitLocker to Go Reader application for down-level support of older operating systems such as Windows XP and Windows Vista. The Reader application does not use FIPS 140-2 validated cryptographic modules.
8.  Are applications FIPS 140-2 validated?  
    **Answer:** Microsoft only has low-level cryptographic modules in Windows FIPS 140-2 validated, not high-level applications. A better question is whether a certain application calls a FIPS 140-2 validated cryptographic module in the underlying Windows OS. That question needs to be directed to the company/product group that created the application of interest.
9.  How can Systems Center Operations Manager 2012 be configured to use FIPS 140-2 validated cryptographic modules?  
    **Answer:** See [http://technet.microsoft.com/library/hh914094.aspx](https://technet.microsoft.com/library/hh914094.aspx)

## Microsoft FIPS 140 Validated Cryptographic Modules

### Modules By Operating System

The following tables identify the Cryptographic Modules for an operating system.

#### Windows

##### Windows 10 Creators Update (Version 1703)

Validated Editions: Home, Pro, Enterprise, Education, S, Surface Hub, Mobile

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Cryptographic Primitives Library (bcryptprimitives.dll and ncryptsslp.dll)</td>
<td><a href="https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3095.pdf">10.0.15063</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3095">#3095</a></td>
<td><p><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4624">#4624</a>); CKG (vendor affirmed); CVL (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1278">#1278</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1281">#1281</a>); DRBG (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1555">#1555</a>); DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1223">#1223</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1133">#1133</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3061">#3061</a>); KAS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#127">#127</a>); KBKDF (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#140">#140</a>); KTS (AES Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4626">#4626</a>; key establishment methodology provides between 128 and 256 bits of encryption strength); PBKDF (vendor affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2521">#2521</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2522">#2522</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">#3790</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2459">#2459</a>)<br />
<br />
<em>Other algorithms:</em> HMAC-MD5; MD5; DES; Legacy CAPI KDF; MD2; MD4; RC2; RC4; RSA (encrypt/decrypt)</p>
<p><em>Validated Component Implementations:</em> FIPS186-4 ECDSA - Signature Generation of hash sized messages (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1133">#1133</a>); FIPS186-4 RSA; PKCS#1 v2.1 - RSASP1 Signature Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#2521">#2521</a>); FIPS186-4 RSA; RSADP - RSADP Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1281">#1281</a>); SP800-135 - Section 4.1.1, IKEv1 Section 4.1.2, IKEv2 Section 4.2, TLS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1278">#1278</a>)</p></td>
</tr>
<tr class="odd">
<td><strong>Kernel Mode Cryptographic Primitives Library (cng.sys)</strong></td>
<td><a href="https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3094.pdf">10.0.15063</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3094">#3094</a></td>
<td><p><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3094">#3094</a></p>
<p><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4624">#4624</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4626">#4626</a>); CKG (vendor affirmed); CVL (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1278">#1278</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1281">#1281</a>); DRBG (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1555">#1555</a>); DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1223">#1223</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1133">#1133</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3061">#3061</a>); KAS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#127">#127</a>); KBKDF (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#140">#140</a>); KTS (AES Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4626">#4626</a>; key establishment methodology provides between 128 and 256 bits of encryption strength); PBKDF (vendor affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2521">#2521</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2523">#2523</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">#3790</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2459">#2459</a>)<br />
<br />
<em>Other algorithms:</em> HMAC-MD5; MD5; NDRNG; DES; Legacy CAPI KDF; MD2; MD4; RC2; RC4; RSA (encrypt/decrypt)</p>
<p><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3094"><em>Validated Component Implementations:</em> FIPS186-4 ECDSA - Signature Generation of hash sized messages (Cert.</a><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1133">#1133</a><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3094">); FIPS186-4 RSA; PKCS#1 v2.1 - RSASP1 Signature Primitive (Cert.</a><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#2521">#2521</a><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3094">); FIPS186-4 RSA; RSADP - RSADP Primitive (Cert.</a><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1281">#1281</a><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3094">)</a></p></td>
</tr>
<tr class="even">
<td>Boot Manager</td>
<td><a href="https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3089.pdf">10.0.15063</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3089">#3089</a></td>
<td><p><em>FIPS Approved algorithms</em>: AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4624">#4624</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4625">#4625</a>); CKG (vendor affirmed); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3061">#3061</a>); PBKDF (vendor affirmed); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2523">#2523</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">#3790</a>)</p>
<p><em>Other algorithms</em>: PBKDF (vendor affirmed); VMK KDF (vendor affirmed)</p></td>
</tr>
<tr class="odd">
<td>Windows OS Loader</td>
<td><a href="https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3090.pdf">10.0.15063</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3090">#3090</a></td>
<td><p><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4624">#4624</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4625">#4625</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2523">#2523</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">#3790</a>)</p>
<p><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3090"><em>Other algorithms:</em> NDRNG</a></p></td>
</tr>
<tr class="even">
<td>Windows Resume<sup>[1]</sup></td>
<td><a href="https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3091.pdf">10.0.15063</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3091">#3091</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4624">#4624</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4625">#4625</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2523">#2523</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">#3790</a>)</td>
</tr>
<tr class="odd">
<td>BitLocker® Dump Filter<sup>[2]</sup></td>
<td><a href="https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3092.pdf">10.0.15063</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3092">#3092</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4624">#4624</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4625">#4625</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2522">#2522</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">#3790</a>)</td>
</tr>
<tr class="even">
<td>Code Integrity (ci.dll)</td>
<td><a href="https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3093.pdf">10.0.15063</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3093">#3093</a></td>
<td><p><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4624">#4624</a>); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2522">#2522</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2523">#2523</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">#3790</a>)</p>
<p><em>Validated Component Implementations:</em> FIPS186-4 RSA; PKCS#1 v1.5 - RSASP1 Signature Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1282">#1282</a>)</p></td>
</tr>
<tr class="odd">
<td>Secure Kernel Code Integrity (skci.dll)<sup>[3]</sup></td>
<td><a href="https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3096.pdf">10.0.15063</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3096">#3096</a></td>
<td><p><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4624">#4624</a>); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2522">#2522</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2523">#2523</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">#3790</a>)</p>
<p><em>Validated Component Implementations:</em> FIPS186-4 RSA; PKCS#1 v1.5 - RSASP1 Signature Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1282">#1282</a>)</p></td>
</tr>
</tbody>
</table>


<sup>\[1\]</sup> Applies only to Home, Pro, Enterprise, Education and S

<sup>\[2\]</sup> Applies only to Pro, Enterprise, Education, S, Mobile and Surface Hub

<sup>\[3\]</sup> Applies only to Pro, Enterprise Education and S

##### Windows 10 Anniversary Update (Version 1607)

Validated Editions: Home, Pro, Enterprise, Enterprise LTSB, Mobile

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Cryptographic Primitives Library (bcryptprimitives.dll and ncryptsslp.dll)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2937.pdf">10.0.14393</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2937">#2937</a></td>
<td><p><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4064">#4064</a>); DRBG (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1217">#1217</a>); DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1098">#1098</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#911">#911</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2651">#2651</a>); KAS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#92">#92</a>); KBKDF (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#101">#101</a>); KTS (AES Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4062">#4062</a>; key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); PBKDF (vendor affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2192">#2192</a>, <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2193">#2193</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2195">#2195</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">#3347</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2227">#2227</a>)<br />
<br />
<em>Other algorithms:</em> HMAC-MD5; MD5; DES; Legacy CAPI KDF; MD2; MD4; RC2; RC4; RSA (encrypt/decrypt)</p>
<p><em>Validated Component Implementations:</em> FIPS186-4 ECDSA - Signature Generation of hash sized messages (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#922">#922</a>); FIPS186-4 RSA; PKCS#1 v2.1 - RSASP1 Signature Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#888">#888</a>); FIPS186-4 RSA; RSADP - RSADP Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#887">#887</a>); SP800-135 - Section 4.1.1, IKEv1 Section 4.1.2, IKEv2 Section 4.2, TLS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#886">#886</a>)</p></td>
</tr>
<tr class="odd">
<td><strong>Kernel Mode Cryptographic Primitives Library (cng.sys)</strong></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2936.pdf">10.0.14393</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2936">#2936</a></td>
<td><p><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4064">#4064</a>); DRBG (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1217">#1217</a>); DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1098">#1098</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#911">#911</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2651">#2651</a>); KAS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#92">#92</a>); KBKDF (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#101">#101</a>); KTS (AES Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4062">#4062</a>; key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); PBKDF (vendor affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2192">#2192</a>, <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2193">#2193</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2195">#2195</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">#3347</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2227">#2227</a>)<br />
<br />
<em>Other algorithms:</em> HMAC-MD5; MD5; NDRNG; DES; Legacy CAPI KDF; MD2; MD4; RC2; RC4; RSA (encrypt/decrypt)</p>
<p><em>Validated Component Implementations:</em> FIPS186-4 ECDSA - Signature Generation of hash sized messages (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#922">#922</a>); FIPS186-4 RSA; PKCS#1 v2.1 - RSASP1 Signature Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#888">#888</a>); FIPS186-4 RSA; RSADP - RSADP Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#887">#887</a>)</p></td>
</tr>
<tr class="even">
<td>Boot Manager</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2931.pdf">10.0.14393</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2931">#2931</a></td>
<td><p><em>FIPS Approved algorithms</em>: AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4061">#4061</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4064">#4064</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2651">#2651</a>); PBKDF (vendor affirmed); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2193">#2193</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">#3347</a>)</p>
<p><em>Other algorithms</em>: MD5; PBKDF (non-compliant); VMK KDF</p></td>
</tr>
<tr class="odd">
<td>BitLocker® Windows OS Loader (winload)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2932.pdf">10.0.14393</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2932">#2932</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4061">#4061</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4064">#4064</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2193">#2193</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">#3347</a>)<br />
<br />
<em>Other algorithms:</em> NDRNG; MD5</td>
</tr>
<tr class="even">
<td>BitLocker® Windows Resume (winresume)<sup>[1]</sup></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2933.pdf">10.0.14393</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2933">#2933</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4061">#4061</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4064">#4064</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2193">#2193</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">#3347</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="odd">
<td>BitLocker® Dump Filter (dumpfve.sys)<sup>[2]</sup></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2934.pdf">10.0.14393</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2934">#2934</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4061">#4061</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4064">#4064</a>)</td>
</tr>
<tr class="even">
<td>Code Integrity (ci.dll)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2935.pdf">10.0.14393</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2935">#2935</a></td>
<td><p><em>FIPS Approved algorithms:</em> RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2193">#2193</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">#3347</a>)<br />
<br />
<em>Other algorithms:</em> AES (non-compliant); MD5</p>
<p><em>Validated Component Implementations:</em> FIPS186-4 RSA; PKCS#1 v2.1 - RSASP1 Signature Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#888">#888</a>)</p></td>
</tr>
<tr class="odd">
<td>Secure Kernel Code Integrity (skci.dll)<sup>[3]</sup></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2938.pdf">10.0.14393</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2938">#2938</a></td>
<td><p><em>FIPS Approved algorithms:</em> RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2193">#2193</a>); SHS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">#3347</a>)<br />
<br />
<em>Other algorithms:</em> MD5</p>
<p><em>Validated Component Implementations:</em> FIPS186-4 RSA; PKCS#1 v2.1 - RSASP1 Signature Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#888">#888</a>)</p></td>
</tr>
</tbody>
</table>


<sup>\[1\]</sup> Applies only to Home, Pro, Enterprise and Enterprise LTSB

<sup>\[2\]</sup> Applies only to Pro, Enterprise, Enterprise LTSB and Mobile

<sup>\[3\]</sup> Applies only to Pro, Enterprise and Enterprise LTSB

##### Windows 10 November 2015 Update (Version 1511)

Validated Editions: Home, Pro, Enterprise, Enterprise LTSB, Mobile, Surface Hub

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Cryptographic Primitives Library (bcryptprimitives.dll and ncryptsslp.dll)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2605.pdf">10.0.10586</a></td>
<td>#<a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2606">2606</a></td>
<td><p><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3629">#3629</a>); DRBG (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#955">#955</a>); DSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1024">#1024</a>); ECDSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#760">#760</a>); HMAC (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2381">#2381</a>); KAS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#72">#72</a>; key agreement; key establishment methodology provides between 112 and 256 bits of encryption strength); KBKDF (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#72">#72</a>); KTS (AES Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3653">#3653</a>; key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); PBKDF (vendor affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1887">#1887</a>, <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1888">#1888</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1889">#1889</a>); SHS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3047">#3047</a>); Triple-DES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2024">#2024</a>)<br />
<br />
<em>Other algorithms:</em> DES; HMAC-MD5; Legacy CAPI KDF; MD2; MD4; MD5; RC2; RC4; RSA (encrypt/decrypt)</p>
<p><em>Validated Component Implementations:</em> FIPS186-4 ECDSA - Signature Generation of hash sized messages (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#666">#666</a>); FIPS186-4 RSA; PKCS#1 v2.1 - RSASP1 Signature Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#665">#665</a>); FIPS186-4 RSA; RSADP - RSADP Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#663">#663</a>); SP800-135 - Section 4.1.1, IKEv1 Section 4.1.2, IKEv2 Section 4.2, TLS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#664">#664</a>)</p></td>
</tr>
<tr class="odd">
<td><strong>Kernel Mode Cryptographic Primitives Library (cng.sys)</strong></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2605.pdf">10.0.10586</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2605">#2605</a></td>
<td><p><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3629">#3629</a>); DRBG (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#955">#955</a>); DSA (Certs.  <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1024">#1024</a>); ECDSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#760">#760</a>); HMAC (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2381">#2381</a>); KAS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#72">#72</a>; key agreement; key establishment methodology provides between 112 and 256 bits of encryption strength); KBKDF (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#72">#72</a>); KTS (AES Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3653">#3653</a>; key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); PBKDF (vendor affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1887">#1887</a>, <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1888">#1888</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1889">#1889</a>); SHS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3047">#3047</a>); Triple-DES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2024">#2024</a>)<br />
<br />
<em>Other algorithms:</em> DES; HMAC-MD5; Legacy CAPI KDF; MD2; MD4; MD5; RC2; RC4; RSA (encrypt/decrypt)</p>
<p><em>Validated Component Implementations:</em> FIPS186-4 ECDSA - Signature Generation of hash sized messages (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#666">#666</a>); FIPS186-4 RSA; PKCS#1 v2.1 - RSASP1 Signature Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#665">#665</a>); FIPS186-4 RSA; RSADP - RSADP Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#663">#663</a>)</p></td>
</tr>
<tr class="even">
<td>Boot Manager<sup>[4]</sup></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2700.pdf">10.0.10586</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2700">#2700</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3653">#3653</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2381">#2381</a>); PBKDF (vendor affirmed); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1871">#1871</a>); SHS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3047">#3047</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3048">#3048</a>)<br />
<br />
<em>Other algorithms:</em> MD5; KDF (non-compliant); PBKDF (non-compliant)</td>
</tr>
<tr class="odd">
<td>BitLocker® Windows OS Loader (winload)<sup>[5]</sup></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2701.pdf">10.0.10586</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2701">#2701</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3629">#3629</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3653">#3653</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1871">#1871</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3048">#3048</a>)<br />
<br />
<em>Other algorithms:</em> MD5; NDRNG</td>
</tr>
<tr class="even">
<td>BitLocker® Windows Resume (winresume)<sup>[6]</sup></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2702.pdf">10.0.10586</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2702">#2702</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3653">#3653</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1871">#1871</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3048">#3048</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="odd">
<td>BitLocker® Dump Filter (dumpfve.sys)<sup>[7]</sup></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2703.pdf">10.0.10586</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2703">#2703</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3653">#3653</a>)</td>
</tr>
<tr class="even">
<td>Code Integrity (ci.dll)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2604.pdf">10.0.10586</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2604">#2604</a></td>
<td><p><em>FIPS Approved algorithms:</em> RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1871">#1871</a>); SHS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3048">#3048</a>)<br />
<br />
<em>Other algorithms:</em> AES (non-compliant); MD5</p>
<p><em>Validated Component Implementations:</em> FIPS186-4 RSA; PKCS#1 v2.1 - RSASP1 Signature Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#665">#665</a>)</p></td>
</tr>
<tr class="odd">
<td>Secure Kernel Code Integrity (skci.dll)<sup>[8]</sup></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2607.pdf">10.0.10586</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2607">#2607</a></td>
<td><p><em>FIPS Approved algorithms:</em> RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1871">#1871</a>); SHS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3048">#3048</a>)<br />
<br />
<em>Other algorithms:</em> MD5</p>
<p><em>Validated Component Implementations:</em> FIPS186-4 RSA; PKCS#1 v2.1 - RSASP1 Signature Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#665">#665</a>)</p></td>
</tr>
</tbody>
</table>


<sup>\[4\]</sup> Applies only to Home, Pro, Enterprise, Mobile and Surface Hub

<sup>\[5\]</sup> Applies only to Home, Pro, Enterprise, Mobile and Surface Hub

<sup>\[6\]</sup> Applies only to Home, Pro and Enterprise

<sup>\[7\]</sup> Applies only to Pro, Enterprise, Mobile and Surface Hub

<sup>\[8\]</sup> Applies only to Enterprise and Enterprise LTSB

##### Windows 10 (Version 1507)

Validated Editions: Home, Pro, Enterprise, Enterprise LTSB, Mobile, and Surface Hub

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Cryptographic Primitives Library (bcryptprimitives.dll and ncryptsslp.dll)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2605.pdf">10.0.10240</a></td>
<td>#<a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2606">2606</a></td>
<td><p><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3497">#3497</a>); DRBG (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#868">#868</a>); DSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#983">#983</a>); ECDSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#706">#706</a>); HMAC (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2233">#2233</a>); KAS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#64">#64</a>; key agreement; key establishment methodology provides between 112 and 256 bits of encryption strength); KBKDF (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#66">#66</a>); KTS (AES Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3507">#3507</a>; key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); PBKDF (vendor affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1783">#1783</a>, <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1798">#1798</a>, and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1802">#1802</a>); SHS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2886">#2886</a>); Triple-DES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1969">#1969</a>)<br />
<br />
<em>Other algorithms:</em> DES; HMAC-MD5; Legacy CAPI KDF; MD2; MD4; MD5; RC2; RC4; RSA (encrypt/decrypt)</p>
<p><em>Validated Component Implementations:</em> FIPS186-4 RSA; PKCS#1 v2.1 - RSASP1 Signature Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#572">#572</a>); FIPS186-4 RSA; RSADP - RSADP Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#576">#576</a>); SP800-135 - Section 4.1.1, IKEv1 Section 4.1.2, IKEv2 Section 4.2, TLS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#575">#575</a>)</p></td>
</tr>
<tr class="odd">
<td><strong>Kernel Mode Cryptographic Primitives Library (cng.sys)</strong></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2605.pdf">10.0.10240</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2605">#2605</a></td>
<td><p><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3497">#3497</a>); DRBG (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#868">#868</a>); DSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#983">#983</a>); ECDSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#706">#706</a>); HMAC (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2233">#2233</a>); KAS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#64">#64</a>; key agreement; key establishment methodology provides between 112 and 256 bits of encryption strength); KBKDF (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#66">#66</a>); KTS (AES Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3507">#3507</a>; key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); PBKDF (vendor affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1783">#1783</a>, <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1798">#1798</a>, and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1802">#1802</a>); SHS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2886">#2886</a>); Triple-DES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1969">#1969</a>)<br />
<br />
<em>Other algorithms:</em> DES; HMAC-MD5; Legacy CAPI KDF; MD2; MD4; MD5; RC2; RC4; RSA (encrypt/decrypt)</p>
<p><em>Validated Component Implementations:</em> FIPS186-4 RSA; PKCS#1 v2.1 - RSASP1 Signature Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#572">#572</a>); FIPS186-4 RSA; RSADP - RSADP Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#576">#576</a>)</p></td>
</tr>
<tr class="even">
<td>Boot Manager<sup>[9]</sup></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2600.pdf">10.0.10240</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2600">#2600</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3497">#3497</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2233">#2233</a>); KTS (AES Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3498">#3498</a>); PBKDF (vendor affirmed); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1784">#1784</a>); SHS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2871">#2871</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2886">#2886</a>)<br />
<br />
<em>Other algorithms:</em> MD5; KDF (non-compliant); PBKDF (non-compliant)</td>
</tr>
<tr class="odd">
<td>BitLocker® Windows OS Loader (winload)<sup>[10]</sup></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2601.pdf">10.0.10240</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2601">#2601</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3497">#3497</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3498">#3498</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1784">#1784</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2871">#2871</a>)<br />
<br />
<em>Other algorithms:</em> MD5; NDRNG</td>
</tr>
<tr class="even">
<td>BitLocker® Windows Resume (winresume)<sup>[11]</sup></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2602.pdf">10.0.10240</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2602">#2602</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3497">#3497</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3498">#3498</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1784">#1784</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2871">#2871</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="odd">
<td>BitLocker® Dump Filter (dumpfve.sys)<sup>[12]</sup></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2603.pdf">10.0.10240</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2603">#2603</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3497">#3497</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3498">#3498</a>)</td>
</tr>
<tr class="even">
<td>Code Integrity (ci.dll)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2604.pdf">10.0.10240</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2604">#2604</a></td>
<td><p><em>FIPS Approved algorithms:</em> RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1784">#1784</a>); SHS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2871">#2871</a>)<br />
<br />
<em>Other algorithms:</em> AES (non-compliant); MD5</p>
<p><em>Validated Component Implementations:</em> FIPS186-4 RSA; PKCS#1 v2.1 - RSASP1 Signature Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#572">#572</a>)</p></td>
</tr>
<tr class="odd">
<td>Secure Kernel Code Integrity (skci.dll)<sup>[13]</sup></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2607.pdf">10.0.10240</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2607">#2607</a></td>
<td><p><em>FIPS Approved algorithms:</em> RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1784">#1784</a>); SHS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2871">#2871</a>)<br />
<br />
<em>Other algorithms:</em> MD5</p>
<p><em>Validated Component Implementations:</em> FIPS186-4 RSA; PKCS#1 v2.1 - RSASP1 Signature Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#572">#572</a>)</p></td>
</tr>
</tbody>
</table>


<sup>\[9\]</sup> Applies only to Home, Pro, Enterprise and Enterprise LTSB

<sup>\[10\]</sup> Applies only to Home, Pro, Enterprise and Enterprise LTSB

<sup>\[11\]</sup> Applies only to Home, Pro, Enterprise and Enterprise LTSB

<sup>\[12\]</sup> Applies only to Pro, Enterprise and Enterprise LTSB

<sup>\[13\]</sup> Applies only to Enterprise and Enterprise LTSB

##### Windows 8.1

Validated Editions: RT, Pro, Enterprise, Phone, Embedded

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Cryptographic Primitives Library (bcryptprimitives.dll and ncryptsslp.dll)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2357.pdf">6.3.9600 6.3.9600.17031</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2357">#2357</a></td>
<td><p><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2832">#2832</a>); DRBG (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#489">#489</a>); DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#855">#855</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#505">#505</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1773">#1773</a>); KAS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#47">#47</a>); KBKDF (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#30">#30</a>); PBKDF (vendor affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1487">#1487</a>, <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1493">#1493</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1519">#1519</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373">#2373</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1692">#1692</a>)<br />
<br />
<em>Other algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2832">#2832</a>, key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); AES-GCM encryption (non-compliant); DES; HMAC MD5; Legacy CAPI KDF; MD2; MD4; MD5; NDRNG; RC2; RC4; RSA (encrypt/decrypt)#2832, key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); AES-GCM encryption (non-compliant); DES; HMAC MD5; Legacy CAPI KDF; MD2; MD4; MD5; NDRNG; RC2; RC4; RSA (encrypt/decrypt)</p>
<p><em>Validated Component Implementations:</em> FIPS186-4 ECDSA - Signature Generation of hash sized messages (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#288">#288</a>); FIPS186-4 RSA; PKCS#1 v2.1 - RSASP1 Signature Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#289">#289</a>); SP800-135 - Section 4.1.1, IKEv1 Section 4.1.2, IKEv2 Section 4.2, TLS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#323">#323</a>)</p></td>
</tr>
<tr class="odd">
<td><strong>Kernel Mode Cryptographic Primitives Library (cng.sys)</strong></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2356.pdf">6.3.9600 6.3.9600.17042</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2356">#2356</a></td>
<td><p><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2832">#2832</a>); DRBG (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#489">#489</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#505">#505</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1773">#1773</a>); KAS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#47">#47</a>); KBKDF (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#30">#30</a>); PBKDF (vendor affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1487">#1487</a>, <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1493">#1493</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1519">#1519</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373"># 2373</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1692">#1692</a>)<br />
<br />
<em>Other algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2832">#2832</a>, key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); AES-GCM encryption (non-compliant); DES; HMAC MD5; Legacy CAPI KDF; MD2; MD4; MD5; NDRNG; RC2; RC4; RSA (encrypt/decrypt)</p>
<p><em>Validated Component Implementations:</em> FIPS186-4 ECDSA - Signature Generation of hash sized messages (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#288">#288</a>); FIPS186-4 RSA; PKCS#1 v2.1 - RSASP1 Signature Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#289">#289</a>)</p></td>
</tr>
<tr class="even">
<td>Boot Manager</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2351.pdf">6.3.9600 6.3.9600.17031</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2351">#2351</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2832">#2832</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1773">#1773</a>); PBKDF (vendor affirmed); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1494">#1494</a>); SHS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373"># 2373</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2396">#2396</a>)<br />
<br />
<em>Other algorithms:</em> MD5; KDF (non-compliant); PBKDF (non-compliant)</td>
</tr>
<tr class="odd">
<td>BitLocker® Windows OS Loader (winload)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2352.pdf">6.3.9600 6.3.9600.17031</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2352">#2352</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2832">#2832</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1494">#1494</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2396">#2396</a>)<br />
<br />
<em>Other algorithms:</em> MD5; NDRNG</td>
</tr>
<tr class="even">
<td>BitLocker® Windows Resume (winresume)<sup>[14]</sup></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2353.pdf">6.3.9600 6.3.9600.17031</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2353">#2353</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2832">#2832</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1494">#1494</a>); SHS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373"># 2373</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2396">#2396</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="odd">
<td>BitLocker® Dump Filter (dumpfve.sys)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2354.pdf">6.3.9600 6.3.9600.17031</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2354">#2354</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2832">#2832</a>)<br />
<br />
<em>Other algorithms:</em> N/A</td>
</tr>
<tr class="even">
<td>Code Integrity (ci.dll)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2355.pdf">6.3.9600 6.3.9600.17031</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2355">#2355</a>#2355</td>
<td><p><em>FIPS Approved algorithms:</em> RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1494">#1494</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373"># 2373</a>)<br />
<br />
<em>Other algorithms:</em> MD5</p>
<p><em>Validated Component Implementations:</em> PKCS#1 v2.1 - RSASP1 Signature Primitive (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#289">#289</a>)</p></td>
</tr>
</tbody>
</table>


<sup>\[14\]</sup> Applies only to Pro, Enterprise, and Embedded 8.

##### Windows 8

Validated Editions: RT, Home, Pro, Enterprise, Phone

<table>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Cryptographic Primitives Library (BCRYPTPRIMITIVES.DLL)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1892.pdf">6.2.9200</a></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/1401val2013.htm#1892">#1892</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2197">#2197</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2216">#2216</a>); DRBG (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#258">#258</a>); DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#687">#687</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#341">#341</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1345">#1345</a>); KAS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#36">#36</a>); KBKDF (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/kbkdf800-108/kbkdfval.htm#3">#3</a>); PBKDF (vendor affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1133">#1133</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1134">#1134</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1387">#1387</a>)<br />
<br />
<em>Other algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2197">#2197</a>, key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); DES; Legacy CAPI KDF; MD2; MD4; MD5; HMAC MD5; RC2; RC4; RSA (encrypt/decrypt)#258); DSA (Cert. ); ECDSA (Cert. ); HMAC (Cert. ); KAS (Cert. ); KBKDF (Cert. ); PBKDF (vendor affirmed); RSA (Certs.  and ); SHS (Cert. ); Triple-DES (Cert. )<br />
<br />
</td>
</tr>
<tr class="odd">
<td><strong>Kernel Mode Cryptographic Primitives Library (cng.sys)</strong></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1891.pdf">6.2.9200</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1891">#1891</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2197">#2197</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2216">#2216</a>); DRBG (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#258">#258</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#259">#259</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#341">#341</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1345">#1345</a>); KAS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#36">#36</a>); KBKDF (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/kbkdf800-108/kbkdfval.htm#3">#3</a>); PBKDF (vendor affirmed); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#1110">#1110</a>); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1133">#1133</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1134">#1134</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1387">#1387</a>)<br />
<br />
<em>Other algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2197">#2197</a>, key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); DES; Legacy CAPI KDF; MD2; MD4; MD5; HMAC MD5; RC2; RC4; RSA (encrypt/decrypt)#258 and ); ECDSA (Cert. ); HMAC (Cert. ); KAS (Cert. ); KBKDF (Cert. ); PBKDF (vendor affirmed); RNG (Cert. ); RSA (Certs.  and ); SHS (Cert. ); Triple-DES (Cert. )<br />
<br />
<em>Other algorithms:</em> AES (Cert. , key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); DES; Legacy CAPI KDF; MD2; MD4; MD5; HMAC MD5; RC2; RC4; RSA (encrypt/decrypt)</td>
</tr>
<tr class="even">
<td>Boot Manager</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1895.pdf">6.2.9200</a></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/1401val2013.htm#1895">#1895</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2196">#2196</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2198">#2198</a>); HMAC (Cert. #<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1347">1347</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1132">#1132</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="odd">
<td>BitLocker® Windows OS Loader (WINLOAD)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1896.pdf">6.2.9200</a></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/1401val2013.htm#1896">#1896</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2196">#2196</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2198">#2198</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1132">#1132</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a>)<br />
<br />
<em>Other algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2197">#2197</a>; non-compliant); MD5; Non-Approved RNG</td>
</tr>
<tr class="even">
<td>BitLocker® Windows Resume (WINRESUME)<sup>[15]</sup></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1898.pdf">6.2.9200</a></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/1401val2013.htm#1898">#1898</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2196">#2196</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2198">#2198</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1132">#1132</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="odd">
<td>BitLocker® Dump Filter (DUMPFVE.SYS)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1899.pdf">6.2.9200</a></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/1401val2013.htm#1899">#1899</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2196">#2196</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2198">#2198</a>)<br />
<br />
<em>Other algorithms:</em> N/A</td>
</tr>
<tr class="even">
<td>Code Integrity (CI.DLL)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1897.pdf">6.2.9200</a></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/1401val2013.htm#1897">#1897</a></td>
<td><em>FIPS Approved algorithms:</em> RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1132">#1132</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="odd">
<td>Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH.DLL)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1893.pdf">6.2.9200</a></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/1401val2013.htm#1893">#1893</a></td>
<td><em>FIPS Approved algorithms:</em> DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#686">#686</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1902">#1902</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1386">#1386</a>); Triple-DES MAC (Triple-DES Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1386">#1386</a>, vendor affirmed)<br />
<br />
<em>Other algorithms:</em> DES; DES MAC; DES40; DES40 MAC; Diffie-Hellman; MD5; RC2; RC2 MAC; RC4; Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1386">#1386</a>, key wrapping; key establishment methodology provides 112 bits of encryption strength; non-compliant less than 112 bits of encryption strength)#1902); Triple-DES (Cert. ); Triple-DES MAC (Triple-DES Cert. , vendor affirmed)<br />
<br />
<em>Other algorithms:</em> DES; DES MAC; DES40; DES40 MAC; Diffie-Hellman; MD5; RC2; RC2 MAC; RC4; Triple-DES (Cert. , key wrapping; key establishment methodology provides 112 bits of encryption strength; non-compliant less than 112 bits of encryption strength)</td>
</tr>
<tr class="even">
<td>Enhanced Cryptographic Provider (RSAENH.DLL)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1894.pdf">6.2.9200</a></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/1401val2013.htm#1894">#1894</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2196">#2196</a>); HMAC (Cert. #1346); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1132">#1132</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1902">#1902</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1386">#1386</a>)<br />
<br />
<em>Other algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2196">#2196</a>, key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); DES; MD2; MD4; MD5; RC2; RC4; RSA (key wrapping; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1386">#1386</a>, key wrapping; key establishment methodology provides 112 bits of encryption strength; non-compliant less than 112 bits of encryption strength)</td>
</tr>
</tbody>
</table>


<sup>\[15\]</sup> Applies only to Home and Pro

**Windows 7**

Validated Editions: Windows 7, Windows 7 SP1

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Cryptographic Primitives Library (BCRYPTPRIMITIVES.DLL)</td>
<td><p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1329.pdf">6.1.7600.16385</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1329.pdf">6.1.7601.17514</a></p></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1329">1329</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1178">#1178</a>); AES GCM (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a>, vendor-affirmed); AES GMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a>, vendor-affirmed); DRBG (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#23">#23</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#24">#24</a>); DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#386">#386</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#141">#141</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#677">#677</a>); KAS (SP 800-56A, vendor affirmed, key agreement; key establishment methodology provides 80 to 256 bits of encryption strength); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#649">#649</a>); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#559">#559</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#560">#560</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">#1081</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#846">#846</a>)<br />
<br />
<em>Other algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a>, key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); DES; Diffie-Hellman (key agreement; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength); MD2; MD4; MD5; HMAC MD5; RC2; RC4#559 and ); SHS (Cert. ); Triple-DES (Cert. )<br />
<br />
<em>Other algorithms:</em> AES (Cert. , key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); DES; Diffie-Hellman (key agreement; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength); MD2; MD4; MD5; HMAC MD5; RC2; RC4</td>
</tr>
<tr class="odd">
<td>Kernel Mode Cryptographic Primitives Library (cng.sys)</td>
<td><p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1328.pdf">6.1.7600.16385</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1328.pdf">6.1.7600.16915</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1328.pdf">6.1.7600.21092</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1328.pdf">6.1.7601.17514</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1328.pdf">6.1.7601.17725</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1328.pdf">6.1.7601.17919</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1328.pdf">6.1.7601.21861</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1328.pdf">6.1.7601.22076</a></p></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1328">1328</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1178">#1178</a>); AES GCM (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a>, vendor-affirmed); AES GMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a>, vendor-affirmed); DRBG (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#23">#23</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#24">#24</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#141">#141</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#677">#677</a>); KAS (SP 800-56A, vendor affirmed, key agreement; key establishment methodology provides 80 to 256 bits of encryption strength); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#649">#649</a>); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#559">#559</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#560">#560</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">#1081</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#846">#846</a>)<br />
<br />
<em>Other algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a>, key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); DES; Diffie-Hellman (key agreement; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength); MD2; MD4; MD5; HMAC MD5; RC2; RC4</td>
</tr>
<tr class="even">
<td>Boot Manager</td>
<td><p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1319.pdf">6.1.7600.16385</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1319.pdf">6.1.7601.17514</a></p></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1319">1319</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1177">#1177</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#675">#675</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#557">#557</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">#1081</a>)<br />
<br />
<em>Other algorithms:</em> MD5#1168 and ); HMAC (Cert. ); RSA (Cert. ); SHS (Cert. )<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="odd">
<td>Winload OS Loader (winload.exe)</td>
<td><p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1326.pdf">6.1.7600.16385</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1326.pdf">6.1.7600.16757</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1326.pdf">6.1.7600.20897</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1326.pdf">6.1.7600.20916</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1326.pdf">6.1.7601.17514</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1326.pdf">6.1.7601.17556</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1326.pdf">6.1.7601.21655</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1326.pdf">6.1.7601.21675</a></p></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1326">1326</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1177">#1177</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#557">#557</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">#1081</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="even">
<td>BitLocker™ Drive Encryption</td>
<td><p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1332.pdf">6.1.7600.16385</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1332.pdf">6.1.7600.16429</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1332.pdf">6.1.7600.16757</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1332.pdf">6.1.7600.20536</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1332.pdf">6.1.7600.20873</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1332.pdf">6.1.7600.20897</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1332.pdf">6.1.7600.20916</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1332.pdf">6.1.7601.17514</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1332.pdf">6.1.7601.17556</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1332.pdf">6.1.7601.21634</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1332.pdf">6.1.7601.21655</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1332.pdf">6.1.7601.21675</a></p></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1332">1332</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1177">#1177</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#675">#675</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">#1081</a>)<br />
<br />
<em>Other algorithms:</em> Elephant Diffuser</td>
</tr>
<tr class="odd">
<td>Code Integrity (CI.DLL)</td>
<td><p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1327.pdf">6.1.7600.16385</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1327.pdf">6.1.7600.17122</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1327.pdf">6.1.7600.21320</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1327.pdf">6.1.7601.17514</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1327.pdf">6.1.7601.17950</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1327.pdf">6.1.7601.22108</a></p></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1327">1327</a></td>
<td><em>FIPS Approved algorithms:</em> RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#557">#557</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">#1081</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="even">
<td>Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH.DLL)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1331.pdf">6.1.7600.16385</a><br />
(no change in SP1)</td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1331">1331</a></td>
<td><em>FIPS Approved algorithms:</em> DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#385">#385</a>); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#649">#649</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">#1081</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#846">#846</a>); Triple-DES MAC (Triple-DES Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#846">#846</a>, vendor affirmed)<br />
<br />
<em>Other algorithms:</em> DES; DES MAC; DES40; DES40 MAC; Diffie-Hellman; MD5; RC2; RC2 MAC; RC4</td>
</tr>
<tr class="odd">
<td>Enhanced Cryptographic Provider (RSAENH.DLL)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1330.pdf">6.1.7600.16385</a><br />
(no change in SP1)</td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1330">1330</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a>); DRBG (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#23">#23</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#673">#673</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">#1081</a>); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#557">#557</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#559">#559</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#846">#846</a>)<br />
<br />
<em>Other algorithms:</em> DES; MD2; MD4; MD5; RC2; RC4; RSA (key wrapping; key establishment methodology provides between 112 and 256-bits of encryption strength; non-compliant less than 112 bits of encryption strength)</td>
</tr>
</tbody>
</table>


##### Windows Vista SP1

Validated Editions: Ultimate Edition

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Boot Manager (bootmgr)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp978.pdf">6.0.6001.18000 and 6.0.6002.18005</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/978">978</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#739">#739</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#760">#760</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#415">#415</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#354">#354</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">#753</a>)</td>
</tr>
<tr class="odd">
<td>Winload OS Loader (winload.exe)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp979.pdf">6.0.6001.18000, 6.0.6001.18027, 6.0.6001.18606, 6.0.6001.22125, 6.0.6001.22861, 6.0.6002.18005, 6.0.6002.18411 and 6.0.6002.22596</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/979">979</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#739">#739</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#760">#760</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#354">#354</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">#753</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="even">
<td>Code Integrity (ci.dll)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp980.pdf">6.0.6001.18000, 6.0.6001.18023, 6.0.6001.22120, and 6.0.6002.18005</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/980">980</a></td>
<td><em>FIPS Approved algorithms:</em> RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#354">#354</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">#753</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="odd">
<td>Kernel Mode Security Support Provider Interface (ksecdd.sys)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1000.pdf">6.0.6001.18709, 6.0.6001.18272, 6.0.6001.18796, 6.0.6001.22202, 6.0.6001.22450, 6.0.6001.22987, 6.0.6001.23069, 6.0.6002.18005, 6.0.6002.18051, 6.0.6002.18541, 6.0.6002.18643, 6.0.6002.22152, 6.0.6002.22742, and 6.0.6002.22869</a>6.0.6001.18709, 6.0.6001.18272, 6.0.6001.18796, 6.0.6001.22202, 6.0.6001.22450, 6.0.6001.22987, 6.0.6001.23069, 6.0.6002.18005, 6.0.6002.18051, 6.0.6002.18541, 6.0.6002.18643, 6.0.6002.22152, 6.0.6002.22742, and 6.0.6002.22869</td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1000">1000</a></td>
<td><p>FIPS Approved algorithms: AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#739">#739</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#756">#756</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#82">#82</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#412">#412</a>); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#435">#435</a> and SP 800-90 AES-CTR, vendor-affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#353">#353</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#357">#357</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">#753</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#656">#656</a>)#739 and ); ECDSA (Cert. ); HMAC (Cert. ); RNG (Cert.  and SP 800-90 AES-CTR, vendor-affirmed); RSA (Certs.  and ); SHS (Cert. ); Triple-DES (Cert. )</p>
<p><em>Other algorithms:</em> AES (GCM and GMAC; non-compliant); DES; Diffie-Hellman (key agreement; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength); EC Diffie-Hellman (key agreement; key establishment methodology provides between 128 and 256 bits of encryption strength); MD2; MD4; MD5; HMAC MD5; RC2; RC4; RNG (SP 800-90 Dual-EC; non-compliant); RSA (key wrapping; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength)</p></td>
</tr>
<tr class="even">
<td>Cryptographic Primitives Library (bcrypt.dll)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1002.pdf">6.0.6001.22202, 6.0.6002.18005, and 6.0.6002.22872</a>6.0.6001.22202, 6.0.6002.18005, and 6.0.6002.22872</td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1001">1001</a></td>
<td><p><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#739">#739</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#756">#756</a>); DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#283">#283</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#82">#82</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#412">#412</a>); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#435">#435</a> and SP 800-90, vendor affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#353">#353</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#357">#357</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">#753</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#656">#656</a>)</p>
<p><em>Other algorithms:</em> AES (GCM and GMAC; non-compliant); DES; Diffie-Hellman (key agreement; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength); EC Diffie-Hellman (key agreement; key establishment methodology provides between 128 and 256 bits of encryption strength); MD2; MD4; MD5; RC2; RC4; RNG (SP 800-90 Dual-EC; non-compliant); RSA (key wrapping; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant provides less than 112 bits of encryption strength)</p></td>
</tr>
<tr class="odd">
<td>Enhanced Cryptographic Provider (RSAENH)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1002.pdf">6.0.6001.22202 and 6.0.6002.18005</a>6.0.6001.22202 and 6.0.6002.18005</td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1002">1002</a></td>
<td><p><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#739">#739</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#407">#407</a>); RNG (SP 800-90, vendor affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#353">#353</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#354">#354</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">#753</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#656">#656</a>)</p>
<p><em>Other algorithms:</em> DES; MD2; MD4; MD5; RC2; RC4; RSA (key wrapping; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength)</p></td>
</tr>
<tr class="even">
<td>Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1003.pdf">6.0.6001.18000 and 6.0.6002.18005</a>6.0.6001.18000 and 6.0.6002.18005</td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1003">1003</a></td>
<td><p><em>FIPS Approved algorithms:</em> DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#281">#281</a>); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#435">#435</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">#753</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#656">#656</a>); Triple-DES MAC (Triple-DES Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#656">#656</a>, vendor affirmed)</p>
<p><em>Other algorithms:</em> DES; DES MAC; DES40; DES40 MAC; Diffie-Hellman (key agreement; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength); MD5; RC2; RC2 MAC; RC4</p></td>
</tr>
</tbody>
</table>


##### Windows Vista

Validated Editions: Ultimate Edition

<table>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Enhanced Cryptographic Provider (RSAENH)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp893.pdf">6.0.6000.16386</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/893">893</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#553">#553</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#297">#297</a>); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#321">#321</a>); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#255">#255</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#258">#258</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">#618</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#549">#549</a>)<br />
<br />
<em>Other algorithms:</em> DES; MD2; MD4; MD5; RC2; RC4; RSA (key wrapping; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength)</td>
</tr>
<tr class="odd">
<td>Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp894.pdf">6.0.6000.16386</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/894">894</a></td>
<td><em>FIPS Approved algorithms:</em> DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#226">#226</a>); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#321">#321</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">#618</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#549">#549</a>); Triple-DES MAC (Triple-DES Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#549">#549</a>, vendor affirmed)<br />
<br />
<em>Other algorithms:</em> DES; DES MAC; DES40; DES40 MAC; Diffie-Hellman (key agreement; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength); MD5; RC2; RC2 MAC; RC4</td>
</tr>
<tr class="even">
<td>BitLocker™ Drive Encryption</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp947.pdf">6.0.6000.16386</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/947">947</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#715">#715</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#386">#386</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#737">#737</a>)<br />
<br />
<em>Other algorithms:</em> Elephant Diffuser</td>
</tr>
<tr class="odd">
<td>Kernel Mode Security Support Provider Interface (ksecdd.sys)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp891.pdf">6.0.6000.16386, 6.0.6000.16870 and 6.0.6000.21067</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/891">891</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Cert. #553); ECDSA (Cert. #60); HMAC (Cert. #298); RNG (Cert. #321); RSA (Certs. #257 and #258); SHS (Cert. #618); Triple-DES (Cert. #549)<br />
<br />
<em>Other algorithms:</em> DES; Diffie-Hellman (key agreement; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength); EC Diffie-Hellman (key agreement; key establishment methodology provides 128 to 256 bits of encryption strength); MD2; MD4; MD5; RC2; RC4; HMAC MD5</td>
</tr>
</tbody>
</table>


##### Windows XP SP3

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Kernel Mode Cryptographic Module (FIPS.SYS)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp997.pdf">5.1.2600.5512</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/997">997</a></td>
<td><p><em>FIPS Approved algorithms:</em> HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#429">#429</a>); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#449">#449</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#785">#785</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#677">#677</a>); Triple-DES MAC (Triple-DES Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#677">#677</a>, vendor affirmed)</p>
<p><em>Other algorithms:</em> DES; MD5; HMAC MD5</p></td>
</tr>
<tr class="odd">
<td>Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp990.pdf">5.1.2600.5507</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/990">990</a></td>
<td><p><em>FIPS Approved algorithms:</em> DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#292">#292</a>); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#448">#448</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#784">#784</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#676">#676</a>); Triple-DES MAC (Triple-DES Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#676">#676</a>, vendor affirmed)</p>
<p><em>Other algorithms:</em> DES; DES40; Diffie-Hellman (key agreement; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits); MD5; RC2; RC4</p></td>
</tr>
<tr class="even">
<td>Enhanced Cryptographic Provider (RSAENH)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp989.pdf">5.1.2600.5507</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/989">989</a></td>
<td><p><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#781">#781</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#428">#428</a>); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#447">#447</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#371">#371</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#783">#783</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#675">#675</a>); Triple-DES MAC (Triple-DES Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#675">#675</a>, vendor affirmed)</p>
<p><em>Other algorithms:</em> DES; MD2; MD4; MD5; HMAC MD5; RC2; RC4; RSA (key wrapping; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits)</p></td>
</tr>
</tbody>
</table>


##### Windows XP SP2

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>DSS/Diffie-Hellman Enhanced Cryptographic Provider</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp240.pdf">5.1.2600.2133</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/240">240</a></td>
<td><p><em>FIPS Approved algorithms:</em> Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#16">#16</a>); DSA/SHA-1 (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#29">#29</a>)</p>
<p><em>Other algorithms:</em> DES (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#66">#66</a>); RC2; RC4; MD5; DES40; Diffie-Hellman (key agreement)</p></td>
</tr>
<tr class="odd">
<td>Microsoft Enhanced Cryptographic Provider</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp238.pdf">5.1.2600.2161</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/238">238</a></td>
<td><p><em>FIPS Approved algorithms:</em> Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#81">#81</a>); AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#33">#33</a>); SHA-1 (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#83">#83</a>); RSA (PKCS#1, vendor affirmed); HMAC-SHA-1 (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#83">#83</a>, vendor affirmed)</p>
<p><em>Other algorithms:</em> DES (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#156">#156</a>); RC2; RC4; MD5</p></td>
</tr>
</tbody>
</table>


##### Windows XP SP1

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Microsoft Enhanced Cryptographic Provider</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp238.pdf">5.1.2600.1029</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/238">238</a></td>
<td><p><em>FIPS Approved algorithms:</em> Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#81">#81</a>); AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#33">#33</a>); SHA-1 (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#83">#83</a>); RSA (PKCS#1, vendor affirmed); HMAC-SHA-1 (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#83">#83</a>, vendor affirmed)</p>
<p><em>Other algorithms:</em> DES (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#156">#156</a>); RC2; RC4; MD5</p></td>
</tr>
</tbody>
</table>


##### Windows XP

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Kernel Mode Cryptographic Module</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp241.pdf">5.1.2600.0</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/241">241</a></td>
<td><p><em>FIPS Approved algorithms:</em> Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#16">#16</a>); DSA/SHA-1 (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#35">#35</a>); HMAC-SHA-1 (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#35">#35</a>, vendor affirmed)</p>
<p><em>Other algorithms:</em> DES (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#89">#89</a>)</p></td>
</tr>
</tbody>
</table>


##### Windows 2000 SP3

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Kernel Mode Cryptographic Module (FIPS.SYS)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp106.pdf">5.0.2195.1569</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/106">106</a></td>
<td><p><em>FIPS Approved algorithms:</em> Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#16">#16</a>); SHA-1 (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#35">#35</a>)</p>
<p><em>Other algorithms:</em> DES (Certs. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#89">#89</a>)</p></td>
</tr>
<tr class="odd">
<td>Base DSS Cryptographic Provider, Base Cryptographic Provider, DSS/Diffie-Hellman Enhanced Cryptographic Provider, and Enhanced Cryptographic Provider</td>
<td><p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp103.pdf">(Base DSS: 5.0.2195.3665 [SP3])</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp103.pdf">(Base: 5.0.2195.3839 [SP3])</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp103.pdf">(DSS/DH Enh: 5.0.2195.3665 [SP3])</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp103.pdf">(Enh: 5.0.2195.3839 [SP3]</a></p></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/103">103</a></td>
<td><p><em>FIPS Approved algorithms:</em> Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#16">#16</a>); DSA/SHA-1 (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#28">#28</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#29">#29</a>); RSA (vendor affirmed)</p>
<p><em>Other algorithms:</em> DES (Certs. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#65">#65</a>, <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#66">66</a>, <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#67">67</a> and <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#68">68</a>); Diffie-Hellman (key agreement); RC2; RC4; MD2; MD4; MD5</p></td>
</tr>
</tbody>
</table>


##### Windows 2000 SP2

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Kernel Mode Cryptographic Module (FIPS.SYS)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp106.pdf">5.0.2195.1569</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/106">106</a></td>
<td><p><em>FIPS Approved algorithms:</em> Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#16">#16</a>); SHA-1 (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#35">#35</a>)</p>
<p><em>Other algorithms:</em> DES (Certs. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#89">#89</a>)</p></td>
</tr>
<tr class="odd">
<td>Base DSS Cryptographic Provider, Base Cryptographic Provider, DSS/Diffie-Hellman Enhanced Cryptographic Provider, and Enhanced Cryptographic Provider</td>
<td><p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp103.pdf">(Base DSS:</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp103.pdf">5.0.2195.2228 [SP2])</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp103.pdf">(Base:</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp103.pdf">5.0.2195.2228 [SP2])</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp103.pdf">(DSS/DH Enh:</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp103.pdf">5.0.2195.2228 [SP2])</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp103.pdf">(Enh:</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp103.pdf">5.0.2195.2228 [SP2])</a></p></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/103">103</a></td>
<td><p><em>FIPS Approved algorithms:</em> Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#16">#16</a>); DSA/SHA-1 (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#28">#28</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#29">#29</a>); RSA (vendor affirmed)</p>
<p><em>Other algorithms:</em> DES (Certs. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#65">#65</a>, <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#66">66</a>, <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#67">67</a> and <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#68">68</a>); Diffie-Hellman (key agreement); RC2; RC4; MD2; MD4; MD5</p></td>
</tr>
</tbody>
</table>


##### Windows 2000 SP1

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Base DSS Cryptographic Provider, Base Cryptographic Provider, DSS/Diffie-Hellman Enhanced Cryptographic Provider, and Enhanced Cryptographic Provider</td>
<td><p>(<a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp103.pdf">Base DSS: 5.0.2150.1391 [SP1])</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp103.pdf">(Base: 5.0.2150.1391 [SP1])</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp103.pdf">(DSS/DH Enh: 5.0.2150.1391 [SP1])</a></p>
<p><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp103.pdf">(Enh: 5.0.2150.1391 [SP1])</a></p></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/103">103</a></td>
<td><p><em>FIPS Approved algorithms:</em> Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#16">#16</a>); DSA/SHA-1 (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#28">#28</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#29">#29</a>); RSA (vendor affirmed)</p>
<p><em>Other algorithms:</em> DES (Certs. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#65">#65</a>, <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#66">66</a>, <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#67">67</a> and <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#68">68</a>); Diffie-Hellman (key agreement); RC2; RC4; MD2; MD4; MD5</p></td>
</tr>
</tbody>
</table>


##### Windows 2000

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Base DSS Cryptographic Provider, Base Cryptographic Provider, DSS/Diffie-Hellman Enchanced Cryptographic Provider, and Enhanced Cryptographic Provider</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp76.pdf">5.0.2150.1</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/76">76</a></td>
<td><p><em>FIPS Approved algorithms:</em> Triple-DES (vendor affirmed); DSA/SHA-1 (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#28">#28</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#29">29</a>); RSA (vendor affirmed)</p>
<p><em>Other algorithms:</em> DES (Certs. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#65">#65</a>, <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#66">66</a>, <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#67">67</a> and <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#68">68</a>); RC2; RC4; MD2; MD4; MD5; Diffie-Hellman (key agreement)</p></td>
</tr>
</tbody>
</table>


##### Windows 95 and Windows 98

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Base DSS Cryptographic Provider, Base Cryptographic Provider, DSS/Diffie-Hellman Enchanced Cryptographic Provider, and Enhanced Cryptographic Provider</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp75.pdf">5.0.1877.6 and 5.0.1877.7</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/75">75</a></td>
<td><p><em>FIPS Approved algorithms:</em> Triple-DES (vendor affirmed); SHA-1 (Certs. <a href="https://social.msdn.microsoft.com/forums/en-us/f93c9ee5-89b9-41a4-96c4-6eb9346625b9/msrai-msra-parsing-remote-assistance-packets-in-network-monitor?forum=os_windowsprotocolshttps://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#20">#20</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#21">21</a>); DSA/SHA-1 (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#25">#25</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#26">26</a>); RSA (vendor- affirmed)</p>
<p><em>Other algorithms:</em> DES (Certs. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#61">#61</a>, <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#62">62</a>, <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#63">63</a> and <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#64">64</a>); RC2; RC4; MD2; MD4; MD5; Diffie-Hellman (key agreement)</p></td>
</tr>
</tbody>
</table>


##### Windows NT 4.0

<table>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Base Cryptographic Provider</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp68.pdf">5.0.1877.6 and 5.0.1877.7</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/68">68</a></td>
<td><em>FIPS Approved algorithms:</em> SHA-1 (Certs. <a href="https://social.msdn.microsoft.com/forums/en-us/f93c9ee5-89b9-41a4-96c4-6eb9346625b9/msrai-msra-parsing-remote-assistance-packets-in-network-monitor?forum=os_windowsprotocolshttps://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#20">#20</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#21">21</a>); DSA/SHA- 1 (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#25">#25</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#26">26</a>); RSA (vendor affirmed)<br />
<br />
<em>Other algorithms:</em> DES (Certs. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#61">#61</a>, <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#62">62</a>, <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#63">63</a> and <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#64">64</a>); Triple-DES (allowed for US and Canadian Government use); RC2; RC4; MD2; MD4; MD5; Diffie-Hellman (key agreement)</td>
</tr>
</tbody>
</table>


#### Windows Server

##### Windows Server 2016

Validated Editions: Standard, Datacenter, Storage Server

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Cryptographic Primitives Library (bcryptprimitives.dll and ncryptsslp.dll)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2937.pdf">10.0.14393</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2937">2937</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4064">#4064</a>); DRBG (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1217">#1217</a>); DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1098">#1098</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#911">#911</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2651">#2651</a>); KAS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#92">#92</a>); KBKDF (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#101">#101</a>); KTS (AES Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4062">#4062</a>; key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); PBKDF (vendor affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2192">#2192</a>, <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2193">#2193</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2195">#2195</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">#3347</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2227">#2227</a>)<br />
<br />
<em>Other algorithms:</em> HMAC-MD5; MD5; DES; Legacy CAPI KDF; MD2; MD4; RC2; RC4; RSA (encrypt/decrypt)</td>
</tr>
<tr class="odd">
<td><strong>Kernel Mode Cryptographic Primitives Library (cng.sys)</strong></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2936.pdf">10.0.14393</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2936">2936</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4064">#4064</a>); DRBG (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1217">#1217</a>); DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1098">#1098</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#911">#911</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2651">#2651</a>); KAS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#92">#92</a>); KBKDF (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#101">#101</a>); KTS (AES Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4062">#4062</a>; key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); PBKDF (vendor affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2192">#2192</a>, <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2193">#2193</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2195">#2195</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">#3347</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2227">#2227</a>)<br />
<br />
<em>Other algorithms:</em> HMAC-MD5; MD5; NDRNG; DES; Legacy CAPI KDF; MD2; MD4; RC2; RC4; RSA (encrypt/decrypt)</td>
</tr>
<tr class="even">
<td>Boot Manager</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2931.pdf">10.0.14393</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2931">2931</a></td>
<td><p><em>FIPS Approved algorithms</em>: AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4061">#4061</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4064">#4064</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2651">#2651</a>); PBKDF (vendor affirmed); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2193">#2193</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">#3347</a>)</p>
<p><em>Other algorithms</em>: MD5; PBKDF (non-compliant); VMK KDF</p></td>
</tr>
<tr class="odd">
<td>BitLocker® Windows OS Loader (winload)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2932.pdf">10.0.14393</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2932">2932</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4061">#4061</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4064">#4064</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2193">#2193</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">#3347</a>)<br />
<br />
<em>Other algorithms:</em> NDRNG; MD5</td>
</tr>
<tr class="even">
<td>BitLocker® Windows Resume (winresume)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2933.pdf">10.0.14393</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2934">2933</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4061">#4061</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4064">#4064</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2193">#2193</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">#3347</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="odd">
<td>BitLocker® Dump Filter (dumpfve.sys)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2934.pdf">10.0.14393</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2934">2934</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4061">#4061</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4064">#4064</a>)</td>
</tr>
<tr class="even">
<td>Code Integrity (ci.dll)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2935.pdf">10.0.14393</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2935">2935</a></td>
<td><em>FIPS Approved algorithms:</em> RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2193">#2193</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">#3347</a>)<br />
<br />
<em>Other algorithms:</em> AES (non-compliant); MD5</td>
</tr>
<tr class="odd">
<td>Secure Kernel Code Integrity (skci.dll)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2938.pdf">10.0.14393</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2938">2938</a></td>
<td><em>FIPS Approved algorithms:</em> RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2193">#2193</a>); SHS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">#3347</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
</tbody>
</table>


##### Windows Server 2012 R2

Validated Editions: Server, Storage Server,

**StorSimple 8000 Series, Azure StorSimple Virtual Array Windows Server 2012 R2**

<table>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Cryptographic Primitives Library (bcryptprimitives.dll and ncryptsslp.dll)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2357.pdf">6.3.9600 6.3.9600.17031</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2357">2357</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2832">#2832</a>); DRBG (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#489">#489</a>); DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#855">#855</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#505">#505</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1773">#1773</a>); KAS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#47">#47</a>); KBKDF (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#30">#30</a>); PBKDF (vendor affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1487">#1487</a>, <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1493">#1493</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1519">#1519</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373">#2373</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1692">#1692</a>)<br />
<br />
<em>Other algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2832">#2832</a>, key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); AES-GCM encryption (non-compliant); DES; HMAC MD5; Legacy CAPI KDF; MD2; MD4; MD5; NDRNG; RC2; RC4; RSA (encrypt/decrypt)</td>
</tr>
<tr class="odd">
<td><strong>Kernel Mode Cryptographic Primitives Library (cng.sys)</strong></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2356.pdf">6.3.9600 6.3.9600.17042</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2356">2356</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2832">#2832</a>); DRBG (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#489">#489</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#505">#505</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1773">#1773</a>); KAS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#47">#47</a>); KBKDF (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#30">#30</a>); PBKDF (vendor affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1487">#1487</a>, <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1493">#1493</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1519">#1519</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373"># 2373</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1692">#1692</a>)<br />
<br />
<em>Other algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2832">#2832</a>, key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); AES-GCM encryption (non-compliant); DES; HMAC MD5; Legacy CAPI KDF; MD2; MD4; MD5; NDRNG; RC2; RC4; RSA (encrypt/decrypt)</td>
</tr>
<tr class="even">
<td>Boot Manager</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2351.pdf">6.3.9600 6.3.9600.17031</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2351">2351</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2832">#2832</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1773">#1773</a>); PBKDF (vendor affirmed); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1494">#1494</a>); SHS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373"># 2373</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2396">#2396</a>)<br />
<br />
<em>Other algorithms:</em> MD5; KDF (non-compliant); PBKDF (non-compliant)</td>
</tr>
<tr class="odd">
<td>BitLocker® Windows OS Loader (winload)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2352.pdf">6.3.9600 6.3.9600.17031</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2352">2352</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2832">#2832</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1494">#1494</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2396">#2396</a>)<br />
<br />
<em>Other algorithms:</em> MD5; NDRNG</td>
</tr>
<tr class="even">
<td>BitLocker® Windows Resume (winresume)<sup>[16]</sup></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2353.pdf">6.3.9600 6.3.9600.17031</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2353">2353</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2832">#2832</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1494">#1494</a>); SHS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373"># 2373</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2396">#2396</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="odd">
<td>BitLocker® Dump Filter (dumpfve.sys)<sup>[17]</sup></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2354.pdf">6.3.9600 6.3.9600.17031</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2354">2354</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2832">#2832</a>)<br />
<br />
<em>Other algorithms:</em> N/A</td>
</tr>
<tr class="even">
<td>Code Integrity (ci.dll)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2355.pdf">6.3.9600 6.3.9600.17031</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2355">2355</a></td>
<td><em>FIPS Approved algorithms:</em> RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1494">#1494</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373"># 2373</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
</tbody>
</table>


<sup>\[16\]</sup> Does not apply to **Azure StorSimple Virtual Array Windows Server 2012 R2**

<sup>\[17\]</sup> Does not apply to **Azure StorSimple Virtual Array Windows Server 2012 R2**

**Windows Server 2012**

Validated Editions: Server, Storage Server

<table>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Cryptographic Primitives Library (BCRYPTPRIMITIVES.DLL)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1892.pdf">6.2.9200</a></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/1401val2013.htm#1892">1892</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2197">#2197</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2216">#2216</a>); DRBG (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#258">#258</a>); DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#687">#687</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#341">#341</a>); HMAC (Cert. #<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1345">1345</a>); KAS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#36">#36</a>); KBKDF (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/kbkdf800-108/kbkdfval.htm#3">#3</a>); PBKDF (vendor affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1133">#1133</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1134">#1134</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1387">#1387</a>)<br />
<br />
<em>Other algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2197">#2197</a>, key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); DES; Legacy CAPI KDF; MD2; MD4; MD5; HMAC MD5; RC2; RC4; RSA (encrypt/decrypt)#687); ECDSA (Cert. ); HMAC (Cert. #); KAS (Cert. ); KBKDF (Cert. ); PBKDF (vendor affirmed); RSA (Certs.  and ); SHS (Cert. ); Triple-DES (Cert. )<br />
<br />
<em>Other algorithms:</em> AES (Cert. , key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); DES; Legacy CAPI KDF; MD2; MD4; MD5; HMAC MD5; RC2; RC4; RSA (encrypt/decrypt)</td>
</tr>
<tr class="odd">
<td><strong>Kernel Mode Cryptographic Primitives Library (cng.sys)</strong></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1891.pdf">6.2.9200</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1891">1891</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2197">#2197</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2216">#2216</a>); DRBG (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#258">#258</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#259">#259</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#341">#341</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1345">#1345</a>); KAS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#36">#36</a>); KBKDF (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/kbkdf800-108/kbkdfval.htm#3">#3</a>); PBKDF (vendor affirmed); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#1110">#1110</a>); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1133">#1133</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1134">#1134</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1387">#1387</a>)<br />
<br />
<em>Other algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2197">#2197</a>, key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); DES; Legacy CAPI KDF; MD2; MD4; MD5; HMAC MD5; RC2; RC4; RSA (encrypt/decrypt)#1110); RSA (Certs.  and ); SHS (Cert. ); Triple-DES (Cert. )<br />
<br />
<em>Other algorithms:</em> AES (Cert. , key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); DES; Legacy CAPI KDF; MD2; MD4; MD5; HMAC MD5; RC2; RC4; RSA (encrypt/decrypt)</td>
</tr>
<tr class="even">
<td>Boot Manager</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1895.pdf">6.2.9200</a></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/1401val2013.htm#1895">1895</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2196">#2196</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2198">#2198</a>); HMAC (Cert. #<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1347">1347</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1132">#1132</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="odd">
<td>BitLocker® Windows OS Loader (WINLOAD)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1896.pdf">6.2.9200</a></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/1401val2013.htm#1896">1896</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2196">#2196</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2198">#2198</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1132">#1132</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a>)<br />
<br />
<em>Other algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2197">#2197</a>; non-compliant); MD5; Non-Approved RNG</td>
</tr>
<tr class="even">
<td>BitLocker® Windows Resume (WINRESUME)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1898.pdf">6.2.9200</a></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/1401val2013.htm#1898">1898</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2196">#2196</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2198">#2198</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1132">#1132</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="odd">
<td>BitLocker® Dump Filter (DUMPFVE.SYS)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1899.pdf">6.2.9200</a></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/1401val2013.htm#1899">1899</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2196">#2196</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2198">#2198</a>)<br />
<br />
<em>Other algorithms:</em> N/A</td>
</tr>
<tr class="even">
<td>Code Integrity (CI.DLL)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1897.pdf">6.2.9200</a></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/1401val2013.htm#1897">1897</a></td>
<td><em>FIPS Approved algorithms:</em> RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1132">#1132</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="odd">
<td>Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH.DLL)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1893.pdf">6.2.9200</a></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/1401val2013.htm#1893">1893</a></td>
<td><em>FIPS Approved algorithms:</em> DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#686">#686</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1902">#1902</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1386">#1386</a>); Triple-DES MAC (Triple-DES Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1386">#1386</a>, vendor affirmed)<br />
<br />
<em>Other algorithms:</em> DES; DES MAC; DES40; DES40 MAC; Diffie-Hellman; MD5; RC2; RC2 MAC; RC4; Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1386">#1386</a>, key wrapping; key establishment methodology provides 112 bits of encryption strength; non-compliant less than 112 bits of encryption strength)</td>
</tr>
<tr class="even">
<td>Enhanced Cryptographic Provider (RSAENH.DLL)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1894.pdf">6.2.9200</a></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/1401val2013.htm#1894">1894</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2196">#2196</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1346">#1346</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1132">#1132</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1902">#1902</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1386">#1386</a>)<br />
<br />
<em>Other algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2196">#2196</a>, key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); DES; MD2; MD4; MD5; RC2; RC4; RSA (key wrapping; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1386">#1386</a>, key wrapping; key establishment methodology provides 112 bits of encryption strength; non-compliant less than 112 bits of encryption strength)</td>
</tr>
</tbody>
</table>


##### Windows Server 2008 R2

<table>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Boot Manager (bootmgr)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1321.pdf">6.1.7600.16385 or 6.1.7601.17514</a>6.1.7600.16385 or 6.1.7601.17514</td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1321">1321</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1177">#1177</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#675">#675</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#568">#568</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">#1081</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="odd">
<td><strong>Winload OS Loader (winload.exe)</strong></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1333.pdf">6.1.7600.16385, 6.1.7600.16757, 6.1.7600.20897, 6.1.7600.20916, 6.1.7601.17514, 6.1.7601.17556, 6.1.7601.21655 and 6.1.7601.21675</a>6.1.7600.16385, 6.1.7600.16757, 6.1.7600.20897, 6.1.7600.20916, 6.1.7601.17514, 6.1.7601.17556, 6.1.7601.21655 and 6.1.7601.21675</td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1333">1333</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1177">#1177</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#568">#568</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">#1081</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="even">
<td>Code Integrity (ci.dll)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1334.pdf">6.1.7600.16385, 6.1.7600.17122, 6.1.7600.21320, 6.1.7601.17514, 6.1.7601.17950 and 6.1.7601.22108</a>6.1.7600.16385, 6.1.7600.17122, 6.1.7600.21320, 6.1.7601.17514, 6.1.7601.17950 and 6.1.7601.22108</td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1334">1334</a></td>
<td><em>FIPS Approved algorithms:</em> RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#568">#568</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">#1081</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="odd">
<td>Kernel Mode Cryptographic Primitives Library (cng.sys)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1335.pdf">6.1.7600.16385, 6.1.7600.16915, 6.1.7600.21092, 6.1.7601.17514, 6.1.7601.17919, 6.1.7601.17725, 6.1.7601.21861 and 6.1.7601.22076</a>6.1.7600.16385, 6.1.7600.16915, 6.1.7600.21092, 6.1.7601.17514, 6.1.7601.17919, 6.1.7601.17725, 6.1.7601.21861 and 6.1.7601.22076</td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1335">1335</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1177">#1177</a>); AES GCM (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a>, vendor-affirmed); AES GMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a>, vendor-affirmed); DRBG (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#23">#23</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#27">#27</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#142">#142</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#686">#686</a>); KAS (SP 800-56A, vendor affirmed, key agreement; key establishment methodology provides between 80 and 256 bits of encryption strength); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#649">#649</a>); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#559">#559</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#567">#567</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">#1081</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#846">#846</a>)<br />
<br />
<em>-Other algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a>, key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); DES; Diffie-Hellman (key agreement; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength); MD2; MD4; MD5; HMAC MD5; RC2; RC4</td>
</tr>
<tr class="even">
<td>Cryptographic Primitives Library (bcryptprimitives.dll)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1336.pdf">66.1.7600.16385 or 6.1.7601.17514</a>66.1.7600.16385 or 6.1.7601.17514</td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1336">1336</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1177">#1177</a>); AES GCM (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a>, vendor-affirmed); AES GMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a>, vendor-affirmed); DRBG (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#23">#23</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#27">#27</a>); DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#391">#391</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#142">#142</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#686">#686</a>); KAS (SP 800-56A, vendor affirmed, key agreement; key establishment methodology provides between 80 and 256 bits of encryption strength); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#649">#649</a>); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#559">#559</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#567">#567</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">#1081</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#846">#846</a>)<br />
<br />
<em>Other algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a>, key wrapping; key establishment methodology provides between 128 and 256 bits of encryption strength); DES; HMAC MD5; MD2; MD4; MD5; RC2; RC4</td>
</tr>
<tr class="odd">
<td>Enhanced Cryptographic Provider (RSAENH)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1337.pdf">6.1.7600.16385</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1337">1337</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a>); DRBG (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#23">#23</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#687">#687</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">#1081</a>); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#559">#559</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#568">#568</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#846">#846</a>)<br />
<br />
<em>Other algorithms:</em> DES; MD2; MD4; MD5; RC2; RC4; RSA (key wrapping; key establishment methodology provides between 112 and 256 bits of encryption strength; non-compliant less than 112 bits of encryption strength)</td>
</tr>
<tr class="even">
<td>Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1338.pdf">6.1.7600.16385</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1338">1338</a></td>
<td><em>FIPS Approved algorithms:</em> DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#390">#390</a>); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#649">#649</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">#1081</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#846">#846</a>); Triple-DES MAC (Triple-DES Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#846">#846</a>, vendor affirmed)<br />
<br />
<em>Other algorithms:</em> DES; DES MAC; DES40; DES40 MAC; Diffie-Hellman; MD5; RC2; RC2 MAC; RC4</td>
</tr>
<tr class="odd">
<td>BitLocker™ Drive Encryption</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1339.pdf">6.1.7600.16385, 6.1.7600.16429, 6.1.7600.16757, 6.1.7600.20536, 6.1.7600.20873, 6.1.7600.20897, 6.1.7600.20916, 6.1.7601.17514, 6.1.7601.17556, 6.1.7601.21634, 6.1.7601.21655 or 6.1.7601.21675</a>6.1.7600.16385, 6.1.7600.16429, 6.1.7600.16757, 6.1.7600.20536, 6.1.7600.20873, 6.1.7600.20897, 6.1.7600.20916, 6.1.7601.17514, 6.1.7601.17556, 6.1.7601.21634, 6.1.7601.21655 or 6.1.7601.21675</td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1339">1339</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1177">#1177</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#675">#675</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">#1081</a>)<br />
<br />
<em>Other algorithms:</em> Elephant Diffuser</td>
</tr>
</tbody>
</table>


##### Windows Server 2008

<table>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Boot Manager (bootmgr)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1004.pdf">6.0.6001.18000, 6.0.6002.18005 and 6.0.6002.22497</a>6.0.6001.18000, 6.0.6002.18005 and 6.0.6002.22497</td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1004">1004</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#739">#739</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#760">#760</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#415">#415</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#355">#355</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">#753</a>)<br />
<br />
<em>Other algorithms:</em> N/A</td>
</tr>
<tr class="odd">
<td><strong>Winload OS Loader (winload.exe)</strong></td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1005.pdf">6.0.6001.18000, 6.0.6001.18606, 6.0.6001.22861, 6.0.6002.18005, 6.0.6002.18411, 6.0.6002.22497 and 6.0.6002.22596</a>6.0.6001.18000, 6.0.6001.18606, 6.0.6001.22861, 6.0.6002.18005, 6.0.6002.18411, 6.0.6002.22497 and 6.0.6002.22596</td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1005">1005</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#739">#739</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#760">#760</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#355">#355</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">#753</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="even">
<td>Code Integrity (ci.dll)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1006.pdf">6.0.6001.18000 and 6.0.6002.18005</a>6.0.6001.18000 and 6.0.6002.18005</td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1006">1006</a></td>
<td><em>FIPS Approved algorithms:</em> RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#355">#355</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">#753</a>)<br />
<br />
<em>Other algorithms:</em> MD5</td>
</tr>
<tr class="odd">
<td>Kernel Mode Security Support Provider Interface (ksecdd.sys)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1007.pdf">6.0.6001.18709, 6.0.6001.18272, 6.0.6001.18796, 6.0.6001.22202, 6.0.6001.22450, 6.0.6001.22987, 6.0.6001.23069, 6.0.6002.18005, 6.0.6002.18051, 6.0.6002.18541, 6.0.6002.18643, 6.0.6002.22152, 6.0.6002.22742 and 6.0.6002.22869</a>6.0.6001.18709, 6.0.6001.18272, 6.0.6001.18796, 6.0.6001.22202, 6.0.6001.22450, 6.0.6001.22987, 6.0.6001.23069, 6.0.6002.18005, 6.0.6002.18051, 6.0.6002.18541, 6.0.6002.18643, 6.0.6002.22152, 6.0.6002.22742 and 6.0.6002.22869</td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1007">1007</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#739">#739</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#757">#757</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#83">#83</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#413">#413</a>); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#435">#435</a> and SP800-90 AES-CTR, vendor affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#353">#353</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#358">#358</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">#753</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#656">#656</a>)<br />
<br />
<em>Other algorithms:</em> AES (GCM and GMAC; non-compliant); DES; Diffie-Hellman (key agreement; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength); EC Diffie-Hellman (key agreement; key establishment methodology provides between 128 and 256 bits of encryption strength); MD2; MD4; MD5; HMAC MD5; RC2; RC4; RNG (SP 800-90 Dual-EC; non-compliant); RSA (key wrapping: key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength)#83); HMAC (Cert. ); RNG (Cert.  and SP800-90 AES-CTR, vendor affirmed); RSA (Certs.  and ); SHS (Cert. ); Triple-DES (Cert. )<br />
<br />
<em>Other algorithms:</em> AES (GCM and GMAC; non-compliant); DES; Diffie-Hellman (key agreement; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength); EC Diffie-Hellman (key agreement; key establishment methodology provides between 128 and 256 bits of encryption strength); MD2; MD4; MD5; HMAC MD5; RC2; RC4; RNG (SP 800-90 Dual-EC; non-compliant); RSA (key wrapping: key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength)</td>
</tr>
<tr class="even">
<td>Cryptographic Primitives Library (bcrypt.dll)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1008.pdf">6.0.6001.22202, 6.0.6002.18005 and 6.0.6002.22872</a>6.0.6001.22202, 6.0.6002.18005 and 6.0.6002.22872</td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1008">1008</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#739">#739</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#757">#757</a>); DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#284">#284</a>); ECDSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#83">#83</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#413">#413</a>); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#435">#435</a> and SP800-90, vendor affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#353">#353</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#358">#358</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">#753</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#656">#656</a>)<br />
<br />
<em>Other algorithms:</em> AES (GCM and GMAC; non-compliant); DES; Diffie-Hellman (key agreement; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength); EC Diffie-Hellman (key agreement; key establishment methodology provides between 128 and 256 bits of encryption strength); MD2; MD4; MD5; RC2; RC4; RNG (SP 800-90 Dual-EC; non-compliant); RSA (key wrapping; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant provides less than 112 bits of encryption strength)</td>
</tr>
<tr class="odd">
<td>Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1009.pdf">6.0.6001.18000 and 6.0.6002.18005</a>6.0.6001.18000 and 6.0.6002.18005</td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1009">1009</a></td>
<td><em>FIPS Approved algorithms:</em> DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#282">#282</a>); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#435">#435</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">#753</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#656">#656</a>); Triple-DES MAC (Triple-DES Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#656">#656</a>, vendor affirmed)<br />
<br />
<em>-Other algorithms:</em> DES; DES MAC; DES40; DES40 MAC; Diffie-Hellman (key agreement; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength); MD5; RC2; RC2 MAC; RC4</td>
</tr>
<tr class="even">
<td>Enhanced Cryptographic Provider (RSAENH)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp1010.pdf">6.0.6001.22202 and 6.0.6002.18005</a>6.0.6001.22202 and 6.0.6002.18005</td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1010">1010</a></td>
<td><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#739">#739</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#408">#408</a>); RNG (SP 800-90, vendor affirmed); RSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#353">#353</a> and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#355">#355</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">#753</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#656">#656</a>)<br />
<br />
<em>Other algorithms:</em> DES; MD2; MD4; MD5; RC2; RC4; RSA (key wrapping; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength)</td>
</tr>
</tbody>
</table>


##### Windows Server 2003 SP2

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp875.pdf">5.2.3790.3959</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/875">875</a></td>
<td><p><em>FIPS Approved algorithms:</em> DSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#221">#221</a>); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#314">#314</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#245">#245</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#611">#611</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#543">#543</a>)</p>
<p><em>Other algorithms:</em> DES; DES40; Diffie-Hellman (key agreement; key establishment methodology provides between 112 and 150 bits of encryption strength; non-compliant less than 112 bits of encryption strength); MD5; RC2; RC4</p></td>
</tr>
<tr class="odd">
<td>Kernel Mode Cryptographic Module (FIPS.SYS)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp869.pdf">5.2.3790.3959</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/869">869</a></td>
<td><p><em>FIPS Approved algorithms:</em> HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#287">#287</a>); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#313">#313</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#610">#610</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#542">#542</a>)</p>
<p><em>Other algorithms:</em> DES; HMAC-MD5</p></td>
</tr>
<tr class="even">
<td>Enhanced Cryptographic Provider (RSAENH)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp868.pdf">5.2.3790.3959</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/868">868</a></td>
<td><p><em>FIPS Approved algorithms:</em> AES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#548">#548</a>); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#289">#289</a>); RNG (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#316">#316</a>); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#245">#245</a>); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#613">#613</a>); Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#544">#544</a>)</p>
<p><em>Other algorithms:</em> DES; RC2; RC4; MD2; MD4; MD5; RSA (key wrapping; key establishment methodology provides between 112 and 256 bits of encryption strength; non-compliant less than 112 bits of encryption strength)</p></td>
</tr>
</tbody>
</table>


##### Windows Server 2003 SP1

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Kernel Mode Cryptographic Module (FIPS.SYS)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp405.pdf">5.2.3790.1830 [SP1]</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/405">405</a></td>
<td><p><em>FIPS Approved algorithms:</em> Triple-DES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#201">#201</a>[1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#370">#370</a>[1]); SHS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#177">#177</a>[1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#371">#371</a>[2])</p>
<p><em>Other algorithms:</em> DES (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#230">#230</a>[1]); HMAC-MD5; HMAC-SHA-1 (non-compliant)</p>
<p>[1] x86<br />
[2] SP1 x86, x64, IA64</p></td>
</tr>
<tr class="odd">
<td>Enhanced Cryptographic Provider (RSAENH)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp382.pdf">5.2.3790.1830 [Service Pack 1])</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/382">382</a></td>
<td><p><em>FIPS Approved algorithms:</em> Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#192">#192</a>[1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#365">#365</a>[2]); AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#80">#80</a>[1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#290">#290</a>[2]); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#176">#176</a>[1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#364">#364</a>[2]); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#176">#176</a>, vendor affirmed[1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#99">#99</a>[2]); RSA (PKCS#1, vendor affirmed[1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#81">#81</a>[2])</p>
<p><em>Other algorithms:</em> DES (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#226">#226</a>[1]); SHA-256[1]; SHA-384[1]; SHA-512[1]; RC2; RC4; MD2; MD4; MD5</p>
<p>[1] x86<br />
[2] SP1 x86, x64, IA64</p></td>
</tr>
<tr class="even">
<td>Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp381.pdf">5.2.3790.1830 [Service Pack 1]</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/381">381</a></td>
<td><p><em>FIPS Approved algorithms:</em> Triple-DES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#199">#199</a>[1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#381">#381</a>[2]); SHA-1 (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#181">#181</a>[1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#385">#385</a>[2]); DSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#95">#95</a>[1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#146">#146</a>[2]); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#81">#81</a>)</p>
<p><em>Other algorithms:</em> DES (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#229">#229</a>[1]); Diffie-Hellman (key agreement); RC2; RC4; MD5; DES 40</p>
<p>[1] x86<br />
[2] SP1 x86, x64, IA64</p></td>
</tr>
</tbody>
</table>


##### Windows Server 2003

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Kernel Mode Cryptographic Module (FIPS.SYS)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp405.pdf">5.2.3790.0</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/405">405</a></td>
<td><p><em>FIPS Approved algorithms:</em> Triple-DES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#201">#201</a>[1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#370">#370</a>[1]); SHS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#177">#177</a>[1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#371">#371</a>[2])</p>
<p><em>Other algorithms:</em> DES (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#230">#230</a>[1]); HMAC-MD5; HMAC-SHA-1 (non-compliant)</p>
<p>[1] x86<br />
[2] SP1 x86, x64, IA64</p></td>
</tr>
<tr class="odd">
<td>Enhanced Cryptographic Provider (RSAENH)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp382.pdf">5.2.3790.0</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/382">382</a></td>
<td><p><em>FIPS Approved algorithms:</em> Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#192">#192</a>[1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#365">#365</a>[2]); AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#80">#80</a>[1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#290">#290</a>[2]); SHS (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#176">#176</a>[1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#364">#364</a>[2]); HMAC (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#176">#176</a>, vendor affirmed[1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#99">#99</a>[2]); RSA (PKCS#1, vendor affirmed[1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#81">#81</a>[2])</p>
<p><em>Other algorithms:</em> DES (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#226">#226</a>[1]); SHA-256[1]; SHA-384[1]; SHA-512[1]; RC2; RC4; MD2; MD4; MD5</p>
<p>[1] x86<br />
[2] SP1 x86, x64, IA64</p></td>
</tr>
<tr class="even">
<td>Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp381.pdf">5.2.3790.0</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/381">381</a></td>
<td><p><em>FIPS Approved algorithms:</em> Triple-DES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#199">#199</a>[1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#381">#381</a>[2]); SHA-1 (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#181">#181</a>[1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#385">#385</a>[2]); DSA (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#95">#95</a>[1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#146">#146</a>[2]); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#81">#81</a>)</p>
<p><em>Other algorithms:</em> DES (Cert. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#229">#229</a>[1]); Diffie-Hellman (key agreement); RC2; RC4; MD5; DES 40</p>
<p>[1] x86<br />
[2] SP1 x86, x64, IA64</p></td>
</tr>
</tbody>
</table>


#### Other Products

##### Windows Embedded Compact 7 and Windows Embedded Compact 8

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Enhanced Cryptographic Provider</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2957.pdf">7.00.2872 [1] and 8.00.6246 [2]</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2957">2957</a></td>
<td><p><em>FIPS Approved algorithms: AES (Certs.</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4433">#4433</a><em>and</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4434">#4434</a><em>); CKG (vendor affirmed); DRBG (Certs.</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1432">#1432</a><em>and</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1433">#1433</a><em>); HMAC (Certs.</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2946">#2946</a><em>and</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2945">#2945</a><em>); RSA (Certs.</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2414">#2414</a><em>and</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2415">#2415</a><em>); SHS (Certs.</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3651">#3651</a><em>and</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3652">#3652</a><em>); Triple-DES (Certs.</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2383">#2383</a><em>and</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2384">#2384</a><em>)</em></p>
<p><em>Allowed algorithms: HMAC-MD5; MD5; NDRNG</em></p></td>
</tr>
<tr class="odd">
<td>Cryptographic Primitives Library (bcrypt.dll)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp2956.pdf">7.00.2872 [1] and 8.00.6246 [2]</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2956">2956</a></td>
<td><p><em>FIPS Approved algorithms: AES (Certs.</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4430">#4430</a><em>and</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4431">#4431</a><em>); CKG (vendor affirmed); CVL (Certs.</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1139">#1139</a><em>and</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1140">#1140</a><em>); DRBG (Certs.</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1429">#1429</a><em>and</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1430">#1430</a><em>); DSA (Certs.</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1187">#1187</a><em>and</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1188">#1188</a><em>); ECDSA (Certs.</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1072">#1072</a><em>and</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1073">#1073</a><em>); HMAC (Certs.</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2942">#2942</a><em>and</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2943">#2943</a><em>); KAS (Certs.</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#114">#114</a><em>and</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#115">#115</a><em>); RSA (Certs.</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2411">#2411</a><em>and</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2412">#2412</a><em>); SHS (Certs.</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3648">#3648</a><em>and</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3649">#3649</a><em>); Triple-DES (Certs.</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2381">#2381</a><em>and</em><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2382">#2382</a><em>)</em></p>
<p><em>Allowed algorithms: MD5; NDRNG; RSA (key wrapping; key establishment methodology provides between 112 and 150 bits of encryption strength</em></p></td>
</tr>
</tbody>
</table>



##### Windows CE 6.0 and Windows Embedded Compact 7

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Enhanced Cryptographic Provider</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp825.pdf">6.00.1937 [1] and 7.00.1687 [2]</a></td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/825">825</a></td>
<td><p><em>FIPS Approved algorithms:</em> AES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#516">#516</a> [1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2024">#2024</a> [2]); HMAC (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#267">#267</a> [1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1227">#1227</a> [2]); RNG (Certs. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#292">#292</a> [1] and <a href="http://csrc.nist.gov/groups/stm/cavp/documents/rng/rnghistoricalval.html#1060">#1060</a> [2]); RSA (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#230">#230</a> [1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1052">#1052</a> [2]); SHS (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#589">#589</a> [1] and #1774 [2]); Triple-DES (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#526">#526</a> [1] and <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1308">#1308</a> [2])</p>
<p><em>Other algorithms:</em> MD5; HMAC-MD5; RC2; RC4; DES</p></td>
</tr>
</tbody>
</table>


##### Outlook Cryptographic Provider

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Cryptographic Module</strong></td>
<td><strong>Version (link to Security Policy)</strong></td>
<td><strong>FIPS Certificate #</strong></td>
<td><strong>Algorithms</strong></td>
</tr>
<tr class="even">
<td>Outlook Cryptographic Provider (EXCHCSP)</td>
<td><a href="http://csrc.nist.gov/groups/stm/cmvp/documents/140-1/140sp/140sp110.pdf">SR-1A (3821)</a>SR-1A (3821)</td>
<td><a href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/110">110</a></td>
<td><p><em>FIPS Approved algorithms:</em> Triple-DES (Cert. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#18">#18</a>); SHA-1 (Certs. <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#32">#32</a>); RSA (vendor affirmed)</p>
<p><em>Other algorithms:</em> DES (Certs. <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/desval.html#91">#91</a>); DES MAC; RC2; MD2; MD5</p></td>
</tr>
</tbody>
</table>

 

### Cryptographic Algorithms

The following tables are organized by cryptographic algorithms with their modes, states, and key sizes. For each algorithm implementation (operating system / platform), there is a link to the Cryptographic Algorithm Validation Program (CAVP) issued certificate.

### Advanced Encryption Standard (AES)

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Modes / States / Key Sizes</strong></td>
<td><strong>Algorithm Implementation and Certificate #</strong></td>
</tr>
<tr class="even">
<td><ul>
<li>AES-CBC:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
<li>AES-CFB128:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
<li>AES-CTR:</li>
<li><ul>
<li>Counter Source: Internal</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
<li>AES-OFB:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
</ul></td>
<td><p>Microsoft Surface Hub Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4904">#4904</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>AES-CBC:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
<li>AES-CFB128:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
<li>AES-CTR:</li>
<li><ul>
<li>Counter Source: Internal</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
<li>AES-OFB:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
</ul></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4903">#4903</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="even">
<td><ul>
<li>AES-CBC:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
<li>AES-CCM:</li>
<li><ul>
<li>Key Lengths: 128, 192, 256 (bits)</li>
<li>Tag Lengths: 32, 48, 64, 80, 96, 112, 128 (bits)</li>
<li>IV Lengths: 56, 64, 72, 80, 88, 96, 104 (bits)</li>
<li>Plain Text Length: 0-32</li>
<li>AAD Length: 0-65536</li>
</ul></li>
<li>AES-CFB128:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
<li>AES-CFB8:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
<li>AES-CMAC:</li>
<li><ul>
<li>Generation:</li>
<li><ul>
<li>AES-128:</li>
<li><ul>
<li>Block Sizes: Full, Partial</li>
<li>Message Length: 0-65536</li>
<li>Tag Length: 16-16</li>
</ul></li>
<li>AES-192:</li>
<li><ul>
<li>Block Sizes: Full, Partial</li>
<li>Message Length: 0-65536</li>
<li>Tag Length: 16-16</li>
</ul></li>
<li>AES-256:</li>
<li><ul>
<li>Block Sizes: Full, Partial</li>
<li>Message Length: 0-65536</li>
<li>Tag Length: 16-16</li>
</ul></li>
</ul></li>
<li>Verification:</li>
<li><ul>
<li>AES-128:</li>
<li><ul>
<li>Block Sizes: Full, Partial</li>
<li>Message Length: 0-65536</li>
<li>Tag Length: 16-16</li>
</ul></li>
<li>AES-192:</li>
<li><ul>
<li>Block Sizes: Full, Partial</li>
<li>Message Length: 0-65536</li>
<li>Tag Length: 16-16</li>
</ul></li>
<li>AES-256:</li>
<li><ul>
<li>Block Sizes: Full, Partial</li>
<li>Message Length: 0-65536</li>
<li>Tag Length: 16-16</li>
</ul></li>
</ul></li>
</ul></li>
<li>AES-CTR:</li>
<li><ul>
<li>Counter Source: Internal</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
<li>AES-ECB:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
<li>AES-GCM:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
<li>Tag Lengths: 96, 104, 112, 120, 128 (bits)</li>
<li>Plain Text Lengths: 0, 8, 1016, 1024 (bits)</li>
<li>AAD Lengths: 0, 8, 1016, 1024 (bits)</li>
<li>96 bit IV supported</li>
</ul></li>
<li>AES-XTS:</li>
<li><ul>
<li>Key Size: 128:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Block Sizes: Full</li>
</ul></li>
<li>Key Size: 256:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Block Sizes: Full</li>
</ul></li>
</ul></li>
</ul></td>
<td><p>Microsoft Surface Hub SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4902">#4902</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>AES-CBC:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
<li>AES-CCM:</li>
<li><ul>
<li>Key Lengths: 128, 192, 256 (bits)</li>
<li>Tag Lengths: 32, 48, 64, 80, 96, 112, 128 (bits)</li>
<li>IV Lengths: 56, 64, 72, 80, 88, 96, 104 (bits)</li>
<li>Plain Text Length: 0-32</li>
<li>AAD Length: 0-65536</li>
</ul></li>
<li>AES-CFB128:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
<li>AES-CFB8:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
<li>AES-CMAC:</li>
<li><ul>
<li>Generation:</li>
<li><ul>
<li>AES-128:</li>
<li><ul>
<li>Block Sizes: Full, Partial</li>
<li>Message Length: 0-65536</li>
<li>Tag Length: 16-16</li>
</ul></li>
<li>AES-192:</li>
<li><ul>
<li>Block Sizes: Full, Partial</li>
<li>Message Length: 0-65536</li>
<li>Tag Length: 16-16</li>
</ul></li>
<li>AES-256:</li>
<li><ul>
<li>Block Sizes: Full, Partial</li>
<li>Message Length: 0-65536</li>
<li>Tag Length: 16-16</li>
</ul></li>
</ul></li>
<li>Verification:</li>
<li><ul>
<li>AES-128:</li>
<li><ul>
<li>Block Sizes: Full, Partial</li>
<li>Message Length: 0-65536</li>
<li>Tag Length: 16-16</li>
</ul></li>
<li>AES-192:</li>
<li><ul>
<li>Block Sizes: Full, Partial</li>
<li>Message Length: 0-65536</li>
<li>Tag Length: 16-16</li>
</ul></li>
<li>AES-256:</li>
<li><ul>
<li>Block Sizes: Full, Partial</li>
<li>Message Length: 0-65536</li>
<li>Tag Length: 16-16</li>
</ul></li>
</ul></li>
</ul></li>
<li>AES-CTR:</li>
<li><ul>
<li>Counter Source: Internal</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
<li>AES-ECB:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
<li>AES-GCM:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
<li>Tag Lengths: 96, 104, 112, 120, 128 (bits)</li>
<li>Plain Text Lengths: 0, 8, 1016, 1024 (bits)</li>
<li>AAD Lengths: 0, 8, 1016, 1024 (bits)</li>
<li>96 bit IV supported</li>
</ul></li>
<li>AES-XTS:</li>
<li><ul>
<li>Key Size: 128:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Block Sizes: Full</li>
</ul></li>
<li>Key Size: 256:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Block Sizes: Full</li>
</ul></li>
</ul></li>
</ul></td>
<td><p>Windows 10 Mobile (version 1709) SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4901">#4901</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="even">
<td><ul>
<li>AES-CBC:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
<li>AES-CCM:</li>
<li><ul>
<li>Key Lengths: 128, 192, 256 (bits)</li>
<li>Tag Lengths: 32, 48, 64, 80, 96, 112, 128 (bits)</li>
<li>IV Lengths: 56, 64, 72, 80, 88, 96, 104 (bits)</li>
<li>Plain Text Length: 0-32</li>
<li>AAD Length: 0-65536</li>
</ul></li>
<li>AES-CFB128:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
<li>AES-CFB8:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
<li>AES-CMAC:</li>
<li><ul>
<li>Generation:</li>
<li><ul>
<li>AES-128:</li>
<li><ul>
<li>Block Sizes: Full, Partial</li>
<li>Message Length: 0-65536</li>
<li>Tag Length: 16-16</li>
</ul></li>
<li>AES-192:</li>
<li><ul>
<li>Block Sizes: Full, Partial</li>
<li>Message Length: 0-65536</li>
<li>Tag Length: 16-16</li>
</ul></li>
<li>AES-256:</li>
<li><ul>
<li>Block Sizes: Full, Partial</li>
<li>Message Length: 0-65536</li>
<li>Tag Length: 16-16</li>
</ul></li>
</ul></li>
<li>Verification:</li>
<li><ul>
<li>AES-128:</li>
<li><ul>
<li>Block Sizes: Full, Partial</li>
<li>Message Length: 0-65536</li>
<li>Tag Length: 16-16</li>
</ul></li>
<li>AES-192:</li>
<li><ul>
<li>Block Sizes: Full, Partial</li>
<li>Message Length: 0-65536</li>
<li>Tag Length: 16-16</li>
</ul></li>
<li>AES-256:</li>
<li><ul>
<li>Block Sizes: Full, Partial</li>
<li>Message Length: 0-65536</li>
<li>Tag Length: 16-16</li>
</ul></li>
</ul></li>
</ul></li>
<li>AES-CTR:</li>
<li><ul>
<li>Counter Source: Internal</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
<li>AES-ECB:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
</ul></li>
<li>AES-GCM:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>IV Generation: External</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
<li>Tag Lengths: 96, 104, 112, 120, 128 (bits)</li>
<li>Plain Text Lengths: 0, 8, 1016, 1024 (bits)</li>
<li>AAD Lengths: 0, 8, 1016, 1024 (bits)</li>
<li>96 bit IV supported</li>
</ul></li>
<li>AES-XTS:</li>
<li><ul>
<li>Key Size: 128:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Block Sizes: Full</li>
</ul></li>
<li>Key Size: 256:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Block Sizes: Full</li>
</ul></li>
</ul></li>
</ul></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4897">#4897</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="odd">
<td><p>AES-KW:</p>
<ul>
<li>Modes: Decrypt, Encrypt</li>
<li>CIPHK transformation direction: Forward</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
<li>Plain Text Lengths: 128, 192, 256, 320, 2048 (bits)</li>
</ul>
<p>AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4902">Val#4902</a></p></td>
<td><p>Microsoft Surface Hub Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4900">#4900</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="even">
<td><p>AES-KW:</p>
<ul>
<li>Modes: Decrypt, Encrypt</li>
<li>CIPHK transformation direction: Forward</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
<li>Plain Text Lengths: 128, 192, 256, 320, 2048 (bits)</li>
</ul>
<p>AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4901">Val#4901</a></p></td>
<td><p>Windows 10 Mobile (version 1709) Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4899">#4899</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="odd">
<td><p>AES-KW:</p>
<ul>
<li>Modes: Decrypt, Encrypt</li>
<li>CIPHK transformation direction: Forward</li>
<li>Key Lengths: 128, 192, 256 (bits)</li>
<li>Plain Text Lengths: 128, 192, 256, 320, 2048 (bits)</li>
</ul>
<p>AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4897">Val#4897</a></p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4898">#4898</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="even">
<td><p>AES-CCM:</p>
<ul>
<li>Key Lengths: 256 (bits)</li>
<li>Tag Lengths: 128 (bits)</li>
<li>IV Lengths: 96 (bits)</li>
<li>Plain Text Length: 0-32</li>
<li>AAD Length: 0-65536</li>
</ul>
<p>AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4902">Val#4902</a></p></td>
<td><p>Microsoft Surface Hub BitLocker(R) Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4896">#4896</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="odd">
<td><p>AES-CCM:</p>
<ul>
<li>Key Lengths: 256 (bits)</li>
<li>Tag Lengths: 128 (bits)</li>
<li>IV Lengths: 96 (bits)</li>
<li>Plain Text Length: 0-32</li>
<li>AAD Length: 0-65536</li>
</ul>
<p>AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4901">Val#4901</a></p></td>
<td><p>Windows 10 Mobile (version 1709) BitLocker(R) Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4895">#4895</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="even">
<td><p>AES-CCM:</p>
<ul>
<li>Key Lengths: 256 (bits)</li>
<li>Tag Lengths: 128 (bits)</li>
<li>IV Lengths: 96 (bits)</li>
<li>Plain Text Length: 0-32</li>
<li>AAD Length: 0-65536</li>
</ul>
<p>AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4897">Val#4897</a></p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); BitLocker(R) Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4894">#4894</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="odd">
<td><p><strong>CBC</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CFB128</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>OFB</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CTR</strong> ( int only; 128 , 192 , 256 )</p></td>
<td><p>Windows 10 Creators Update (version 1703) Pro, Enterprise, Education Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4627">#4627</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="even">
<td><p><strong>KW</strong> ( AE , AD , AES-128 , AES-192 , AES-256 , FWD , 128 , 256 , 192 , 320 , 2048 )</p>
<p>AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4624">Val#4624</a></p></td>
<td><p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4626">#4626</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="odd">
<td><p><strong>CCM</strong> (KS: 256 ) (Assoc. Data Len Range: 0 - 0 , 2^16 ) (Payload Length Range: 0 - 32 ( Nonce Length(s): 12 (Tag Length(s): 16 )</p>
<p>AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4624">Val#4624</a></p>
<p> </p></td>
<td><p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile BitLocker(R) Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4625">#4625</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="even">
<td><p><strong>ECB</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CBC</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CFB8</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CFB128</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CTR</strong> ( int only; 128 , 192 , 256 )</p>
<p><strong>CCM</strong> (KS: 128 , 192 , 256 ) (Assoc. Data Len Range: 0 - 0 , 2^16 ) (Payload Length Range: 0 - 32 ( Nonce Length(s): 7 8 9 10 11 12 13 (Tag Length(s): 4 6 8 10 12 14 16 )</p>
<p><strong>CMAC</strong> (Generation/Verification ) (KS: 128; Block Size(s): Full / Partial ; Msg Len(s) Min: 0 Max: 2^16 ; Tag Len(s) Min: 16 Max: 16 ) (KS: 192; Block Size(s): Full / Partial ; Msg Len(s) Min: 0 Max: 2^16 ; Tag Len(s) Min: 16 Max: 16 ) (KS: 256; Block Size(s): Full / Partial ; Msg Len(s) Min: 0 Max: 2^16 ; Tag Len(s) Min: 16 Max: 16 )</p>
<p><strong>GCM</strong> (KS: AES_128( e/d ) Tag Length(s): 128 120 112 104 96 ) (KS: AES_192( e/d ) Tag Length(s): 128 120 112 104 96 )</p>
<p>(KS: AES_256( e/d ) Tag Length(s): 128 120 112 104 96 )</p>
<p>IV Generated: ( External ) ; PT Lengths Tested: ( 0 , 1024 , 8 , 1016 ) ; AAD Lengths tested: ( 0 , 1024 , 8 , 1016 ) ; 96BitIV_Supported</p>
<p>GMAC_Supported</p>
<p><strong>XTS</strong>( (KS: XTS_128( (e/d) (f) ) KS: XTS_256( (e/d) (f) )</p></td>
<td><p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4624">#4624</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="odd">
<td><p><strong>ECB</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CBC</strong> ( e/d; 128 , 192 , 256 );</p></td>
<td><p>Windows Embedded Compact Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4434">#4434</a></p>
<p>Version 7.00.2872</p></td>
</tr>
<tr class="even">
<td><p><strong>ECB</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CBC</strong> ( e/d; 128 , 192 , 256 );</p></td>
<td><p>Windows Embedded Compact Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4433">#4433</a></p>
<p>Version 8.00.6246</p></td>
</tr>
<tr class="odd">
<td><p><strong>ECB</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CBC</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CTR</strong> ( int only; 128 , 192 , 256 )</p></td>
<td><p>Windows Embedded Compact Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4431">#4431</a></p>
<p>Version 7.00.2872</p></td>
</tr>
<tr class="even">
<td><p><strong>ECB</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CBC</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CTR</strong> ( int only; 128 , 192 , 256 )</p></td>
<td><p>Windows Embedded Compact Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4430">#4430</a></p>
<p>Version 8.00.6246</p></td>
</tr>
<tr class="odd">
<td><p><strong>CBC</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CFB128</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>OFB</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CTR</strong> ( int only; 128 , 192 , 256 )</p></td>
<td><p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4 and Surface Pro 3 w/ Windows 10 Anniversary Update Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4074">#4074</a></p>
<p>Version 10.0.14393</p></td>
</tr>
<tr class="even">
<td><p><strong>ECB</strong> ( e/d; 128 , 192 , 256 ); <strong>CBC</strong> ( e/d; 128 , 192 , 256 ); <strong>CFB8</strong> ( e/d; 128 , 192 , 256 ); <strong>CFB128</strong> ( e/d; 128 , 192 , 256 ); <strong>CTR</strong> ( int only; 128 , 192 , 256 )</p>
<p><strong>CCM</strong> (KS: 128 , 192 , 256 ) (Assoc. Data Len Range: 0 - 0 , 2^16 ) (Payload Length Range: 0 - 32 ( Nonce Length(s): 7 8 9 10 11 12 13 (Tag Length(s): 4 6 8 10 12 14 16 )</p>
<p><strong>CMAC (Generation/Verification )</strong> (KS: 128; Block Size(s): Full / Partial ; Msg Len(s) Min: 0 Max: 2^16 ; Tag Len(s) Min: 0 Max: 16 ) (KS: 192; Block Size(s): Full / Partial ; Msg Len(s) Min: 0 Max: 2^16 ; Tag Len(s) Min: 0 Max: 16 ) (KS: 256; Block Size(s): Full / Partial ; Msg Len(s) Min: 0 Max: 2^16 ; Tag Len(s) Min: 0 Max: 16 )</p>
<p><strong>GCM</strong> (KS: AES_128( e/d ) Tag Length(s): 128 120 112 104 96 ) (KS: AES_192( e/d ) Tag Length(s): 128 120 112 104 96 )<br />
(KS: AES_256( e/d ) Tag Length(s): 128 120 112 104 96 )<br />
<strong>IV Generated:</strong>  ( Externally ) ; PT Lengths Tested:  ( 0 , 1024 , 8 , 1016 ) ; AAD Lengths tested:  ( 0 , 1024 , 8 , 1016 ) ; IV Lengths Tested:  ( 0 , 0 ) ; 96BitIV_Supported<br />
GMAC_Supported</p>
<p><strong>XTS( (KS: XTS_128</strong>( (e/d) (f) ) <strong>KS: XTS_256</strong>( (e/d) (f) )</p></td>
<td><p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4064">#4064</a></p>
<p>Version 10.0.14393</p></td>
</tr>
<tr class="odd">
<td><p><strong>ECB</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CBC</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CFB8</strong> ( e/d; 128 , 192 , 256 );</p>
<p> </p></td>
<td>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update RSA32 Algorithm Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4063">#4063</a><br />
Version 10.0.14393</td>
</tr>
<tr class="even">
<td><p><strong>KW</strong>  ( AE , AD , AES-128 , AES-192 , AES-256 , FWD , 128 , 192 , 256 , 320 , 2048 )</p>
<p>AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4064">Val#4064</a></p></td>
<td><p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4062">#4062</a></p>
<p>Version 10.0.14393</p></td>
</tr>
<tr class="odd">
<td><p><strong>CCM</strong> (KS: 256 ) (Assoc. Data Len Range: 0 - 0 , 2^16 ) (Payload Length Range: 0 - 32 ( Nonce Length(s): 12 (Tag Length(s): 16 )</p>
<p>AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4064">Val#4064</a></p></td>
<td><p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update BitLocker® Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4061">#4061</a></p>
<p>Version 10.0.14393</p></td>
</tr>
<tr class="even">
<td><p><strong>KW</strong>  ( AE , AD , AES-128 , AES-192 , AES-256 , FWD , 128 , 256 , 192 , 320 , 2048 )</p>
<p>AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3629">Val#3629</a></p></td>
<td><p>Microsoft Windows 10 November 2015 Update; Microsoft Surface Book, Surface Pro 4, Surface Pro 3, Surface 3, Surface Pro 2, and Surface Pro w/ Windows 10 November 2015 Update; Windows 10 Mobile for Microsoft Lumia 950 and Microsoft Lumia 635; Windows 10 for Microsoft Surface Hub 84” and Surface Hub 55” Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3652">#3652</a></p>
<p>Version 10.0.10586</p></td>
</tr>
<tr class="odd">
<td><p><strong>CCM</strong> (KS: 256 ) (Assoc. Data Len Range: 0 - 0 , 2^16 ) (Payload Length Range: 0 - 32 ( Nonce Length(s): 12 (Tag Length(s): 16 )</p>
<p>AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3629">Val#3629</a></p></td>
<td><p>Microsoft Windows 10 November 2015 Update; Microsoft Surface Book, Surface Pro 4, Surface Pro 3, Surface 3, Surface Pro 2, and Surface Pro w/ Windows 10 November 2015 Update; Windows 10 Mobile for Microsoft Lumia 950 and Microsoft Lumia 635; Windows 10 for Microsoft Surface Hub 84” and Surface Hub 55” BitLocker® Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3653">#3653</a></p>
<p>Version 10.0.10586</p></td>
</tr>
<tr class="even">
<td><p><strong>ECB</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CBC</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CFB8</strong> ( e/d; 128 , 192 , 256 );</p>
<p> </p></td>
<td>Microsoft Windows 10 November 2015 Update; Microsoft Surface Book, Surface Pro 4, Surface Pro 3, Surface 3, Surface Pro 2, and Surface Pro w/ Windows 10 November 2015 Update; Windows 10 Mobile for Microsoft Lumia 950 and Microsoft Lumia 635; Windows 10 for Microsoft Surface Hub 84” and Surface Hub 55” RSA32 Algorithm Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3630">#3630</a><br />
Version 10.0.10586</td>
</tr>
<tr class="odd">
<td><p><strong>ECB</strong> ( e/d; 128 , 192 , 256 ); <strong>CBC</strong> ( e/d; 128 , 192 , 256 ); <strong>CFB8</strong> ( e/d; 128 , 192 , 256 ); <strong>CFB128</strong> ( e/d; 128 , 192 , 256 ); <strong>CTR</strong> ( int only; 128 , 192 , 256 )</p>
<p><strong>CCM</strong> (KS: 128 , 192 , 256 ) (Assoc. Data Len Range: 0 - 0 , 2^16 ) (Payload Length Range: 0 - 32 ( Nonce Length(s): 7 8 9 10 11 12 13 (Tag Length(s): 4 6 8 10 12 14 16 )</p>
<p><strong>CMAC (Generation/Verification )</strong> (KS: 128; Block Size(s): Full / Partial ; Msg Len(s) Min: 0 Max: 2^16 ; Tag Len(s) Min: 0 Max: 16 ) (KS: 192; Block Size(s): Full / Partial ; Msg Len(s) Min: 0 Max: 2^16 ; Tag Len(s) Min: 0 Max: 16 ) (KS: 256; Block Size(s): Full / Partial ; Msg Len(s) Min: 0 Max: 2^16 ; Tag Len(s) Min: 0 Max: 16 )</p>
<p><strong>GCM</strong> (KS: AES_128( e/d ) Tag Length(s): 128 120 112 104 96 ) (KS: AES_192( e/d ) Tag Length(s): 128 120 112 104 96 )<br />
(KS: AES_256( e/d ) Tag Length(s): 128 120 112 104 96 )<br />
<strong>IV Generated:</strong>  ( Externally ) ; PT Lengths Tested:  ( 0 , 1024 , 8 , 1016 ) ; AAD Lengths tested:  ( 0 , 1024 , 8 , 1016 ) ; IV Lengths Tested:  ( 0 , 0 ) ; 96BitIV_Supported<br />
GMAC_Supported</p>
<p><strong>XTS( (KS: XTS_128</strong>( (e/d) (f) ) <strong>KS: XTS_256</strong>( (e/d) (f) )</p></td>
<td><p>Microsoft Windows 10 November 2015 Update; Microsoft Surface Book, Surface Pro 4, Surface Pro 3, Surface 3, Surface Pro 2, and Surface Pro w/ Windows 10 November 2015 Update; Windows 10 Mobile for Microsoft Lumia 950 and Microsoft Lumia 635; Windows 10 for Microsoft Surface Hub 84” and Surface Hub 55” SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3629">#3629</a><br />
<br />
</p>
<p>Version 10.0.10586</p></td>
</tr>
<tr class="even">
<td><p>KW  ( AE , AD , AES-128 , AES-192 , AES-256 , FWD , 128 , 256 , 192 , 320 , 2048 )</p>
<p>AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3497">Val#3497</a></p></td>
<td><p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3507">#3507</a></p>
<p>Version 10.0.10240</p></td>
</tr>
<tr class="odd">
<td><p><strong>CCM</strong> (KS: 256 ) (Assoc. Data Len Range: 0 - 0 , 2^16 ) (Payload Length Range: 0 - 32 ( Nonce Length(s): 12 (Tag Length(s): 16 )</p>
<p>AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3497">Val#3497</a></p></td>
<td><p>Microsoft Windows 10, Microsoft Surface Pro 3 with Windows 10, Microsoft Surface 3 with Windows 10, Microsoft Surface Pro 2 with Windows 10, Microsoft Surface Pro with Windows 10 BitLocker® Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3498">#3498</a></p>
<p>Version 10.0.10240</p></td>
</tr>
<tr class="even">
<td><p><strong>ECB</strong> ( e/d; 128 , 192 , 256 ); <strong>CBC</strong> ( e/d; 128 , 192 , 256 ); <strong>CFB8</strong> ( e/d; 128 , 192 , 256 ); <strong>CFB128</strong> ( e/d; 128 , 192 , 256 ); <strong>CTR</strong> ( int only; 128 , 192 , 256 )</p>
<p><strong>CCM</strong> (KS: 128 , 192 , 256 ) (Assoc. Data Len Range: 0 - 0 , 2^16 ) (Payload Length Range: 0 - 32 ( Nonce Length(s): 7 8 9 10 11 12 13 (Tag Length(s): 4 6 8 10 12 14 16 )</p>
<p><strong>CMAC(Generation/Verification )</strong> (KS: 128; Block Size(s): Full / Partial ; Msg Len(s) Min: 0 Max: 2^16 ; Tag Len(s) Min: 0 Max: 16 ) (KS: 192; Block Size(s): Full / Partial ; Msg Len(s) Min: 0 Max: 2^16 ; Tag Len(s) Min: 0 Max: 16 ) (KS: 256; Block Size(s): Full / Partial ; Msg Len(s) Min: 0 Max: 2^16 ; Tag Len(s) Min: 0 Max: 16 )</p>
<p><strong>GCM</strong> (KS: AES_128( e/d ) Tag Length(s): 128 120 112 104 96 ) (KS: AES_192( e/d ) Tag Length(s): 128 120 112 104 96 )<br />
(KS: AES_256( e/d ) Tag Length(s): 128 120 112 104 96 )<br />
<strong>IV Generated:</strong>  ( Externally ) ; PT Lengths Tested:  ( 0 , 1024 , 8 , 1016 ) ; AAD Lengths tested:  ( 0 , 1024 , 8 , 1016 ) ; IV Lengths Tested:  ( 0 , 0 ) ; 96BitIV_Supported<br />
GMAC_Supported</p>
<p><strong>XTS( (KS: XTS_128</strong>( (e/d) (f) ) <strong>KS: XTS_256</strong>( (e/d) (f) )</p></td>
<td>Microsoft Windows 10, Microsoft Surface Pro 3 with Windows 10, Microsoft Surface 3 with Windows 10, Microsoft Surface Pro 2 with Windows 10, Microsoft Surface Pro with Windows 10 SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3497">#3497</a><br />
Version 10.0.10240</td>
</tr>
<tr class="odd">
<td><p><strong>ECB</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CBC</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CFB8</strong> ( e/d; 128 , 192 , 256 );</p>
<p> </p></td>
<td>Microsoft Windows 10, Microsoft Surface Pro 3 with Windows 10, Microsoft Surface 3 with Windows 10, Microsoft Surface Pro 2 with Windows 10, Microsoft Surface Pro with Windows 10 RSA32 Algorithm Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3476">#3476</a><br />
Version 10.0.10240</td>
</tr>
<tr class="even">
<td><p><strong>ECB</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CBC</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CFB8</strong> ( e/d; 128 , 192 , 256 );</p>
<p> </p></td>
<td><p>Microsoft Windows 8.1, Microsoft Windows Server 2012 R2, Microsoft Windows Storage Server 2012 R2, Microsoft Windows RT 8.1, Microsoft Surface with Windows RT 8.1, Microsoft Surface Pro with Windows 8.1, Microsoft Surface 2, Microsoft Surface Pro 2, Microsoft Surface Pro 3, Microsoft Windows Phone 8.1, Microsoft Windows Embedded 8.1 Industry RSA32 Algorithm Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2853">#2853</a></p>
<p>Version 6.3.9600</p></td>
</tr>
<tr class="odd">
<td><p><strong>CCM (KS: 256 )</strong> (Assoc. Data Len Range: 0 - 0 , 2^16 ) (Payload Length Range: 0 - 32 ( Nonce Length(s): 12 (Tag Length(s): 16 )</p>
<p>AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2832">Val#2832</a></p></td>
<td><p>Microsoft Windows 8.1, Microsoft Windows Server 2012 R2, Microsoft Windows Storage Server 2012 R2, Microsoft Windows RT 8.1, Microsoft Surface with Windows RT 8.1, Microsoft Surface Pro with Windows 8.1, Microsoft Surface 2, Microsoft Surface Pro 2, Microsoft Surface Pro 3, Microsoft Windows Phone 8.1, Microsoft Windows Embedded 8.1 Industry and Microsoft StorSimple 8100 BitLocker� Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2848">#2848</a></p>
<p>Version 6.3.9600</p></td>
</tr>
<tr class="even">
<td><p><strong>CCM (KS: 128 , 192 , 256 )</strong> (Assoc. Data Len Range: 0 - 0 , 2^16 ) (Payload Length Range: 0 - 0 ( Nonce Length(s): 7 8 9 10 11 12 13 (Tag Length(s): 4 6 8 10 12 14 16 )</p>
<p><strong>CMAC (Generation/Verification ) (KS: 128</strong>; Block Size(s): Full / Partial ; Msg Len(s) Min: 0 Max: 2^16 ; Tag Len(s) Min: 0 Max: 16 ) (KS: 192; Block Size(s): Full / Partial ; Msg Len(s) Min: 0 Max: 2^16 ; Tag Len(s) Min: 0 Max: 16 ) (KS: 256; Block Size(s): Full / Partial ; Msg Len(s) Min: 0 Max: 2^16 ; Tag Len(s) Min: 0 Max: 16 )</p>
<p><strong>GCM (KS: AES_128</strong>( e/d ) Tag Length(s): 128 120 112 104 96 ) (KS: AES_192( e/d ) Tag Length(s): 128 120 112 104 96 )</p>
<p><strong>(KS: AES_256</strong>( e/d ) Tag Length(s): 128 120 112 104 96 )</p>
<p><strong>IV Generated:</strong>  ( Externally ) ; PT Lengths Tested:  ( 0 , 128 , 1024 , 8 , 1016 ) ; AAD Lengths tested:  ( 0 , 128 , 1024 , 8 , 1016 ) ; IV Lengths Tested:  ( 8 , 1024 ) ; 96BitIV_Supported ;<br />
<strong>OtherIVLen_Supported<br />
GMAC_Supported</strong></p></td>
<td><p>Windows Storage Server 2012 R2, Microsoft Windows RT 8.1, Microsoft Surface with Windows RT 8.1, Microsoft Surface Pro with Windows 8.1, Microsoft Surface 2, Microsoft Surface Pro 2, Microsoft Surface Pro 3, Microsoft Windows Phone 8.1, Microsoft Windows Embedded 8.1 Industry and Microsoft StorSimple 8100 SymCrypt Cryptographic Implementations #<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2832">2832</a></p>
<p>Version 6.3.9600</p></td>
</tr>
<tr class="odd">
<td><p><strong>CCM (KS: 128 , 192 , 256</strong> ) <strong>(Assoc. Data Len Range</strong>: 0 - 0 , 2^16 ) <strong>(Payload Length Range</strong>: 0 - 32 ( <strong>Nonce Length(s)</strong>: 7 8 9 10 11 12 13 <strong>(Tag Length(s)</strong>: 4 6 8 10 12 14 16 )<br />
AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2197">Val#2197</a></p>
<p><strong>CMAC</strong> (Generation/Verification ) <strong>(KS: 128;</strong> Block Size(s): ; <strong>Msg Len(s)</strong> Min: 0 Max: 2^16 ; <strong>Tag Len(s)</strong> Min: 16 Max: 16 ) <strong>(KS: 192</strong>; Block Size(s): ; <strong>Msg Len(s)</strong> Min: 0 Max: 2^16 ; <strong>Tag Len(s)</strong> Min: 16 Max: 16 ) <strong>(KS: 256</strong>; Block Size(s): ; <strong>Msg Len(s)</strong> Min: 0 Max: 2^16 ; <strong>Tag Len(s)</strong> Min: 16 Max: 16 )<br />
AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2197">Val#2197</a></p>
<p><strong>GCM(KS: AES_128</strong>( e/d ) Tag Length(s): 128 120 112 104 96 ) <strong>(KS: AES_192</strong>( e/d ) Tag Length(s): 128 120 112 104 96 )<br />
<strong>(KS: AES_256</strong>( e/d ) Tag Length(s): 128 120 112 104 96 )<br />
<strong>IV Generated:</strong> ( Externally ) ; <strong>PT Lengths Tested:</strong> ( 0 , 128 , 1024 , 8 , 1016 ) ; <strong>AAD Lengths tested:</strong> ( 0 , 128 , 1024 , 8 , 1016 ) ; <strong>IV Lengths Tested:</strong> ( 8 , 1024 ) ; <strong>96BitIV_Supported<br />
GMAC_Supported</strong></p></td>
<td>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2216">#2216</a></td>
</tr>
<tr class="even">
<td><p><strong>CCM (KS: 256 ) (Assoc. Data Len Range:</strong> 0 - 0 , 2^16 <strong>) (Payload Length Range:</strong> 0 - 32 ( <strong>Nonce Length(s)</strong>: 12 <strong>(Tag Length(s)</strong>: 16 )</p>
<p>AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2196">Val#2196</a></p></td>
<td>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 BitLocker® Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2198">#2198</a></td>
</tr>
<tr class="odd">
<td><p><strong>ECB</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CBC</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CFB8</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CFB128</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CTR</strong> ( int only; 128 , 192 , 256 )</p></td>
<td>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 Next Generation Symmetric Cryptographic Algorithms Implementations (SYMCRYPT) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2197">#2197</a></td>
</tr>
<tr class="even">
<td><p><strong>ECB</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CBC</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CFB8</strong> ( e/d; 128 , 192 , 256 );</p>
<p> </p></td>
<td>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 Symmetric Algorithm Implementations (RSA32) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2196">#2196</a></td>
</tr>
<tr class="odd">
<td><strong>CCM (KS: 128 , 192 , 256 ) (Assoc. Data Len Range:</strong> 0 – 0 , 2^16 <strong>) (Payload Length Range:</strong> 0 - 32 <strong>( Nonce Length(s):</strong> 7 8 9 10 11 12 13 <strong>(Tag Length(s):</strong> 4 6 8 10 12 14 16 <strong>)</strong><br />
AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">Val#1168</a></td>
<td><p>Windows Server 2008 R2 and SP1 CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1187">#1187</a></p>
<p>Windows 7 Ultimate and SP1 CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1178">#1178</a></p></td>
</tr>
<tr class="even">
<td><strong>CCM (KS: 128 , 256 ) (Assoc. Data Len Range:</strong> 0 - 8 <strong>) (Payload Length Range:</strong> 4 - 32 <strong>( Nonce Length(s):</strong> 7 8 12 13 <strong>(Tag Length(s):</strong> 4 6 8 14 16 <strong>)</strong><br />
AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">Val#1168</a></td>
<td>Windows 7 Ultimate and SP1 and Windows Server 2008 R2 and SP1 BitLocker Algorithm Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1177">#1177</a></td>
</tr>
<tr class="odd">
<td><p><strong>ECB</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CBC</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CFB8</strong> ( e/d; 128 , 192 , 256 );</p>
<p> </p></td>
<td>Windows 7 and SP1 and Windows Server 2008 R2 and SP1 Symmetric Algorithm Implementation <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a></td>
</tr>
<tr class="even">
<td><p><strong>GCM</strong></p>
<p><strong>GMAC</strong></p></td>
<td>Windows 7 and SP1 and Windows Server 2008 R2 and SP1 Symmetric Algorithm Implementation <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">#1168</a> , vendor-affirmed</td>
</tr>
<tr class="odd">
<td><strong>CCM (KS: 128 , 256 ) (Assoc. Data Len Range:</strong> 0 - 8 <strong>) (Payload Length Range:</strong> 4 - 32 <strong>( Nonce Length(s):</strong> 7 8 12 13 <strong>(Tag Length(s):</strong> 4 6 8 14 16 <strong>)</strong></td>
<td>Windows Vista Ultimate SP1 and Windows Server 2008 BitLocker Algorithm Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#760">#760</a></td>
</tr>
<tr class="even">
<td><strong>CCM (KS: 128 , 192 , 256 ) (Assoc. Data Len Range:</strong> 0 - 0 , 2^16 <strong>) (Payload Length Range:</strong> 1 - 32 <strong>( Nonce Length(s):</strong> 7 8 9 10 11 12 13 <strong>(Tag Length(s):</strong> 4 6 8 10 12 14 16 <strong>)</strong></td>
<td><p>Windows Server 2008 CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#757">#757</a></p>
<p>Windows Vista Ultimate SP1 CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#756">#756</a></p></td>
</tr>
<tr class="odd">
<td><p><strong>CBC</strong> ( e/d; 128 , 256 );</p>
<p><strong>CCM</strong> (<strong>KS: 128 , 256</strong> ) (<strong>Assoc. Data Len Range</strong>: 0 - 8 ) (<strong>Payload Length Range</strong>: 4 - 32 ( <strong>Nonce Length(s)</strong>: 7 8 12 13 (<strong>Tag Length(s)</strong>: 4 6 8 14 16 )</p></td>
<td><p>Windows Vista Ultimate BitLocker Drive Encryption <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#715">#715</a></p>
<p>Windows Vista Ultimate BitLocker Drive Encryption <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#424">#424</a></p></td>
</tr>
<tr class="even">
<td><p><strong>ECB</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CBC</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CFB8</strong> ( e/d; 128 , 192 , 256 );</p></td>
<td><p>Windows Vista Ultimate SP1 and Windows Server 2008 Symmetric Algorithm Implementation <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#739">#739</a></p>
<p>Windows Vista Symmetric Algorithm Implementation <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#553">#553</a></p></td>
</tr>
<tr class="odd">
<td><p><strong>ECB</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CBC</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CTR</strong> ( int only; 128 , 192 , 256 )</p></td>
<td>Windows Embedded Compact 7 Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2023">#2023</a></td>
</tr>
<tr class="even">
<td><p><strong>ECB</strong> ( e/d; 128 , 192 , 256 );</p>
<p><strong>CBC</strong> ( e/d; 128 , 192 , 256 );</p></td>
<td><p>Windows Embedded Compact 7 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2024">#2024</a></p>
<p>Windows Server 2003 SP2 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#818">#818</a></p>
<p>Windows XP Professional SP3 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#781">#781</a></p>
<p>Windows 2003 SP2 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#548">#548</a></p>
<p>Windows CE 6.0 and Windows CE 6.0 R2 and Windows Mobile Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#516">#516</a></p>
<p>Windows CE and Windows Mobile 6, 6.1, and 6.5 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#507">#507</a></p>
<p>Windows Server 2003 SP1 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#290">#290</a></p>
<p>Windows CE 5.0 and 5.1 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#224">#224</a></p>
<p>Windows Server 2003 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#80">#80</a></p>
<p>Windows XP, SP1, and SP2 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#33">#33</a></p></td>
</tr>
</tbody>
</table>


Deterministic Random Bit Generator (DRBG)

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Modes / States / Key Sizes</strong></td>
<td><strong>Algorithm Implementation and Certificate #</strong></td>
</tr>
<tr class="even">
<td><ul>
<li>Counter:</li>
<li><ul>
<li>Modes: AES-256</li>
<li>Derivation Function States: Derivation Function not used</li>
<li>Prediction Resistance Modes: Not Enabled</li>
</ul></li>
</ul>
<p>Prerequisite: AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4904">#4904</a></p></td>
<td><p>Microsoft Surface Hub Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1734">#1734</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>Counter:</li>
<li><ul>
<li>Modes: AES-256</li>
<li>Derivation Function States: Derivation Function not used</li>
<li>Prediction Resistance Modes: Not Enabled</li>
</ul></li>
</ul>
<p>Prerequisite: AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4903">#4903</a></p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1733">#1733</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="even">
<td><ul>
<li>Counter:</li>
<li><ul>
<li>Modes: AES-256</li>
<li>Derivation Function States: Derivation Function used</li>
<li>Prediction Resistance Modes: Not Enabled</li>
</ul></li>
</ul>
<p>Prerequisite: AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4902">#4902</a></p></td>
<td><p>Microsoft Surface Hub SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1732">#1732</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>Counter:</li>
<li><ul>
<li>Modes: AES-256</li>
<li>Derivation Function States: Derivation Function used</li>
<li>Prediction Resistance Modes: Not Enabled</li>
</ul></li>
</ul>
<p>Prerequisite: AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4901">#4901</a></p></td>
<td><p>Windows 10 Mobile (version 1709) SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1731">#1731</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="even">
<td><ul>
<li>Counter:</li>
<li><ul>
<li>Modes: AES-256</li>
<li>Derivation Function States: Derivation Function used</li>
<li>Prediction Resistance Modes: Not Enabled</li>
</ul></li>
</ul>
<p>Prerequisite: AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4897">#4897</a></p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1730">#1730</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="odd">
<td><strong>CTR_DRBG:</strong> [ Prediction Resistance Tested: Not Enabled; BlockCipher_No_df: ( AES-256 ) ( AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4627">Val#4627</a> ) ]</td>
<td><p>Windows 10 Creators Update (version 1703) Pro, Enterprise, Education Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1556">#1556</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="even">
<td><strong>CTR_DRBG:</strong> [ Prediction Resistance Tested: Not Enabled; BlockCipher_Use_df: ( AES-256 ) ( AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4624">Val#4624</a> ) ]</td>
<td><p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1555">#1555</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="odd">
<td><strong>CTR_DRBG</strong>: [ Prediction Resistance Tested: Not Enabled; BlockCipher_No_df: ( AES-256 ) ( AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4434">Val#4434</a> ) ]</td>
<td><p>Windows Embedded Compact Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1433">#1433</a></p>
<p>Version 7.00.2872</p></td>
</tr>
<tr class="even">
<td><strong>CTR_DRBG</strong>: [ Prediction Resistance Tested: Not Enabled; BlockCipher_No_df: ( AES-256 ) ( AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4433">Val#4433</a> ) ]</td>
<td><p>Windows Embedded Compact Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1432">#1432</a></p>
<p>Version 8.00.6246</p></td>
</tr>
<tr class="odd">
<td><strong>CTR_DRBG</strong>: [ Prediction Resistance Tested: Not Enabled; BlockCipher_No_df: ( AES-256 ) ( AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4431">Val#4431</a> ) ]</td>
<td><p>Windows Embedded Compact Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1430">#1430</a></p>
<p>Version 7.00.2872</p></td>
</tr>
<tr class="even">
<td><strong>CTR_DRBG</strong>: [ Prediction Resistance Tested: Not Enabled; BlockCipher_No_df: ( AES-256 ) ( AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4430">Val#4430</a> ) ]</td>
<td><p>Windows Embedded Compact Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1429">#1429</a></p>
<p>Version 8.00.6246</p></td>
</tr>
<tr class="odd">
<td><strong>CTR_DRBG:</strong> [ Prediction Resistance Tested: Not Enabled; BlockCipher_No_df: ( AES-256 ) ( AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4074">Val#4074</a> ) ]</td>
<td><p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4 and Surface Pro 3 w/ Windows 10 Anniversary Update Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1222">#1222</a></p>
<p>Version 10.0.14393</p></td>
</tr>
<tr class="even">
<td><strong>CTR_DRBG:</strong> [ Prediction Resistance Tested: Not Enabled; BlockCipher_Use_df: ( AES-256 ) ( AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4064">Val#4064</a> ) ]</td>
<td><p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1217">#1217</a></p>
<p>Version 10.0.14393</p></td>
</tr>
<tr class="odd">
<td><strong>CTR_DRBG:</strong> [ Prediction Resistance Tested: Not Enabled; BlockCipher_Use_df: ( AES-256 ) ( AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3629">Val#3629</a> ) ]</td>
<td><p>Microsoft Windows 10 November 2015 Update; Microsoft Surface Book, Surface Pro 4, Surface Pro 3, Surface 3, Surface Pro 2, and Surface Pro w/ Windows 10 November 2015 Update; Windows 10 Mobile for Microsoft Lumia 950 and Microsoft Lumia 635; Windows 10 for Microsoft Surface Hub and Surface Hub SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#955">#955</a></p>
<p>Version 10.0.10586</p></td>
</tr>
<tr class="even">
<td><strong>CTR_DRBG:</strong> [ Prediction Resistance Tested: Not Enabled; BlockCipher_Use_df: ( AES-256 ) ( AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3497">Val#3497</a> ) ]</td>
<td><p>Microsoft Windows 10, Microsoft Surface Pro 3 with Windows 10, Microsoft Surface 3 with Windows 10, Microsoft Surface Pro 2 with Windows 10, Microsoft Surface Pro with Windows 10 SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#868">#868</a></p>
<p>Version 10.0.10240</p></td>
</tr>
<tr class="odd">
<td><strong>CTR_DRBG:</strong> [ Prediction Resistance Tested: Not Enabled; BlockCipher_Use_df: ( AES-256 ) ( AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2832">Val#2832</a> ) ]</td>
<td><p>Windows Storage Server 2012 R2, Microsoft Windows RT 8.1, Microsoft Surface with Windows RT 8.1, Microsoft Surface Pro with Windows 8.1, Microsoft Surface 2, Microsoft Surface Pro 2, Microsoft Surface Pro 3, Microsoft Windows Phone 8.1, Microsoft Windows Embedded 8.1 Industry and Microsoft StorSimple 8100 SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#489">#489</a></p>
<p>Version 6.3.9600</p></td>
</tr>
<tr class="even">
<td><strong>CTR_DRBG</strong>: [ Prediction Resistance Tested: Not Enabled; BlockCipher_Use_df: ( AES-256 ) ( AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2197">Val#2197</a> ) ]</td>
<td>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 Next Generation Symmetric Cryptographic Algorithms Implementations (SYMCRYPT) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#258">#258</a></td>
</tr>
<tr class="odd">
<td><strong>CTR_DRBG</strong>: [ Prediction Resistance Tested: Not Enabled; BlockCipher_No_df: ( AES-256 ) ( AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#2023">Val#2023</a> ) ]</td>
<td>Windows Embedded Compact 7 Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#193">#193</a></td>
</tr>
<tr class="even">
<td><strong>CTR_DRBG</strong>: [ Prediction Resistance Tested: Not Enabled; BlockCipher_No_df: ( AES-256 ) ( AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#1168">Val#1168</a> ) ]</td>
<td>Windows 7 Ultimate and SP1 and Windows Server 2008 R2 and SP1 RNG Library <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#23">#23</a></td>
</tr>
<tr class="odd">
<td><strong>DRBG</strong> (SP 800–90)</td>
<td>Windows Vista Ultimate SP1, vendor-affirmed</td>
</tr>
</tbody>
</table>


#### Digital Signature Algorithm (DSA)

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Modes / States / Key Sizes</strong></td>
<td><strong>Algorithm Implementation and Certificate #</strong></td>
</tr>
<tr class="even">
<td><ul>
<li>DSA:</li>
<li><ul>
<li>186-4:</li>
<li><ul>
<li>PQGGen:</li>
<li><ul>
<li>L = 2048, N = 256 SHA: SHA-256</li>
<li>L = 3072, N = 256 SHA: SHA-256</li>
</ul></li>
<li>PQGVer:</li>
<li><ul>
<li>L = 2048, N = 256 SHA: SHA-256</li>
<li>L = 3072, N = 256 SHA: SHA-256</li>
</ul></li>
<li>SigGen:</li>
<li><ul>
<li>L = 2048, N = 256 SHA: SHA-256</li>
<li>L = 3072, N = 256 SHA: SHA-256</li>
</ul></li>
<li>SigVer:</li>
<li><ul>
<li>L = 2048, N = 256 SHA: SHA-256</li>
<li>L = 3072, N = 256 SHA: SHA-256</li>
</ul></li>
<li>KeyPair:</li>
<li><ul>
<li>L = 2048, N = 256</li>
<li>L = 3072, N = 256</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4011">#4011</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1732">#1732</a></p></td>
<td><p>Microsoft Surface Hub SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1303">#1303</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>DSA:</li>
<li><ul>
<li>186-4:</li>
<li><ul>
<li>PQGGen:</li>
<li><ul>
<li>L = 2048, N = 256 SHA: SHA-256</li>
<li>L = 3072, N = 256 SHA: SHA-256</li>
</ul></li>
<li>PQGVer:</li>
<li><ul>
<li>L = 2048, N = 256 SHA: SHA-256</li>
<li>L = 3072, N = 256 SHA: SHA-256</li>
</ul></li>
<li>SigGen:</li>
<li><ul>
<li>L = 2048, N = 256 SHA: SHA-256</li>
<li>L = 3072, N = 256 SHA: SHA-256</li>
</ul></li>
<li>SigVer:</li>
<li><ul>
<li>L = 2048, N = 256 SHA: SHA-256</li>
<li>L = 3072, N = 256 SHA: SHA-256</li>
</ul></li>
<li>KeyPair:</li>
<li><ul>
<li> </li>
<li> </li>
<li>L = 2048, N = 256</li>
<li>L = 3072, N = 256</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4010">#4010</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1731">#1731</a></p></td>
<td><p>Windows 10 Mobile (version 1709) SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1302">#1302</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="even">
<td><ul>
<li>DSA:</li>
<li><ul>
<li>186-4:</li>
<li><ul>
<li>PQGGen:</li>
<li><ul>
<li>L = 2048, N = 256 SHA: SHA-256</li>
<li>L = 3072, N = 256 SHA: SHA-256</li>
</ul></li>
<li>PQGVer:</li>
<li><ul>
<li>L = 2048, N = 256 SHA: SHA-256</li>
<li>L = 3072, N = 256 SHA: SHA-256</li>
</ul></li>
<li>SigGen:</li>
<li><ul>
<li>L = 2048, N = 256 SHA: SHA-256</li>
<li>L = 3072, N = 256 SHA: SHA-256</li>
</ul></li>
<li>SigVer:</li>
<li><ul>
<li>L = 2048, N = 256 SHA: SHA-256</li>
<li>L = 3072, N = 256 SHA: SHA-256</li>
</ul></li>
<li>KeyPair:</li>
<li><ul>
<li>L = 2048, N = 256</li>
<li>L = 3072, N = 256</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4009">#4009</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1730">#1730</a></p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1301">#1301</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="odd">
<td><p><strong>FIPS186-4:</strong></p>
<p><strong>PQG(gen)</strong>PARMS TESTED:   [ (2048,256)SHA( 256 ); (3072,256) SHA( 256 ) ]</p>
<p><strong>PQG(ver)</strong>PARMS TESTED:   [ (2048,256) SHA( 256 ); (3072,256) SHA( 256 ) ]</p>
<p><strong>KeyPairGen</strong>:   [ (2048,256) ; (3072,256) ]</p>
<p><strong>SIG(gen)</strong>PARMS TESTED:   [ (2048,256) SHA( 256 ); (3072,256) SHA( 256 ); ]</p>
<p><strong>SIG(ver)</strong>PARMS TESTED:   [ (2048,256) SHA( 256 ); (3072,256) SHA( 256 ) ]</p>
<p>SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">Val#3790</a></p>
<p>DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1555">Val# 1555</a></p></td>
<td><p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1223">#1223</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="even">
<td><strong>FIPS186-4:<br />
PQG(ver)PARMS TESTED:</strong>   [ (1024,160) SHA( 1 ); ]<br />
<strong>SIG(ver)PARMS TESTED:</strong>   [ (1024,160) SHA( 1 ); ]<br />
SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3649">Val# 3649</a></td>
<td><p>Windows Embedded Compact Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1188">#1188</a></p>
<p>Version 7.00.2872</p></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-4:<br />
PQG(ver)PARMS TESTED:</strong>   [ (1024,160) SHA( 1 ); ]<br />
<strong>SIG(ver)PARMS TESTED:</strong>   [ (1024,160) SHA( 1 ); ]<br />
SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3648">Val#3648</a></td>
<td><p>Windows Embedded Compact Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1187">#1187</a></p>
<p>Version 8.00.6246</p></td>
</tr>
<tr class="even">
<td><p><strong>FIPS186-4:<br />
PQG(gen)</strong>PARMS TESTED: [<br />
(2048,256)SHA( 256 ); (3072,256) SHA( 256 ) ]<br />
<strong>PQG(ver)</strong>PARMS TESTED:   [ (2048,256) SHA( 256 ); (3072,256) SHA( 256 ) ]<br />
KeyPairGen:    [ (2048,256) ; (3072,256) ]<br />
<strong>SIG(gen)</strong>PARMS TESTED:   [ (2048,256)<br />
SHA( 256 ); (3072,256) SHA( 256 ); ]<br />
<strong>SIG(ver)</strong>PARMS TESTED:   [ (2048,256) SHA( 256 ); (3072,256) SHA( 256 ) ]</p>
<p>SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">Val# 3347</a><br />
DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1217">Val# 1217</a></p></td>
<td><p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1098">#1098</a></p>
<p>Version 10.0.14393</p></td>
</tr>
<tr class="odd">
<td><p><strong>FIPS186-4:<br />
PQG(gen)</strong>PARMS TESTED:   [ (2048,256)SHA( 256 ); (3072,256) SHA( 256 ) ] <strong>PQG(ver)</strong>PARMS TESTED:   [ (2048,256) SHA( 256 ); (3072,256) SHA( 256 )]<br />
KeyPairGen:    [ (2048,256) ; (3072,256) ] <strong>SIG(gen)</strong>PARMS TESTED:   [ (2048,256) SHA( 256 ); (3072,256) SHA( 256 ); ]<br />
<strong>SIG(ver)</strong>PARMS TESTED:   [ (2048,256) SHA( 256 ); (3072,256) SHA( 256 ) ]</p>
<p>SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3047">Val# 3047</a><br />
DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#955">Val# 955</a></p></td>
<td><p>Microsoft Windows 10 November 2015 Update; Microsoft Surface Book, Surface Pro 4, Surface Pro 3, Surface 3, Surface Pro 2, and Surface Pro w/ Windows 10 November 2015 Update; Windows 10 Mobile for Microsoft Lumia 950 and Microsoft Lumia 635; Windows 10 for Microsoft Surface Hub 84” and Surface Hub 55” MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1024">#1024</a></p>
<p>Version 10.0.10586</p></td>
</tr>
<tr class="even">
<td><p><strong>FIPS186-4:<br />
PQG(gen)</strong>PARMS TESTED:   [ (2048,256)SHA( 256 ); (3072,256) SHA( 256 ) ]<br />
<strong>PQG(ver)</strong>PARMS TESTED:   [ (2048,256) SHA( 256 ); (3072,256) SHA( 256 ) ]<br />
KeyPairGen:    [ (2048,256) ; (3072,256) ]<br />
<strong>SIG(gen)</strong>PARMS TESTED:   [ (2048,256) SHA( 256 ); (3072,256) SHA( 256 ); ] <strong>SIG(ver)</strong>PARMS TESTED:   [ (2048,256) SHA( 256 ); (3072,256) SHA( 256 ) ]</p>
<p>SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2886">Val# 2886</a><br />
DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#868">Val# 868</a></p></td>
<td><p>Microsoft Windows 10, Microsoft Surface Pro 3 with Windows 10, Microsoft Surface 3 with Windows 10, Microsoft Surface Pro 2 with Windows 10, Microsoft Surface Pro with Windows 10 MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#983">#983</a></p>
<p>Version 10.0.10240</p></td>
</tr>
<tr class="odd">
<td><p><strong>FIPS186-4:<br />
PQG(gen)</strong>PARMS TESTED:   [<br />
(2048,256)SHA( 256 ); (3072,256) SHA( 256 ) ]<br />
<strong>PQG(ver</strong>)PARMS TESTED:   [ (2048,256)<br />
SHA( 256 ); (3072,256) SHA( 256 ) ]<br />
KeyPairGen:    [ (2048,256) ; (3072,256) ]<br />
<strong>SIG(gen)</strong>PARMS TESTED:   [ (2048,256) SHA( 256 ); (3072,256) SHA( 256 ); ]<br />
<strong>SIG(ver)</strong>PARMS TESTED:   [ (2048,256) SHA( 256 ); (3072,256) SHA( 256 ) ]</p>
<p>SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373">Val# 2373</a><br />
DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#489">Val# 489</a></p></td>
<td><p>Microsoft Windows 8.1, Microsoft Windows Server 2012 R2, Microsoft Windows Storage Server 2012 R2, Microsoft Windows RT 8.1, Microsoft Surface with Windows RT 8.1, Microsoft Surface Pro with Windows 8.1, Microsoft Surface 2, Microsoft Surface Pro 2, Microsoft Surface Pro 3, Microsoft Windows Phone 8.1, Microsoft Windows Embedded 8.1 Industry and Microsoft StorSimple 8100 MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#855">#855</a></p>
<p>Version 6.3.9600</p></td>
</tr>
<tr class="even">
<td><p><strong>FIPS186</strong>-2:<br />
<strong>PQG(ver)</strong> MOD(1024);<br />
<strong>SIG(ver)</strong> MOD(1024);<br />
SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a><br />
DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#258">#258</a></p>
<p><strong>FIPS186-4:<br />
PQG(gen)PARMS TESTED</strong>: [ (2048,256)SHA( 256 ); (3072,256) SHA( 256 ) ]<br />
<strong>PQG(ver)PARMS TESTED</strong>: [ (2048,256) SHA( 256 ); (3072,256) SHA( 256 ) ]<br />
<strong>SIG(gen)PARMS TESTED</strong>: [ (2048,256) SHA( 256 ); (3072,256) SHA( 256 ); ]<br />
<strong>SIG(ver)PARMS TESTED</strong>: [ (2048,256) SHA( 256 ); (3072,256) SHA( 256 ) ]<br />
SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a><br />
DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#258">#258</a><br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/dsahistoricalval.htm#687">Historical DSA List Val#687</a>.</p></td>
<td>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#687">#687</a></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-2:<br />
PQG(ver)</strong> MOD(1024);<br />
<strong>SIG(ver)</strong> MOD(1024);<br />
SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1902">#1902</a><br />
DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#258">#258</a><br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/dsahistoricalval.htm#686">Historical DSA List Val#686</a>.</td>
<td>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 DSS and Diffie-Hellman Enhanced Cryptographic Provider (DSSENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#686">#686</a></td>
</tr>
<tr class="even">
<td><strong>FIPS186-2:<br />
SIG(ver)</strong> MOD(1024);<br />
SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1773">Val# 1773</a><br />
DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#193">Val# 193</a><br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/dsahistoricalval.htm#645">Historical DSA List Val#645</a>.</td>
<td>Windows Embedded Compact 7 Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#645">#645</a></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-2:<br />
SIG(ver)</strong> MOD(1024);<br />
SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val# 1081</a><br />
DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#23">Val# 23</a><br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/dsahistoricalval.htm#391">Historical DSA List Val#391</a>. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/dsahistoricalval.htm#386">Historical DSA List Val#386</a>.</td>
<td><p>Windows Server 2008 R2 and SP1 CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#391">#391</a></p>
<p>Windows 7 Ultimate and SP1 CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#386">#386</a></p></td>
</tr>
<tr class="even">
<td><strong>FIPS186-2:<br />
SIG(ver)</strong> MOD(1024);<br />
SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val# 1081</a><br />
RNG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#649">Val# 649</a><br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/dsahistoricalval.htm#390">Historical DSA List Val#390</a>. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/dsahistoricalval.htm#385">Historical DSA List Val#385</a>.</td>
<td><p>Windows Server 2008 R2 and SP1 Enhanced DSS (DSSENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#390">#390</a></p>
<p>Windows 7 Ultimate and SP1 Enhanced DSS (DSSENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#385">#385</a></p></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-2:<br />
SIG(ver)</strong> MOD(1024);<br />
SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val# 753</a><br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/dsahistoricalval.htm#284">Historical DSA List Val#284</a>. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/dsahistoricalval.htm#283">Historical DSA List Val#283</a>.</td>
<td><p>Windows Server 2008 CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#284">#284</a></p>
<p>Windows Vista Ultimate SP1 CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#283">#283</a></p></td>
</tr>
<tr class="even">
<td><strong>FIPS186-2:<br />
SIG(ver)</strong> MOD(1024);<br />
SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val# 753</a><br />
RNG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#435">Val# 435</a><br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/dsahistoricalval.htm#282">Historical DSA List Val#282</a>. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/dsahistoricalval.htm#281">Historical DSA List Val#281</a>.</td>
<td><p>Windows Server 2008 Enhanced DSS (DSSENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#282">#282</a></p>
<p>Windows Vista Ultimate SP1 Enhanced DSS (DSSENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#281">#281</a></p></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-2:<br />
SIG(ver)</strong> MOD(1024);<br />
SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val# 618</a><br />
RNG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#321">Val# 321</a><br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/dsahistoricalval.htm#227">Historical DSA List Val#227</a>. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/dsahistoricalval.htm#226">Historical DSA List Val#226</a>.</td>
<td><p>Windows Vista CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#227">#227</a></p>
<p>Windows Vista Enhanced DSS (DSSENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#226">#226</a></p></td>
</tr>
<tr class="even">
<td><strong>FIPS186-2:<br />
SIG(ver)</strong> MOD(1024);<br />
SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#784">Val# 784</a><br />
RNG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#448">Val# 448</a><br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/dsahistoricalval.htm#292">Historical DSA List Val#292</a>.</td>
<td>Windows XP Professional SP3 Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#292">#292</a></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-2:<br />
SIG(ver)</strong> MOD(1024);<br />
SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#783">Val# 783</a><br />
RNG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#447">Val# 447</a><br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/dsahistoricalval.htm#291">Historical DSA List Val#291</a>.</td>
<td>Windows XP Professional SP3 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#291">#291</a></td>
</tr>
<tr class="even">
<td><strong>FIPS186-2:<br />
PQG(gen)</strong> MOD(1024);<br />
<strong>PQG(ver)</strong> MOD(1024);<br />
<strong>KEYGEN(Y)</strong> MOD(1024);<br />
<strong>SIG(gen)</strong> MOD(1024);<br />
<strong>SIG(ver)</strong> MOD(1024);<br />
SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#611">Val# 611</a><br />
RNG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#314">Val# 314</a></td>
<td>Windows 2003 SP2 Enhanced DSS and Diffie-Hellman Cryptographic Provider <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#221">#221</a></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-2:<br />
PQG(gen)</strong> MOD(1024);<br />
<strong>PQG(ver)</strong> MOD(1024);<br />
<strong>KEYGEN(Y)</strong> MOD(1024);<br />
<strong>SIG(gen)</strong> MOD(1024);<br />
<strong>SIG(ver)</strong> MOD(1024);<br />
SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#385">Val# 385</a></td>
<td>Windows Server 2003 SP1 Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#146">#146</a></td>
</tr>
<tr class="even">
<td><strong>FIPS186-2:<br />
PQG(ver)</strong> MOD(1024);<br />
<strong>KEYGEN(Y)</strong> MOD(1024);<br />
<strong>SIG(gen)</strong> MOD(1024);<br />
<strong>SIG(ver)</strong> MOD(1024);<br />
SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#181">Val# 181</a><br />
<br />
</td>
<td>Windows Server 2003 Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#95">#95</a></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-2:<br />
PQG(gen)</strong> MOD(1024);<br />
<strong>PQG(ver)</strong> MOD(1024);<br />
<strong>KEYGEN(Y)</strong> MOD(1024);<br />
<strong>SIG(gen)</strong> MOD(1024);<br />
SHS: SHA-1 (BYTE)<br />
<strong>SIG(ver)</strong> MOD(1024);<br />
SHS: SHA-1 (BYTE)</td>
<td><p>Windows 2000 DSSENH.DLL <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#29">#29</a></p>
<p>Windows 2000 DSSBASE.DLL <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#28">#28</a></p>
<p>Windows NT 4 SP6 DSSENH.DLL <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#26">#26</a></p>
<p>Windows NT 4 SP6 DSSBASE.DLL <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#25">#25</a></p></td>
</tr>
<tr class="even">
<td><p><strong>FIPS186-2: PRIME;<br />
FIPS186-2:</strong></p>
<p><strong>KEYGEN(Y):</strong><br />
SHS: SHA-1 (BYTE)</p>
<p><strong>SIG(gen):<br />
SIG(ver)</strong> MOD(1024);<br />
SHS: SHA-1 (BYTE)</p></td>
<td>Windows NT 4.0 SP4 Microsoft Enhanced DSS and Diffie-Hellman Cryptographic Provider <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#17">#17</a></td>
</tr>
</tbody>
</table>


#### Elliptic Curve Digital Signature Algorithm (ECDSA)

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Modes / States / Key Sizes</strong></td>
<td><strong>Algorithm Implementation and Certificate #</strong></td>
</tr>
<tr class="even">
<td><ul>
<li>ECDSA:</li>
<li><ul>
<li>186-4:</li>
<li><ul>
<li>Key Pair Generation:</li>
<li><ul>
<li>Curves: P-256, P-384, P-521</li>
<li>Generation Methods: Extra Random Bits</li>
</ul></li>
<li>Public Key Validation:</li>
<li><ul>
<li>Curves: P-256, P-384, P-521</li>
</ul></li>
<li>Signature Generation:</li>
<li><ul>
<li>P-256 SHA: SHA-256</li>
<li>P-384 SHA: SHA-384</li>
<li>P-521 SHA: SHA-512</li>
</ul></li>
<li>Signature Verification:</li>
<li><ul>
<li>P-256 SHA: SHA-256</li>
<li>P-384 SHA: SHA-384</li>
<li>P-521 SHA: SHA-512</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373">#2373</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#489">#489</a></p></td>
<td><p>Microsoft Windows 8.1, Microsoft Windows Server 2012 R2, Microsoft Windows Storage Server 2012 R2, Microsoft Windows RT 8.1, Microsoft Surface with Windows RT 8.1, Microsoft Surface Pro with Windows 8.1, Microsoft Surface 2, Microsoft Surface Pro 2, Microsoft Surface Pro 3, Microsoft Windows Phone 8.1, Microsoft Windows Embedded 8.1 Industry and Microsoft StorSimple 8100 MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1263">#1263</a></p>
<p>Version 6.3.9600</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>ECDSA:</li>
<li><ul>
<li>186-4:</li>
<li><ul>
<li>Key Pair Generation:</li>
<li><ul>
<li>Curves: P-256, P-384</li>
<li>Generation Methods: Testing Candidates</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4011">#4011</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1734">#1734</a></p></td>
<td><p>Microsoft Surface Hub Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1253">#1253</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="even">
<td><ul>
<li>ECDSA:</li>
<li><ul>
<li>186-4:</li>
<li><ul>
<li>Key Pair Generation:</li>
<li><ul>
<li>Curves: P-256, P-384</li>
<li>Generation Methods: Testing Candidates</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4009">#4009</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1733">#1733</a></p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1252">#1252</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>ECDSA:</li>
<li><ul>
<li>186-4:</li>
<li><ul>
<li>Key Pair Generation:</li>
<li><ul>
<li>Curves: P-256, P-384, P-521</li>
<li>Generation Methods: Extra Random Bits</li>
</ul></li>
<li>Public Key Validation:</li>
<li><ul>
<li>Curves: P-256, P-384, P-521</li>
</ul></li>
<li>Signature Generation:</li>
<li><ul>
<li>P-256 SHA: SHA-256</li>
<li>P-384 SHA: SHA-384</li>
<li>P-521 SHA: SHA-512</li>
</ul></li>
<li>Signature Verification:</li>
<li><ul>
<li>P-256 SHA: SHA-256</li>
<li>P-384 SHA: SHA-384</li>
<li>P-521 SHA: SHA-512</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4011">#4011</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1732">#1732</a></p></td>
<td><p>Microsoft Surface Hub MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1251">#1251</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="even">
<td><ul>
<li>ECDSA:</li>
<li><ul>
<li>186-4:</li>
<li><ul>
<li>Key Pair Generation:</li>
<li><ul>
<li>Curves: P-256, P-384, P-521</li>
<li>Generation Methods: Extra Random Bits</li>
</ul></li>
<li>Public Key Validation:</li>
<li><ul>
<li>Curves: P-256, P-384, P-521</li>
</ul></li>
<li>Signature Generation:</li>
<li><ul>
<li>P-256 SHA: SHA-256</li>
<li>P-384 SHA: SHA-384</li>
<li>P-521 SHA: SHA-512</li>
</ul></li>
<li>Signature Verification:</li>
<li><ul>
<li>P-256 SHA: SHA-256</li>
<li>P-384 SHA: SHA-384</li>
<li>P-521 SHA: SHA-512</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4011">#4011</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1732">#1732</a></p></td>
<td><p>Microsoft Surface Hub SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1250">#1250</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>ECDSA:</li>
<li><ul>
<li>186-4:</li>
<li><ul>
<li>Key Pair Generation:</li>
<li><ul>
<li>Curves: P-256, P-384, P-521</li>
<li>Generation Methods: Extra Random Bits</li>
</ul></li>
<li>Public Key Validation:</li>
<li><ul>
<li>Curves: P-256, P-384, P-521</li>
</ul></li>
<li>Signature Generation:</li>
<li><ul>
<li>P-256 SHA: SHA-256</li>
<li>P-384 SHA: SHA-384</li>
<li>P-521 SHA: SHA-512</li>
</ul></li>
<li>Signature Verification:</li>
<li><ul>
<li>P-256 SHA: SHA-256</li>
<li>P-384 SHA: SHA-384</li>
<li>P-521 SHA: SHA-512</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4010">#4010</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1731">#1731</a></p></td>
<td><p>Windows 10 Mobile (version 1709) SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1249">#1249</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="even">
<td><ul>
<li>ECDSA:</li>
<li><ul>
<li>186-4:</li>
<li><ul>
<li>Key Pair Generation:</li>
<li><ul>
<li>Curves: P-256, P-384, P-521</li>
<li>Generation Methods: Extra Random Bits</li>
</ul></li>
<li>Public Key Validation:</li>
<li><ul>
<li>Curves: P-256, P-384, P-521</li>
</ul></li>
<li>Signature Generation:</li>
<li><ul>
<li>P-256 SHA: SHA-256</li>
<li>P-384 SHA: SHA-384</li>
<li>P-521 SHA: SHA-512</li>
</ul></li>
<li>Signature Verification:</li>
<li><ul>
<li>P-256 SHA: SHA-256</li>
<li>P-384 SHA: SHA-384</li>
<li>P-521 SHA: SHA-512</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4010">#4010</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1731">#1731</a></p></td>
<td><p>Windows 10 Mobile (version 1709) MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1248">#1248</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>ECDSA:</li>
<li><ul>
<li>186-4:</li>
<li><ul>
<li>Key Pair Generation:</li>
<li><ul>
<li>Curves: P-256, P-384, P-521</li>
<li>Generation Methods: Extra Random Bits</li>
</ul></li>
<li>Public Key Validation:</li>
<li><ul>
<li>Curves: P-256, P-384, P-521</li>
</ul></li>
<li>Signature Generation:</li>
<li><ul>
<li>P-256 SHA: SHA-256</li>
<li>P-384 SHA: SHA-384</li>
<li>P-521 SHA: SHA-512</li>
</ul></li>
<li>Signature Verification:</li>
<li><ul>
<li>P-256 SHA: SHA-256</li>
<li>P-384 SHA: SHA-384</li>
<li>P-521 SHA: SHA-512</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4009">#4009</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1730">#1730</a></p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1247">#1247</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="even">
<td><ul>
<li>ECDSA:</li>
<li><ul>
<li>186-4:</li>
<li><ul>
<li>Key Pair Generation:</li>
<li><ul>
<li>Curves: P-256, P-384, P-521</li>
<li>Generation Methods: Extra Random Bits</li>
</ul></li>
<li>Public Key Validation:</li>
<li><ul>
<li>Curves: P-256, P-384, P-521</li>
</ul></li>
<li>Signature Generation:</li>
<li><ul>
<li>P-256 SHA: SHA-256</li>
<li>P-384 SHA: SHA-384</li>
<li>P-521 SHA: SHA-512</li>
</ul></li>
<li>Signature Verification:</li>
<li><ul>
<li>P-256 SHA: SHA-256</li>
<li>P-384 SHA: SHA-384</li>
<li>P-521 SHA: SHA-512</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4009">#4009</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1730">#1730</a></p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1246">#1246</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-4:<br />
PKG: CURVES</strong>( P-256 P-384 TestingCandidates )<br />
SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">Val#3790</a><br />
DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1555">Val# 1555</a></td>
<td><p>Windows 10 Creators Update (version 1703) Pro, Enterprise, Education Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1136">#1136</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="even">
<td><strong>FIPS186-4:<br />
PKG: CURVES</strong>( P-256 P-384 P-521 ExtraRandomBits )<br />
<strong>PKV: CURVES</strong>( P-256 P-384 P-521 )<br />
<strong>SigGen: CURVES</strong>( P-256: (SHA-256) P-384: (SHA-384) P-521: (SHA-512)<br />
<strong>SigVer: CURVES</strong>( P-256: (SHA-256) P-384: (SHA-384) P-521: (SHA-512) )<br />
SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">Val#3790</a><br />
DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1555">Val# 1555</a></td>
<td><p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1135">#1135</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-4:<br />
PKG: CURVES</strong>( P-256 P-384 P-521 ExtraRandomBits )<br />
<strong>PKV: CURVES</strong>( P-256 P-384 P-521 )<br />
<strong>SigGen: CURVES</strong>( P-256: (SHA-256) P-384: (SHA-384) P-521: (SHA-512)<br />
<strong>SigVer: CURVES</strong>( P-256: (SHA-256) P-384: (SHA-384) P-521: (SHA-512) )<br />
SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">Val#3790</a><br />
DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1555">Val# 1555</a></td>
<td><p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1133">#1133</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="even">
<td><strong>FIPS186-4:<br />
PKG: CURVES</strong>( P-256 P-384 P-521 ExtraRandomBits )<br />
<strong>PKV: CURVES</strong>( P-256 P-384 P-521 )<br />
<strong>SigGen: CURVES</strong>( P-256: (SHA-1, 256) P-384: (SHA-1, 384) P-521: (SHA-1, 512) <em>SIG(gen) with SHA-1 affirmed for use with protocols only.</em><br />
<strong>SigVer: CURVES</strong>( P-256: (SHA-1, 256) P-384: (SHA-1, 384) P-521: (SHA-1, 512) )<br />
<strong>SHS:</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3649">Val# 3649</a><br />
<strong>DRBG:</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1430">Val# 1430</a></td>
<td><p>Windows Embedded Compact Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1073">#1073</a></p>
<p>Version 7.00.2872</p></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-4:<br />
PKG: CURVES</strong>( P-256 P-384 P-521 ExtraRandomBits )<br />
<strong>PKV: CURVES</strong>( P-256 P-384 P-521 )<br />
<strong>SigGen: CURVES</strong>( P-256: (SHA-1, 256) P-384: (SHA-1, 384) P-521: (SHA-1, 512) <em>SIG(gen) with SHA-1 affirmed for use with protocols only.</em><br />
<strong>SigVer: CURVES</strong>( P-256: (SHA-1, 256) P-384: (SHA-1, 384) P-521: (SHA-1, 512) )<br />
<strong>SHS:</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3648">Val#3648</a><br />
<strong>DRBG:</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1429">Val# 1429</a></td>
<td><p>Windows Embedded Compact Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1072">#1072</a></p>
<p>Version 8.00.6246</p></td>
</tr>
<tr class="even">
<td><p><strong>FIPS186-4:<br />
PKG: CURVES</strong>( P-256 P-384 TestingCandidates )<br />
<strong>PKV: CURVES</strong>( P-256 P-384 )<br />
<strong>SigGen: CURVES</strong>( P-256: (SHA-1, 256) P-384: (SHA-1, 256, 384) SIG(gen) with SHA-1 affirmed for use with protocols only.<br />
<strong>SigVer: CURVES</strong>( P-256: (SHA-1, 256) P-384: (SHA-1, 256, 384) )</p>
<p>SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">Val# 3347</a><br />
DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1222">Val# 1222</a></p></td>
<td><p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4 and Surface Pro 3 w/ Windows 10 Anniversary Update Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#920">#920</a></p>
<p>Version 10.0.14393</p></td>
</tr>
<tr class="odd">
<td><p><strong>FIPS186-4:<br />
PKG: CURVES</strong>( P-256 P-384 P-521 ExtraRandomBits )<br />
<strong>PKV: CURVES</strong>( P-256 P-384 P-521 )<br />
<strong>SigGen: CURVES</strong>( P-256: (SHA-256) P-384: (SHA-384) P-521: (SHA-512)<br />
<strong>SigVer: CURVES</strong>( P-256: (SHA-256) P-384: (SHA-384) P-521: (SHA-512) )</p>
<p>SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">Val# 3347</a><br />
DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1217">Val# 1217</a></p></td>
<td><p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#911">#911</a></p>
<p>Version 10.0.14393</p></td>
</tr>
<tr class="even">
<td><p><strong>FIPS186-4:<br />
PKG: CURVES</strong>( P-256 P-384 P-521 ExtraRandomBits )<br />
<strong>SigGen: CURVES</strong>( P-256: (SHA-256) P-384: (SHA-384) P-521: (SHA-512)<br />
<strong>SigVer: CURVES</strong>( P-256: (SHA-256) P-384: (SHA-384) P-521: (SHA-512) )</p>
<p>SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3047">Val# 3047</a><br />
DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#955">Val# 955</a></p></td>
<td><p>Microsoft Windows 10 November 2015 Update; Microsoft Surface Book, Surface Pro 4, Surface Pro 3, Surface 3, Surface Pro 2, and Surface Pro w/ Windows 10 November 2015 Update; Windows 10 Mobile for Microsoft Lumia 950 and Microsoft Lumia 635; Windows 10 for Microsoft Surface Hub 84” and Surface Hub 55” MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#760">#760</a></p>
<p>Version 10.0.10586</p></td>
</tr>
<tr class="odd">
<td><p><strong>FIPS186-4:<br />
PKG: CURVES</strong>( P-256 P-384 P-521 ExtraRandomBits )<br />
<strong>SigGen: CURVES</strong>( P-256: (SHA-256) P-384: (SHA-384) P-521: (SHA-512)<br />
SigVer: CURVES( P-256: (SHA-256) P-384: (SHA-384) P-521: (SHA-512) )</p>
<p>SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2886">Val# 2886</a><br />
DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#868">Val# 868</a></p></td>
<td><p>Microsoft Windows 10, Microsoft Surface Pro 3 with Windows 10, Microsoft Surface 3 with Windows 10, Microsoft Surface Pro 2 with Windows 10, Microsoft Surface Pro with Windows 10 MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#706">#706</a></p>
<p>Version 10.0.10240</p></td>
</tr>
<tr class="even">
<td><p><strong>FIPS186-4:<br />
PKG: CURVES</strong>( P-256 P-384 P-521 ExtraRandomBits )<br />
<strong>SigGen: CURVES</strong>( P-256: (SHA-256) P-384: (SHA-384) P-521: (SHA-512)<br />
<strong>SigVer: CURVES</strong>( P-256: (SHA-256) P-384: (SHA-384) P-521: (SHA-512) )</p>
<p>SHS: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373">Val#2373</a><br />
DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#489">Val# 489</a></p></td>
<td><p>Microsoft Windows 8.1, Microsoft Windows Server 2012 R2, Microsoft Windows Storage Server 2012 R2, Microsoft Windows RT 8.1, Microsoft Surface with Windows RT 8.1, Microsoft Surface Pro with Windows 8.1, Microsoft Surface 2, Microsoft Surface Pro 2, Microsoft Surface Pro 3, Microsoft Windows Phone 8.1, Microsoft Windows Embedded 8.1 Industry and Microsoft StorSimple 8100 MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#505">#505</a></p>
<p>Version 6.3.9600</p></td>
</tr>
<tr class="odd">
<td><p><strong>FIPS186-2:<br />
PKG: CURVES</strong>( P-256 P-384 P-521 )<br />
<strong>SHS</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a><br />
<strong>DRBG</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#258">#258</a><br />
<strong>SIG(ver):CURVES</strong>( P-256 P-384 P-521 )<br />
<strong>SHS</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a><br />
<strong>DRBG</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#258">#258</a></p>
<p><strong>FIPS186-4:<br />
PKG: CURVES</strong>( P-256 P-384 P-521 ExtraRandomBits )<br />
<strong>SigGen: CURVES</strong>( P-256: (SHA-256) P-384: (SHA-384) P-521: (SHA-512)<br />
<strong>SigVer: CURVES</strong>( P-256: (SHA-256) P-384: (SHA-384) P-521: (SHA-512) )<br />
<strong>SHS</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a><br />
<strong>DRBG</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#258">#258</a><br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/ecdsahistoricalval.html#341">Historical ECDSA List Val#341</a>.</p></td>
<td>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#341">#341</a></td>
</tr>
<tr class="even">
<td><p><strong>FIPS186-2:<br />
PKG: CURVES</strong>( P-256 P-384 P-521 )<br />
<strong>SHS</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1773">Val#1773</a><br />
<strong>DRBG</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#193">Val# 193</a><br />
<strong>SIG(ver): CURVES</strong>( P-256 P-384 P-521 )<br />
<strong>SHS</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1773">Val#1773</a><br />
<strong>DRBG</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#193">Val# 193</a></p>
<p><strong>FIPS186-4:<br />
PKG: CURVES</strong>( P-256 P-384 P-521 ExtraRandomBits )<br />
<strong>SigGen: CURVES</strong>( P-256: (SHA-256) P-384: (SHA-384) P-521: (SHA-512)<br />
<strong>SigVer: CURVES</strong>( P-256: (SHA-256) P-384: (SHA-384) P-521: (SHA-512) )<br />
<strong>SHS</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1773">Val#1773</a><br />
<strong>DRBG</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#193">Val# 193</a><br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/ecdsahistoricalval.html#295">Historical ECDSA List Val#295</a>.</p></td>
<td>Windows Embedded Compact 7 Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#295">#295</a></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-2:<br />
PKG: CURVES</strong>( P-256 P-384 P-521 )<br />
<strong>SHS</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a><br />
<strong>DRBG</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#23">Val# 23</a><br />
<strong>SIG(ver): CURVES</strong>( P-256 P-384 P-521 )<br />
<strong>SHS</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a><br />
<strong>DRBG</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#23">Val# 23</a><br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/ecdsahistoricalval.html#142">Historical ECDSA List Val#142</a>. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/ecdsahistoricalval.html#141">Historical ECDSA List Val#141</a>.</td>
<td><p>Windows Server 2008 R2 and SP1 CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#142">#142</a></p>
<p>Windows 7 Ultimate and SP1 CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#141">#141</a></p></td>
</tr>
<tr class="even">
<td><strong>FIPS186-2:<br />
PKG: CURVES</strong>( P-256 P-384 P-521 )<br />
<strong>SHS</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a><br />
<strong>SIG(ver): CURVES</strong>( P-256 P-384 P-521 )<br />
<strong>SHS</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a><br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/ecdsahistoricalval.html#83">Historical ECDSA List Val#83</a>. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/ecdsahistoricalval.html#82">Historical ECDSA List Val#82</a>.</td>
<td><p>Windows Server 2008 CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#83">#83</a></p>
<p>Windows Vista Ultimate SP1 CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#82">#82</a></p></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-2:<br />
PKG: CURVES</strong>( P-256 P-384 P-521 )<br />
<strong>SHS</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a><br />
<strong>RNG</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val# 321</a><br />
<strong>SIG(ver): CURVES</strong>( P-256 P-384 P-521 )<br />
<strong>SHS</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a><br />
<strong>RNG</strong>: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#321">Val# 321</a><br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/ecdsahistoricalval.html#60">Historical ECDSA List Val#60</a>.</td>
<td>Windows Vista CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#60">#60</a></td>
</tr>
</tbody>
</table>


#### Keyed-Hash Message Authentication Code (HMAC)

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Modes / States / Key Sizes</strong></td>
<td><strong>Algorithm Implementation and Certificate #</strong></td>
</tr>
<tr class="even">
<td><ul>
<li>HMAC-SHA-1:</li>
<li><ul>
<li>Key Sizes &amp;lt; Block Size</li>
<li>Key Sizes &amp;gt; Block Size</li>
<li>Key Sizes = Block Size</li>
</ul></li>
<li>HMAC-SHA2-256:</li>
<li><ul>
<li>Key Sizes &amp;lt; Block Size</li>
<li>Key Sizes &amp;gt; Block Size</li>
<li>Key Sizes = Block Size</li>
</ul></li>
<li>HMAC-SHA2-384:</li>
<li><ul>
<li>Key Sizes &amp;lt; Block Size</li>
<li>Key Sizes &amp;gt; Block Size</li>
<li>Key Sizes = Block Size</li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4011">#4011</a></p></td>
<td><p>Microsoft Surface Hub Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3271">#3271</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>HMAC-SHA-1:</li>
<li><ul>
<li>Key Sizes &amp;lt; Block Size</li>
<li>Key Sizes &amp;gt; Block Size</li>
<li>Key Sizes = Block Size</li>
</ul></li>
<li>HMAC-SHA2-256:</li>
<li><ul>
<li>Key Sizes &amp;lt; Block Size</li>
<li>Key Sizes &amp;gt; Block Size</li>
<li>Key Sizes = Block Size</li>
</ul></li>
<li>HMAC-SHA2-384:</li>
<li><ul>
<li>Key Sizes &amp;lt; Block Size</li>
<li>Key Sizes &amp;gt; Block Size</li>
<li>Key Sizes = Block Size</li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4009">#4009</a></p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3270">#3270</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="even">
<td><ul>
<li>HMAC-SHA-1:</li>
<li><ul>
<li>Key Sizes &amp;lt; Block Size</li>
<li>Key Sizes &amp;gt; Block Size</li>
<li>Key Sizes = Block Size</li>
</ul></li>
<li>HMAC-SHA2-256:</li>
<li><ul>
<li>Key Sizes &amp;lt; Block Size</li>
<li>Key Sizes &amp;gt; Block Size</li>
<li>Key Sizes = Block Size</li>
</ul></li>
<li>HMAC-SHA2-384:</li>
<li><ul>
<li>Key Sizes &amp;lt; Block Size</li>
<li>Key Sizes &amp;gt; Block Size</li>
<li>Key Sizes = Block Size</li>
</ul></li>
<li>HMAC-SHA2-512:</li>
<li><ul>
<li>Key Sizes &amp;lt; Block Size</li>
<li>Key Sizes &amp;gt; Block Size</li>
<li>Key Sizes = Block Size</li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4011">#4011</a></p></td>
<td><p>Microsoft Surface Hub SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3269">#3269</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>HMAC-SHA-1:</li>
<li><ul>
<li>Key Sizes &amp;lt; Block Size</li>
<li>Key Sizes &amp;gt; Block Size</li>
<li>Key Sizes = Block Size</li>
</ul></li>
<li>HMAC-SHA2-256:</li>
<li><ul>
<li>Key Sizes &amp;lt; Block Size</li>
<li>Key Sizes &amp;gt; Block Size</li>
<li>Key Sizes = Block Size</li>
</ul></li>
<li>HMAC-SHA2-384:</li>
<li><ul>
<li>Key Sizes &amp;lt; Block Size</li>
<li>Key Sizes &amp;gt; Block Size</li>
<li>Key Sizes = Block Size</li>
</ul></li>
<li>HMAC-SHA2-512:</li>
<li><ul>
<li>Key Sizes &amp;lt; Block Size</li>
<li>Key Sizes &amp;gt; Block Size</li>
<li>Key Sizes = Block Size</li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4010">#4010</a></p></td>
<td><p>Windows 10 Mobile (version 1709) SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3268">#3268</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="even">
<td><ul>
<li>HMAC-SHA-1:</li>
<li><ul>
<li>Key Sizes &amp;lt; Block Size</li>
<li>Key Sizes &amp;gt; Block Size</li>
<li>Key Sizes = Block Size</li>
</ul></li>
<li>HMAC-SHA2-256:</li>
<li><ul>
<li>Key Sizes &amp;lt; Block Size</li>
<li>Key Sizes &amp;gt; Block Size</li>
<li>Key Sizes = Block Size</li>
</ul></li>
<li>HMAC-SHA2-384:</li>
<li><ul>
<li>Key Sizes &amp;lt; Block Size</li>
<li>Key Sizes &amp;gt; Block Size</li>
<li>Key Sizes = Block Size</li>
</ul></li>
<li>HMAC-SHA2-512:</li>
<li><ul>
<li>Key Sizes &amp;lt; Block Size</li>
<li>Key Sizes &amp;gt; Block Size</li>
<li>Key Sizes = Block Size</li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4009">#4009</a></p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3267">#3267</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="odd">
<td><p><strong>HMAC-SHA1 (Key Sizes Ranges Tested:</strong> KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">Val#3790</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested:</strong> KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">Val#3790</a></p>
<p><strong>HMAC-SHA384 ( Key Size Ranges Tested:</strong> KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">Val#3790</a></p></td>
<td><p>Windows 10 Creators Update (version 1703) Pro, Enterprise, Education Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3062">#3062</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="even">
<td><p><strong>HMAC-SHA1(Key Sizes Ranges Tested:</strong> KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">Val#3790</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested:</strong> KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">Val#3790</a></p>
<p><strong>HMAC-SHA384 ( Key Size Ranges Tested:</strong> KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">Val#3790</a></p>
<p><strong>HMAC-SHA512 ( Key Size Ranges Tested:</strong> KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">Val#3790</a></p></td>
<td><p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3061">#3061</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="odd">
<td><p><strong>HMAC-SHA1 (Key Sizes Ranges Tested:</strong> KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3652">Val#3652</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested:</strong> KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3652">Val#3652</a></p>
<p><strong>HMAC-SHA384 ( Key Size Ranges Tested:</strong> KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3652">Val#3652</a></p>
<p><strong>HMAC-SHA512 ( Key Size Ranges Tested:</strong> KSBS ) SHS<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3652">Val#3652</a></p></td>
<td><p>Windows Embedded Compact Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2946">#2946</a></p>
<p>Version 7.00.2872</p></td>
</tr>
<tr class="even">
<td><p><strong>HMAC-SHA1 (Key Sizes Ranges Tested:</strong> KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3651">Val#3651</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested:</strong> KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3651">Val#3651</a></p>
<p><strong>HMAC-SHA384 ( Key Size Ranges Tested:</strong> KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3651">Val#3651</a></p>
<p><strong>HMAC-SHA512 ( Key Size Ranges Tested:</strong> KSBS ) SHS<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3651">Val#3651</a></p></td>
<td><p>Windows Embedded Compact Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2945">#2945</a></p>
<p>Version 8.00.6246</p></td>
</tr>
<tr class="odd">
<td><p><strong>HMAC-SHA1 (Key Sizes Ranges Tested:</strong> KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3649">Val# 3649</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested:</strong> KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3649">Val# 3649</a></p>
<p><strong>HMAC-SHA384 ( Key Size Ranges Tested:</strong> KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3649">Val# 3649</a></p>
<p><strong>HMAC-SHA512 ( Key Size Ranges Tested:</strong> KSBS ) SHS<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3649">Val# 3649</a></p></td>
<td><p>Windows Embedded Compact Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2943">#2943</a></p>
<p>Version 7.00.2872</p></td>
</tr>
<tr class="even">
<td><p><strong>HMAC-SHA1 (Key Sizes Ranges Tested:</strong> KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3648">Val#3648</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested:</strong> KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3648">Val#3648</a></p>
<p><strong>HMAC-SHA384 ( Key Size Ranges Tested:</strong> KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3648">Val#3648</a></p>
<p><strong>HMAC-SHA512 ( Key Size Ranges Tested:</strong> KSBS ) SHS<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3648">Val#3648</a></p></td>
<td><p>Windows Embedded Compact Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2942">#2942</a></p>
<p>Version 8.00.6246</p></td>
</tr>
<tr class="odd">
<td><p><strong>HMAC-SHA1</strong> (Key Sizes Ranges Tested:  KSBS )<br />
SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">Val# 3347</a></p>
<p><strong>HMAC-SHA256</strong> ( Key Size Ranges Tested:  KSBS )<br />
SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">Val# 3347</a></p>
<p><strong>HMAC-SHA384</strong> ( Key Size Ranges Tested:  KSBS )<br />
SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">Val# 3347</a></p></td>
<td><p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4 and Surface Pro 3 w/ Windows 10 Anniversary Update Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2661">#2661</a></p>
<p>Version 10.0.14393</p></td>
</tr>
<tr class="even">
<td><p><strong>HMAC-SHA1</strong> (Key Sizes Ranges Tested: KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">Val# 3347</a></p>
<p><strong>HMAC-SHA256</strong> ( Key Size Ranges Tested: KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">Val# 3347</a></p>
<p><strong>HMAC-SHA384</strong> ( Key Size Ranges Tested: KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">Val# 3347</a></p>
<p><strong>HMAC-SHA512</strong> ( Key Size Ranges Tested: KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">Val# 3347</a></p></td>
<td><p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2651">#2651</a></p>
<p>Version 10.0.14393</p></td>
</tr>
<tr class="odd">
<td><p><strong>HMAC-SHA1</strong> (Key Sizes Ranges Tested:  KSBS )<br />
SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3047">Val# 3047</a></p>
<p><strong>HMAC-SHA256</strong> ( Key Size Ranges Tested:  KSBS )<br />
SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3047">Val# 3047</a></p>
<p><strong>HMAC-SHA384</strong> ( Key Size Ranges Tested:  KSBS )<br />
SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3047">Val# 3047</a></p>
<p><strong>HMAC-SHA512</strong> ( Key Size Ranges Tested:  KSBS )<br />
SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3047">Val# 3047</a></p></td>
<td><p>Microsoft Windows 10 November 2015 Update; Microsoft Surface Book, Surface Pro 4, Surface Pro 3, Surface 3, Surface Pro 2, and Surface Pro w/ Windows 10 November 2015 Update; Windows 10 Mobile for Microsoft Lumia 950 and Microsoft Lumia 635; Windows 10 for Microsoft Surface Hub 84” and Surface Hub 55” SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2381">#2381</a></p>
<p>Version 10.0.10586</p></td>
</tr>
<tr class="even">
<td><p><strong>HMAC-SHA1</strong> (Key Sizes Ranges Tested:  KSBS )<br />
SHS<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2886">Val# 2886</a></p>
<p><strong>HMAC-SHA256</strong> ( Key Size Ranges Tested:  KSBS )<br />
SHS<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2886">Val# 2886</a></p>
<p><strong>HMAC-SHA384</strong> ( Key Size Ranges Tested:  KSBS )<br />
<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2886"> SHSVal# 2886</a></p>
<p><strong>HMAC-SHA512</strong> ( Key Size Ranges Tested:  KSBS )<br />
SHS<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2886">Val# 2886</a></p></td>
<td><p>Microsoft Windows 10, Microsoft Surface Pro 3 with Windows 10, Microsoft Surface 3 with Windows 10, Microsoft Surface Pro 2 with Windows 10, Microsoft Surface Pro with Windows 10 SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2233">#2233</a></p>
<p>Version 10.0.10240</p></td>
</tr>
<tr class="odd">
<td><p><strong>HMAC-SHA1</strong> (Key Sizes Ranges Tested:  KSBS )<br />
SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373">Val#2373</a></p>
<p><strong>HMAC-SHA256</strong> ( Key Size Ranges Tested:  KSBS )<br />
SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373">Val#2373</a></p>
<p><strong>HMAC-SHA384</strong> ( Key Size Ranges Tested:  KSBS )<br />
SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373">Val#2373</a></p>
<p><strong>HMAC-SHA512</strong> ( Key Size Ranges Tested:  KSBS )<br />
SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373">Val#2373</a></p></td>
<td><p>Windows Storage Server 2012 R2, Microsoft Windows RT 8.1, Microsoft Surface with Windows RT 8.1, Microsoft Surface Pro with Windows 8.1, Microsoft Surface 2, Microsoft Surface Pro 2, Microsoft Surface Pro 3, Microsoft Windows Phone 8.1, Microsoft Windows Embedded 8.1 Industry and Microsoft StorSimple 8100 SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1773">#1773</a></p>
<p>Version 6.3.9600</p></td>
</tr>
<tr class="even">
<td><p><strong>HMAC-SHA1</strong> (Key Sizes Ranges Tested: KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2764">Val#2764</a></p>
<p><strong>HMAC-SHA256</strong> ( Key Size Ranges Tested: KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2764">Val#2764</a></p>
<p><strong>HMAC-SHA384</strong> ( Key Size Ranges Tested: KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2764">Val#2764</a></p>
<p><strong>HMAC-SHA512</strong> ( Key Size Ranges Tested: KSBS ) SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2764">Val#2764</a></p></td>
<td><p>Windows CE and Windows Mobile, and Windows Embedded Handheld Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2122">#2122</a></p>
<p>Version 5.2.29344</p></td>
</tr>
<tr class="odd">
<td><p><strong>HMAC-SHA1 (Key Sizes Ranges Tested: KS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1902">#1902</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested: KS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1902">#1902</a></p></td>
<td>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 BitLocker® Cryptographic Implementations #<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1347">1347</a></td>
</tr>
<tr class="even">
<td><p><strong>HMAC-SHA1 (Key Sizes Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1902">#1902</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1902">#1902</a></p>
<p><strong>HMAC-SHA384 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1902">#1902</a></p>
<p><strong>HMAC-SHA512 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1902">#1902</a></p></td>
<td>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 Enhanced Cryptographic Provider (RSAENH) #<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1346">1346</a></td>
</tr>
<tr class="odd">
<td><p><strong>HMAC-SHA1 (Key Sizes Ranges Tested: KSBS )</strong></p>
<p><strong>SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested: KSBS )</strong></p>
<p><strong>SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a></p>
<p><strong>HMAC-SHA384 ( Key Size Ranges Tested: KSBS )</strong></p>
<p><strong>SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a></p>
<p><strong>HMAC-SHA512 ( Key Size Ranges Tested: KSBS )</strong></p>
<p><strong>SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a></p></td>
<td>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 Next Generation Symmetric Cryptographic Algorithms Implementations (SYMCRYPT) #<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1345">1345</a></td>
</tr>
<tr class="even">
<td><p><strong>HMAC-SHA1 (Key Sizes Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1773">Val#1773</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1773">Val#1773</a></p>
<p><strong>Tinker HMAC-SHA384 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1773">Val#1773</a></p>
<p><strong>HMAC-SHA512 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1773">Val#1773</a></p></td>
<td>Windows Embedded Compact 7 Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1364">#1364</a></td>
</tr>
<tr class="odd">
<td><p><strong>HMAC-SHA1 (Key Sizes Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1774">Val#1774</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1774">Val#1774</a></p>
<p><strong>HMAC-SHA384 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1774">Val#1774</a></p>
<p><strong>HMAC-SHA512 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1774">Val#1774</a></p></td>
<td>Windows Embedded Compact 7 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1227">#1227</a></td>
</tr>
<tr class="even">
<td><p><strong>HMAC-SHA1 (Key Sizes Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a></p>
<p><strong>HMAC-SHA384 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a></p>
<p><strong>HMAC-SHA512 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a></p></td>
<td><p>Windows Server 2008 R2 and SP1 CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#686">#686</a></p>
<p>Windows 7 and SP1 CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#677">#677</a></p>
<p>Windows Server 2008 R2 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#687">#687</a></p>
<p>Windows 7 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#673">#673</a></p></td>
</tr>
<tr class="odd">
<td><p><strong>HMAC-SHA1(Key Sizes Ranges Tested: KS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested: KS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a></p></td>
<td>Windows 7 and SP1 and Windows Server 2008 R2 and SP1 BitLocker Algorithm Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#675">#675</a></td>
</tr>
<tr class="even">
<td><p><strong>HMAC-SHA1 (Key Sizes Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#816">Val#816</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#816">Val#816</a></p>
<p><strong>HMAC-SHA384 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#816">Val#816</a></p>
<p><strong>HMAC-SHA512 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#816">Val#816</a></p></td>
<td>Windows Server 2003 SP2 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#452">#452</a></td>
</tr>
<tr class="odd">
<td><p><strong>HMAC-SHA1 (Key Sizes Ranges Tested: KS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested: KS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a></p></td>
<td>Windows Vista Ultimate SP1 and Windows Server 2008 BitLocker Algorithm Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#415">#415</a></td>
</tr>
<tr class="even">
<td><p><strong>HMAC-SHA1 (Key Sizes Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a></p>
<p><strong>HMAC-SHA384 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a></p>
<p><strong>HMAC-SHA512 ( Key Size Ranges Tested: KSBS )</strong>SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a></p></td>
<td><p>Windows Server 2008 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#408">#408</a></p>
<p>Windows Vista Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#407">#407</a></p></td>
</tr>
<tr class="odd">
<td><p><strong>HMAC-SHA1 (Key Sizes Ranges Tested: KSBS )SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a></p>
<p><strong>HMAC-SHA384 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a></p>
<p><strong>HMAC-SHA512 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a></p></td>
<td>Windows Vista Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#297">#297</a></td>
</tr>
<tr class="even">
<td><strong>HMAC-SHA1 (Key Sizes Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#785">Val#785</a></td>
<td><p>Windows XP Professional SP3 Kernel Mode Cryptographic Module (fips.sys) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#429">#429</a></p>
<p>Windows XP, vendor-affirmed</p></td>
</tr>
<tr class="odd">
<td><p><strong>HMAC-SHA1 (Key Sizes Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#783">Val#783</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#783">Val#783</a></p>
<p><strong>HMAC-SHA384 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#783">Val#783</a></p>
<p><strong>HMAC-SHA512 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#783">Val#783</a></p></td>
<td>Windows XP Professional SP3 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#428">#428</a></td>
</tr>
<tr class="even">
<td><p><strong>HMAC-SHA1 (Key Sizes Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#613">Val#613</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#613">Val#613</a></p>
<p><strong>HMAC-SHA384 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#613">Val#613</a></p>
<p><strong>HMAC-SHA512 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#613">Val#613</a></p></td>
<td>Windows Server 2003 SP2 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#289">#289</a></td>
</tr>
<tr class="odd">
<td><strong>HMAC-SHA1 (Key Sizes Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#610">Val#610</a></td>
<td>Windows Server 2003 SP2 Kernel Mode Cryptographic Module (fips.sys) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#287">#287</a></td>
</tr>
<tr class="even">
<td><p><strong>HMAC-SHA1 (Key Sizes Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a></p>
<p><strong>HMAC-SHA384 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a></p>
<p><strong>HMAC-SHA512 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a></p></td>
<td><p>Windows Server 2008 CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#413">#413</a></p>
<p>Windows Vista Ultimate SP1 CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#412">#412</a></p></td>
</tr>
<tr class="odd">
<td><p><strong>HMAC-SHA1 (Key Sizes Ranges Tested: KS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#737">Val#737</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested: KS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#737">Val#737</a></p></td>
<td>Windows Vista Ultimate BitLocker Drive Encryption <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#386">#386</a></td>
</tr>
<tr class="even">
<td><p><strong>HMAC-SHA1 ( Key Sizes Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a></p>
<p><strong>HMAC-SHA384 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="http://csrc.nist.gov/groups/stm/cavp/documents/shs/shaval.htm#618">Val#618</a></p>
<p><strong>HMAC-SHA512 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a></p></td>
<td>Windows Vista CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#298">#298</a></td>
</tr>
<tr class="odd">
<td><p><strong>HMAC-SHA1 ( Key Sizes Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#589">Val#589</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested: KSBS )SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#589">Val#589</a></p>
<p><strong>HMAC-SHA384 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#589">Val#589</a></p>
<p><strong>HMAC-SHA512 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#589">Val#589</a></p></td>
<td>Windows CE 6.0 and Windows CE 6.0 R2 and Windows Mobile Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#267">#267</a></td>
</tr>
<tr class="even">
<td><p><strong>HMAC-SHA1 ( Key Sizes Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#578">Val#578</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#578">Val#578</a></p>
<p><strong>HMAC-SHA384 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#578">Val#578</a></p>
<p><strong>HMAC-SHA512 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#578">Val#578</a></p></td>
<td>Windows CE and Windows Mobile 6.0 and Windows Mobil 6.5 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#260">#260</a></td>
</tr>
<tr class="odd">
<td><p><strong>HMAC-SHA1 (Key Sizes Ranges Tested: KS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#495">Val#495</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested: KS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#495">Val#495</a></p></td>
<td>Windows Vista BitLocker Drive Encryption <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#199">#199</a></td>
</tr>
<tr class="even">
<td><strong>HMAC-SHA1 (Key Sizes Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#364">Val#364</a></td>
<td><p>Windows Server 2003 SP1 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#99">#99</a></p>
<p>Windows XP, vendor-affirmed</p></td>
</tr>
<tr class="odd">
<td><p><strong>HMAC-SHA1 (Key Sizes Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#305">Val#305</a></p>
<p><strong>HMAC-SHA256 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#305">Val#305</a></p>
<p><strong>HMAC-SHA384 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#305">Val#305</a></p>
<p><strong>HMAC-SHA512 ( Key Size Ranges Tested: KSBS ) SHS</strong><a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#305">Val#305</a></p></td>
<td>Windows CE 5.00 and Windows CE 5.01 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#31">#31</a></td>
</tr>
</tbody>
</table>


#### Key Agreement Scheme (KAS)

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Modes / States / Key Sizes</strong></td>
<td><strong>Algorithm Implementation and Certificate #</strong></td>
</tr>
<tr class="even">
<td><ul>
<li>KAS ECC:</li>
<li><ul>
<li>Functions: Domain Parameter Generation, Domain Parameter Validation, Full Public Key Validation, Key Pair Generation, Public Key Regeneration</li>
<li>Schemes:</li>
<li><ul>
<li>Full Unified:</li>
<li><ul>
<li>Key Agreement Roles: Initiator, Responder</li>
<li>KDFs: Concatenation</li>
<li>Parameter Sets:</li>
<li><ul>
<li>EC:</li>
<li><ul>
<li>Curve: P-256</li>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
<li>ED:</li>
<li><ul>
<li>Curve: P-384</li>
<li>SHA: SHA-384</li>
<li>MAC: HMAC</li>
</ul></li>
</ul></li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4011">#4011</a>, ECDSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1253">#1253</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1734">#1734</a></p></td>
<td><p>Microsoft Surface Hub Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#150">#150</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>KAS ECC:</li>
<li><ul>
<li>Functions: Domain Parameter Generation, Domain Parameter Validation, Full Public Key Validation, Key Pair Generation, Public Key Regeneration</li>
<li>Schemes:</li>
<li><ul>
<li>Full Unified:</li>
<li><ul>
<li>Key Agreement Roles: Initiator, Responder</li>
<li>KDFs: Concatenation</li>
<li>Parameter Sets:</li>
<li><ul>
<li>EC:</li>
<li><ul>
<li>Curve: P-256</li>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
<li>ED:</li>
<li><ul>
<li>Curve: P-384</li>
<li>SHA: SHA-384</li>
<li>MAC: HMAC</li>
</ul></li>
</ul></li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4009">#4009</a>, ECDSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1252">#1252</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1733">#1733</a></p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#149">#149</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="even">
<td><ul>
<li>KAS ECC:</li>
<li><ul>
<li>Functions: Domain Parameter Generation, Domain Parameter Validation, Key Pair Generation, Partial Public Key Validation, Public Key Regeneration</li>
<li>Schemes:</li>
<li><ul>
<li>Ephemeral Unified:</li>
<li><ul>
<li>Key Agreement Roles: Initiator, Responder</li>
<li>KDFs: Concatenation</li>
<li>Parameter Sets:</li>
<li><ul>
<li>EC:</li>
<li><ul>
<li>Curve: P-256</li>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
<li>ED:</li>
<li><ul>
<li>Curve: P-384</li>
<li>SHA: SHA-384</li>
<li>MAC: HMAC</li>
</ul></li>
<li>EE:</li>
<li><ul>
<li>Curve: P-521</li>
<li>SHA: SHA-512</li>
<li>MAC: HMAC</li>
</ul></li>
</ul></li>
</ul></li>
<li>One Pass DH:</li>
<li><ul>
<li>Key Agreement Roles: Initiator, Responder</li>
<li>Parameter Sets:</li>
<li><ul>
<li>EC:</li>
<li><ul>
<li>Curve: P-256</li>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
<li>ED:</li>
<li><ul>
<li>Curve: P-384</li>
<li>SHA: SHA-384</li>
<li>MAC: HMAC</li>
</ul></li>
<li>EE:</li>
<li><ul>
<li>Curve: P-521</li>
<li>SHA: SHA-512</li>
<li>MAC: HMAC</li>
</ul></li>
</ul></li>
</ul></li>
<li>Static Unified:</li>
<li><ul>
<li>Key Agreement Roles: Initiator, Responder</li>
<li>Parameter Sets:</li>
<li><ul>
<li>EC:</li>
<li><ul>
<li>Curve: P-256</li>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
<li>ED:</li>
<li><ul>
<li>Curve: P-384</li>
<li>SHA: SHA-384</li>
<li>MAC: HMAC</li>
</ul></li>
<li>EE:</li>
<li><ul>
<li>Curve: P-521</li>
<li>SHA: SHA-512</li>
<li>MAC: HMAC</li>
</ul></li>
</ul></li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4011">#4011</a>, ECDSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1250">#1250</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1732">#1732</a></p>
<ul>
<li>KAS FFC:</li>
<li><ul>
<li>Functions: Domain Parameter Generation, Domain Parameter Validation, Key Pair Generation, Partial Public Key Validation</li>
<li>Schemes:</li>
<li><ul>
<li>dhEphem:</li>
<li><ul>
<li>Key Agreement Roles: Initiator, Responder</li>
<li>Parameter Sets:</li>
<li><ul>
<li>FB:</li>
<li><ul>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
<li>FC:</li>
<li><ul>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
</ul></li>
</ul></li>
<li>dhOneFlow:</li>
<li><ul>
<li>Key Agreement Roles: Initiator, Responder</li>
<li>Parameter Sets:</li>
<li><ul>
<li>FB:</li>
<li><ul>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
<li>FC:</li>
<li><ul>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
</ul></li>
</ul></li>
<li>dhStatic:</li>
<li><ul>
<li>Key Agreement Roles: Initiator, Responder</li>
<li>Parameter Sets:</li>
<li><ul>
<li>FB:</li>
<li><ul>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
<li>FC:</li>
<li><ul>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
</ul></li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4011">#4011</a>, DSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1303">#1303</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1732">#1732</a></p></td>
<td><p>Microsoft Surface Hub SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#148">#148</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>KAS ECC:</li>
<li><ul>
<li>Functions: Domain Parameter Generation, Domain Parameter Validation, Key Pair Generation, Partial Public Key Validation, Public Key Regeneration</li>
<li>Schemes:</li>
<li><ul>
<li>Ephemeral Unified:</li>
<li><ul>
<li>Key Agreement Roles: Initiator, Responder</li>
<li>KDFs: Concatenation</li>
<li>Parameter Sets:</li>
<li><ul>
<li>EC:</li>
<li><ul>
<li>Curve: P-256</li>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
<li>ED:</li>
<li><ul>
<li>Curve: P-384</li>
<li>SHA: SHA-384</li>
<li>MAC: HMAC</li>
</ul></li>
<li>EE:</li>
<li><ul>
<li>Curve: P-521</li>
<li>SHA: SHA-512</li>
<li>MAC: HMAC</li>
</ul></li>
</ul></li>
</ul></li>
<li>One Pass DH:</li>
<li><ul>
<li>Key Agreement Roles: Initiator, Responder</li>
<li>Parameter Sets:</li>
<li><ul>
<li>EC:</li>
<li><ul>
<li>Curve: P-256</li>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
<li>ED:</li>
<li><ul>
<li>Curve: P-384</li>
<li>SHA: SHA-384</li>
<li>MAC: HMAC</li>
</ul></li>
<li>EE:</li>
<li><ul>
<li>Curve: P-521</li>
<li>SHA: SHA-512</li>
<li>MAC: HMAC</li>
</ul></li>
</ul></li>
</ul></li>
<li>Static Unified:</li>
<li><ul>
<li>Key Agreement Roles: Initiator, Responder</li>
<li>Parameter Sets:</li>
<li><ul>
<li>EC:</li>
<li><ul>
<li>Curve: P-256</li>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
<li>ED:</li>
<li><ul>
<li>Curve: P-384</li>
<li>SHA: SHA-384</li>
<li>MAC: HMAC</li>
</ul></li>
<li>EE:</li>
<li><ul>
<li>Curve: P-521</li>
<li>SHA: SHA-512</li>
<li>MAC: HMAC</li>
</ul></li>
</ul></li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4010">#4010</a>, ECDSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1249">#1249</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1731">#1731</a></p>
<ul>
<li>KAS FFC:</li>
<li><ul>
<li>Functions: Domain Parameter Generation, Domain Parameter Validation, Key Pair Generation, Partial Public Key Validation</li>
<li>Schemes:</li>
<li><ul>
<li>dhEphem:</li>
<li><ul>
<li>Key Agreement Roles: Initiator, Responder</li>
<li>Parameter Sets:</li>
<li><ul>
<li>FB:</li>
<li><ul>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
<li>FC:</li>
<li><ul>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
</ul></li>
</ul></li>
<li>dhOneFlow:</li>
<li><ul>
<li>Key Agreement Roles: Initiator, Responder</li>
<li>Parameter Sets:</li>
<li><ul>
<li>FB:</li>
<li><ul>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
<li>FC:</li>
<li><ul>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
</ul></li>
</ul></li>
<li>dhStatic:</li>
<li><ul>
<li>Key Agreement Roles: Initiator, Responder</li>
<li>Parameter Sets:</li>
<li><ul>
<li>FB:</li>
<li><ul>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
<li>FC:</li>
<li><ul>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
</ul></li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4010">#4010</a>, DSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1302">#1302</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1731">#1731</a></p></td>
<td><p>Windows 10 Mobile (version 1709) SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#147">#147</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="even">
<td><ul>
<li>KAS ECC:</li>
<li><ul>
<li>Functions: Domain Parameter Generation, Domain Parameter Validation, Key Pair Generation, Partial Public Key Validation, Public Key Regeneration</li>
<li>Schemes:</li>
<li><ul>
<li>Ephemeral Unified:</li>
<li><ul>
<li>Key Agreement Roles: Initiator, Responder</li>
<li>KDFs: Concatenation</li>
<li>Parameter Sets:</li>
<li><ul>
<li>EC:</li>
<li><ul>
<li>Curve: P-256</li>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
<li>ED:</li>
<li><ul>
<li>Curve: P-384</li>
<li>SHA: SHA-384</li>
<li>MAC: HMAC</li>
</ul></li>
<li>EE:</li>
<li><ul>
<li>Curve: P-521</li>
<li>SHA: SHA-512</li>
<li>MAC: HMAC</li>
</ul></li>
</ul></li>
</ul></li>
<li>One Pass DH:</li>
<li><ul>
<li>Key Agreement Roles: Initiator, Responder</li>
<li>Parameter Sets:</li>
<li><ul>
<li>EC:</li>
<li><ul>
<li>Curve: P-256</li>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
<li>ED:</li>
<li><ul>
<li>Curve: P-384</li>
<li>SHA: SHA-384</li>
<li>MAC: HMAC</li>
</ul></li>
<li>EE:</li>
<li><ul>
<li>Curve: P-521</li>
<li>SHA: SHA-512</li>
<li>MAC: HMAC</li>
</ul></li>
</ul></li>
</ul></li>
<li>Static Unified:</li>
<li><ul>
<li>Key Agreement Roles: Initiator, Responder</li>
<li>Parameter Sets:</li>
<li><ul>
<li>EC:</li>
<li><ul>
<li>Curve: P-256</li>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
<li>ED:</li>
<li><ul>
<li>Curve: P-384</li>
<li>SHA: SHA-384</li>
<li>MAC: HMAC</li>
</ul></li>
<li>EE:</li>
<li><ul>
<li>Curve: P-521</li>
<li>SHA: SHA-512</li>
<li>MAC: HMAC</li>
</ul></li>
</ul></li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4009">#4009</a>, ECDSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1246">#1246</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1730">#1730</a></p>
<ul>
<li>KAS FFC:</li>
<li><ul>
<li>Functions: Domain Parameter Generation, Domain Parameter Validation, Key Pair Generation, Partial Public Key Validation</li>
<li>Schemes:</li>
<li><ul>
<li>dhEphem:</li>
<li><ul>
<li>Key Agreement Roles: Initiator, Responder</li>
<li>Parameter Sets:</li>
<li><ul>
<li>FB:</li>
<li><ul>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
<li>FC:</li>
<li><ul>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
</ul></li>
</ul></li>
<li>dhOneFlow:</li>
<li><ul>
<li>Key Agreement Roles: Initiator, Responder</li>
<li>Parameter Sets:</li>
<li><ul>
<li>FB:</li>
<li><ul>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
<li>FC:</li>
<li><ul>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
</ul></li>
</ul></li>
<li>dhStatic:</li>
<li><ul>
<li>Key Agreement Roles: Initiator, Responder</li>
<li>Parameter Sets:</li>
<li><ul>
<li>FB:</li>
<li><ul>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
<li>FC:</li>
<li><ul>
<li>SHA: SHA-256</li>
<li>MAC: HMAC</li>
</ul></li>
</ul></li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4009">#4009</a>, DSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1301">#1301</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1730">#1730</a></p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#146">#146</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="odd">
<td><p><strong>ECC:</strong> (FUNCTIONS INCLUDED IN IMPLEMENTATION: DPG   DPV   KPG   Full Validation   Key Regeneration ) <strong>SCHEMES</strong> [ <strong>FullUnified</strong> ( <strong>EC:</strong> P-256   SHA256   HMAC ) ( <strong>ED:</strong> P-384   SHA384   HMAC ) ]</p>
<p>SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">Val#3790</a><br />
DSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1135">Val#1135</a><br />
DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1556">Val#1556</a></p></td>
<td><p>Windows 10 Creators Update (version 1703) Pro, Enterprise, Education Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#128">#128</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="even">
<td><p><strong>FFC:</strong> (FUNCTIONS INCLUDED IN IMPLEMENTATION: DPG   DPV   KPG   Partial Validation ) <strong>SCHEMES</strong> [ <strong>dhEphem</strong> ( KARole(s): Initiator / Responder )<br />
( <strong>FB:</strong> SHA256 ) ( <strong>FC:</strong> SHA256 ) ]<br />
[ <strong>dhOneFlow</strong> ( <strong>FB:</strong> SHA256 ) ( <strong>FC:</strong> SHA256 ) ] [ <strong>dhStatic</strong> ( <strong>No_KC</strong> &amp;lt; KARole(s): Initiator / Responder&amp;gt; ) ( <strong>FB:</strong> SHA256 HMAC ) ( <strong>FC:</strong> SHA256   HMAC ) ]<br />
SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">Val#3790</a><br />
DSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1223">Val#1223</a><br />
DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1555">Val#1555</a></p>
<p><strong>ECC:</strong> (FUNCTIONS INCLUDED IN IMPLEMENTATION: DPG   DPV   KPG   Partial Validation ) <strong>SCHEMES</strong> [ <strong>EphemeralUnified</strong> ( <strong>No_KC</strong> &amp;lt; KARole(s): Initiator / Responder&amp;gt; ) ( <strong>EC:</strong> P-256   SHA256   HMAC ) ( <strong>ED:</strong> P-384   SHA384   HMAC ) ( <strong>EE:</strong> P-521 HMAC (SHA512, HMAC_SHA512) ) ) ]<br />
[ <strong>OnePassDH</strong> ( <strong>No_KC</strong> &amp;lt; KARole(s): Initiator / Responder&amp;gt; ) ( <strong>EC:</strong> P-256   SHA256   HMAC ) ( <strong>ED:</strong> P-384   SHA384   HMAC ) ( <strong>EE:</strong> P-521   HMAC (SHA512, HMAC_SHA512) ) ]<br />
[ <strong>StaticUnified</strong> ( <strong>No_KC</strong> &amp;lt; KARole(s): Initiator / Responder&amp;gt; ) ( <strong>EC:</strong> P-256   SHA256   HMAC ) ( <strong>ED:</strong> P-384   SHA384   HMAC ) ( <strong>EE:</strong> P-521   HMAC (SHA512, HMAC_SHA512) ) ]<br />
<br />
SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">Val#3790</a><br />
ECDSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1133">Val#1133</a><br />
DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1555">Val#1555</a></p></td>
<td><p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#127">#127</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="odd">
<td><p><strong>FFC:</strong> (FUNCTIONS INCLUDED IN IMPLEMENTATION: DPG   DPV   KPG   Partial Validation ) <strong>SCHEMES</strong> [ <strong>dhEphem</strong> ( KARole(s): Initiator / Responder )<br />
( <strong>FB:</strong> SHA256 ) ( <strong>FC:</strong> SHA256 ) ]<br />
[ <strong>dhOneFlow</strong> ( KARole(s): Initiator / Responder ) ( <strong>FB:</strong> SHA256 ) ( <strong>FC:</strong> SHA256 ) ] [ <strong>dhStatic</strong> ( <strong>No_KC</strong> &amp;lt; KARole(s): Initiator / Responder&amp;gt; ) ( <strong>FB:</strong> SHA256 HMAC ) ( <strong>FC:</strong> SHA256   HMAC ) ]<br />
SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3649">Val# 3649</a><br />
DSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1188">Val#1188</a><br />
DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1430">Val#1430</a></p>
<p><strong>ECC:</strong> (FUNCTIONS INCLUDED IN IMPLEMENTATION: DPG   DPV   KPG   Partial Validation   Key Regeneration ) <strong>SCHEMES</strong> [ <strong>EphemeralUnified</strong> ( <strong>No_KC</strong> &amp;lt; KARole(s): Initiator / Responder&amp;gt; ) ( <strong>EC:</strong> P-256   SHA256   HMAC ) ( <strong>ED:</strong> P-384   SHA384   HMAC ) ( <strong>EE:</strong> P-521 HMAC (SHA512, HMAC_SHA512) ) ) ]<br />
[ <strong>OnePassDH</strong> ( <strong>No_KC</strong> &amp;lt; KARole(s): Initiator / Responder&amp;gt; ) ( <strong>EC:</strong> P-256   SHA256   HMAC ) ( <strong>ED:</strong> P-384   SHA384   HMAC ) ( <strong>EE:</strong> P-521   HMAC (SHA512, HMAC_SHA512) ) ]<br />
[ <strong>StaticUnified</strong> ( <strong>No_KC</strong> &amp;lt; KARole(s): Initiator / Responder&amp;gt; ) ( <strong>EC:</strong> P-256   SHA256   HMAC ) ( <strong>ED:</strong> P-384   SHA384   HMAC ) ( <strong>EE:</strong> P-521   HMAC (SHA512, HMAC_SHA512) ) ]</p></td>
<td><p>Windows Embedded Compact Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#115">#115</a></p>
<p>Version 7.00.2872</p></td>
</tr>
<tr class="even">
<td><p><strong>FFC:</strong> (FUNCTIONS INCLUDED IN IMPLEMENTATION: DPG   DPV   KPG   Partial Validation ) <strong>SCHEMES</strong> [ <strong>dhEphem</strong> ( KARole(s): Initiator / Responder )<br />
( <strong>FB:</strong> SHA256 ) ( <strong>FC:</strong> SHA256 ) ]<br />
[ <strong>dhHybridOneFlow</strong> ( <strong>No_KC</strong> &amp;lt; KARole(s): Initiator / Responder&amp;gt; ) ( <strong>FB:</strong>SHA256 HMAC ) ( <strong>FC:</strong> SHA256   HMAC ) ]<br />
[ <strong>dhStatic</strong> ( <strong>No_KC</strong> &amp;lt; KARole(s): Initiator / Responder&amp;gt; ) ( <strong>FB:</strong>SHA256 HMAC ) ( <strong>FC:</strong> SHA256   HMAC ) ]<br />
SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3648">Val#3648</a><br />
DSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1187">Val#1187</a><br />
DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1429">Val#1429</a></p>
<p><strong>ECC:</strong> (FUNCTIONS INCLUDED IN IMPLEMENTATION: DPG   DPV   KPG   Partial Validation   Key Regeneration ) <strong>SCHEMES</strong> [ <strong>EphemeralUnified</strong> ( <strong>No_KC</strong> ) ( <strong>EC:</strong> P-256   SHA256   HMAC ) ( <strong>ED:</strong> P-384   SHA384   HMAC ) ( <strong>EE:</strong> P-521 HMAC (SHA512, HMAC_SHA512) ) ) ]<br />
[ <strong>OnePassDH</strong> ( <strong>No_KC</strong> &amp;lt; KARole(s): Initiator / Responder&amp;gt; ) ( <strong>EC:</strong> P-256   SHA256   HMAC ) ( <strong>ED:</strong> P-384   SHA384   HMAC ) ( <strong>EE:</strong> P-521   HMAC (SHA512, HMAC_SHA512) ) ]<br />
[ <strong>StaticUnified</strong> ( <strong>No_KC</strong> &amp;lt; KARole(s): Initiator / Responder&amp;gt; ) ( <strong>EC:</strong> P-256   SHA256   HMAC ) ( <strong>ED:</strong> P-384   SHA384   HMAC ) ( <strong>EE:</strong> P-521   HMAC (SHA512, HMAC_SHA512) ) ]<br />
<br />
SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3648">Val#3648</a><br />
ECDSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#1072">Val#1072</a><br />
DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1429">Val#1429</a></p></td>
<td><p>Windows Embedded Compact Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#114">#114</a></p>
<p>Version 8.00.6246</p></td>
</tr>
<tr class="odd">
<td><p><strong>ECC:</strong>  (FUNCTIONS INCLUDED IN IMPLEMENTATION: DPG   DPV   KPG   Full Validation   Key Regeneration )<br />
<strong>SCHEMES  [ FullUnified  ( No_KC</strong>  &amp;lt; KARole(s): Initiator / Responder &amp;gt; &amp;lt; KDF: CONCAT &amp;gt; ) ( <strong>EC:</strong>  P-256   SHA256   HMAC ) ( <strong>ED:</strong>  P-384   SHA384   HMAC ) ]</p>
<p>SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">Val# 3347</a> ECDSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#920">Val#920</a> DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1222">Val#1222</a></p></td>
<td><p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4 and Surface Pro 3 w/ Windows 10 Anniversary Update Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#93">#93</a></p>
<p>Version 10.0.14393</p></td>
</tr>
<tr class="even">
<td><p><strong>FFC:</strong> (FUNCTIONS INCLUDED IN IMPLEMENTATION: DPG   DPV   KPG   Partial Validation )<br />
<strong>SCHEMES</strong>  [ dhEphem  ( KARole(s): Initiator / Responder )<br />
( <strong>FB:</strong> SHA256 ) ( <strong>FC:</strong> SHA256 ) ]<br />
[ dhOneFlow ( KARole(s): Initiator / Responder ) ( <strong>FB:</strong>  SHA256 ) ( <strong>FC:</strong>  SHA256 ) ] [ <strong>dhStatic (No_KC</strong>  &amp;lt; KARole(s): Initiator / Responder &amp;gt; ) ( FB:  SHA256 HMAC ) ( FC:  SHA256   HMAC ) ]</p>
<p>SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">Val# 3347</a> DSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1098">Val#1098</a> DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1217">Val#1217</a></p>
<p><strong>ECC:</strong>  (FUNCTIONS INCLUDED IN IMPLEMENTATION: DPG   DPV   KPG   Partial Validation   Key Regeneration ) <strong>SCHEMES</strong>  [ EphemeralUnified ( No_KC  &amp;lt; KARole(s): Initiator / Responder &amp;gt; ) ( EC:  P-256   SHA256   HMAC ) ( ED:  P-384   SHA384   HMAC ) ( EE:  P-521 HMAC (SHA512, HMAC_SHA512) ) ) ]<br />
[ OnePassDH  ( No_KC  &amp;lt; KARole(s): Initiator / Responder &amp;gt; ) ( EC:  P-256   SHA256   HMAC ) ( ED:  P-384   SHA384   HMAC ) ( EE:  P-521   HMAC (SHA512, HMAC_SHA512) ) ]<br />
[ StaticUnified ( No_KC  &amp;lt; KARole(s): Initiator / Responder &amp;gt; ) ( EC:  P-256   SHA256   HMAC ) ( ED:  P-384   SHA384   HMAC ) ( EE:  P-521   HMAC (SHA512, HMAC_SHA512) ) ]</p>
<p>SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">Val# 3347</a> DSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1098">Val#1098</a> ECDSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#911">Val#911</a> DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1217">Val#1217</a> HMAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2651">Val#2651</a></p></td>
<td><p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#92">#92</a></p>
<p>Version 10.0.14393</p></td>
</tr>
<tr class="odd">
<td><p><strong>FFC:</strong> (FUNCTIONS INCLUDED IN IMPLEMENTATION: DPG   DPV   KPG   Partial Validation ) SCHEMES  [ dhEphem  ( KARole(s): Initiator / Responder )<br />
( FB: SHA256 ) ( FC: SHA256 ) ]<br />
[ dhOneFlow ( KARole(s): Initiator / Responder ) ( FB:  SHA256 ) ( FC:  SHA256 ) ] [ dhStatic ( No_KC  &amp;lt; KARole(s): Initiator / Responder &amp;gt; ) ( FB:  SHA256 HMAC ) ( FC:  SHA256   HMAC ) ]</p>
<p>SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3047">Val# 3047</a> DSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#1024">Val#1024</a> DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#955">Val#955</a></p>
<p><strong>ECC:</strong>  (FUNCTIONS INCLUDED IN IMPLEMENTATION: DPG   DPV   KPG   Partial Validation   Key Regeneration ) SCHEMES  [ EphemeralUnified ( No_KC  &amp;lt; KARole(s): Initiator / Responder &amp;gt; ) ( EC:  P-256   SHA256   HMAC ) ( ED:  P-384   SHA384   HMAC ) ( EE:  P-521 HMAC (SHA512, HMAC_SHA512) ) ) ]<br />
[ OnePassDH  ( No_KC  &amp;lt; KARole(s): Initiator / Responder &amp;gt; ) ( EC:  P-256   SHA256   HMAC ) ( ED:  P-384   SHA384   HMAC ) ( EE:  P-521   HMAC (SHA512, HMAC_SHA512) ) ]<br />
[ StaticUnified ( No_KC  &amp;lt; KARole(s): Initiator / Responder &amp;gt; ) ( EC:  P-256   SHA256   HMAC ) ( ED:  P-384   SHA384   HMAC ) ( EE:  P-521   HMAC (SHA512, HMAC_SHA512) ) ]</p>
<p>SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3047">Val# 3047</a> ECDSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#760">Val#760</a> DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#955">Val#955</a></p></td>
<td><p>Microsoft Windows 10 November 2015 Update; Microsoft Surface Book, Surface Pro 4, Surface Pro 3, Surface 3, Surface Pro 2, and Surface Pro w/ Windows 10 November 2015 Update; Windows 10 Mobile for Microsoft Lumia 950 and Microsoft Lumia 635; Windows 10 for Microsoft Surface Hub and Surface Hub Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#72">#72</a></p>
<p>Version 10.0.10586</p></td>
</tr>
<tr class="even">
<td><p><strong>FFC:</strong> (FUNCTIONS INCLUDED IN IMPLEMENTATION: DPG   DPV   KPG   Partial Validation ) SCHEMES  [ dhEphem  ( KARole(s): Initiator / Responder )<br />
( FB: SHA256 ) ( FC: SHA256 ) ]<br />
[ dhOneFlow ( KARole(s): Initiator / Responder ) ( FB:  SHA256 ) ( FC:  SHA256 ) ] [ dhStatic ( No_KC  &amp;lt; KARole(s): Initiator / Responder &amp;gt; ) ( FB:  SHA256 HMAC ) ( FC:  SHA256   HMAC ) ]</p>
<p>SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2886">Val# 2886</a> DSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#983">Val#983</a> DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#868">Val#868</a></p>
<p><strong>ECC:</strong>  (FUNCTIONS INCLUDED IN IMPLEMENTATION: DPG   DPV   KPG   Partial Validation   Key Regeneration ) SCHEMES  [ EphemeralUnified ( No_KC  &amp;lt; KARole(s): Initiator / Responder &amp;gt; ) ( EC:  P-256   SHA256   HMAC ) ( ED:  P-384   SHA384   HMAC ) ( EE:  P-521 HMAC (SHA512, HMAC_SHA512) ) ) ]<br />
[ OnePassDH  ( No_KC  &amp;lt; KARole(s): Initiator / Responder &amp;gt; ) ( EC:  P-256   SHA256   HMAC ) ( ED:  P-384   SHA384   HMAC ) ( EE:  P-521   HMAC (SHA512, HMAC_SHA512) ) ]<br />
[ StaticUnified ( No_KC  &amp;lt; KARole(s): Initiator / Responder &amp;gt; ) ( EC:  P-256   SHA256   HMAC ) ( ED:  P-384   SHA384   HMAC ) ( EE:  P-521   HMAC (SHA512, HMAC_SHA512) ) ]</p>
<p>SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2886">Val# 2886</a> ECDSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#706">Val#706</a> DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#868">Val#868</a></p></td>
<td><p>Microsoft Windows 10, Microsoft Surface Pro 3 with Windows 10, Microsoft Surface 3 with Windows 10, Microsoft Surface Pro 2 with Windows 10, Microsoft Surface Pro with Windows 10 Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#64">#64</a></p>
<p>Version 10.0.10240</p></td>
</tr>
<tr class="odd">
<td><p><strong>FFC:</strong> (FUNCTIONS INCLUDED IN IMPLEMENTATION: DPG   DPV   KPG   Partial Validation ) SCHEMES  [ dhEphem  ( KARole(s): Initiator / Responder )<br />
( FB: SHA256 ) ( FC: SHA256 ) ]<br />
[ dhOneFlow ( KARole(s): Initiator / Responder ) ( FB:  SHA256 ) ( FC:  SHA256 ) ] [ dhStatic ( No_KC  &amp;lt; KARole(s): Initiator / Responder &amp;gt; ) ( FB:  SHA256 HMAC ) ( FC:  SHA256   HMAC ) ]</p>
<p>SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373">Val#2373</a> DSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#855">Val#855</a> DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#489">Val#489</a></p>
<p><strong>ECC:</strong>  (FUNCTIONS INCLUDED IN IMPLEMENTATION: DPG   DPV   KPG   Partial Validation   Key Regeneration ) SCHEMES  [ EphemeralUnified ( No_KC  &amp;lt; KARole(s): Initiator / Responder &amp;gt; ) ( EC:  P-256   SHA256   HMAC ) ( ED:  P-384   SHA384   HMAC ) ( EE:  P-521 HMAC (SHA512, HMAC_SHA512) ) ) ]<br />
[ OnePassDH  ( No_KC  &amp;lt; KARole(s): Initiator / Responder &amp;gt; ) ( EC:  P-256   SHA256   HMAC ) ( ED:  P-384   SHA384   HMAC ) ( EE:  P-521   HMAC (SHA512, HMAC_SHA512) ) ]<br />
[ StaticUnified ( No_KC  &amp;lt; KARole(s): Initiator / Responder &amp;gt; ) ( EC:  P-256   SHA256   HMAC ) ( ED:  P-384   SHA384   HMAC ) ( EE:  P-521   HMAC (SHA512, HMAC_SHA512) ) ]</p>
<p>SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373">Val#2373</a> ECDSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#505">Val#505</a> DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#489">Val#489</a></p></td>
<td><p>Windows Storage Server 2012 R2, Microsoft Windows RT 8.1, Microsoft Surface with Windows RT 8.1, Microsoft Surface Pro with Windows 8.1, Microsoft Surface 2, Microsoft Surface Pro 2, Microsoft Surface Pro 3, Microsoft Windows Phone 8.1, Microsoft Windows Embedded 8.1 Industry and Microsoft StorSimple 8100 Cryptography Next Generation Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#47">#47</a></p>
<p>Version 6.3.9600</p></td>
</tr>
<tr class="even">
<td><p><strong>FFC</strong>: (FUNCTIONS INCLUDED IN IMPLEMENTATION: DPG DPV KPG Partial Validation ) SCHEMES [ <strong>dhEphem</strong> ( KARole(s): Initiator / Responder )<br />
( <strong>FA</strong>: SHA256 ) ( <strong>FB</strong>: SHA256 ) ( <strong>FC</strong>: SHA256 ) ]<br />
[ <strong>dhOneFlow</strong> ( KARole(s): Initiator / Responder ) ( <strong>FA</strong>: SHA256 ) ( <strong>FB</strong>: SHA256 ) ( <strong>FC</strong>: SHA256 ) ]<br />
[ <strong>dhStatic</strong> ( <strong>No_KC</strong> &amp;lt; KARole(s): Initiator / Responder&amp;gt; ) ( <strong>FA</strong>: SHA256 HMAC ) ( <strong>FB</strong>: SHA256 HMAC ) ( <strong>FC</strong>: SHA256 HMAC ) ]<br />
SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a> DSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/dsa#687">Val#687</a> DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#258">#258</a></p>
<p><strong>ECC</strong>: (FUNCTIONS INCLUDED IN IMPLEMENTATION: DPG DPV KPG Partial Validation Key Regeneration ) <strong>SCHEMES</strong> [ <strong>EphemeralUnified</strong> ( <strong>No_KC</strong> &amp;lt; KARole(s): Initiator / Responder&amp;gt; ) ( EC: P-256 SHA256 HMAC ) ( <strong>ED</strong>: P-384 SHA384 HMAC ) ( <strong>EE</strong>: P-521 HMAC (SHA512, HMAC_SHA512) ) ) ]<br />
[ <strong>OnePassDH( No_KC</strong> &amp;lt; KARole(s): Initiator / Responder&amp;gt; ) ( <strong>EC</strong>: P-256 SHA256 ) ( <strong>ED</strong>: P-384 SHA384 ) ( <strong>EE</strong>: P-521 (SHA512, HMAC_SHA512) ) ) ]<br />
[ <strong>StaticUnified</strong> ( <strong>No_KC</strong> &amp;lt; KARole(s): Initiator / Responder&amp;gt; ) ( <strong>EC</strong>: P-256 SHA256 HMAC ) ( <strong>ED</strong>: P-384 SHA384 HMAC ) ( <strong>EE</strong>: P-521 HMAC (SHA512, HMAC_SHA512) ) ]<br />
<br />
SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a> ECDSA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/ecdsa#341">Val#341</a> DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#258">#258</a></p></td>
<td>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#36">#36</a></td>
</tr>
<tr class="odd">
<td><p><strong>KAS (SP 800–56A)</strong></p>
<p>key agreement</p>
<p>key establishment methodology provides 80 to 256 bits of encryption strength</p></td>
<td><p>Windows 7 and SP1, vendor-affirmed</p>
<p>Windows Server 2008 R2 and SP1, vendor-affirmed</p></td>
</tr>
</tbody>
</table>


SP 800-108 Key-Based Key Derivation Functions (KBKDF)

<table>
<tbody>
<tr class="odd">
<td><strong>Modes / States / Key Sizes</strong></td>
<td><strong>Algorithm Implementation and Certificate #</strong></td>
</tr>
<tr class="even">
<td><ul>
<li>Counter:</li>
<li><ul>
<li>MACs: HMAC-SHA-1, HMAC-SHA-256, HMAC-SHA-384</li>
</ul></li>
</ul>
<p>MAC prerequisite: HMAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3271">#3271</a></p>
<div>
<ul>
<li>Counter Location: Before Fixed Data</li>
<li>R Length: 32 (bits)</li>
<li>SPs used to generate K: SP 800-56A, SP 800-90A</li>
</ul>
</div>
<p>K prerequisite: DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1734">#1734</a>, KAS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#150">#150</a></p></td>
<td><p>Microsoft Surface Hub Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#161">#161</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>Counter:</li>
<li><ul>
<li>MACs: HMAC-SHA-1, HMAC-SHA-256, HMAC-SHA-384</li>
</ul></li>
</ul>
<p>MAC prerequisite: HMAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3270">#3270</a></p>
<div>
<ul>
<li>Counter Location: Before Fixed Data</li>
<li>R Length: 32 (bits)</li>
<li>SPs used to generate K: SP 800-56A, SP 800-90A</li>
</ul>
</div>
<p>K prerequisite: DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1733">#1733</a>, KAS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#149">#149</a></p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#160">#160</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="even">
<td><ul>
<li>Counter:</li>
<li><ul>
<li>MACs: CMAC-AES-128, CMAC-AES-192, CMAC-AES-256, HMAC-SHA-1, HMAC-SHA-256, HMAC-SHA-384, HMAC-SHA-512</li>
</ul></li>
</ul>
<p>MAC prerequisite: AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4902">#4902</a>, HMAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3269">#3269</a></p>
<div>
<ul>
<li>Counter Location: Before Fixed Data</li>
<li>R Length: 32 (bits)</li>
<li>SPs used to generate K: SP 800-56A, SP 800-90A</li>
<li>K prerequisite: KAS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#148">#148</a></li>
</ul>
</div></td>
<td><p>Microsoft Surface Hub Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#159">#159</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>Counter:</li>
<li><ul>
<li>MACs: CMAC-AES-128, CMAC-AES-192, CMAC-AES-256, HMAC-SHA-1, HMAC-SHA-256, HMAC-SHA-384, HMAC-SHA-512</li>
</ul></li>
</ul>
<p>MAC prerequisite: AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4901">#4901</a>, HMAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3268">#3268</a></p>
<div>
<ul>
<li>Counter Location: Before Fixed Data</li>
<li>R Length: 32 (bits)</li>
<li>SPs used to generate K: SP 800-56A, SP 800-90A</li>
</ul>
</div>
<p>K prerequisite: KAS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#147">#147</a></p></td>
<td><p>Windows 10 Mobile (version 1709) Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#158">#158</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="even">
<td><ul>
<li>Counter:</li>
<li><ul>
<li>MACs: CMAC-AES-128, CMAC-AES-192, CMAC-AES-256, HMAC-SHA-1, HMAC-SHA-256, HMAC-SHA-384, HMAC-SHA-512</li>
</ul></li>
</ul>
<p>MAC prerequisite: AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4897">#4897</a>, HMAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3267">#3267</a></p>
<div>
<ul>
<li>Counter Location: Before Fixed Data</li>
<li>R Length: 32 (bits)</li>
<li>SPs used to generate K: SP 800-56A, SP 800-90A</li>
</ul>
</div>
<p>K prerequisite: KAS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#146">#146</a></p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#157">#157</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="odd">
<td><strong>CTR_Mode:</strong> ( Llength( Min0 Max0 ) MACSupported( [HMACSHA1] [HMACSHA256] [HMACSHA384] ) LocationCounter( [BeforeFixedData] ) rlength( [32] ) )<br />
<br />
KAS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#128">Val#128</a><br />
DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1556">Val#1556</a><br />
MAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3062">Val#3062</a></td>
<td><p>Windows 10 Creators Update (version 1703) Pro, Enterprise, Education Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#141">#141</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="even">
<td><strong>CTR_Mode:</strong> ( Llength( Min20 Max64 ) MACSupported( [CMACAES128] [CMACAES192] [CMACAES256] [HMACSHA1] [HMACSHA256] [HMACSHA384] [HMACSHA512] ) LocationCounter( [BeforeFixedData] ) rlength( [32] ) )<br />
<br />
KAS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#127">Val#127</a><br />
AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4624">Val#4624</a><br />
DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1555">Val#1555</a><br />
MAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3061">Val#3061</a></td>
<td><p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#140">#140</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="odd">
<td><p><strong>CTR_Mode:</strong>  ( Llength( Min20 Max64 ) MACSupported( [HMACSHA1] [HMACSHA256] [HMACSHA384] ) LocationCounter( [BeforeFixedData] ) rlength( [32] ) )</p>
<p>KAS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#93">Val#93</a> DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1222">Val#1222</a> MAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2661">Val#2661</a></p></td>
<td><p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4 and Surface Pro 3 w/ Windows 10 Anniversary Update Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#102">#102</a></p>
<p>Version 10.0.14393</p></td>
</tr>
<tr class="even">
<td><p><strong>CTR_Mode:</strong>  ( Llength( Min20 Max64 ) MACSupported( [CMACAES128] [CMACAES192] [CMACAES256] [HMACSHA1] [HMACSHA256] [HMACSHA384] [HMACSHA512] ) LocationCounter( [BeforeFixedData] ) rlength( [32] ) )</p>
<p>KAS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#92">Val#92</a> AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#4064">Val#4064</a> DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1217">Val#1217</a> MAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2651">Val#2651</a></p></td>
<td><p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#101">#101</a></p>
<p>Version 10.0.14393</p></td>
</tr>
<tr class="odd">
<td><p><strong>CTR_Mode:</strong>  ( Llength( Min20 Max64 ) MACSupported( [CMACAES128] [CMACAES192] [CMACAES256] [HMACSHA1] [HMACSHA256] [HMACSHA384] [HMACSHA512] ) LocationCounter( [BeforeFixedData] ) rlength( [32] ) )</p>
<p>KAS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#72">Val#72</a> AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3629">Val#3629</a> DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#955">Val#955</a> MAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2381">Val#2381</a></p></td>
<td><p>Microsoft Windows 10 November 2015 Update; Microsoft Surface Book, Surface Pro 4, Surface Pro 3, Surface 3, Surface Pro 2, and Surface Pro w/ Windows 10 November 2015 Update; Windows 10 Mobile for Microsoft Lumia 950 and Microsoft Lumia 635; Windows 10 for Microsoft Surface Hub 84” and Surface Hub 55” Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#72">#72</a></p>
<p>Version 10.0.10586</p></td>
</tr>
<tr class="even">
<td><p><strong>CTR_Mode:</strong>  ( Llength( Min20 Max64 ) MACSupported( [CMACAES128] [CMACAES192] [CMACAES256] [HMACSHA1] [HMACSHA256] [HMACSHA384] [HMACSHA512] ) LocationCounter( [BeforeFixedData] ) rlength( [32] ) )</p>
<p>KAS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kas#64">Val#64</a> AES <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/aes#3497">Val#3497</a> RBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#868">Val#868</a> MAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#2233">Val#2233</a></p></td>
<td><p>Microsoft Windows 10, Microsoft Surface Pro 3 with Windows 10, Microsoft Surface 3 with Windows 10, Microsoft Surface Pro 2 with Windows 10, Microsoft Surface Pro with Windows 10 Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#66">#66</a></p>
<p>Version 10.0.10240</p></td>
</tr>
<tr class="odd">
<td><p><strong>CTR_Mode:</strong>  ( Llength( Min0 Max0 ) MACSupported( [HMACSHA1] [HMACSHA256] [HMACSHA512] ) LocationCounter( [BeforeFixedData] ) rlength( [32] ) )</p>
<p>DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#489">Val#489</a> MAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1773">Val#1773</a></p></td>
<td><p>Windows Storage Server 2012 R2, Microsoft Windows RT 8.1, Microsoft Surface with Windows RT 8.1, Microsoft Surface Pro with Windows 8.1, Microsoft Surface 2, Microsoft Surface Pro 2, Microsoft Surface Pro 3, Microsoft Windows Phone 8.1, Microsoft Windows Embedded 8.1 Industry and Microsoft StorSimple 8100 Cryptography Next Generation Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/kdf#30">#30</a></p>
<p>Version 6.3.9600</p></td>
</tr>
<tr class="even">
<td><p><strong>CTR_Mode</strong>: ( Llength( Min0 Max4 ) MACSupported( [HMACSHA1] [HMACSHA256] [HMACSHA512] ) LocationCounter( [BeforeFixedData] ) rlength( [32] ) )</p>
<p>DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#258">#258</a> HMAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#1345">Val#1345</a></p></td>
<td>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 Cryptography Next Generation (CNG) Implementations <a href="http://csrc.nist.gov/groups/stm/cavp/documents/kbkdf800-108/kbkdfval.htm#3">#3</a></td>
</tr>
</tbody>
</table>


Random Number Generator (RNG)

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Modes / States / Key Sizes</strong></td>
<td><strong>Algorithm Implementation and Certificate #</strong></td>
</tr>
<tr class="even">
<td><p><strong>FIPS 186-2 General Purpose</strong></p>
<p><strong>[ (x-Original); (SHA-1) ]</strong></p></td>
<td>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 Cryptography Next Generation (CNG) Implementations #<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#1110">1110</a></td>
</tr>
<tr class="odd">
<td><strong>FIPS 186-2<br />
[ (x-Original); (SHA-1) ]</strong></td>
<td><p>Windows Embedded Compact 7 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#1060">#1060</a></p>
<p>Windows CE 6.0 and Windows CE 6.0 R2 and Windows Mobile Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#292">#292</a></p>
<p>Windows CE and Windows Mobile 6.0 and Windows Mobile 6.5 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#286">#286</a></p>
<p>Windows CE 5.00 and Window CE 5.01 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#66">#66</a></p></td>
</tr>
<tr class="even">
<td><p><strong>FIPS 186-2<br />
[ (x-Change Notice); (SHA-1) ]</strong></p>
<p><strong>FIPS 186-2 General Purpose<br />
[ (x-Change Notice); (SHA-1) ]</strong></p></td>
<td><p>Windows 7 and SP1 and Windows Server 2008 R2 and SP1 RNG Library <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#649">#649</a></p>
<p>Windows Vista Ultimate SP1 and Windows Server 2008 RNG Implementation <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#435">#435</a></p>
<p>Windows Vista RNG implementation <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#321">#321</a></p></td>
</tr>
<tr class="odd">
<td><strong>FIPS 186-2 General Purpose<br />
[ (x-Change Notice); (SHA-1) ]</strong></td>
<td><p>Windows Server 2003 SP2 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#470">#470</a></p>
<p>Windows XP Professional SP3 Kernel Mode Cryptographic Module (fips.sys) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#449">#449</a></p>
<p>Windows XP Professional SP3 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#447">#447</a></p>
<p>Windows Server 2003 SP2 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#316">#316</a></p>
<p>Windows Server 2003 SP2 Kernel Mode Cryptographic Module (fips.sys) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#313">#313</a></p></td>
</tr>
<tr class="even">
<td><strong>FIPS 186-2<br />
[ (x-Change Notice); (SHA-1) ]</strong></td>
<td><p>Windows XP Professional SP3 Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#448">#448</a></p>
<p>Windows Server 2003 SP2 Enhanced DSS and Diffie-Hellman Cryptographic Provider <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#314">#314</a></p></td>
</tr>
</tbody>
</table>


#### RSA

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Modes / States / Key Sizes</strong></td>
<td><strong>Algorithm Implementation and Certificate #</strong></td>
</tr>
<tr class="even">
<td><p>RSA:</p>
<ul>
<li>186-4:</li>
<li><ul>
<li>Signature Generation PKCS1.5:</li>
<li><ul>
<li>Mod 2048 SHA: SHA-1, SHA-256, SHA-384</li>
</ul></li>
<li>Signature Generation PSS:</li>
<li><ul>
<li>Mod 2048:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
</ul></li>
</ul></li>
<li>Signature Verification PKCS1.5:</li>
<li><ul>
<li>Mod 1024 SHA: SHA-1, SHA-256, SHA-384</li>
<li>Mod 2048 SHA: SHA-1, SHA-256, SHA-384</li>
</ul></li>
<li>Signature Verification PSS:</li>
<li><ul>
<li>Mod 2048:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
</ul></li>
<li>Mod 3072:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4011">#4011</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1734">#1734</a></p></td>
<td><p>Microsoft Surface Hub Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2677">#2677</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="odd">
<td><p>RSA:</p>
<ul>
<li>186-4:</li>
<li><ul>
<li>Signature Generation PKCS1.5:</li>
<li><ul>
<li>Mod 2048 SHA: SHA-1, SHA-256, SHA-384</li>
</ul></li>
<li>Signature Generation PSS:</li>
<li><ul>
<li>Mod 2048:</li>
<li><ul>
<li>SHA-1: Salt Length: 240 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
</ul></li>
</ul></li>
<li>Signature Verification PKCS1.5:</li>
<li><ul>
<li>Mod 1024 SHA: SHA-1, SHA-256, SHA-384</li>
<li>Mod 2048 SHA: SHA-1, SHA-256, SHA-384</li>
</ul></li>
<li>Signature Verification PSS:</li>
<li><ul>
<li>Mod 1024:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
</ul></li>
<li>Mod 2048:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4009">#4009</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1733">#1733</a></p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2676">#2676</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="even">
<td><p>RSA:</p>
<ul>
<li>186-4:</li>
<li><ul>
<li>Key Generation:</li>
<li>Signature Verification PKCS1.5:</li>
<li><ul>
<li>Mod 1024 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 2048 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 3072 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4011">#4011</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1732">#1732</a></p></td>
<td><p>Microsoft Surface Hub RSA32 Algorithm Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2675">#2675</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="odd">
<td><p>RSA:</p>
<ul>
<li>186-4:</li>
<li><ul>
<li>Signature Verification PKCS1.5:</li>
<li><ul>
<li>Mod 1024 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 2048 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 3072 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4009">#4009</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1730">#1730</a></p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); RSA32 Algorithm Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2674">#2674</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="even">
<td><p>RSA:</p>
<ul>
<li>186-4:</li>
<li><ul>
<li>Signature Verification PKCS1.5:</li>
<li><ul>
<li>Mod 1024 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 2048 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 3072 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4010">#4010</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1731">#1731</a></p></td>
<td><p>Windows 10 Mobile (version 1709) RSA32 Algorithm Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2673">#2673</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="odd">
<td><p>RSA:</p>
<ul>
<li>186-4:</li>
<li><ul>
<li>Key Generation:</li>
<li><ul>
<li>Public Key Exponent: Fixed (10001)</li>
<li>Provable Primes with Conditions:</li>
<li><ul>
<li>Mod lengths: 2048, 3072 (bits)</li>
<li>Primality Tests: C.3</li>
</ul></li>
</ul></li>
<li>Signature Generation PKCS1.5:</li>
<li><ul>
<li>Mod 2048 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 3072 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
</ul></li>
<li>Signature Generation PSS:</li>
<li><ul>
<li>Mod 2048:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
<li>Mod 3072:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
</ul></li>
<li>Signature Verification PKCS1.5:</li>
<li><ul>
<li>Mod 1024 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 2048 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 3072 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
</ul></li>
<li>Signature Verification PSS:</li>
<li><ul>
<li>Mod 1024:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 496 (bits)</li>
</ul></li>
<li>Mod 2048:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
<li>Mod 3072:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4011">#4011</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1732">#1732</a></p></td>
<td><p>Microsoft Surface Hub MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2672">#2672</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="even">
<td><p>RSA:</p>
<ul>
<li>186-4:</li>
<li><ul>
<li>Key Generation:</li>
<li><ul>
<li>Probable Random Primes:</li>
<li><ul>
<li>Mod lengths: 2048, 3072 (bits)</li>
<li>Primality Tests: C.2</li>
</ul></li>
</ul></li>
<li>Signature Generation PKCS1.5:</li>
<li><ul>
<li>Mod 2048 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 3072 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
</ul></li>
<li>Signature Generation PSS:</li>
<li><ul>
<li>Mod 2048:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
<li>Mod 3072:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
</ul></li>
<li>Signature Verification PKCS1.5:</li>
<li><ul>
<li>Mod 1024 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 2048 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 3072 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
</ul></li>
<li>Signature Verification PSS:</li>
<li><ul>
<li>Mod 1024:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 496 (bits)</li>
</ul></li>
<li>Mod 2048:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
<li>Mod 3072:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4011">#4011</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1732">#1732</a></p></td>
<td><p>Microsoft Surface Hub SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2671">#2671</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="odd">
<td><p>RSA:</p>
<ul>
<li>186-4:</li>
<li><ul>
<li>Key Generation:</li>
<li><ul>
<li>Probable Random Primes:</li>
<li><ul>
<li>Mod lengths: 2048, 3072 (bits)</li>
<li>Primality Tests: C.2</li>
</ul></li>
</ul></li>
<li>Signature Generation PKCS1.5:</li>
<li><ul>
<li>Mod 2048 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 3072 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
</ul></li>
<li>Signature Generation PSS:</li>
<li><ul>
<li>Mod 2048:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
<li>Mod 3072:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
</ul></li>
<li>Signature Verification PKCS1.5:</li>
<li><ul>
<li>Mod 1024 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 2048 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 3072 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
</ul></li>
<li>Signature Verification PSS:</li>
<li><ul>
<li>Mod 1024:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 496 (bits)</li>
</ul></li>
<li>Mod 2048:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
<li>Mod 3072:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4010">#4010</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1731">#1731</a></p></td>
<td><p>Windows 10 Mobile (version 1709) SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2670">#2670</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="even">
<td><p>RSA:</p>
<ul>
<li>186-4:</li>
<li><ul>
<li>Key Generation:</li>
<li><ul>
<li>Public Key Exponent: Fixed (10001)</li>
<li>Provable Primes with Conditions:</li>
<li><ul>
<li>Mod lengths: 2048, 3072 (bits)</li>
<li>Primality Tests: C.3</li>
</ul></li>
</ul></li>
<li>Signature Generation PKCS1.5:</li>
<li><ul>
<li>Mod 2048 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 3072 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
</ul></li>
<li>Signature Generation PSS:</li>
<li><ul>
<li>Mod 2048:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
<li>Mod 3072:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
</ul></li>
<li>Signature Verification PKCS1.5:</li>
<li><ul>
<li>Mod 1024 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 2048 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 3072 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
</ul></li>
<li>Signature Verification PSS:</li>
<li><ul>
<li>Mod 1024:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 496 (bits)</li>
</ul></li>
<li>Mod 2048:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
<li>Mod 3072:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4010">#4010</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1731">#1731</a></p></td>
<td><p>Windows 10 Mobile (version 1709) MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2669">#2669</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>186-4:</li>
<li><ul>
<li>Key Generation:</li>
<li><ul>
<li>Public Key Exponent: Fixed (10001)</li>
<li>Provable Primes with Conditions:</li>
<li><ul>
<li>Mod lengths: 2048, 3072 (bits)</li>
<li>Primality Tests: C.3</li>
</ul></li>
</ul></li>
<li>Signature Generation PKCS1.5:</li>
<li><ul>
<li>Mod 2048 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 3072 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
</ul></li>
<li>Signature Generation PSS:</li>
<li><ul>
<li>Mod 2048:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
<li>Mod 3072:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
</ul></li>
<li>Signature Verification PKCS1.5:</li>
<li><ul>
<li>Mod 1024 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 2048 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 3072 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
</ul></li>
<li>Signature Verification PSS:</li>
<li><ul>
<li>Mod 1024:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 496 (bits)</li>
</ul></li>
<li>Mod 2048:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
<li>Mod 3072:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4009">#4009</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1730">#1730</a></p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2668">#2668</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="even">
<td><ul>
<li>186-4:</li>
<li><ul>
<li>Key Generation:</li>
<li><ul>
<li>Probable Random Primes:</li>
<li><ul>
<li>Mod lengths: 2048, 3072 (bits)</li>
<li>Primality Tests: C.2</li>
</ul></li>
</ul></li>
<li>Signature Generation PKCS1.5:</li>
<li><ul>
<li>Mod 2048 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 3072 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
</ul></li>
<li>Signature Generation PSS:</li>
<li><ul>
<li>Mod 2048:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
<li>Mod 3072:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
</ul></li>
<li>Signature Verification PKCS1.5:</li>
<li><ul>
<li>Mod 1024 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 2048 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
<li>Mod 3072 SHA: SHA-1, SHA-256, SHA-384, SHA-512</li>
</ul></li>
<li>Signature Verification PSS:</li>
<li><ul>
<li>Mod 1024:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 496 (bits)</li>
</ul></li>
<li>Mod 2048:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
<li>Mod 3072:</li>
<li><ul>
<li>SHA-1: Salt Length: 160 (bits)</li>
<li>SHA-256: Salt Length: 256 (bits)</li>
<li>SHA-384: Salt Length: 384 (bits)</li>
<li>SHA-512: Salt Length: 512 (bits)</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4009">#4009</a>, DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1730">#1730</a></p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2667">#2667</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-4:<br />
ALG[RSASSA-PKCS1_V1_5]</strong> SIG(gen) (2048 SHA( 1 , 256 , 384 )) <strong><em>SIG(gen) with SHA-1 affirmed for use with protocols only.</em><br />
</strong> SIG(Ver) (1024 SHA( 1 , 256 , 384 )) (2048 SHA( 1 , 256 , 384 ))<br />
<strong>[RSASSA-PSS]:</strong> Sig(Gen): (2048 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) )) <strong><em>SIG(gen) with SHA-1 affirmed for use with protocols only.</em><br />
</strong> Sig(Ver): (1024 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) )) (2048 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) ))<br />
SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">Val#3790</a></td>
<td><p>Windows 10 Creators Update (version 1703) Pro, Enterprise, Education Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2524">#2524</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="even">
<td><strong>FIPS186-4:<br />
ALG[RSASSA-PKCS1_V1_5]</strong> SIG(Ver) (1024 SHA( 1 , 256 , 384 , 512 )) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 ))<br />
SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">Val#3790</a></td>
<td><p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile RSA32 Algorithm Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2523">#2523</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-4:<br />
186-4KEY(gen):</strong> FIPS186-4_Fixed_e ( 10001 ) ;<br />
<strong>PGM(ProbPrimeCondition):</strong> 2048 , 3072 <strong>PPTT:</strong>( C.3 )<br />
<strong>ALG[RSASSA-PKCS1_V1_5]</strong> SIG(gen) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 )) <strong><em>SIG(gen) with SHA-1 affirmed for use with protocols only.</em><br />
</strong> SIG(Ver) (1024 SHA( 1 , 256 , 384 , 512 )) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 ))<br />
<strong>[RSASSA-PSS]:</strong> Sig(Gen): (2048 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) )) (3072 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) )) <strong><em>SIG(gen) with SHA-1 affirmed for use with protocols only.</em><br />
</strong> Sig(Ver): (1024 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 62 ) )) (2048 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) )) (3072 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) ))<br />
SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">Val#3790</a><br />
DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1555">Val# 1555</a></td>
<td><p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2522">#2522</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="even">
<td><strong>FIPS186-4:<br />
186-4KEY(gen):<br />
PGM(ProbRandom:</strong> ( 2048 , 3072 ) <strong>PPTT:</strong>( C.2 )<br />
<strong>ALG[RSASSA-PKCS1_V1_5]</strong> SIG(gen) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 )) <strong><em>SIG(gen) with SHA-1 affirmed for use with protocols only.</em><br />
</strong> SIG(Ver) (1024 SHA( 1 , 256 , 384 , 512 )) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 ))<br />
<strong>[RSASSA-PSS]:</strong> Sig(Gen): (2048 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) )) (3072 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) )) <strong><em>SIG(gen) with SHA-1 affirmed for use with protocols only.</em><br />
</strong> Sig(Ver): (1024 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 62 ) )) (2048 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) )) (3072 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) ))<br />
SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">Val#3790</a></td>
<td><p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2521">#2521</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="odd">
<td><p><strong>FIPS186-2:<br />
ALG[ANSIX9.31]:</strong><br />
SIG(ver); 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3652">Val#3652</a><br />
<strong>ALG[RSASSA-PKCS1_V1_5]:</strong> SIG(gen) 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3652">Val#3652</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3652">Val#3652</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3652">Val#3652</a><br />
SIG(ver): 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3652">Val#3652</a>, SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3652">Val#3652</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3652">Val#3652</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3652">Val#3652</a></p>
<p><strong>FIPS186-4:<br />
ALG[ANSIX9.31]</strong> Sig(Gen): (2048 SHA( 1 )) (3072 SHA( 1 ))<strong><br />
<em>SIG(gen) with SHA-1 affirmed for use with protocols only.</em></strong> Sig(Ver): (1024 SHA( 1 )) (2048 SHA( 1 )) (3072 SHA( 1 ))<br />
<strong>ALG[RSASSA-PKCS1_V1_5]</strong> SIG(gen) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 )) <strong><em>SIG(gen) with SHA-1 affirmed for use with protocols only.</em><br />
</strong> SIG(Ver) (1024 SHA( 1 , 256 , 384 , 512 )) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 ))<br />
SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3652">Val#3652</a></p></td>
<td><p>Windows Embedded Compact Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2415">#2415</a></p>
<p>Version 7.00.2872</p></td>
</tr>
<tr class="even">
<td><p><strong>FIPS186-2:<br />
ALG[ANSIX9.31]:</strong><br />
SIG(ver); 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3651">Val#3651</a><br />
<strong>ALG[RSASSA-PKCS1_V1_5]:</strong> SIG(gen) 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3651">Val#3651</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3651">Val#3651</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3651">Val#3651</a><br />
SIG(ver): 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3651">Val#3651</a>, SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3651">Val#3651</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3651">Val#3651</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3651">Val#3651</a></p>
<p><strong>FIPS186-4:<br />
ALG[ANSIX9.31]</strong> Sig(Gen): (2048 SHA( 1 )) (3072 SHA( 1 ))<strong><br />
<em>SIG(gen) with SHA-1 affirmed for use with protocols only.</em></strong> Sig(Ver): (1024 SHA( 1 )) (2048 SHA( 1 )) (3072 SHA( 1 ))<br />
<strong>ALG[RSASSA-PKCS1_V1_5]</strong> SIG(gen) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 )) <strong><em>SIG(gen) with SHA-1 affirmed for use with protocols only.</em><br />
</strong> SIG(Ver) (1024 SHA( 1 , 256 , 384 , 512 )) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 ))<br />
SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3651">Val#3651</a></p></td>
<td><p>Windows Embedded Compact Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2414">#2414</a></p>
<p>Version 8.00.6246</p></td>
</tr>
<tr class="odd">
<td><p><strong>FIPS186-2:<br />
ALG[RSASSA-PKCS1_V1_5]:</strong> SIG(gen) 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3649">Val# 3649</a> , SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3649">Val# 3649</a> , SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3649">Val# 3649</a><br />
SIG(ver): 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3649">Val# 3649</a> , SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3649">Val# 3649</a> , SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3649">Val# 3649</a> , SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3649">Val# 3649</a></p>
<p><strong>FIPS186-4:<br />
186-4KEY(gen):</strong> FIPS186-4_Fixed_e (10001) ;<br />
<strong>PGM(ProbRandom:</strong> ( 2048 , 3072 ) <strong>PPTT:</strong>( C.2 )<br />
<strong>ALG[RSASSA-PKCS1_V1_5]</strong> SIG(gen) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 )) <strong><em>SIG(gen) with SHA-1 affirmed for use with protocols only.</em><br />
</strong> SIG(Ver) (1024 SHA( 1 , 256 , 384 , 512 )) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 ))<br />
SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3649">Val# 3649</a><br />
DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1430">Val# 1430</a></p></td>
<td><p>Windows Embedded Compact Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2412">#2412</a></p>
<p>Version 7.00.2872</p></td>
</tr>
<tr class="even">
<td><p><strong>FIPS186-2:<br />
ALG[RSASSA-PKCS1_V1_5]:</strong> SIG(gen) 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3648">Val#3648</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3648">Val#3648</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3648">Val#3648</a><br />
SIG(ver): 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3648">Val#3648</a>, SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3648">Val#3648</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3648">Val#3648</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3648">Val#3648</a></p>
<p><strong>FIPS186-4:<br />
186-4KEY(gen):</strong> FIPS186-4_Fixed_e (10001) ;<br />
<strong>PGM(ProbRandom:</strong> ( 2048 , 3072 ) <strong>PPTT:</strong>( C.2 )<br />
<strong>ALG[RSASSA-PKCS1_V1_5]</strong> SIG(gen) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 )) <strong><em>SIG(gen) with SHA-1 affirmed for use with protocols only.</em><br />
</strong> SIG(Ver) (1024 SHA( 1 , 256 , 384 , 512 )) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 ))<br />
SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3648">Val#3648</a><br />
DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1429">Val# 1429</a></p></td>
<td><p>Windows Embedded Compact Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2411">#2411</a></p>
<p>Version 8.00.6246</p></td>
</tr>
<tr class="odd">
<td><p><strong>FIPS186-4:<br />
ALG[RSASSA-PKCS1_V1_5]</strong> SIG(gen) (2048 SHA( 1 , 256 , 384 )) SIG(gen) with SHA-1 affirmed for use with protocols only.<br />
SIG(Ver) (1024 SHA( 1 , 256 , 384 )) (2048 SHA( 1 , 256 , 384 ))<br />
<strong>[RSASSA-PSS]:</strong> Sig(Gen): (2048 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) )) SIG(gen) with SHA-1 affirmed for use with protocols only.<br />
Sig(Ver): (1024 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) )) (2048 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) ))</p>
<p>SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">Val# 3347</a></p></td>
<td><p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4 and Surface Pro 3 w/ Windows 10 Anniversary Update Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2206">#2206</a></p>
<p>Version 10.0.14393</p></td>
</tr>
<tr class="even">
<td><p><strong>FIPS186-4:<br />
186-4KEY(gen):</strong> FIPS186-4_Fixed_e ( 10001 ) ;<br />
<strong>PGM(ProbPrimeCondition):</strong> 2048 , 3072 PPTT:( C.3 )</p>
<p>SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">Val# 3347</a> DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1217">Val# 1217</a></p></td>
<td><p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update RSA Key Generation Implementation <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2195">#2195</a></p>
<p>Version 10.0.14393</p></td>
</tr>
<tr class="odd">
<td><p><strong>FIPS186-4:<br />
ALG[RSASSA-PKCS1_V1_5]</strong> SIG(Ver) (1024 SHA( 1 , 256 , 384 , 512 )) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 ))</p>
<p>SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3346">Val#3346</a></p></td>
<td><p>soft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update RSA32 Algorithm Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2194">#2194</a></p>
<p>Version 10.0.14393</p></td>
</tr>
<tr class="even">
<td><p><strong>FIPS186-4:<br />
ALG[RSASSA-PKCS1_V1_5]</strong> SIG(gen) (2048 SHA( 256 , 384 , 512 )) (3072 SHA( 256 , 384 , 512 ))<br />
<strong>SIG(Ver)</strong> (1024 SHA( 1 , 256 , 384 , 512 )) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 ))</p>
<p>SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">Val# 3347</a> DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1217">Val# 1217</a></p></td>
<td><p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2193">#2193</a></p>
<p>Version 10.0.14393</p></td>
</tr>
<tr class="odd">
<td><p><strong>FIPS186-4:<br />
[RSASSA-PSS]: Sig(Gen):</strong> (2048 SHA( 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) )) (3072 SHA( 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) ))</p>
<p><strong>Sig(Ver):</strong> (1024 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 62 ) )) (2048 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) )) (3072 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) ))</p>
<p>SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">Val# 3347</a> DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1217">Val# 1217</a></p></td>
<td><p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#2192">#2192</a></p>
<p>Version 10.0.14393</p></td>
</tr>
<tr class="even">
<td><p><strong>FIPS186-4:<br />
186-4KEY(gen)</strong>:  FIPS186-4_Fixed_e ( 10001 ) ;<br />
<strong>PGM(ProbPrimeCondition</strong>): 2048 , 3072 PPTT:( C.3 )</p>
<p>SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3047">Val# 3047</a> DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#955">Val# 955</a></p></td>
<td><p>Microsoft Windows 10 November 2015 Update; Microsoft Surface Book, Surface Pro 4, Surface Pro 3, Surface 3, Surface Pro 2, and Surface Pro w/ Windows 10 November 2015 Update; Windows 10 Mobile for Microsoft Lumia 950 and Microsoft Lumia 635; Windows 10 for Microsoft Surface Hub 84” and Surface Hub 55” RSA Key Generation Implementation <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1889">#1889</a></p>
<p>Version 10.0.10586</p></td>
</tr>
<tr class="odd">
<td><p><strong>FIPS186-4:<br />
ALG[RSASSA-PKCS1_V1_5]</strong> SIG(Ver) (1024 SHA( 1 , 256 , 384 , 512 )) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 ))</p>
<p>SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3048">Val#3048</a></p></td>
<td><p>Microsoft Windows 10 November 2015 Update; Microsoft Surface Book, Surface Pro 4, Surface Pro 3, Surface 3, Surface Pro 2, and Surface Pro w/ Windows 10 November 2015 Update; Windows 10 Mobile for Microsoft Lumia 950 and Microsoft Lumia 635; Windows 10 for Microsoft Surface Hub and Surface Hub RSA32 Algorithm Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1871">#1871</a></p>
<p>Version 10.0.10586</p></td>
</tr>
<tr class="even">
<td><p><strong>FIPS186-4:<br />
ALG[RSASSA-PKCS1_V1_5]</strong> SIG(gen) (2048 SHA( 256 , 384 , 512 )) (3072 SHA( 256 , 384 , 512 ))<br />
<strong>SIG(Ver)</strong> (1024 SHA( 1 , 256 , 384 , 512 )) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 ))</p>
<p>SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3047">Val# 3047</a></p></td>
<td><p>Microsoft Windows 10 November 2015 Update; Microsoft Surface Book, Surface Pro 4, Surface Pro 3, Surface 3, Surface Pro 2, and Surface Pro w/ Windows 10 November 2015 Update; Windows 10 Mobile for Microsoft Lumia 950 and Microsoft Lumia 635; Windows 10 for Microsoft Surface Hub and Surface Hub MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1888">#1888</a></p>
<p>Version 10.0.10586</p></td>
</tr>
<tr class="odd">
<td><p><strong>FIPS186-4:<br />
[RSASSA-PSS]: Sig(Gen)</strong>: (2048 SHA( 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) )) (3072 SHA( 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) ))<br />
<strong>Sig(Ver):</strong> (1024 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 62 ) )) (2048 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) )) (3072 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) ))</p>
<p>SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3047">Val# 3047</a></p></td>
<td><p>Microsoft Windows 10 November 2015 Update; Microsoft Surface Book, Surface Pro 4, Surface Pro 3, Surface 3, Surface Pro 2, and Surface Pro w/ Windows 10 November 2015 Update; Windows 10 Mobile for Microsoft Lumia 950 and Microsoft Lumia 635; Windows 10 for Microsoft Surface Hub and Surface Hub Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1887">#1887</a></p>
<p>Version 10.0.10586</p></td>
</tr>
<tr class="even">
<td><p><strong>FIPS186-4:<br />
186-4KEY(gen):</strong> FIPS186-4_Fixed_e ( 10001 ) ;<br />
PGM(ProbPrimeCondition): 2048 , 3072 PPTT:( C.3 )</p>
<p>SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2886">Val# 2886</a> DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#868">Val# 868</a></p></td>
<td><p>Microsoft Windows 10, Microsoft Surface Pro 3 with Windows 10, Microsoft Surface 3 with Windows 10, Microsoft Surface Pro 2 with Windows 10, Microsoft Surface Pro with Windows 10 RSA Key Generation Implementation <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1798">#1798</a></p>
<p>Version 10.0.10240</p></td>
</tr>
<tr class="odd">
<td><p><strong>FIPS186-4:<br />
ALG[RSASSA-PKCS1_V1_5]</strong> SIG(Ver) (1024 SHA( 1 , 256 , 384 , 512 )) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 ))</p>
<p>SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2871">Val#2871</a></p></td>
<td><p>Microsoft Windows 10, Microsoft Surface Pro 3 with Windows 10, Microsoft Surface 3 with Windows 10, Microsoft Surface Pro 2 with Windows 10, Microsoft Surface Pro with Windows 10 RSA32 Algorithm Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1784">#1784</a></p>
<p>Version 10.0.10240</p></td>
</tr>
<tr class="even">
<td><p><strong>FIPS186-4:<br />
ALG[RSASSA-PKCS1_V1_5]</strong> SIG(Ver) (1024 SHA( 1 , 256 , 384 , 512 )) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 ))</p>
<p>SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2871">Val#2871</a></p></td>
<td><p>Microsoft Windows 10, Microsoft Surface Pro 3 with Windows 10, Microsoft Surface 3 with Windows 10, Microsoft Surface Pro 2 with Windows 10, Microsoft Surface Pro with Windows 10 MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1783">#1783</a></p>
<p>Version 10.0.10240</p></td>
</tr>
<tr class="odd">
<td><p><strong>FIPS186-4:<br />
[RSASSA-PSS]:</strong> Sig(Gen): (2048 SHA( 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) )) (3072 SHA( 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) ))<br />
Sig(Ver): (2048 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) )) (3072 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) ))</p>
<p>SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2886">Val# 2886</a></p></td>
<td><p>Microsoft Windows 10, Microsoft Surface Pro 3 with Windows 10, Microsoft Surface 3 with Windows 10, Microsoft Surface Pro 2 with Windows 10, Microsoft Surface Pro with Windows 10 Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1802">#1802</a></p>
<p>Version 10.0.10240</p></td>
</tr>
<tr class="even">
<td><p><strong>FIPS186-4:<br />
186-4KEY(gen):</strong> FIPS186-4_Fixed_e ;<br />
<strong>PGM(ProbPrimeCondition):</strong> 2048 , 3072 PPTT:( C.3 )</p>
<p>SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373">Val#2373</a> DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#489">Val# 489</a></p></td>
<td><p>Microsoft Windows 8.1, Microsoft Windows Server 2012 R2, Microsoft Windows Storage Server 2012 R2, Microsoft Windows RT 8.1, Microsoft Surface with Windows RT 8.1, Microsoft Surface Pro with Windows 8.1, Microsoft Surface 2, Microsoft Surface Pro 2, Microsoft Surface Pro 3, Microsoft Windows Phone 8.1, Microsoft Windows Embedded 8.1 Industry and Microsoft StorSimple 8100 RSA Key Generation Implementation <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1487">#1487</a></p>
<p>Version 6.3.9600</p></td>
</tr>
<tr class="odd">
<td><p><strong>FIPS186-4:<br />
ALG[RSASSA-PKCS1_V1_5]</strong> SIG(Ver) (1024 SHA( 1 , 256 , 384 , 512 )) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 ))</p>
<p>SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373">Val#2373</a></p></td>
<td><p>Microsoft Windows 8.1, Microsoft Windows Server 2012 R2, Microsoft Windows Storage Server 2012 R2, Microsoft Windows RT 8.1, Microsoft Surface with Windows RT 8.1, Microsoft Surface Pro with Windows 8.1, Microsoft Surface 2, Microsoft Surface Pro 2, Microsoft Surface Pro 3, Microsoft Windows Phone 8.1, Microsoft Windows Embedded 8.1 Industry RSA32 Algorithm Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1494">#1494</a></p>
<p>Version 6.3.9600</p></td>
</tr>
<tr class="even">
<td><p><strong>FIPS186-4:<br />
ALG[RSASSA-PKCS1_V1_5</strong>] SIG(gen) (2048 SHA( 256 , 384 , 512 )) (3072 SHA( 256 , 384 , 512 ))<br />
SIG(Ver) (1024 SHA( 1 , 256 , 384 , 512 )) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 ))</p>
<p>SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373">Val#2373</a></p></td>
<td><p>Microsoft Windows 8.1, Microsoft Windows Server 2012 R2, Microsoft Windows Storage Server 2012 R2, Microsoft Windows RT 8.1, Microsoft Surface with Windows RT 8.1, Microsoft Surface Pro with Windows 8.1, Microsoft Surface 2, Microsoft Surface Pro 2, Microsoft Surface Pro 3, Microsoft Windows Phone 8.1, Microsoft Windows Embedded 8.1 Industry and Microsoft StorSimple 8100 MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1493">#1493</a></p>
<p>Version 6.3.9600</p></td>
</tr>
<tr class="odd">
<td><p><strong>FIPS186-4:<br />
[RSASSA-PSS]:</strong> Sig(Gen): (2048 SHA( 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) )) (3072 SHA( 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) ))<br />
 Sig(Ver): (1024 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 62 ) )) (2048 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) )) (3072 SHA( 1 SaltLen( 20 ) , 256 SaltLen( 32 ) , 384 SaltLen( 48 ) , 512 SaltLen( 64 ) ))</p>
<p>SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373">Val#2373</a></p></td>
<td><p>Windows Storage Server 2012 R2, Microsoft Windows RT 8.1, Microsoft Surface with Windows RT 8.1, Microsoft Surface Pro with Windows 8.1, Microsoft Surface 2, Microsoft Surface Pro 2, Microsoft Surface Pro 3, Microsoft Windows Phone 8.1, Microsoft Windows Embedded 8.1 Industry and Microsoft StorSimple 8100 Cryptography Next Generation Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1519">#1519</a></p>
<p>Version 6.3.9600</p></td>
</tr>
<tr class="even">
<td><p><strong>FIPS186-4:<br />
ALG[RSASSA-PKCS1_V1_5]</strong> SIG(gen) (2048 SHA( 256 , 384 , 512-256 )) (3072 SHA( 256 , 384 , 512-256 ))<br />
SIG(Ver) (1024 SHA( 1 , 256 , 384 , 512-256 )) (2048 SHA( 1 , 256 , 384 , 512-256 )) (3072 SHA( 1 , 256 , 384 , 512-256 ))<br />
<strong>[RSASSA-PSS]:</strong> Sig(Gen): (2048 SHA( 256 , 384 , 512 )) (3072 SHA( 256 , 384 , 512 ))<br />
Sig(Ver): (1024 SHA( 1 , 256 , 384 , 512 )) (2048 SHA( 1 , 256 , 384 , 512 )) (3072 SHA( 1 , 256 , 384 , 512 , 512 ))<br />
SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a></p>
<p>Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#1134">Historical RSA List Val#1134</a>.</p></td>
<td>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1134">#1134</a></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-4:<br />
186-4KEY(gen):</strong> FIPS186-4_Fixed_e , FIPS186-4_Fixed_e_Value<br />
<strong>PGM(ProbPrimeCondition):</strong> 2048 , 3072 <strong>PPTT:</strong>( C.3 )<br />
SHA <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a> DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#258">#258</a></td>
<td>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 RSA Key Generation Implementation <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1133">#1133</a></td>
</tr>
<tr class="even">
<td><strong>FIPS186-2:<br />
ALG[ANSIX9.31]:</strong> Key(gen)(MOD: 2048 , 3072 , 4096 PubKey Values: 65537 DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#258">#258</a><br />
<strong>ALG[RSASSA-PKCS1_V1_5]:</strong> SIG(gen) 2048 , 3072 , 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1902">#1902</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1902">#1902</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1902">#1902</a>,<br />
SIG(ver): 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1902">#1902</a>, SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1902">#1902</a>, SHA-<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1902">#1902</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1902">#1902</a>,<br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#1132">Historical RSA List Val#1132</a>.</td>
<td>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1132">#1132</a></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-2:<br />
ALG[ANSIX9.31]:</strong><br />
SIG(ver); 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1774">Val#1774</a><br />
<strong>ALG[RSASSA-PKCS1_V1_5]:</strong> SIG(gen) 2048 , 3072 , 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1774">Val#1774</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1774">Val#1774</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1774">Val#1774</a>,<br />
SIG(ver): 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1774">Val#1774</a>, SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1774">Val#1774</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1774">Val#1774</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1774">Val#1774</a>,<br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#1052">Historical RSA List Val#1052</a>.</td>
<td>Windows Embedded Compact 7 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1052">#1052</a></td>
</tr>
<tr class="even">
<td><strong>FIPS186-2:<br />
ALG[ANSIX9.31]:</strong> Key(gen)(MOD: 2048 , 3072 , 4096 PubKey Values: 65537 DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#193">Val# 193</a><br />
<strong>ALG[RSASSA-PKCS1_V1_5]:</strong> SIG(gen) 2048 , 3072 , 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1773">Val#1773</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1773">Val#1773</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1773">Val#1773</a>,<br />
SIG(ver): 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1773">Val#1773</a>, SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1773">Val#1773</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1773">Val#1773</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1773">Val#1773</a>,<br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#1051">Historical RSA List Val#1051</a>.</td>
<td>Windows Embedded Compact Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#1051">#1051</a></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-2:<br />
ALG[RSASSA-PKCS1_V1_5]:</strong> SIG(gen) 2048 , 3072 , 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>,<br />
SIG(ver): 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>, SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>,<br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#568">Historical RSA List Val#568</a>.</td>
<td>Windows Server 2008 R2 and SP1 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#568">#568</a></td>
</tr>
<tr class="even">
<td><strong>FIPS186-2:<br />
ALG[RSASSA-PKCS1_V1_5]:</strong> SIG(gen) 2048 , 3072 , 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>,<br />
SIG(ver): 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>, SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>,<br />
<strong>ALG[RSASSA-PSS]:</strong> SIG(gen); 2048 , 3072 , 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a><br />
SIG(ver); 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>, SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a><br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#567">Historical RSA List Val#567</a>. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#560">Historical RSA List Val#560</a>.</td>
<td><p>Windows Server 2008 R2 and SP1 CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#567">#567</a></p>
<p>Windows 7 and SP1 CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#560">#560</a></p></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-2:<br />
ALG[ANSIX9.31]:</strong> Key(gen)(MOD: 2048 , 3072 , 4096 PubKey Values: 65537 DRBG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#23">Val# 23</a><br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#559">Historical RSA List Val#559</a>.</td>
<td>Windows 7 and SP1 and Server 2008 R2 and SP1 RSA Key Generation Implementation <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#559">#559</a></td>
</tr>
<tr class="even">
<td><strong>FIPS186-2:<br />
ALG[RSASSA-PKCS1_V1_5]:</strong> SIG(gen) 2048 , 3072 , 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>,<br />
SIG(ver): 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>, SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">Val#1081</a>,<br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#557">Historical RSA List Val#557</a>.</td>
<td>Windows 7 and SP1 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#557">#557</a></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-2:<br />
ALG[ANSIX9.31]:<br />
ALG[RSASSA-PKCS1_V1_5]:</strong> SIG(gen) 2048 , 3072 , 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#816">Val#816</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#816">Val#816</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#816">Val#816</a>,<br />
SIG(ver): 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#816">Val#816</a>, SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#816">Val#816</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#816">Val#816</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#816">Val#816</a>,<br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#395">Historical RSA List Val#395</a>.</td>
<td>Windows Server 2003 SP2 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#395">#395</a></td>
</tr>
<tr class="even">
<td><strong>FIPS186-2:<br />
ALG[ANSIX9.31]:</strong><br />
SIG(ver); 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#783">Val#783</a><br />
<strong>ALG[RSASSA-PKCS1_V1_5]:</strong> SIG(gen) 2048 , 3072 , 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#783">Val#783</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#783">Val#783</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#783">Val#783</a>,<br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#371">Historical RSA List Val#371</a>.</td>
<td>Windows XP Professional SP3 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#371">#371</a></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-2:<br />
ALG[RSASSA-PKCS1_V1_5]:</strong> SIG(gen) 2048 , 3072 , 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a>,<br />
SIG(ver): 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a>, SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a>,<br />
<strong>ALG[RSASSA-PSS]:</strong> SIG(gen); 2048 , 3072 , 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a><br />
SIG(ver); 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a>, SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a><br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#358">Historical RSA List Val#358</a>. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#357">Historical RSA List Val#357</a>.</td>
<td><p>Windows Server 2008 CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#358">#358</a></p>
<p>Windows Vista SP1 CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#357">#357</a></p></td>
</tr>
<tr class="even">
<td><strong>FIPS186-2:<br />
ALG[ANSIX9.31]:</strong><br />
SIG(ver); 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a><br />
<strong>ALG[RSASSA-PKCS1_V1_5]:</strong> SIG(gen) 2048 , 3072 , 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a>,<br />
SIG(ver): 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a>, SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">Val#753</a>,<br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#355">Historical RSA List Val#355</a>. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#354">Historical RSA List Val#354</a>.</td>
<td><p>Windows Server 2008 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#355">#355</a></p>
<p>Windows Vista SP1 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#354">#354</a></p></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-2:<br />
ALG[ANSIX9.31]:</strong> Key(gen)(MOD: 2048 , 3072 , 4096 PubKey Values: 65537<br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#353">Historical RSA List Val#353</a>.</td>
<td>Windows Vista SP1 and Windows Server 2008 RSA Key Generation Implementation <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#353">#353</a></td>
</tr>
<tr class="even">
<td><strong>FIPS186-2:<br />
ALG[ANSIX9.31]:</strong> Key(gen)(MOD: 2048 , 3072 , 4096 PubKey Values: 65537 RNG: <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rng#321">Val# 321</a><br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#258">Historical RSA List Val#258</a>.</td>
<td>Windows Vista RSA key generation implementation <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#258">#258</a></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-2:<br />
ALG[RSASSA-PKCS1_V1_5]:</strong> SIG(gen) 2048 , 3072 , 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a>,<br />
SIG(ver): 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a>, SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a>,<br />
<strong>ALG[RSASSA-PSS]:</strong> SIG(gen); 2048 , 3072 , 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a><br />
SIG(ver); 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a>, SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a><br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#257">Historical RSA List Val#257</a>.</td>
<td>Windows Vista CNG algorithms <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#257">#257</a></td>
</tr>
<tr class="even">
<td><strong>FIPS186-2:<br />
ALG[RSASSA-PKCS1_V1_5]:</strong> SIG(gen) 2048 , 3072 , 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a>,<br />
SIG(ver): 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a>, SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">Val#618</a>,<br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#255">Historical RSA List Val#255</a>.</td>
<td>Windows Vista Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#255">#255</a></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-2:<br />
ALG[ANSIX9.31]:</strong><br />
SIG(ver); 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#613">Val#613</a><br />
<strong>ALG[RSASSA-PKCS1_V1_5]:</strong> SIG(gen) 2048 , 3072 , 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#613">Val#613</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#613">Val#613</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#613">Val#613</a>,<br />
SIG(ver): 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#613">Val#613</a>, SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#613">Val#613</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#613">Val#613</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#613">Val#613</a>,<br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#245">Historical RSA List Val#245</a>.</td>
<td>Windows Server 2003 SP2 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#245">#245</a></td>
</tr>
<tr class="even">
<td><strong>FIPS186-2:<br />
ALG[ANSIX9.31]:</strong><br />
SIG(ver); 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#589">Val#589</a><br />
<strong>ALG[RSASSA-PKCS1_V1_5]:</strong> SIG(gen) 2048 , 3072 , 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#589">Val#589</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#589">Val#589</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#589">Val#589</a>,<br />
SIG(ver): 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#589">Val#589</a>, SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#589">Val#589</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#589">Val#589</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#589">Val#589</a>,<br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#230">Historical RSA List Val#230</a>.</td>
<td>Windows CE 6.0 and Windows CE 6.0 R2 and Windows Mobile Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#230">#230</a></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-2:<br />
ALG[ANSIX9.31]:</strong><br />
SIG(ver); 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#578">Val#578</a><br />
<strong>ALG[RSASSA-PKCS1_V1_5]:</strong> SIG(gen) 2048 , 3072 , 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#578">Val#578</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#578">Val#578</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#578">Val#578</a>,<br />
SIG(ver): 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#578">Val#578</a>, SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#578">Val#578</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#578">Val#578</a>, SHA-512<a href="http://csrc.nist.gov/groups/stm/cavp/documents/shs/shaval.htm#578">Val#578</a>,<br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#222">Historical RSA List Val#222</a>.</td>
<td>Windows CE and Windows Mobile 6 and Windows Mobile 6.1 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#222">#222</a></td>
</tr>
<tr class="even">
<td><strong>FIPS186-2:<br />
ALG[RSASSA-PKCS1_V1_5]:</strong><br />
SIG(ver): 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#364">Val#364</a><br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#81">Historical RSA List Val#81</a>.</td>
<td>Windows Server 2003 SP1 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#81">#81</a></td>
</tr>
<tr class="odd">
<td><strong>FIPS186-2:<br />
ALG[ANSIX9.31]:</strong><br />
SIG(ver); 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="http://csrc.nist.gov/groups/stm/cavp/documents/shs/shaval.htm#305">Val#305</a><br />
<strong>ALG[RSASSA-PKCS1_V1_5]:</strong> SIG(gen) 2048 , 3072 , 4096 , SHS: SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#305">Val#305</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#305">Val#305</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#305">Val#305</a>,<br />
SIG(ver): 1024 , 1536 , 2048 , 3072 , 4096 , SHS: SHA-1<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#305">Val#305</a>, SHA-256<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#305">Val#305</a>, SHA-384<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#305">Val#305</a>, SHA-512<a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#305">Val#305</a>,<br />
Some of the previously validated components for this validation have been removed because they are now non-compliant per the SP800-131A transition. See <a href="http://csrc.nist.gov/groups/stm/cavp/documents/dss/rsahistoricalval.html#52">Historical RSA List Val#52</a>.</td>
<td>Windows CE 5.00 and Windows CE 5.01 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/rsa#52">#52</a></td>
</tr>
<tr class="even">
<td><p><strong>FIPS186-2:</strong></p>
<p>– PKCS#1 v1.5, signature generation and verification</p>
<p>– Mod sizes: 1024, 1536, 2048, 3072, 4096</p>
<p>– SHS: SHA–1/256/384/512</p></td>
<td><p>Windows XP, vendor-affirmed</p>
<p>Windows 2000, vendor-affirmed</p></td>
</tr>
</tbody>
</table>


#### Secure Hash Standard (SHS)

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Modes / States / Key Sizes</strong></td>
<td><strong>Algorithm Implementation and Certificate #</strong></td>
</tr>
<tr class="even">
<td><ul>
<li>SHA-1:</li>
<li><ul>
<li>Supports Empty Message</li>
</ul></li>
<li>SHA-256:</li>
<li><ul>
<li>Supports Empty Message</li>
</ul></li>
<li>SHA-384:</li>
<li><ul>
<li>Supports Empty Message</li>
</ul></li>
<li>SHA-512:</li>
<li><ul>
<li>Supports Empty Message</li>
</ul></li>
</ul></td>
<td><p>Microsoft Surface Hub SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4011">#4011</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>SHA-1:</li>
<li><ul>
<li>Supports Empty Message</li>
</ul></li>
<li>SHA-256:</li>
<li><ul>
<li>Supports Empty Message</li>
</ul></li>
<li>SHA-384:</li>
<li><ul>
<li>Supports Empty Message</li>
</ul></li>
<li>SHA-512:</li>
<li><ul>
<li>Supports Empty Message</li>
</ul></li>
</ul></td>
<td><p>Windows 10 Mobile (version 1709) SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4010">#4010</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="even">
<td><ul>
<li>SHA-1:</li>
<li><ul>
<li>Supports Empty Message</li>
</ul></li>
<li>SHA-256:</li>
<li><ul>
<li>Supports Empty Message</li>
</ul></li>
<li>SHA-384:</li>
<li><ul>
<li>Supports Empty Message</li>
</ul></li>
<li>SHA-512:</li>
<li><ul>
<li>Supports Empty Message</li>
</ul></li>
</ul></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4009">#4009</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="odd">
<td><strong>SHA-1</strong>      (BYTE-only)<br />
<strong>SHA-256</strong>  (BYTE-only)<br />
<strong>SHA-384</strong>  (BYTE-only)<br />
<strong>SHA-512</strong>  (BYTE-only)</td>
<td><p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3790">#3790</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="even">
<td><strong>SHA-1</strong>      (BYTE-only)<br />
<strong>SHA-256</strong>  (BYTE-only)<br />
<strong>SHA-384</strong>  (BYTE-only)<br />
<strong>SHA-512</strong>  (BYTE-only)</td>
<td><p>Windows Embedded Compact Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3652">#3652</a></p>
<p>Version 7.00.2872</p></td>
</tr>
<tr class="odd">
<td><strong>SHA-1</strong>      (BYTE-only)<br />
<strong>SHA-256</strong>  (BYTE-only)<br />
<strong>SHA-384</strong>  (BYTE-only)<br />
<strong>SHA-512</strong>  (BYTE-only)</td>
<td><p>Windows Embedded Compact Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3651">#3651</a></p>
<p>Version 8.00.6246</p></td>
</tr>
<tr class="even">
<td><strong>SHA-1</strong>      (BYTE-only)<br />
<strong>SHA-256</strong>  (BYTE-only)<br />
<strong>SHA-384</strong>  (BYTE-only)<br />
<strong>SHA-512</strong>  (BYTE-only)</td>
<td><p>Windows Embedded Compact Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3649">#3649</a></p>
<p>Version 7.00.2872</p></td>
</tr>
<tr class="odd">
<td><strong>SHA-1</strong>      (BYTE-only)<br />
<strong>SHA-256</strong>  (BYTE-only)<br />
<strong>SHA-384</strong>  (BYTE-only)<br />
<strong>SHA-512</strong>  (BYTE-only)</td>
<td><p>Windows Embedded Compact Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3648">#3648</a></p>
<p>Version 8.00.6246</p></td>
</tr>
<tr class="even">
<td><strong>SHA-1</strong> (BYTE-only)<br />
<strong>SHA-256</strong> (BYTE-only)<br />
<strong>SHA-384</strong> (BYTE-only)<br />
<strong>SHA-512</strong> (BYTE-only)</td>
<td>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3347">#3347</a><br />
Version 10.0.14393</td>
</tr>
<tr class="odd">
<td><strong>SHA-1</strong> (BYTE-only)<br />
<strong>SHA-256</strong> (BYTE-only)<br />
<strong>SHA-384</strong> (BYTE-only)<br />
<strong>SHA-512</strong> (BYTE-only)</td>
<td>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update RSA32 Algorithm Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3346">#3346</a><br />
Version 10.0.14393</td>
</tr>
<tr class="even">
<td><strong>SHA-1</strong> (BYTE-only)<br />
<strong>SHA-256</strong> (BYTE-only)<br />
<strong>SHA-384</strong> (BYTE-only)<br />
<strong>SHA-512</strong> (BYTE-only)</td>
<td>Microsoft Windows 10 November 2015 Update; Microsoft Surface Book, Surface Pro 4, Surface Pro 3, Surface 3, Surface Pro 2, and Surface Pro w/ Windows 10 November 2015 Update; Windows 10 Mobile for Microsoft Lumia 950 and Microsoft Lumia 635; Windows 10 for Microsoft Surface Hub and Surface Hub RSA32 Algorithm Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3048">#3048</a><br />
Version 10.0.10586</td>
</tr>
<tr class="odd">
<td><strong>SHA-1</strong> (BYTE-only)<br />
<strong>SHA-256</strong> (BYTE-only)<br />
<strong>SHA-384</strong> (BYTE-only)<br />
<strong>SHA-512</strong> (BYTE-only)</td>
<td>Microsoft Windows 10 November 2015 Update; Microsoft Surface Book, Surface Pro 4, Surface Pro 3, Surface 3, Surface Pro 2, and Surface Pro w/ Windows 10 November 2015 Update; Windows 10 Mobile for Microsoft Lumia 950 and Microsoft Lumia 635; Windows 10 for Microsoft Surface Hub and Surface Hub SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#3047">#3047</a><br />
Version 10.0.10586</td>
</tr>
<tr class="even">
<td><strong>SHA-1</strong> (BYTE-only)<br />
<strong>SHA-256</strong> (BYTE-only)<br />
<strong>SHA-384</strong> (BYTE-only)<br />
<strong>SHA-512</strong> (BYTE-only)</td>
<td>Microsoft Windows 10, Microsoft Surface Pro 3 with Windows 10, Microsoft Surface 3 with Windows 10, Microsoft Surface Pro 2 with Windows 10, Microsoft Surface Pro with Windows 10 SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2886">#2886</a><br />
Version 10.0.10240</td>
</tr>
<tr class="odd">
<td><strong>SHA-1</strong> (BYTE-only)<br />
<strong>SHA-256</strong> (BYTE-only)<br />
<strong>SHA-384</strong> (BYTE-only)<br />
<strong>SHA-512</strong> (BYTE-only)</td>
<td>Microsoft Windows 10, Microsoft Surface Pro 3 with Windows 10, Microsoft Surface 3 with Windows 10, Microsoft Surface Pro 2 with Windows 10, Microsoft Surface Pro with Windows 10 RSA32 Algorithm Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2871">#2871</a><br />
Version 10.0.10240</td>
</tr>
<tr class="even">
<td><strong>SHA-1</strong> (BYTE-only)<br />
<strong>SHA-256</strong> (BYTE-only)<br />
<strong>SHA-384</strong> (BYTE-only)<br />
<strong>SHA-512</strong> (BYTE-only)</td>
<td>Microsoft Windows 8.1, Microsoft Windows Server 2012 R2, Microsoft Windows Storage Server 2012 R2, Microsoft Windows RT 8.1, Microsoft Surface with Windows RT 8.1, Microsoft Surface Pro with Windows 8.1, Microsoft Surface 2, Microsoft Surface Pro 2, Microsoft Surface Pro 3, Microsoft Windows Phone 8.1, Microsoft Windows Embedded 8.1 Industry RSA32 Algorithm Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2396">#2396</a><br />
Version 6.3.9600</td>
</tr>
<tr class="odd">
<td><strong>SHA-1</strong> (BYTE-only)<br />
<strong>SHA-256</strong> (BYTE-only)<br />
<strong>SHA-384</strong> (BYTE-only)<br />
<strong>SHA-512</strong> (BYTE-only)</td>
<td>Windows Storage Server 2012 R2, Microsoft Windows RT 8.1, Microsoft Surface with Windows RT 8.1, Microsoft Surface Pro with Windows 8.1, Microsoft Surface 2, Microsoft Surface Pro 2, Microsoft Surface Pro 3, Microsoft Windows Phone 8.1, Microsoft Windows Embedded 8.1 Industry and Microsoft StorSimple 8100 SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#2373">#2373</a><br />
Version 6.3.9600</td>
</tr>
<tr class="even">
<td><p><strong>SHA-1</strong> (BYTE-only)</p>
<p><strong>SHA-256</strong> (BYTE-only)</p>
<p><strong>SHA-384</strong> (BYTE-only)</p>
<p><strong>SHA-512</strong> (BYTE-only)</p>
<p><em>Implementation does not support zero-length (null) messages.</em></p></td>
<td><p>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 Next Generation Symmetric Cryptographic Algorithms Implementations (SYMCRYPT) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1903">#1903</a></p>
<p>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 Symmetric Algorithm Implementations (RSA32) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1902">#1902</a></p></td>
</tr>
<tr class="odd">
<td><strong>SHA-1</strong> (BYTE-only)<br />
<strong>SHA-256</strong> (BYTE-only)<br />
<strong>SHA-384</strong> (BYTE-only)<br />
<strong>SHA-512</strong> (BYTE-only)</td>
<td><p>Windows Embedded Compact 7 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1774">#1774</a></p>
<p>Windows Embedded Compact 7 Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1773">#1773</a></p></td>
</tr>
<tr class="even">
<td><strong>SHA-1</strong> (BYTE-only)<br />
<strong>SHA-256</strong> (BYTE-only)<br />
<strong>SHA-384</strong> (BYTE-only)<br />
<strong>SHA-512</strong> (BYTE-only)</td>
<td><p>Windows 7and SP1 and Windows Server 2008 R2 and SP1 Symmetric Algorithm Implementation <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#1081">#1081</a></p>
<p>Windows Server 2003 SP2 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#816.">#816</a></p></td>
</tr>
<tr class="odd">
<td><strong>SHA-1</strong> (BYTE-only)</td>
<td><p>Windows XP Professional SP3 Kernel Mode Cryptographic Module (fips.sys) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#785">#785</a></p>
<p>Windows XP Professional SP3 Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#784">#784</a></p></td>
</tr>
<tr class="even">
<td><strong>SHA-1</strong> (BYTE-only)<br />
<strong>SHA-256</strong> (BYTE-only)<br />
<strong>SHA-384</strong> (BYTE-only)<br />
<strong>SHA-512</strong> (BYTE-only)</td>
<td>Windows XP Professional SP3 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#783">#783</a></td>
</tr>
<tr class="odd">
<td><strong>SHA-1</strong> (BYTE-only)<br />
<strong>SHA-256</strong> (BYTE-only)<br />
<strong>SHA-384</strong> (BYTE-only)<br />
<strong>SHA-512</strong> (BYTE-only)</td>
<td><p>Windows Vista SP1 and Windows Server 2008 Symmetric Algorithm Implementation <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#753">#753</a></p>
<p>Windows Vista Symmetric Algorithm Implementation <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#618">#618</a></p></td>
</tr>
<tr class="even">
<td><strong>SHA-1</strong> (BYTE-only)<br />
<strong>SHA-256</strong> (BYTE-only)</td>
<td><p>Windows Vista BitLocker Drive Encryption <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#737">#737</a></p>
<p>Windows Vista Beta 2 BitLocker Drive Encryption <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#495">#495</a></p></td>
</tr>
<tr class="odd">
<td><strong>SHA-1</strong> (BYTE-only)<br />
<strong>SHA-256</strong> (BYTE-only)<br />
<strong>SHA-384</strong> (BYTE-only)<br />
<strong>SHA-512</strong> (BYTE-only)</td>
<td><p>Windows Server 2003 SP2 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#613">#613</a></p>
<p>Windows Server 2003 SP1 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#364">#364</a></p></td>
</tr>
<tr class="even">
<td><strong>SHA-1</strong> (BYTE-only)</td>
<td><p>Windows Server 2003 SP2 Enhanced DSS and Diffie-Hellman Cryptographic Provider <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#611">#611</a></p>
<p>Windows Server 2003 SP2 Kernel Mode Cryptographic Module (fips.sys) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#610">#610</a></p>
<p>Windows Server 2003 SP1 Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#385">#385</a></p>
<p>Windows Server 2003 SP1 Kernel Mode Cryptographic Module (fips.sys) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#371">#371</a></p>
<p>Windows Server 2003 Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#181">#181</a></p>
<p>Windows Server 2003 Kernel Mode Cryptographic Module (fips.sys) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#177">#177</a></p>
<p>Windows Server 2003 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#176">#176</a></p></td>
</tr>
<tr class="odd">
<td><strong>SHA-1</strong> (BYTE-only)<br />
<strong>SHA-256</strong> (BYTE-only)<br />
<strong>SHA-384</strong> (BYTE-only)<br />
<strong>SHA-512</strong> (BYTE-only)</td>
<td><p>Windows CE 6.0 and Windows CE 6.0 R2 and Windows Mobile Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#589">#589</a></p>
<p>Windows CE and Windows Mobile 6 and Windows Mobile 6.5 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#578">#578</a></p>
<p>Windows CE 5.00 and Windows CE 5.01 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#305">#305</a></p></td>
</tr>
<tr class="even">
<td><strong>SHA-1</strong> (BYTE-only)</td>
<td><p>Windows XP Microsoft Enhanced Cryptographic Provider <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#83">#83</a></p>
<p>Crypto Driver for Windows 2000 (fips.sys) <a href="http://csrc.nist.gov/groups/stm/cavp/documents/shs/shaval.htmlhttp:/csrc.nist.gov/groups/stm/cavp/documents/shs/shaval.html#35">#35</a></p>
<p>Windows 2000 Microsoft Outlook Cryptographic Provider (EXCHCSP.DLL) SR-1A (3821) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#32">#32</a></p>
<p>Windows 2000 RSAENH.DLL <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#24">#24</a></p>
<p>Windows 2000 RSABASE.DLL <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#23">#23</a></p>
<p>Windows NT 4 SP6 RSAENH.DLL <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#21">#21</a></p>
<p>Windows NT 4 SP6 RSABASE.DLL <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#20">#20</a></p></td>
</tr>
</tbody>
</table>


#### Triple DES

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Modes / States / Key Sizes</strong></td>
<td><strong>Algorithm Implementation and Certificate #</strong></td>
</tr>
<tr class="even">
<td><ul>
<li>TDES-CBC:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Keying Option: 1</li>
</ul></li>
<li>TDES-CFB64:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Keying Option: 1</li>
</ul></li>
<li>TDES-CFB8:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Keying Option: 1</li>
</ul></li>
<li>TDES-ECB:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Keying Option: 1</li>
</ul></li>
</ul></td>
<td><p>Microsoft Surface Hub SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2558">#2558</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>TDES-CBC:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Keying Option: 1</li>
</ul></li>
<li>TDES-CFB64:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Keying Option: 1</li>
</ul></li>
<li>TDES-CFB8:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Keying Option: 1</li>
</ul></li>
<li>TDES-ECB:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Keying Option: 1</li>
</ul></li>
</ul></td>
<td><p>Windows 10 Mobile (version 1709) SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2557">#2557</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="even">
<td><ul>
<li>TDES-CBC:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Keying Option: 1</li>
</ul></li>
<li>TDES-CFB64:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Keying Option: 1</li>
</ul></li>
<li>TDES-CFB8:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Keying Option: 1</li>
</ul></li>
<li>TDES-ECB:</li>
<li><ul>
<li>Modes: Decrypt, Encrypt</li>
<li>Keying Option: 1</li>
</ul></li>
</ul></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2556">#2556</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="odd">
<td><strong>TECB</strong>( KO 1 e/d, ) ; <strong>TCBC</strong>( KO 1 e/d, ) ; <strong>TCFB8</strong>( KO 1 e/d, ) ; <strong>TCFB64</strong>( KO 1 e/d, )</td>
<td><p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2459">#2459</a></p>
<p>Version 10.0.15063</p></td>
</tr>
<tr class="even">
<td><p><strong>TECB</strong>( KO 1 e/d, ) ;</p>
<p><strong>TCBC</strong>( KO 1 e/d, )</p></td>
<td><p>Windows Embedded Compact Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2384">#2384</a></p>
<p>Version 8.00.6246</p></td>
</tr>
<tr class="odd">
<td><p><strong>TECB</strong>( KO 1 e/d, ) ;</p>
<p><strong>TCBC</strong>( KO 1 e/d, )</p></td>
<td><p>Windows Embedded Compact Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2383">#2383</a></p>
<p>Version 8.00.6246</p></td>
</tr>
<tr class="even">
<td><p><strong>TECB</strong>( KO 1 e/d, ) ;</p>
<p><strong>TCBC</strong>( KO 1 e/d, ) ;</p>
<p><strong>CTR</strong> ( int only )</p></td>
<td><p>Windows Embedded Compact Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2382">#2382</a></p>
<p>Version 7.00.2872</p></td>
</tr>
<tr class="odd">
<td><p><strong>TECB</strong>( KO 1 e/d, ) ;</p>
<p><strong>TCBC</strong>( KO 1 e/d, )</p></td>
<td><p>Windows Embedded Compact Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2381">#2381</a></p>
<p>Version 8.00.6246</p></td>
</tr>
<tr class="even">
<td><p><strong>TECB</strong>( KO 1 e/d, ) ;</p>
<p><strong>TCBC</strong>( KO 1 e/d, ) ;</p>
<p><strong>TCFB8</strong>( KO 1 e/d, ) ;</p>
<p><strong>TCFB64</strong>( KO 1 e/d, )</p></td>
<td><p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2227">#2227</a><br />
<br />
</p>
<p>Version 10.0.14393</p></td>
</tr>
<tr class="odd">
<td><p><strong>TECB</strong>( KO 1 e/d, ) ;</p>
<p><strong>TCBC</strong>( KO 1 e/d, ) ;</p>
<p><strong>TCFB8</strong>( KO 1 e/d, ) ;</p>
<p><strong>TCFB64</strong>( KO 1 e/d, )</p></td>
<td><p>Microsoft Windows 10 November 2015 Update; Microsoft Surface Book, Surface Pro 4, Surface Pro 3, Surface 3, Surface Pro 2, and Surface Pro w/ Windows 10 November 2015 Update; Windows 10 Mobile for Microsoft Lumia 950 and Microsoft Lumia 635; Windows 10 for Microsoft Surface Hub and Surface Hub SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#2024">#2024</a><br />
<br />
</p>
<p>Version 10.0.10586</p></td>
</tr>
<tr class="even">
<td><p><strong>TECB</strong>( KO 1 e/d, ) ;</p>
<p><strong>TCBC</strong>( KO 1 e/d, ) ;</p>
<p><strong>TCFB8</strong>( KO 1 e/d, ) ;</p>
<p><strong>TCFB64</strong>( KO 1 e/d, )</p></td>
<td><p>Microsoft Windows 10, Microsoft Surface Pro 3 with Windows 10, Microsoft Surface 3 with Windows 10, Microsoft Surface Pro 2 with Windows 10, Microsoft Surface Pro with Windows 10 SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1969">#1969</a><br />
<br />
</p>
<p>Version 10.0.10240</p></td>
</tr>
<tr class="odd">
<td><p><strong>TECB</strong>( KO 1 e/d, ) ;</p>
<p><strong>TCBC</strong>( KO 1 e/d, ) ;</p>
<p><strong>TCFB8</strong>( KO 1 e/d, ) ;</p>
<p><strong>TCFB64</strong>( KO 1 e/d, )</p></td>
<td><p>Windows Storage Server 2012 R2, Microsoft Windows RT 8.1, Microsoft Surface with Windows RT 8.1, Microsoft Surface Pro with Windows 8.1, Microsoft Surface 2, Microsoft Surface Pro 2, Microsoft Surface Pro 3, Microsoft Windows Phone 8.1, Microsoft Windows Embedded 8.1 Industry and Microsoft StorSimple 8100 SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1692">#1692</a></p>
<p>Version 6.3.9600</p></td>
</tr>
<tr class="even">
<td><p><strong>TECB</strong>( e/d; KO 1,2 ) ;</p>
<p><strong>TCBC</strong>( e/d; KO 1,2 ) ;</p>
<p><strong>TCFB8</strong>( e/d; KO 1,2 ) ;</p>
<p><strong>TCFB64</strong>( e/d; KO 1,2 )</p></td>
<td>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 Next Generation Symmetric Cryptographic Algorithms Implementations (SYMCRYPT) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1387">#1387</a></td>
</tr>
<tr class="odd">
<td><p><strong>TECB</strong>( e/d; KO 1,2 ) ;</p>
<p><strong>TCBC</strong>( e/d; KO 1,2 ) ;</p>
<p><strong>TCFB8</strong>( e/d; KO 1,2 )</p></td>
<td>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 Symmetric Algorithm Implementations (RSA32) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1386">#1386</a></td>
</tr>
<tr class="even">
<td><p><strong>TECB</strong>( e/d; KO 1,2 ) ;</p>
<p><strong>TCBC</strong>( e/d; KO 1,2 ) ;</p>
<p><strong>TCFB8</strong>( e/d; KO 1,2 )</p></td>
<td>Windows 7 and SP1 and Windows Server 2008 R2 and SP1 Symmetric Algorithm Implementation <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#846">#846</a></td>
</tr>
<tr class="odd">
<td><p><strong>TECB</strong>( e/d; KO 1,2 ) ;</p>
<p><strong>TCBC</strong>( e/d; KO 1,2 ) ;</p>
<p><strong>TCFB8</strong>( e/d; KO 1,2 )</p></td>
<td>Windows Vista SP1 and Windows Server 2008 Symmetric Algorithm Implementation <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#656">#656</a></td>
</tr>
<tr class="even">
<td><p><strong>TECB</strong>( e/d; KO 1,2 ) ;</p>
<p><strong>TCBC</strong>( e/d; KO 1,2 ) ;</p>
<p><strong>TCFB8</strong>( e/d; KO 1,2 )</p></td>
<td>Windows Vista Symmetric Algorithm Implementation <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#549">#549</a></td>
</tr>
<tr class="odd">
<td><strong>Triple DES MAC</strong></td>
<td><p>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1386">#1386</a>, vendor-affirmed</p>
<p>Windows 7 and SP1 and Windows Server 2008 R2 and SP1 <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#846">#846</a>, vendor-affirmed</p></td>
</tr>
<tr class="even">
<td><p><strong>TECB</strong>( e/d; KO 1,2 ) ;</p>
<p><strong>TCBC</strong>( e/d; KO 1,2 )</p></td>
<td><p>Windows Embedded Compact 7 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1308">#1308</a></p>
<p>Windows Embedded Compact 7 Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#1307">#1307</a></p>
<p>Windows Server 2003 SP2 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#691">#691</a></p>
<p>Windows XP Professional SP3 Kernel Mode Cryptographic Module (fips.sys) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#677">#677</a></p>
<p>Windows XP Professional SP3 Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#676">#676</a></p>
<p>Windows XP Professional SP3 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#675">#675</a></p>
<p>Windows Server 2003 SP2 Enhanced Cryptographic Provider (RSAENH) <a href="http://csrc.nist.gov/groups/stm/cavp/documents/des/tripledesval.html#544">#544</a></p>
<p>Windows Server 2003 SP2 Enhanced DSS and Diffie-Hellman Cryptographic Provider <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#543">#543</a></p>
<p>Windows Server 2003 SP2 Kernel Mode Cryptographic Module (fips.sys) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#542">#542</a></p>
<p>Windows CE 6.0 and Window CE 6.0 R2 and Windows Mobile Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#526">#526</a></p>
<p>Windows CE and Windows Mobile 6 and Windows Mobile 6.1 and Windows Mobile 6.5 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#517">#517</a></p>
<p>Windows Server 2003 SP1 Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#381">#381</a></p>
<p>Windows Server 2003 SP1 Kernel Mode Cryptographic Module (fips.sys) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#370">#370</a></p>
<p>Windows Server 2003 SP1 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#365">#365</a></p>
<p>Windows CE 5.00 and Windows CE 5.01 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#315">#315</a></p>
<p>Windows Server 2003 Kernel Mode Cryptographic Module (fips.sys) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#201">#201</a></p>
<p>Windows Server 2003 Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#199">#199</a></p>
<p>Windows Server 2003 Enhanced Cryptographic Provider (RSAENH) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#192">#192</a></p>
<p>Windows XP Microsoft Enhanced Cryptographic Provider <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#81">#81</a></p>
<p>Windows 2000 Microsoft Outlook Cryptographic Provider (EXCHCSP.DLL) SR-1A (3821) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#18">#18</a></p>
<p>Crypto Driver for Windows 2000 (fips.sys) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/tdes#16">#16</a></p></td>
</tr>
</tbody>
</table>


#### SP 800-132 Password Based Key Derivation Function (PBKDF)

<table border="1" cellpadding="0" summary="table" xmlns="http://www.w3.org/1999/xhtml">
  <tr>
    <td>
      <strong>Modes / States / Key Sizes</strong>
    </td>
    <td colspan="2">
      <strong>Algorithm Implementation and Certificate #</strong>
    </td>
  </tr>
  <tr>
    <td>
      <strong>PBKDF</strong> (vendor affirmed)</td>
    <td colspan="2">
      <p> Kernel Mode Cryptographic Primitives Library (cng.sys) Cryptographic Primitives Library (bcryptprimitives.dll and ncryptsslp.dll) in Microsoft Windows 10, Windows 10 Pro, Windows 10 Enterprise, Windows 10 Enterprise LTSB, Windows 10 Mobile, Windows Server 2016 Standard, Windows Server 2016 Datacenter, Windows Storage Server 2016 <a runat="server" href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2937">#2937</a><br />(Software Version: 10.0.14393)</p>
      <p>Microsoft Windows 10, Windows 10 Pro, Windows 10 Enterprise, Windows 10 Enterprise LTSB, Windows 10 Mobile, Windows Server 2016 Standard, Windows Server 2016 Datacenter, Windows Storage Server 2016 <a runat="server" href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2936">#2936</a><br />(Software Version: 10.0.14393)</p>
      <p>Code Integrity (ci.dll) in Microsoft Windows 10, Windows 10 Pro, Windows 10 Enterprise, Windows 10 Enterprise LTSB, Windows 10 Mobile, Windows Server 2016 Standard, Windows Server 2016 Datacenter, Windows Storage Server 2016 <a runat="server" href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2935">#2935</a><br />(Software Version: 10.0.14393)</p>
      <p>Boot Manager in Microsoft Windows 10, Windows 10 Pro, Windows 10 Enterprise, Windows 10 Enterprise LTSB, Windows 10 Mobile, Windows Server 2016 Standard, Windows Server 2016 Datacenter, Windows Storage Server 2016 <a runat="server" href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2931">#2931</a><br />(Software Version: 10.0.14393)</p>
    </td>
  </tr>
  <tr>
    <td colspan="2">
      <strong>PBKDF</strong> (vendor affirmed)</td>
    <td>
      <p>Kernel Mode Cryptographic Primitives Library (cng.sys) in Microsoft Windows 10, Windows 10 Pro, Windows 10 Enterprise, Windows 10 Enterprise LTSB, Windows 10 Mobile, Windows Server 2016 Standard, Windows Server 2016 Datacenter, Windows Storage Server 2016 <a runat="server" href="https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2936">#2936</a><br />(Software Version: 10.0.14393)</p>
      <p>Windows 8, Windows RT, Windows Server 2012, Surface Windows RT, Surface Windows 8 Pro, and Windows Phone 8 Cryptography Next Generation (CNG), vendor-affirmed</p>
    </td>
  </tr>
</table>


#### Component Validation List

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Publication / Component Validated / Description</strong></td>
<td><strong>Implementation and Certificate #</strong></td>
</tr>
<tr class="even">
<td><ul>
<li>ECDSA SigGen:</li>
<li><ul>
<li>P-256 SHA: SHA-256</li>
<li>P-384 SHA: SHA-384</li>
<li>P-521 SHA: SHA-512</li>
</ul></li>
</ul>
<p>Prerequisite: DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#489">#489</a></p></td>
<td><p>Microsoft Windows 8.1, Microsoft Windows Server 2012 R2, Microsoft Windows Storage Server 2012 R2, Microsoft Windows RT 8.1, Microsoft Surface with Windows RT 8.1, Microsoft Surface Pro with Windows 8.1, Microsoft Surface 2, Microsoft Surface Pro 2, Microsoft Surface Pro 3, Microsoft Windows Phone 8.1, Microsoft Windows Embedded 8.1 Industry and Microsoft StorSimple 8100 MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1540">#1540</a></p>
<p>Version 6.3.9600</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>RSASP1:</li>
<li><ul>
<li>Modulus Size: 2048 (bits)</li>
<li>Padding Algorithms: PKCS 1.5</li>
</ul></li>
</ul></td>
<td><p>Microsoft Surface Hub Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1519">#1519</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="even">
<td><ul>
<li>RSASP1:</li>
<li><ul>
<li>Modulus Size: 2048 (bits)</li>
<li>Padding Algorithms: PKCS 1.5</li>
</ul></li>
</ul></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1518">#1518</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>RSADP:</li>
<li><ul>
<li>Modulus Size: 2048 (bits)</li>
</ul></li>
</ul></td>
<td><p>Microsoft Surface Hub MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1517">#151</a>7</p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="even">
<td><ul>
<li>RSASP1:</li>
<li><ul>
<li>Modulus Size: 2048 (bits)</li>
<li>Padding Algorithms: PKCS 1.5</li>
</ul></li>
</ul></td>
<td><p>Microsoft Surface Hub MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1516">#1516</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>ECDSA SigGen:</li>
<li><ul>
<li>P-256 SHA: SHA-256</li>
<li>P-384 SHA: SHA-384</li>
<li>P-521 SHA: SHA-512</li>
</ul></li>
</ul>
<p> Prerequisite: DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1732">#1732</a></p></td>
<td><p>Microsoft Surface Hub MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1515">#1515</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="even">
<td><ul>
<li>ECDSA SigGen:</li>
<li><ul>
<li>P-256 SHA: SHA-256</li>
<li>P-384 SHA: SHA-384</li>
<li>P-521 SHA: SHA-512</li>
</ul></li>
</ul>
<p>Prerequisite: DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1732">#1732</a></p></td>
<td><p>Microsoft Surface Hub SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1514">#1514</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>RSADP:</li>
<li><ul>
<li>Modulus Size: 2048 (bits)</li>
</ul></li>
</ul></td>
<td><p>Microsoft Surface Hub SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1513">#1513</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="even">
<td><ul>
<li>RSASP1:</li>
<li><ul>
<li>Modulus Size: 2048 (bits)</li>
<li>Padding Algorithms: PKCS 1.5</li>
</ul></li>
</ul></td>
<td><p>Microsoft Surface Hub SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1512">#1512</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>IKEv1:</li>
<li><ul>
<li>Methods: Digital Signature, Pre-shared Key, Public Key Encryption</li>
<li>Pre-shared Key Length: 64-2048</li>
<li>Diffie-Hellman shared secrets:</li>
<li><ul>
<li>Diffie-Hellman shared secret:</li>
<li><ul>
<li>Length: 2048 (bits)</li>
<li>SHA Functions: SHA-256</li>
</ul></li>
<li>Diffie-Hellman shared secret:</li>
<li><ul>
<li>Length: 256 (bits)</li>
<li>SHA Functions: SHA-256</li>
</ul></li>
<li>Diffie-Hellman shared secret:</li>
<li><ul>
<li>Length: 384 (bits)</li>
<li>SHA Functions: SHA-384</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4011">#4011</a>, HMAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3269">#3269</a></p>
<ul>
<li>IKEv2:</li>
<li><ul>
<li>Derived Keying Material length: 192-1792</li>
<li>Diffie-Hellman shared secrets:</li>
<li><ul>
<li>Diffie-Hellman shared secret:</li>
<li><ul>
<li>Length: 2048 (bits)</li>
<li>SHA Functions: SHA-256</li>
</ul></li>
<li>Diffie-Hellman shared secret:</li>
<li><ul>
<li>Length: 256 (bits)</li>
<li>SHA Functions: SHA-256</li>
</ul></li>
<li>Diffie-Hellman shared secret:</li>
<li><ul>
<li>Length: 384 (bits)</li>
<li>SHA Functions: SHA-384</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4011">#4011</a>, HMAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3269">#3269</a></p>
<ul>
<li>TLS:</li>
<li><ul>
<li>Supports TLS 1.0/1.1</li>
<li>Supports TLS 1.2:</li>
<li><ul>
<li>SHA Functions: SHA-256, SHA-384</li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4011">#4011</a>, HMAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3269">#3269</a></p></td>
<td><p>Microsoft Surface Hub SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1511">#1511</a></p>
<p>Version 10.0.15063.674</p></td>
</tr>
<tr class="even">
<td><ul>
<li>ECDSA SigGen:</li>
<li><ul>
<li>P-256 SHA: SHA-256</li>
<li>P-384 SHA: SHA-384</li>
<li>P-521 SHA: SHA-512</li>
</ul></li>
</ul>
<p>Prerequisite: DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1731">#1731</a></p></td>
<td><p>Windows 10 Mobile (version 1709) SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1510">#1510</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>RSADP:</li>
<li><ul>
<li>Modulus Size: 2048 (bits)</li>
</ul></li>
</ul></td>
<td><p>Windows 10 Mobile (version 1709) SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1509">#1509</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="even">
<td><ul>
<li>RSASP1:</li>
<li><ul>
<li>Modulus Size: 2048 (bits)</li>
<li>Padding Algorithms: PKCS 1.5</li>
</ul></li>
</ul></td>
<td><p>Windows 10 Mobile (version 1709) SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1508">#1508</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>IKEv1:</li>
<li><ul>
<li>Methods: Digital Signature, Pre-shared Key, Public Key Encryption</li>
<li>Pre-shared Key Length: 64-2048</li>
<li>Diffie-Hellman shared secrets:</li>
<li><ul>
<li>Diffie-Hellman shared secret:</li>
<li><ul>
<li>Length: 2048 (bits)</li>
<li>SHA Functions: SHA-256</li>
</ul></li>
<li>Diffie-Hellman shared secret:</li>
<li><ul>
<li>Length: 256 (bits)</li>
<li>SHA Functions: SHA-256</li>
</ul></li>
<li>Diffie-Hellman shared secret:</li>
<li><ul>
<li>Length: 384 (bits)</li>
<li>SHA Functions: SHA-384</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4010">#4010</a>, HMAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3268">#3268</a></p>
<ul>
<li>IKEv2:</li>
<li><ul>
<li>Derived Keying Material length: 192-1792</li>
<li>Diffie-Hellman shared secrets:</li>
<li><ul>
<li>Diffie-Hellman shared secret:</li>
<li><ul>
<li>Length: 2048 (bits)</li>
<li>SHA Functions: SHA-256</li>
</ul></li>
<li>Diffie-Hellman shared secret:</li>
<li><ul>
<li>Length: 256 (bits)</li>
<li>SHA Functions: SHA-256</li>
</ul></li>
<li>Diffie-Hellman shared secret:</li>
<li><ul>
<li>Length: 384 (bits)</li>
<li>SHA Functions: SHA-384</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4010">#4010</a>, HMAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3268">#3268</a></p>
<ul>
<li>TLS:</li>
<li><ul>
<li>Supports TLS 1.0/1.1</li>
<li>Supports TLS 1.2:</li>
<li><ul>
<li>SHA Functions: SHA-256, SHA-384</li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4010">#4010</a>, HMAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3268">#3268</a></p></td>
<td><p>Windows 10 Mobile (version 1709) SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1507">#1507</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="even">
<td><ul>
<li>ECDSA SigGen:</li>
<li><ul>
<li>P-256 SHA: SHA-256</li>
<li>P-384 SHA: SHA-384</li>
<li>P-521 SHA: SHA-512</li>
</ul></li>
</ul>
<p>Prerequisite: DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1731">#1731</a></p></td>
<td><p>Windows 10 Mobile (version 1709) MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1506">#1506</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>RSADP:</li>
<li><ul>
<li>Modulus Size: 2048 (bits)</li>
</ul></li>
</ul></td>
<td><p>Windows 10 Mobile (version 1709) MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1505">#1505</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="even">
<td><ul>
<li>RSASP1:</li>
<li><ul>
<li>Modulus Size: 2048 (bits)</li>
<li>Padding Algorithms: PKCS 1.5</li>
</ul></li>
</ul></td>
<td><p>Windows 10 Mobile (version 1709) MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1504">#1504</a></p>
<p>Version 10.0.15254</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>ECDSA SigGen:</li>
<li><ul>
<li>P-256 SHA: SHA-256</li>
<li>P-384 SHA: SHA-384</li>
<li>P-521 SHA: SHA-512</li>
</ul></li>
</ul>
<p>Prerequisite: DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1730">#1730</a></p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1503">#1503</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="even">
<td><ul>
<li>RSADP:</li>
<li><ul>
<li>Modulus Size: 2048 (bits)</li>
</ul></li>
</ul></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1502">#1502</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>RSASP1:</li>
<li><ul>
<li>Modulus Size: 2048 (bits)</li>
<li>Padding Algorithms: PKCS 1.5</li>
</ul></li>
</ul></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1501">#1501</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="even">
<td><ul>
<li>ECDSA SigGen:</li>
<li><ul>
<li>P-256 SHA: SHA-256</li>
<li>P-384 SHA: SHA-384</li>
<li>P-521 SHA: SHA-512</li>
</ul></li>
</ul>
<p>Prerequisite: DRBG <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/drbg#1730">#1730</a></p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1499">#1499</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>RSADP:</li>
<li><ul>
<li>Modulus Size: 2048 (bits)</li>
</ul></li>
</ul></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1498">#1498</a></p>
<p>Version 10.0.16299</p>
<p> </p></td>
</tr>
<tr class="even">
<td><ul>
<li>RSASP1:</li>
<li><ul>
<li>Modulus Size: 2048 (bits)</li>
<li>Padding Algorithms: PKCS 1.5</li>
</ul></li>
</ul></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); SymCrypt Cryptographic Implementations  <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1497">#1497</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>IKEv1:</li>
<li><ul>
<li>Methods: Digital Signature, Pre-shared Key, Public Key Encryption</li>
<li>Pre-shared Key Length: 64-2048</li>
<li>Diffie-Hellman shared secrets:</li>
<li><ul>
<li>Diffie-Hellman shared secret:</li>
<li><ul>
<li>Length: 2048 (bits)</li>
<li>SHA Functions: SHA-256</li>
</ul></li>
<li>Diffie-Hellman shared secret:</li>
<li><ul>
<li>Length: 256 (bits)</li>
<li>SHA Functions: SHA-256</li>
</ul></li>
<li>Diffie-Hellman shared secret:</li>
<li><ul>
<li>Length: 384 (bits)</li>
<li>SHA Functions: SHA-384</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4009">#4009</a>, HMAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3267">#3267</a></p>
<ul>
<li>IKEv2:</li>
<li><ul>
<li>Derived Keying Material length: 192-1792</li>
<li>Diffie-Hellman shared secrets:</li>
<li><ul>
<li>Diffie-Hellman shared secret:</li>
<li><ul>
<li>Length: 2048 (bits)</li>
<li>SHA Functions: SHA-256</li>
</ul></li>
<li>Diffie-Hellman shared secret:</li>
<li><ul>
<li>Length: 256 (bits)</li>
<li>SHA Functions: SHA-256</li>
</ul></li>
<li>Diffie-Hellman shared secret:</li>
<li><ul>
<li>Length: 384 (bits)</li>
<li>SHA Functions: SHA-384</li>
</ul></li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4009">#4009</a>, HMAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3267">#3267</a></p>
<ul>
<li>TLS:</li>
<li><ul>
<li>Supports TLS 1.0/1.1</li>
<li>Supports TLS 1.2:</li>
<li><ul>
<li>SHA Functions: SHA-256, SHA-384</li>
</ul></li>
</ul></li>
</ul>
<p>Prerequisite: SHS <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/shs#4009">#4009</a>, HMAC <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/hmac#3267">#3267</a></p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); SymCrypt Cryptographic Implementations  <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1496">#1496</a></p>
<p>Version 10.0.16299</p></td>
</tr>
<tr class="even">
<td><p>FIPS186-4 ECDSA</p>
<p>Signature Generation of hash sized messages</p>
<p>ECDSA SigGen Component: CURVES( P-256 P-384 P-521 )</p></td>
<td><p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1284">#1284</a><br />
Version 10.0. 15063</p>
<p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1279">#1279</a><br />
Version 10.0. 15063</p>
<p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#922">#922</a><br />
Version 10.0.14393</p>
<p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4 and Surface Pro 3 w/ Windows 10 Anniversary Update Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#894">#894</a><br />
Version 10.0.14393icrosoft Windows 10 November 2015 Update; Microsoft Surface Book, Surface Pro 4, Surface Pro 3, Surface 3, Surface Pro 2, and Surface Pro w/ Windows 10 November 2015 Update; Windows 10 Mobile for Microsoft Lumia 950 and Microsoft Lumia 635; Windows 10 for Microsoft Surface Hub 84” and Surface Hub 55” MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#666">#666</a><br />
Version 10.0.10586</p>
<p>Microsoft Windows 8.1, Microsoft Windows Server 2012 R2, Microsoft Windows Storage Server 2012 R2, Microsoft Windows RT 8.1, Microsoft Surface with Windows RT 8.1, Microsoft Surface Pro with Windows 8.1, Microsoft Surface 2, Microsoft Surface Pro 2, Microsoft Surface Pro 3, Microsoft Windows Phone 8.1, Microsoft Windows Embedded 8.1 Industry and Microsoft StorSimple 8100 MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#288">#288</a><br />
Version 6.3.9600</p></td>
</tr>
<tr class="odd">
<td><p>FIPS186-4 RSA; PKCS#1 v2.1</p>
<p>RSASP1 Signature Primitive</p>
<p>RSASP1: (Mod2048: PKCS1.5 PKCSPSS)</p></td>
<td><p>Windows 10 Creators Update (version 1703) Pro, Enterprise, Education Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1285">#1285</a><br />
Version 10.0.15063</p>
<p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1282">#1282</a><br />
Version 10.0.15063</p>
<p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1280">#1280</a><br />
Version 10.0.15063</p>
<p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4 and Surface Pro 3 w/ Windows 10 Anniversary Update Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#893">#893</a><br />
Version 10.0.14393</p>
<p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#888">#888</a><br />
Version 10.0.14393</p>
<p>Microsoft Windows 10 November 2015 Update; Microsoft Surface Book, Surface Pro 4, Surface Pro 3, Surface 3, Surface Pro 2, and Surface Pro w/ Windows 10 November 2015 Update; Windows 10 Mobile for Microsoft Lumia 950 and Microsoft Lumia 635; Windows 10 for Microsoft Surface Hub 84” and Surface Hub 55” MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#665">#66</a>5<br />
Version 10.0.10586</p>
<p>Microsoft Windows 10, Microsoft Surface Pro 3 with Windows 10, Microsoft Surface 3 with Windows 10, Microsoft Surface Pro 2 with Windows 10, Microsoft Surface Pro with Windows 10 MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#572">#572</a><br />
Version  10.0.10240</p>
<p>Microsoft Windows 8.1, Microsoft Windows Server 2012 R2, Microsoft Windows Storage Server 2012 R2, Microsoft Windows RT 8.1, Microsoft Surface with Windows RT 8.1, Microsoft Surface Pro with Windows 8.1, Microsoft Surface 2, Microsoft Surface Pro 2, Microsoft Surface Pro 3, Microsoft Windows Phone 8.1, Microsoft Windows Embedded 8.1 Industry MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#289">#289</a><br />
Version 6.3.9600</p></td>
</tr>
<tr class="even">
<td><p>FIPS186-4 RSA; RSADP</p>
<p>RSADP Primitive</p>
<p>RSADP: (Mod2048)</p></td>
<td><p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile MsBignum Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1283">#1283</a><br />
Version 10.0.15063</p>
<p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1281">#1281</a><br />
Version 10.0.15063</p>
<p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4 and Surface Pro 3 w/ Windows 10 Anniversary Update Virtual TPM Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#895">#895</a><br />
Version 10.0.14393</p>
<p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#887">#887</a><br />
Version 10.0.14393</p>
<p>Microsoft Windows 10 November 2015 Update; Microsoft Surface Book, Surface Pro 4, Surface Pro 3, Surface 3, Surface Pro 2, and Surface Pro w/ Windows 10 November 2015 Update; Windows 10 Mobile for Microsoft Lumia 950 and Microsoft Lumia 635; Windows 10 for Microsoft Surface Hub 84” and Surface Hub 55” Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#663">#663</a><br />
Version 10.0.10586</p>
<p>Microsoft Windows 10, Microsoft Surface Pro 3 with Windows 10, Microsoft Surface 3 with Windows 10, Microsoft Surface Pro 2 with Windows 10, Microsoft Surface Pro with Windows 10 Cryptography Next Generation (CNG) Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#576">#576</a><br />
Version  10.0.10240</p></td>
</tr>
<tr class="odd">
<td><p>SP800-135</p>
<p>Section 4.1.1, IKEv1 Section 4.1.2, IKEv2 Section 4.2, TLS</p></td>
<td><p>Windows 10 Home, Pro, Enterprise, Education, Windows 10 S Fall Creators Update and Windows Server, Windows Server Datacenter (version 1709); SymCrypt Cryptographic Implementations  <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1496">#1496</a></p>
<p>Version 10.0.16299</p>
<p>Windows 10 Creators Update (version 1703) Home, Pro, Enterprise, Education, Windows 10 S, Windows 10 Mobile SymCrypt Cryptographic Implementations <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1278">#1278</a><br />
Version 10.0.15063</p>
<p>Windows Embedded Compact Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1140">#1140</a><br />
Version 7.00.2872</p>
<p>Windows Embedded Compact Cryptographic Primitives Library (bcrypt.dll) <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#1139">#1139</a><br />
Version 8.00.6246</p>
<p>Microsoft Windows 10 Anniversary Update, Windows Server 2016, Windows Storage Server 2016; Microsoft Surface Book, Surface Pro 4, Surface Pro 3 and Surface 3 w/ Windows 10 Anniversary Update; Microsoft Lumia 950 and Lumia 650 w/ Windows 10 Mobile Anniversary Update BcryptPrimitives and NCryptSSLp <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#886">#886</a><br />
Version 10.0.14393</p>
<p>Microsoft Windows 10 November 2015 Update; Microsoft Surface Book, Surface Pro 4, Surface Pro 3, Surface 3, Surface Pro 2, and Surface Pro w/ Windows 10 November 2015 Update; Windows 10 Mobile for Microsoft Lumia 950 and Microsoft Lumia 635; Windows 10 for Microsoft Surface Hub 84” and Surface Hub 55” BCryptPrimitives and NCryptSSLp <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#664">#664</a><br />
Version 10.0.10586</p>
<p>Microsoft Windows 10, Microsoft Surface Pro 3 with Windows 10, Microsoft Surface 3 with Windows 10, Microsoft Surface Pro 2 with Windows 10, Microsoft Surface Pro with Windows 10 BCryptPrimitives and NCryptSSLp <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#575">#575</a><br />
Version  10.0.10240</p>
<p>Microsoft Windows 8.1, Microsoft Windows Server 2012 R2, Microsoft Windows Storage Server 2012 R2, Microsoft Windows RT 8.1, Microsoft Surface with Windows RT 8.1, Microsoft Surface Pro with Windows 8.1, Microsoft Surface 2, Microsoft Surface Pro 2, Microsoft Surface Pro 3, Microsoft Windows Phone 8.1, Microsoft Windows Embedded 8.1 Industry and Microsoft StorSimple 8100 BCryptPrimitives and NCryptSSLp <a href="https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/validation/validation-list/component#323">#323</a><br />
Version 6.3.9600</p></td>
</tr>
</tbody>
</table>


## References

\[[FIPS 140](http://csrc.nist.gov/publications/fips/fips140-2/fips1402.pdf)\] - FIPS 140-2, Security Requirements for Cryptographic Modules

\[[FIPS FAQ](http://csrc.nist.gov/groups/stm/cmvp/documents/cmvpfaq.pdf)\] - Cryptographic Module Validation Program (CMVP) FAQ

\[[SP 800-57](http://csrc.nist.gov/publications/pubssps.html#800-57-part1)\] - Recommendation for Key Management – Part 1: General (Revised)

\[[SP 800-131A](http://csrc.nist.gov/publications/nistpubs/800-131a/sp800-131a.pdf)\] - Transitions: Recommendation for Transitioning the Use of Cryptographic Algorithms and Key Lengths

## Additional Microsoft References

Enabling FIPS mode - <http://support.microsoft.com/kb/811833>

Cipher Suites in Schannel - [http://msdn.microsoft.com/library/aa374757(VS.85).aspx](https://msdn.microsoft.com/library/aa374757\(vs.85\).aspx)


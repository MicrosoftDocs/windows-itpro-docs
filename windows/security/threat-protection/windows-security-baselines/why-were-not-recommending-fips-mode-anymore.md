---
title: Why We’re Not Recommending "FIPS Mode" Anymore 
description: This topic explains why Microsoft changed from recommending FIPS mode be enabled to Not Defined.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: aaronmar
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 03/15/2019
---

# Why We’re Not Recommending “FIPS Mode” Anymore

**Applies to**
 -   Windows 10
 -   Windows Server

In [the latest review of the official Microsoft security baselines](https://blogs.technet.microsoft.com/b/secguide/archive/2014/04/07/security-baselines-for-windows-8-1-windows-server-2012-r2-and-internet-explorer-11.aspx) for all versions of Windows client and Windows Server, we decided to remove our earlier recommendation to enable “FIPS mode”, or more precisely, the security option called “System Cryptography: Use FIPS compliant algorithms for encryption, hashing, and signing.”  
In our previous guidance we had recommended a setting of “Enabled”, primarily to align with US Federal government recommendations. 
In our updated guidance, the recommendation is “Not Defined”, meaning that we leave the decision to customers. 
Many people will correctly see this as a significant change, and it deserves explanation.

The United States Federal Information Processing Standard (FIPS) 140 standard defines cryptographic algorithms approved for use by US Federal government computer systems for the protection of sensitive data. 
An implementation of an approved cryptographic algorithm is considered FIPS 140-compliant only if it has been submitted for and has passed National Institute of Standards and Technology (NIST) validation. 
A particular implementation of an algorithm that has not been submitted cannot be considered FIPS-compliant even if it produces identical data as a validated implementation of the same algorithm. Note that the requirement to use approved and validated algorithms applies only to the protection of sensitive data. 
Systems and applications are always free to use weak or non-validated cryptographic implementations for non-security purposes, such as in a hash table for indexing and lookup purposes.

## What FIPS mode does
Enabling FIPS mode makes Windows and its subsystems use only FIPS-validated cryptographic algorithms. 
An example is Schannel, which is the system component that provides SSL and TLS to applications. 
When FIPS mode is enabled, Schannel disallows SSL 2.0 and 3.0, protocols that fall short of the FIPS standards. 
Applications such as web browsers that use Schannel then cannot connect to HTTPS web sites that don’t use at least TLS 1.0. 
(Note that the same results can be achieved without FIPS mode by configuring Schannel according to [KB 245030](http://support.microsoft.com/kb/245030) and [this blog post](https://blogs.technet.microsoft.com/b/askds/archive/2011/05/04/speaking-in-ciphers-and-other-enigmatic-tongues.aspx).)

Enabling FIPS mode also causes the .NET Framework to disallow the use of non-validated algorithms. 
(More on this [later](#why-fips-mode-is-particularly-onerous).)

A more complete listing of the effects of enabling FIPS mode can be found in [KB 811833](https://blogs.technet.microsoft.com/b/askds/archive/2011/05/04/speaking-in-ciphers-and-other-enigmatic-tongues.aspx).

## What FIPS mode does not do
Beyond the effects described above, FIPS mode is merely advisory to applications. 
Applications that do not check or choose to ignore the registry setting associated with FIPS mode and that are not dependent on the subsystems described earlier will continue to work exactly as they had with FIPS mode disabled. 
For example, a Win32 application−or third party disk encryption software−written in C++ that uses the very weak and non-FIPS-approved DES encryption algorithm exposed by the CryptoAPI will behave exactly the same whether FIPS mode is enabled.

Further, FIPS mode does not and cannot ensure that applications even use encryption at all when appropriate. 
There is nothing Windows can do to prevent an application from saving plaintext passwords or other sensitive data in unprotected files or registry values. 
The bottom line here is that just because a software product works when FIPS mode is enabled does not mean that it adheres to government standards.

## Why FIPS mode is particularly onerous
Perhaps the biggest problems incurred by enabling FIPS mode involve applications that use the .NET Framework. 
If FIPS mode is enabled, the .NET Framework disallows the use of all non-validated cryptographic classes. 
The problem here is that the Framework offers multiple implementations of most algorithms, and not all of them have been submitted for validation, even though they are similar or identical to implementations that have been approved.

For example, the .NET Framework currently provides three implementations of the SHA256 hashing algorithm: SHA256Cng, SHA256CryptoServiceProvider, and SHA256Managed. 
The first two use “platform invoke” (a.k.a., “p/invoke”) to use Windows’ underlying implementations, which are FIPS-validated. 
By contrast, SHA256Managed, like all the other crypto classes ending with “Managed”, is implemented strictly in .NET managed code and doesn’t use the underlying platform implementations. 
Although it is an acceptably strong hashing algorithm for most uses, the Managed implementations have never been submitted to NIST for validation. 
And so if an application tries to use this class and FIPS mode is enabled, the Framework will raise an exception and not allow the class to be used; this exception will almost always cause the application to fail, if not terminate immediately.

Compounding the problem is that in most cases the Managed implementations of the various cryptographic algorithms have been available much longer than their Cng and CryptoServiceProvider counterparts, and on top of that, the Managed implementations tend to be significantly faster.

Another significant problem with FIPS mode is that until very recently there was no NIST-approved way to derive an encryption key from a password. That blocked use of the Bitlocker Drive Encryption feature that stored a computer’s 48-character recovery password to Active Directory. Using the newer standard for password-based key derivation functions, this is no longer a problem beginning with Windows 8.1 and Windows Server 2012 R2, but it remains a problem for older versions of Windows.

Finally, the .NET Framework’s enforcement of FIPS mode cannot tell whether any particular use of a cryptographic class is not for security purposes and thus not in violation of standards.

## Is Microsoft contradicting government regulations?
Government regulations may continue to mandate that FIPS mode be enabled on government computers running Windows. 
Our updated recommendations do not contradict or conflict with government guidance: we’re not telling customers to turn it off−our recommendation is that it’s each customer’s decision to make. 
Our updated guidance reflects our belief there is not a compelling reason for our customers that are not subject to government regulations to enable FIPS mode.
 
References:
- [FIPS 140 Evaluation](https://docs.microsoft.com/windows/security/threat-protection/fips-140-validation)
- ["System cryptography: Use FIPS compliant algorithms for encryption, hashing, and signing" security setting effects in Windows XP and in later versions of Windows](https://support.microsoft.com/help/811833/system-cryptography-use-fips-compliant-algorithms-for-encryption-hashi)
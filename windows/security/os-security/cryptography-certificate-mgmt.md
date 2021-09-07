---
title: Cryptography and Certificate Management
description: Get an overview of cryptography and certificate management in Windows 11
search.appverid: MET150  
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: conceptual
ms.date: 09/07/2021
ms.prod: w11
ms.localizationpriority: medium
ms.collection: 
ms.custom: 
ms.reviewer: skhadeer, raverma
f1.keywords: NOCSH 
---

# Cryptography and Certificate Management

This article describes cryptography and certificate management in Windows 11.

## Cryptography

Cryptography uses code to convert data so that only a specific recipient can read it by using a key. Cryptography enforces privacy to prevent anyone except the intended recipient from reading data, integrity to ensure data is free of tampering, and authentication that verifies identity to ensure that communication is secure. The cryptography stack in Windows extends from the chip to the cloud enabling Windows, applications, and services protect system and user secrets. 

All cryptography on Windows 11 is Federal Information Processing Standards (FIPS) 140 certified. FIPS 140 certification ensures that US government approved algorithms are being used (RSA for signing, ECDH with NIST curves for key agreement, AES for symmetric encryption, and SHA2 for hashing), tests module integrity to prove that no tampering has occurred and proves the randomness for entropy sources.

Windows cryptographic modules provide low-level primitives such as:

- Random number generators (RNG)
- Symmetric and asymmetric encryption (support for  AES 128/256 and RSA 512 to 16384, in 64-bit increments and ECDSA over NIST-standard prime curves P-256, P-384, P-521)
- Hashing (support for SHA-256, SHA-384, and SHA-512)
- Signing and verification (padding support for OAEP, PSS, PKCS1)
- Key agreement and key derivation (support for ECDH over NIST-standard prime curves P-256, P-384, P-521 and HKDF)

These are natively exposed on Windows through the Crypto API (CAPI) and the Cryptography Next Generation API (CNG) which is powered by Microsoft's open-source cryptographic library SymCrypt. Application developers can leverage these APIs to perform low-level cryptographic operations (BCrypt), key storage operations (NCrypt), protect static data (DPAPI), and securely share secrets (DPAPI-NG). 

## Certificate management

Windows offers several APIs to operate and manage certificates. Certificates are crucial to public key infrastructure (PKI) as they provide the means for safeguarding and authenticating information. Certificates are electronic documents used to claim ownership of a public key. Public keys are used to prove server and client identity, validate code integrity, and used in secure emails. Windows offers users the ability to auto-enroll and renew certificates in Active Directory with Group Policy to reduce the risk of potential outages due to certificate expiration or misconfiguration. Windows validates certificates through an automatic update mechanism that downloads certificate trust lists (CTL) daily. Trusted root certificates are used by applications as a reference for trustworthy PKI hierarchies and digital certificates. The list of trusted and untrusted certificates are stored in the CTL and can be updated by administrators. In the case of certificate revocation, a certificate is added as an untrusted certificate in the CTL causing it to be revoked globally across user devices immediately. 

Windows also offers enterprise certificate pinning to help reduce man-in-the-middle attacks by enabling users to protect their internal domain names from chaining to unwanted certificates. A web application's server authentication certificate chain is checked to ensure it matches a restricted set of certificates. Any web application triggering a name mismatch will start event logging and prevent user access from Edge or Internet Explorer. 

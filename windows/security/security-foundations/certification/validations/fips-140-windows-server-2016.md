---
title: FIPS 140 validated modules for Windows Server 2016
description: This topic lists the completed FIPS 140 cryptographic module validations for Windows Server 2016.
ms.date: 2/1/2024
ms.topic: reference
---
# FIPS 140 validated modules in Windows Server 2016

The following tables list the completed FIPS 140 validations of cryptographic modules used in Windows Server 2016, organized by major release of the operating system. The linked Security Policy document for each module provides details on the module capabilities and the policies the operator must follow to use the module in its FIPS approved mode of operation. For information on using the overall operating system in its FIPS approved mode, see [Use Windows in a FIPS approved mode of operation](../fips-140-validation.md#use-windows-in-a-fips-approved-mode-of-operation). For details on the FIPS approved algorithms used by each module, including CAVP algorithm certificates, see the module's linked Security Policy document or CMVP module certificate.

## Windows Server 2016

Build: 10.0.14393.1770. Validated Editions: Standard, Datacenter, Storage Server.

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Windows OS Loader][sp-3502] (winload)|[#3502][certificate-3502]|FIPS Approved: AES, RSA, and SHS; Other Allowed: NDRNG|
|[BitLocker Windows Resume][sp-3501] (winresume)|[#3501][certificate-3501]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3487]|[#3487][certificate-3487]|FIPS Approved: AES, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-3510] (ci.dll)|[#3510][certificate-3510]|FIPS Approved: AES, RSA, and SHS|
|[Secure Kernel Code Integrity][sp-3513] (skci.dll)|[#3513][certificate-3513]|FIPS Approved: RSA and SHS; Other Allowed: MD5|

Build: 10.0.14393. Validated Editions: Standard, Datacenter, Storage Server.

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-2934] (dumpfve.sys)|[#2934][certificate-2934]|FIPS Approved: AES|
|[BitLocker Windows OS Loader][sp-2932] (winload)|[#2932][certificate-2932]|FIPS Approved: AES, RSA, and SHS; Other: NDRNG|
|[BitLocker Windows Resume][sp-2933] (winresume)|[#2933][certificate-2934]|FIPS Approved: AES, RSA, and SHS; Other: MD5|
|[Boot Manager][sp-2931]|[#2931][certificate-2931]|FIPS Approved: AES, HMAC, PBKDF, RSA, and SHS; Other: MD5, Non-Compliant PBKDF, and VMK KDF|
|[Code Integrity][sp-2935] (ci.dll)|[#2935][certificate-2935]|FIPS Approved: RSA and SHS|
|[Cryptographic Primitives Library][sp-2937] (bcryptprimitives.dll and ncryptsslp.dll)|[#2937][certificate-2937]|FIPS Approved: AES, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other: HMAC-MD5 and MD5.|
|[Kernel Mode Cryptographic Primitives Library][sp-2936] (cng.sys)|[#2936][certificate-2936]|FIPS Approved: AES, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other: HMAC-MD5, MD5, and NDRNG|
|[Secure Kernel Code Integrity][sp-2938] (skci.dll)|[#2938][certificate-2938]|FIPS Approved: RSA and SHS; Other: MD5|

---

<!-- Links -->

<!-- CMVP Certificates -->

[certificate-2931]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2931
[certificate-2932]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2932
[certificate-2934]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2934
[certificate-2935]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2935
[certificate-2936]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2936
[certificate-2937]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2937
[certificate-2938]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2938
[certificate-3487]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3487
[certificate-3501]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3501
[certificate-3502]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3502
[certificate-3510]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3510
[certificate-3513]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3513

<!-- Security Policies -->

[sp-2931]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2931.pdf
[sp-2932]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2932.pdf
[sp-2933]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2933.pdf
[sp-2934]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2934.pdf
[sp-2935]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2935.pdf
[sp-2936]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2936.pdf
[sp-2937]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2937.pdf
[sp-2938]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2938.pdf
[sp-3487]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3487.pdf
[sp-3501]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3501.pdf
[sp-3502]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3502.pdf
[sp-3510]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3510.pdf
[sp-3513]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3513.pdf

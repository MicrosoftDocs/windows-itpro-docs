---
title: FIPS 140 validated modules for Windows 10
description: This topic lists the completed FIPS 140 cryptographic module validations for Windows 10.
ms.date: 2/1/2024
ms.topic: reference
---

# FIPS 140 validated modules for Windows 10

The following tables list the completed FIPS 140 validations of cryptographic modules used in Windows 10, organized by major release of the operating system. The linked Security Policy document for each module provides details on the module capabilities and the policies the operator must follow to use the module in its FIPS approved mode of operation. For information on using the overall operating system in its FIPS approved mode, see [Use Windows in a FIPS approved mode of operation](../fips-140-validation.md#use-windows-in-a-fips-approved-mode-of-operation). For details on the FIPS approved algorithms used by each module, including CAVP algorithm certificates, see the module's linked Security Policy document or CMVP module certificate.

## Windows 10, version 2004 (May 2020 Update)

Build: 10.0.19041. Validated Editions: Home, Pro, Enterprise, Education

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-4538]|[#4538][certificate-4538]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3923]|[#3923][certificate-3923]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-4511]|[#4511][certificate-4511]|FIPS Approved: AES, RSA, and SHS|
|[Cryptographic Primitives Library][sp-4536]|[#4536][certificate-4536]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-4515]|[#4515][certificate-4515]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: NDRNG|
|[Secure Kernel Code Integrity][sp-4512]|[#4512][certificate-4512]|FIPS Approved: AES, RSA, and SHS|
|[TCB Launcher][sp-4457] <br>*Applies only to Enterprise Edition.*|[#4457][certificate-4457]|FIPS Approved: AES, CKG, DRBG, RSA, and SHS; Other Allowed: NDRNG|
|[Windows OS Loader][sp-4339]|[#4339][certificate-4339]|FIPS Approved: AES, CKG, DRBG, RSA, and SHS; Other Allowed: NDRNG|
|[Virtual TPM][sp-4537]|[#4537][certificate-4537]|FIPS Approved: AES, CKG, CVL, DRBG, ECDSA, HMAC, KAS, KBKDF, KTS, RSA, and SHS; Other Allowed: NDRNG|
|[Windows Resume][sp-4348]|[#4348][certificate-4348]|FIPS Approved: AES, HMAC, KBKDF, RSA, and SHS|

## Windows 10, version 1909 (November 2019 Update)

Build: 10.0.18363. Validated Editions: Home, Pro, Enterprise, Education

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-4538]|[#4538][certificate-4538]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3923]|[#3923][certificate-3923]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-4511]|[#4511][certificate-4511]|FIPS Approved: AES, RSA, and SHS|
|[Cryptographic Primitives Library][sp-4536]|[#4536][certificate-4536]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-4515]|[#4515][certificate-4515]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: NDRNG|
|[Secure Kernel Code Integrity][sp-4512]|[#4512][certificate-4512]|FIPS Approved: AES, RSA, and SHS|
|[TCB Launcher][sp-4457] <br>*Applies only to Enterprise Edition.*|[#4457][certificate-4457]|FIPS Approved: AES, CKG, DRBG, RSA, and SHS; Other Allowed: NDRNG|
|[Windows OS Loader][sp-4339]|[#4339][certificate-4339]|FIPS Approved: AES, CKG, DRBG, RSA, and SHS; Other Allowed: NDRNG|
|[Virtual TPM][sp-4537]|[#4537][certificate-4537]|FIPS Approved: AES, CKG, CVL, DRBG, ECDSA, HMAC, KAS, KBKDF, KTS, RSA, and SHS; Other Allowed: NDRNG|
|[Windows Resume][sp-4348]|[#4348][certificate-4348]|FIPS Approved: AES, HMAC, KBKDF, RSA, and SHS|

## Windows 10, version 1903 (May 2019 Update)

Build: 10.0.18362. Validated Editions: Home, Pro, Enterprise, Education

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-4538]|[#4538][certificate-4538]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3923]|[#3923][certificate-3923]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-4511]|[#4511][certificate-4511]|FIPS Approved: AES, RSA, and SHS|
|[Cryptographic Primitives Library][sp-4536]|[#4536][certificate-4536]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-4515]|[#4515][certificate-4515]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: NDRNG|
|[Secure Kernel Code Integrity][sp-4512]|[#4512][certificate-4512]|FIPS Approved: AES, RSA, and SHS|
|[Windows OS Loader][sp-4339]|[#4339][certificate-4339]|FIPS Approved: AES, CKG, DRBG, RSA, and SHS; Other Allowed: NDRNG|
|[Virtual TPM][sp-4537]|[#4537][certificate-4537]|FIPS Approved: AES, CKG, CVL, DRBG, ECDSA, HMAC, KAS, KBKDF, KTS, RSA, and SHS; Other Allowed: NDRNG|
|[Windows Resume][sp-4348]|[#4348][certificate-4348]|FIPS Approved: AES, HMAC, KBKDF, RSA, and SHS|

## Windows 10, version 1809 (October 2018 Update)

Build: 10.0.17763. Validated Editions: Home, Pro, Enterprise, Education

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-3092]|[#3092][certificate-3092]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3089]|[#3089][certificate-3089]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-3644]|[#3644][certificate-3644]|FIPS Approved: RSA and SHS|
|[Cryptographic Primitives Library][sp-3197]|[#3197][certificate-3197]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-3196]|[#3196][certificate-3196]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Secure Kernel Code Integrity][sp-3651]|[#3651][certificate-3651]|FIPS Approved: RSA and SHS|
|[Virtual TPM][sp-3690]|[#3690][certificate-3690]|FIPS Approved: AES, CKG, CVL, DRBG, ECDSA, HMAC, KAS, KBKDF, KTS, RSA, and SHS; Other Allowed: NDRNG|
|[Windows OS Loader][sp-3615]|[#3615][certificate-3615]|FIPS Approved: AES, CKG, DRBG, RSA, and SHS; Other Allowed: NDRNG|

## Windows 10, version 1803 (April 2018 Update)

Build: 10.0.17134. Validated Editions: Home, Pro, Enterprise, Education

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-3092]|[#3092][certificate-3092]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3089]|[#3089][certificate-3089]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-3195]|[#3195][certificate-3195]|FIPS Approved: AES, RSA, and SHS|
|[Cryptographic Primitives Library][sp-3197]|[#3197][certificate-3197]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-3196]|[#3196][certificate-3196]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Secure Kernel Code Integrity][sp-3096]|[#3096][certificate-3096]|FIPS Approved: AES, RSA, and SHS|
|[Windows OS Loader][sp-3480]|[#3480][certificate-3480]|FIPS Approved: AES, CKG, DRBG, RSA, and SHS; Other Allowed: NDRNG|

## Windows 10, version 1709 (Fall Creators Update)

Build: 10.0.16299. Validated Editions: Home, Pro, Enterprise, Education, S, Surface Hub, Mobile

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-3092]|[#3092][certificate-3092]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3089]|[#3089][certificate-3089]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-3195]|[#3195][certificate-3195]|FIPS Approved: AES, RSA, and SHS|
|[Cryptographic Primitives Library][sp-3197]|[#3197][certificate-3197]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-3196]|[#3196][certificate-3196]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Secure Kernel Code Integrity][sp-3096]|[#3096][certificate-3096]|FIPS Approved: AES, RSA, and SHS|
|[Windows Resume][sp-3091]|[#3091][certificate-3091]|FIPS Approved: AES, RSA, and SHS|
|[Windows OS Loader][sp-3194]|[#3194][certificate-3194]|FIPS Approved: AES, RSA, and SHS; Other Allowed: NDRNG|

## Windows 10, version 1703 (Creators Update)

Build: 10.0.15063. Validated Editions: Home, Pro, Enterprise, Education, S, Surface Hub, Mobile

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-3092] <br>*Applies only to Pro, Enterprise, Education, S, Mobile, and Surface Hub Editions.*|[#3092][certificate-3092]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3089]|[#3089][certificate-3089]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-3093] (ci.dll)|[#3093][certificate-3093]|FIPS Approved: AES, RSA, and SHS|
|[Cryptographic Primitives Library][sp-3095] (bcryptprimitives.dll and ncryptsslp.dll)|[#3095][certificate-3095]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-3094] (cng.sys)|[#3094][certificate-3094]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Secure Kernel Code Integrity][sp-3096] (skci.dll) <br>*Applies only to Pro, Enterprise, Education, and S Editions.*|[#3096][certificate-3096]|FIPS Approved: AES, RSA, and SHS|
|[Windows OS Loader][sp-3090]|[#3090][certificate-3090]|FIPS Approved: AES, RSA, and SHS|
|[Windows Resume][sp-3091] <br>*Applies only to Home, Pro, Enterprise, Education, and S Editions.*|[#3091][certificate-3091]|FIPS Approved: AES, RSA, and SHS|

## Windows 10, version 1607 (Anniversary Update)

Build: 10.0.14393.1770. Validated Editions: Windows 10 (Home/Consumer), Pro, Enterprise, Enterprise LTSB, Mobile

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Windows OS Loader][sp-3502] (winload)|[#3502][certificate-3502]|FIPS Approved: AES, RSA, and SHS; Other Allowed: NDRNG|
|[BitLocker Windows Resume][sp-3501] (winresume) <br>*Applies only to Home, Pro, Enterprise, and Enterprise LTSB Editions.*|[#3501][certificate-3501]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3487]|[#3487][certificate-3487]|FIPS Approved: AES, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-3510] (ci.dll)|[#3510][certificate-3510]|FIPS Approved: AES, RSA, and SHS|
|[Secure Kernel Code Integrity][sp-3513] (skci.dll) <br>*Applies only to Pro, Enterprise, and Enterprise LTSB Editions.*|[#3513][certificate-3513]|FIPS Approved: RSA and SHS; Other Allowed: MD5|

Build: 10.0.14393. Validated Editions: Windows 10 (Home/Consumer), Pro, Enterprise, Enterprise LTSB, Mobile

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-2934] (dumpfve.sys) <br>*Applies only to Pro, Enterprise, Enterprise LTSB, and Mobile Editions.*|[#2934][certificate-2934]|FIPS Approved: AES|
|[BitLocker Windows OS Loader][sp-2932] (winload)|[#2932][certificate-2932]|FIPS Approved: AES, RSA, and SHS; Other Allowed: NDRNG|
|[BitLocker Windows Resume][sp-2933] (winresume) <br>*Applies only to Home, Pro, Enterprise, and Enterprise LTSB Editions.*|[#2933][certificate-2933]|FIPS Approved: AES, RSA, and SHS; Other Allowed: MD5|
|[Boot Manager][sp-2931]|[#2931][certificate-2931]|FIPS Approved: AES, HMAC, PBKDF, RSA, and SHS; Other Allowed: MD5, Non-Compliant PBKDF, and VMK KDF|
|[Code Integrity][sp-2935] (ci.dll)|[#2935][certificate-2935]|FIPS Approved: RSA and SHS|
|[Cryptographic Primitives Library][sp-2937] (bcryptprimitives.dll and ncryptsslp.dll)|[#2937][certificate-2937]|FIPS Approved: AES, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5 and MD5|
|[Kernel Mode Cryptographic Primitives Library][sp-2936] (cng.sys)|[#2936][certificate-2936]|FIPS Approved: AES, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Secure Kernel Code Integrity][sp-2938] (skci.dll) <br>*Applies only to Pro, Enterprise, and Enterprise LTSB Editions.*|[#2938][certificate-2938]|FIPS Approved: RSA and SHS; Other Allowed: MD5|

## Windows 10, version 1511 (November Update)

Build: 10.0.10586.1176. Validated Editions: Home, Pro, Enterprise, Enterprise LTSB, Mobile, Surface Hub

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Windows OS Loader][sp-3451] (winload)|[#3451][certificate-3451]|FIPS Approved: AES, RSA, and SHS|
|[BitLocker Windows Resume][sp-3464] (winresume) <br>*Applies only to Home, Pro, and Enterprise Editions.*|[#3464][certificate-3464]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3447]|[#3447][certificate-3447]|FIPS Approved: AES, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-3469] (ci.dll)|[#3469][certificate-3469]|FIPS Approved: AES, RSA, and SHS|

Build: 10.0.10586. Validated Editions: Home, Pro, Enterprise, Enterprise LTSB, Mobile, Surface Hub

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-2703] (dumpfve.sys) <br>*Applies only to Pro, Enterprise, Mobile, and Surface Hub Editions.*|[#2703][certificate-2703]|FIPS Approved: AES|
|[BitLocker Windows OS Loader][sp-2701] (winload) <br>*Applies only to Home, Pro, Enterprise, Mobile, and Surface Hub Editions.*|[#2701][certificate-2701]|FIPS Approved: AES, RSA, and SHS; Other Allowed: MD5 and NDRNG|
|[BitLocker Windows Resume][sp-2702] (winresume) <br>*Applies only to Home, Pro, and Enterprise Editions.*|[#2702][certificate-2702]|FIPS Approved: AES, RSA, and SHS; Other Allowed: MD5|
|[Boot Manager][sp-2700] <br>*Applies only to Home, Pro, Enterprise, Mobile, and Surface Hub Editions.*|[#2700][certificate-2700]|FIPS Approved: AES, HMAC, PBKDF, RSA, and SHS; Other Allowed: MD5, Non-Compliant KDF, and Non-Compliant PBKDF|
|[Code Integrity][sp-2604] (ci.dll)|[#2604][certificate-2604]|FIPS Approved: RSA and SHS; Other Allowed: Non-Compliant AES and MD5|
|[Cryptographic Primitives Library][sp-2605] (bcryptprimitives.dll and ncryptsslp.dll)|[#2606][certificate-2606]|FIPS Approved: AES, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-2605] (cng.sys)|[#2605][certificate-2605]|FIPS Approved: AES, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Secure Kernel Code Integrity][sp-2607] (skci.dll) <br>*Applies only to Enterprise and Enterprise LTSB Editions.*|[#2607][certificate-2607]|FIPS Approved: RSA and SHS|

## Windows 10, version 1507

Build: 10.0.10240.17643. Validated Editions: Enterprise LTSB

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Windows OS Loader][sp-3427] (winload)|[#3427][certificate-3427]|FIPS Approved: AES, RSA, and SHS; Other Allowed: NDRNG|
|[BitLocker Windows Resume][sp-3426] (winresume)|[#3426][certificate-3426]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3415]|[#3415][certificate-3415]|FIPS Approved: AES, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-3437] (ci.dll)|[#3437][certificate-3437]|FIPS Approved: AES, RSA, and SHS|

Build: 10.0.10240. Validated Editions: Home, Pro, Enterprise, Enterprise LTSB, Mobile, and Surface Hub

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-2603] (dumpfve.sys) <br>*Applies only to Pro, Enterprise, and Enterprise LTSB Editions.*|[#2603][certificate-2603]|FIPS Approved: AES|
|[BitLocker Windows OS Loader][sp-2601] (winload) <br>*Applies only to Home, Pro, Enterprise, and Enterprise LTSB Editions.*|[#2601][certificate-2601]|FIPS Approved: AES, RSA, and SHS; Other Allowed: MD5 and NDRNG|
|[BitLocker Windows Resume][sp-2602] (winresume) <br>*Applies only to Home, Pro, Enterprise, and Enterprise LTSB Editions.*|[#2602][certificate-2602]|FIPS Approved: AES, RSA, and SHS; Other Allowed: MD5|
|[Boot Manager][sp-2600] <br>*Applies only to Home, Pro, Enterprise, and Enterprise LTSB Editions.*|[#2600][certificate-2600]|FIPS Approved: AES, HMAC, KTS, PBKDF, RSA, and SHS; Other Allowed: MD5, Non-Compliant KDF, and Non-Compliant PBKDF|
|[Code Integrity][sp-2604] (ci.dll)|[#2604][certificate-2604]|FIPS Approved: RSA and SHS; Other Allowed: Non-Compliant AES and MD5|
|[Cryptographic Primitives Library][sp-2606] (bcryptprimitives.dll and ncryptsslp.dll)|[#2606][certificate-2606]|FIPS Approved: AES, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-2605] (cng.sys)|[#2605][certificate-2605]|FIPS Approved: AES, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Secure Kernel Code Integrity][sp-2607] (skci.dll) <br>*Applies only to Enterprise and Enterprise LTSB Editions.*|[#2607][certificate-2607]|FIPS Approved: RSA and SHS|

---

<!-- Links -->

<!-- CMVP Certificates -->

[certificate-2600]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2600
[certificate-2601]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2601
[certificate-2602]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2602
[certificate-2603]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2603
[certificate-2604]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2604
[certificate-2605]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2605
[certificate-2606]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2606
[certificate-2607]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2607
[certificate-2700]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2700
[certificate-2701]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2701
[certificate-2702]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2702
[certificate-2703]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2703
[certificate-2931]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2931
[certificate-2932]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2932
[certificate-2933]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2933
[certificate-2934]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2934
[certificate-2935]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2935
[certificate-2936]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2936
[certificate-2937]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2937
[certificate-2938]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2938
[certificate-3089]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3089
[certificate-3090]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3090
[certificate-3091]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3091
[certificate-3092]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3092
[certificate-3093]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3093
[certificate-3094]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3094
[certificate-3095]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3095
[certificate-3096]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3096
[certificate-3194]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3194
[certificate-3195]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3195
[certificate-3196]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3196
[certificate-3197]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3197
[certificate-3415]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3415
[certificate-3426]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3426
[certificate-3427]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3427
[certificate-3437]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3437
[certificate-3447]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3447
[certificate-3451]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3451
[certificate-3464]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3464
[certificate-3469]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3469
[certificate-3480]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3480
[certificate-3487]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3487
[certificate-3501]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3501
[certificate-3502]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3502
[certificate-3510]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3510
[certificate-3513]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3513
[certificate-3615]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3615
[certificate-3644]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3644
[certificate-3651]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3651
[certificate-3690]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3690
[certificate-3923]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3923
[certificate-4339]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4339
[certificate-4348]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4348
[certificate-4457]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4457
[certificate-4511]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4511
[certificate-4512]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4512
[certificate-4515]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4515
[certificate-4536]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4536
[certificate-4537]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4537
[certificate-4538]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4538

<!-- Security Policies -->

[sp-2600]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2600.pdf
[sp-2601]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2601.pdf
[sp-2602]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2602.pdf
[sp-2603]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2603.pdf
[sp-2604]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2604.pdf
[sp-2605]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2605.pdf
[sp-2606]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2606.pdf
[sp-2607]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2607.pdf
[sp-2700]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2700.pdf
[sp-2701]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2701.pdf
[sp-2702]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2702.pdf
[sp-2703]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2703.pdf
[sp-2931]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2931.pdf
[sp-2932]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2932.pdf
[sp-2933]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2933.pdf
[sp-2934]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2934.pdf
[sp-2935]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2935.pdf
[sp-2936]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2936.pdf
[sp-2937]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2937.pdf
[sp-2938]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2938.pdf
[sp-3089]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3089.pdf
[sp-3090]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3090.pdf
[sp-3091]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3091.pdf
[sp-3092]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3092.pdf
[sp-3093]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3093.pdf
[sp-3094]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3094.pdf
[sp-3095]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3095.pdf
[sp-3096]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3096.pdf
[sp-3194]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3194.pdf
[sp-3195]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3195.pdf
[sp-3196]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3196.pdf
[sp-3197]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3197.pdf
[sp-3415]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3415.pdf
[sp-3426]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3426.pdf
[sp-3427]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3427.pdf
[sp-3437]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3437.pdf
[sp-3447]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3447.pdf
[sp-3451]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3451.pdf
[sp-3464]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3464.pdf
[sp-3469]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3469.pdf
[sp-3480]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3480.pdf
[sp-3487]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3487.pdf
[sp-3501]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3501.pdf
[sp-3502]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3502.pdf
[sp-3510]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3510.pdf
[sp-3513]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3513.pdf
[sp-3615]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3615.pdf
[sp-3644]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3644.pdf
[sp-3651]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3651.pdf
[sp-3690]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3690.pdf
[sp-3923]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3923.pdf
[sp-4339]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4339.pdf
[sp-4348]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4348.pdf
[sp-4457]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4457.pdf
[sp-4511]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4511.pdf
[sp-4512]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4512.pdf
[sp-4515]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4515.pdf
[sp-4536]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4536.pdf
[sp-4537]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4537.pdf
[sp-4538]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4537.pdf

---
title: Windows FIPS 140 validation
description: Learn how Microsoft products and cryptographic modules follow the U.S. Federal government standard FIPS 140.
ms.date: 1/2/2024
ms.topic: reference
ms.author: v-rodurff
author: msrobertd
ms.reviewer: paoloma
ms.collection: tier3
---

# Windows FIPS 140 validation

The Federal Information Processing Standard (FIPS) Publication 140 is a U.S. government standard that defines the minimum-security requirements for cryptographic modules in IT products. This topic introduces the FIPS 140 validation process for the Windows cryptographic modules. The Windows cryptographic modules are used across different Microsoft products, including Windows client operating systems, Windows Server operating systems, and Azure cloud services.

Microsoft maintains an active commitment to meeting the requirements of the FIPS 140 standard, having validated cryptographic modules against it since it was first established in 2001. Windows cryptographic modules are validated under the [Cryptographic Module Validation Program (CMVP)][CMVP], a joint effort between the U.S. National Institute of Standards and Technology (NIST) and the Canadian Centre for Cyber Security (CCCS). The CMVP validates cryptographic modules against the Security Requirements for Cryptographic Modules (part of FIPS 140) and related FIPS cryptography standards. The NIST Information Technology Laboratory operates related programs that validate the FIPS approved cryptographic algorithms in the modules ([Cryptographic Algorithm Validation Program, CAVP][CAVP]) as well as the entropy source used by the modules ([Entropy Validation program][ESV]).

The cadence for starting module validation aligns with the feature updates of Windows and Windows Server. As the software industry evolves, operating systems release more frequently. Microsoft completes validation work on major releases but, in between releases, seeks to minimize the changes to the cryptographic modules. The duration of each evaluation varies, depending on many factors.

## Validated modules used by Windows client

The Windows client releases listed below include cryptographic modules that have completed FIPS 140 validation. Click on the release for details, including the CMVP certificate, Security Policy document, and algorithm scope for each module. When the CMVP certificate validation label includes the note *When operated in FIPS mode*, specific configuration and security rules outlined in the Security Policy must be followed.

### Windows 11 and Windows 10 releases

<details>

<summary><b>Windows 11, version 21H2</b></summary>

Build: 10.0.22000. Validated Edition: Windows 11

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[Boot Manager][sp-4546]|[#3089][certificate-4546]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|

</details>

<details>

<summary><b>Windows 10, version 2004 (May 2020 Update)</b></summary>

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

</details>

<details>

<summary><b>Windows 10, version 1909 (November 2019 Update)</b></summary>

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

</details>

<details>

<summary><b>Windows 10, version 1903 (May 2019 Update)</b></summary>

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

</details>

<details>

<summary><b>Windows 10, version 1809 (October 2018 Update)</b></summary>

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

</details>

<details>

<summary><b>Windows 10, version 1803 (April 2018 Update)</b></summary>

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

</details>

<details>

<summary><b>Windows 10, version 1709 (Fall Creators Update)</b></summary>

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

</details>

<details>

<summary><b>Windows 10, version 1703 (Creators Update)</b></summary>

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

</details>

<details>

<summary><b>Windows 10, version 1607 (Anniversary Update)</b></summary>

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

</details>

<details>

<summary><b>Windows 10, version 1511 (November Update)</b></summary>

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

</details>

<details>

<summary><b>Windows 10, version 1507</b></summary>

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

</details>

### Previous Windows releases

<details>

<summary><b>Windows 8.1</b></summary>

Validated Editions: RT, Pro, Enterprise, Phone, Embedded

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|BitLocker Dump Filter (dumpfve.sys)|[6.3.9600 6.3.9600.17031][sp-2354]|[#2354][certificate-2354]|
|BitLocker Windows OS Loader (winload)|[6.3.9600 6.3.9600.17031][sp-2352]|[#2352][certificate-2352]|
|BitLocker Windows Resume (winresume) <br>*Applies only to Pro, Enterprise, and Embedded 8.*|[6.3.9600 6.3.9600.17031][sp-2353]|[#2353][certificate-2353]|
|Boot Manager|[6.3.9600 6.3.9600.17031][sp-2351]|[#2351][certificate-2351]|
|Code Integrity (ci.dll)|[6.3.9600 6.3.9600.17031][sp-2355]|[#2355][certificate-2355]|
|Cryptographic Primitives Library (bcryptprimitives.dll and ncryptsslp.dll)|[6.3.9600 6.3.9600.17031][sp-2357]|[#2357][certificate-2357]|
|Kernel Mode Cryptographic Primitives Library (cng.sys)|[6.3.9600 6.3.9600.17042][sp-2356]|[#2356][certificate-2356]|

</details>

<details>

<summary><b>Windows 8</b></summary>

Validated Editions: RT, Home, Pro, Enterprise, Phone

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|BitLocker Dump Filter (DUMPFVE.SYS)|[6.2.9200][sp-1899]|[#1899][sp-1899]|
|BitLocker Windows OS Loader (WINLOAD)|[6.2.9200][sp-1896]|[#1896][sp-1896]|
|BitLocker Windows Resume (WINRESUME) <br>*Applies only to Home and Pro*|[6.2.9200][sp-1898]|[#1898][sp-1898]|
|Boot Manager|[6.2.9200][sp-1895]|[#1895][sp-1895]|
|Code Integrity (CI.DLL)|[6.2.9200][sp-1897]|[#1897][sp-1897]|
|Enhanced Cryptographic Provider (RSAENH.DLL)|[6.2.9200][sp-1894]|[#1894][sp-1894]|
|Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH.DLL)|[6.2.9200][sp-1893]|[#1893][sp-1893]|
|Cryptographic Primitives Library (BCRYPTPRIMITIVES.DLL)|[6.2.9200][sp-1892]|[#1892][sp-1892]|
|Kernel Mode Cryptographic Primitives Library (cng.sys)|[6.2.9200][sp-1891]|[#1891][certificate-1891]|

</details>

<details>

<summary><b>Windows 7</b></summary>

Validated Editions: Windows 7, Windows 7 SP1

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|BitLocker Drive Encryption|[6.1.7600.16385, 6.1.7600.16429, 6.1.7600.16757, 6.1.7600.20536, 6.1.7600.20873, 6.1.7600.20897, 6.1.7600.20916, 6.1.7601.17514, 6.1.7601.17556, 6.1.7601.21634, 6.1.7601.21655, and 6.1.7601.21675][sp-1332]|[1332][certificate-1332]|
|Boot Manager|[6.1.7600.16385 and 6.1.7601.17514][sp-1319]|[1319][certificate-1319]|
|Code Integrity (CI.DLL)|[6.1.7600.16385, 6.1.7600.17122, 6.1.7600.21320, 6.1.7601.17514, 6.1.7601.17950, and 6.1.7601.22108][sp-1327]|[1327][certificate-1327]|
|Cryptographic Primitives Library (BCRYPTPRIMITIVES.DLL)|[6.1.7600.16385 and 6.1.7601.17514][sp-1329]|[1329][certificate-1329]|
|Enhanced Cryptographic Provider (RSAENH.DLL)|[6.1.7600.16385][sp-1330] (no change in SP1)|[1330][certificate-1330]|
|Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH.DLL)|[6.1.7600.16385][sp-1331] (no change in SP1)|[1331][certificate-1331]|
|Kernel Mode Cryptographic Primitives Library (cng.sys)|[6.1.7600.16385, 6.1.7600.16915, 6.1.7600.21092, 6.1.7601.17514, 6.1.7601.17725, 6.1.7601.17919, 6.1.7601.21861, 6.1.7601.22076][sp-1328]|[1328][certificate-1328]|
|Winload OS Loader (winload.exe)|[6.1.7600.16385, 6.1.7600.16757, 6.1.7600.20897, 6.1.7600.20916, 6.1.7601.17514, 6.1.7601.17556, 6.1.7601.21655, and 6.1.7601.21675][sp-1326]|[1326][certificate-1326]|

</details>

<details>

<summary><b>Windows Vista SP1</b></summary>

Validated Edition: Ultimate Edition

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Boot Manager (bootmgr)|[6.0.6001.18000 and 6.0.6002.18005][sp-0978]|[978][certificate-0978]|
|Cryptographic Primitives Library (bcrypt.dll)|[6.0.6001.22202, 6.0.6002.18005, and 6.0.6002.22872][sp-1002]|[1001][certificate-1001]|
|Code Integrity (ci.dll)|[6.0.6001.18000, 6.0.6001.18023, 6.0.6001.22120, and 6.0.6002.18005][sp-0980]|[980][certificate-0980]|
|Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)|[6.0.6001.18000 and 6.0.6002.18005][sp-1003]|[1003][certificate-1003]|
|Enhanced Cryptographic Provider (RSAENH)|[6.0.6001.22202 and 6.0.6002.18005][sp-1002]|[1002][certificate-1002]|
|Kernel Mode Security Support Provider Interface (ksecdd.sys)|[6.0.6001.18709, 6.0.6001.18272, 6.0.6001.18796, 6.0.6001.22202, 6.0.6001.22450, 6.0.6001.22987, 6.0.6001.23069, 6.0.6002.18005, 6.0.6002.18051, 6.0.6002.18541, 6.0.6002.18643, 6.0.6002.22152, 6.0.6002.22742, and 6.0.6002.22869][sp-1000]|[1000][certificate-1000]|
|Winload OS Loader (winload.exe)|[6.0.6001.18000, 6.0.6001.18027, 6.0.6001.18606, 6.0.6001.22125, 6.0.6001.22861, 6.0.6002.18005, 6.0.6002.18411 and 6.0.6002.22596][sp-0979]|[979][certificate-0979]|

</details>

<details>

<summary><b>Windows Vista</b></summary>

Validated Edition: Ultimate Edition

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|BitLocker Drive Encryption|[6.0.6000.16386][sp-0947]|[947][certificate-0947]|
|Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)|[6.0.6000.16386][sp-0894]|[894][certificate-0894]|
|Enhanced Cryptographic Provider (RSAENH) | [6.0.6000.16386][sp-0893] | [893][certificate-0893] |
|Kernel Mode Security Support Provider Interface (ksecdd.sys)|[6.0.6000.16386, 6.0.6000.16870 and 6.0.6000.21067][sp-0891]|[891][certificate-0891]|

</details>

<details>

<summary><b>Windows XP SP3</b></summary>

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)|[5.1.2600.5507][sp-0990]|[990][certificate-0990]|
|Enhanced Cryptographic Provider (RSAENH)|[5.1.2600.5507][sp-0989]|[989][certificate-0989]|
|Kernel Mode Cryptographic Module (FIPS.SYS)|[5.1.2600.5512][sp-0997]|[997][certificate-0997]|

</details>

<details>

<summary><b>Windows XP SP2</b></summary>

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|DSS/Diffie-Hellman Enhanced Cryptographic Provider|[5.1.2600.2133][sp-0240]|[240][certificate-0240]|
|Microsoft Enhanced Cryptographic Provider|[5.1.2600.2161][sp-0238]|[238][certificate-0238]|

</details>

<details>

<summary><b>Windows XP SP1</b></summary>

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Microsoft Enhanced Cryptographic Provider|[5.1.2600.1029][sp-0238]|[238][certificate-0238]|

</details>

<details>

<summary><b>Windows XP</b></summary>

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Kernel Mode Cryptographic Module|[5.1.2600.0][sp-0241]|[241][certificate-0241]|

</details>

<details>

<summary><b>Windows 2000 SP3</b></summary>

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Base DSS Cryptographic Provider, Base Cryptographic Provider, DSS/Diffie-Hellman Enhanced Cryptographic Provider, and Enhanced Cryptographic Provider|[Base DSS: 5.0.2195.3665 (SP3), Base: 5.0.2195.3839 (SP3), DSS/DH Enh: 5.0.2195.3665 (SP3), Enh: 5.0.2195.3839 (SP3)][sp-0103]|[103][certificate-0103]|
|Kernel Mode Cryptographic Module (FIPS.SYS)|[5.0.2195.1569][sp-0106]|[106][certificate-0106]|

</details>

<details>

<summary><b>Windows 2000 SP2</b></summary>

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Base DSS Cryptographic Provider, Base Cryptographic Provider, DSS/Diffie-Hellman Enhanced Cryptographic Provider, and Enhanced Cryptographic Provider|[Base DSS 5.0.2195.2228 (SP2), Base 5.0.2195.2228 (SP2), DSS/DH Enh 5.0.2195.2228 (SP2), Enh 5.0.2195.2228 (SP2)][sp-0103]|[103][certificate-0103]|
|Kernel Mode Cryptographic Module (FIPS.SYS)|[5.0.2195.1569][sp-0106]|[106][certificate-0106]|

</details>

<details>

<summary><b>Windows 2000 SP1</b></summary>

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Base DSS Cryptographic Provider, Base Cryptographic Provider, DSS/Diffie-Hellman Enhanced Cryptographic Provider, and Enhanced Cryptographic Provider|[Base DSS 5.0.2150.1391 (SP1), Base 5.0.2150.1391 (SP1), DSS/DH Enh: 5.0.2150.1391 (SP1), Enh 5.0.2150.1391 (SP1)][sp-0103]|[103][certificate-0103]|

</details>

<details>

<summary><b>Windows 2000</b></summary>

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Base DSS Cryptographic Provider, Base Cryptographic Provider, DSS/Diffie-Hellman Enhanced Cryptographic Provider, and Enhanced Cryptographic Provider|[5.0.2150.1][sp-0076]|[76][certificate-0076]|

</details>

<details>

<summary><b>Windows 95 and Windows 98</b></summary>

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Base DSS Cryptographic Provider, Base Cryptographic Provider, DSS/Diffie-Hellman Enhanced Cryptographic Provider, and Enhanced Cryptographic Provider|[5.0.1877.6 and 5.0.1877.7][sp-0075]|[75][certificate-0075]|

</details>

<details>

<summary><b>Windows NT 4.0</b></summary>

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Base Cryptographic Provider|[5.0.1877.6 and 5.0.1877.7][sp-0068]|[68][certificate-0068]|

</details>

### Other products that use the Windows cryptographic modules

<details>

<summary><b>Windows Embedded Compact 7 and Windows Embedded Compact 8</b></summary>

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Cryptographic Primitives Library (bcrypt.dll)|[7.00.2872 and 8.00.6246][sp-2956]|[2956][certificate-2956]|
|Enhanced Cryptographic Provider|[7.00.2872 and 8.00.6246][sp-2957]|[2957][certificate-2957]|

</details>

<details>

<summary><b>Windows CE 6.0 and Windows Embedded Compact 7</b></summary>

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Enhanced Cryptographic Provider|[6.00.1937 and 7.00.1687][sp-0825]|[825][certificate-0825]|

</details>

<details>

<summary><b>Outlook Cryptographic Provider</b></summary>

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Outlook Cryptographic Provider (EXCHCSP)|[SR-1A (3821)][sp-0110]|[110][certificate-0110]|

</details>

## Validated modules used by Windows Server

The Windows Server releases listed below include cryptographic modules that have completed FIPS 140 validation. Click on the release for details, including the CMVP certificate, Security Policy document, and algorithm scope for each module. When the CMVP certificate validation label includes the note *When operated in FIPS mode*, specific configuration and security rules outlined in the Security Policy must be followed.

### Windows Server 2019 and 2016 releases

<details>

<summary><b>Windows Server 2019</b></summary>

Builds: 10.0.17763.10021 and 10.0.17763.10127. Validated Edition: Datacenter Core

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter]|Pending [(in process)][in-process]||
|[Boot Manager][sp-4484]|[#4484][certificate-4484]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-4602]|[#4602][certificate-4602]|FIPS Approved: RSA and SHS|
|[Cryptographic Primitives Library]|Pending [(in process)][in-process]||
|[Kernel Mode Cryptographic Primitives Library][sp-4670]|[#4670][certificate-4670]|AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: ECDH|
|[Secure Kernel Code Integrity][sp-4640]|[#4640][certificate-4640]|FIPS Approved: RSA and SHS|
|[Virtual TPM]|Pending [(in process)][in-process]||
|[Windows OS Loader][sp-4545]|[#4545][certificate-4545]|FIPS Approved: AES, RSA, and SHS; Other Allowed: NDRNG|

Build: 10.0.17763.107. Validated Editions: Standard Core, Datacenter Core

|Cryptographic Module (linked to Security Policy document)|Version|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |--- |
|[BitLocker Dump Filter][sp-3092]|10.0.17763|[#3092][certificate-3092]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3089]|10.0.17763|[#3089][certificate-3089]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-3644]|10.0.17763|[#3644][certificate-3644]|FIPS Approved: RSA and SHS|
|[Cryptographic Primitives Library][sp-3197]|10.0.17763|[#3197][certificate-3197]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-3196]|10.0.17763|[#3196][certificate-3196]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Secure Kernel Code Integrity][sp-3651]|10.0.17763|[#3651][certificate-3651]|FIPS Approved: RSA and SHS|
|[Virtual TPM][sp-3690]|10.0.17763|[#3690][certificate-3690]|FIPS Approved: AES, CKG, CVL, DRBG, ECDSA, HMAC, KAS, KBKDF, KTS, RSA, and SHS; Other Allowed: NDRNG|
|[Windows OS Loader][sp-3615]|10.0.17763|[#3615][certificate-3615]|FIPS Approved: AES, CKG, DRBG, RSA, and SHS; Other Allowed: NDRNG|

</details>

<details>

<summary><b>Windows Server 2016</b></summary>

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

</details>

### Windows Server semi-annual releases

<details>

<summary><b>Windows Server, version 2004 (May 2020 Update)</b></summary>

Build: 10.0.19041. Validated Editions: Standard Core, Datacenter Core

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-4538]|[#4538][certificate-4538]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3923]|[#3923][certificate-3923]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-4511]|[#4511][certificate-4511]|FIPS Approved: AES, RSA, and SHS|
|[Cryptographic Primitives Library][sp-4536]|[#4536][certificate-4536]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-4515]|[#4515][certificate-4515]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: NDRNG|
|[Secure Kernel Code Integrity][sp-4512]|[#4512][certificate-4512]|FIPS Approved: AES, RSA, and SHS|
|[Virtual TPM][sp-4537]|[#4537][certificate-4537]|FIPS Approved: AES, CKG, CVL, DRBG, ECDSA, HMAC, KAS, KBKDF, KTS, RSA, and SHS; Other Allowed: NDRNG|
|[Windows OS Loader][sp-4339]|[#4339][certificate-4339]|FIPS Approved: AES, CKG, DRBG, RSA, and SHS; Other Allowed: NDRNG|

</details>

<details>

<summary><b>Windows Server, version 1909 (November 2019 Update)</b></summary>

Build: 10.0.18363. Validated Editions: Standard Core, Datacenter Core

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-4538]|[#4538][certificate-4538]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3923]|[#3923][certificate-3923]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-4511]|[#4511][certificate-4511]|FIPS Approved: AES, RSA, and SHS|
|[Cryptographic Primitives Library][sp-4536]|[#4536][certificate-4536]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-4515]|[#4515][certificate-4515]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: NDRNG|
|[Secure Kernel Code Integrity][sp-4512]|[#4512][certificate-4512]|FIPS Approved: AES, RSA, and SHS|
|[Virtual TPM][sp-4537]|[#4537][certificate-4537]|FIPS Approved: AES, CKG, CVL, DRBG, ECDSA, HMAC, KAS, KBKDF, KTS, RSA, and SHS; Other Allowed: NDRNG|
|[Windows OS Loader][sp-4339]|[#4339][certificate-4339]|FIPS Approved: AES, CKG, DRBG, RSA, and SHS; Other Allowed: NDRNG|

</details>

<details>

<summary><b>Windows Server, version 1903 (May 2019 Update)</b></summary>

Build: 10.0.18362. Validated Editions: Standard Core, Datacenter Core

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-4538]|[#4538][certificate-4538]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3923]|[#3923][certificate-3923]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-4511]|[#4511][certificate-4511]|FIPS Approved: AES, RSA, and SHS|
|[Cryptographic Primitives Library][sp-4536]|[#4536][certificate-4536]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-4515]|[#4515][certificate-4515]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: NDRNG|
|[Secure Kernel Code Integrity][sp-4512]|[#4512][certificate-4512]|FIPS Approved: AES, RSA, and SHS|
|[Virtual TPM][sp-4537]|[#4537][certificate-4537]|FIPS Approved: AES, CKG, CVL, DRBG, ECDSA, HMAC, KAS, KBKDF, KTS, RSA, and SHS; Other Allowed: NDRNG|
|[Windows OS Loader][sp-4339]|[#4339][certificate-4339]|FIPS Approved: AES, CKG, DRBG, RSA, and SHS; Other Allowed: NDRNG|

</details>

<details>

<summary><b>Windows Server, version 1809</b></summary>

Build: 10.0.17763. Validated Editions: Standard Core, Datacenter Core

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

</details>

<details>

<summary><b>Windows Server, version 1803</b></summary>

Build: 10.0.17134. Validated Editions: Standard Core, Datacenter Core

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-3092]|[#3092][certificate-3092]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3089]|[#3089][certificate-3089]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-3195]|[#3195][certificate-3195]|FIPS Approved: AES, RSA, and SHS|
|[Cryptographic Primitives Library][sp-3197]|[#3197][certificate-3197]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-3196]|[#3196][certificate-3196]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Secure Kernel Code Integrity][sp-3096]|[#3096][certificate-3096]|FIPS Approved: AES, RSA, and SHS|
|[Windows OS Loader][sp-3480]|[#3480][certificate-3480]|FIPS Approved: AES, CKG, DRBG, RSA, and SHS; Other Allowed: NDRNG|

</details>

<details>

<summary><b>Windows Server, version 1709</b></summary>

Build: 10.0.16299. Validated Editions: Standard Core, Datacenter Core

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-3092]|[#3092][certificate-3092]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3089]|[#3089][certificate-3089]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-3195]|[#3195][certificate-3195]|FIPS Approved: AES, RSA, and SHS|
|[Cryptographic Primitives Library][sp-3197]|[#3197][certificate-3197]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-3196]|[#3196][certificate-3196]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Secure Kernel Code Integrity][sp-3096]|[#3096][certificate-3096]|FIPS Approved: AES, RSA, and SHS|
|[Windows OS Loader][sp-3194]|[#3194][certificate-3194]|FIPS Approved: AES, RSA, and SHS; Other Allowed: NDRNG|

</details>

### Previous Windows Server releases

<details>

<summary><b>Windows Server 2012 R2</b></summary>

Validated Editions: Server, Storage Server, StorSimple 8000 Series, Azure StorSimple Virtual Array Windows Server 2012 R2

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|BitLocker Dump Filter (dumpfve.sys) <br>*Doesn't apply to Azure StorSimple Virtual Array Windows Server 2012 R2*|[6.3.9600 6.3.9600.17031][sp-2354]|[2354][certificate-2354]|
|BitLocker Windows OS Loader (winload)|[6.3.9600 6.3.9600.17031][sp-2352]|[2352][certificate-2352]|
|BitLocker Windows Resume (winresume) <br>*Doesn't apply to Azure StorSimple Virtual Array Windows Server 2012 R2*|[6.3.9600 6.3.9600.17031][sp-2353]|[2353][certificate-2353]|
|Boot Manager|[6.3.9600 6.3.9600.17031][sp-2351]|[2351][certificate-2351]|
|Code Integrity (ci.dll)|[6.3.9600 6.3.9600.17031][sp-2355]|[2355][certificate-2355]|
|Cryptographic Primitives Library (bcryptprimitives.dll and ncryptsslp.dll)|[6.3.9600 6.3.9600.17031][sp-2357]|[2357][certificate-2357]|
|Kernel Mode Cryptographic Primitives Library (cng.sys)|[6.3.9600 6.3.9600.17042][sp-2356]|[2356][certificate-2356]|

</details>

<details>

<summary><b>Windows Server 2012</b></summary>

Validated Editions: Server, Storage Server

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|BitLocker Dump Filter (DUMPFVE.SYS)|[6.2.9200][sp-1899]|[1899][sp-1899]|
|BitLocker Windows OS Loader (WINLOAD)|[6.2.9200][sp-1896]|[1896][sp-1896]|
|BitLocker Windows Resume (WINRESUME)|[6.2.9200][sp-1898]|[1898][sp-1898]|
|Boot Manager|[6.2.9200][sp-1895]|[1895][sp-1895]|
|Code Integrity (CI.DLL)|[6.2.9200][sp-1897]|[1897][sp-1897]|
|Enhanced Cryptographic Provider (RSAENH.DLL)|[6.2.9200][sp-1894]|[1894][sp-1894]|
|Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH.DLL)|[6.2.9200][sp-1893]|[1893][sp-1893]|
|Cryptographic Primitives Library (BCRYPTPRIMITIVES.DLL)|[6.2.9200][sp-1892]|[1892]|
|Kernel Mode Cryptographic Primitives Library (cng.sys)|[6.2.9200][sp-1891]|[1891][certificate-1891]|

</details>

<details>

<summary><b>Windows Server 2008 R2</b></summary>

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|BitLocker Drive Encryption|[6.1.7600.16385, 6.1.7600.16429, 6.1.7600.16757, 6.1.7600.20536, 6.1.7600.20873, 6.1.7600.20897, 6.1.7600.20916, 6.1.7601.17514, 6.1.7601.17556, 6.1.7601.21634, 6.1.7601.21655 or 6.1.7601.21675][sp-1339]|[1339][certificate-1339]|
|Boot Manager (bootmgr)|[6.1.7600.16385 or 6.1.7601.17514][sp-1321]|[1321][certificate-1321]|
|Cryptographic Primitives Library (bcryptprimitives.dll)|[66.1.7600.16385 or 6.1.7601.17514][sp-1336]|[1336][certificate-1336]|
|Enhanced Cryptographic Provider (RSAENH)|[6.1.7600.16385][sp-1337]|[1337][certificate-1337]|
|Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)|[6.1.7600.16385][sp-1338]|[1338][certificate-1338]|
|Kernel Mode Cryptographic Primitives Library (cng.sys)|[6.1.7600.16385, 6.1.7600.16915, 6.1.7600.21092, 6.1.7601.17514, 6.1.7601.17919, 6.1.7601.17725, 6.1.7601.21861 and 6.1.7601.22076][sp-1335]|[1335][certificate-1335]|
|Winload OS Loader (winload.exe)|[6.1.7600.16385, 6.1.7600.16757, 6.1.7600.20897, 6.1.7600.20916, 6.1.7601.17514, 6.1.7601.17556, 6.1.7601.21655 and 6.1.7601.21675][sp-1333]|[1333][certificate-1333]|

</details>

<details>

<summary><b>Windows Server 2008</b></summary>

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Boot Manager (bootmgr)|[6.0.6001.18000, 6.0.6002.18005 and 6.0.6002.22497][sp-1004]|[1004][certificate-1004]|
|Code Integrity (ci.dll)|[6.0.6001.18000 and 6.0.6002.18005][sp-1006]|[1006][certificate-1006]|
|Cryptographic Primitives Library (bcrypt.dll)|[6.0.6001.22202, 6.0.6002.18005 and 6.0.6002.22872][sp-1008]|[1008][certificate-1008]|
|Enhanced Cryptographic Provider (RSAENH)|[6.0.6001.22202 and 6.0.6002.18005][sp-1010]|[1010][certificate-1010]|
|Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)|[6.0.6001.18000 and 6.0.6002.18005][sp-1009]|[1009][certificate-1009]|
|Kernel Mode Security Support Provider Interface (ksecdd.sys)|[6.0.6001.18709, 6.0.6001.18272, 6.0.6001.18796, 6.0.6001.22202, 6.0.6001.22450, 6.0.6001.22987, 6.0.6001.23069, 6.0.6002.18005, 6.0.6002.18051, 6.0.6002.18541, 6.0.6002.18643, 6.0.6002.22152, 6.0.6002.22742 and 6.0.6002.22869][sp-1007]|[1007][certificate-1007]|
|Winload OS Loader (winload.exe)|[6.0.6001.18000, 6.0.6001.18606, 6.0.6001.22861, 6.0.6002.18005, 6.0.6002.18411, 6.0.6002.22497 and 6.0.6002.22596][sp-1005]|[1005][certificate-1005]|

</details>

<details>

<summary><b>Windows Server 2003 SP2</b></summary>

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Enhanced Cryptographic Provider (RSAENH)|[5.2.3790.3959][sp-0868]|[868][certificate-0868]|
|Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)|[5.2.3790.3959][sp-0875]|[875][certificate-0875]|
|Kernel Mode Cryptographic Module (FIPS.SYS)|[5.2.3790.3959][sp-0869]|[869][certificate-0869]|

</details>

<details>

<summary><b>Windows Server 2003 SP1</b></summary>

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Enhanced Cryptographic Provider (RSAENH)|[5.2.3790.1830 [Service Pack 1])][sp-0382]|[382][certificate-0382]|
|Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)|[5.2.3790.1830 [Service Pack 1]][sp-0381]|[381][certificate-0381]|
|Kernel Mode Cryptographic Module (FIPS.SYS)|[5.2.3790.1830 [SP1]][sp-0405]|[405][certificate-0405]|

</details>

<details>

<summary><b>Windows Server 2003</b></summary>

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Enhanced Cryptographic Provider (RSAENH)|[5.2.3790.0][sp-0382]|[382][certificate-0382]|
|Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)|[5.2.3790.0][sp-0381]|[381][certificate-0381]|
|Kernel Mode Cryptographic Module (FIPS.SYS)|[5.2.3790.0][sp-0405]|[405][certificate-0405]|

</details>

## Use Windows in a FIPS approved mode of operation

To use Windows and Windows Server in a FIPS 140 approved mode of operation, all of the specific configuration and security rules outlined in the module Security Policy documents must be followed. To view or download the Security Policy documents for a given product release, navigate to the listing of FIPS 140 validated modules for the release in the sections above and select the links to the Security Policy documents.

As part of the configuration rules outlined in the Security Policy documents, Windows and Windows Server may be configured to run in a FIPS 140 approved mode of operation, commonly referred to as "FIPS mode." If you turn on FIPS mode, the Cryptographic Primitives Library (bcryptprimitives.dll) and Kernel Mode Cryptographic Primitives Library (CNG.sys) modules will run self-tests before Windows runs cryptographic operations. These self-tests meet FIPS 140 requirements and ensure that the modules are functioning properly. The Cryptographic Primitives Library and the Kernel Mode Cryptographic Primitives Library are the only modules affected by FIPS mode. FIPS mode won't prevent Windows and its subsystems from using non-FIPS validated cryptographic algorithms. FIPS mode is merely advisory for applications or components other than the Cryptographic Primitives Library and the Kernel Mode Cryptographic Primitives Library. U.S. government regulations continue to mandate FIPS mode for government devices running Windows. Other customers should research and decide for themselves if FIPS mode is right for them. There are many applications and protocols that use FIPS mode policy to determine which cryptographic functionality to run. Customers seeking to follow the FIPS 140-2 standard should research the configuration settings of their applications and protocols. This research will help ensure that they can be configured to use FIPS 140-2 validated cryptography.

## Determine if a Windows service or application is FIPS 140 compliant

Microsoft validates the cryptographic modules used in Windows and other products, not individual Windows services or applications. Contact the vendor of the service or application for information on whether it calls a validated Windows cryptographic module (validated by the CMVP as meeting the FIPS 140 requirements and issued a certificate) in a FIPS compliant manner (calling for FIPS 140 validated cryptography and configured according to a defined FIPS approved mode of operation).

## FIPS 140 and the Commercial National Security Algorithm Suite

The *Commercial National Security Algorithm* (CNSA) suite is a set of cryptographic algorithms promulgated by the National Security Agency as a replacement for NSA Suite B cryptographic algorithms. Many CNSA cryptographic algorithms are also approved under the FIPS 140 standard. To determine whether a CNSA algorithm was included in the scope of CAVP validated algorithms used in a Microsoft product, choose a product from the drop-down menus at the top of this topic and reference the algorithm scope listed for each validated module.

## FIPS 140 and Common Criteria certifications

FIPS 140 and *Common Criteria* are two complementary but different security standards. Whereas FIPS 140 validates cryptographic functionality, Common Criteria evaluates a broader selection of security functions in IT products. Common Criteria evaluations may rely on FIPS 140 validations to provide assurance that basic cryptographic functionality is implemented properly. For information about Microsoft's Common Criteria certification program, see [Common Criteria certifications](windows-platform-common-criteria.md).

## Contact

Contact [fips@microsoft.com](mailto:fips@microsoft.com) with questions or to provide feedback on this topic.

<!-- Links -->

<!-- Links for validation programs -->

[CMVP]: https://csrc.nist.gov/Projects/cryptographic-module-validation-program
[CAVP]: https://csrc.nist.gov/Projects/cryptographic-algorithm-validation-program
[ESV]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/entropy-validations
[in-process]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/modules-in-process/modules-in-process-list

<!-- Links for CMVP certificates -->

[certificate-0068]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/68
[certificate-0075]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/75
[certificate-0076]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/76
[certificate-0103]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/103
[certificate-0106]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/106
[certificate-0110]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/110
[certificate-0238]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/238
[certificate-0240]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/240
[certificate-0241]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/241
[certificate-0381]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/381
[certificate-0382]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/382
[certificate-0405]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/405
[certificate-0825]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/825
[certificate-0868]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/868
[certificate-0869]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/869
[certificate-0875]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/875
[certificate-0891]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/891
[certificate-0893]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/893
[certificate-0894]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/894
[certificate-0947]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/947
[certificate-0978]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/978
[certificate-0979]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/979
[certificate-0980]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/980
[certificate-0989]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/989
[certificate-0990]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/990
[certificate-0997]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/997
[certificate-1000]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1000
[certificate-1001]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1001
[certificate-1002]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1002
[certificate-1003]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1003
[certificate-1004]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1004
[certificate-1005]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1005
[certificate-1006]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1006
[certificate-1007]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1007
[certificate-1008]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1008
[certificate-1009]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1009
[certificate-1010]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1010
[certificate-1319]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1319
[certificate-1321]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1321
[certificate-1326]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1326
[certificate-1327]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1327
[certificate-1328]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1328
[certificate-1329]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1329
[certificate-1330]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1330
[certificate-1331]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1331
[certificate-1332]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1332
[certificate-1333]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1333
[certificate-1335]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1335
[certificate-1336]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1336
[certificate-1337]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1337
[certificate-1338]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1338
[certificate-1339]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1339
[certificate-1891]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1891
[certificate-2351]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2351
[certificate-2352]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2352
[certificate-2353]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2353
[certificate-2354]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2354
[certificate-2355]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2355
[certificate-2356]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2356
[certificate-2357]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2357
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
[certificate-2956]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2956
[certificate-2957]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2957
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
[certificate-4484]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4484
[certificate-4511]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4511
[certificate-4512]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4512
[certificate-4515]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4515
[certificate-4536]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4536
[certificate-4537]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4537
[certificate-4538]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4538
[certificate-4545]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4545
[certificate-4546]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4546
[certificate-4602]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4602
[certificate-4640]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4640
[certificate-4670]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4670

<!-- Links for Security Policy documents -->

[sp-0068]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp68.pdf
[sp-0075]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp75.pdf
[sp-0076]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp76.pdf
[sp-0103]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp103.pdf
[sp-0106]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp106.pdf
[sp-0110]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp110.pdf
[sp-0238]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp238.pdf
[sp-0240]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp240.pdf
[sp-0241]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp241.pdf
[sp-0381]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp381.pdf
[sp-0382]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp382.pdf
[sp-0405]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp405.pdf
[sp-0825]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp825.pdf
[sp-0868]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp868.pdf
[sp-0869]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp869.pdf
[sp-0875]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp875.pdf
[sp-0891]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp891.pdf
[sp-0893]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp893.pdf
[sp-0894]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp894.pdf
[sp-0947]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp947.pdf
[sp-0978]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp978.pdf
[sp-0979]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp979.pdf
[sp-0980]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp980.pdf
[sp-0989]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp989.pdf
[sp-0990]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp990.pdf
[sp-0997]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp997.pdf
[sp-1000]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1000.pdf
[sp-1002]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1002.pdf
[sp-1003]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1003.pdf
[sp-1004]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1004.pdf
[sp-1005]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1005.pdf
[sp-1006]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1006.pdf
[sp-1007]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1007.pdf
[sp-1008]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1008.pdf
[sp-1009]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1009.pdf
[sp-1010]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1010.pdf
[sp-1319]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1319.pdf
[sp-1321]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1321.pdf
[sp-1326]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1326.pdf
[sp-1327]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1327.pdf
[sp-1328]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1328.pdf
[sp-1329]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1329.pdf
[sp-1330]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1330.pdf
[sp-1331]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1331.pdf
[sp-1332]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1332.pdf
[sp-1333]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1333.pdf
[sp-1335]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1335.pdf
[sp-1336]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1336.pdf
[sp-1337]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1337.pdf
[sp-1338]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1338.pdf
[sp-1339]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1339.pdf
[sp-1891]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1891.pdf
[sp-1892]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1892.pdf
[sp-1893]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1893.pdf
[sp-1894]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1894.pdf
[sp-1895]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1895.pdf
[sp-1896]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1896.pdf
[sp-1897]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1897.pdf
[sp-1898]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1898.pdf
[sp-1899]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1899.pdf
[sp-2351]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2351.pdf
[sp-2352]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2352.pdf
[sp-2353]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2353.pdf
[sp-2354]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2354.pdf
[sp-2355]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2355.pdf
[sp-2356]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2356.pdf
[sp-2357]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2357.pdf
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
[sp-2956]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2956.pdf
[sp-2957]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2957.pdf
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
[sp-4484]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4484.pdf
[sp-4511]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4511.pdf
[sp-4512]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4512.pdf
[sp-4515]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4515.pdf
[sp-4536]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4536.pdf
[sp-4537]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4537.pdf
[sp-4538]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4537.pdf
[sp-4545]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4545.pdf
[sp-4546]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4546.pdf
[sp-4602]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4602.pdf
[sp-4640]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4640.pdf
[sp-4670]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4670.pdf

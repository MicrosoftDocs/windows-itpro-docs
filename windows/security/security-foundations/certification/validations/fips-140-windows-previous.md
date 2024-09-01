---
title: FIPS 140 validated modules for previous Windows versions
description: This topic lists the completed FIPS 140 cryptographic module validations for versions of Windows prior to Windows 10.
ms.date: 2/1/2024
ms.topic: reference
---

# FIPS 140 validated modules in previous Windows versions

The following tables list the completed FIPS 140 validations of cryptographic modules used in versions of Windows  prior to Windows 10, organized by major release of the operating system. The linked Security Policy document for each module provides details on the module capabilities and the policies the operator must follow to use the module in its FIPS approved mode of operation. For information on using the overall operating system in its FIPS approved mode, see [Use Windows in a FIPS approved mode of operation](../fips-140-validation.md#use-windows-in-a-fips-approved-mode-of-operation). For details on the FIPS approved algorithms used by each module, including CAVP algorithm certificates, see the module's linked Security Policy document or CMVP module certificate.

## Windows 8.1

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

## Windows 8

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

## Windows 7

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

## Windows Vista SP1

Validated Edition: Ultimate Edition

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Boot Manager (bootmgr)|[6.0.6001.18000 and 6.0.6002.18005][sp-978]|[978][certificate-978]|
|Cryptographic Primitives Library (bcrypt.dll)|[6.0.6001.22202, 6.0.6002.18005, and 6.0.6002.22872][sp-1002]|[1001][certificate-1001]|
|Code Integrity (ci.dll)|[6.0.6001.18000, 6.0.6001.18023, 6.0.6001.22120, and 6.0.6002.18005][sp-980]|[980][certificate-980]|
|Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)|[6.0.6001.18000 and 6.0.6002.18005][sp-1003]|[1003][certificate-1003]|
|Enhanced Cryptographic Provider (RSAENH)|[6.0.6001.22202 and 6.0.6002.18005][sp-1002]|[1002][certificate-1002]|
|Kernel Mode Security Support Provider Interface (ksecdd.sys)|[6.0.6001.18709, 6.0.6001.18272, 6.0.6001.18796, 6.0.6001.22202, 6.0.6001.22450, 6.0.6001.22987, 6.0.6001.23069, 6.0.6002.18005, 6.0.6002.18051, 6.0.6002.18541, 6.0.6002.18643, 6.0.6002.22152, 6.0.6002.22742, and 6.0.6002.22869][sp-1000]|[1000][certificate-1000]|
|Winload OS Loader (winload.exe)|[6.0.6001.18000, 6.0.6001.18027, 6.0.6001.18606, 6.0.6001.22125, 6.0.6001.22861, 6.0.6002.18005, 6.0.6002.18411 and 6.0.6002.22596][sp-979]|[979][certificate-979]|

## Windows Vista

Validated Edition: Ultimate Edition

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|BitLocker Drive Encryption|[6.0.6000.16386][sp-947]|[947][certificate-947]|
|Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)|[6.0.6000.16386][sp-894]|[894][certificate-894]|
|Enhanced Cryptographic Provider (RSAENH) | [6.0.6000.16386][sp-893] | [893][certificate-893] |
|Kernel Mode Security Support Provider Interface (ksecdd.sys)|[6.0.6000.16386, 6.0.6000.16870 and 6.0.6000.21067][sp-891]|[891][certificate-891]|

## Windows XP SP3

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)|[5.1.2600.5507][sp-990]|[990][certificate-990]|
|Enhanced Cryptographic Provider (RSAENH)|[5.1.2600.5507][sp-989]|[989][certificate-989]|
|Kernel Mode Cryptographic Module (FIPS.SYS)|[5.1.2600.5512][sp-997]|[997][certificate-997]|

## Windows XP SP2

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|DSS/Diffie-Hellman Enhanced Cryptographic Provider|[5.1.2600.2133][sp-240]|[240][certificate-240]|
|Microsoft Enhanced Cryptographic Provider|[5.1.2600.2161][sp-238]|[238][certificate-238]|

## Windows XP SP1

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Microsoft Enhanced Cryptographic Provider|[5.1.2600.1029][sp-238]|[238][certificate-238]|

## Windows XP

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Kernel Mode Cryptographic Module|[5.1.2600.0][sp-241]|[241][certificate-241]|

## Windows 2000 SP3

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Base DSS Cryptographic Provider, Base Cryptographic Provider, DSS/Diffie-Hellman Enhanced Cryptographic Provider, and Enhanced Cryptographic Provider|[Base DSS: 5.0.2195.3665 (SP3), Base: 5.0.2195.3839 (SP3), DSS/DH Enh: 5.0.2195.3665 (SP3), Enh: 5.0.2195.3839 (SP3)][sp-103]|[103][certificate-103]|
|Kernel Mode Cryptographic Module (FIPS.SYS)|[5.0.2195.1569][sp-106]|[106][certificate-106]|

## Windows 2000 SP2

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Base DSS Cryptographic Provider, Base Cryptographic Provider, DSS/Diffie-Hellman Enhanced Cryptographic Provider, and Enhanced Cryptographic Provider|[Base DSS 5.0.2195.2228 (SP2), Base 5.0.2195.2228 (SP2), DSS/DH Enh 5.0.2195.2228 (SP2), Enh 5.0.2195.2228 (SP2)][sp-103]|[103][certificate-103]|
|Kernel Mode Cryptographic Module (FIPS.SYS)|[5.0.2195.1569][sp-106]|[106][certificate-106]|

## Windows 2000 SP1

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Base DSS Cryptographic Provider, Base Cryptographic Provider, DSS/Diffie-Hellman Enhanced Cryptographic Provider, and Enhanced Cryptographic Provider|[Base DSS 5.0.2150.1391 (SP1), Base 5.0.2150.1391 (SP1), DSS/DH Enh: 5.0.2150.1391 (SP1), Enh 5.0.2150.1391 (SP1)][sp-103]|[103][certificate-103]|

## Windows 2000

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Base DSS Cryptographic Provider, Base Cryptographic Provider, DSS/Diffie-Hellman Enhanced Cryptographic Provider, and Enhanced Cryptographic Provider|[5.0.2150.1][sp-76]|[76][certificate-76]|

## Windows 95 and Windows 98

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Base DSS Cryptographic Provider, Base Cryptographic Provider, DSS/Diffie-Hellman Enhanced Cryptographic Provider, and Enhanced Cryptographic Provider|[5.0.1877.6 and 5.0.1877.7][sp-75]|[75][certificate-75]|

## Windows NT 4.0

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Base Cryptographic Provider|[5.0.1877.6 and 5.0.1877.7][sp-68]|[68][certificate-68]|

---

<!-- Links -->

<!-- CMVP Certificates -->

[certificate-68]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/68
[certificate-75]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/75
[certificate-76]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/76
[certificate-103]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/103
[certificate-106]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/106
[certificate-238]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/238
[certificate-240]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/240
[certificate-241]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/241
[certificate-891]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/891
[certificate-893]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/893
[certificate-894]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/894
[certificate-947]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/947
[certificate-978]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/978
[certificate-979]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/979
[certificate-980]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/980
[certificate-989]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/989
[certificate-990]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/990
[certificate-997]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/997
[certificate-1000]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1000
[certificate-1001]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1001
[certificate-1002]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1002
[certificate-1003]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1003
[certificate-1319]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1319
[certificate-1326]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1326
[certificate-1327]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1327
[certificate-1328]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1328
[certificate-1329]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1329
[certificate-1330]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1330
[certificate-1331]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1331
[certificate-1332]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1332
[certificate-1891]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1891
[certificate-2351]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2351
[certificate-2352]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2352
[certificate-2353]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2353
[certificate-2354]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2354
[certificate-2355]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2355
[certificate-2356]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2356
[certificate-2357]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2357

<!-- Security Policies -->

[sp-68]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp68.pdf
[sp-75]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp75.pdf
[sp-76]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp76.pdf
[sp-103]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp103.pdf
[sp-106]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp106.pdf
[sp-238]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp238.pdf
[sp-240]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp240.pdf
[sp-241]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp241.pdf
[sp-891]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp891.pdf
[sp-893]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp893.pdf
[sp-894]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp894.pdf
[sp-947]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp947.pdf
[sp-978]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp978.pdf
[sp-979]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp979.pdf
[sp-980]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp980.pdf
[sp-989]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp989.pdf
[sp-990]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp990.pdf
[sp-997]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp997.pdf
[sp-1000]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1000.pdf
[sp-1002]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1002.pdf
[sp-1003]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1003.pdf
[sp-1319]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1319.pdf
[sp-1326]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1326.pdf
[sp-1327]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1327.pdf
[sp-1328]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1328.pdf
[sp-1329]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1329.pdf
[sp-1330]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1330.pdf
[sp-1331]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1331.pdf
[sp-1332]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1332.pdf
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

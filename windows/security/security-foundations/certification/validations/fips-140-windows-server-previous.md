---
title: FIPS 140 validated modules for previous Windows Server versions
description: This topic lists the completed FIPS 140 cryptographic module validations for versions of Windows Server prior to Windows Server 2016.
ms.date: 2/1/2024
ms.topic: reference
---

# FIPS 140 validated modules in previous Windows Server versions

The following tables list the completed FIPS 140 validations of cryptographic modules used in versions of Windows Server prior to Windows Server 2016, organized by major release of the operating system. The linked Security Policy document for each module provides details on the module capabilities and the policies the operator must follow to use the module in its FIPS approved mode of operation. For information on using the overall operating system in its FIPS approved mode, see [Use Windows in a FIPS approved mode of operation](../fips-140-validation.md#use-windows-in-a-fips-approved-mode-of-operation). For details on the FIPS approved algorithms used by each module, including CAVP algorithm certificates, see the module's linked Security Policy document or CMVP module certificate.

## Windows Server 2012 R2

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

## Windows Server 2012

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

## Windows Server 2008 R2

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|BitLocker Drive Encryption|[6.1.7600.16385, 6.1.7600.16429, 6.1.7600.16757, 6.1.7600.20536, 6.1.7600.20873, 6.1.7600.20897, 6.1.7600.20916, 6.1.7601.17514, 6.1.7601.17556, 6.1.7601.21634, 6.1.7601.21655 or 6.1.7601.21675][sp-1339]|[1339][certificate-1339]|
|Boot Manager (bootmgr)|[6.1.7600.16385 or 6.1.7601.17514][sp-1321]|[1321][certificate-1321]|
|Cryptographic Primitives Library (bcryptprimitives.dll)|[66.1.7600.16385 or 6.1.7601.17514][sp-1336]|[1336][certificate-1336]|
|Enhanced Cryptographic Provider (RSAENH)|[6.1.7600.16385][sp-1337]|[1337][certificate-1337]|
|Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)|[6.1.7600.16385][sp-1338]|[1338][certificate-1338]|
|Kernel Mode Cryptographic Primitives Library (cng.sys)|[6.1.7600.16385, 6.1.7600.16915, 6.1.7600.21092, 6.1.7601.17514, 6.1.7601.17919, 6.1.7601.17725, 6.1.7601.21861 and 6.1.7601.22076][sp-1335]|[1335][certificate-1335]|
|Winload OS Loader (winload.exe)|[6.1.7600.16385, 6.1.7600.16757, 6.1.7600.20897, 6.1.7600.20916, 6.1.7601.17514, 6.1.7601.17556, 6.1.7601.21655 and 6.1.7601.21675][sp-1333]|[1333][certificate-1333]|

## Windows Server 2008

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Boot Manager (bootmgr)|[6.0.6001.18000, 6.0.6002.18005 and 6.0.6002.22497][sp-1004]|[1004][certificate-1004]|
|Code Integrity (ci.dll)|[6.0.6001.18000 and 6.0.6002.18005][sp-1006]|[1006][certificate-1006]|
|Cryptographic Primitives Library (bcrypt.dll)|[6.0.6001.22202, 6.0.6002.18005 and 6.0.6002.22872][sp-1008]|[1008][certificate-1008]|
|Enhanced Cryptographic Provider (RSAENH)|[6.0.6001.22202 and 6.0.6002.18005][sp-1010]|[1010][certificate-1010]|
|Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)|[6.0.6001.18000 and 6.0.6002.18005][sp-1009]|[1009][certificate-1009]|
|Kernel Mode Security Support Provider Interface (ksecdd.sys)|[6.0.6001.18709, 6.0.6001.18272, 6.0.6001.18796, 6.0.6001.22202, 6.0.6001.22450, 6.0.6001.22987, 6.0.6001.23069, 6.0.6002.18005, 6.0.6002.18051, 6.0.6002.18541, 6.0.6002.18643, 6.0.6002.22152, 6.0.6002.22742 and 6.0.6002.22869][sp-1007]|[1007][certificate-1007]|
|Winload OS Loader (winload.exe)|[6.0.6001.18000, 6.0.6001.18606, 6.0.6001.22861, 6.0.6002.18005, 6.0.6002.18411, 6.0.6002.22497 and 6.0.6002.22596][sp-1005]|[1005][certificate-1005]|

## Windows Server 2003 SP2

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Enhanced Cryptographic Provider (RSAENH)|[5.2.3790.3959][sp-868]|[868][certificate-868]|
|Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)|[5.2.3790.3959][sp-875]|[875][certificate-875]|
|Kernel Mode Cryptographic Module (FIPS.SYS)|[5.2.3790.3959][sp-869]|[869][certificate-869]|

## Windows Server 2003 SP1

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Enhanced Cryptographic Provider (RSAENH)|[5.2.3790.1830 [Service Pack 1])][sp-382]|[382][certificate-382]|
|Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)|[5.2.3790.1830 [Service Pack 1]][sp-381]|[381][certificate-381]|
|Kernel Mode Cryptographic Module (FIPS.SYS)|[5.2.3790.1830 [SP1]][sp-405]|[405][certificate-405]|

## Windows Server 2003

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Enhanced Cryptographic Provider (RSAENH)|[5.2.3790.0][sp-382]|[382][certificate-382]|
|Enhanced DSS and Diffie-Hellman Cryptographic Provider (DSSENH)|[5.2.3790.0][sp-381]|[381][certificate-381]|
|Kernel Mode Cryptographic Module (FIPS.SYS)|[5.2.3790.0][sp-405]|[405][certificate-405]|

---

<!-- Links -->

<!-- CMVP Certificates -->

[certificate-381]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/381
[certificate-382]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/382
[certificate-405]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/405
[certificate-868]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/868
[certificate-869]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/869
[certificate-875]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/875
[certificate-1004]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1004
[certificate-1005]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1005
[certificate-1006]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1006
[certificate-1007]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1007
[certificate-1008]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1008
[certificate-1009]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1009
[certificate-1010]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1010
[certificate-1321]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/1321
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

<!-- Security Policies -->

[sp-381]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp381.pdf
[sp-382]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp382.pdf
[sp-405]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp405.pdf
[sp-868]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp868.pdf
[sp-869]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp869.pdf
[sp-875]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp875.pdf
[sp-1004]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1004.pdf
[sp-1005]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1005.pdf
[sp-1006]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1006.pdf
[sp-1007]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1007.pdf
[sp-1008]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1008.pdf
[sp-1009]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1009.pdf
[sp-1010]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1010.pdf
[sp-1321]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp1321.pdf
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
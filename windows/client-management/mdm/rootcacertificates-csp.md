---
title: RootCATrustedCertificates CSP
description: Learn more about the RootCATrustedCertificates CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 08/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- RootCATrustedCertificates-Begin -->
# RootCATrustedCertificates CSP

<!-- RootCATrustedCertificates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The RootCATrustedCertificates configuration service provider enables the enterprise to set the Root Certificate Authority (CA) certificates.

> [!NOTE]
> `./User` configuration is not supported for `RootCATrustedCertificates/Root`.
<!-- RootCATrustedCertificates-Editable-End -->

<!-- RootCATrustedCertificates-Tree-Begin -->
The following list shows the RootCATrustedCertificates configuration service provider nodes:

- ./Device/Vendor/MSFT/RootCATrustedCertificates
  - [CA](#deviceca)
    - [{CertHash}](#devicecacerthash)
      - [EncodedCertificate](#devicecacerthashencodedcertificate)
      - [IssuedBy](#devicecacerthashissuedby)
      - [IssuedTo](#devicecacerthashissuedto)
      - [TemplateName](#devicecacerthashtemplatename)
      - [ValidFrom](#devicecacerthashvalidfrom)
      - [ValidTo](#devicecacerthashvalidto)
  - [OemEsim](#deviceoemesim)
    - [{CertHash}](#deviceoemesimcerthash)
      - [EncodedCertificate](#deviceoemesimcerthashencodedcertificate)
      - [IssuedBy](#deviceoemesimcerthashissuedby)
      - [IssuedTo](#deviceoemesimcerthashissuedto)
      - [TemplateName](#deviceoemesimcerthashtemplatename)
      - [ValidFrom](#deviceoemesimcerthashvalidfrom)
      - [ValidTo](#deviceoemesimcerthashvalidto)
  - [Root](#deviceroot)
    - [{CertHash}](#devicerootcerthash)
      - [EncodedCertificate](#devicerootcerthashencodedcertificate)
      - [IssuedBy](#devicerootcerthashissuedby)
      - [IssuedTo](#devicerootcerthashissuedto)
      - [TemplateName](#devicerootcerthashtemplatename)
      - [ValidFrom](#devicerootcerthashvalidfrom)
      - [ValidTo](#devicerootcerthashvalidto)
  - [TrustedPeople](#devicetrustedpeople)
    - [{CertHash}](#devicetrustedpeoplecerthash)
      - [EncodedCertificate](#devicetrustedpeoplecerthashencodedcertificate)
      - [IssuedBy](#devicetrustedpeoplecerthashissuedby)
      - [IssuedTo](#devicetrustedpeoplecerthashissuedto)
      - [TemplateName](#devicetrustedpeoplecerthashtemplatename)
      - [ValidFrom](#devicetrustedpeoplecerthashvalidfrom)
      - [ValidTo](#devicetrustedpeoplecerthashvalidto)
  - [TrustedPublisher](#devicetrustedpublisher)
    - [{CertHash}](#devicetrustedpublishercerthash)
      - [EncodedCertificate](#devicetrustedpublishercerthashencodedcertificate)
      - [IssuedBy](#devicetrustedpublishercerthashissuedby)
      - [IssuedTo](#devicetrustedpublishercerthashissuedto)
      - [TemplateName](#devicetrustedpublishercerthashtemplatename)
      - [ValidFrom](#devicetrustedpublishercerthashvalidfrom)
      - [ValidTo](#devicetrustedpublishercerthashvalidto)
  - [UntrustedCertificates](#deviceuntrustedcertificates)
    - [{CertHash}](#deviceuntrustedcertificatescerthash)
      - [EncodedCertificate](#deviceuntrustedcertificatescerthashencodedcertificate)
      - [IssuedBy](#deviceuntrustedcertificatescerthashissuedby)
      - [IssuedTo](#deviceuntrustedcertificatescerthashissuedto)
      - [TemplateName](#deviceuntrustedcertificatescerthashtemplatename)
      - [ValidFrom](#deviceuntrustedcertificatescerthashvalidfrom)
      - [ValidTo](#deviceuntrustedcertificatescerthashvalidto)
- ./User/Vendor/MSFT/RootCATrustedCertificates
  - [CA](#userca)
    - [{CertHash}](#usercacerthash)
      - [EncodedCertificate](#usercacerthashencodedcertificate)
      - [IssuedBy](#usercacerthashissuedby)
      - [IssuedTo](#usercacerthashissuedto)
      - [TemplateName](#usercacerthashtemplatename)
      - [ValidFrom](#usercacerthashvalidfrom)
      - [ValidTo](#usercacerthashvalidto)
  - [OemEsim](#useroemesim)
    - [{CertHash}](#useroemesimcerthash)
      - [EncodedCertificate](#useroemesimcerthashencodedcertificate)
      - [IssuedBy](#useroemesimcerthashissuedby)
      - [IssuedTo](#useroemesimcerthashissuedto)
      - [TemplateName](#useroemesimcerthashtemplatename)
      - [ValidFrom](#useroemesimcerthashvalidfrom)
      - [ValidTo](#useroemesimcerthashvalidto)
  - [TrustedPeople](#usertrustedpeople)
    - [{CertHash}](#usertrustedpeoplecerthash)
      - [EncodedCertificate](#usertrustedpeoplecerthashencodedcertificate)
      - [IssuedBy](#usertrustedpeoplecerthashissuedby)
      - [IssuedTo](#usertrustedpeoplecerthashissuedto)
      - [TemplateName](#usertrustedpeoplecerthashtemplatename)
      - [ValidFrom](#usertrustedpeoplecerthashvalidfrom)
      - [ValidTo](#usertrustedpeoplecerthashvalidto)
  - [TrustedPublisher](#usertrustedpublisher)
    - [{CertHash}](#usertrustedpublishercerthash)
      - [EncodedCertificate](#usertrustedpublishercerthashencodedcertificate)
      - [IssuedBy](#usertrustedpublishercerthashissuedby)
      - [IssuedTo](#usertrustedpublishercerthashissuedto)
      - [TemplateName](#usertrustedpublishercerthashtemplatename)
      - [ValidFrom](#usertrustedpublishercerthashvalidfrom)
      - [ValidTo](#usertrustedpublishercerthashvalidto)
  - [UntrustedCertificates](#useruntrustedcertificates)
    - [{CertHash}](#useruntrustedcertificatescerthash)
      - [EncodedCertificate](#useruntrustedcertificatescerthashencodedcertificate)
      - [IssuedBy](#useruntrustedcertificatescerthashissuedby)
      - [IssuedTo](#useruntrustedcertificatescerthashissuedto)
      - [TemplateName](#useruntrustedcertificatescerthashtemplatename)
      - [ValidFrom](#useruntrustedcertificatescerthashvalidfrom)
      - [ValidTo](#useruntrustedcertificatescerthashvalidto)
<!-- RootCATrustedCertificates-Tree-End -->

<!-- Device-CA-Begin -->
## Device/CA

<!-- Device-CA-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-Applicability-End -->

<!-- Device-CA-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/CA
```
<!-- Device-CA-OmaUri-End -->

<!-- Device-CA-Description-Begin -->
<!-- Description-Source-DDF -->
Node for CA certificates.
<!-- Device-CA-Description-End -->

<!-- Device-CA-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CA-Editable-End -->

<!-- Device-CA-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-CA-DFProperties-End -->

<!-- Device-CA-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CA-Examples-End -->

<!-- Device-CA-End -->

<!-- Device-CA-{CertHash}-Begin -->
### Device/CA/{CertHash}

<!-- Device-CA-{CertHash}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-{CertHash}-Applicability-End -->

<!-- Device-CA-{CertHash}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/CA/{CertHash}
```
<!-- Device-CA-{CertHash}-OmaUri-End -->

<!-- Device-CA-{CertHash}-Description-Begin -->
<!-- Description-Source-DDF -->
Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.
<!-- Device-CA-{CertHash}-Description-End -->

<!-- Device-CA-{CertHash}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CA-{CertHash}-Editable-End -->

<!-- Device-CA-{CertHash}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Delete, Get |
| Dynamic Node Naming | UniqueName: Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.  |
<!-- Device-CA-{CertHash}-DFProperties-End -->

<!-- Device-CA-{CertHash}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CA-{CertHash}-Examples-End -->

<!-- Device-CA-{CertHash}-End -->

<!-- Device-CA-{CertHash}-EncodedCertificate-Begin -->
#### Device/CA/{CertHash}/EncodedCertificate

<!-- Device-CA-{CertHash}-EncodedCertificate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-{CertHash}-EncodedCertificate-Applicability-End -->

<!-- Device-CA-{CertHash}-EncodedCertificate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/CA/{CertHash}/EncodedCertificate
```
<!-- Device-CA-{CertHash}-EncodedCertificate-OmaUri-End -->

<!-- Device-CA-{CertHash}-EncodedCertificate-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value can't include extra formatting characters such as embedded linefeeds, etc.
<!-- Device-CA-{CertHash}-EncodedCertificate-Description-End -->

<!-- Device-CA-{CertHash}-EncodedCertificate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CA-{CertHash}-EncodedCertificate-Editable-End -->

<!-- Device-CA-{CertHash}-EncodedCertificate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Add, Get, Replace |
<!-- Device-CA-{CertHash}-EncodedCertificate-DFProperties-End -->

<!-- Device-CA-{CertHash}-EncodedCertificate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CA-{CertHash}-EncodedCertificate-Examples-End -->

<!-- Device-CA-{CertHash}-EncodedCertificate-End -->

<!-- Device-CA-{CertHash}-IssuedBy-Begin -->
#### Device/CA/{CertHash}/IssuedBy

<!-- Device-CA-{CertHash}-IssuedBy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-{CertHash}-IssuedBy-Applicability-End -->

<!-- Device-CA-{CertHash}-IssuedBy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/CA/{CertHash}/IssuedBy
```
<!-- Device-CA-{CertHash}-IssuedBy-OmaUri-End -->

<!-- Device-CA-{CertHash}-IssuedBy-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate issuer. This is equivalent to the Issuer member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- Device-CA-{CertHash}-IssuedBy-Description-End -->

<!-- Device-CA-{CertHash}-IssuedBy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CA-{CertHash}-IssuedBy-Editable-End -->

<!-- Device-CA-{CertHash}-IssuedBy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-CA-{CertHash}-IssuedBy-DFProperties-End -->

<!-- Device-CA-{CertHash}-IssuedBy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CA-{CertHash}-IssuedBy-Examples-End -->

<!-- Device-CA-{CertHash}-IssuedBy-End -->

<!-- Device-CA-{CertHash}-IssuedTo-Begin -->
#### Device/CA/{CertHash}/IssuedTo

<!-- Device-CA-{CertHash}-IssuedTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-{CertHash}-IssuedTo-Applicability-End -->

<!-- Device-CA-{CertHash}-IssuedTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/CA/{CertHash}/IssuedTo
```
<!-- Device-CA-{CertHash}-IssuedTo-OmaUri-End -->

<!-- Device-CA-{CertHash}-IssuedTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate subject. This is equivalent to the Subject member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- Device-CA-{CertHash}-IssuedTo-Description-End -->

<!-- Device-CA-{CertHash}-IssuedTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CA-{CertHash}-IssuedTo-Editable-End -->

<!-- Device-CA-{CertHash}-IssuedTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-CA-{CertHash}-IssuedTo-DFProperties-End -->

<!-- Device-CA-{CertHash}-IssuedTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CA-{CertHash}-IssuedTo-Examples-End -->

<!-- Device-CA-{CertHash}-IssuedTo-End -->

<!-- Device-CA-{CertHash}-TemplateName-Begin -->
#### Device/CA/{CertHash}/TemplateName

<!-- Device-CA-{CertHash}-TemplateName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-{CertHash}-TemplateName-Applicability-End -->

<!-- Device-CA-{CertHash}-TemplateName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/CA/{CertHash}/TemplateName
```
<!-- Device-CA-{CertHash}-TemplateName-OmaUri-End -->

<!-- Device-CA-{CertHash}-TemplateName-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the certificate template name. Supported operation is Get.
<!-- Device-CA-{CertHash}-TemplateName-Description-End -->

<!-- Device-CA-{CertHash}-TemplateName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CA-{CertHash}-TemplateName-Editable-End -->

<!-- Device-CA-{CertHash}-TemplateName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-CA-{CertHash}-TemplateName-DFProperties-End -->

<!-- Device-CA-{CertHash}-TemplateName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CA-{CertHash}-TemplateName-Examples-End -->

<!-- Device-CA-{CertHash}-TemplateName-End -->

<!-- Device-CA-{CertHash}-ValidFrom-Begin -->
#### Device/CA/{CertHash}/ValidFrom

<!-- Device-CA-{CertHash}-ValidFrom-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-{CertHash}-ValidFrom-Applicability-End -->

<!-- Device-CA-{CertHash}-ValidFrom-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/CA/{CertHash}/ValidFrom
```
<!-- Device-CA-{CertHash}-ValidFrom-OmaUri-End -->

<!-- Device-CA-{CertHash}-ValidFrom-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.
<!-- Device-CA-{CertHash}-ValidFrom-Description-End -->

<!-- Device-CA-{CertHash}-ValidFrom-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CA-{CertHash}-ValidFrom-Editable-End -->

<!-- Device-CA-{CertHash}-ValidFrom-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-CA-{CertHash}-ValidFrom-DFProperties-End -->

<!-- Device-CA-{CertHash}-ValidFrom-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CA-{CertHash}-ValidFrom-Examples-End -->

<!-- Device-CA-{CertHash}-ValidFrom-End -->

<!-- Device-CA-{CertHash}-ValidTo-Begin -->
#### Device/CA/{CertHash}/ValidTo

<!-- Device-CA-{CertHash}-ValidTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-{CertHash}-ValidTo-Applicability-End -->

<!-- Device-CA-{CertHash}-ValidTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/CA/{CertHash}/ValidTo
```
<!-- Device-CA-{CertHash}-ValidTo-OmaUri-End -->

<!-- Device-CA-{CertHash}-ValidTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure.
<!-- Device-CA-{CertHash}-ValidTo-Description-End -->

<!-- Device-CA-{CertHash}-ValidTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CA-{CertHash}-ValidTo-Editable-End -->

<!-- Device-CA-{CertHash}-ValidTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-CA-{CertHash}-ValidTo-DFProperties-End -->

<!-- Device-CA-{CertHash}-ValidTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CA-{CertHash}-ValidTo-Examples-End -->

<!-- Device-CA-{CertHash}-ValidTo-End -->

<!-- Device-OemEsim-Begin -->
## Device/OemEsim

<!-- Device-OemEsim-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-OemEsim-Applicability-End -->

<!-- Device-OemEsim-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/OemEsim
```
<!-- Device-OemEsim-OmaUri-End -->

<!-- Device-OemEsim-Description-Begin -->
<!-- Description-Source-DDF -->
Node for OEM eSIM certificates.
<!-- Device-OemEsim-Description-End -->

<!-- Device-OemEsim-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-OemEsim-Editable-End -->

<!-- Device-OemEsim-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-OemEsim-DFProperties-End -->

<!-- Device-OemEsim-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-OemEsim-Examples-End -->

<!-- Device-OemEsim-End -->

<!-- Device-OemEsim-{CertHash}-Begin -->
### Device/OemEsim/{CertHash}

<!-- Device-OemEsim-{CertHash}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-OemEsim-{CertHash}-Applicability-End -->

<!-- Device-OemEsim-{CertHash}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/OemEsim/{CertHash}
```
<!-- Device-OemEsim-{CertHash}-OmaUri-End -->

<!-- Device-OemEsim-{CertHash}-Description-Begin -->
<!-- Description-Source-DDF -->
Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.
<!-- Device-OemEsim-{CertHash}-Description-End -->

<!-- Device-OemEsim-{CertHash}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-OemEsim-{CertHash}-Editable-End -->

<!-- Device-OemEsim-{CertHash}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Delete, Get |
| Dynamic Node Naming | UniqueName: Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.  |
<!-- Device-OemEsim-{CertHash}-DFProperties-End -->

<!-- Device-OemEsim-{CertHash}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-OemEsim-{CertHash}-Examples-End -->

<!-- Device-OemEsim-{CertHash}-End -->

<!-- Device-OemEsim-{CertHash}-EncodedCertificate-Begin -->
#### Device/OemEsim/{CertHash}/EncodedCertificate

<!-- Device-OemEsim-{CertHash}-EncodedCertificate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-OemEsim-{CertHash}-EncodedCertificate-Applicability-End -->

<!-- Device-OemEsim-{CertHash}-EncodedCertificate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/OemEsim/{CertHash}/EncodedCertificate
```
<!-- Device-OemEsim-{CertHash}-EncodedCertificate-OmaUri-End -->

<!-- Device-OemEsim-{CertHash}-EncodedCertificate-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value can't include extra formatting characters such as embedded linefeeds, etc.
<!-- Device-OemEsim-{CertHash}-EncodedCertificate-Description-End -->

<!-- Device-OemEsim-{CertHash}-EncodedCertificate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-OemEsim-{CertHash}-EncodedCertificate-Editable-End -->

<!-- Device-OemEsim-{CertHash}-EncodedCertificate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Add, Get, Replace |
<!-- Device-OemEsim-{CertHash}-EncodedCertificate-DFProperties-End -->

<!-- Device-OemEsim-{CertHash}-EncodedCertificate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-OemEsim-{CertHash}-EncodedCertificate-Examples-End -->

<!-- Device-OemEsim-{CertHash}-EncodedCertificate-End -->

<!-- Device-OemEsim-{CertHash}-IssuedBy-Begin -->
#### Device/OemEsim/{CertHash}/IssuedBy

<!-- Device-OemEsim-{CertHash}-IssuedBy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-OemEsim-{CertHash}-IssuedBy-Applicability-End -->

<!-- Device-OemEsim-{CertHash}-IssuedBy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/OemEsim/{CertHash}/IssuedBy
```
<!-- Device-OemEsim-{CertHash}-IssuedBy-OmaUri-End -->

<!-- Device-OemEsim-{CertHash}-IssuedBy-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate issuer. This is equivalent to the Issuer member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- Device-OemEsim-{CertHash}-IssuedBy-Description-End -->

<!-- Device-OemEsim-{CertHash}-IssuedBy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-OemEsim-{CertHash}-IssuedBy-Editable-End -->

<!-- Device-OemEsim-{CertHash}-IssuedBy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-OemEsim-{CertHash}-IssuedBy-DFProperties-End -->

<!-- Device-OemEsim-{CertHash}-IssuedBy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-OemEsim-{CertHash}-IssuedBy-Examples-End -->

<!-- Device-OemEsim-{CertHash}-IssuedBy-End -->

<!-- Device-OemEsim-{CertHash}-IssuedTo-Begin -->
#### Device/OemEsim/{CertHash}/IssuedTo

<!-- Device-OemEsim-{CertHash}-IssuedTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-OemEsim-{CertHash}-IssuedTo-Applicability-End -->

<!-- Device-OemEsim-{CertHash}-IssuedTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/OemEsim/{CertHash}/IssuedTo
```
<!-- Device-OemEsim-{CertHash}-IssuedTo-OmaUri-End -->

<!-- Device-OemEsim-{CertHash}-IssuedTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate subject. This is equivalent to the Subject member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- Device-OemEsim-{CertHash}-IssuedTo-Description-End -->

<!-- Device-OemEsim-{CertHash}-IssuedTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-OemEsim-{CertHash}-IssuedTo-Editable-End -->

<!-- Device-OemEsim-{CertHash}-IssuedTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-OemEsim-{CertHash}-IssuedTo-DFProperties-End -->

<!-- Device-OemEsim-{CertHash}-IssuedTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-OemEsim-{CertHash}-IssuedTo-Examples-End -->

<!-- Device-OemEsim-{CertHash}-IssuedTo-End -->

<!-- Device-OemEsim-{CertHash}-TemplateName-Begin -->
#### Device/OemEsim/{CertHash}/TemplateName

<!-- Device-OemEsim-{CertHash}-TemplateName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-OemEsim-{CertHash}-TemplateName-Applicability-End -->

<!-- Device-OemEsim-{CertHash}-TemplateName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/OemEsim/{CertHash}/TemplateName
```
<!-- Device-OemEsim-{CertHash}-TemplateName-OmaUri-End -->

<!-- Device-OemEsim-{CertHash}-TemplateName-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the certificate template name. Supported operation is Get.
<!-- Device-OemEsim-{CertHash}-TemplateName-Description-End -->

<!-- Device-OemEsim-{CertHash}-TemplateName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-OemEsim-{CertHash}-TemplateName-Editable-End -->

<!-- Device-OemEsim-{CertHash}-TemplateName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-OemEsim-{CertHash}-TemplateName-DFProperties-End -->

<!-- Device-OemEsim-{CertHash}-TemplateName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-OemEsim-{CertHash}-TemplateName-Examples-End -->

<!-- Device-OemEsim-{CertHash}-TemplateName-End -->

<!-- Device-OemEsim-{CertHash}-ValidFrom-Begin -->
#### Device/OemEsim/{CertHash}/ValidFrom

<!-- Device-OemEsim-{CertHash}-ValidFrom-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-OemEsim-{CertHash}-ValidFrom-Applicability-End -->

<!-- Device-OemEsim-{CertHash}-ValidFrom-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/OemEsim/{CertHash}/ValidFrom
```
<!-- Device-OemEsim-{CertHash}-ValidFrom-OmaUri-End -->

<!-- Device-OemEsim-{CertHash}-ValidFrom-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.
<!-- Device-OemEsim-{CertHash}-ValidFrom-Description-End -->

<!-- Device-OemEsim-{CertHash}-ValidFrom-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-OemEsim-{CertHash}-ValidFrom-Editable-End -->

<!-- Device-OemEsim-{CertHash}-ValidFrom-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-OemEsim-{CertHash}-ValidFrom-DFProperties-End -->

<!-- Device-OemEsim-{CertHash}-ValidFrom-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-OemEsim-{CertHash}-ValidFrom-Examples-End -->

<!-- Device-OemEsim-{CertHash}-ValidFrom-End -->

<!-- Device-OemEsim-{CertHash}-ValidTo-Begin -->
#### Device/OemEsim/{CertHash}/ValidTo

<!-- Device-OemEsim-{CertHash}-ValidTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-OemEsim-{CertHash}-ValidTo-Applicability-End -->

<!-- Device-OemEsim-{CertHash}-ValidTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/OemEsim/{CertHash}/ValidTo
```
<!-- Device-OemEsim-{CertHash}-ValidTo-OmaUri-End -->

<!-- Device-OemEsim-{CertHash}-ValidTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure.
<!-- Device-OemEsim-{CertHash}-ValidTo-Description-End -->

<!-- Device-OemEsim-{CertHash}-ValidTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-OemEsim-{CertHash}-ValidTo-Editable-End -->

<!-- Device-OemEsim-{CertHash}-ValidTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-OemEsim-{CertHash}-ValidTo-DFProperties-End -->

<!-- Device-OemEsim-{CertHash}-ValidTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-OemEsim-{CertHash}-ValidTo-Examples-End -->

<!-- Device-OemEsim-{CertHash}-ValidTo-End -->

<!-- Device-Root-Begin -->
## Device/Root

<!-- Device-Root-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Root-Applicability-End -->

<!-- Device-Root-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/Root
```
<!-- Device-Root-OmaUri-End -->

<!-- Device-Root-Description-Begin -->
<!-- Description-Source-DDF -->
Defines the certificate store that contains root, or self-signed certificates, in this case, the computer store.
<!-- Device-Root-Description-End -->

<!-- Device-Root-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Root-Editable-End -->

<!-- Device-Root-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Root-DFProperties-End -->

<!-- Device-Root-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Root-Examples-End -->

<!-- Device-Root-End -->

<!-- Device-Root-{CertHash}-Begin -->
### Device/Root/{CertHash}

<!-- Device-Root-{CertHash}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Root-{CertHash}-Applicability-End -->

<!-- Device-Root-{CertHash}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/Root/{CertHash}
```
<!-- Device-Root-{CertHash}-OmaUri-End -->

<!-- Device-Root-{CertHash}-Description-Begin -->
<!-- Description-Source-DDF -->
Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.
<!-- Device-Root-{CertHash}-Description-End -->

<!-- Device-Root-{CertHash}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Root-{CertHash}-Editable-End -->

<!-- Device-Root-{CertHash}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Delete, Get |
<!-- Device-Root-{CertHash}-DFProperties-End -->

<!-- Device-Root-{CertHash}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Root-{CertHash}-Examples-End -->

<!-- Device-Root-{CertHash}-End -->

<!-- Device-Root-{CertHash}-EncodedCertificate-Begin -->
#### Device/Root/{CertHash}/EncodedCertificate

<!-- Device-Root-{CertHash}-EncodedCertificate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Root-{CertHash}-EncodedCertificate-Applicability-End -->

<!-- Device-Root-{CertHash}-EncodedCertificate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/Root/{CertHash}/EncodedCertificate
```
<!-- Device-Root-{CertHash}-EncodedCertificate-OmaUri-End -->

<!-- Device-Root-{CertHash}-EncodedCertificate-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value can't include extra formatting characters such as embedded linefeeds, etc.
<!-- Device-Root-{CertHash}-EncodedCertificate-Description-End -->

<!-- Device-Root-{CertHash}-EncodedCertificate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Root-{CertHash}-EncodedCertificate-Editable-End -->

<!-- Device-Root-{CertHash}-EncodedCertificate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Add, Get, Replace |
| Dynamic Node Naming | UniqueName: Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.  |
<!-- Device-Root-{CertHash}-EncodedCertificate-DFProperties-End -->

<!-- Device-Root-{CertHash}-EncodedCertificate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Root-{CertHash}-EncodedCertificate-Examples-End -->

<!-- Device-Root-{CertHash}-EncodedCertificate-End -->

<!-- Device-Root-{CertHash}-IssuedBy-Begin -->
#### Device/Root/{CertHash}/IssuedBy

<!-- Device-Root-{CertHash}-IssuedBy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Root-{CertHash}-IssuedBy-Applicability-End -->

<!-- Device-Root-{CertHash}-IssuedBy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/Root/{CertHash}/IssuedBy
```
<!-- Device-Root-{CertHash}-IssuedBy-OmaUri-End -->

<!-- Device-Root-{CertHash}-IssuedBy-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate issuer. This is equivalent to the Issuer member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- Device-Root-{CertHash}-IssuedBy-Description-End -->

<!-- Device-Root-{CertHash}-IssuedBy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Root-{CertHash}-IssuedBy-Editable-End -->

<!-- Device-Root-{CertHash}-IssuedBy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Root-{CertHash}-IssuedBy-DFProperties-End -->

<!-- Device-Root-{CertHash}-IssuedBy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Root-{CertHash}-IssuedBy-Examples-End -->

<!-- Device-Root-{CertHash}-IssuedBy-End -->

<!-- Device-Root-{CertHash}-IssuedTo-Begin -->
#### Device/Root/{CertHash}/IssuedTo

<!-- Device-Root-{CertHash}-IssuedTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Root-{CertHash}-IssuedTo-Applicability-End -->

<!-- Device-Root-{CertHash}-IssuedTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/Root/{CertHash}/IssuedTo
```
<!-- Device-Root-{CertHash}-IssuedTo-OmaUri-End -->

<!-- Device-Root-{CertHash}-IssuedTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate subject. This is equivalent to the Subject member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- Device-Root-{CertHash}-IssuedTo-Description-End -->

<!-- Device-Root-{CertHash}-IssuedTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Root-{CertHash}-IssuedTo-Editable-End -->

<!-- Device-Root-{CertHash}-IssuedTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Root-{CertHash}-IssuedTo-DFProperties-End -->

<!-- Device-Root-{CertHash}-IssuedTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Root-{CertHash}-IssuedTo-Examples-End -->

<!-- Device-Root-{CertHash}-IssuedTo-End -->

<!-- Device-Root-{CertHash}-TemplateName-Begin -->
#### Device/Root/{CertHash}/TemplateName

<!-- Device-Root-{CertHash}-TemplateName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Root-{CertHash}-TemplateName-Applicability-End -->

<!-- Device-Root-{CertHash}-TemplateName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/Root/{CertHash}/TemplateName
```
<!-- Device-Root-{CertHash}-TemplateName-OmaUri-End -->

<!-- Device-Root-{CertHash}-TemplateName-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the certificate template name. Supported operation is Get.
<!-- Device-Root-{CertHash}-TemplateName-Description-End -->

<!-- Device-Root-{CertHash}-TemplateName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Root-{CertHash}-TemplateName-Editable-End -->

<!-- Device-Root-{CertHash}-TemplateName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Root-{CertHash}-TemplateName-DFProperties-End -->

<!-- Device-Root-{CertHash}-TemplateName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Root-{CertHash}-TemplateName-Examples-End -->

<!-- Device-Root-{CertHash}-TemplateName-End -->

<!-- Device-Root-{CertHash}-ValidFrom-Begin -->
#### Device/Root/{CertHash}/ValidFrom

<!-- Device-Root-{CertHash}-ValidFrom-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Root-{CertHash}-ValidFrom-Applicability-End -->

<!-- Device-Root-{CertHash}-ValidFrom-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/Root/{CertHash}/ValidFrom
```
<!-- Device-Root-{CertHash}-ValidFrom-OmaUri-End -->

<!-- Device-Root-{CertHash}-ValidFrom-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.
<!-- Device-Root-{CertHash}-ValidFrom-Description-End -->

<!-- Device-Root-{CertHash}-ValidFrom-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Root-{CertHash}-ValidFrom-Editable-End -->

<!-- Device-Root-{CertHash}-ValidFrom-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Root-{CertHash}-ValidFrom-DFProperties-End -->

<!-- Device-Root-{CertHash}-ValidFrom-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Root-{CertHash}-ValidFrom-Examples-End -->

<!-- Device-Root-{CertHash}-ValidFrom-End -->

<!-- Device-Root-{CertHash}-ValidTo-Begin -->
#### Device/Root/{CertHash}/ValidTo

<!-- Device-Root-{CertHash}-ValidTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Root-{CertHash}-ValidTo-Applicability-End -->

<!-- Device-Root-{CertHash}-ValidTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/Root/{CertHash}/ValidTo
```
<!-- Device-Root-{CertHash}-ValidTo-OmaUri-End -->

<!-- Device-Root-{CertHash}-ValidTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure.
<!-- Device-Root-{CertHash}-ValidTo-Description-End -->

<!-- Device-Root-{CertHash}-ValidTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Root-{CertHash}-ValidTo-Editable-End -->

<!-- Device-Root-{CertHash}-ValidTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Root-{CertHash}-ValidTo-DFProperties-End -->

<!-- Device-Root-{CertHash}-ValidTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Root-{CertHash}-ValidTo-Examples-End -->

<!-- Device-Root-{CertHash}-ValidTo-End -->

<!-- Device-TrustedPeople-Begin -->
## Device/TrustedPeople

<!-- Device-TrustedPeople-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-TrustedPeople-Applicability-End -->

<!-- Device-TrustedPeople-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/TrustedPeople
```
<!-- Device-TrustedPeople-OmaUri-End -->

<!-- Device-TrustedPeople-Description-Begin -->
<!-- Description-Source-DDF -->
Node for trusted people certificates.
<!-- Device-TrustedPeople-Description-End -->

<!-- Device-TrustedPeople-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TrustedPeople-Editable-End -->

<!-- Device-TrustedPeople-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-TrustedPeople-DFProperties-End -->

<!-- Device-TrustedPeople-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TrustedPeople-Examples-End -->

<!-- Device-TrustedPeople-End -->

<!-- Device-TrustedPeople-{CertHash}-Begin -->
### Device/TrustedPeople/{CertHash}

<!-- Device-TrustedPeople-{CertHash}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-TrustedPeople-{CertHash}-Applicability-End -->

<!-- Device-TrustedPeople-{CertHash}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/TrustedPeople/{CertHash}
```
<!-- Device-TrustedPeople-{CertHash}-OmaUri-End -->

<!-- Device-TrustedPeople-{CertHash}-Description-Begin -->
<!-- Description-Source-DDF -->
Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.
<!-- Device-TrustedPeople-{CertHash}-Description-End -->

<!-- Device-TrustedPeople-{CertHash}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TrustedPeople-{CertHash}-Editable-End -->

<!-- Device-TrustedPeople-{CertHash}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Delete, Get |
| Dynamic Node Naming | UniqueName: Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.  |
<!-- Device-TrustedPeople-{CertHash}-DFProperties-End -->

<!-- Device-TrustedPeople-{CertHash}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TrustedPeople-{CertHash}-Examples-End -->

<!-- Device-TrustedPeople-{CertHash}-End -->

<!-- Device-TrustedPeople-{CertHash}-EncodedCertificate-Begin -->
#### Device/TrustedPeople/{CertHash}/EncodedCertificate

<!-- Device-TrustedPeople-{CertHash}-EncodedCertificate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-TrustedPeople-{CertHash}-EncodedCertificate-Applicability-End -->

<!-- Device-TrustedPeople-{CertHash}-EncodedCertificate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/TrustedPeople/{CertHash}/EncodedCertificate
```
<!-- Device-TrustedPeople-{CertHash}-EncodedCertificate-OmaUri-End -->

<!-- Device-TrustedPeople-{CertHash}-EncodedCertificate-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value can't include extra formatting characters such as embedded linefeeds, etc.
<!-- Device-TrustedPeople-{CertHash}-EncodedCertificate-Description-End -->

<!-- Device-TrustedPeople-{CertHash}-EncodedCertificate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TrustedPeople-{CertHash}-EncodedCertificate-Editable-End -->

<!-- Device-TrustedPeople-{CertHash}-EncodedCertificate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Add, Get, Replace |
<!-- Device-TrustedPeople-{CertHash}-EncodedCertificate-DFProperties-End -->

<!-- Device-TrustedPeople-{CertHash}-EncodedCertificate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TrustedPeople-{CertHash}-EncodedCertificate-Examples-End -->

<!-- Device-TrustedPeople-{CertHash}-EncodedCertificate-End -->

<!-- Device-TrustedPeople-{CertHash}-IssuedBy-Begin -->
#### Device/TrustedPeople/{CertHash}/IssuedBy

<!-- Device-TrustedPeople-{CertHash}-IssuedBy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-TrustedPeople-{CertHash}-IssuedBy-Applicability-End -->

<!-- Device-TrustedPeople-{CertHash}-IssuedBy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/TrustedPeople/{CertHash}/IssuedBy
```
<!-- Device-TrustedPeople-{CertHash}-IssuedBy-OmaUri-End -->

<!-- Device-TrustedPeople-{CertHash}-IssuedBy-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate issuer. This is equivalent to the Issuer member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- Device-TrustedPeople-{CertHash}-IssuedBy-Description-End -->

<!-- Device-TrustedPeople-{CertHash}-IssuedBy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TrustedPeople-{CertHash}-IssuedBy-Editable-End -->

<!-- Device-TrustedPeople-{CertHash}-IssuedBy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-TrustedPeople-{CertHash}-IssuedBy-DFProperties-End -->

<!-- Device-TrustedPeople-{CertHash}-IssuedBy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TrustedPeople-{CertHash}-IssuedBy-Examples-End -->

<!-- Device-TrustedPeople-{CertHash}-IssuedBy-End -->

<!-- Device-TrustedPeople-{CertHash}-IssuedTo-Begin -->
#### Device/TrustedPeople/{CertHash}/IssuedTo

<!-- Device-TrustedPeople-{CertHash}-IssuedTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-TrustedPeople-{CertHash}-IssuedTo-Applicability-End -->

<!-- Device-TrustedPeople-{CertHash}-IssuedTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/TrustedPeople/{CertHash}/IssuedTo
```
<!-- Device-TrustedPeople-{CertHash}-IssuedTo-OmaUri-End -->

<!-- Device-TrustedPeople-{CertHash}-IssuedTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate subject. This is equivalent to the Subject member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- Device-TrustedPeople-{CertHash}-IssuedTo-Description-End -->

<!-- Device-TrustedPeople-{CertHash}-IssuedTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TrustedPeople-{CertHash}-IssuedTo-Editable-End -->

<!-- Device-TrustedPeople-{CertHash}-IssuedTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-TrustedPeople-{CertHash}-IssuedTo-DFProperties-End -->

<!-- Device-TrustedPeople-{CertHash}-IssuedTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TrustedPeople-{CertHash}-IssuedTo-Examples-End -->

<!-- Device-TrustedPeople-{CertHash}-IssuedTo-End -->

<!-- Device-TrustedPeople-{CertHash}-TemplateName-Begin -->
#### Device/TrustedPeople/{CertHash}/TemplateName

<!-- Device-TrustedPeople-{CertHash}-TemplateName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-TrustedPeople-{CertHash}-TemplateName-Applicability-End -->

<!-- Device-TrustedPeople-{CertHash}-TemplateName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/TrustedPeople/{CertHash}/TemplateName
```
<!-- Device-TrustedPeople-{CertHash}-TemplateName-OmaUri-End -->

<!-- Device-TrustedPeople-{CertHash}-TemplateName-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the certificate template name. Supported operation is Get.
<!-- Device-TrustedPeople-{CertHash}-TemplateName-Description-End -->

<!-- Device-TrustedPeople-{CertHash}-TemplateName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TrustedPeople-{CertHash}-TemplateName-Editable-End -->

<!-- Device-TrustedPeople-{CertHash}-TemplateName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-TrustedPeople-{CertHash}-TemplateName-DFProperties-End -->

<!-- Device-TrustedPeople-{CertHash}-TemplateName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TrustedPeople-{CertHash}-TemplateName-Examples-End -->

<!-- Device-TrustedPeople-{CertHash}-TemplateName-End -->

<!-- Device-TrustedPeople-{CertHash}-ValidFrom-Begin -->
#### Device/TrustedPeople/{CertHash}/ValidFrom

<!-- Device-TrustedPeople-{CertHash}-ValidFrom-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-TrustedPeople-{CertHash}-ValidFrom-Applicability-End -->

<!-- Device-TrustedPeople-{CertHash}-ValidFrom-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/TrustedPeople/{CertHash}/ValidFrom
```
<!-- Device-TrustedPeople-{CertHash}-ValidFrom-OmaUri-End -->

<!-- Device-TrustedPeople-{CertHash}-ValidFrom-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.
<!-- Device-TrustedPeople-{CertHash}-ValidFrom-Description-End -->

<!-- Device-TrustedPeople-{CertHash}-ValidFrom-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TrustedPeople-{CertHash}-ValidFrom-Editable-End -->

<!-- Device-TrustedPeople-{CertHash}-ValidFrom-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-TrustedPeople-{CertHash}-ValidFrom-DFProperties-End -->

<!-- Device-TrustedPeople-{CertHash}-ValidFrom-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TrustedPeople-{CertHash}-ValidFrom-Examples-End -->

<!-- Device-TrustedPeople-{CertHash}-ValidFrom-End -->

<!-- Device-TrustedPeople-{CertHash}-ValidTo-Begin -->
#### Device/TrustedPeople/{CertHash}/ValidTo

<!-- Device-TrustedPeople-{CertHash}-ValidTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-TrustedPeople-{CertHash}-ValidTo-Applicability-End -->

<!-- Device-TrustedPeople-{CertHash}-ValidTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/TrustedPeople/{CertHash}/ValidTo
```
<!-- Device-TrustedPeople-{CertHash}-ValidTo-OmaUri-End -->

<!-- Device-TrustedPeople-{CertHash}-ValidTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure.
<!-- Device-TrustedPeople-{CertHash}-ValidTo-Description-End -->

<!-- Device-TrustedPeople-{CertHash}-ValidTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TrustedPeople-{CertHash}-ValidTo-Editable-End -->

<!-- Device-TrustedPeople-{CertHash}-ValidTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-TrustedPeople-{CertHash}-ValidTo-DFProperties-End -->

<!-- Device-TrustedPeople-{CertHash}-ValidTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TrustedPeople-{CertHash}-ValidTo-Examples-End -->

<!-- Device-TrustedPeople-{CertHash}-ValidTo-End -->

<!-- Device-TrustedPublisher-Begin -->
## Device/TrustedPublisher

<!-- Device-TrustedPublisher-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-TrustedPublisher-Applicability-End -->

<!-- Device-TrustedPublisher-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/TrustedPublisher
```
<!-- Device-TrustedPublisher-OmaUri-End -->

<!-- Device-TrustedPublisher-Description-Begin -->
<!-- Description-Source-DDF -->
Node for trusted publisher certificates.
<!-- Device-TrustedPublisher-Description-End -->

<!-- Device-TrustedPublisher-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TrustedPublisher-Editable-End -->

<!-- Device-TrustedPublisher-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-TrustedPublisher-DFProperties-End -->

<!-- Device-TrustedPublisher-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TrustedPublisher-Examples-End -->

<!-- Device-TrustedPublisher-End -->

<!-- Device-TrustedPublisher-{CertHash}-Begin -->
### Device/TrustedPublisher/{CertHash}

<!-- Device-TrustedPublisher-{CertHash}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-TrustedPublisher-{CertHash}-Applicability-End -->

<!-- Device-TrustedPublisher-{CertHash}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/TrustedPublisher/{CertHash}
```
<!-- Device-TrustedPublisher-{CertHash}-OmaUri-End -->

<!-- Device-TrustedPublisher-{CertHash}-Description-Begin -->
<!-- Description-Source-DDF -->
Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.
<!-- Device-TrustedPublisher-{CertHash}-Description-End -->

<!-- Device-TrustedPublisher-{CertHash}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TrustedPublisher-{CertHash}-Editable-End -->

<!-- Device-TrustedPublisher-{CertHash}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Delete, Get |
| Dynamic Node Naming | UniqueName: Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.  |
<!-- Device-TrustedPublisher-{CertHash}-DFProperties-End -->

<!-- Device-TrustedPublisher-{CertHash}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TrustedPublisher-{CertHash}-Examples-End -->

<!-- Device-TrustedPublisher-{CertHash}-End -->

<!-- Device-TrustedPublisher-{CertHash}-EncodedCertificate-Begin -->
#### Device/TrustedPublisher/{CertHash}/EncodedCertificate

<!-- Device-TrustedPublisher-{CertHash}-EncodedCertificate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-TrustedPublisher-{CertHash}-EncodedCertificate-Applicability-End -->

<!-- Device-TrustedPublisher-{CertHash}-EncodedCertificate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/TrustedPublisher/{CertHash}/EncodedCertificate
```
<!-- Device-TrustedPublisher-{CertHash}-EncodedCertificate-OmaUri-End -->

<!-- Device-TrustedPublisher-{CertHash}-EncodedCertificate-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value can't include extra formatting characters such as embedded linefeeds, etc.
<!-- Device-TrustedPublisher-{CertHash}-EncodedCertificate-Description-End -->

<!-- Device-TrustedPublisher-{CertHash}-EncodedCertificate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TrustedPublisher-{CertHash}-EncodedCertificate-Editable-End -->

<!-- Device-TrustedPublisher-{CertHash}-EncodedCertificate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Add, Get, Replace |
<!-- Device-TrustedPublisher-{CertHash}-EncodedCertificate-DFProperties-End -->

<!-- Device-TrustedPublisher-{CertHash}-EncodedCertificate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TrustedPublisher-{CertHash}-EncodedCertificate-Examples-End -->

<!-- Device-TrustedPublisher-{CertHash}-EncodedCertificate-End -->

<!-- Device-TrustedPublisher-{CertHash}-IssuedBy-Begin -->
#### Device/TrustedPublisher/{CertHash}/IssuedBy

<!-- Device-TrustedPublisher-{CertHash}-IssuedBy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-TrustedPublisher-{CertHash}-IssuedBy-Applicability-End -->

<!-- Device-TrustedPublisher-{CertHash}-IssuedBy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/TrustedPublisher/{CertHash}/IssuedBy
```
<!-- Device-TrustedPublisher-{CertHash}-IssuedBy-OmaUri-End -->

<!-- Device-TrustedPublisher-{CertHash}-IssuedBy-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate issuer. This is equivalent to the Issuer member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- Device-TrustedPublisher-{CertHash}-IssuedBy-Description-End -->

<!-- Device-TrustedPublisher-{CertHash}-IssuedBy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TrustedPublisher-{CertHash}-IssuedBy-Editable-End -->

<!-- Device-TrustedPublisher-{CertHash}-IssuedBy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-TrustedPublisher-{CertHash}-IssuedBy-DFProperties-End -->

<!-- Device-TrustedPublisher-{CertHash}-IssuedBy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TrustedPublisher-{CertHash}-IssuedBy-Examples-End -->

<!-- Device-TrustedPublisher-{CertHash}-IssuedBy-End -->

<!-- Device-TrustedPublisher-{CertHash}-IssuedTo-Begin -->
#### Device/TrustedPublisher/{CertHash}/IssuedTo

<!-- Device-TrustedPublisher-{CertHash}-IssuedTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-TrustedPublisher-{CertHash}-IssuedTo-Applicability-End -->

<!-- Device-TrustedPublisher-{CertHash}-IssuedTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/TrustedPublisher/{CertHash}/IssuedTo
```
<!-- Device-TrustedPublisher-{CertHash}-IssuedTo-OmaUri-End -->

<!-- Device-TrustedPublisher-{CertHash}-IssuedTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate subject. This is equivalent to the Subject member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- Device-TrustedPublisher-{CertHash}-IssuedTo-Description-End -->

<!-- Device-TrustedPublisher-{CertHash}-IssuedTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TrustedPublisher-{CertHash}-IssuedTo-Editable-End -->

<!-- Device-TrustedPublisher-{CertHash}-IssuedTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-TrustedPublisher-{CertHash}-IssuedTo-DFProperties-End -->

<!-- Device-TrustedPublisher-{CertHash}-IssuedTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TrustedPublisher-{CertHash}-IssuedTo-Examples-End -->

<!-- Device-TrustedPublisher-{CertHash}-IssuedTo-End -->

<!-- Device-TrustedPublisher-{CertHash}-TemplateName-Begin -->
#### Device/TrustedPublisher/{CertHash}/TemplateName

<!-- Device-TrustedPublisher-{CertHash}-TemplateName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-TrustedPublisher-{CertHash}-TemplateName-Applicability-End -->

<!-- Device-TrustedPublisher-{CertHash}-TemplateName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/TrustedPublisher/{CertHash}/TemplateName
```
<!-- Device-TrustedPublisher-{CertHash}-TemplateName-OmaUri-End -->

<!-- Device-TrustedPublisher-{CertHash}-TemplateName-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the certificate template name. Supported operation is Get.
<!-- Device-TrustedPublisher-{CertHash}-TemplateName-Description-End -->

<!-- Device-TrustedPublisher-{CertHash}-TemplateName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TrustedPublisher-{CertHash}-TemplateName-Editable-End -->

<!-- Device-TrustedPublisher-{CertHash}-TemplateName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-TrustedPublisher-{CertHash}-TemplateName-DFProperties-End -->

<!-- Device-TrustedPublisher-{CertHash}-TemplateName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TrustedPublisher-{CertHash}-TemplateName-Examples-End -->

<!-- Device-TrustedPublisher-{CertHash}-TemplateName-End -->

<!-- Device-TrustedPublisher-{CertHash}-ValidFrom-Begin -->
#### Device/TrustedPublisher/{CertHash}/ValidFrom

<!-- Device-TrustedPublisher-{CertHash}-ValidFrom-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-TrustedPublisher-{CertHash}-ValidFrom-Applicability-End -->

<!-- Device-TrustedPublisher-{CertHash}-ValidFrom-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/TrustedPublisher/{CertHash}/ValidFrom
```
<!-- Device-TrustedPublisher-{CertHash}-ValidFrom-OmaUri-End -->

<!-- Device-TrustedPublisher-{CertHash}-ValidFrom-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.
<!-- Device-TrustedPublisher-{CertHash}-ValidFrom-Description-End -->

<!-- Device-TrustedPublisher-{CertHash}-ValidFrom-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TrustedPublisher-{CertHash}-ValidFrom-Editable-End -->

<!-- Device-TrustedPublisher-{CertHash}-ValidFrom-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-TrustedPublisher-{CertHash}-ValidFrom-DFProperties-End -->

<!-- Device-TrustedPublisher-{CertHash}-ValidFrom-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TrustedPublisher-{CertHash}-ValidFrom-Examples-End -->

<!-- Device-TrustedPublisher-{CertHash}-ValidFrom-End -->

<!-- Device-TrustedPublisher-{CertHash}-ValidTo-Begin -->
#### Device/TrustedPublisher/{CertHash}/ValidTo

<!-- Device-TrustedPublisher-{CertHash}-ValidTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-TrustedPublisher-{CertHash}-ValidTo-Applicability-End -->

<!-- Device-TrustedPublisher-{CertHash}-ValidTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/TrustedPublisher/{CertHash}/ValidTo
```
<!-- Device-TrustedPublisher-{CertHash}-ValidTo-OmaUri-End -->

<!-- Device-TrustedPublisher-{CertHash}-ValidTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure.
<!-- Device-TrustedPublisher-{CertHash}-ValidTo-Description-End -->

<!-- Device-TrustedPublisher-{CertHash}-ValidTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TrustedPublisher-{CertHash}-ValidTo-Editable-End -->

<!-- Device-TrustedPublisher-{CertHash}-ValidTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-TrustedPublisher-{CertHash}-ValidTo-DFProperties-End -->

<!-- Device-TrustedPublisher-{CertHash}-ValidTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TrustedPublisher-{CertHash}-ValidTo-Examples-End -->

<!-- Device-TrustedPublisher-{CertHash}-ValidTo-End -->

<!-- Device-UntrustedCertificates-Begin -->
## Device/UntrustedCertificates

<!-- Device-UntrustedCertificates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-UntrustedCertificates-Applicability-End -->

<!-- Device-UntrustedCertificates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/UntrustedCertificates
```
<!-- Device-UntrustedCertificates-OmaUri-End -->

<!-- Device-UntrustedCertificates-Description-Begin -->
<!-- Description-Source-DDF -->
Node for certificates that aren't trusted. IT admin can use this node to immediately flag certificates that have been compromised and no longer usable.
<!-- Device-UntrustedCertificates-Description-End -->

<!-- Device-UntrustedCertificates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-UntrustedCertificates-Editable-End -->

<!-- Device-UntrustedCertificates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-UntrustedCertificates-DFProperties-End -->

<!-- Device-UntrustedCertificates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-UntrustedCertificates-Examples-End -->

<!-- Device-UntrustedCertificates-End -->

<!-- Device-UntrustedCertificates-{CertHash}-Begin -->
### Device/UntrustedCertificates/{CertHash}

<!-- Device-UntrustedCertificates-{CertHash}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-UntrustedCertificates-{CertHash}-Applicability-End -->

<!-- Device-UntrustedCertificates-{CertHash}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/UntrustedCertificates/{CertHash}
```
<!-- Device-UntrustedCertificates-{CertHash}-OmaUri-End -->

<!-- Device-UntrustedCertificates-{CertHash}-Description-Begin -->
<!-- Description-Source-DDF -->
Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.
<!-- Device-UntrustedCertificates-{CertHash}-Description-End -->

<!-- Device-UntrustedCertificates-{CertHash}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-UntrustedCertificates-{CertHash}-Editable-End -->

<!-- Device-UntrustedCertificates-{CertHash}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Delete, Get |
| Dynamic Node Naming | UniqueName: Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.  |
<!-- Device-UntrustedCertificates-{CertHash}-DFProperties-End -->

<!-- Device-UntrustedCertificates-{CertHash}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-UntrustedCertificates-{CertHash}-Examples-End -->

<!-- Device-UntrustedCertificates-{CertHash}-End -->

<!-- Device-UntrustedCertificates-{CertHash}-EncodedCertificate-Begin -->
#### Device/UntrustedCertificates/{CertHash}/EncodedCertificate

<!-- Device-UntrustedCertificates-{CertHash}-EncodedCertificate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-UntrustedCertificates-{CertHash}-EncodedCertificate-Applicability-End -->

<!-- Device-UntrustedCertificates-{CertHash}-EncodedCertificate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/UntrustedCertificates/{CertHash}/EncodedCertificate
```
<!-- Device-UntrustedCertificates-{CertHash}-EncodedCertificate-OmaUri-End -->

<!-- Device-UntrustedCertificates-{CertHash}-EncodedCertificate-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value can't include extra formatting characters such as embedded linefeeds, etc.
<!-- Device-UntrustedCertificates-{CertHash}-EncodedCertificate-Description-End -->

<!-- Device-UntrustedCertificates-{CertHash}-EncodedCertificate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-UntrustedCertificates-{CertHash}-EncodedCertificate-Editable-End -->

<!-- Device-UntrustedCertificates-{CertHash}-EncodedCertificate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Add, Get, Replace |
<!-- Device-UntrustedCertificates-{CertHash}-EncodedCertificate-DFProperties-End -->

<!-- Device-UntrustedCertificates-{CertHash}-EncodedCertificate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-UntrustedCertificates-{CertHash}-EncodedCertificate-Examples-End -->

<!-- Device-UntrustedCertificates-{CertHash}-EncodedCertificate-End -->

<!-- Device-UntrustedCertificates-{CertHash}-IssuedBy-Begin -->
#### Device/UntrustedCertificates/{CertHash}/IssuedBy

<!-- Device-UntrustedCertificates-{CertHash}-IssuedBy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-UntrustedCertificates-{CertHash}-IssuedBy-Applicability-End -->

<!-- Device-UntrustedCertificates-{CertHash}-IssuedBy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/UntrustedCertificates/{CertHash}/IssuedBy
```
<!-- Device-UntrustedCertificates-{CertHash}-IssuedBy-OmaUri-End -->

<!-- Device-UntrustedCertificates-{CertHash}-IssuedBy-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate issuer. This is equivalent to the Issuer member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- Device-UntrustedCertificates-{CertHash}-IssuedBy-Description-End -->

<!-- Device-UntrustedCertificates-{CertHash}-IssuedBy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-UntrustedCertificates-{CertHash}-IssuedBy-Editable-End -->

<!-- Device-UntrustedCertificates-{CertHash}-IssuedBy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-UntrustedCertificates-{CertHash}-IssuedBy-DFProperties-End -->

<!-- Device-UntrustedCertificates-{CertHash}-IssuedBy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-UntrustedCertificates-{CertHash}-IssuedBy-Examples-End -->

<!-- Device-UntrustedCertificates-{CertHash}-IssuedBy-End -->

<!-- Device-UntrustedCertificates-{CertHash}-IssuedTo-Begin -->
#### Device/UntrustedCertificates/{CertHash}/IssuedTo

<!-- Device-UntrustedCertificates-{CertHash}-IssuedTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-UntrustedCertificates-{CertHash}-IssuedTo-Applicability-End -->

<!-- Device-UntrustedCertificates-{CertHash}-IssuedTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/UntrustedCertificates/{CertHash}/IssuedTo
```
<!-- Device-UntrustedCertificates-{CertHash}-IssuedTo-OmaUri-End -->

<!-- Device-UntrustedCertificates-{CertHash}-IssuedTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate subject. This is equivalent to the Subject member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- Device-UntrustedCertificates-{CertHash}-IssuedTo-Description-End -->

<!-- Device-UntrustedCertificates-{CertHash}-IssuedTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-UntrustedCertificates-{CertHash}-IssuedTo-Editable-End -->

<!-- Device-UntrustedCertificates-{CertHash}-IssuedTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-UntrustedCertificates-{CertHash}-IssuedTo-DFProperties-End -->

<!-- Device-UntrustedCertificates-{CertHash}-IssuedTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-UntrustedCertificates-{CertHash}-IssuedTo-Examples-End -->

<!-- Device-UntrustedCertificates-{CertHash}-IssuedTo-End -->

<!-- Device-UntrustedCertificates-{CertHash}-TemplateName-Begin -->
#### Device/UntrustedCertificates/{CertHash}/TemplateName

<!-- Device-UntrustedCertificates-{CertHash}-TemplateName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-UntrustedCertificates-{CertHash}-TemplateName-Applicability-End -->

<!-- Device-UntrustedCertificates-{CertHash}-TemplateName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/UntrustedCertificates/{CertHash}/TemplateName
```
<!-- Device-UntrustedCertificates-{CertHash}-TemplateName-OmaUri-End -->

<!-- Device-UntrustedCertificates-{CertHash}-TemplateName-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the certificate template name. Supported operation is Get.
<!-- Device-UntrustedCertificates-{CertHash}-TemplateName-Description-End -->

<!-- Device-UntrustedCertificates-{CertHash}-TemplateName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-UntrustedCertificates-{CertHash}-TemplateName-Editable-End -->

<!-- Device-UntrustedCertificates-{CertHash}-TemplateName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-UntrustedCertificates-{CertHash}-TemplateName-DFProperties-End -->

<!-- Device-UntrustedCertificates-{CertHash}-TemplateName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-UntrustedCertificates-{CertHash}-TemplateName-Examples-End -->

<!-- Device-UntrustedCertificates-{CertHash}-TemplateName-End -->

<!-- Device-UntrustedCertificates-{CertHash}-ValidFrom-Begin -->
#### Device/UntrustedCertificates/{CertHash}/ValidFrom

<!-- Device-UntrustedCertificates-{CertHash}-ValidFrom-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-UntrustedCertificates-{CertHash}-ValidFrom-Applicability-End -->

<!-- Device-UntrustedCertificates-{CertHash}-ValidFrom-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/UntrustedCertificates/{CertHash}/ValidFrom
```
<!-- Device-UntrustedCertificates-{CertHash}-ValidFrom-OmaUri-End -->

<!-- Device-UntrustedCertificates-{CertHash}-ValidFrom-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.
<!-- Device-UntrustedCertificates-{CertHash}-ValidFrom-Description-End -->

<!-- Device-UntrustedCertificates-{CertHash}-ValidFrom-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-UntrustedCertificates-{CertHash}-ValidFrom-Editable-End -->

<!-- Device-UntrustedCertificates-{CertHash}-ValidFrom-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-UntrustedCertificates-{CertHash}-ValidFrom-DFProperties-End -->

<!-- Device-UntrustedCertificates-{CertHash}-ValidFrom-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-UntrustedCertificates-{CertHash}-ValidFrom-Examples-End -->

<!-- Device-UntrustedCertificates-{CertHash}-ValidFrom-End -->

<!-- Device-UntrustedCertificates-{CertHash}-ValidTo-Begin -->
#### Device/UntrustedCertificates/{CertHash}/ValidTo

<!-- Device-UntrustedCertificates-{CertHash}-ValidTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-UntrustedCertificates-{CertHash}-ValidTo-Applicability-End -->

<!-- Device-UntrustedCertificates-{CertHash}-ValidTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/RootCATrustedCertificates/UntrustedCertificates/{CertHash}/ValidTo
```
<!-- Device-UntrustedCertificates-{CertHash}-ValidTo-OmaUri-End -->

<!-- Device-UntrustedCertificates-{CertHash}-ValidTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure.
<!-- Device-UntrustedCertificates-{CertHash}-ValidTo-Description-End -->

<!-- Device-UntrustedCertificates-{CertHash}-ValidTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-UntrustedCertificates-{CertHash}-ValidTo-Editable-End -->

<!-- Device-UntrustedCertificates-{CertHash}-ValidTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-UntrustedCertificates-{CertHash}-ValidTo-DFProperties-End -->

<!-- Device-UntrustedCertificates-{CertHash}-ValidTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-UntrustedCertificates-{CertHash}-ValidTo-Examples-End -->

<!-- Device-UntrustedCertificates-{CertHash}-ValidTo-End -->

<!-- User-CA-Begin -->
## User/CA

<!-- User-CA-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-CA-Applicability-End -->

<!-- User-CA-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/CA
```
<!-- User-CA-OmaUri-End -->

<!-- User-CA-Description-Begin -->
<!-- Description-Source-DDF -->
Node for CA certificates.
<!-- User-CA-Description-End -->

<!-- User-CA-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-CA-Editable-End -->

<!-- User-CA-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-CA-DFProperties-End -->

<!-- User-CA-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-CA-Examples-End -->

<!-- User-CA-End -->

<!-- User-CA-{CertHash}-Begin -->
### User/CA/{CertHash}

<!-- User-CA-{CertHash}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-CA-{CertHash}-Applicability-End -->

<!-- User-CA-{CertHash}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/CA/{CertHash}
```
<!-- User-CA-{CertHash}-OmaUri-End -->

<!-- User-CA-{CertHash}-Description-Begin -->
<!-- Description-Source-DDF -->
Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.
<!-- User-CA-{CertHash}-Description-End -->

<!-- User-CA-{CertHash}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-CA-{CertHash}-Editable-End -->

<!-- User-CA-{CertHash}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Delete, Get |
| Dynamic Node Naming | UniqueName: Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.  |
<!-- User-CA-{CertHash}-DFProperties-End -->

<!-- User-CA-{CertHash}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-CA-{CertHash}-Examples-End -->

<!-- User-CA-{CertHash}-End -->

<!-- User-CA-{CertHash}-EncodedCertificate-Begin -->
#### User/CA/{CertHash}/EncodedCertificate

<!-- User-CA-{CertHash}-EncodedCertificate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-CA-{CertHash}-EncodedCertificate-Applicability-End -->

<!-- User-CA-{CertHash}-EncodedCertificate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/CA/{CertHash}/EncodedCertificate
```
<!-- User-CA-{CertHash}-EncodedCertificate-OmaUri-End -->

<!-- User-CA-{CertHash}-EncodedCertificate-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value can't include extra formatting characters such as embedded linefeeds, etc.
<!-- User-CA-{CertHash}-EncodedCertificate-Description-End -->

<!-- User-CA-{CertHash}-EncodedCertificate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-CA-{CertHash}-EncodedCertificate-Editable-End -->

<!-- User-CA-{CertHash}-EncodedCertificate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Add, Get, Replace |
<!-- User-CA-{CertHash}-EncodedCertificate-DFProperties-End -->

<!-- User-CA-{CertHash}-EncodedCertificate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-CA-{CertHash}-EncodedCertificate-Examples-End -->

<!-- User-CA-{CertHash}-EncodedCertificate-End -->

<!-- User-CA-{CertHash}-IssuedBy-Begin -->
#### User/CA/{CertHash}/IssuedBy

<!-- User-CA-{CertHash}-IssuedBy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-CA-{CertHash}-IssuedBy-Applicability-End -->

<!-- User-CA-{CertHash}-IssuedBy-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/CA/{CertHash}/IssuedBy
```
<!-- User-CA-{CertHash}-IssuedBy-OmaUri-End -->

<!-- User-CA-{CertHash}-IssuedBy-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate issuer. This is equivalent to the Issuer member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- User-CA-{CertHash}-IssuedBy-Description-End -->

<!-- User-CA-{CertHash}-IssuedBy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-CA-{CertHash}-IssuedBy-Editable-End -->

<!-- User-CA-{CertHash}-IssuedBy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-CA-{CertHash}-IssuedBy-DFProperties-End -->

<!-- User-CA-{CertHash}-IssuedBy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-CA-{CertHash}-IssuedBy-Examples-End -->

<!-- User-CA-{CertHash}-IssuedBy-End -->

<!-- User-CA-{CertHash}-IssuedTo-Begin -->
#### User/CA/{CertHash}/IssuedTo

<!-- User-CA-{CertHash}-IssuedTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-CA-{CertHash}-IssuedTo-Applicability-End -->

<!-- User-CA-{CertHash}-IssuedTo-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/CA/{CertHash}/IssuedTo
```
<!-- User-CA-{CertHash}-IssuedTo-OmaUri-End -->

<!-- User-CA-{CertHash}-IssuedTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate subject. This is equivalent to the Subject member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- User-CA-{CertHash}-IssuedTo-Description-End -->

<!-- User-CA-{CertHash}-IssuedTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-CA-{CertHash}-IssuedTo-Editable-End -->

<!-- User-CA-{CertHash}-IssuedTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-CA-{CertHash}-IssuedTo-DFProperties-End -->

<!-- User-CA-{CertHash}-IssuedTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-CA-{CertHash}-IssuedTo-Examples-End -->

<!-- User-CA-{CertHash}-IssuedTo-End -->

<!-- User-CA-{CertHash}-TemplateName-Begin -->
#### User/CA/{CertHash}/TemplateName

<!-- User-CA-{CertHash}-TemplateName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-CA-{CertHash}-TemplateName-Applicability-End -->

<!-- User-CA-{CertHash}-TemplateName-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/CA/{CertHash}/TemplateName
```
<!-- User-CA-{CertHash}-TemplateName-OmaUri-End -->

<!-- User-CA-{CertHash}-TemplateName-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the certificate template name. Supported operation is Get.
<!-- User-CA-{CertHash}-TemplateName-Description-End -->

<!-- User-CA-{CertHash}-TemplateName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-CA-{CertHash}-TemplateName-Editable-End -->

<!-- User-CA-{CertHash}-TemplateName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-CA-{CertHash}-TemplateName-DFProperties-End -->

<!-- User-CA-{CertHash}-TemplateName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-CA-{CertHash}-TemplateName-Examples-End -->

<!-- User-CA-{CertHash}-TemplateName-End -->

<!-- User-CA-{CertHash}-ValidFrom-Begin -->
#### User/CA/{CertHash}/ValidFrom

<!-- User-CA-{CertHash}-ValidFrom-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-CA-{CertHash}-ValidFrom-Applicability-End -->

<!-- User-CA-{CertHash}-ValidFrom-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/CA/{CertHash}/ValidFrom
```
<!-- User-CA-{CertHash}-ValidFrom-OmaUri-End -->

<!-- User-CA-{CertHash}-ValidFrom-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.
<!-- User-CA-{CertHash}-ValidFrom-Description-End -->

<!-- User-CA-{CertHash}-ValidFrom-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-CA-{CertHash}-ValidFrom-Editable-End -->

<!-- User-CA-{CertHash}-ValidFrom-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-CA-{CertHash}-ValidFrom-DFProperties-End -->

<!-- User-CA-{CertHash}-ValidFrom-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-CA-{CertHash}-ValidFrom-Examples-End -->

<!-- User-CA-{CertHash}-ValidFrom-End -->

<!-- User-CA-{CertHash}-ValidTo-Begin -->
#### User/CA/{CertHash}/ValidTo

<!-- User-CA-{CertHash}-ValidTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-CA-{CertHash}-ValidTo-Applicability-End -->

<!-- User-CA-{CertHash}-ValidTo-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/CA/{CertHash}/ValidTo
```
<!-- User-CA-{CertHash}-ValidTo-OmaUri-End -->

<!-- User-CA-{CertHash}-ValidTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure.
<!-- User-CA-{CertHash}-ValidTo-Description-End -->

<!-- User-CA-{CertHash}-ValidTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-CA-{CertHash}-ValidTo-Editable-End -->

<!-- User-CA-{CertHash}-ValidTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-CA-{CertHash}-ValidTo-DFProperties-End -->

<!-- User-CA-{CertHash}-ValidTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-CA-{CertHash}-ValidTo-Examples-End -->

<!-- User-CA-{CertHash}-ValidTo-End -->

<!-- User-OemEsim-Begin -->
## User/OemEsim

<!-- User-OemEsim-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-OemEsim-Applicability-End -->

<!-- User-OemEsim-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/OemEsim
```
<!-- User-OemEsim-OmaUri-End -->

<!-- User-OemEsim-Description-Begin -->
<!-- Description-Source-DDF -->
Node for OEM eSIM certificates.
<!-- User-OemEsim-Description-End -->

<!-- User-OemEsim-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-OemEsim-Editable-End -->

<!-- User-OemEsim-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-OemEsim-DFProperties-End -->

<!-- User-OemEsim-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-OemEsim-Examples-End -->

<!-- User-OemEsim-End -->

<!-- User-OemEsim-{CertHash}-Begin -->
### User/OemEsim/{CertHash}

<!-- User-OemEsim-{CertHash}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-OemEsim-{CertHash}-Applicability-End -->

<!-- User-OemEsim-{CertHash}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/OemEsim/{CertHash}
```
<!-- User-OemEsim-{CertHash}-OmaUri-End -->

<!-- User-OemEsim-{CertHash}-Description-Begin -->
<!-- Description-Source-DDF -->
Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.
<!-- User-OemEsim-{CertHash}-Description-End -->

<!-- User-OemEsim-{CertHash}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-OemEsim-{CertHash}-Editable-End -->

<!-- User-OemEsim-{CertHash}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Delete, Get |
| Dynamic Node Naming | UniqueName: Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.  |
<!-- User-OemEsim-{CertHash}-DFProperties-End -->

<!-- User-OemEsim-{CertHash}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-OemEsim-{CertHash}-Examples-End -->

<!-- User-OemEsim-{CertHash}-End -->

<!-- User-OemEsim-{CertHash}-EncodedCertificate-Begin -->
#### User/OemEsim/{CertHash}/EncodedCertificate

<!-- User-OemEsim-{CertHash}-EncodedCertificate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-OemEsim-{CertHash}-EncodedCertificate-Applicability-End -->

<!-- User-OemEsim-{CertHash}-EncodedCertificate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/OemEsim/{CertHash}/EncodedCertificate
```
<!-- User-OemEsim-{CertHash}-EncodedCertificate-OmaUri-End -->

<!-- User-OemEsim-{CertHash}-EncodedCertificate-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value can't include extra formatting characters such as embedded linefeeds, etc.
<!-- User-OemEsim-{CertHash}-EncodedCertificate-Description-End -->

<!-- User-OemEsim-{CertHash}-EncodedCertificate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-OemEsim-{CertHash}-EncodedCertificate-Editable-End -->

<!-- User-OemEsim-{CertHash}-EncodedCertificate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Add, Get, Replace |
<!-- User-OemEsim-{CertHash}-EncodedCertificate-DFProperties-End -->

<!-- User-OemEsim-{CertHash}-EncodedCertificate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-OemEsim-{CertHash}-EncodedCertificate-Examples-End -->

<!-- User-OemEsim-{CertHash}-EncodedCertificate-End -->

<!-- User-OemEsim-{CertHash}-IssuedBy-Begin -->
#### User/OemEsim/{CertHash}/IssuedBy

<!-- User-OemEsim-{CertHash}-IssuedBy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-OemEsim-{CertHash}-IssuedBy-Applicability-End -->

<!-- User-OemEsim-{CertHash}-IssuedBy-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/OemEsim/{CertHash}/IssuedBy
```
<!-- User-OemEsim-{CertHash}-IssuedBy-OmaUri-End -->

<!-- User-OemEsim-{CertHash}-IssuedBy-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate issuer. This is equivalent to the Issuer member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- User-OemEsim-{CertHash}-IssuedBy-Description-End -->

<!-- User-OemEsim-{CertHash}-IssuedBy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-OemEsim-{CertHash}-IssuedBy-Editable-End -->

<!-- User-OemEsim-{CertHash}-IssuedBy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-OemEsim-{CertHash}-IssuedBy-DFProperties-End -->

<!-- User-OemEsim-{CertHash}-IssuedBy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-OemEsim-{CertHash}-IssuedBy-Examples-End -->

<!-- User-OemEsim-{CertHash}-IssuedBy-End -->

<!-- User-OemEsim-{CertHash}-IssuedTo-Begin -->
#### User/OemEsim/{CertHash}/IssuedTo

<!-- User-OemEsim-{CertHash}-IssuedTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-OemEsim-{CertHash}-IssuedTo-Applicability-End -->

<!-- User-OemEsim-{CertHash}-IssuedTo-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/OemEsim/{CertHash}/IssuedTo
```
<!-- User-OemEsim-{CertHash}-IssuedTo-OmaUri-End -->

<!-- User-OemEsim-{CertHash}-IssuedTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate subject. This is equivalent to the Subject member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- User-OemEsim-{CertHash}-IssuedTo-Description-End -->

<!-- User-OemEsim-{CertHash}-IssuedTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-OemEsim-{CertHash}-IssuedTo-Editable-End -->

<!-- User-OemEsim-{CertHash}-IssuedTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-OemEsim-{CertHash}-IssuedTo-DFProperties-End -->

<!-- User-OemEsim-{CertHash}-IssuedTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-OemEsim-{CertHash}-IssuedTo-Examples-End -->

<!-- User-OemEsim-{CertHash}-IssuedTo-End -->

<!-- User-OemEsim-{CertHash}-TemplateName-Begin -->
#### User/OemEsim/{CertHash}/TemplateName

<!-- User-OemEsim-{CertHash}-TemplateName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-OemEsim-{CertHash}-TemplateName-Applicability-End -->

<!-- User-OemEsim-{CertHash}-TemplateName-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/OemEsim/{CertHash}/TemplateName
```
<!-- User-OemEsim-{CertHash}-TemplateName-OmaUri-End -->

<!-- User-OemEsim-{CertHash}-TemplateName-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the certificate template name. Supported operation is Get.
<!-- User-OemEsim-{CertHash}-TemplateName-Description-End -->

<!-- User-OemEsim-{CertHash}-TemplateName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-OemEsim-{CertHash}-TemplateName-Editable-End -->

<!-- User-OemEsim-{CertHash}-TemplateName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-OemEsim-{CertHash}-TemplateName-DFProperties-End -->

<!-- User-OemEsim-{CertHash}-TemplateName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-OemEsim-{CertHash}-TemplateName-Examples-End -->

<!-- User-OemEsim-{CertHash}-TemplateName-End -->

<!-- User-OemEsim-{CertHash}-ValidFrom-Begin -->
#### User/OemEsim/{CertHash}/ValidFrom

<!-- User-OemEsim-{CertHash}-ValidFrom-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-OemEsim-{CertHash}-ValidFrom-Applicability-End -->

<!-- User-OemEsim-{CertHash}-ValidFrom-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/OemEsim/{CertHash}/ValidFrom
```
<!-- User-OemEsim-{CertHash}-ValidFrom-OmaUri-End -->

<!-- User-OemEsim-{CertHash}-ValidFrom-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.
<!-- User-OemEsim-{CertHash}-ValidFrom-Description-End -->

<!-- User-OemEsim-{CertHash}-ValidFrom-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-OemEsim-{CertHash}-ValidFrom-Editable-End -->

<!-- User-OemEsim-{CertHash}-ValidFrom-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-OemEsim-{CertHash}-ValidFrom-DFProperties-End -->

<!-- User-OemEsim-{CertHash}-ValidFrom-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-OemEsim-{CertHash}-ValidFrom-Examples-End -->

<!-- User-OemEsim-{CertHash}-ValidFrom-End -->

<!-- User-OemEsim-{CertHash}-ValidTo-Begin -->
#### User/OemEsim/{CertHash}/ValidTo

<!-- User-OemEsim-{CertHash}-ValidTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-OemEsim-{CertHash}-ValidTo-Applicability-End -->

<!-- User-OemEsim-{CertHash}-ValidTo-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/OemEsim/{CertHash}/ValidTo
```
<!-- User-OemEsim-{CertHash}-ValidTo-OmaUri-End -->

<!-- User-OemEsim-{CertHash}-ValidTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure.
<!-- User-OemEsim-{CertHash}-ValidTo-Description-End -->

<!-- User-OemEsim-{CertHash}-ValidTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-OemEsim-{CertHash}-ValidTo-Editable-End -->

<!-- User-OemEsim-{CertHash}-ValidTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-OemEsim-{CertHash}-ValidTo-DFProperties-End -->

<!-- User-OemEsim-{CertHash}-ValidTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-OemEsim-{CertHash}-ValidTo-Examples-End -->

<!-- User-OemEsim-{CertHash}-ValidTo-End -->

<!-- User-TrustedPeople-Begin -->
## User/TrustedPeople

<!-- User-TrustedPeople-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-TrustedPeople-Applicability-End -->

<!-- User-TrustedPeople-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/TrustedPeople
```
<!-- User-TrustedPeople-OmaUri-End -->

<!-- User-TrustedPeople-Description-Begin -->
<!-- Description-Source-DDF -->
Node for trusted people certificates.
<!-- User-TrustedPeople-Description-End -->

<!-- User-TrustedPeople-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-TrustedPeople-Editable-End -->

<!-- User-TrustedPeople-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-TrustedPeople-DFProperties-End -->

<!-- User-TrustedPeople-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-TrustedPeople-Examples-End -->

<!-- User-TrustedPeople-End -->

<!-- User-TrustedPeople-{CertHash}-Begin -->
### User/TrustedPeople/{CertHash}

<!-- User-TrustedPeople-{CertHash}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-TrustedPeople-{CertHash}-Applicability-End -->

<!-- User-TrustedPeople-{CertHash}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/TrustedPeople/{CertHash}
```
<!-- User-TrustedPeople-{CertHash}-OmaUri-End -->

<!-- User-TrustedPeople-{CertHash}-Description-Begin -->
<!-- Description-Source-DDF -->
Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.
<!-- User-TrustedPeople-{CertHash}-Description-End -->

<!-- User-TrustedPeople-{CertHash}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-TrustedPeople-{CertHash}-Editable-End -->

<!-- User-TrustedPeople-{CertHash}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Delete, Get |
| Dynamic Node Naming | UniqueName: Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.  |
<!-- User-TrustedPeople-{CertHash}-DFProperties-End -->

<!-- User-TrustedPeople-{CertHash}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-TrustedPeople-{CertHash}-Examples-End -->

<!-- User-TrustedPeople-{CertHash}-End -->

<!-- User-TrustedPeople-{CertHash}-EncodedCertificate-Begin -->
#### User/TrustedPeople/{CertHash}/EncodedCertificate

<!-- User-TrustedPeople-{CertHash}-EncodedCertificate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-TrustedPeople-{CertHash}-EncodedCertificate-Applicability-End -->

<!-- User-TrustedPeople-{CertHash}-EncodedCertificate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/TrustedPeople/{CertHash}/EncodedCertificate
```
<!-- User-TrustedPeople-{CertHash}-EncodedCertificate-OmaUri-End -->

<!-- User-TrustedPeople-{CertHash}-EncodedCertificate-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value can't include extra formatting characters such as embedded linefeeds, etc.
<!-- User-TrustedPeople-{CertHash}-EncodedCertificate-Description-End -->

<!-- User-TrustedPeople-{CertHash}-EncodedCertificate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-TrustedPeople-{CertHash}-EncodedCertificate-Editable-End -->

<!-- User-TrustedPeople-{CertHash}-EncodedCertificate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Add, Get, Replace |
<!-- User-TrustedPeople-{CertHash}-EncodedCertificate-DFProperties-End -->

<!-- User-TrustedPeople-{CertHash}-EncodedCertificate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-TrustedPeople-{CertHash}-EncodedCertificate-Examples-End -->

<!-- User-TrustedPeople-{CertHash}-EncodedCertificate-End -->

<!-- User-TrustedPeople-{CertHash}-IssuedBy-Begin -->
#### User/TrustedPeople/{CertHash}/IssuedBy

<!-- User-TrustedPeople-{CertHash}-IssuedBy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-TrustedPeople-{CertHash}-IssuedBy-Applicability-End -->

<!-- User-TrustedPeople-{CertHash}-IssuedBy-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/TrustedPeople/{CertHash}/IssuedBy
```
<!-- User-TrustedPeople-{CertHash}-IssuedBy-OmaUri-End -->

<!-- User-TrustedPeople-{CertHash}-IssuedBy-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate issuer. This is equivalent to the Issuer member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- User-TrustedPeople-{CertHash}-IssuedBy-Description-End -->

<!-- User-TrustedPeople-{CertHash}-IssuedBy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-TrustedPeople-{CertHash}-IssuedBy-Editable-End -->

<!-- User-TrustedPeople-{CertHash}-IssuedBy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-TrustedPeople-{CertHash}-IssuedBy-DFProperties-End -->

<!-- User-TrustedPeople-{CertHash}-IssuedBy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-TrustedPeople-{CertHash}-IssuedBy-Examples-End -->

<!-- User-TrustedPeople-{CertHash}-IssuedBy-End -->

<!-- User-TrustedPeople-{CertHash}-IssuedTo-Begin -->
#### User/TrustedPeople/{CertHash}/IssuedTo

<!-- User-TrustedPeople-{CertHash}-IssuedTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-TrustedPeople-{CertHash}-IssuedTo-Applicability-End -->

<!-- User-TrustedPeople-{CertHash}-IssuedTo-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/TrustedPeople/{CertHash}/IssuedTo
```
<!-- User-TrustedPeople-{CertHash}-IssuedTo-OmaUri-End -->

<!-- User-TrustedPeople-{CertHash}-IssuedTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate subject. This is equivalent to the Subject member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- User-TrustedPeople-{CertHash}-IssuedTo-Description-End -->

<!-- User-TrustedPeople-{CertHash}-IssuedTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-TrustedPeople-{CertHash}-IssuedTo-Editable-End -->

<!-- User-TrustedPeople-{CertHash}-IssuedTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-TrustedPeople-{CertHash}-IssuedTo-DFProperties-End -->

<!-- User-TrustedPeople-{CertHash}-IssuedTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-TrustedPeople-{CertHash}-IssuedTo-Examples-End -->

<!-- User-TrustedPeople-{CertHash}-IssuedTo-End -->

<!-- User-TrustedPeople-{CertHash}-TemplateName-Begin -->
#### User/TrustedPeople/{CertHash}/TemplateName

<!-- User-TrustedPeople-{CertHash}-TemplateName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-TrustedPeople-{CertHash}-TemplateName-Applicability-End -->

<!-- User-TrustedPeople-{CertHash}-TemplateName-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/TrustedPeople/{CertHash}/TemplateName
```
<!-- User-TrustedPeople-{CertHash}-TemplateName-OmaUri-End -->

<!-- User-TrustedPeople-{CertHash}-TemplateName-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the certificate template name. Supported operation is Get.
<!-- User-TrustedPeople-{CertHash}-TemplateName-Description-End -->

<!-- User-TrustedPeople-{CertHash}-TemplateName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-TrustedPeople-{CertHash}-TemplateName-Editable-End -->

<!-- User-TrustedPeople-{CertHash}-TemplateName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-TrustedPeople-{CertHash}-TemplateName-DFProperties-End -->

<!-- User-TrustedPeople-{CertHash}-TemplateName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-TrustedPeople-{CertHash}-TemplateName-Examples-End -->

<!-- User-TrustedPeople-{CertHash}-TemplateName-End -->

<!-- User-TrustedPeople-{CertHash}-ValidFrom-Begin -->
#### User/TrustedPeople/{CertHash}/ValidFrom

<!-- User-TrustedPeople-{CertHash}-ValidFrom-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-TrustedPeople-{CertHash}-ValidFrom-Applicability-End -->

<!-- User-TrustedPeople-{CertHash}-ValidFrom-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/TrustedPeople/{CertHash}/ValidFrom
```
<!-- User-TrustedPeople-{CertHash}-ValidFrom-OmaUri-End -->

<!-- User-TrustedPeople-{CertHash}-ValidFrom-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.
<!-- User-TrustedPeople-{CertHash}-ValidFrom-Description-End -->

<!-- User-TrustedPeople-{CertHash}-ValidFrom-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-TrustedPeople-{CertHash}-ValidFrom-Editable-End -->

<!-- User-TrustedPeople-{CertHash}-ValidFrom-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-TrustedPeople-{CertHash}-ValidFrom-DFProperties-End -->

<!-- User-TrustedPeople-{CertHash}-ValidFrom-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-TrustedPeople-{CertHash}-ValidFrom-Examples-End -->

<!-- User-TrustedPeople-{CertHash}-ValidFrom-End -->

<!-- User-TrustedPeople-{CertHash}-ValidTo-Begin -->
#### User/TrustedPeople/{CertHash}/ValidTo

<!-- User-TrustedPeople-{CertHash}-ValidTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-TrustedPeople-{CertHash}-ValidTo-Applicability-End -->

<!-- User-TrustedPeople-{CertHash}-ValidTo-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/TrustedPeople/{CertHash}/ValidTo
```
<!-- User-TrustedPeople-{CertHash}-ValidTo-OmaUri-End -->

<!-- User-TrustedPeople-{CertHash}-ValidTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure.
<!-- User-TrustedPeople-{CertHash}-ValidTo-Description-End -->

<!-- User-TrustedPeople-{CertHash}-ValidTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-TrustedPeople-{CertHash}-ValidTo-Editable-End -->

<!-- User-TrustedPeople-{CertHash}-ValidTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-TrustedPeople-{CertHash}-ValidTo-DFProperties-End -->

<!-- User-TrustedPeople-{CertHash}-ValidTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-TrustedPeople-{CertHash}-ValidTo-Examples-End -->

<!-- User-TrustedPeople-{CertHash}-ValidTo-End -->

<!-- User-TrustedPublisher-Begin -->
## User/TrustedPublisher

<!-- User-TrustedPublisher-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-TrustedPublisher-Applicability-End -->

<!-- User-TrustedPublisher-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/TrustedPublisher
```
<!-- User-TrustedPublisher-OmaUri-End -->

<!-- User-TrustedPublisher-Description-Begin -->
<!-- Description-Source-DDF -->
Node for trusted publisher certificates.
<!-- User-TrustedPublisher-Description-End -->

<!-- User-TrustedPublisher-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-TrustedPublisher-Editable-End -->

<!-- User-TrustedPublisher-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-TrustedPublisher-DFProperties-End -->

<!-- User-TrustedPublisher-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-TrustedPublisher-Examples-End -->

<!-- User-TrustedPublisher-End -->

<!-- User-TrustedPublisher-{CertHash}-Begin -->
### User/TrustedPublisher/{CertHash}

<!-- User-TrustedPublisher-{CertHash}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-TrustedPublisher-{CertHash}-Applicability-End -->

<!-- User-TrustedPublisher-{CertHash}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/TrustedPublisher/{CertHash}
```
<!-- User-TrustedPublisher-{CertHash}-OmaUri-End -->

<!-- User-TrustedPublisher-{CertHash}-Description-Begin -->
<!-- Description-Source-DDF -->
Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.
<!-- User-TrustedPublisher-{CertHash}-Description-End -->

<!-- User-TrustedPublisher-{CertHash}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-TrustedPublisher-{CertHash}-Editable-End -->

<!-- User-TrustedPublisher-{CertHash}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Delete, Get |
| Dynamic Node Naming | UniqueName: Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.  |
<!-- User-TrustedPublisher-{CertHash}-DFProperties-End -->

<!-- User-TrustedPublisher-{CertHash}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-TrustedPublisher-{CertHash}-Examples-End -->

<!-- User-TrustedPublisher-{CertHash}-End -->

<!-- User-TrustedPublisher-{CertHash}-EncodedCertificate-Begin -->
#### User/TrustedPublisher/{CertHash}/EncodedCertificate

<!-- User-TrustedPublisher-{CertHash}-EncodedCertificate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-TrustedPublisher-{CertHash}-EncodedCertificate-Applicability-End -->

<!-- User-TrustedPublisher-{CertHash}-EncodedCertificate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/TrustedPublisher/{CertHash}/EncodedCertificate
```
<!-- User-TrustedPublisher-{CertHash}-EncodedCertificate-OmaUri-End -->

<!-- User-TrustedPublisher-{CertHash}-EncodedCertificate-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value can't include extra formatting characters such as embedded linefeeds, etc.
<!-- User-TrustedPublisher-{CertHash}-EncodedCertificate-Description-End -->

<!-- User-TrustedPublisher-{CertHash}-EncodedCertificate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-TrustedPublisher-{CertHash}-EncodedCertificate-Editable-End -->

<!-- User-TrustedPublisher-{CertHash}-EncodedCertificate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Add, Get, Replace |
<!-- User-TrustedPublisher-{CertHash}-EncodedCertificate-DFProperties-End -->

<!-- User-TrustedPublisher-{CertHash}-EncodedCertificate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-TrustedPublisher-{CertHash}-EncodedCertificate-Examples-End -->

<!-- User-TrustedPublisher-{CertHash}-EncodedCertificate-End -->

<!-- User-TrustedPublisher-{CertHash}-IssuedBy-Begin -->
#### User/TrustedPublisher/{CertHash}/IssuedBy

<!-- User-TrustedPublisher-{CertHash}-IssuedBy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-TrustedPublisher-{CertHash}-IssuedBy-Applicability-End -->

<!-- User-TrustedPublisher-{CertHash}-IssuedBy-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/TrustedPublisher/{CertHash}/IssuedBy
```
<!-- User-TrustedPublisher-{CertHash}-IssuedBy-OmaUri-End -->

<!-- User-TrustedPublisher-{CertHash}-IssuedBy-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate issuer. This is equivalent to the Issuer member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- User-TrustedPublisher-{CertHash}-IssuedBy-Description-End -->

<!-- User-TrustedPublisher-{CertHash}-IssuedBy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-TrustedPublisher-{CertHash}-IssuedBy-Editable-End -->

<!-- User-TrustedPublisher-{CertHash}-IssuedBy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-TrustedPublisher-{CertHash}-IssuedBy-DFProperties-End -->

<!-- User-TrustedPublisher-{CertHash}-IssuedBy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-TrustedPublisher-{CertHash}-IssuedBy-Examples-End -->

<!-- User-TrustedPublisher-{CertHash}-IssuedBy-End -->

<!-- User-TrustedPublisher-{CertHash}-IssuedTo-Begin -->
#### User/TrustedPublisher/{CertHash}/IssuedTo

<!-- User-TrustedPublisher-{CertHash}-IssuedTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-TrustedPublisher-{CertHash}-IssuedTo-Applicability-End -->

<!-- User-TrustedPublisher-{CertHash}-IssuedTo-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/TrustedPublisher/{CertHash}/IssuedTo
```
<!-- User-TrustedPublisher-{CertHash}-IssuedTo-OmaUri-End -->

<!-- User-TrustedPublisher-{CertHash}-IssuedTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate subject. This is equivalent to the Subject member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- User-TrustedPublisher-{CertHash}-IssuedTo-Description-End -->

<!-- User-TrustedPublisher-{CertHash}-IssuedTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-TrustedPublisher-{CertHash}-IssuedTo-Editable-End -->

<!-- User-TrustedPublisher-{CertHash}-IssuedTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-TrustedPublisher-{CertHash}-IssuedTo-DFProperties-End -->

<!-- User-TrustedPublisher-{CertHash}-IssuedTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-TrustedPublisher-{CertHash}-IssuedTo-Examples-End -->

<!-- User-TrustedPublisher-{CertHash}-IssuedTo-End -->

<!-- User-TrustedPublisher-{CertHash}-TemplateName-Begin -->
#### User/TrustedPublisher/{CertHash}/TemplateName

<!-- User-TrustedPublisher-{CertHash}-TemplateName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-TrustedPublisher-{CertHash}-TemplateName-Applicability-End -->

<!-- User-TrustedPublisher-{CertHash}-TemplateName-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/TrustedPublisher/{CertHash}/TemplateName
```
<!-- User-TrustedPublisher-{CertHash}-TemplateName-OmaUri-End -->

<!-- User-TrustedPublisher-{CertHash}-TemplateName-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the certificate template name. Supported operation is Get.
<!-- User-TrustedPublisher-{CertHash}-TemplateName-Description-End -->

<!-- User-TrustedPublisher-{CertHash}-TemplateName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-TrustedPublisher-{CertHash}-TemplateName-Editable-End -->

<!-- User-TrustedPublisher-{CertHash}-TemplateName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-TrustedPublisher-{CertHash}-TemplateName-DFProperties-End -->

<!-- User-TrustedPublisher-{CertHash}-TemplateName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-TrustedPublisher-{CertHash}-TemplateName-Examples-End -->

<!-- User-TrustedPublisher-{CertHash}-TemplateName-End -->

<!-- User-TrustedPublisher-{CertHash}-ValidFrom-Begin -->
#### User/TrustedPublisher/{CertHash}/ValidFrom

<!-- User-TrustedPublisher-{CertHash}-ValidFrom-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-TrustedPublisher-{CertHash}-ValidFrom-Applicability-End -->

<!-- User-TrustedPublisher-{CertHash}-ValidFrom-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/TrustedPublisher/{CertHash}/ValidFrom
```
<!-- User-TrustedPublisher-{CertHash}-ValidFrom-OmaUri-End -->

<!-- User-TrustedPublisher-{CertHash}-ValidFrom-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.
<!-- User-TrustedPublisher-{CertHash}-ValidFrom-Description-End -->

<!-- User-TrustedPublisher-{CertHash}-ValidFrom-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-TrustedPublisher-{CertHash}-ValidFrom-Editable-End -->

<!-- User-TrustedPublisher-{CertHash}-ValidFrom-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-TrustedPublisher-{CertHash}-ValidFrom-DFProperties-End -->

<!-- User-TrustedPublisher-{CertHash}-ValidFrom-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-TrustedPublisher-{CertHash}-ValidFrom-Examples-End -->

<!-- User-TrustedPublisher-{CertHash}-ValidFrom-End -->

<!-- User-TrustedPublisher-{CertHash}-ValidTo-Begin -->
#### User/TrustedPublisher/{CertHash}/ValidTo

<!-- User-TrustedPublisher-{CertHash}-ValidTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-TrustedPublisher-{CertHash}-ValidTo-Applicability-End -->

<!-- User-TrustedPublisher-{CertHash}-ValidTo-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/TrustedPublisher/{CertHash}/ValidTo
```
<!-- User-TrustedPublisher-{CertHash}-ValidTo-OmaUri-End -->

<!-- User-TrustedPublisher-{CertHash}-ValidTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure.
<!-- User-TrustedPublisher-{CertHash}-ValidTo-Description-End -->

<!-- User-TrustedPublisher-{CertHash}-ValidTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-TrustedPublisher-{CertHash}-ValidTo-Editable-End -->

<!-- User-TrustedPublisher-{CertHash}-ValidTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-TrustedPublisher-{CertHash}-ValidTo-DFProperties-End -->

<!-- User-TrustedPublisher-{CertHash}-ValidTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-TrustedPublisher-{CertHash}-ValidTo-Examples-End -->

<!-- User-TrustedPublisher-{CertHash}-ValidTo-End -->

<!-- User-UntrustedCertificates-Begin -->
## User/UntrustedCertificates

<!-- User-UntrustedCertificates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- User-UntrustedCertificates-Applicability-End -->

<!-- User-UntrustedCertificates-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/UntrustedCertificates
```
<!-- User-UntrustedCertificates-OmaUri-End -->

<!-- User-UntrustedCertificates-Description-Begin -->
<!-- Description-Source-DDF -->
Node for certificates that aren't trusted. IT admin can use this node to immediately flag certificates that have been compromised and no longer usable.
<!-- User-UntrustedCertificates-Description-End -->

<!-- User-UntrustedCertificates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-UntrustedCertificates-Editable-End -->

<!-- User-UntrustedCertificates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-UntrustedCertificates-DFProperties-End -->

<!-- User-UntrustedCertificates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-UntrustedCertificates-Examples-End -->

<!-- User-UntrustedCertificates-End -->

<!-- User-UntrustedCertificates-{CertHash}-Begin -->
### User/UntrustedCertificates/{CertHash}

<!-- User-UntrustedCertificates-{CertHash}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- User-UntrustedCertificates-{CertHash}-Applicability-End -->

<!-- User-UntrustedCertificates-{CertHash}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/UntrustedCertificates/{CertHash}
```
<!-- User-UntrustedCertificates-{CertHash}-OmaUri-End -->

<!-- User-UntrustedCertificates-{CertHash}-Description-Begin -->
<!-- Description-Source-DDF -->
Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.
<!-- User-UntrustedCertificates-{CertHash}-Description-End -->

<!-- User-UntrustedCertificates-{CertHash}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-UntrustedCertificates-{CertHash}-Editable-End -->

<!-- User-UntrustedCertificates-{CertHash}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Delete, Get |
| Dynamic Node Naming | UniqueName: Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value.  |
<!-- User-UntrustedCertificates-{CertHash}-DFProperties-End -->

<!-- User-UntrustedCertificates-{CertHash}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-UntrustedCertificates-{CertHash}-Examples-End -->

<!-- User-UntrustedCertificates-{CertHash}-End -->

<!-- User-UntrustedCertificates-{CertHash}-EncodedCertificate-Begin -->
#### User/UntrustedCertificates/{CertHash}/EncodedCertificate

<!-- User-UntrustedCertificates-{CertHash}-EncodedCertificate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- User-UntrustedCertificates-{CertHash}-EncodedCertificate-Applicability-End -->

<!-- User-UntrustedCertificates-{CertHash}-EncodedCertificate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/UntrustedCertificates/{CertHash}/EncodedCertificate
```
<!-- User-UntrustedCertificates-{CertHash}-EncodedCertificate-OmaUri-End -->

<!-- User-UntrustedCertificates-{CertHash}-EncodedCertificate-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value can't include extra formatting characters such as embedded linefeeds, etc.
<!-- User-UntrustedCertificates-{CertHash}-EncodedCertificate-Description-End -->

<!-- User-UntrustedCertificates-{CertHash}-EncodedCertificate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-UntrustedCertificates-{CertHash}-EncodedCertificate-Editable-End -->

<!-- User-UntrustedCertificates-{CertHash}-EncodedCertificate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Add, Get, Replace |
<!-- User-UntrustedCertificates-{CertHash}-EncodedCertificate-DFProperties-End -->

<!-- User-UntrustedCertificates-{CertHash}-EncodedCertificate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-UntrustedCertificates-{CertHash}-EncodedCertificate-Examples-End -->

<!-- User-UntrustedCertificates-{CertHash}-EncodedCertificate-End -->

<!-- User-UntrustedCertificates-{CertHash}-IssuedBy-Begin -->
#### User/UntrustedCertificates/{CertHash}/IssuedBy

<!-- User-UntrustedCertificates-{CertHash}-IssuedBy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- User-UntrustedCertificates-{CertHash}-IssuedBy-Applicability-End -->

<!-- User-UntrustedCertificates-{CertHash}-IssuedBy-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/UntrustedCertificates/{CertHash}/IssuedBy
```
<!-- User-UntrustedCertificates-{CertHash}-IssuedBy-OmaUri-End -->

<!-- User-UntrustedCertificates-{CertHash}-IssuedBy-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate issuer. This is equivalent to the Issuer member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- User-UntrustedCertificates-{CertHash}-IssuedBy-Description-End -->

<!-- User-UntrustedCertificates-{CertHash}-IssuedBy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-UntrustedCertificates-{CertHash}-IssuedBy-Editable-End -->

<!-- User-UntrustedCertificates-{CertHash}-IssuedBy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-UntrustedCertificates-{CertHash}-IssuedBy-DFProperties-End -->

<!-- User-UntrustedCertificates-{CertHash}-IssuedBy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-UntrustedCertificates-{CertHash}-IssuedBy-Examples-End -->

<!-- User-UntrustedCertificates-{CertHash}-IssuedBy-End -->

<!-- User-UntrustedCertificates-{CertHash}-IssuedTo-Begin -->
#### User/UntrustedCertificates/{CertHash}/IssuedTo

<!-- User-UntrustedCertificates-{CertHash}-IssuedTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- User-UntrustedCertificates-{CertHash}-IssuedTo-Applicability-End -->

<!-- User-UntrustedCertificates-{CertHash}-IssuedTo-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/UntrustedCertificates/{CertHash}/IssuedTo
```
<!-- User-UntrustedCertificates-{CertHash}-IssuedTo-OmaUri-End -->

<!-- User-UntrustedCertificates-{CertHash}-IssuedTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the certificate subject. This is equivalent to the Subject member in the [CERT_INFO data structure](/windows/win32/api/wincrypt/ns-wincrypt-cert_info).
<!-- User-UntrustedCertificates-{CertHash}-IssuedTo-Description-End -->

<!-- User-UntrustedCertificates-{CertHash}-IssuedTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-UntrustedCertificates-{CertHash}-IssuedTo-Editable-End -->

<!-- User-UntrustedCertificates-{CertHash}-IssuedTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-UntrustedCertificates-{CertHash}-IssuedTo-DFProperties-End -->

<!-- User-UntrustedCertificates-{CertHash}-IssuedTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-UntrustedCertificates-{CertHash}-IssuedTo-Examples-End -->

<!-- User-UntrustedCertificates-{CertHash}-IssuedTo-End -->

<!-- User-UntrustedCertificates-{CertHash}-TemplateName-Begin -->
#### User/UntrustedCertificates/{CertHash}/TemplateName

<!-- User-UntrustedCertificates-{CertHash}-TemplateName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- User-UntrustedCertificates-{CertHash}-TemplateName-Applicability-End -->

<!-- User-UntrustedCertificates-{CertHash}-TemplateName-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/UntrustedCertificates/{CertHash}/TemplateName
```
<!-- User-UntrustedCertificates-{CertHash}-TemplateName-OmaUri-End -->

<!-- User-UntrustedCertificates-{CertHash}-TemplateName-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the certificate template name. Supported operation is Get.
<!-- User-UntrustedCertificates-{CertHash}-TemplateName-Description-End -->

<!-- User-UntrustedCertificates-{CertHash}-TemplateName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-UntrustedCertificates-{CertHash}-TemplateName-Editable-End -->

<!-- User-UntrustedCertificates-{CertHash}-TemplateName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-UntrustedCertificates-{CertHash}-TemplateName-DFProperties-End -->

<!-- User-UntrustedCertificates-{CertHash}-TemplateName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-UntrustedCertificates-{CertHash}-TemplateName-Examples-End -->

<!-- User-UntrustedCertificates-{CertHash}-TemplateName-End -->

<!-- User-UntrustedCertificates-{CertHash}-ValidFrom-Begin -->
#### User/UntrustedCertificates/{CertHash}/ValidFrom

<!-- User-UntrustedCertificates-{CertHash}-ValidFrom-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- User-UntrustedCertificates-{CertHash}-ValidFrom-Applicability-End -->

<!-- User-UntrustedCertificates-{CertHash}-ValidFrom-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/UntrustedCertificates/{CertHash}/ValidFrom
```
<!-- User-UntrustedCertificates-{CertHash}-ValidFrom-OmaUri-End -->

<!-- User-UntrustedCertificates-{CertHash}-ValidFrom-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the starting date of the certificate's validity. Supported operation is Get. This is equivalent to the NotBefore member in the CERT_INFO structure.
<!-- User-UntrustedCertificates-{CertHash}-ValidFrom-Description-End -->

<!-- User-UntrustedCertificates-{CertHash}-ValidFrom-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-UntrustedCertificates-{CertHash}-ValidFrom-Editable-End -->

<!-- User-UntrustedCertificates-{CertHash}-ValidFrom-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-UntrustedCertificates-{CertHash}-ValidFrom-DFProperties-End -->

<!-- User-UntrustedCertificates-{CertHash}-ValidFrom-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-UntrustedCertificates-{CertHash}-ValidFrom-Examples-End -->

<!-- User-UntrustedCertificates-{CertHash}-ValidFrom-End -->

<!-- User-UntrustedCertificates-{CertHash}-ValidTo-Begin -->
#### User/UntrustedCertificates/{CertHash}/ValidTo

<!-- User-UntrustedCertificates-{CertHash}-ValidTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- User-UntrustedCertificates-{CertHash}-ValidTo-Applicability-End -->

<!-- User-UntrustedCertificates-{CertHash}-ValidTo-OmaUri-Begin -->
```User
./User/Vendor/MSFT/RootCATrustedCertificates/UntrustedCertificates/{CertHash}/ValidTo
```
<!-- User-UntrustedCertificates-{CertHash}-ValidTo-OmaUri-End -->

<!-- User-UntrustedCertificates-{CertHash}-ValidTo-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the expiration date of the certificate. Supported operation is Get. This is equivalent to the NotAfter member in the CERT_INFO structure.
<!-- User-UntrustedCertificates-{CertHash}-ValidTo-Description-End -->

<!-- User-UntrustedCertificates-{CertHash}-ValidTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-UntrustedCertificates-{CertHash}-ValidTo-Editable-End -->

<!-- User-UntrustedCertificates-{CertHash}-ValidTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-UntrustedCertificates-{CertHash}-ValidTo-DFProperties-End -->

<!-- User-UntrustedCertificates-{CertHash}-ValidTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-UntrustedCertificates-{CertHash}-ValidTo-Examples-End -->

<!-- User-UntrustedCertificates-{CertHash}-ValidTo-End -->

<!-- RootCATrustedCertificates-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- RootCATrustedCertificates-CspMoreInfo-End -->

<!-- RootCATrustedCertificates-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)

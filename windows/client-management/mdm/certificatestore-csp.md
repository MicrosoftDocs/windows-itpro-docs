---
title: CertificateStore CSP
description: Learn more about the CertificateStore CSP.
ms.date: 01/31/2024
---

<!-- Auto-Generated CSP Document -->

<!-- CertificateStore-Begin -->
# CertificateStore CSP

<!-- CertificateStore-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The CertificateStore configuration service provider is used to add secure socket layers (SSL), intermediate, and self-signed certificates.

> [!NOTE]
> The CertificateStore configuration service provider does not support installing client certificates. The Microsoft protocol version of Open Mobile Alliance (OMA) is case insensitive.

For the CertificateStore CSP, you can't use the Replace command unless the node already exists.
<!-- CertificateStore-Editable-End -->

<!-- CertificateStore-Tree-Begin -->
The following list shows the CertificateStore configuration service provider nodes:

- ./Device/Vendor/MSFT/CertificateStore
  - [CA](#ca)
    - [{CertHash}](#cacerthash)
      - [EncodedCertificate](#cacerthashencodedcertificate)
      - [IssuedBy](#cacerthashissuedby)
      - [IssuedTo](#cacerthashissuedto)
      - [TemplateName](#cacerthashtemplatename)
      - [ValidFrom](#cacerthashvalidfrom)
      - [ValidTo](#cacerthashvalidto)
    - [System](#casystem)
      - [{CertHash}](#casystemcerthash)
        - [EncodedCertificate](#casystemcerthashencodedcertificate)
        - [IssuedBy](#casystemcerthashissuedby)
        - [IssuedTo](#casystemcerthashissuedto)
        - [TemplateName](#casystemcerthashtemplatename)
        - [ValidFrom](#casystemcerthashvalidfrom)
        - [ValidTo](#casystemcerthashvalidto)
  - [MY](#my)
    - [SCEP](#myscep)
      - [{UniqueID}](#myscepuniqueid)
        - [CertThumbPrint](#myscepuniqueidcertthumbprint)
        - [ErrorCode](#myscepuniqueiderrorcode)
        - [Install](#myscepuniqueidinstall)
          - [CAThumbPrint](#myscepuniqueidinstallcathumbprint)
          - [Challenge](#myscepuniqueidinstallchallenge)
          - [EKUMapping](#myscepuniqueidinstallekumapping)
          - [Enroll](#myscepuniqueidinstallenroll)
          - [HashAlgrithm](#myscepuniqueidinstallhashalgrithm)
          - [KeyLength](#myscepuniqueidinstallkeylength)
          - [KeyProtection](#myscepuniqueidinstallkeyprotection)
          - [KeyUsage](#myscepuniqueidinstallkeyusage)
          - [RetryCount](#myscepuniqueidinstallretrycount)
          - [RetryDelay](#myscepuniqueidinstallretrydelay)
          - [ServerURL](#myscepuniqueidinstallserverurl)
          - [SubjectAlternativeNames](#myscepuniqueidinstallsubjectalternativenames)
          - [SubjectName](#myscepuniqueidinstallsubjectname)
          - [TemplateName](#myscepuniqueidinstalltemplatename)
          - [ValidPeriod](#myscepuniqueidinstallvalidperiod)
          - [ValidPeriodUnit](#myscepuniqueidinstallvalidperiodunit)
        - [Status](#myscepuniqueidstatus)
    - [User](#myuser)
      - [{CertHash}](#myusercerthash)
        - [EncodedCertificate](#myusercerthashencodedcertificate)
        - [IssuedBy](#myusercerthashissuedby)
        - [IssuedTo](#myusercerthashissuedto)
        - [TemplateName](#myusercerthashtemplatename)
        - [ValidFrom](#myusercerthashvalidfrom)
        - [ValidTo](#myusercerthashvalidto)
    - [WSTEP](#mywstep)
      - [CertThumprint](#mywstepcertthumprint)
      - [Renew](#mywsteprenew)
        - [ErrorCode](#mywsteprenewerrorcode)
        - [LastRenewalAttemptTime](#mywsteprenewlastrenewalattempttime)
        - [RenewNow](#mywsteprenewrenewnow)
        - [RenewPeriod](#mywsteprenewrenewperiod)
        - [RetryAfterExpiryInterval](#mywsteprenewretryafterexpiryinterval)
        - [RetryInterval](#mywsteprenewretryinterval)
        - [ROBOSupport](#mywsteprenewrobosupport)
        - [ServerURL](#mywsteprenewserverurl)
        - [Status](#mywsteprenewstatus)
  - [ROOT](#root)
    - [{CertHash}](#rootcerthash)
      - [EncodedCertificate](#rootcerthashencodedcertificate)
      - [IssuedBy](#rootcerthashissuedby)
      - [IssuedTo](#rootcerthashissuedto)
      - [TemplateName](#rootcerthashtemplatename)
      - [ValidFrom](#rootcerthashvalidfrom)
      - [ValidTo](#rootcerthashvalidto)
    - [System](#rootsystem)
      - [{CertHash}](#rootsystemcerthash)
        - [EncodedCertificate](#rootsystemcerthashencodedcertificate)
        - [IssuedBy](#rootsystemcerthashissuedby)
        - [IssuedTo](#rootsystemcerthashissuedto)
        - [TemplateName](#rootsystemcerthashtemplatename)
        - [ValidFrom](#rootsystemcerthashvalidfrom)
        - [ValidTo](#rootsystemcerthashvalidto)
<!-- CertificateStore-Tree-End -->

<!-- Device-CA-Begin -->
## CA

<!-- Device-CA-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-Applicability-End -->

<!-- Device-CA-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/CA
```
<!-- Device-CA-OmaUri-End -->

<!-- Device-CA-Description-Begin -->
<!-- Description-Source-DDF -->
This cryptographic store contains intermediary certification authorities.
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
### CA/{CertHash}

<!-- Device-CA-{CertHash}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-{CertHash}-Applicability-End -->

<!-- Device-CA-{CertHash}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/CA/{CertHash}
```
<!-- Device-CA-{CertHash}-OmaUri-End -->

<!-- Device-CA-{CertHash}-Description-Begin -->
<!-- Description-Source-DDF -->
The SHA1 hash for the certificate. The 20-byte SHA1 hash of the certificate is specified in hexadecimal. This node is implicitly created only when the EncodedCertificate node is added.
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
| Dynamic Node Naming | UniqueName: The SHA1 hash for the certificate.  |
<!-- Device-CA-{CertHash}-DFProperties-End -->

<!-- Device-CA-{CertHash}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CA-{CertHash}-Examples-End -->

<!-- Device-CA-{CertHash}-End -->

<!-- Device-CA-{CertHash}-EncodedCertificate-Begin -->
#### CA/{CertHash}/EncodedCertificate

<!-- Device-CA-{CertHash}-EncodedCertificate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-{CertHash}-EncodedCertificate-Applicability-End -->

<!-- Device-CA-{CertHash}-EncodedCertificate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/CA/{CertHash}/EncodedCertificate
```
<!-- Device-CA-{CertHash}-EncodedCertificate-OmaUri-End -->

<!-- Device-CA-{CertHash}-EncodedCertificate-Description-Begin -->
<!-- Description-Source-DDF -->
The base64 Encoded X.509 certificate.
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
#### CA/{CertHash}/IssuedBy

<!-- Device-CA-{CertHash}-IssuedBy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-{CertHash}-IssuedBy-Applicability-End -->

<!-- Device-CA-{CertHash}-IssuedBy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/CA/{CertHash}/IssuedBy
```
<!-- Device-CA-{CertHash}-IssuedBy-OmaUri-End -->

<!-- Device-CA-{CertHash}-IssuedBy-Description-Begin -->
<!-- Description-Source-DDF -->
The name of the certificate issuer. This node is implicitly created only when the EncodedCertificate node is added.
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
#### CA/{CertHash}/IssuedTo

<!-- Device-CA-{CertHash}-IssuedTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-{CertHash}-IssuedTo-Applicability-End -->

<!-- Device-CA-{CertHash}-IssuedTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/CA/{CertHash}/IssuedTo
```
<!-- Device-CA-{CertHash}-IssuedTo-OmaUri-End -->

<!-- Device-CA-{CertHash}-IssuedTo-Description-Begin -->
<!-- Description-Source-DDF -->
The name of the certificate subject. This node is implicitly created only when the EncodedCertificate node is added.
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
#### CA/{CertHash}/TemplateName

<!-- Device-CA-{CertHash}-TemplateName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-{CertHash}-TemplateName-Applicability-End -->

<!-- Device-CA-{CertHash}-TemplateName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/CA/{CertHash}/TemplateName
```
<!-- Device-CA-{CertHash}-TemplateName-OmaUri-End -->

<!-- Device-CA-{CertHash}-TemplateName-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the certificate template name.
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
#### CA/{CertHash}/ValidFrom

<!-- Device-CA-{CertHash}-ValidFrom-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-{CertHash}-ValidFrom-Applicability-End -->

<!-- Device-CA-{CertHash}-ValidFrom-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/CA/{CertHash}/ValidFrom
```
<!-- Device-CA-{CertHash}-ValidFrom-OmaUri-End -->

<!-- Device-CA-{CertHash}-ValidFrom-Description-Begin -->
<!-- Description-Source-DDF -->
The starting date of the certificate's validity. This node is implicitly created only when the EncodedCertificate node is added.
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
#### CA/{CertHash}/ValidTo

<!-- Device-CA-{CertHash}-ValidTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-{CertHash}-ValidTo-Applicability-End -->

<!-- Device-CA-{CertHash}-ValidTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/CA/{CertHash}/ValidTo
```
<!-- Device-CA-{CertHash}-ValidTo-OmaUri-End -->

<!-- Device-CA-{CertHash}-ValidTo-Description-Begin -->
<!-- Description-Source-DDF -->
The expiration date of the certificate. This node is implicitly created only when the EncodedCertificate node is added.
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

<!-- Device-CA-System-Begin -->
### CA/System

<!-- Device-CA-System-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-System-Applicability-End -->

<!-- Device-CA-System-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/CA/System
```
<!-- Device-CA-System-OmaUri-End -->

<!-- Device-CA-System-Description-Begin -->
<!-- Description-Source-DDF -->
This store holds the System portion of the CA store.
<!-- Device-CA-System-Description-End -->

<!-- Device-CA-System-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Use [RootCATrustedCertificates CSP](rootcacertificates-csp.md) moving forward for installing CA certificates.
<!-- Device-CA-System-Editable-End -->

<!-- Device-CA-System-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-CA-System-DFProperties-End -->

<!-- Device-CA-System-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CA-System-Examples-End -->

<!-- Device-CA-System-End -->

<!-- Device-CA-System-{CertHash}-Begin -->
#### CA/System/{CertHash}

<!-- Device-CA-System-{CertHash}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-System-{CertHash}-Applicability-End -->

<!-- Device-CA-System-{CertHash}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/CA/System/{CertHash}
```
<!-- Device-CA-System-{CertHash}-OmaUri-End -->

<!-- Device-CA-System-{CertHash}-Description-Begin -->
<!-- Description-Source-DDF -->
The SHA1 hash for the certificate. The 20-byte SHA1 hash of the certificate is specified in hexadecimal. This node is implicitly created only when the EncodedCertificate node is added.
<!-- Device-CA-System-{CertHash}-Description-End -->

<!-- Device-CA-System-{CertHash}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CA-System-{CertHash}-Editable-End -->

<!-- Device-CA-System-{CertHash}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Delete, Get |
| Dynamic Node Naming | UniqueName: The SHA1 hash for the certificate.  |
<!-- Device-CA-System-{CertHash}-DFProperties-End -->

<!-- Device-CA-System-{CertHash}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CA-System-{CertHash}-Examples-End -->

<!-- Device-CA-System-{CertHash}-End -->

<!-- Device-CA-System-{CertHash}-EncodedCertificate-Begin -->
##### CA/System/{CertHash}/EncodedCertificate

<!-- Device-CA-System-{CertHash}-EncodedCertificate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-System-{CertHash}-EncodedCertificate-Applicability-End -->

<!-- Device-CA-System-{CertHash}-EncodedCertificate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/CA/System/{CertHash}/EncodedCertificate
```
<!-- Device-CA-System-{CertHash}-EncodedCertificate-OmaUri-End -->

<!-- Device-CA-System-{CertHash}-EncodedCertificate-Description-Begin -->
<!-- Description-Source-DDF -->
The base64 Encoded X.509 certificate.
<!-- Device-CA-System-{CertHash}-EncodedCertificate-Description-End -->

<!-- Device-CA-System-{CertHash}-EncodedCertificate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CA-System-{CertHash}-EncodedCertificate-Editable-End -->

<!-- Device-CA-System-{CertHash}-EncodedCertificate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Add, Get, Replace |
<!-- Device-CA-System-{CertHash}-EncodedCertificate-DFProperties-End -->

<!-- Device-CA-System-{CertHash}-EncodedCertificate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CA-System-{CertHash}-EncodedCertificate-Examples-End -->

<!-- Device-CA-System-{CertHash}-EncodedCertificate-End -->

<!-- Device-CA-System-{CertHash}-IssuedBy-Begin -->
##### CA/System/{CertHash}/IssuedBy

<!-- Device-CA-System-{CertHash}-IssuedBy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-System-{CertHash}-IssuedBy-Applicability-End -->

<!-- Device-CA-System-{CertHash}-IssuedBy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/CA/System/{CertHash}/IssuedBy
```
<!-- Device-CA-System-{CertHash}-IssuedBy-OmaUri-End -->

<!-- Device-CA-System-{CertHash}-IssuedBy-Description-Begin -->
<!-- Description-Source-DDF -->
The name of the certificate issuer. This node is implicitly created only when the EncodedCertificate node is added.
<!-- Device-CA-System-{CertHash}-IssuedBy-Description-End -->

<!-- Device-CA-System-{CertHash}-IssuedBy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CA-System-{CertHash}-IssuedBy-Editable-End -->

<!-- Device-CA-System-{CertHash}-IssuedBy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-CA-System-{CertHash}-IssuedBy-DFProperties-End -->

<!-- Device-CA-System-{CertHash}-IssuedBy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CA-System-{CertHash}-IssuedBy-Examples-End -->

<!-- Device-CA-System-{CertHash}-IssuedBy-End -->

<!-- Device-CA-System-{CertHash}-IssuedTo-Begin -->
##### CA/System/{CertHash}/IssuedTo

<!-- Device-CA-System-{CertHash}-IssuedTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-System-{CertHash}-IssuedTo-Applicability-End -->

<!-- Device-CA-System-{CertHash}-IssuedTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/CA/System/{CertHash}/IssuedTo
```
<!-- Device-CA-System-{CertHash}-IssuedTo-OmaUri-End -->

<!-- Device-CA-System-{CertHash}-IssuedTo-Description-Begin -->
<!-- Description-Source-DDF -->
The name of the certificate subject. This node is implicitly created only when the EncodedCertificate node is added.
<!-- Device-CA-System-{CertHash}-IssuedTo-Description-End -->

<!-- Device-CA-System-{CertHash}-IssuedTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CA-System-{CertHash}-IssuedTo-Editable-End -->

<!-- Device-CA-System-{CertHash}-IssuedTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-CA-System-{CertHash}-IssuedTo-DFProperties-End -->

<!-- Device-CA-System-{CertHash}-IssuedTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CA-System-{CertHash}-IssuedTo-Examples-End -->

<!-- Device-CA-System-{CertHash}-IssuedTo-End -->

<!-- Device-CA-System-{CertHash}-TemplateName-Begin -->
##### CA/System/{CertHash}/TemplateName

<!-- Device-CA-System-{CertHash}-TemplateName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-System-{CertHash}-TemplateName-Applicability-End -->

<!-- Device-CA-System-{CertHash}-TemplateName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/CA/System/{CertHash}/TemplateName
```
<!-- Device-CA-System-{CertHash}-TemplateName-OmaUri-End -->

<!-- Device-CA-System-{CertHash}-TemplateName-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the certificate template name.
<!-- Device-CA-System-{CertHash}-TemplateName-Description-End -->

<!-- Device-CA-System-{CertHash}-TemplateName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CA-System-{CertHash}-TemplateName-Editable-End -->

<!-- Device-CA-System-{CertHash}-TemplateName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-CA-System-{CertHash}-TemplateName-DFProperties-End -->

<!-- Device-CA-System-{CertHash}-TemplateName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CA-System-{CertHash}-TemplateName-Examples-End -->

<!-- Device-CA-System-{CertHash}-TemplateName-End -->

<!-- Device-CA-System-{CertHash}-ValidFrom-Begin -->
##### CA/System/{CertHash}/ValidFrom

<!-- Device-CA-System-{CertHash}-ValidFrom-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-System-{CertHash}-ValidFrom-Applicability-End -->

<!-- Device-CA-System-{CertHash}-ValidFrom-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/CA/System/{CertHash}/ValidFrom
```
<!-- Device-CA-System-{CertHash}-ValidFrom-OmaUri-End -->

<!-- Device-CA-System-{CertHash}-ValidFrom-Description-Begin -->
<!-- Description-Source-DDF -->
The starting date of the certificate's validity. This node is implicitly created only when the EncodedCertificate node is added.
<!-- Device-CA-System-{CertHash}-ValidFrom-Description-End -->

<!-- Device-CA-System-{CertHash}-ValidFrom-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CA-System-{CertHash}-ValidFrom-Editable-End -->

<!-- Device-CA-System-{CertHash}-ValidFrom-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-CA-System-{CertHash}-ValidFrom-DFProperties-End -->

<!-- Device-CA-System-{CertHash}-ValidFrom-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CA-System-{CertHash}-ValidFrom-Examples-End -->

<!-- Device-CA-System-{CertHash}-ValidFrom-End -->

<!-- Device-CA-System-{CertHash}-ValidTo-Begin -->
##### CA/System/{CertHash}/ValidTo

<!-- Device-CA-System-{CertHash}-ValidTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CA-System-{CertHash}-ValidTo-Applicability-End -->

<!-- Device-CA-System-{CertHash}-ValidTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/CA/System/{CertHash}/ValidTo
```
<!-- Device-CA-System-{CertHash}-ValidTo-OmaUri-End -->

<!-- Device-CA-System-{CertHash}-ValidTo-Description-Begin -->
<!-- Description-Source-DDF -->
The expiration date of the certificate. This node is implicitly created only when the EncodedCertificate node is added.
<!-- Device-CA-System-{CertHash}-ValidTo-Description-End -->

<!-- Device-CA-System-{CertHash}-ValidTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CA-System-{CertHash}-ValidTo-Editable-End -->

<!-- Device-CA-System-{CertHash}-ValidTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-CA-System-{CertHash}-ValidTo-DFProperties-End -->

<!-- Device-CA-System-{CertHash}-ValidTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CA-System-{CertHash}-ValidTo-Examples-End -->

<!-- Device-CA-System-{CertHash}-ValidTo-End -->

<!-- Device-MY-Begin -->
## MY

<!-- Device-MY-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-Applicability-End -->

<!-- Device-MY-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY
```
<!-- Device-MY-OmaUri-End -->

<!-- Device-MY-Description-Begin -->
<!-- Description-Source-DDF -->
This store keeps all end-user personal certificates.
<!-- Device-MY-Description-End -->

<!-- Device-MY-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MY-Editable-End -->

<!-- Device-MY-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MY-DFProperties-End -->

<!-- Device-MY-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-Examples-End -->

<!-- Device-MY-End -->

<!-- Device-MY-SCEP-Begin -->
### MY/SCEP

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- Device-MY-SCEP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-Applicability-End -->

<!-- Device-MY-SCEP-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP
```
<!-- Device-MY-SCEP-OmaUri-End -->

<!-- Device-MY-SCEP-Description-Begin -->
<!-- Description-Source-DDF -->
This store holds the SCEP portion of the MY store and handle operations related to SCEP certificate enrollment.
<!-- Device-MY-SCEP-Description-End -->

<!-- Device-MY-SCEP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Use [ClientCertificateInstall CSP](clientcertificateinstall-csp.md) to install SCEP certificates moving forward.
<!-- Device-MY-SCEP-Editable-End -->

<!-- Device-MY-SCEP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MY-SCEP-DFProperties-End -->

<!-- Device-MY-SCEP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-SCEP-Examples-End -->

<!-- Device-MY-SCEP-End -->

<!-- Device-MY-SCEP-{UniqueID}-Begin -->
#### MY/SCEP/{UniqueID}

<!-- Device-MY-SCEP-{UniqueID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-{UniqueID}-Applicability-End -->

<!-- Device-MY-SCEP-{UniqueID}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP/{UniqueID}
```
<!-- Device-MY-SCEP-{UniqueID}-OmaUri-End -->

<!-- Device-MY-SCEP-{UniqueID}-Description-Begin -->
<!-- Description-Source-DDF -->
The UniqueID for the SCEP enrollment request. Each client certificate should've different unique ID.
<!-- Device-MY-SCEP-{UniqueID}-Description-End -->

<!-- Device-MY-SCEP-{UniqueID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Editable-End -->

<!-- Device-MY-SCEP-{UniqueID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-MY-SCEP-{UniqueID}-DFProperties-End -->

<!-- Device-MY-SCEP-{UniqueID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Examples-End -->

<!-- Device-MY-SCEP-{UniqueID}-End -->

<!-- Device-MY-SCEP-{UniqueID}-CertThumbPrint-Begin -->
##### MY/SCEP/{UniqueID}/CertThumbPrint

<!-- Device-MY-SCEP-{UniqueID}-CertThumbPrint-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-{UniqueID}-CertThumbPrint-Applicability-End -->

<!-- Device-MY-SCEP-{UniqueID}-CertThumbPrint-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP/{UniqueID}/CertThumbPrint
```
<!-- Device-MY-SCEP-{UniqueID}-CertThumbPrint-OmaUri-End -->

<!-- Device-MY-SCEP-{UniqueID}-CertThumbPrint-Description-Begin -->
<!-- Description-Source-DDF -->
Specify the current cert's thumbprint.
<!-- Device-MY-SCEP-{UniqueID}-CertThumbPrint-Description-End -->

<!-- Device-MY-SCEP-{UniqueID}-CertThumbPrint-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
20-byte value of the SHA1 certificate hash specified as a hexadecimal string value.
<!-- Device-MY-SCEP-{UniqueID}-CertThumbPrint-Editable-End -->

<!-- Device-MY-SCEP-{UniqueID}-CertThumbPrint-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-MY-SCEP-{UniqueID}-CertThumbPrint-DFProperties-End -->

<!-- Device-MY-SCEP-{UniqueID}-CertThumbPrint-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-CertThumbPrint-Examples-End -->

<!-- Device-MY-SCEP-{UniqueID}-CertThumbPrint-End -->

<!-- Device-MY-SCEP-{UniqueID}-ErrorCode-Begin -->
##### MY/SCEP/{UniqueID}/ErrorCode

<!-- Device-MY-SCEP-{UniqueID}-ErrorCode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-{UniqueID}-ErrorCode-Applicability-End -->

<!-- Device-MY-SCEP-{UniqueID}-ErrorCode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP/{UniqueID}/ErrorCode
```
<!-- Device-MY-SCEP-{UniqueID}-ErrorCode-OmaUri-End -->

<!-- Device-MY-SCEP-{UniqueID}-ErrorCode-Description-Begin -->
<!-- Description-Source-DDF -->
Specify the last hresult in case enroll action failed.
<!-- Device-MY-SCEP-{UniqueID}-ErrorCode-Description-End -->

<!-- Device-MY-SCEP-{UniqueID}-ErrorCode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-ErrorCode-Editable-End -->

<!-- Device-MY-SCEP-{UniqueID}-ErrorCode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-MY-SCEP-{UniqueID}-ErrorCode-DFProperties-End -->

<!-- Device-MY-SCEP-{UniqueID}-ErrorCode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-ErrorCode-Examples-End -->

<!-- Device-MY-SCEP-{UniqueID}-ErrorCode-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-Begin -->
##### MY/SCEP/{UniqueID}/Install

<!-- Device-MY-SCEP-{UniqueID}-Install-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-{UniqueID}-Install-Applicability-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP/{UniqueID}/Install
```
<!-- Device-MY-SCEP-{UniqueID}-Install-OmaUri-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-Description-Begin -->
<!-- Description-Source-DDF -->
The group to represent the install request.
<!-- Device-MY-SCEP-{UniqueID}-Install-Description-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Though the children nodes under Install support Replace commands, after the Exec command is sent to the device, the device takes the values that are set when the Exec command is accepted. You should not expect the node value change that occurs after the Exec command is accepted to impact the current undergoing enrollment. You should check the Status node value and make sure that the device is not at an unknown stage before changing the children node values.
<!-- Device-MY-SCEP-{UniqueID}-Install-Editable-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MY-SCEP-{UniqueID}-Install-DFProperties-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Install-Examples-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-CAThumbPrint-Begin -->
###### MY/SCEP/{UniqueID}/Install/CAThumbPrint

<!-- Device-MY-SCEP-{UniqueID}-Install-CAThumbPrint-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-{UniqueID}-Install-CAThumbPrint-Applicability-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-CAThumbPrint-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP/{UniqueID}/Install/CAThumbPrint
```
<!-- Device-MY-SCEP-{UniqueID}-Install-CAThumbPrint-OmaUri-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-CAThumbPrint-Description-Begin -->
<!-- Description-Source-DDF -->
Specify root CA thumbprint.
<!-- Device-MY-SCEP-{UniqueID}-Install-CAThumbPrint-Description-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-CAThumbPrint-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
20-byte value of the SHA1 certificate hash specified as a hexadecimal string value. When client authenticates the SCEP server, it checks CA certificate from SCEP server for a match with this certificate. If it doesn't match, the authentication fails.
<!-- Device-MY-SCEP-{UniqueID}-Install-CAThumbPrint-Editable-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-CAThumbPrint-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get |
<!-- Device-MY-SCEP-{UniqueID}-Install-CAThumbPrint-DFProperties-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-CAThumbPrint-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Install-CAThumbPrint-Examples-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-CAThumbPrint-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-Challenge-Begin -->
###### MY/SCEP/{UniqueID}/Install/Challenge

<!-- Device-MY-SCEP-{UniqueID}-Install-Challenge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-{UniqueID}-Install-Challenge-Applicability-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-Challenge-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP/{UniqueID}/Install/Challenge
```
<!-- Device-MY-SCEP-{UniqueID}-Install-Challenge-OmaUri-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-Challenge-Description-Begin -->
<!-- Description-Source-DDF -->
Enroll requester authentication shared secret.
<!-- Device-MY-SCEP-{UniqueID}-Install-Challenge-Description-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-Challenge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The value must be base64 encoded. Challenge is deleted shortly after the Exec command is accepted.
<!-- Device-MY-SCEP-{UniqueID}-Install-Challenge-Editable-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-Challenge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get |
<!-- Device-MY-SCEP-{UniqueID}-Install-Challenge-DFProperties-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-Challenge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Install-Challenge-Examples-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-Challenge-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-EKUMapping-Begin -->
###### MY/SCEP/{UniqueID}/Install/EKUMapping

<!-- Device-MY-SCEP-{UniqueID}-Install-EKUMapping-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-{UniqueID}-Install-EKUMapping-Applicability-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-EKUMapping-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP/{UniqueID}/Install/EKUMapping
```
<!-- Device-MY-SCEP-{UniqueID}-Install-EKUMapping-OmaUri-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-EKUMapping-Description-Begin -->
<!-- Description-Source-DDF -->
Specify extended key usages. The list of OIDs are separated by plus "+".
<!-- Device-MY-SCEP-{UniqueID}-Install-EKUMapping-Description-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-EKUMapping-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Install-EKUMapping-Editable-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-EKUMapping-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get |
<!-- Device-MY-SCEP-{UniqueID}-Install-EKUMapping-DFProperties-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-EKUMapping-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Install-EKUMapping-Examples-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-EKUMapping-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-Enroll-Begin -->
###### MY/SCEP/{UniqueID}/Install/Enroll

<!-- Device-MY-SCEP-{UniqueID}-Install-Enroll-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-{UniqueID}-Install-Enroll-Applicability-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-Enroll-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP/{UniqueID}/Install/Enroll
```
<!-- Device-MY-SCEP-{UniqueID}-Install-Enroll-OmaUri-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-Enroll-Description-Begin -->
<!-- Description-Source-DDF -->
Start the cert enrollment.
<!-- Device-MY-SCEP-{UniqueID}-Install-Enroll-Description-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-Enroll-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The MDM server can later query the device to find out whether the new certificate is added. Value type is null, which means that this node doesn't contain a value.
<!-- Device-MY-SCEP-{UniqueID}-Install-Enroll-Editable-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-Enroll-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Exec |
<!-- Device-MY-SCEP-{UniqueID}-Install-Enroll-DFProperties-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-Enroll-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Install-Enroll-Examples-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-Enroll-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-HashAlgrithm-Begin -->
###### MY/SCEP/{UniqueID}/Install/HashAlgrithm

<!-- Device-MY-SCEP-{UniqueID}-Install-HashAlgrithm-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-{UniqueID}-Install-HashAlgrithm-Applicability-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-HashAlgrithm-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP/{UniqueID}/Install/HashAlgrithm
```
<!-- Device-MY-SCEP-{UniqueID}-Install-HashAlgrithm-OmaUri-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-HashAlgrithm-Description-Begin -->
<!-- Description-Source-DDF -->
Client create Cert enroll request, get supported hash OIalgorithm from SCEP server and match it with one specified in this parameter.
<!-- Device-MY-SCEP-{UniqueID}-Install-HashAlgrithm-Description-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-HashAlgrithm-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Hash algorithm family (SHA-1, SHA-2, SHA-3) specified by the MDM server. If multiple hash algorithm families are specified, they must be separated with +.
<!-- Device-MY-SCEP-{UniqueID}-Install-HashAlgrithm-Editable-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-HashAlgrithm-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get |
<!-- Device-MY-SCEP-{UniqueID}-Install-HashAlgrithm-DFProperties-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-HashAlgrithm-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Install-HashAlgrithm-Examples-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-HashAlgrithm-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyLength-Begin -->
###### MY/SCEP/{UniqueID}/Install/KeyLength

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyLength-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-{UniqueID}-Install-KeyLength-Applicability-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyLength-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP/{UniqueID}/Install/KeyLength
```
<!-- Device-MY-SCEP-{UniqueID}-Install-KeyLength-OmaUri-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyLength-Description-Begin -->
<!-- Description-Source-DDF -->
Specify private key length (RSA).
<!-- Device-MY-SCEP-{UniqueID}-Install-KeyLength-Description-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyLength-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Valid values are 1024, 2048, 4096. NGC key lengths supported should be specified.
<!-- Device-MY-SCEP-{UniqueID}-Install-KeyLength-Editable-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyLength-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get |
<!-- Device-MY-SCEP-{UniqueID}-Install-KeyLength-DFProperties-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyLength-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Install-KeyLength-Examples-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyLength-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyProtection-Begin -->
###### MY/SCEP/{UniqueID}/Install/KeyProtection

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyProtection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-{UniqueID}-Install-KeyProtection-Applicability-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyProtection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP/{UniqueID}/Install/KeyProtection
```
<!-- Device-MY-SCEP-{UniqueID}-Install-KeyProtection-OmaUri-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyProtection-Description-Begin -->
<!-- Description-Source-DDF -->
Specify where to keep the private key.
<!-- Device-MY-SCEP-{UniqueID}-Install-KeyProtection-Description-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyProtection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Although the private key is protected by TPM, it isn't protected with TPM PIN. SCEP enrolled certificate doesn't support TPM PIN protection. Supported values are one of the following values:

- 1: Private key is protected by device TPM.
- 2: Private key is protected by device TPM if the device supports TPM.
- 3 (default): Private key is only saved in the software KSP.
<!-- Device-MY-SCEP-{UniqueID}-Install-KeyProtection-Editable-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyProtection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Get |
<!-- Device-MY-SCEP-{UniqueID}-Install-KeyProtection-DFProperties-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyProtection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Install-KeyProtection-Examples-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyProtection-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyUsage-Begin -->
###### MY/SCEP/{UniqueID}/Install/KeyUsage

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyUsage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-{UniqueID}-Install-KeyUsage-Applicability-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyUsage-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP/{UniqueID}/Install/KeyUsage
```
<!-- Device-MY-SCEP-{UniqueID}-Install-KeyUsage-OmaUri-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyUsage-Description-Begin -->
<!-- Description-Source-DDF -->
Specify the key usage bits (0x80, 0x20, 0xA0) for the cert.
<!-- Device-MY-SCEP-{UniqueID}-Install-KeyUsage-Description-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyUsage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The value must be specified in decimal format and should at least have second (0x20) or fourth (0x80) or both bits set. If the value doesn't have those bits set, configuration will fail.
<!-- Device-MY-SCEP-{UniqueID}-Install-KeyUsage-Editable-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyUsage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Get |
<!-- Device-MY-SCEP-{UniqueID}-Install-KeyUsage-DFProperties-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyUsage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Install-KeyUsage-Examples-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-KeyUsage-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-RetryCount-Begin -->
###### MY/SCEP/{UniqueID}/Install/RetryCount

<!-- Device-MY-SCEP-{UniqueID}-Install-RetryCount-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-{UniqueID}-Install-RetryCount-Applicability-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-RetryCount-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP/{UniqueID}/Install/RetryCount
```
<!-- Device-MY-SCEP-{UniqueID}-Install-RetryCount-OmaUri-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-RetryCount-Description-Begin -->
<!-- Description-Source-DDF -->
When the SCEP sends pending status, specify device retry times.
<!-- Device-MY-SCEP-{UniqueID}-Install-RetryCount-Description-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-RetryCount-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Default value is 3. Max value can't be larger than 30. If it's larger than 30, the device will use 30. The min value is 0, which means no retry.
<!-- Device-MY-SCEP-{UniqueID}-Install-RetryCount-Editable-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-RetryCount-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Get |
<!-- Device-MY-SCEP-{UniqueID}-Install-RetryCount-DFProperties-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-RetryCount-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Install-RetryCount-Examples-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-RetryCount-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-RetryDelay-Begin -->
###### MY/SCEP/{UniqueID}/Install/RetryDelay

<!-- Device-MY-SCEP-{UniqueID}-Install-RetryDelay-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-{UniqueID}-Install-RetryDelay-Applicability-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-RetryDelay-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP/{UniqueID}/Install/RetryDelay
```
<!-- Device-MY-SCEP-{UniqueID}-Install-RetryDelay-OmaUri-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-RetryDelay-Description-Begin -->
<!-- Description-Source-DDF -->
When the SCEP server sends pending status, specify device retry waiting time in minutes.
<!-- Device-MY-SCEP-{UniqueID}-Install-RetryDelay-Description-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-RetryDelay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Default value is 5 and the minimum value is 1.
<!-- Device-MY-SCEP-{UniqueID}-Install-RetryDelay-Editable-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-RetryDelay-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Get |
<!-- Device-MY-SCEP-{UniqueID}-Install-RetryDelay-DFProperties-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-RetryDelay-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Install-RetryDelay-Examples-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-RetryDelay-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-ServerURL-Begin -->
###### MY/SCEP/{UniqueID}/Install/ServerURL

<!-- Device-MY-SCEP-{UniqueID}-Install-ServerURL-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-{UniqueID}-Install-ServerURL-Applicability-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-ServerURL-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP/{UniqueID}/Install/ServerURL
```
<!-- Device-MY-SCEP-{UniqueID}-Install-ServerURL-OmaUri-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-ServerURL-Description-Begin -->
<!-- Description-Source-DDF -->
Specify the cert enrollment server.
<!-- Device-MY-SCEP-{UniqueID}-Install-ServerURL-Description-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-ServerURL-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Install-ServerURL-Editable-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-ServerURL-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get |
<!-- Device-MY-SCEP-{UniqueID}-Install-ServerURL-DFProperties-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-ServerURL-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Install-ServerURL-Examples-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-ServerURL-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Begin -->
###### MY/SCEP/{UniqueID}/Install/SubjectAlternativeNames

<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Applicability-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectAlternativeNames-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP/{UniqueID}/Install/SubjectAlternativeNames
```
<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectAlternativeNames-OmaUri-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Description-Begin -->
<!-- Description-Source-DDF -->
Specify subject alternative name. Multiple alternative names could be specified by this node. Each name is the combination of name format+actual name. Each pair is separated by semi-comma.
<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Description-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
or example, multiple subject alternative names are presented in the format `<nameformat1>+<actual name1>;<name format 2>+<actual name2>`.
<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Editable-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectAlternativeNames-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get |
<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectAlternativeNames-DFProperties-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Examples-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectAlternativeNames-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectName-Begin -->
###### MY/SCEP/{UniqueID}/Install/SubjectName

<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectName-Applicability-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP/{UniqueID}/Install/SubjectName
```
<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectName-OmaUri-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectName-Description-Begin -->
<!-- Description-Source-DDF -->
Specify the subject name.
<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectName-Description-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The SubjectName value is quoted if it contains leading or trailing white space or one of the following characters: (`,`, `=`, `+`, `;`). For more information, see [CertNameToStrA function](/windows/win32/api/wincrypt/nf-wincrypt-certnametostra#remarks).
<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectName-Editable-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get |
<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectName-DFProperties-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectName-Examples-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-SubjectName-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-TemplateName-Begin -->
###### MY/SCEP/{UniqueID}/Install/TemplateName

<!-- Device-MY-SCEP-{UniqueID}-Install-TemplateName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-{UniqueID}-Install-TemplateName-Applicability-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-TemplateName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP/{UniqueID}/Install/TemplateName
```
<!-- Device-MY-SCEP-{UniqueID}-Install-TemplateName-OmaUri-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-TemplateName-Description-Begin -->
<!-- Description-Source-DDF -->
Certificate Template Name OID (As in AD used by PKI infrastructure.
<!-- Device-MY-SCEP-{UniqueID}-Install-TemplateName-Description-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-TemplateName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Install-TemplateName-Editable-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-TemplateName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get |
<!-- Device-MY-SCEP-{UniqueID}-Install-TemplateName-DFProperties-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-TemplateName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Install-TemplateName-Examples-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-TemplateName-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriod-Begin -->
###### MY/SCEP/{UniqueID}/Install/ValidPeriod

<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriod-Applicability-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriod-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP/{UniqueID}/Install/ValidPeriod
```
<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriod-OmaUri-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriod-Description-Begin -->
<!-- Description-Source-DDF -->
Specify the period of time that cert is valid. The valid period specified by MDM will overwrite the valid period specified in cert template.
<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriod-Description-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Valid values are one of the following:

- Days (default)
- Months
- Years
<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriod-Editable-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriod-DFProperties-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriod-Examples-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriod-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriodUnit-Begin -->
###### MY/SCEP/{UniqueID}/Install/ValidPeriodUnit

<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriodUnit-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriodUnit-Applicability-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriodUnit-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP/{UniqueID}/Install/ValidPeriodUnit
```
<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriodUnit-OmaUri-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriodUnit-Description-Begin -->
<!-- Description-Source-DDF -->
Specify valid period unit type.
<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriodUnit-Description-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriodUnit-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriodUnit-Editable-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriodUnit-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get |
<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriodUnit-DFProperties-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriodUnit-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
Default is 0. The period is defined in ValidPeriod node. The valid period specified by MDM overwrites the valid period specified in the certificate template. For example, if ValidPeriod is days and ValidPeriodUnits is 30, it means the total valid duration is 30 days.

> [!NOTE]
> The device only sends the MDM server expected certificate validation period (ValidPeriodUnits + ValidPeriod) of the SCEP server as part of certificate enrollment request. How this valid period is used to create the certificate depends on the MDM server.
<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriodUnit-Examples-End -->

<!-- Device-MY-SCEP-{UniqueID}-Install-ValidPeriodUnit-End -->

<!-- Device-MY-SCEP-{UniqueID}-Status-Begin -->
##### MY/SCEP/{UniqueID}/Status

<!-- Device-MY-SCEP-{UniqueID}-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-SCEP-{UniqueID}-Status-Applicability-End -->

<!-- Device-MY-SCEP-{UniqueID}-Status-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/SCEP/{UniqueID}/Status
```
<!-- Device-MY-SCEP-{UniqueID}-Status-OmaUri-End -->

<!-- Device-MY-SCEP-{UniqueID}-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Specify the latest status for the certificate due to enroll request.
<!-- Device-MY-SCEP-{UniqueID}-Status-Description-End -->

<!-- Device-MY-SCEP-{UniqueID}-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Valid values are one of the following values:

- 1: Finished successfully.
- 2: Pending. The device hasn't finished the action, but has received the SCEP server pending response.
- 16: Action failed.
- 32: Unknown.
<!-- Device-MY-SCEP-{UniqueID}-Status-Editable-End -->

<!-- Device-MY-SCEP-{UniqueID}-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-MY-SCEP-{UniqueID}-Status-DFProperties-End -->

<!-- Device-MY-SCEP-{UniqueID}-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-SCEP-{UniqueID}-Status-Examples-End -->

<!-- Device-MY-SCEP-{UniqueID}-Status-End -->

<!-- Device-MY-User-Begin -->
### MY/User

<!-- Device-MY-User-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-User-Applicability-End -->

<!-- Device-MY-User-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/User
```
<!-- Device-MY-User-OmaUri-End -->

<!-- Device-MY-User-Description-Begin -->
<!-- Description-Source-DDF -->
This store holds the User portion of the MY store.
<!-- Device-MY-User-Description-End -->

<!-- Device-MY-User-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MY-User-Editable-End -->

<!-- Device-MY-User-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MY-User-DFProperties-End -->

<!-- Device-MY-User-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-User-Examples-End -->

<!-- Device-MY-User-End -->

<!-- Device-MY-User-{CertHash}-Begin -->
#### MY/User/{CertHash}

<!-- Device-MY-User-{CertHash}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-User-{CertHash}-Applicability-End -->

<!-- Device-MY-User-{CertHash}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/User/{CertHash}
```
<!-- Device-MY-User-{CertHash}-OmaUri-End -->

<!-- Device-MY-User-{CertHash}-Description-Begin -->
<!-- Description-Source-DDF -->
The SHA1 hash for the certificate. The 20-byte SHA1 hash of the certificate is specified in hexadecimal. This node is implicitly created only when the EncodedCertificate node is added.
<!-- Device-MY-User-{CertHash}-Description-End -->

<!-- Device-MY-User-{CertHash}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MY-User-{CertHash}-Editable-End -->

<!-- Device-MY-User-{CertHash}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Delete, Get |
| Dynamic Node Naming | UniqueName: The SHA1 hash for the certificate.  |
<!-- Device-MY-User-{CertHash}-DFProperties-End -->

<!-- Device-MY-User-{CertHash}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-User-{CertHash}-Examples-End -->

<!-- Device-MY-User-{CertHash}-End -->

<!-- Device-MY-User-{CertHash}-EncodedCertificate-Begin -->
##### MY/User/{CertHash}/EncodedCertificate

<!-- Device-MY-User-{CertHash}-EncodedCertificate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-User-{CertHash}-EncodedCertificate-Applicability-End -->

<!-- Device-MY-User-{CertHash}-EncodedCertificate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/User/{CertHash}/EncodedCertificate
```
<!-- Device-MY-User-{CertHash}-EncodedCertificate-OmaUri-End -->

<!-- Device-MY-User-{CertHash}-EncodedCertificate-Description-Begin -->
<!-- Description-Source-DDF -->
The base64 Encoded X.509 certificate. Note that though during MDM enrollment, enrollment server could use WAP XML format to add public part of MDM client cert via EncodedCertificate node, properly enroll a client certificate including private needs a cert enroll protocol handle it or user installs it manually. In WP, the server can't purely rely on CertificateStore CSP to install a client certificate including private key.
<!-- Device-MY-User-{CertHash}-EncodedCertificate-Description-End -->

<!-- Device-MY-User-{CertHash}-EncodedCertificate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MY-User-{CertHash}-EncodedCertificate-Editable-End -->

<!-- Device-MY-User-{CertHash}-EncodedCertificate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Add, Get, Replace |
<!-- Device-MY-User-{CertHash}-EncodedCertificate-DFProperties-End -->

<!-- Device-MY-User-{CertHash}-EncodedCertificate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-User-{CertHash}-EncodedCertificate-Examples-End -->

<!-- Device-MY-User-{CertHash}-EncodedCertificate-End -->

<!-- Device-MY-User-{CertHash}-IssuedBy-Begin -->
##### MY/User/{CertHash}/IssuedBy

<!-- Device-MY-User-{CertHash}-IssuedBy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-User-{CertHash}-IssuedBy-Applicability-End -->

<!-- Device-MY-User-{CertHash}-IssuedBy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/User/{CertHash}/IssuedBy
```
<!-- Device-MY-User-{CertHash}-IssuedBy-OmaUri-End -->

<!-- Device-MY-User-{CertHash}-IssuedBy-Description-Begin -->
<!-- Description-Source-DDF -->
The name of the certificate issuer. This node is implicitly created only when the EncodedCertificate node is added.
<!-- Device-MY-User-{CertHash}-IssuedBy-Description-End -->

<!-- Device-MY-User-{CertHash}-IssuedBy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MY-User-{CertHash}-IssuedBy-Editable-End -->

<!-- Device-MY-User-{CertHash}-IssuedBy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-MY-User-{CertHash}-IssuedBy-DFProperties-End -->

<!-- Device-MY-User-{CertHash}-IssuedBy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-User-{CertHash}-IssuedBy-Examples-End -->

<!-- Device-MY-User-{CertHash}-IssuedBy-End -->

<!-- Device-MY-User-{CertHash}-IssuedTo-Begin -->
##### MY/User/{CertHash}/IssuedTo

<!-- Device-MY-User-{CertHash}-IssuedTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-User-{CertHash}-IssuedTo-Applicability-End -->

<!-- Device-MY-User-{CertHash}-IssuedTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/User/{CertHash}/IssuedTo
```
<!-- Device-MY-User-{CertHash}-IssuedTo-OmaUri-End -->

<!-- Device-MY-User-{CertHash}-IssuedTo-Description-Begin -->
<!-- Description-Source-DDF -->
The name of the certificate subject. This node is implicitly created only when the EncodedCertificate node is added.
<!-- Device-MY-User-{CertHash}-IssuedTo-Description-End -->

<!-- Device-MY-User-{CertHash}-IssuedTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MY-User-{CertHash}-IssuedTo-Editable-End -->

<!-- Device-MY-User-{CertHash}-IssuedTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-MY-User-{CertHash}-IssuedTo-DFProperties-End -->

<!-- Device-MY-User-{CertHash}-IssuedTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-User-{CertHash}-IssuedTo-Examples-End -->

<!-- Device-MY-User-{CertHash}-IssuedTo-End -->

<!-- Device-MY-User-{CertHash}-TemplateName-Begin -->
##### MY/User/{CertHash}/TemplateName

<!-- Device-MY-User-{CertHash}-TemplateName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-User-{CertHash}-TemplateName-Applicability-End -->

<!-- Device-MY-User-{CertHash}-TemplateName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/User/{CertHash}/TemplateName
```
<!-- Device-MY-User-{CertHash}-TemplateName-OmaUri-End -->

<!-- Device-MY-User-{CertHash}-TemplateName-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the certificate template name.
<!-- Device-MY-User-{CertHash}-TemplateName-Description-End -->

<!-- Device-MY-User-{CertHash}-TemplateName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MY-User-{CertHash}-TemplateName-Editable-End -->

<!-- Device-MY-User-{CertHash}-TemplateName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-MY-User-{CertHash}-TemplateName-DFProperties-End -->

<!-- Device-MY-User-{CertHash}-TemplateName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-User-{CertHash}-TemplateName-Examples-End -->

<!-- Device-MY-User-{CertHash}-TemplateName-End -->

<!-- Device-MY-User-{CertHash}-ValidFrom-Begin -->
##### MY/User/{CertHash}/ValidFrom

<!-- Device-MY-User-{CertHash}-ValidFrom-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-User-{CertHash}-ValidFrom-Applicability-End -->

<!-- Device-MY-User-{CertHash}-ValidFrom-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/User/{CertHash}/ValidFrom
```
<!-- Device-MY-User-{CertHash}-ValidFrom-OmaUri-End -->

<!-- Device-MY-User-{CertHash}-ValidFrom-Description-Begin -->
<!-- Description-Source-DDF -->
The starting date of the certificate's validity. This node is implicitly created only when the EncodedCertificate node is added.
<!-- Device-MY-User-{CertHash}-ValidFrom-Description-End -->

<!-- Device-MY-User-{CertHash}-ValidFrom-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MY-User-{CertHash}-ValidFrom-Editable-End -->

<!-- Device-MY-User-{CertHash}-ValidFrom-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-MY-User-{CertHash}-ValidFrom-DFProperties-End -->

<!-- Device-MY-User-{CertHash}-ValidFrom-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-User-{CertHash}-ValidFrom-Examples-End -->

<!-- Device-MY-User-{CertHash}-ValidFrom-End -->

<!-- Device-MY-User-{CertHash}-ValidTo-Begin -->
##### MY/User/{CertHash}/ValidTo

<!-- Device-MY-User-{CertHash}-ValidTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-User-{CertHash}-ValidTo-Applicability-End -->

<!-- Device-MY-User-{CertHash}-ValidTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/User/{CertHash}/ValidTo
```
<!-- Device-MY-User-{CertHash}-ValidTo-OmaUri-End -->

<!-- Device-MY-User-{CertHash}-ValidTo-Description-Begin -->
<!-- Description-Source-DDF -->
The expiration date of the certificate. This node is implicitly created only when the EncodedCertificate node is added.
<!-- Device-MY-User-{CertHash}-ValidTo-Description-End -->

<!-- Device-MY-User-{CertHash}-ValidTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MY-User-{CertHash}-ValidTo-Editable-End -->

<!-- Device-MY-User-{CertHash}-ValidTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-MY-User-{CertHash}-ValidTo-DFProperties-End -->

<!-- Device-MY-User-{CertHash}-ValidTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-User-{CertHash}-ValidTo-Examples-End -->

<!-- Device-MY-User-{CertHash}-ValidTo-End -->

<!-- Device-MY-WSTEP-Begin -->
### MY/WSTEP

<!-- Device-MY-WSTEP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-WSTEP-Applicability-End -->

<!-- Device-MY-WSTEP-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/WSTEP
```
<!-- Device-MY-WSTEP-OmaUri-End -->

<!-- Device-MY-WSTEP-Description-Begin -->
<!-- Description-Source-DDF -->
The parent node that hosts client certificate that's enrolled via WSTEP, e.g. the certificate that's enrolled during MDM enrollment.
<!-- Device-MY-WSTEP-Description-End -->

<!-- Device-MY-WSTEP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The nodes under WSTEP are mostly for MDM client certificate renew requests.
<!-- Device-MY-WSTEP-Editable-End -->

<!-- Device-MY-WSTEP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MY-WSTEP-DFProperties-End -->

<!-- Device-MY-WSTEP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-WSTEP-Examples-End -->

<!-- Device-MY-WSTEP-End -->

<!-- Device-MY-WSTEP-CertThumprint-Begin -->
#### MY/WSTEP/CertThumprint

<!-- Device-MY-WSTEP-CertThumprint-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-WSTEP-CertThumprint-Applicability-End -->

<!-- Device-MY-WSTEP-CertThumprint-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/WSTEP/CertThumprint
```
<!-- Device-MY-WSTEP-CertThumprint-OmaUri-End -->

<!-- Device-MY-WSTEP-CertThumprint-Description-Begin -->
<!-- Description-Source-DDF -->
The thumb print of enrolled MDM client certificate.
<!-- Device-MY-WSTEP-CertThumprint-Description-End -->

<!-- Device-MY-WSTEP-CertThumprint-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
If renewal succeeds, it shows the renewed certificate thumbprint. If renewal fails or is in progress, it shows the thumbprint of the cert that needs to be renewed.
<!-- Device-MY-WSTEP-CertThumprint-Editable-End -->

<!-- Device-MY-WSTEP-CertThumprint-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-MY-WSTEP-CertThumprint-DFProperties-End -->

<!-- Device-MY-WSTEP-CertThumprint-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-WSTEP-CertThumprint-Examples-End -->

<!-- Device-MY-WSTEP-CertThumprint-End -->

<!-- Device-MY-WSTEP-Renew-Begin -->
#### MY/WSTEP/Renew

<!-- Device-MY-WSTEP-Renew-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-WSTEP-Renew-Applicability-End -->

<!-- Device-MY-WSTEP-Renew-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/WSTEP/Renew
```
<!-- Device-MY-WSTEP-Renew-OmaUri-End -->

<!-- Device-MY-WSTEP-Renew-Description-Begin -->
<!-- Description-Source-DDF -->
The parent node to group renewal related settings.
<!-- Device-MY-WSTEP-Renew-Description-End -->

<!-- Device-MY-WSTEP-Renew-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MY-WSTEP-Renew-Editable-End -->

<!-- Device-MY-WSTEP-Renew-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
| Atomic Required | True |
<!-- Device-MY-WSTEP-Renew-DFProperties-End -->

<!-- Device-MY-WSTEP-Renew-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-WSTEP-Renew-Examples-End -->

<!-- Device-MY-WSTEP-Renew-End -->

<!-- Device-MY-WSTEP-Renew-ErrorCode-Begin -->
##### MY/WSTEP/Renew/ErrorCode

<!-- Device-MY-WSTEP-Renew-ErrorCode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-WSTEP-Renew-ErrorCode-Applicability-End -->

<!-- Device-MY-WSTEP-Renew-ErrorCode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/WSTEP/Renew/ErrorCode
```
<!-- Device-MY-WSTEP-Renew-ErrorCode-OmaUri-End -->

<!-- Device-MY-WSTEP-Renew-ErrorCode-Description-Begin -->
<!-- Description-Source-DDF -->
If certificate renew fails, this node provide the last hresult code during renew process.
<!-- Device-MY-WSTEP-Renew-ErrorCode-Description-End -->

<!-- Device-MY-WSTEP-Renew-ErrorCode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MY-WSTEP-Renew-ErrorCode-Editable-End -->

<!-- Device-MY-WSTEP-Renew-ErrorCode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-MY-WSTEP-Renew-ErrorCode-DFProperties-End -->

<!-- Device-MY-WSTEP-Renew-ErrorCode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-WSTEP-Renew-ErrorCode-Examples-End -->

<!-- Device-MY-WSTEP-Renew-ErrorCode-End -->

<!-- Device-MY-WSTEP-Renew-LastRenewalAttemptTime-Begin -->
##### MY/WSTEP/Renew/LastRenewalAttemptTime

<!-- Device-MY-WSTEP-Renew-LastRenewalAttemptTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-MY-WSTEP-Renew-LastRenewalAttemptTime-Applicability-End -->

<!-- Device-MY-WSTEP-Renew-LastRenewalAttemptTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/WSTEP/Renew/LastRenewalAttemptTime
```
<!-- Device-MY-WSTEP-Renew-LastRenewalAttemptTime-OmaUri-End -->

<!-- Device-MY-WSTEP-Renew-LastRenewalAttemptTime-Description-Begin -->
<!-- Description-Source-DDF -->
Time of last attempted renew.
<!-- Device-MY-WSTEP-Renew-LastRenewalAttemptTime-Description-End -->

<!-- Device-MY-WSTEP-Renew-LastRenewalAttemptTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MY-WSTEP-Renew-LastRenewalAttemptTime-Editable-End -->

<!-- Device-MY-WSTEP-Renew-LastRenewalAttemptTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `time` |
| Access Type | Get |
<!-- Device-MY-WSTEP-Renew-LastRenewalAttemptTime-DFProperties-End -->

<!-- Device-MY-WSTEP-Renew-LastRenewalAttemptTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-WSTEP-Renew-LastRenewalAttemptTime-Examples-End -->

<!-- Device-MY-WSTEP-Renew-LastRenewalAttemptTime-End -->

<!-- Device-MY-WSTEP-Renew-RenewNow-Begin -->
##### MY/WSTEP/Renew/RenewNow

<!-- Device-MY-WSTEP-Renew-RenewNow-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-MY-WSTEP-Renew-RenewNow-Applicability-End -->

<!-- Device-MY-WSTEP-Renew-RenewNow-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/WSTEP/Renew/RenewNow
```
<!-- Device-MY-WSTEP-Renew-RenewNow-OmaUri-End -->

<!-- Device-MY-WSTEP-Renew-RenewNow-Description-Begin -->
<!-- Description-Source-DDF -->
Initiate a renew now.
<!-- Device-MY-WSTEP-Renew-RenewNow-Description-End -->

<!-- Device-MY-WSTEP-Renew-RenewNow-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MY-WSTEP-Renew-RenewNow-Editable-End -->

<!-- Device-MY-WSTEP-Renew-RenewNow-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Exec |
<!-- Device-MY-WSTEP-Renew-RenewNow-DFProperties-End -->

<!-- Device-MY-WSTEP-Renew-RenewNow-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-WSTEP-Renew-RenewNow-Examples-End -->

<!-- Device-MY-WSTEP-Renew-RenewNow-End -->

<!-- Device-MY-WSTEP-Renew-RenewPeriod-Begin -->
##### MY/WSTEP/Renew/RenewPeriod

<!-- Device-MY-WSTEP-Renew-RenewPeriod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-WSTEP-Renew-RenewPeriod-Applicability-End -->

<!-- Device-MY-WSTEP-Renew-RenewPeriod-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/WSTEP/Renew/RenewPeriod
```
<!-- Device-MY-WSTEP-Renew-RenewPeriod-OmaUri-End -->

<!-- Device-MY-WSTEP-Renew-RenewPeriod-Description-Begin -->
<!-- Description-Source-DDF -->
Specify the number of days prior to the enrollment cert expiration to prompt the user to renew.
<!-- Device-MY-WSTEP-Renew-RenewPeriod-Description-End -->

<!-- Device-MY-WSTEP-Renew-RenewPeriod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The MDM server can't set and update the renewal period. This parameter applies to both manual certificate renewal and request on behalf of (ROBO) certificate renewal. It's recommended that the renew period is set a couple of months before the certificate expires to ensure that the certificate gets renewed successfully with data connectivity.

The default value is 42 and the valid values are 1-1000.

> [!NOTE]
> When you set the renewal schedule over SyncML DM commands to ROBOSupport, RenewalPeriod, and RetryInterval, you must wrap them in Atomic commands.
<!-- Device-MY-WSTEP-Renew-RenewPeriod-Editable-End -->

<!-- Device-MY-WSTEP-Renew-RenewPeriod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-1000]` |
| Default Value  | 42 |
<!-- Device-MY-WSTEP-Renew-RenewPeriod-DFProperties-End -->

<!-- Device-MY-WSTEP-Renew-RenewPeriod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-WSTEP-Renew-RenewPeriod-Examples-End -->

<!-- Device-MY-WSTEP-Renew-RenewPeriod-End -->

<!-- Device-MY-WSTEP-Renew-RetryAfterExpiryInterval-Begin -->
##### MY/WSTEP/Renew/RetryAfterExpiryInterval

<!-- Device-MY-WSTEP-Renew-RetryAfterExpiryInterval-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-MY-WSTEP-Renew-RetryAfterExpiryInterval-Applicability-End -->

<!-- Device-MY-WSTEP-Renew-RetryAfterExpiryInterval-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/WSTEP/Renew/RetryAfterExpiryInterval
```
<!-- Device-MY-WSTEP-Renew-RetryAfterExpiryInterval-OmaUri-End -->

<!-- Device-MY-WSTEP-Renew-RetryAfterExpiryInterval-Description-Begin -->
<!-- Description-Source-DDF -->
How long after the enrollment cert has expiried to keep trying to renew.
<!-- Device-MY-WSTEP-Renew-RetryAfterExpiryInterval-Description-End -->

<!-- Device-MY-WSTEP-Renew-RetryAfterExpiryInterval-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MY-WSTEP-Renew-RetryAfterExpiryInterval-Editable-End -->

<!-- Device-MY-WSTEP-Renew-RetryAfterExpiryInterval-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `time` |
| Access Type | Add, Get, Replace |
<!-- Device-MY-WSTEP-Renew-RetryAfterExpiryInterval-DFProperties-End -->

<!-- Device-MY-WSTEP-Renew-RetryAfterExpiryInterval-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-WSTEP-Renew-RetryAfterExpiryInterval-Examples-End -->

<!-- Device-MY-WSTEP-Renew-RetryAfterExpiryInterval-End -->

<!-- Device-MY-WSTEP-Renew-RetryInterval-Begin -->
##### MY/WSTEP/Renew/RetryInterval

<!-- Device-MY-WSTEP-Renew-RetryInterval-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-WSTEP-Renew-RetryInterval-Applicability-End -->

<!-- Device-MY-WSTEP-Renew-RetryInterval-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/WSTEP/Renew/RetryInterval
```
<!-- Device-MY-WSTEP-Renew-RetryInterval-OmaUri-End -->

<!-- Device-MY-WSTEP-Renew-RetryInterval-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. This parameter specifies retry interval when previous renew failed (in days). It applies to both manual cert renewal and ROBO cert renewal. Retry schedule will stop at cert expiration date. For ROBO renewal failure, the client retries the renewal periodically until the device reaches the certificate expiration date. This parameter specifies the waiting period for ROBO renewal retries. For manual retry failure, there are no built-in retries. The user can retry later. At the next scheduled certificate renewal retry period, the device prompts the credential dialog again. The default value is 7 and the valid values are 1 - 1000 AND =< RenewalPeriod, otherwise it will result in errors. Value type is an integer.
<!-- Device-MY-WSTEP-Renew-RetryInterval-Description-End -->

<!-- Device-MY-WSTEP-Renew-RetryInterval-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> When you set the renewal schedule over SyncML DM commands to ROBOSupport, RenewalPeriod, and RetryInterval, you must wrap them in Atomic commands.
<!-- Device-MY-WSTEP-Renew-RetryInterval-Editable-End -->

<!-- Device-MY-WSTEP-Renew-RetryInterval-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-1000]` |
| Default Value  | 7 |
<!-- Device-MY-WSTEP-Renew-RetryInterval-DFProperties-End -->

<!-- Device-MY-WSTEP-Renew-RetryInterval-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-WSTEP-Renew-RetryInterval-Examples-End -->

<!-- Device-MY-WSTEP-Renew-RetryInterval-End -->

<!-- Device-MY-WSTEP-Renew-ROBOSupport-Begin -->
##### MY/WSTEP/Renew/ROBOSupport

<!-- Device-MY-WSTEP-Renew-ROBOSupport-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-WSTEP-Renew-ROBOSupport-Applicability-End -->

<!-- Device-MY-WSTEP-Renew-ROBOSupport-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/WSTEP/Renew/ROBOSupport
```
<!-- Device-MY-WSTEP-Renew-ROBOSupport-OmaUri-End -->

<!-- Device-MY-WSTEP-Renew-ROBOSupport-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Notify the client whether enrollment server supports ROBO auto certificate renew. NOTE: This flag is only needed to the device which is MDM enrolled via On-premise authentication method. For MDM enrolled with federated authentication, ROBO is the only supported renewal method. If the server sets this node value to be false or delete this node for federated enrolled device, the configuration will fail with OMA DM error code 405.
<!-- Device-MY-WSTEP-Renew-ROBOSupport-Description-End -->

<!-- Device-MY-WSTEP-Renew-ROBOSupport-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> When you set the renewal schedule over SyncML DM commands to ROBOSupport, RenewalPeriod, and RetryInterval, you must wrap them in Atomic commands.
<!-- Device-MY-WSTEP-Renew-ROBOSupport-Editable-End -->

<!-- Device-MY-WSTEP-Renew-ROBOSupport-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | true |
<!-- Device-MY-WSTEP-Renew-ROBOSupport-DFProperties-End -->

<!-- Device-MY-WSTEP-Renew-ROBOSupport-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| true (Default) | True. |
| false | False. |
<!-- Device-MY-WSTEP-Renew-ROBOSupport-AllowedValues-End -->

<!-- Device-MY-WSTEP-Renew-ROBOSupport-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-WSTEP-Renew-ROBOSupport-Examples-End -->

<!-- Device-MY-WSTEP-Renew-ROBOSupport-End -->

<!-- Device-MY-WSTEP-Renew-ServerURL-Begin -->
##### MY/WSTEP/Renew/ServerURL

<!-- Device-MY-WSTEP-Renew-ServerURL-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-WSTEP-Renew-ServerURL-Applicability-End -->

<!-- Device-MY-WSTEP-Renew-ServerURL-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/WSTEP/Renew/ServerURL
```
<!-- Device-MY-WSTEP-Renew-ServerURL-OmaUri-End -->

<!-- Device-MY-WSTEP-Renew-ServerURL-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Specifies the cert renewal server URL which is the discovery server.
<!-- Device-MY-WSTEP-Renew-ServerURL-Description-End -->

<!-- Device-MY-WSTEP-Renew-ServerURL-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
If this node doesn't exist, the client uses the initial certificate enrollment URL.

> [!NOTE]
> The renewal process follows the same steps as device enrollment, which means that it starts with Discovery service, followed by Enrollment policy service, and then Enrollment web service.
<!-- Device-MY-WSTEP-Renew-ServerURL-Editable-End -->

<!-- Device-MY-WSTEP-Renew-ServerURL-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-MY-WSTEP-Renew-ServerURL-DFProperties-End -->

<!-- Device-MY-WSTEP-Renew-ServerURL-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-WSTEP-Renew-ServerURL-Examples-End -->

<!-- Device-MY-WSTEP-Renew-ServerURL-End -->

<!-- Device-MY-WSTEP-Renew-Status-Begin -->
##### MY/WSTEP/Renew/Status

<!-- Device-MY-WSTEP-Renew-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MY-WSTEP-Renew-Status-Applicability-End -->

<!-- Device-MY-WSTEP-Renew-Status-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/MY/WSTEP/Renew/Status
```
<!-- Device-MY-WSTEP-Renew-Status-OmaUri-End -->

<!-- Device-MY-WSTEP-Renew-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Show the latest action status for this certificate. Supported values are one of the following: 0 - Not started. 1 - Renewal in progress. 2 - Renewal succeeded. 3 - Renewal failed.
<!-- Device-MY-WSTEP-Renew-Status-Description-End -->

<!-- Device-MY-WSTEP-Renew-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MY-WSTEP-Renew-Status-Editable-End -->

<!-- Device-MY-WSTEP-Renew-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-MY-WSTEP-Renew-Status-DFProperties-End -->

<!-- Device-MY-WSTEP-Renew-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MY-WSTEP-Renew-Status-Examples-End -->

<!-- Device-MY-WSTEP-Renew-Status-End -->

<!-- Device-ROOT-Begin -->
## ROOT

<!-- Device-ROOT-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-ROOT-Applicability-End -->

<!-- Device-ROOT-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/ROOT
```
<!-- Device-ROOT-OmaUri-End -->

<!-- Device-ROOT-Description-Begin -->
<!-- Description-Source-DDF -->
This store holds only root (self-signed) certificates.
<!-- Device-ROOT-Description-End -->

<!-- Device-ROOT-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ROOT-Editable-End -->

<!-- Device-ROOT-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-ROOT-DFProperties-End -->

<!-- Device-ROOT-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ROOT-Examples-End -->

<!-- Device-ROOT-End -->

<!-- Device-ROOT-{CertHash}-Begin -->
### ROOT/{CertHash}

<!-- Device-ROOT-{CertHash}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-ROOT-{CertHash}-Applicability-End -->

<!-- Device-ROOT-{CertHash}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/ROOT/{CertHash}
```
<!-- Device-ROOT-{CertHash}-OmaUri-End -->

<!-- Device-ROOT-{CertHash}-Description-Begin -->
<!-- Description-Source-DDF -->
The SHA1 hash for the certificate. The 20-byte SHA1 hash of the certificate is specified in hexadecimal. This node is implicitly created only when the EncodedCertificate node is added.
<!-- Device-ROOT-{CertHash}-Description-End -->

<!-- Device-ROOT-{CertHash}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ROOT-{CertHash}-Editable-End -->

<!-- Device-ROOT-{CertHash}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Delete, Get |
| Dynamic Node Naming | UniqueName: The SHA1 hash for the certificate. |
<!-- Device-ROOT-{CertHash}-DFProperties-End -->

<!-- Device-ROOT-{CertHash}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ROOT-{CertHash}-Examples-End -->

<!-- Device-ROOT-{CertHash}-End -->

<!-- Device-ROOT-{CertHash}-EncodedCertificate-Begin -->
#### ROOT/{CertHash}/EncodedCertificate

<!-- Device-ROOT-{CertHash}-EncodedCertificate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-ROOT-{CertHash}-EncodedCertificate-Applicability-End -->

<!-- Device-ROOT-{CertHash}-EncodedCertificate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/ROOT/{CertHash}/EncodedCertificate
```
<!-- Device-ROOT-{CertHash}-EncodedCertificate-OmaUri-End -->

<!-- Device-ROOT-{CertHash}-EncodedCertificate-Description-Begin -->
<!-- Description-Source-DDF -->
The base64 Encoded X.509 certificate.
<!-- Device-ROOT-{CertHash}-EncodedCertificate-Description-End -->

<!-- Device-ROOT-{CertHash}-EncodedCertificate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ROOT-{CertHash}-EncodedCertificate-Editable-End -->

<!-- Device-ROOT-{CertHash}-EncodedCertificate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Add, Get, Replace |
<!-- Device-ROOT-{CertHash}-EncodedCertificate-DFProperties-End -->

<!-- Device-ROOT-{CertHash}-EncodedCertificate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ROOT-{CertHash}-EncodedCertificate-Examples-End -->

<!-- Device-ROOT-{CertHash}-EncodedCertificate-End -->

<!-- Device-ROOT-{CertHash}-IssuedBy-Begin -->
#### ROOT/{CertHash}/IssuedBy

<!-- Device-ROOT-{CertHash}-IssuedBy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-ROOT-{CertHash}-IssuedBy-Applicability-End -->

<!-- Device-ROOT-{CertHash}-IssuedBy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/ROOT/{CertHash}/IssuedBy
```
<!-- Device-ROOT-{CertHash}-IssuedBy-OmaUri-End -->

<!-- Device-ROOT-{CertHash}-IssuedBy-Description-Begin -->
<!-- Description-Source-DDF -->
The name of the certificate issuer. This node is implicitly created only when the EncodedCertificate node is added.
<!-- Device-ROOT-{CertHash}-IssuedBy-Description-End -->

<!-- Device-ROOT-{CertHash}-IssuedBy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ROOT-{CertHash}-IssuedBy-Editable-End -->

<!-- Device-ROOT-{CertHash}-IssuedBy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-ROOT-{CertHash}-IssuedBy-DFProperties-End -->

<!-- Device-ROOT-{CertHash}-IssuedBy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ROOT-{CertHash}-IssuedBy-Examples-End -->

<!-- Device-ROOT-{CertHash}-IssuedBy-End -->

<!-- Device-ROOT-{CertHash}-IssuedTo-Begin -->
#### ROOT/{CertHash}/IssuedTo

<!-- Device-ROOT-{CertHash}-IssuedTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-ROOT-{CertHash}-IssuedTo-Applicability-End -->

<!-- Device-ROOT-{CertHash}-IssuedTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/ROOT/{CertHash}/IssuedTo
```
<!-- Device-ROOT-{CertHash}-IssuedTo-OmaUri-End -->

<!-- Device-ROOT-{CertHash}-IssuedTo-Description-Begin -->
<!-- Description-Source-DDF -->
The name of the certificate subject. This node is implicitly created only when the EncodedCertificate node is added.
<!-- Device-ROOT-{CertHash}-IssuedTo-Description-End -->

<!-- Device-ROOT-{CertHash}-IssuedTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ROOT-{CertHash}-IssuedTo-Editable-End -->

<!-- Device-ROOT-{CertHash}-IssuedTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-ROOT-{CertHash}-IssuedTo-DFProperties-End -->

<!-- Device-ROOT-{CertHash}-IssuedTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ROOT-{CertHash}-IssuedTo-Examples-End -->

<!-- Device-ROOT-{CertHash}-IssuedTo-End -->

<!-- Device-ROOT-{CertHash}-TemplateName-Begin -->
#### ROOT/{CertHash}/TemplateName

<!-- Device-ROOT-{CertHash}-TemplateName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-ROOT-{CertHash}-TemplateName-Applicability-End -->

<!-- Device-ROOT-{CertHash}-TemplateName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/ROOT/{CertHash}/TemplateName
```
<!-- Device-ROOT-{CertHash}-TemplateName-OmaUri-End -->

<!-- Device-ROOT-{CertHash}-TemplateName-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the certificate template name.
<!-- Device-ROOT-{CertHash}-TemplateName-Description-End -->

<!-- Device-ROOT-{CertHash}-TemplateName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ROOT-{CertHash}-TemplateName-Editable-End -->

<!-- Device-ROOT-{CertHash}-TemplateName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-ROOT-{CertHash}-TemplateName-DFProperties-End -->

<!-- Device-ROOT-{CertHash}-TemplateName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ROOT-{CertHash}-TemplateName-Examples-End -->

<!-- Device-ROOT-{CertHash}-TemplateName-End -->

<!-- Device-ROOT-{CertHash}-ValidFrom-Begin -->
#### ROOT/{CertHash}/ValidFrom

<!-- Device-ROOT-{CertHash}-ValidFrom-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-ROOT-{CertHash}-ValidFrom-Applicability-End -->

<!-- Device-ROOT-{CertHash}-ValidFrom-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/ROOT/{CertHash}/ValidFrom
```
<!-- Device-ROOT-{CertHash}-ValidFrom-OmaUri-End -->

<!-- Device-ROOT-{CertHash}-ValidFrom-Description-Begin -->
<!-- Description-Source-DDF -->
The starting date of the certificate's validity. This node is implicitly created only when the EncodedCertificate node is added.
<!-- Device-ROOT-{CertHash}-ValidFrom-Description-End -->

<!-- Device-ROOT-{CertHash}-ValidFrom-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ROOT-{CertHash}-ValidFrom-Editable-End -->

<!-- Device-ROOT-{CertHash}-ValidFrom-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-ROOT-{CertHash}-ValidFrom-DFProperties-End -->

<!-- Device-ROOT-{CertHash}-ValidFrom-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ROOT-{CertHash}-ValidFrom-Examples-End -->

<!-- Device-ROOT-{CertHash}-ValidFrom-End -->

<!-- Device-ROOT-{CertHash}-ValidTo-Begin -->
#### ROOT/{CertHash}/ValidTo

<!-- Device-ROOT-{CertHash}-ValidTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-ROOT-{CertHash}-ValidTo-Applicability-End -->

<!-- Device-ROOT-{CertHash}-ValidTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/ROOT/{CertHash}/ValidTo
```
<!-- Device-ROOT-{CertHash}-ValidTo-OmaUri-End -->

<!-- Device-ROOT-{CertHash}-ValidTo-Description-Begin -->
<!-- Description-Source-DDF -->
The expiration date of the certificate. This node is implicitly created only when the EncodedCertificate node is added.
<!-- Device-ROOT-{CertHash}-ValidTo-Description-End -->

<!-- Device-ROOT-{CertHash}-ValidTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ROOT-{CertHash}-ValidTo-Editable-End -->

<!-- Device-ROOT-{CertHash}-ValidTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-ROOT-{CertHash}-ValidTo-DFProperties-End -->

<!-- Device-ROOT-{CertHash}-ValidTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ROOT-{CertHash}-ValidTo-Examples-End -->

<!-- Device-ROOT-{CertHash}-ValidTo-End -->

<!-- Device-ROOT-System-Begin -->
### ROOT/System

<!-- Device-ROOT-System-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-ROOT-System-Applicability-End -->

<!-- Device-ROOT-System-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/ROOT/System
```
<!-- Device-ROOT-System-OmaUri-End -->

<!-- Device-ROOT-System-Description-Begin -->
<!-- Description-Source-DDF -->
This store holds the System portion of the root store.
<!-- Device-ROOT-System-Description-End -->

<!-- Device-ROOT-System-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ROOT-System-Editable-End -->

<!-- Device-ROOT-System-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-ROOT-System-DFProperties-End -->

<!-- Device-ROOT-System-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ROOT-System-Examples-End -->

<!-- Device-ROOT-System-End -->

<!-- Device-ROOT-System-{CertHash}-Begin -->
#### ROOT/System/{CertHash}

<!-- Device-ROOT-System-{CertHash}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-ROOT-System-{CertHash}-Applicability-End -->

<!-- Device-ROOT-System-{CertHash}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/ROOT/System/{CertHash}
```
<!-- Device-ROOT-System-{CertHash}-OmaUri-End -->

<!-- Device-ROOT-System-{CertHash}-Description-Begin -->
<!-- Description-Source-DDF -->
The SHA1 hash for the certificate. The 20-byte SHA1 hash of the certificate is specified in hexadecimal. This node is implicitly created only when the EncodedCertificate node is added.
<!-- Device-ROOT-System-{CertHash}-Description-End -->

<!-- Device-ROOT-System-{CertHash}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ROOT-System-{CertHash}-Editable-End -->

<!-- Device-ROOT-System-{CertHash}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Delete, Get |
| Dynamic Node Naming | UniqueName: The SHA1 hash for the certificate.  |
<!-- Device-ROOT-System-{CertHash}-DFProperties-End -->

<!-- Device-ROOT-System-{CertHash}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ROOT-System-{CertHash}-Examples-End -->

<!-- Device-ROOT-System-{CertHash}-End -->

<!-- Device-ROOT-System-{CertHash}-EncodedCertificate-Begin -->
##### ROOT/System/{CertHash}/EncodedCertificate

<!-- Device-ROOT-System-{CertHash}-EncodedCertificate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-ROOT-System-{CertHash}-EncodedCertificate-Applicability-End -->

<!-- Device-ROOT-System-{CertHash}-EncodedCertificate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/ROOT/System/{CertHash}/EncodedCertificate
```
<!-- Device-ROOT-System-{CertHash}-EncodedCertificate-OmaUri-End -->

<!-- Device-ROOT-System-{CertHash}-EncodedCertificate-Description-Begin -->
<!-- Description-Source-DDF -->
The base64 Encoded X.509 certificate.
<!-- Device-ROOT-System-{CertHash}-EncodedCertificate-Description-End -->

<!-- Device-ROOT-System-{CertHash}-EncodedCertificate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ROOT-System-{CertHash}-EncodedCertificate-Editable-End -->

<!-- Device-ROOT-System-{CertHash}-EncodedCertificate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Add, Get, Replace |
<!-- Device-ROOT-System-{CertHash}-EncodedCertificate-DFProperties-End -->

<!-- Device-ROOT-System-{CertHash}-EncodedCertificate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ROOT-System-{CertHash}-EncodedCertificate-Examples-End -->

<!-- Device-ROOT-System-{CertHash}-EncodedCertificate-End -->

<!-- Device-ROOT-System-{CertHash}-IssuedBy-Begin -->
##### ROOT/System/{CertHash}/IssuedBy

<!-- Device-ROOT-System-{CertHash}-IssuedBy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-ROOT-System-{CertHash}-IssuedBy-Applicability-End -->

<!-- Device-ROOT-System-{CertHash}-IssuedBy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/ROOT/System/{CertHash}/IssuedBy
```
<!-- Device-ROOT-System-{CertHash}-IssuedBy-OmaUri-End -->

<!-- Device-ROOT-System-{CertHash}-IssuedBy-Description-Begin -->
<!-- Description-Source-DDF -->
The name of the certificate issuer. This node is implicitly created only when the EncodedCertificate node is added.
<!-- Device-ROOT-System-{CertHash}-IssuedBy-Description-End -->

<!-- Device-ROOT-System-{CertHash}-IssuedBy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ROOT-System-{CertHash}-IssuedBy-Editable-End -->

<!-- Device-ROOT-System-{CertHash}-IssuedBy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-ROOT-System-{CertHash}-IssuedBy-DFProperties-End -->

<!-- Device-ROOT-System-{CertHash}-IssuedBy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ROOT-System-{CertHash}-IssuedBy-Examples-End -->

<!-- Device-ROOT-System-{CertHash}-IssuedBy-End -->

<!-- Device-ROOT-System-{CertHash}-IssuedTo-Begin -->
##### ROOT/System/{CertHash}/IssuedTo

<!-- Device-ROOT-System-{CertHash}-IssuedTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-ROOT-System-{CertHash}-IssuedTo-Applicability-End -->

<!-- Device-ROOT-System-{CertHash}-IssuedTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/ROOT/System/{CertHash}/IssuedTo
```
<!-- Device-ROOT-System-{CertHash}-IssuedTo-OmaUri-End -->

<!-- Device-ROOT-System-{CertHash}-IssuedTo-Description-Begin -->
<!-- Description-Source-DDF -->
The name of the certificate subject. This node is implicitly created only when the EncodedCertificate node is added.
<!-- Device-ROOT-System-{CertHash}-IssuedTo-Description-End -->

<!-- Device-ROOT-System-{CertHash}-IssuedTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ROOT-System-{CertHash}-IssuedTo-Editable-End -->

<!-- Device-ROOT-System-{CertHash}-IssuedTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-ROOT-System-{CertHash}-IssuedTo-DFProperties-End -->

<!-- Device-ROOT-System-{CertHash}-IssuedTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ROOT-System-{CertHash}-IssuedTo-Examples-End -->

<!-- Device-ROOT-System-{CertHash}-IssuedTo-End -->

<!-- Device-ROOT-System-{CertHash}-TemplateName-Begin -->
##### ROOT/System/{CertHash}/TemplateName

<!-- Device-ROOT-System-{CertHash}-TemplateName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-ROOT-System-{CertHash}-TemplateName-Applicability-End -->

<!-- Device-ROOT-System-{CertHash}-TemplateName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/ROOT/System/{CertHash}/TemplateName
```
<!-- Device-ROOT-System-{CertHash}-TemplateName-OmaUri-End -->

<!-- Device-ROOT-System-{CertHash}-TemplateName-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the certificate template name.
<!-- Device-ROOT-System-{CertHash}-TemplateName-Description-End -->

<!-- Device-ROOT-System-{CertHash}-TemplateName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ROOT-System-{CertHash}-TemplateName-Editable-End -->

<!-- Device-ROOT-System-{CertHash}-TemplateName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-ROOT-System-{CertHash}-TemplateName-DFProperties-End -->

<!-- Device-ROOT-System-{CertHash}-TemplateName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ROOT-System-{CertHash}-TemplateName-Examples-End -->

<!-- Device-ROOT-System-{CertHash}-TemplateName-End -->

<!-- Device-ROOT-System-{CertHash}-ValidFrom-Begin -->
##### ROOT/System/{CertHash}/ValidFrom

<!-- Device-ROOT-System-{CertHash}-ValidFrom-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-ROOT-System-{CertHash}-ValidFrom-Applicability-End -->

<!-- Device-ROOT-System-{CertHash}-ValidFrom-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/ROOT/System/{CertHash}/ValidFrom
```
<!-- Device-ROOT-System-{CertHash}-ValidFrom-OmaUri-End -->

<!-- Device-ROOT-System-{CertHash}-ValidFrom-Description-Begin -->
<!-- Description-Source-DDF -->
The starting date of the certificate's validity. This node is implicitly created only when the EncodedCertificate node is added.
<!-- Device-ROOT-System-{CertHash}-ValidFrom-Description-End -->

<!-- Device-ROOT-System-{CertHash}-ValidFrom-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ROOT-System-{CertHash}-ValidFrom-Editable-End -->

<!-- Device-ROOT-System-{CertHash}-ValidFrom-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-ROOT-System-{CertHash}-ValidFrom-DFProperties-End -->

<!-- Device-ROOT-System-{CertHash}-ValidFrom-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ROOT-System-{CertHash}-ValidFrom-Examples-End -->

<!-- Device-ROOT-System-{CertHash}-ValidFrom-End -->

<!-- Device-ROOT-System-{CertHash}-ValidTo-Begin -->
##### ROOT/System/{CertHash}/ValidTo

<!-- Device-ROOT-System-{CertHash}-ValidTo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-ROOT-System-{CertHash}-ValidTo-Applicability-End -->

<!-- Device-ROOT-System-{CertHash}-ValidTo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CertificateStore/ROOT/System/{CertHash}/ValidTo
```
<!-- Device-ROOT-System-{CertHash}-ValidTo-OmaUri-End -->

<!-- Device-ROOT-System-{CertHash}-ValidTo-Description-Begin -->
<!-- Description-Source-DDF -->
The expiration date of the certificate. This node is implicitly created only when the EncodedCertificate node is added.
<!-- Device-ROOT-System-{CertHash}-ValidTo-Description-End -->

<!-- Device-ROOT-System-{CertHash}-ValidTo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ROOT-System-{CertHash}-ValidTo-Editable-End -->

<!-- Device-ROOT-System-{CertHash}-ValidTo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-ROOT-System-{CertHash}-ValidTo-DFProperties-End -->

<!-- Device-ROOT-System-{CertHash}-ValidTo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ROOT-System-{CertHash}-ValidTo-Examples-End -->

<!-- Device-ROOT-System-{CertHash}-ValidTo-End -->

<!-- CertificateStore-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## Examples

Add a root certificate to the MDM server.

```xml
<Add>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>
./Vendor/MSFT/CertificateStore/Root/System/<CertificateHashInsertedhere>/EncodedCertificate
          </LocURI>
      </Target>
      <Data>B64EncodedCertInsertedHere</Data>
      <Meta>
         <Format xmlns="syncml:metinf">b64</Format>
      </Meta>
   </Item>
</Add>
```

Get all installed client certificates.

```xml
<Get>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>
./Vendor/MSFT/CertificateStore/My/User?list=StructData
          </LocURI>
      </Target>
   </Item>
</Get>
```

Delete a root certificate.

```xml
<Delete>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>
./Vendor/MSFT/CertificateStore/Root/System/<CertificateHashInsertedHere>
          </LocURI>
      </Target>
   </Item>
</Delete>
```

Configure the device to enroll a client certificate through SCEP.

```xml
<Atomic>
<CmdID>100</CmdID>
<Add>
   <CmdID>1</CmdID>
   <Item>
        <Target><LocURI>./Vendor/MSFT/CertificateStore/My/SCEP/CertSCEP1</LocURI>
        </Target>
        <Meta>
        <Format xmlns="syncml:metinf">node</Format>
        </Meta>
   </Item>
</Add>
<Add>
    <CmdID>2</CmdID>
    <Item>
        <Target><LocURI>./Vendor/MSFT/CertificateStore/My/SCEP/CertSCEP1/Install/RetryCount</LocURI>
        </Target>
    <Meta>
               <Format xmlns="syncml:metinf">int</Format>
    </Meta>
            <Data>1</Data>
    </Item>
</Add>
<Add>
         <CmdID>3</CmdID>
         <Item>
            <Target><LocURI>./Vendor/MSFT/CertificateStore/My/SCEP/CertSCEP1/Install/RetryDelay</LocURI>
            </Target>
            <Meta>
               <Format xmlns="syncml:metinf">int</Format>
            </Meta>
            <Data>1</Data>
         </Item>
</Add>
<Add>
         <CmdID>4</CmdID>
         <Item>
            <Target><LocURI>./Vendor/MSFT/CertificateStore/My/SCEP/CertSCEP1/Install/KeyUsage</LocURI>
            </Target>
            <Meta>
               <Format xmlns="syncml:metinf">int</Format>
            </Meta>
            <Data>160</Data>
         </Item>
</Add>
<Add>
         <CmdID>5</CmdID>
         <Item>
            <Target><LocURI>./Vendor/MSFT/CertificateStore/My/SCEP/CertSCEP1/Install/KeyLength</LocURI>
            </Target>
            <Meta>
               <Format xmlns="syncml:metinf">int</Format>
            </Meta>
            <Data>1024</Data>
         </Item>
</Add>
<Add>
         <CmdID>6</CmdID>
         <Item>
            <Target><LocURI>./Vendor/MSFT/CertificateStore/My/SCEP/CertSCEP1/Install/HashAlgorithm</LocURI>
            </Target>
            <Meta>
               <Format xmlns="syncml:metinf">chr</Format>
            </Meta>
            <Data>SHA-1</Data>
         </Item>
</Add>
<Add>
         <CmdID>7</CmdID>
         <Item>
            <Target><LocURI>./Vendor/MSFT/CertificateStore/My/SCEP/CertSCEP1/Install/SubjectName</LocURI>
            </Target>
            <Meta>
               <Format xmlns="syncml:metinf">chr</Format>
            </Meta>
            <Data>CN=AnnaLee</Data>
         </Item>
</Add>
<Add>
         <CmdID>8</CmdID>
         <Item>
            <Target><LocURI>./Vendor/MSFT/CertificateStore/My/SCEP/CertSCEP1/Install/SubjectAlternativeNames</LocURI>
            </Target>
            <Meta>
               <Format xmlns="syncml:metinf">chr</Format>
            </Meta>
            <Data>11+tom@MyDomain.Contoso.com;3+MyDomain.Contoso.com</Data>
         </Item>
</Add>
<Add>
         <CmdID>9</CmdID>
         <Item>
            <Target><LocURI>./Vendor/MSFT/CertificateStore/My/SCEP/CertSCEP1/Install/ValidPeriod</LocURI>
            </Target>
            <Meta>
               <Format xmlns="syncml:metinf">chr</Format>
            </Meta>
            <Data>Years</Data>
         </Item>
</Add>
<Add>
         <CmdID>10</CmdID>
         <Item>
            <Target><LocURI>./Vendor/MSFT/CertificateStore/My/SCEP/CertSCEP1/Install/ValidPeriodUnits</LocURI>
            </Target>
            <Meta>
               <Format xmlns="syncml:metinf">int</Format>
            </Meta>
            <Data>1</Data>
         </Item>
</Add>
<Add>
         <CmdID>11</CmdID>
         <Item>
            <Target><LocURI>./Vendor/MSFT/CertificateStore/My/SCEP/CertSCEP1/Install/EKUMapping</LocURI>
            </Target>
            <Meta>
               <Format xmlns="syncml:metinf">chr</Format>
            </Meta>
            <Data>1.3.6.1.4.1.311.10.3.12+1.3.6.1.4.1.311.10.3.4+1.3.6.1.4.1.311.20.2.2</Data>
         </Item>
</Add>
<Add>
         <CmdID>12</CmdID>
         <Item>
            <Target><LocURI>./Vendor/MSFT/CertificateStore/My/SCEP/CertSCEP1/Install/KeyProtection</LocURI>
            </Target>
            <Meta>
               <Format xmlns="syncml:metinf">int</Format>
            </Meta>
            <Data>3</Data>
         </Item>
</Add>
<Add>
         <CmdID>13</CmdID>
         <Item>
            <Target><LocURI>./Vendor/MSFT/CertificateStore/My/SCEP/CertSCEP1/Install/ServerURL</LocURI>
            </Target>
            <Meta>
               <Format xmlns="syncml:metinf">chr</Format>
            </Meta>
            <Data>https://contoso.com/certsrv/ctcep.dll</Data>
         </Item>
</Add>
<Add>
         <CmdID>14</CmdID>
         <Item>
            <Target><LocURI>./Vendor/MSFT/CertificateStore/My/SCEP/CertSCEP1/Install/Challenge</LocURI>
            </Target>
            <Meta>
               <Format xmlns="syncml:metinf">chr</Format>
            </Meta>
            <Data>ChallengeInsertedHere</Data>
         </Item>
</Add>
<Add>
         <CmdID>15</CmdID>
         <Item>
            <Target><LocURI>./Vendor/MSFT/CertificateStore/My/SCEP/CertSCEP1/Install/CAThumbprint</LocURI>
            </Target>
            <Meta>
               <Format xmlns="syncml:metinf">chr</Format>
            </Meta>
            <Data>CAThumbprintInsertedHere</Data>
         </Item>
</Add>
<Exec>
         <CmdID>16</CmdID>
         <Item>
            <Target><LocURI>./Vendor/MSFT/CertificateStore/My/SCEP/CertSCEP1/Install/Enroll</LocURI>
            </Target>
         </Item>
</Exec>
</Atomic>
```

Configure the device to automatically renew an MDM client certificate with the specified renew period and retry interval.

```xml
<Atomic>
   <CmdID>1</CmdID>
     <Replace>
         <CmdID>2</CmdID>
         <Item>
            <Target><LocURI>./Vendor/MSFT/CertificateStore/My/WSTEP/Renew/ROBOSupport</LocURI></Target>
            <Meta>
               <Format xmlns="syncml:metinf">bool</Format>
            </Meta>
            <Data>true</Data>
         </Item>
      </Replace>
      <Replace>
         <CmdID>3</CmdID>
         <Item>
            <Target><LocURI>./Vendor/MSFT/CertificateStore/My/WSTEP/Renew/RenewPeriod</LocURI></Target>
            <Meta>
               <Format xmlns="syncml:metinf">int</Format>
            </Meta>
            <Data>60</Data>
         </Item>
      </Replace>
      <Replace>
         <CmdID>4</CmdID>
         <Item>
            <Target><LocURI>./Vendor/MSFT/CertificateStore/My/WSTEP/Renew/RetryInterval</LocURI></Target>
            <Meta>
               <Format xmlns="syncml:metinf">int</Format>
            </Meta>
            <Data>4</Data>
         </Item>
      </Replace>
</Atomic>
```
<!-- CertificateStore-CspMoreInfo-End -->

<!-- CertificateStore-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)

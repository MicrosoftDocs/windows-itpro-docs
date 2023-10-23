---
title: ClientCertificateInstall CSP
description: Learn more about the ClientCertificateInstall CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 10/23/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ClientCertificateInstall-Begin -->
# ClientCertificateInstall CSP

<!-- ClientCertificateInstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The ClientCertificateInstall configuration service provider enables the enterprise to install client certificates. A client certificate has a unique ID, which is the *\[UniqueID\]* for this configuration. Each client certificate must have different UniqueIDs for the SCEP enrollment request.

> [!NOTE]
> For PFX certificate installation and SCEP installation, the SyncML commands must be wrapped in atomic commands to ensure that enrollment execution isn't triggered until all settings are configured. The Enroll command must be the last item in the atomic block.
<!-- ClientCertificateInstall-Editable-End -->

<!-- ClientCertificateInstall-Tree-Begin -->
The following list shows the ClientCertificateInstall configuration service provider nodes:

- ./Device/Vendor/MSFT/ClientCertificateInstall
  - [PFXCertInstall](#devicepfxcertinstall)
    - [{UniqueID}](#devicepfxcertinstalluniqueid)
      - [ContainerName](#devicepfxcertinstalluniqueidcontainername)
      - [KeyLocation](#devicepfxcertinstalluniqueidkeylocation)
      - [PFXCertBlob](#devicepfxcertinstalluniqueidpfxcertblob)
      - [PFXCertPassword](#devicepfxcertinstalluniqueidpfxcertpassword)
      - [PFXCertPasswordEncryptionStore](#devicepfxcertinstalluniqueidpfxcertpasswordencryptionstore)
      - [PFXCertPasswordEncryptionType](#devicepfxcertinstalluniqueidpfxcertpasswordencryptiontype)
      - [PFXKeyExportable](#devicepfxcertinstalluniqueidpfxkeyexportable)
      - [Status](#devicepfxcertinstalluniqueidstatus)
      - [Thumbprint](#devicepfxcertinstalluniqueidthumbprint)
  - [SCEP](#devicescep)
    - [{UniqueID}](#devicescepuniqueid)
      - [CertThumbprint](#devicescepuniqueidcertthumbprint)
      - [ErrorCode](#devicescepuniqueiderrorcode)
      - [Install](#devicescepuniqueidinstall)
        - [AADKeyIdentifierList](#devicescepuniqueidinstallaadkeyidentifierlist)
        - [CAThumbprint](#devicescepuniqueidinstallcathumbprint)
        - [Challenge](#devicescepuniqueidinstallchallenge)
        - [ContainerName](#devicescepuniqueidinstallcontainername)
        - [CustomTextToShowInPrompt](#devicescepuniqueidinstallcustomtexttoshowinprompt)
        - [EKUMapping](#devicescepuniqueidinstallekumapping)
        - [Enroll](#devicescepuniqueidinstallenroll)
        - [HashAlgorithm](#devicescepuniqueidinstallhashalgorithm)
        - [KeyLength](#devicescepuniqueidinstallkeylength)
        - [KeyProtection](#devicescepuniqueidinstallkeyprotection)
        - [KeyUsage](#devicescepuniqueidinstallkeyusage)
        - [RetryCount](#devicescepuniqueidinstallretrycount)
        - [RetryDelay](#devicescepuniqueidinstallretrydelay)
        - [ServerURL](#devicescepuniqueidinstallserverurl)
        - [SubjectAlternativeNames](#devicescepuniqueidinstallsubjectalternativenames)
        - [SubjectName](#devicescepuniqueidinstallsubjectname)
        - [TemplateName](#devicescepuniqueidinstalltemplatename)
        - [ValidPeriod](#devicescepuniqueidinstallvalidperiod)
        - [ValidPeriodUnits](#devicescepuniqueidinstallvalidperiodunits)
      - [RespondentServerUrl](#devicescepuniqueidrespondentserverurl)
      - [Status](#devicescepuniqueidstatus)
- ./User/Vendor/MSFT/ClientCertificateInstall
  - [PFXCertInstall](#userpfxcertinstall)
    - [{UniqueID}](#userpfxcertinstalluniqueid)
      - [ContainerName](#userpfxcertinstalluniqueidcontainername)
      - [KeyLocation](#userpfxcertinstalluniqueidkeylocation)
      - [PFXCertBlob](#userpfxcertinstalluniqueidpfxcertblob)
      - [PFXCertPassword](#userpfxcertinstalluniqueidpfxcertpassword)
      - [PFXCertPasswordEncryptionStore](#userpfxcertinstalluniqueidpfxcertpasswordencryptionstore)
      - [PFXCertPasswordEncryptionType](#userpfxcertinstalluniqueidpfxcertpasswordencryptiontype)
      - [PFXKeyExportable](#userpfxcertinstalluniqueidpfxkeyexportable)
      - [Status](#userpfxcertinstalluniqueidstatus)
      - [Thumbprint](#userpfxcertinstalluniqueidthumbprint)
  - [SCEP](#userscep)
    - [{UniqueID}](#userscepuniqueid)
      - [CertThumbprint](#userscepuniqueidcertthumbprint)
      - [ErrorCode](#userscepuniqueiderrorcode)
      - [Install](#userscepuniqueidinstall)
        - [AADKeyIdentifierList](#userscepuniqueidinstallaadkeyidentifierlist)
        - [CAThumbprint](#userscepuniqueidinstallcathumbprint)
        - [Challenge](#userscepuniqueidinstallchallenge)
        - [ContainerName](#userscepuniqueidinstallcontainername)
        - [CustomTextToShowInPrompt](#userscepuniqueidinstallcustomtexttoshowinprompt)
        - [EKUMapping](#userscepuniqueidinstallekumapping)
        - [Enroll](#userscepuniqueidinstallenroll)
        - [HashAlgorithm](#userscepuniqueidinstallhashalgorithm)
        - [KeyLength](#userscepuniqueidinstallkeylength)
        - [KeyProtection](#userscepuniqueidinstallkeyprotection)
        - [KeyUsage](#userscepuniqueidinstallkeyusage)
        - [RetryCount](#userscepuniqueidinstallretrycount)
        - [RetryDelay](#userscepuniqueidinstallretrydelay)
        - [ServerURL](#userscepuniqueidinstallserverurl)
        - [SubjectAlternativeNames](#userscepuniqueidinstallsubjectalternativenames)
        - [SubjectName](#userscepuniqueidinstallsubjectname)
        - [TemplateName](#userscepuniqueidinstalltemplatename)
        - [ValidPeriod](#userscepuniqueidinstallvalidperiod)
        - [ValidPeriodUnits](#userscepuniqueidinstallvalidperiodunits)
      - [RespondentServerUrl](#userscepuniqueidrespondentserverurl)
      - [Status](#userscepuniqueidstatus)
<!-- ClientCertificateInstall-Tree-End -->

<!-- Device-PFXCertInstall-Begin -->
## Device/PFXCertInstall

<!-- Device-PFXCertInstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-PFXCertInstall-Applicability-End -->

<!-- Device-PFXCertInstall-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall
```
<!-- Device-PFXCertInstall-OmaUri-End -->

<!-- Device-PFXCertInstall-Description-Begin -->
<!-- Description-Source-DDF -->
Required for PFX certificate installation. The parent node grouping the PFX cert related settings.
<!-- Device-PFXCertInstall-Description-End -->

<!-- Device-PFXCertInstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-PFXCertInstall-Editable-End -->

<!-- Device-PFXCertInstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-PFXCertInstall-DFProperties-End -->

<!-- Device-PFXCertInstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-PFXCertInstall-Examples-End -->

<!-- Device-PFXCertInstall-End -->

<!-- Device-PFXCertInstall-{UniqueID}-Begin -->
### Device/PFXCertInstall/{UniqueID}

<!-- Device-PFXCertInstall-{UniqueID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-PFXCertInstall-{UniqueID}-Applicability-End -->

<!-- Device-PFXCertInstall-{UniqueID}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/{UniqueID}
```
<!-- Device-PFXCertInstall-{UniqueID}-OmaUri-End -->

<!-- Device-PFXCertInstall-{UniqueID}-Description-Begin -->
<!-- Description-Source-DDF -->
Required for PFX certificate installation. A unique ID to differentiate different certificate install requests.

Format is node.

Calling Delete on the this node, should delete the certificates and the keys that were installed by the corresponding PFX blob.
<!-- Device-PFXCertInstall-{UniqueID}-Description-End -->

<!-- Device-PFXCertInstall-{UniqueID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-PFXCertInstall-{UniqueID}-Editable-End -->

<!-- Device-PFXCertInstall-{UniqueID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
| Atomic Required | True |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
<!-- Device-PFXCertInstall-{UniqueID}-DFProperties-End -->

<!-- Device-PFXCertInstall-{UniqueID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-PFXCertInstall-{UniqueID}-Examples-End -->

<!-- Device-PFXCertInstall-{UniqueID}-End -->

<!-- Device-PFXCertInstall-{UniqueID}-ContainerName-Begin -->
#### Device/PFXCertInstall/{UniqueID}/ContainerName

<!-- Device-PFXCertInstall-{UniqueID}-ContainerName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-PFXCertInstall-{UniqueID}-ContainerName-Applicability-End -->

<!-- Device-PFXCertInstall-{UniqueID}-ContainerName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/{UniqueID}/ContainerName
```
<!-- Device-PFXCertInstall-{UniqueID}-ContainerName-OmaUri-End -->

<!-- Device-PFXCertInstall-{UniqueID}-ContainerName-Description-Begin -->
<!-- Description-Source-DDF -->
Optional.

Specifies the NGC container name (if NGC KSP is chosen for above node). If this node isn't specified when NGC KSP is chosen, enrollment will fail.
<!-- Device-PFXCertInstall-{UniqueID}-ContainerName-Description-End -->

<!-- Device-PFXCertInstall-{UniqueID}-ContainerName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-PFXCertInstall-{UniqueID}-ContainerName-Editable-End -->

<!-- Device-PFXCertInstall-{UniqueID}-ContainerName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
<!-- Device-PFXCertInstall-{UniqueID}-ContainerName-DFProperties-End -->

<!-- Device-PFXCertInstall-{UniqueID}-ContainerName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-PFXCertInstall-{UniqueID}-ContainerName-Examples-End -->

<!-- Device-PFXCertInstall-{UniqueID}-ContainerName-End -->

<!-- Device-PFXCertInstall-{UniqueID}-KeyLocation-Begin -->
#### Device/PFXCertInstall/{UniqueID}/KeyLocation

<!-- Device-PFXCertInstall-{UniqueID}-KeyLocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-PFXCertInstall-{UniqueID}-KeyLocation-Applicability-End -->

<!-- Device-PFXCertInstall-{UniqueID}-KeyLocation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/{UniqueID}/KeyLocation
```
<!-- Device-PFXCertInstall-{UniqueID}-KeyLocation-OmaUri-End -->

<!-- Device-PFXCertInstall-{UniqueID}-KeyLocation-Description-Begin -->
<!-- Description-Source-DDF -->
Required for PFX certificate installation. Indicates the KeyStorage provider to target the private key installation to.
<!-- Device-PFXCertInstall-{UniqueID}-KeyLocation-Description-End -->

<!-- Device-PFXCertInstall-{UniqueID}-KeyLocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-PFXCertInstall-{UniqueID}-KeyLocation-Editable-End -->

<!-- Device-PFXCertInstall-{UniqueID}-KeyLocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Get, Replace |
<!-- Device-PFXCertInstall-{UniqueID}-KeyLocation-DFProperties-End -->

<!-- Device-PFXCertInstall-{UniqueID}-KeyLocation-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Install to TPM if present, fail if not present. |
| 2 | Install to TPM if present. If not present, fallback to software. |
| 3 | Install to software. |
| 4 | Install to Windows Hello for Business (formerly known as Microsoft Passport for Work) whose name is specified. |
<!-- Device-PFXCertInstall-{UniqueID}-KeyLocation-AllowedValues-End -->

<!-- Device-PFXCertInstall-{UniqueID}-KeyLocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-PFXCertInstall-{UniqueID}-KeyLocation-Examples-End -->

<!-- Device-PFXCertInstall-{UniqueID}-KeyLocation-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertBlob-Begin -->
#### Device/PFXCertInstall/{UniqueID}/PFXCertBlob

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertBlob-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertBlob-Applicability-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertBlob-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/{UniqueID}/PFXCertBlob
```
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertBlob-OmaUri-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertBlob-Description-Begin -->
<!-- Description-Source-DDF -->
Required.

[CRYPT_DATA_BLOB](/previous-versions/windows/desktop/legacy/aa381414(v=vs.85)) structure that contains a PFX packet with the exported and encrypted certificates and keys. Add on this node will trigger the addition to the PFX certificate. This requires that all the other nodes under UniqueID that are parameters for PFX installation (Container Name, KeyLocation, CertPassword, fKeyExportable) are present before this is called. This will also set the Status node to the current Status of the operation.

If Add is called on this node and a blob already exists, it will fail. If Replace is called on this node, the certificates will be overwritten.

If Add is called on this node for a new PFX, the certificate will be added. If Replace is called on this node when it doesn't exist, this will fail.

In other words, using Replace or Add will result in the effect of either overwriting the old certificate or adding a new certificate
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertBlob-Description-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertBlob-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertBlob-Editable-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertBlob-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bin` |
| Access Type | Add, Get, Replace |
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertBlob-DFProperties-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertBlob-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertBlob-Examples-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertBlob-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPassword-Begin -->
#### Device/PFXCertInstall/{UniqueID}/PFXCertPassword

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPassword-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPassword-Applicability-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPassword-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/{UniqueID}/PFXCertPassword
```
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPassword-OmaUri-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPassword-Description-Begin -->
<!-- Description-Source-DDF -->
Password that protects the PFX blob. This is required if the PFX is password protected.
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPassword-Description-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPassword-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPassword-Editable-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPassword-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPassword-DFProperties-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPassword-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPassword-Examples-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPassword-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-Begin -->
#### Device/PFXCertInstall/{UniqueID}/PFXCertPasswordEncryptionStore

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-Applicability-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/{UniqueID}/PFXCertPasswordEncryptionStore
```
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-OmaUri-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-Description-Begin -->
<!-- Description-Source-DDF -->
Optional.

When a value of "2" is contained iin PFXCertPasswordEncryptionType, specify the store name where the certificate for decrypting the PFXCertPassword is stored.
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-Description-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-Editable-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
| Dependency [EncryptionTypeDependency] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/[UniqueID]/PFXCertPasswordEncryptionType` <br> Dependency Allowed Value: `[2]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-DFProperties-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-Examples-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-Begin -->
#### Device/PFXCertInstall/{UniqueID}/PFXCertPasswordEncryptionType

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-Applicability-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/{UniqueID}/PFXCertPasswordEncryptionType
```
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-OmaUri-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Used to specify if the PFX certificate password is encrypted with a certificate.

If the value is
0 - Password isn't encrypted
1- Password is encrypted using the MDM certificate by the MDM server
2 - Password is encrypted by a Custom Certificate by the MDM server. When this value is used here, also specify the custom store name in the PFXCertPasswordEncryptionStore node.
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-Description-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-Editable-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Get, Replace |
| Default Value  | 0 |
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-DFProperties-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Password isn't encrypted. |
| 1 | Password is encrypted with the MDM certificate. |
| 2 | Password is encrypted with custom certificate. |
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-AllowedValues-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-Examples-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXKeyExportable-Begin -->
#### Device/PFXCertInstall/{UniqueID}/PFXKeyExportable

<!-- Device-PFXCertInstall-{UniqueID}-PFXKeyExportable-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-PFXCertInstall-{UniqueID}-PFXKeyExportable-Applicability-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXKeyExportable-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/{UniqueID}/PFXKeyExportable
```
<!-- Device-PFXCertInstall-{UniqueID}-PFXKeyExportable-OmaUri-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXKeyExportable-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Used to specify if the private key installed is exportable (can be exported later).
<!-- Device-PFXCertInstall-{UniqueID}-PFXKeyExportable-Description-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXKeyExportable-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The PFX isn't exportable when it's installed to TPM.

> [!NOTE]
> You can only set PFXKeyExportable to true if KeyLocation=3. For any other KeyLocation value, the CSP will fail.
<!-- Device-PFXCertInstall-{UniqueID}-PFXKeyExportable-Editable-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXKeyExportable-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Get, Replace |
| Default Value  | true |
| Dependency [KeyLocationDependency] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/[UniqueID]/KeyLocation` <br> Dependency Allowed Value: `[3]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- Device-PFXCertInstall-{UniqueID}-PFXKeyExportable-DFProperties-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXKeyExportable-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | False. |
| true (Default) | True. |
<!-- Device-PFXCertInstall-{UniqueID}-PFXKeyExportable-AllowedValues-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXKeyExportable-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-PFXCertInstall-{UniqueID}-PFXKeyExportable-Examples-End -->

<!-- Device-PFXCertInstall-{UniqueID}-PFXKeyExportable-End -->

<!-- Device-PFXCertInstall-{UniqueID}-Status-Begin -->
#### Device/PFXCertInstall/{UniqueID}/Status

<!-- Device-PFXCertInstall-{UniqueID}-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-PFXCertInstall-{UniqueID}-Status-Applicability-End -->

<!-- Device-PFXCertInstall-{UniqueID}-Status-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/{UniqueID}/Status
```
<!-- Device-PFXCertInstall-{UniqueID}-Status-OmaUri-End -->

<!-- Device-PFXCertInstall-{UniqueID}-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the error code of the PFX installation from the GetLastError command called after the PfxImportCertStore.
<!-- Device-PFXCertInstall-{UniqueID}-Status-Description-End -->

<!-- Device-PFXCertInstall-{UniqueID}-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-PFXCertInstall-{UniqueID}-Status-Editable-End -->

<!-- Device-PFXCertInstall-{UniqueID}-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-PFXCertInstall-{UniqueID}-Status-DFProperties-End -->

<!-- Device-PFXCertInstall-{UniqueID}-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-PFXCertInstall-{UniqueID}-Status-Examples-End -->

<!-- Device-PFXCertInstall-{UniqueID}-Status-End -->

<!-- Device-PFXCertInstall-{UniqueID}-Thumbprint-Begin -->
#### Device/PFXCertInstall/{UniqueID}/Thumbprint

<!-- Device-PFXCertInstall-{UniqueID}-Thumbprint-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-PFXCertInstall-{UniqueID}-Thumbprint-Applicability-End -->

<!-- Device-PFXCertInstall-{UniqueID}-Thumbprint-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/{UniqueID}/Thumbprint
```
<!-- Device-PFXCertInstall-{UniqueID}-Thumbprint-OmaUri-End -->

<!-- Device-PFXCertInstall-{UniqueID}-Thumbprint-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the thumbprint of the PFX certificate installed.
<!-- Device-PFXCertInstall-{UniqueID}-Thumbprint-Description-End -->

<!-- Device-PFXCertInstall-{UniqueID}-Thumbprint-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-PFXCertInstall-{UniqueID}-Thumbprint-Editable-End -->

<!-- Device-PFXCertInstall-{UniqueID}-Thumbprint-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-PFXCertInstall-{UniqueID}-Thumbprint-DFProperties-End -->

<!-- Device-PFXCertInstall-{UniqueID}-Thumbprint-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-PFXCertInstall-{UniqueID}-Thumbprint-Examples-End -->

<!-- Device-PFXCertInstall-{UniqueID}-Thumbprint-End -->

<!-- Device-SCEP-Begin -->
## Device/SCEP

<!-- Device-SCEP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-Applicability-End -->

<!-- Device-SCEP-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP
```
<!-- Device-SCEP-OmaUri-End -->

<!-- Device-SCEP-Description-Begin -->
<!-- Description-Source-DDF -->
Node for SCEP. An alert is sent after the SCEP certificate is installed.
<!-- Device-SCEP-Description-End -->

<!-- Device-SCEP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-Editable-End -->

<!-- Device-SCEP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-SCEP-DFProperties-End -->

<!-- Device-SCEP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-Examples-End -->

<!-- Device-SCEP-End -->

<!-- Device-SCEP-{UniqueID}-Begin -->
### Device/SCEP/{UniqueID}

<!-- Device-SCEP-{UniqueID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}
```
<!-- Device-SCEP-{UniqueID}-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Description-Begin -->
<!-- Description-Source-DDF -->
Required for SCEP certificate installation. A unique ID to differentiate different certificate install requests.

Calling Delete on the this node, should delete the corresponding SCEP certificate.
<!-- Device-SCEP-{UniqueID}-Description-End -->

<!-- Device-SCEP-{UniqueID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Editable-End -->

<!-- Device-SCEP-{UniqueID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
| Atomic Required | True |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
<!-- Device-SCEP-{UniqueID}-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Examples-End -->

<!-- Device-SCEP-{UniqueID}-End -->

<!-- Device-SCEP-{UniqueID}-CertThumbprint-Begin -->
#### Device/SCEP/{UniqueID}/CertThumbprint

<!-- Device-SCEP-{UniqueID}-CertThumbprint-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-CertThumbprint-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-CertThumbprint-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/CertThumbprint
```
<!-- Device-SCEP-{UniqueID}-CertThumbprint-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-CertThumbprint-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Specify the current cert's thumbprint if certificate enrollment succeeds. It's a 20-byte value of the SHA1 certificate hash specified as a hexadecimal string value.
<!-- Device-SCEP-{UniqueID}-CertThumbprint-Description-End -->

<!-- Device-SCEP-{UniqueID}-CertThumbprint-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> If the certificate on the device becomes invalid (Cert expired, Cert chain isn't valid, private key deleted, etc.) then it will return an empty string.
<!-- Device-SCEP-{UniqueID}-CertThumbprint-Editable-End -->

<!-- Device-SCEP-{UniqueID}-CertThumbprint-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-SCEP-{UniqueID}-CertThumbprint-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-CertThumbprint-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-CertThumbprint-Examples-End -->

<!-- Device-SCEP-{UniqueID}-CertThumbprint-End -->

<!-- Device-SCEP-{UniqueID}-ErrorCode-Begin -->
#### Device/SCEP/{UniqueID}/ErrorCode

<!-- Device-SCEP-{UniqueID}-ErrorCode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-ErrorCode-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-ErrorCode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/ErrorCode
```
<!-- Device-SCEP-{UniqueID}-ErrorCode-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-ErrorCode-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. The integer value that indicates the HRESULT of the last enrollment error code.
<!-- Device-SCEP-{UniqueID}-ErrorCode-Description-End -->

<!-- Device-SCEP-{UniqueID}-ErrorCode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-ErrorCode-Editable-End -->

<!-- Device-SCEP-{UniqueID}-ErrorCode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-SCEP-{UniqueID}-ErrorCode-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-ErrorCode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-ErrorCode-Examples-End -->

<!-- Device-SCEP-{UniqueID}-ErrorCode-End -->

<!-- Device-SCEP-{UniqueID}-Install-Begin -->
#### Device/SCEP/{UniqueID}/Install

<!-- Device-SCEP-{UniqueID}-Install-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-Install-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-Install-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install
```
<!-- Device-SCEP-{UniqueID}-Install-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Install-Description-Begin -->
<!-- Description-Source-DDF -->
Required for SCEP certificate enrollment. Parent node to group SCEP cert install related request. NOTE: though the children nodes under Install support Replace commands, once the Exec command is sent to the device, the device will take the values which are set when the Exec command is accepted. The server shouldn't expect the node value change after Exec command is accepted will impact the current undergoing enrollment. The server should check the Status node value and make sure the device isn't at unknown stage before changing children node values.
<!-- Device-SCEP-{UniqueID}-Install-Description-End -->

<!-- Device-SCEP-{UniqueID}-Install-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-Editable-End -->

<!-- Device-SCEP-{UniqueID}-Install-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SCEP-{UniqueID}-Install-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Install-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-Examples-End -->

<!-- Device-SCEP-{UniqueID}-Install-End -->

<!-- Device-SCEP-{UniqueID}-Install-AADKeyIdentifierList-Begin -->
##### Device/SCEP/{UniqueID}/Install/AADKeyIdentifierList

<!-- Device-SCEP-{UniqueID}-Install-AADKeyIdentifierList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-SCEP-{UniqueID}-Install-AADKeyIdentifierList-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-Install-AADKeyIdentifierList-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/AADKeyIdentifierList
```
<!-- Device-SCEP-{UniqueID}-Install-AADKeyIdentifierList-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Install-AADKeyIdentifierList-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Specify the Microsoft Entra ID Key Identifier List as a semicolon separated values. On Enroll, the values in this list are validated against the Microsoft Entra ID Key present on the device. If no match is found, enrollment will fail.
<!-- Device-SCEP-{UniqueID}-Install-AADKeyIdentifierList-Description-End -->

<!-- Device-SCEP-{UniqueID}-Install-AADKeyIdentifierList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-AADKeyIdentifierList-Editable-End -->

<!-- Device-SCEP-{UniqueID}-Install-AADKeyIdentifierList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SCEP-{UniqueID}-Install-AADKeyIdentifierList-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Install-AADKeyIdentifierList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-AADKeyIdentifierList-Examples-End -->

<!-- Device-SCEP-{UniqueID}-Install-AADKeyIdentifierList-End -->

<!-- Device-SCEP-{UniqueID}-Install-CAThumbprint-Begin -->
##### Device/SCEP/{UniqueID}/Install/CAThumbprint

<!-- Device-SCEP-{UniqueID}-Install-CAThumbprint-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-Install-CAThumbprint-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-Install-CAThumbprint-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/CAThumbprint
```
<!-- Device-SCEP-{UniqueID}-Install-CAThumbprint-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Install-CAThumbprint-Description-Begin -->
<!-- Description-Source-DDF -->
Required. Specify root CA thumbprint. It's a 20-byte value of the SHA1 certificate hash specified as a hexadecimal string value. When client authenticates SCEP server, it checks CA cert from SCEP server whether match with this cert. If no match is found, authentication will fail.
<!-- Device-SCEP-{UniqueID}-Install-CAThumbprint-Description-End -->

<!-- Device-SCEP-{UniqueID}-Install-CAThumbprint-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-CAThumbprint-Editable-End -->

<!-- Device-SCEP-{UniqueID}-Install-CAThumbprint-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SCEP-{UniqueID}-Install-CAThumbprint-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Install-CAThumbprint-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-CAThumbprint-Examples-End -->

<!-- Device-SCEP-{UniqueID}-Install-CAThumbprint-End -->

<!-- Device-SCEP-{UniqueID}-Install-Challenge-Begin -->
##### Device/SCEP/{UniqueID}/Install/Challenge

<!-- Device-SCEP-{UniqueID}-Install-Challenge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-Install-Challenge-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-Install-Challenge-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/Challenge
```
<!-- Device-SCEP-{UniqueID}-Install-Challenge-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Install-Challenge-Description-Begin -->
<!-- Description-Source-DDF -->
Required for SCEP certificate enrollment. B64 encoded SCEP enrollment challenge. Challenge will be deleted shortly after the Exec command is accepted.
<!-- Device-SCEP-{UniqueID}-Install-Challenge-Description-End -->

<!-- Device-SCEP-{UniqueID}-Install-Challenge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-Challenge-Editable-End -->

<!-- Device-SCEP-{UniqueID}-Install-Challenge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SCEP-{UniqueID}-Install-Challenge-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Install-Challenge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-Challenge-Examples-End -->

<!-- Device-SCEP-{UniqueID}-Install-Challenge-End -->

<!-- Device-SCEP-{UniqueID}-Install-ContainerName-Begin -->
##### Device/SCEP/{UniqueID}/Install/ContainerName

<!-- Device-SCEP-{UniqueID}-Install-ContainerName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-Install-ContainerName-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-Install-ContainerName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/ContainerName
```
<!-- Device-SCEP-{UniqueID}-Install-ContainerName-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Install-ContainerName-Description-Begin -->
<!-- Description-Source-DDF -->
Optional.

Specifies the NGC container name (if NGC KSP is chosen for above node). If this node isn't specified when NGC KSP is chosen, enrollment will fail.
<!-- Device-SCEP-{UniqueID}-Install-ContainerName-Description-End -->

<!-- Device-SCEP-{UniqueID}-Install-ContainerName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-ContainerName-Editable-End -->

<!-- Device-SCEP-{UniqueID}-Install-ContainerName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SCEP-{UniqueID}-Install-ContainerName-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Install-ContainerName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-ContainerName-Examples-End -->

<!-- Device-SCEP-{UniqueID}-Install-ContainerName-End -->

<!-- Device-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-Begin -->
##### Device/SCEP/{UniqueID}/Install/CustomTextToShowInPrompt

<!-- Device-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/CustomTextToShowInPrompt
```
<!-- Device-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Specifies the custom text to show on the NGC PIN prompt during certificate enrollment. The admin can choose to provide more contextual information for why the user needs to enter the PIN and what the certificate will be used for through this.
<!-- Device-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-Description-End -->

<!-- Device-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-Editable-End -->

<!-- Device-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-Examples-End -->

<!-- Device-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-End -->

<!-- Device-SCEP-{UniqueID}-Install-EKUMapping-Begin -->
##### Device/SCEP/{UniqueID}/Install/EKUMapping

<!-- Device-SCEP-{UniqueID}-Install-EKUMapping-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-Install-EKUMapping-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-Install-EKUMapping-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/EKUMapping
```
<!-- Device-SCEP-{UniqueID}-Install-EKUMapping-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Install-EKUMapping-Description-Begin -->
<!-- Description-Source-DDF -->
Required. Specify extended key usages. Subjected to SCEP server configuration. The list of OIDs are separated by plus "+". Sample format: OID1+OID2+OID3.
<!-- Device-SCEP-{UniqueID}-Install-EKUMapping-Description-End -->

<!-- Device-SCEP-{UniqueID}-Install-EKUMapping-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-EKUMapping-Editable-End -->

<!-- Device-SCEP-{UniqueID}-Install-EKUMapping-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SCEP-{UniqueID}-Install-EKUMapping-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Install-EKUMapping-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-EKUMapping-Examples-End -->

<!-- Device-SCEP-{UniqueID}-Install-EKUMapping-End -->

<!-- Device-SCEP-{UniqueID}-Install-Enroll-Begin -->
##### Device/SCEP/{UniqueID}/Install/Enroll

<!-- Device-SCEP-{UniqueID}-Install-Enroll-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-Install-Enroll-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-Install-Enroll-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/Enroll
```
<!-- Device-SCEP-{UniqueID}-Install-Enroll-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Install-Enroll-Description-Begin -->
<!-- Description-Source-DDF -->
Required. Trigger the device to start the cert enrollment. The device won't notify MDM server after cert enrollment is done. The MDM server could later query the device to find out whether new cert is added.
<!-- Device-SCEP-{UniqueID}-Install-Enroll-Description-End -->

<!-- Device-SCEP-{UniqueID}-Install-Enroll-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-Enroll-Editable-End -->

<!-- Device-SCEP-{UniqueID}-Install-Enroll-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Exec |
<!-- Device-SCEP-{UniqueID}-Install-Enroll-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Install-Enroll-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-Enroll-Examples-End -->

<!-- Device-SCEP-{UniqueID}-Install-Enroll-End -->

<!-- Device-SCEP-{UniqueID}-Install-HashAlgorithm-Begin -->
##### Device/SCEP/{UniqueID}/Install/HashAlgorithm

<!-- Device-SCEP-{UniqueID}-Install-HashAlgorithm-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-Install-HashAlgorithm-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-Install-HashAlgorithm-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/HashAlgorithm
```
<!-- Device-SCEP-{UniqueID}-Install-HashAlgorithm-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Install-HashAlgorithm-Description-Begin -->
<!-- Description-Source-DDF -->
Required for enrollment. Hash algorithm family (SHA-1, SHA-2, SHA-3) specified by MDM server. If multiple hash algorithm families are specified, they must be separated via +.

For NGC, only SHA256 is supported as the supported algorithm.
<!-- Device-SCEP-{UniqueID}-Install-HashAlgorithm-Description-End -->

<!-- Device-SCEP-{UniqueID}-Install-HashAlgorithm-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-HashAlgorithm-Editable-End -->

<!-- Device-SCEP-{UniqueID}-Install-HashAlgorithm-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SCEP-{UniqueID}-Install-HashAlgorithm-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Install-HashAlgorithm-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-HashAlgorithm-Examples-End -->

<!-- Device-SCEP-{UniqueID}-Install-HashAlgorithm-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyLength-Begin -->
##### Device/SCEP/{UniqueID}/Install/KeyLength

<!-- Device-SCEP-{UniqueID}-Install-KeyLength-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-Install-KeyLength-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyLength-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/KeyLength
```
<!-- Device-SCEP-{UniqueID}-Install-KeyLength-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyLength-Description-Begin -->
<!-- Description-Source-DDF -->
Required for enrollment. Specify private key length (RSA).

Valid value: 1024, 2048, 4096. For NGC, only 2048 is the supported keylength.
<!-- Device-SCEP-{UniqueID}-Install-KeyLength-Description-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyLength-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> For Windows Hello for Business (formerly known as Microsoft Passport for Work) , 2048 is the only supported key length.
<!-- Device-SCEP-{UniqueID}-Install-KeyLength-Editable-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyLength-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SCEP-{UniqueID}-Install-KeyLength-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyLength-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1024 | 1024. |
| 2048 | 2048. |
| 4096 | 4096. |
<!-- Device-SCEP-{UniqueID}-Install-KeyLength-AllowedValues-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyLength-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-KeyLength-Examples-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyLength-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyProtection-Begin -->
##### Device/SCEP/{UniqueID}/Install/KeyProtection

<!-- Device-SCEP-{UniqueID}-Install-KeyProtection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-Install-KeyProtection-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyProtection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/KeyProtection
```
<!-- Device-SCEP-{UniqueID}-Install-KeyProtection-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyProtection-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Specify where to keep the private key. Note that even it's protected by TPM, it isn't guarded with TPM PIN.

SCEP enrolled cert doesn't support TPM PIN protection.
<!-- Device-SCEP-{UniqueID}-Install-KeyProtection-Description-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyProtection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-KeyProtection-Editable-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyProtection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 3 |
<!-- Device-SCEP-{UniqueID}-Install-KeyProtection-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyProtection-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Private key protected by TPM. |
| 2 | Private key protected by phone TPM if the device supports TPM. All Windows Phone 8.1 devices support TPM and will treat value 2 as 1. |
| 3 (Default) | (Default) Private key saved in software KSP. |
| 4 | Private key protected by Windows Hello for Business (formerly known as Microsoft Passport for Work). If this option is specified, the ContainerName must be specified, otherwise enrollment will fail. |
<!-- Device-SCEP-{UniqueID}-Install-KeyProtection-AllowedValues-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyProtection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-KeyProtection-Examples-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyProtection-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyUsage-Begin -->
##### Device/SCEP/{UniqueID}/Install/KeyUsage

<!-- Device-SCEP-{UniqueID}-Install-KeyUsage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-Install-KeyUsage-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyUsage-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/KeyUsage
```
<!-- Device-SCEP-{UniqueID}-Install-KeyUsage-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyUsage-Description-Begin -->
<!-- Description-Source-DDF -->
Required for enrollment. Specify the key usage bits (0x80, 0x20, 0xA0, etc.) for the certificate in decimal format. The value should at least have second (0x20) or forth (0x80) or both bits set. If the value doesn't have those bits set, configuration will fail.
<!-- Device-SCEP-{UniqueID}-Install-KeyUsage-Description-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyUsage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-KeyUsage-Editable-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyUsage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SCEP-{UniqueID}-Install-KeyUsage-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyUsage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-KeyUsage-Examples-End -->

<!-- Device-SCEP-{UniqueID}-Install-KeyUsage-End -->

<!-- Device-SCEP-{UniqueID}-Install-RetryCount-Begin -->
##### Device/SCEP/{UniqueID}/Install/RetryCount

<!-- Device-SCEP-{UniqueID}-Install-RetryCount-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-Install-RetryCount-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-Install-RetryCount-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/RetryCount
```
<!-- Device-SCEP-{UniqueID}-Install-RetryCount-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Install-RetryCount-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Special to SCEP. Specify device retry times when the SCEP sever sends pending status. Format is int. Default value is 3. Max value: the value can't be larger than 30. If it's larger than 30, the device will use 30.

The min value is 0 which means no retry.
<!-- Device-SCEP-{UniqueID}-Install-RetryCount-Description-End -->

<!-- Device-SCEP-{UniqueID}-Install-RetryCount-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-RetryCount-Editable-End -->

<!-- Device-SCEP-{UniqueID}-Install-RetryCount-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-30]` |
| Default Value  | 3 |
<!-- Device-SCEP-{UniqueID}-Install-RetryCount-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Install-RetryCount-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-RetryCount-Examples-End -->

<!-- Device-SCEP-{UniqueID}-Install-RetryCount-End -->

<!-- Device-SCEP-{UniqueID}-Install-RetryDelay-Begin -->
##### Device/SCEP/{UniqueID}/Install/RetryDelay

<!-- Device-SCEP-{UniqueID}-Install-RetryDelay-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-Install-RetryDelay-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-Install-RetryDelay-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/RetryDelay
```
<!-- Device-SCEP-{UniqueID}-Install-RetryDelay-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Install-RetryDelay-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. When the SCEP server sends pending status, specify device retry waiting time in minutes.

Default value is: 5
The min value is 1.
<!-- Device-SCEP-{UniqueID}-Install-RetryDelay-Description-End -->

<!-- Device-SCEP-{UniqueID}-Install-RetryDelay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-RetryDelay-Editable-End -->

<!-- Device-SCEP-{UniqueID}-Install-RetryDelay-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
| Default Value  | 5 |
<!-- Device-SCEP-{UniqueID}-Install-RetryDelay-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Install-RetryDelay-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-RetryDelay-Examples-End -->

<!-- Device-SCEP-{UniqueID}-Install-RetryDelay-End -->

<!-- Device-SCEP-{UniqueID}-Install-ServerURL-Begin -->
##### Device/SCEP/{UniqueID}/Install/ServerURL

<!-- Device-SCEP-{UniqueID}-Install-ServerURL-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-Install-ServerURL-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-Install-ServerURL-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/ServerURL
```
<!-- Device-SCEP-{UniqueID}-Install-ServerURL-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Install-ServerURL-Description-Begin -->
<!-- Description-Source-DDF -->
Required for SCEP certificate enrollment. Specify the cert enrollment server. The server could specify multiple server URLs separated by semicolon.
<!-- Device-SCEP-{UniqueID}-Install-ServerURL-Description-End -->

<!-- Device-SCEP-{UniqueID}-Install-ServerURL-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-ServerURL-Editable-End -->

<!-- Device-SCEP-{UniqueID}-Install-ServerURL-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SCEP-{UniqueID}-Install-ServerURL-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Install-ServerURL-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-ServerURL-Examples-End -->

<!-- Device-SCEP-{UniqueID}-Install-ServerURL-End -->

<!-- Device-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Begin -->
##### Device/SCEP/{UniqueID}/Install/SubjectAlternativeNames

<!-- Device-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-Install-SubjectAlternativeNames-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/SubjectAlternativeNames
```
<!-- Device-SCEP-{UniqueID}-Install-SubjectAlternativeNames-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Specify subject alternative name. Multiple alternative names could be specified by this node. Each name is the combination of name format+actual name. Refer name type definition in MSDN. Each pair is separated by semicolon. E.g. multiple SAN are presented in the format of [nameformat1]+[actual name1];[name format 2]+[actual name2].
<!-- Device-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Description-End -->

<!-- Device-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Editable-End -->

<!-- Device-SCEP-{UniqueID}-Install-SubjectAlternativeNames-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SCEP-{UniqueID}-Install-SubjectAlternativeNames-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Examples-End -->

<!-- Device-SCEP-{UniqueID}-Install-SubjectAlternativeNames-End -->

<!-- Device-SCEP-{UniqueID}-Install-SubjectName-Begin -->
##### Device/SCEP/{UniqueID}/Install/SubjectName

<!-- Device-SCEP-{UniqueID}-Install-SubjectName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-Install-SubjectName-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-Install-SubjectName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/SubjectName
```
<!-- Device-SCEP-{UniqueID}-Install-SubjectName-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Install-SubjectName-Description-Begin -->
<!-- Description-Source-DDF -->
Required. Specify the subject name. The SubjectName value is quoted if it contains leading or trailing white space or one of the following characters: ("," "=" "+" ";" ).
<!-- Device-SCEP-{UniqueID}-Install-SubjectName-Description-End -->

<!-- Device-SCEP-{UniqueID}-Install-SubjectName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
For more information, see [CertNameToStrA function](/windows/win32/api/wincrypt/nf-wincrypt-certnametostra#remarks).
<!-- Device-SCEP-{UniqueID}-Install-SubjectName-Editable-End -->

<!-- Device-SCEP-{UniqueID}-Install-SubjectName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SCEP-{UniqueID}-Install-SubjectName-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Install-SubjectName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-SubjectName-Examples-End -->

<!-- Device-SCEP-{UniqueID}-Install-SubjectName-End -->

<!-- Device-SCEP-{UniqueID}-Install-TemplateName-Begin -->
##### Device/SCEP/{UniqueID}/Install/TemplateName

<!-- Device-SCEP-{UniqueID}-Install-TemplateName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-Install-TemplateName-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-Install-TemplateName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/TemplateName
```
<!-- Device-SCEP-{UniqueID}-Install-TemplateName-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Install-TemplateName-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. OID of certificate template name. Note that this name is typically ignored by the SCEP server, therefore the MDM server typically doesn't need to provide it.
<!-- Device-SCEP-{UniqueID}-Install-TemplateName-Description-End -->

<!-- Device-SCEP-{UniqueID}-Install-TemplateName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-TemplateName-Editable-End -->

<!-- Device-SCEP-{UniqueID}-Install-TemplateName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SCEP-{UniqueID}-Install-TemplateName-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Install-TemplateName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-TemplateName-Examples-End -->

<!-- Device-SCEP-{UniqueID}-Install-TemplateName-End -->

<!-- Device-SCEP-{UniqueID}-Install-ValidPeriod-Begin -->
##### Device/SCEP/{UniqueID}/Install/ValidPeriod

<!-- Device-SCEP-{UniqueID}-Install-ValidPeriod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-Install-ValidPeriod-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-Install-ValidPeriod-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/ValidPeriod
```
<!-- Device-SCEP-{UniqueID}-Install-ValidPeriod-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Install-ValidPeriod-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Specify the units for valid period. Valid values are: Days(Default), Months, Years.

MDM server expected certificate validation period (ValidPeriodUnits + ValidPeriod) the SCEP server as part of certificate enrollment request. It's the server's decision on how to use this valid period to create the certificate.
<!-- Device-SCEP-{UniqueID}-Install-ValidPeriod-Description-End -->

<!-- Device-SCEP-{UniqueID}-Install-ValidPeriod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-ValidPeriod-Editable-End -->

<!-- Device-SCEP-{UniqueID}-Install-ValidPeriod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | Days |
<!-- Device-SCEP-{UniqueID}-Install-ValidPeriod-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Install-ValidPeriod-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| Days (Default) | Days. |
| Months | Months. |
| Years | Years. |
<!-- Device-SCEP-{UniqueID}-Install-ValidPeriod-AllowedValues-End -->

<!-- Device-SCEP-{UniqueID}-Install-ValidPeriod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-ValidPeriod-Examples-End -->

<!-- Device-SCEP-{UniqueID}-Install-ValidPeriod-End -->

<!-- Device-SCEP-{UniqueID}-Install-ValidPeriodUnits-Begin -->
##### Device/SCEP/{UniqueID}/Install/ValidPeriodUnits

<!-- Device-SCEP-{UniqueID}-Install-ValidPeriodUnits-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-Install-ValidPeriodUnits-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-Install-ValidPeriodUnits-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/ValidPeriodUnits
```
<!-- Device-SCEP-{UniqueID}-Install-ValidPeriodUnits-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Install-ValidPeriodUnits-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Specify desired number of units used in validity period. Subjected to SCEP server configuration. Default is 0. The units are defined in ValidPeriod node. Note the valid period specified by MDM will overwrite the valid period specified in cert template. For example, if ValidPeriod is days and ValidPeriodUnits is 30, it means the total valid duration is 30 days.

> [!NOTE]
> The device only sends the MDM server expected certificate validation period (ValidPeriodUnits + ValidPeriod) the SCEP server as part of certificate enrollment request. It's the server's decision on how to use this valid period to create the certificate.
<!-- Device-SCEP-{UniqueID}-Install-ValidPeriodUnits-Description-End -->

<!-- Device-SCEP-{UniqueID}-Install-ValidPeriodUnits-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-ValidPeriodUnits-Editable-End -->

<!-- Device-SCEP-{UniqueID}-Install-ValidPeriodUnits-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-SCEP-{UniqueID}-Install-ValidPeriodUnits-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Install-ValidPeriodUnits-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Install-ValidPeriodUnits-Examples-End -->

<!-- Device-SCEP-{UniqueID}-Install-ValidPeriodUnits-End -->

<!-- Device-SCEP-{UniqueID}-RespondentServerUrl-Begin -->
#### Device/SCEP/{UniqueID}/RespondentServerUrl

<!-- Device-SCEP-{UniqueID}-RespondentServerUrl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-RespondentServerUrl-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-RespondentServerUrl-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/RespondentServerUrl
```
<!-- Device-SCEP-{UniqueID}-RespondentServerUrl-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-RespondentServerUrl-Description-Begin -->
<!-- Description-Source-DDF -->
Required. Returns the URL of the SCEP server that responded to the enrollment request.
<!-- Device-SCEP-{UniqueID}-RespondentServerUrl-Description-End -->

<!-- Device-SCEP-{UniqueID}-RespondentServerUrl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-RespondentServerUrl-Editable-End -->

<!-- Device-SCEP-{UniqueID}-RespondentServerUrl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-SCEP-{UniqueID}-RespondentServerUrl-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-RespondentServerUrl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-RespondentServerUrl-Examples-End -->

<!-- Device-SCEP-{UniqueID}-RespondentServerUrl-End -->

<!-- Device-SCEP-{UniqueID}-Status-Begin -->
#### Device/SCEP/{UniqueID}/Status

<!-- Device-SCEP-{UniqueID}-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SCEP-{UniqueID}-Status-Applicability-End -->

<!-- Device-SCEP-{UniqueID}-Status-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Status
```
<!-- Device-SCEP-{UniqueID}-Status-OmaUri-End -->

<!-- Device-SCEP-{UniqueID}-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Required. Specify the latest status for the certificate due to enroll request.

Valid values are:

1 - finished successfully
2 - pending (the device hasn't finished the action but has received the SCEP server pending response)
32 - unknown
16 - action failed.
<!-- Device-SCEP-{UniqueID}-Status-Description-End -->

<!-- Device-SCEP-{UniqueID}-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Status-Editable-End -->

<!-- Device-SCEP-{UniqueID}-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-SCEP-{UniqueID}-Status-DFProperties-End -->

<!-- Device-SCEP-{UniqueID}-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SCEP-{UniqueID}-Status-Examples-End -->

<!-- Device-SCEP-{UniqueID}-Status-End -->

<!-- User-PFXCertInstall-Begin -->
## User/PFXCertInstall

<!-- User-PFXCertInstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-PFXCertInstall-Applicability-End -->

<!-- User-PFXCertInstall-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall
```
<!-- User-PFXCertInstall-OmaUri-End -->

<!-- User-PFXCertInstall-Description-Begin -->
<!-- Description-Source-DDF -->
Required for PFX certificate installation. The parent node grouping the PFX cert related settings.
<!-- User-PFXCertInstall-Description-End -->

<!-- User-PFXCertInstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-PFXCertInstall-Editable-End -->

<!-- User-PFXCertInstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-PFXCertInstall-DFProperties-End -->

<!-- User-PFXCertInstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-PFXCertInstall-Examples-End -->

<!-- User-PFXCertInstall-End -->

<!-- User-PFXCertInstall-{UniqueID}-Begin -->
### User/PFXCertInstall/{UniqueID}

<!-- User-PFXCertInstall-{UniqueID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-PFXCertInstall-{UniqueID}-Applicability-End -->

<!-- User-PFXCertInstall-{UniqueID}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/{UniqueID}
```
<!-- User-PFXCertInstall-{UniqueID}-OmaUri-End -->

<!-- User-PFXCertInstall-{UniqueID}-Description-Begin -->
<!-- Description-Source-DDF -->
Required for PFX certificate installation. A unique ID to differentiate different certificate install requests.

Format is node.

Calling Delete on the this node, should delete the certificates and the keys that were installed by the corresponding PFX blob.
<!-- User-PFXCertInstall-{UniqueID}-Description-End -->

<!-- User-PFXCertInstall-{UniqueID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-PFXCertInstall-{UniqueID}-Editable-End -->

<!-- User-PFXCertInstall-{UniqueID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
| Atomic Required | True |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
<!-- User-PFXCertInstall-{UniqueID}-DFProperties-End -->

<!-- User-PFXCertInstall-{UniqueID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-PFXCertInstall-{UniqueID}-Examples-End -->

<!-- User-PFXCertInstall-{UniqueID}-End -->

<!-- User-PFXCertInstall-{UniqueID}-ContainerName-Begin -->
#### User/PFXCertInstall/{UniqueID}/ContainerName

<!-- User-PFXCertInstall-{UniqueID}-ContainerName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-PFXCertInstall-{UniqueID}-ContainerName-Applicability-End -->

<!-- User-PFXCertInstall-{UniqueID}-ContainerName-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/{UniqueID}/ContainerName
```
<!-- User-PFXCertInstall-{UniqueID}-ContainerName-OmaUri-End -->

<!-- User-PFXCertInstall-{UniqueID}-ContainerName-Description-Begin -->
<!-- Description-Source-DDF -->
Optional.

Specifies the NGC container name (if NGC KSP is chosen for above node). If this node isn't specified when NGC KSP is chosen, enrollment will fail.
<!-- User-PFXCertInstall-{UniqueID}-ContainerName-Description-End -->

<!-- User-PFXCertInstall-{UniqueID}-ContainerName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-PFXCertInstall-{UniqueID}-ContainerName-Editable-End -->

<!-- User-PFXCertInstall-{UniqueID}-ContainerName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
<!-- User-PFXCertInstall-{UniqueID}-ContainerName-DFProperties-End -->

<!-- User-PFXCertInstall-{UniqueID}-ContainerName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-PFXCertInstall-{UniqueID}-ContainerName-Examples-End -->

<!-- User-PFXCertInstall-{UniqueID}-ContainerName-End -->

<!-- User-PFXCertInstall-{UniqueID}-KeyLocation-Begin -->
#### User/PFXCertInstall/{UniqueID}/KeyLocation

<!-- User-PFXCertInstall-{UniqueID}-KeyLocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-PFXCertInstall-{UniqueID}-KeyLocation-Applicability-End -->

<!-- User-PFXCertInstall-{UniqueID}-KeyLocation-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/{UniqueID}/KeyLocation
```
<!-- User-PFXCertInstall-{UniqueID}-KeyLocation-OmaUri-End -->

<!-- User-PFXCertInstall-{UniqueID}-KeyLocation-Description-Begin -->
<!-- Description-Source-DDF -->
Required for PFX certificate installation. Indicates the KeyStorage provider to target the private key installation to.
<!-- User-PFXCertInstall-{UniqueID}-KeyLocation-Description-End -->

<!-- User-PFXCertInstall-{UniqueID}-KeyLocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-PFXCertInstall-{UniqueID}-KeyLocation-Editable-End -->

<!-- User-PFXCertInstall-{UniqueID}-KeyLocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Get, Replace |
<!-- User-PFXCertInstall-{UniqueID}-KeyLocation-DFProperties-End -->

<!-- User-PFXCertInstall-{UniqueID}-KeyLocation-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Install to TPM if present, fail if not present. |
| 2 | Install to TPM if present. If not present, fallback to software. |
| 3 | Install to software. |
| 4 | Install to Windows Hello for Business (formerly known as Microsoft Passport for Work) whose name is specified. |
<!-- User-PFXCertInstall-{UniqueID}-KeyLocation-AllowedValues-End -->

<!-- User-PFXCertInstall-{UniqueID}-KeyLocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-PFXCertInstall-{UniqueID}-KeyLocation-Examples-End -->

<!-- User-PFXCertInstall-{UniqueID}-KeyLocation-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertBlob-Begin -->
#### User/PFXCertInstall/{UniqueID}/PFXCertBlob

<!-- User-PFXCertInstall-{UniqueID}-PFXCertBlob-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-PFXCertInstall-{UniqueID}-PFXCertBlob-Applicability-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertBlob-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/{UniqueID}/PFXCertBlob
```
<!-- User-PFXCertInstall-{UniqueID}-PFXCertBlob-OmaUri-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertBlob-Description-Begin -->
<!-- Description-Source-DDF -->
Required.

[CRYPT_DATA_BLOB](/previous-versions/windows/desktop/legacy/aa381414(v=vs.85)) structure that contains a PFX packet with the exported and encrypted certificates and keys. Add on this node will trigger the addition to the PFX certificate. This requires that all the other nodes under UniqueID that are parameters for PFX installation (Container Name, KeyLocation, CertPassword, fKeyExportable) are present before this is called. This will also set the Status node to the current Status of the operation.

If Add is called on this node and a blob already exists, it will fail. If Replace is called on this node, the certificates will be overwritten.

If Add is called on this node for a new PFX, the certificate will be added. If Replace is called on this node when it doesn't exist, this will fail.

In other words, using Replace or Add will result in the effect of either overwriting the old certificate or adding a new certificate
<!-- User-PFXCertInstall-{UniqueID}-PFXCertBlob-Description-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertBlob-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-PFXCertInstall-{UniqueID}-PFXCertBlob-Editable-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertBlob-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bin` |
| Access Type | Add, Get, Replace |
<!-- User-PFXCertInstall-{UniqueID}-PFXCertBlob-DFProperties-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertBlob-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-PFXCertInstall-{UniqueID}-PFXCertBlob-Examples-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertBlob-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPassword-Begin -->
#### User/PFXCertInstall/{UniqueID}/PFXCertPassword

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPassword-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-PFXCertInstall-{UniqueID}-PFXCertPassword-Applicability-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPassword-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/{UniqueID}/PFXCertPassword
```
<!-- User-PFXCertInstall-{UniqueID}-PFXCertPassword-OmaUri-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPassword-Description-Begin -->
<!-- Description-Source-DDF -->
Password that protects the PFX blob. This is required if the PFX is password protected.
<!-- User-PFXCertInstall-{UniqueID}-PFXCertPassword-Description-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPassword-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-PFXCertInstall-{UniqueID}-PFXCertPassword-Editable-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPassword-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
<!-- User-PFXCertInstall-{UniqueID}-PFXCertPassword-DFProperties-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPassword-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-PFXCertInstall-{UniqueID}-PFXCertPassword-Examples-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPassword-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-Begin -->
#### User/PFXCertInstall/{UniqueID}/PFXCertPasswordEncryptionStore

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-Applicability-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/{UniqueID}/PFXCertPasswordEncryptionStore
```
<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-OmaUri-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-Description-Begin -->
<!-- Description-Source-DDF -->
Optional.

When a value of "2" is contained iin PFXCertPasswordEncryptionType, specify the store name where the certificate for decrypting the PFXCertPassword is stored.
<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-Description-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-Editable-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
| Dependency [EncryptionTypeDependency] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/[UniqueID]/PFXCertPasswordEncryptionType` <br> Dependency Allowed Value: `[2]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-DFProperties-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-Examples-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionStore-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-Begin -->
#### User/PFXCertInstall/{UniqueID}/PFXCertPasswordEncryptionType

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-Applicability-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/{UniqueID}/PFXCertPasswordEncryptionType
```
<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-OmaUri-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Used to specify if the PFX certificate password is encrypted with a certificate.

If the value is
0 - Password isn't encrypted
1- Password is encrypted using the MDM certificate by the MDM server
2 - Password is encrypted by a Custom Certificate by the MDM server. When this value is used here, also specify the custom store name in the PFXCertPasswordEncryptionStore node.
<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-Description-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-Editable-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Get, Replace |
| Default Value  | 0 |
<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-DFProperties-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Password isn't encrypted. |
| 1 | Password is encrypted with the MDM certificate. |
| 2 | Password is encrypted with custom certificate. |
<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-AllowedValues-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-Examples-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXCertPasswordEncryptionType-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXKeyExportable-Begin -->
#### User/PFXCertInstall/{UniqueID}/PFXKeyExportable

<!-- User-PFXCertInstall-{UniqueID}-PFXKeyExportable-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-PFXCertInstall-{UniqueID}-PFXKeyExportable-Applicability-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXKeyExportable-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/{UniqueID}/PFXKeyExportable
```
<!-- User-PFXCertInstall-{UniqueID}-PFXKeyExportable-OmaUri-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXKeyExportable-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Used to specify if the private key installed is exportable (can be exported later).
<!-- User-PFXCertInstall-{UniqueID}-PFXKeyExportable-Description-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXKeyExportable-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> You can only set PFXKeyExportable to true if KeyLocation=3. For any other KeyLocation value, the CSP will fail.
<!-- User-PFXCertInstall-{UniqueID}-PFXKeyExportable-Editable-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXKeyExportable-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Get, Replace |
| Default Value  | true |
| Dependency [KeyLocationDependency] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/[UniqueID]/KeyLocation` <br> Dependency Allowed Value: `[3]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- User-PFXCertInstall-{UniqueID}-PFXKeyExportable-DFProperties-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXKeyExportable-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | False. |
| true (Default) | True. |
<!-- User-PFXCertInstall-{UniqueID}-PFXKeyExportable-AllowedValues-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXKeyExportable-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-PFXCertInstall-{UniqueID}-PFXKeyExportable-Examples-End -->

<!-- User-PFXCertInstall-{UniqueID}-PFXKeyExportable-End -->

<!-- User-PFXCertInstall-{UniqueID}-Status-Begin -->
#### User/PFXCertInstall/{UniqueID}/Status

<!-- User-PFXCertInstall-{UniqueID}-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-PFXCertInstall-{UniqueID}-Status-Applicability-End -->

<!-- User-PFXCertInstall-{UniqueID}-Status-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/{UniqueID}/Status
```
<!-- User-PFXCertInstall-{UniqueID}-Status-OmaUri-End -->

<!-- User-PFXCertInstall-{UniqueID}-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the error code of the PFX installation from the GetLastError command called after the PfxImportCertStore.
<!-- User-PFXCertInstall-{UniqueID}-Status-Description-End -->

<!-- User-PFXCertInstall-{UniqueID}-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-PFXCertInstall-{UniqueID}-Status-Editable-End -->

<!-- User-PFXCertInstall-{UniqueID}-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-PFXCertInstall-{UniqueID}-Status-DFProperties-End -->

<!-- User-PFXCertInstall-{UniqueID}-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-PFXCertInstall-{UniqueID}-Status-Examples-End -->

<!-- User-PFXCertInstall-{UniqueID}-Status-End -->

<!-- User-PFXCertInstall-{UniqueID}-Thumbprint-Begin -->
#### User/PFXCertInstall/{UniqueID}/Thumbprint

<!-- User-PFXCertInstall-{UniqueID}-Thumbprint-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-PFXCertInstall-{UniqueID}-Thumbprint-Applicability-End -->

<!-- User-PFXCertInstall-{UniqueID}-Thumbprint-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/{UniqueID}/Thumbprint
```
<!-- User-PFXCertInstall-{UniqueID}-Thumbprint-OmaUri-End -->

<!-- User-PFXCertInstall-{UniqueID}-Thumbprint-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the thumbprint of the PFX certificate installed.
<!-- User-PFXCertInstall-{UniqueID}-Thumbprint-Description-End -->

<!-- User-PFXCertInstall-{UniqueID}-Thumbprint-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-PFXCertInstall-{UniqueID}-Thumbprint-Editable-End -->

<!-- User-PFXCertInstall-{UniqueID}-Thumbprint-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-PFXCertInstall-{UniqueID}-Thumbprint-DFProperties-End -->

<!-- User-PFXCertInstall-{UniqueID}-Thumbprint-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-PFXCertInstall-{UniqueID}-Thumbprint-Examples-End -->

<!-- User-PFXCertInstall-{UniqueID}-Thumbprint-End -->

<!-- User-SCEP-Begin -->
## User/SCEP

<!-- User-SCEP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-Applicability-End -->

<!-- User-SCEP-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP
```
<!-- User-SCEP-OmaUri-End -->

<!-- User-SCEP-Description-Begin -->
<!-- Description-Source-DDF -->
Node for SCEP. An alert is sent after the SCEP certificate is installed.
<!-- User-SCEP-Description-End -->

<!-- User-SCEP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-Editable-End -->

<!-- User-SCEP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-SCEP-DFProperties-End -->

<!-- User-SCEP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-Examples-End -->

<!-- User-SCEP-End -->

<!-- User-SCEP-{UniqueID}-Begin -->
### User/SCEP/{UniqueID}

<!-- User-SCEP-{UniqueID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-Applicability-End -->

<!-- User-SCEP-{UniqueID}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}
```
<!-- User-SCEP-{UniqueID}-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Description-Begin -->
<!-- Description-Source-DDF -->
Required for SCEP certificate installation. A unique ID to differentiate different certificate install requests.

Calling Delete on the this node, should delete the corresponding SCEP certificate.
<!-- User-SCEP-{UniqueID}-Description-End -->

<!-- User-SCEP-{UniqueID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Editable-End -->

<!-- User-SCEP-{UniqueID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
| Atomic Required | True |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
<!-- User-SCEP-{UniqueID}-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Examples-End -->

<!-- User-SCEP-{UniqueID}-End -->

<!-- User-SCEP-{UniqueID}-CertThumbprint-Begin -->
#### User/SCEP/{UniqueID}/CertThumbprint

<!-- User-SCEP-{UniqueID}-CertThumbprint-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-CertThumbprint-Applicability-End -->

<!-- User-SCEP-{UniqueID}-CertThumbprint-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/CertThumbprint
```
<!-- User-SCEP-{UniqueID}-CertThumbprint-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-CertThumbprint-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Specify the current cert's thumbprint if certificate enrollment succeeds. It's a 20-byte value of the SHA1 certificate hash specified as a hexadecimal string value.
<!-- User-SCEP-{UniqueID}-CertThumbprint-Description-End -->

<!-- User-SCEP-{UniqueID}-CertThumbprint-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> If the certificate on the device becomes invalid (Cert expired, Cert chain isn't valid, private key deleted, etc.) then it will return an empty string.
<!-- User-SCEP-{UniqueID}-CertThumbprint-Editable-End -->

<!-- User-SCEP-{UniqueID}-CertThumbprint-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-SCEP-{UniqueID}-CertThumbprint-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-CertThumbprint-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-CertThumbprint-Examples-End -->

<!-- User-SCEP-{UniqueID}-CertThumbprint-End -->

<!-- User-SCEP-{UniqueID}-ErrorCode-Begin -->
#### User/SCEP/{UniqueID}/ErrorCode

<!-- User-SCEP-{UniqueID}-ErrorCode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-ErrorCode-Applicability-End -->

<!-- User-SCEP-{UniqueID}-ErrorCode-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/ErrorCode
```
<!-- User-SCEP-{UniqueID}-ErrorCode-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-ErrorCode-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. The integer value that indicates the HRESULT of the last enrollment error code.
<!-- User-SCEP-{UniqueID}-ErrorCode-Description-End -->

<!-- User-SCEP-{UniqueID}-ErrorCode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-ErrorCode-Editable-End -->

<!-- User-SCEP-{UniqueID}-ErrorCode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-SCEP-{UniqueID}-ErrorCode-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-ErrorCode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-ErrorCode-Examples-End -->

<!-- User-SCEP-{UniqueID}-ErrorCode-End -->

<!-- User-SCEP-{UniqueID}-Install-Begin -->
#### User/SCEP/{UniqueID}/Install

<!-- User-SCEP-{UniqueID}-Install-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-Install-Applicability-End -->

<!-- User-SCEP-{UniqueID}-Install-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install
```
<!-- User-SCEP-{UniqueID}-Install-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Install-Description-Begin -->
<!-- Description-Source-DDF -->
Required for SCEP certificate enrollment. Parent node to group SCEP cert install related request. NOTE: though the children nodes under Install support Replace commands, once the Exec command is sent to the device, the device will take the values which are set when the Exec command is accepted. The server shouldn't expect the node value change after Exec command is accepted will impact the current undergoing enrollment. The server should check the Status node value and make sure the device isn't at unknown stage before changing children node values.
<!-- User-SCEP-{UniqueID}-Install-Description-End -->

<!-- User-SCEP-{UniqueID}-Install-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-Editable-End -->

<!-- User-SCEP-{UniqueID}-Install-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-SCEP-{UniqueID}-Install-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Install-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-Examples-End -->

<!-- User-SCEP-{UniqueID}-Install-End -->

<!-- User-SCEP-{UniqueID}-Install-AADKeyIdentifierList-Begin -->
##### User/SCEP/{UniqueID}/Install/AADKeyIdentifierList

<!-- User-SCEP-{UniqueID}-Install-AADKeyIdentifierList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- User-SCEP-{UniqueID}-Install-AADKeyIdentifierList-Applicability-End -->

<!-- User-SCEP-{UniqueID}-Install-AADKeyIdentifierList-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/AADKeyIdentifierList
```
<!-- User-SCEP-{UniqueID}-Install-AADKeyIdentifierList-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Install-AADKeyIdentifierList-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Specify the Microsoft Entra ID Key Identifier List as a semicolon separated values. On Enroll, the values in this list are validated against the Microsoft Entra ID Key present on the device. If no match is found, enrollment will fail.
<!-- User-SCEP-{UniqueID}-Install-AADKeyIdentifierList-Description-End -->

<!-- User-SCEP-{UniqueID}-Install-AADKeyIdentifierList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-AADKeyIdentifierList-Editable-End -->

<!-- User-SCEP-{UniqueID}-Install-AADKeyIdentifierList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-SCEP-{UniqueID}-Install-AADKeyIdentifierList-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Install-AADKeyIdentifierList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-AADKeyIdentifierList-Examples-End -->

<!-- User-SCEP-{UniqueID}-Install-AADKeyIdentifierList-End -->

<!-- User-SCEP-{UniqueID}-Install-CAThumbprint-Begin -->
##### User/SCEP/{UniqueID}/Install/CAThumbprint

<!-- User-SCEP-{UniqueID}-Install-CAThumbprint-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-Install-CAThumbprint-Applicability-End -->

<!-- User-SCEP-{UniqueID}-Install-CAThumbprint-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/CAThumbprint
```
<!-- User-SCEP-{UniqueID}-Install-CAThumbprint-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Install-CAThumbprint-Description-Begin -->
<!-- Description-Source-DDF -->
Required. Specify root CA thumbprint. It's a 20-byte value of the SHA1 certificate hash specified as a hexadecimal string value. When client authenticates SCEP server, it checks CA cert from SCEP server whether match with this cert. If no match is found, authentication will fail.
<!-- User-SCEP-{UniqueID}-Install-CAThumbprint-Description-End -->

<!-- User-SCEP-{UniqueID}-Install-CAThumbprint-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-CAThumbprint-Editable-End -->

<!-- User-SCEP-{UniqueID}-Install-CAThumbprint-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-SCEP-{UniqueID}-Install-CAThumbprint-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Install-CAThumbprint-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-CAThumbprint-Examples-End -->

<!-- User-SCEP-{UniqueID}-Install-CAThumbprint-End -->

<!-- User-SCEP-{UniqueID}-Install-Challenge-Begin -->
##### User/SCEP/{UniqueID}/Install/Challenge

<!-- User-SCEP-{UniqueID}-Install-Challenge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-Install-Challenge-Applicability-End -->

<!-- User-SCEP-{UniqueID}-Install-Challenge-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/Challenge
```
<!-- User-SCEP-{UniqueID}-Install-Challenge-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Install-Challenge-Description-Begin -->
<!-- Description-Source-DDF -->
Required for SCEP certificate enrollment. B64 encoded SCEP enrollment challenge. Challenge will be deleted shortly after the Exec command is accepted.
<!-- User-SCEP-{UniqueID}-Install-Challenge-Description-End -->

<!-- User-SCEP-{UniqueID}-Install-Challenge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-Challenge-Editable-End -->

<!-- User-SCEP-{UniqueID}-Install-Challenge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-SCEP-{UniqueID}-Install-Challenge-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Install-Challenge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-Challenge-Examples-End -->

<!-- User-SCEP-{UniqueID}-Install-Challenge-End -->

<!-- User-SCEP-{UniqueID}-Install-ContainerName-Begin -->
##### User/SCEP/{UniqueID}/Install/ContainerName

<!-- User-SCEP-{UniqueID}-Install-ContainerName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-Install-ContainerName-Applicability-End -->

<!-- User-SCEP-{UniqueID}-Install-ContainerName-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/ContainerName
```
<!-- User-SCEP-{UniqueID}-Install-ContainerName-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Install-ContainerName-Description-Begin -->
<!-- Description-Source-DDF -->
Optional.

Specifies the NGC container name (if NGC KSP is chosen for above node). If this node isn't specified when NGC KSP is chosen, enrollment will fail.
<!-- User-SCEP-{UniqueID}-Install-ContainerName-Description-End -->

<!-- User-SCEP-{UniqueID}-Install-ContainerName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-ContainerName-Editable-End -->

<!-- User-SCEP-{UniqueID}-Install-ContainerName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-SCEP-{UniqueID}-Install-ContainerName-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Install-ContainerName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-ContainerName-Examples-End -->

<!-- User-SCEP-{UniqueID}-Install-ContainerName-End -->

<!-- User-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-Begin -->
##### User/SCEP/{UniqueID}/Install/CustomTextToShowInPrompt

<!-- User-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-Applicability-End -->

<!-- User-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/CustomTextToShowInPrompt
```
<!-- User-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Specifies the custom text to show on the NGC PIN prompt during certificate enrollment. The admin can choose to provide more contextual information for why the user needs to enter the PIN and what the certificate will be used for through this.
<!-- User-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-Description-End -->

<!-- User-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-Editable-End -->

<!-- User-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-Examples-End -->

<!-- User-SCEP-{UniqueID}-Install-CustomTextToShowInPrompt-End -->

<!-- User-SCEP-{UniqueID}-Install-EKUMapping-Begin -->
##### User/SCEP/{UniqueID}/Install/EKUMapping

<!-- User-SCEP-{UniqueID}-Install-EKUMapping-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-Install-EKUMapping-Applicability-End -->

<!-- User-SCEP-{UniqueID}-Install-EKUMapping-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/EKUMapping
```
<!-- User-SCEP-{UniqueID}-Install-EKUMapping-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Install-EKUMapping-Description-Begin -->
<!-- Description-Source-DDF -->
Required. Specify extended key usages. Subjected to SCEP server configuration. The list of OIDs are separated by plus "+". Sample format: OID1+OID2+OID3.
<!-- User-SCEP-{UniqueID}-Install-EKUMapping-Description-End -->

<!-- User-SCEP-{UniqueID}-Install-EKUMapping-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-EKUMapping-Editable-End -->

<!-- User-SCEP-{UniqueID}-Install-EKUMapping-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-SCEP-{UniqueID}-Install-EKUMapping-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Install-EKUMapping-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-EKUMapping-Examples-End -->

<!-- User-SCEP-{UniqueID}-Install-EKUMapping-End -->

<!-- User-SCEP-{UniqueID}-Install-Enroll-Begin -->
##### User/SCEP/{UniqueID}/Install/Enroll

<!-- User-SCEP-{UniqueID}-Install-Enroll-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-Install-Enroll-Applicability-End -->

<!-- User-SCEP-{UniqueID}-Install-Enroll-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/Enroll
```
<!-- User-SCEP-{UniqueID}-Install-Enroll-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Install-Enroll-Description-Begin -->
<!-- Description-Source-DDF -->
Required. Trigger the device to start the cert enrollment. The device won't notify MDM server after cert enrollment is done. The MDM server could later query the device to find out whether new cert is added.
<!-- User-SCEP-{UniqueID}-Install-Enroll-Description-End -->

<!-- User-SCEP-{UniqueID}-Install-Enroll-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-Enroll-Editable-End -->

<!-- User-SCEP-{UniqueID}-Install-Enroll-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Exec |
<!-- User-SCEP-{UniqueID}-Install-Enroll-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Install-Enroll-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-Enroll-Examples-End -->

<!-- User-SCEP-{UniqueID}-Install-Enroll-End -->

<!-- User-SCEP-{UniqueID}-Install-HashAlgorithm-Begin -->
##### User/SCEP/{UniqueID}/Install/HashAlgorithm

<!-- User-SCEP-{UniqueID}-Install-HashAlgorithm-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-Install-HashAlgorithm-Applicability-End -->

<!-- User-SCEP-{UniqueID}-Install-HashAlgorithm-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/HashAlgorithm
```
<!-- User-SCEP-{UniqueID}-Install-HashAlgorithm-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Install-HashAlgorithm-Description-Begin -->
<!-- Description-Source-DDF -->
Required for enrollment. Hash algorithm family (SHA-1, SHA-2, SHA-3) specified by MDM server. If multiple hash algorithm families are specified, they must be separated via +.

For NGC, only SHA256 is supported as the supported algorithm.
<!-- User-SCEP-{UniqueID}-Install-HashAlgorithm-Description-End -->

<!-- User-SCEP-{UniqueID}-Install-HashAlgorithm-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-HashAlgorithm-Editable-End -->

<!-- User-SCEP-{UniqueID}-Install-HashAlgorithm-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-SCEP-{UniqueID}-Install-HashAlgorithm-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Install-HashAlgorithm-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-HashAlgorithm-Examples-End -->

<!-- User-SCEP-{UniqueID}-Install-HashAlgorithm-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyLength-Begin -->
##### User/SCEP/{UniqueID}/Install/KeyLength

<!-- User-SCEP-{UniqueID}-Install-KeyLength-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-Install-KeyLength-Applicability-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyLength-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/KeyLength
```
<!-- User-SCEP-{UniqueID}-Install-KeyLength-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyLength-Description-Begin -->
<!-- Description-Source-DDF -->
Required for enrollment. Specify private key length (RSA).

Valid value: 1024, 2048, 4096. For NGC, only 2048 is the supported keylength.
<!-- User-SCEP-{UniqueID}-Install-KeyLength-Description-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyLength-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> For Windows Hello for Business (formerly known as Microsoft Passport for Work) , 2048 is the only supported key length.
<!-- User-SCEP-{UniqueID}-Install-KeyLength-Editable-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyLength-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-SCEP-{UniqueID}-Install-KeyLength-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyLength-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1024 | 1024. |
| 2048 | 2048. |
| 4096 | 4096. |
<!-- User-SCEP-{UniqueID}-Install-KeyLength-AllowedValues-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyLength-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-KeyLength-Examples-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyLength-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyProtection-Begin -->
##### User/SCEP/{UniqueID}/Install/KeyProtection

<!-- User-SCEP-{UniqueID}-Install-KeyProtection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-Install-KeyProtection-Applicability-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyProtection-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/KeyProtection
```
<!-- User-SCEP-{UniqueID}-Install-KeyProtection-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyProtection-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Specify where to keep the private key. Note that even it's protected by TPM, it isn't guarded with TPM PIN.

SCEP enrolled cert doesn't support TPM PIN protection.
<!-- User-SCEP-{UniqueID}-Install-KeyProtection-Description-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyProtection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-KeyProtection-Editable-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyProtection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 3 |
<!-- User-SCEP-{UniqueID}-Install-KeyProtection-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyProtection-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Private key protected by TPM. |
| 2 | Private key protected by phone TPM if the device supports TPM. All Windows Phone 8.1 devices support TPM and will treat value 2 as 1. |
| 3 (Default) | (Default) Private key saved in software KSP. |
| 4 | Private key protected by Windows Hello for Business (formerly known as Microsoft Passport for Work). If this option is specified, the ContainerName must be specified, otherwise enrollment will fail. |
<!-- User-SCEP-{UniqueID}-Install-KeyProtection-AllowedValues-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyProtection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-KeyProtection-Examples-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyProtection-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyUsage-Begin -->
##### User/SCEP/{UniqueID}/Install/KeyUsage

<!-- User-SCEP-{UniqueID}-Install-KeyUsage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-Install-KeyUsage-Applicability-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyUsage-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/KeyUsage
```
<!-- User-SCEP-{UniqueID}-Install-KeyUsage-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyUsage-Description-Begin -->
<!-- Description-Source-DDF -->
Required for enrollment. Specify the key usage bits (0x80, 0x20, 0xA0, etc.) for the certificate in decimal format. The value should at least have second (0x20) or forth (0x80) or both bits set. If the value doesn't have those bits set, configuration will fail.
<!-- User-SCEP-{UniqueID}-Install-KeyUsage-Description-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyUsage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-KeyUsage-Editable-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyUsage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-SCEP-{UniqueID}-Install-KeyUsage-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyUsage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-KeyUsage-Examples-End -->

<!-- User-SCEP-{UniqueID}-Install-KeyUsage-End -->

<!-- User-SCEP-{UniqueID}-Install-RetryCount-Begin -->
##### User/SCEP/{UniqueID}/Install/RetryCount

<!-- User-SCEP-{UniqueID}-Install-RetryCount-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-Install-RetryCount-Applicability-End -->

<!-- User-SCEP-{UniqueID}-Install-RetryCount-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/RetryCount
```
<!-- User-SCEP-{UniqueID}-Install-RetryCount-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Install-RetryCount-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Special to SCEP. Specify device retry times when the SCEP sever sends pending status. Format is int. Default value is 3. Max value: the value can't be larger than 30. If it's larger than 30, the device will use 30.

The min value is 0 which means no retry.
<!-- User-SCEP-{UniqueID}-Install-RetryCount-Description-End -->

<!-- User-SCEP-{UniqueID}-Install-RetryCount-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-RetryCount-Editable-End -->

<!-- User-SCEP-{UniqueID}-Install-RetryCount-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-30]` |
| Default Value  | 3 |
<!-- User-SCEP-{UniqueID}-Install-RetryCount-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Install-RetryCount-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-RetryCount-Examples-End -->

<!-- User-SCEP-{UniqueID}-Install-RetryCount-End -->

<!-- User-SCEP-{UniqueID}-Install-RetryDelay-Begin -->
##### User/SCEP/{UniqueID}/Install/RetryDelay

<!-- User-SCEP-{UniqueID}-Install-RetryDelay-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-Install-RetryDelay-Applicability-End -->

<!-- User-SCEP-{UniqueID}-Install-RetryDelay-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/RetryDelay
```
<!-- User-SCEP-{UniqueID}-Install-RetryDelay-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Install-RetryDelay-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. When the SCEP server sends pending status, specify device retry waiting time in minutes.

Default value is: 5
The min value is 1.
<!-- User-SCEP-{UniqueID}-Install-RetryDelay-Description-End -->

<!-- User-SCEP-{UniqueID}-Install-RetryDelay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-RetryDelay-Editable-End -->

<!-- User-SCEP-{UniqueID}-Install-RetryDelay-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
| Default Value  | 5 |
<!-- User-SCEP-{UniqueID}-Install-RetryDelay-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Install-RetryDelay-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-RetryDelay-Examples-End -->

<!-- User-SCEP-{UniqueID}-Install-RetryDelay-End -->

<!-- User-SCEP-{UniqueID}-Install-ServerURL-Begin -->
##### User/SCEP/{UniqueID}/Install/ServerURL

<!-- User-SCEP-{UniqueID}-Install-ServerURL-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-Install-ServerURL-Applicability-End -->

<!-- User-SCEP-{UniqueID}-Install-ServerURL-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/ServerURL
```
<!-- User-SCEP-{UniqueID}-Install-ServerURL-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Install-ServerURL-Description-Begin -->
<!-- Description-Source-DDF -->
Required for SCEP certificate enrollment. Specify the cert enrollment server. The server could specify multiple server URLs separated by semicolon.
<!-- User-SCEP-{UniqueID}-Install-ServerURL-Description-End -->

<!-- User-SCEP-{UniqueID}-Install-ServerURL-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-ServerURL-Editable-End -->

<!-- User-SCEP-{UniqueID}-Install-ServerURL-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-SCEP-{UniqueID}-Install-ServerURL-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Install-ServerURL-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-ServerURL-Examples-End -->

<!-- User-SCEP-{UniqueID}-Install-ServerURL-End -->

<!-- User-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Begin -->
##### User/SCEP/{UniqueID}/Install/SubjectAlternativeNames

<!-- User-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Applicability-End -->

<!-- User-SCEP-{UniqueID}-Install-SubjectAlternativeNames-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/SubjectAlternativeNames
```
<!-- User-SCEP-{UniqueID}-Install-SubjectAlternativeNames-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Specify subject alternative name. Multiple alternative names could be specified by this node. Each name is the combination of name format+actual name. Refer name type definition in MSDN. Each pair is separated by semicolon. E.g. multiple SAN are presented in the format of [nameformat1]+[actual name1];[name format 2]+[actual name2].
<!-- User-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Description-End -->

<!-- User-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Editable-End -->

<!-- User-SCEP-{UniqueID}-Install-SubjectAlternativeNames-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-SCEP-{UniqueID}-Install-SubjectAlternativeNames-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-SubjectAlternativeNames-Examples-End -->

<!-- User-SCEP-{UniqueID}-Install-SubjectAlternativeNames-End -->

<!-- User-SCEP-{UniqueID}-Install-SubjectName-Begin -->
##### User/SCEP/{UniqueID}/Install/SubjectName

<!-- User-SCEP-{UniqueID}-Install-SubjectName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-Install-SubjectName-Applicability-End -->

<!-- User-SCEP-{UniqueID}-Install-SubjectName-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/SubjectName
```
<!-- User-SCEP-{UniqueID}-Install-SubjectName-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Install-SubjectName-Description-Begin -->
<!-- Description-Source-DDF -->
Required. Specify the subject name. The SubjectName value is quoted if it contains leading or trailing white space or one of the following characters: ("," "=" "+" ";" ).
<!-- User-SCEP-{UniqueID}-Install-SubjectName-Description-End -->

<!-- User-SCEP-{UniqueID}-Install-SubjectName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
For more information, see [CertNameToStrA function](/windows/win32/api/wincrypt/nf-wincrypt-certnametostra#remarks).
<!-- User-SCEP-{UniqueID}-Install-SubjectName-Editable-End -->

<!-- User-SCEP-{UniqueID}-Install-SubjectName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-SCEP-{UniqueID}-Install-SubjectName-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Install-SubjectName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-SubjectName-Examples-End -->

<!-- User-SCEP-{UniqueID}-Install-SubjectName-End -->

<!-- User-SCEP-{UniqueID}-Install-TemplateName-Begin -->
##### User/SCEP/{UniqueID}/Install/TemplateName

<!-- User-SCEP-{UniqueID}-Install-TemplateName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-Install-TemplateName-Applicability-End -->

<!-- User-SCEP-{UniqueID}-Install-TemplateName-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/TemplateName
```
<!-- User-SCEP-{UniqueID}-Install-TemplateName-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Install-TemplateName-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. OID of certificate template name. Note that this name is typically ignored by the SCEP server, therefore the MDM server typically doesn't need to provide it.
<!-- User-SCEP-{UniqueID}-Install-TemplateName-Description-End -->

<!-- User-SCEP-{UniqueID}-Install-TemplateName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-TemplateName-Editable-End -->

<!-- User-SCEP-{UniqueID}-Install-TemplateName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-SCEP-{UniqueID}-Install-TemplateName-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Install-TemplateName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-TemplateName-Examples-End -->

<!-- User-SCEP-{UniqueID}-Install-TemplateName-End -->

<!-- User-SCEP-{UniqueID}-Install-ValidPeriod-Begin -->
##### User/SCEP/{UniqueID}/Install/ValidPeriod

<!-- User-SCEP-{UniqueID}-Install-ValidPeriod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-Install-ValidPeriod-Applicability-End -->

<!-- User-SCEP-{UniqueID}-Install-ValidPeriod-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/ValidPeriod
```
<!-- User-SCEP-{UniqueID}-Install-ValidPeriod-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Install-ValidPeriod-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Specify the units for valid period. Valid values are: Days(Default), Months, Years.

MDM server expected certificate validation period (ValidPeriodUnits + ValidPeriod) the SCEP server as part of certificate enrollment request. It's the server's decision on how to use this valid period to create the certificate.
<!-- User-SCEP-{UniqueID}-Install-ValidPeriod-Description-End -->

<!-- User-SCEP-{UniqueID}-Install-ValidPeriod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-ValidPeriod-Editable-End -->

<!-- User-SCEP-{UniqueID}-Install-ValidPeriod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | Days |
<!-- User-SCEP-{UniqueID}-Install-ValidPeriod-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Install-ValidPeriod-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| Days (Default) | Days. |
| Months | Months. |
| Years | Years. |
<!-- User-SCEP-{UniqueID}-Install-ValidPeriod-AllowedValues-End -->

<!-- User-SCEP-{UniqueID}-Install-ValidPeriod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-ValidPeriod-Examples-End -->

<!-- User-SCEP-{UniqueID}-Install-ValidPeriod-End -->

<!-- User-SCEP-{UniqueID}-Install-ValidPeriodUnits-Begin -->
##### User/SCEP/{UniqueID}/Install/ValidPeriodUnits

<!-- User-SCEP-{UniqueID}-Install-ValidPeriodUnits-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-Install-ValidPeriodUnits-Applicability-End -->

<!-- User-SCEP-{UniqueID}-Install-ValidPeriodUnits-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Install/ValidPeriodUnits
```
<!-- User-SCEP-{UniqueID}-Install-ValidPeriodUnits-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Install-ValidPeriodUnits-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Specify desired number of units used in validity period. Subjected to SCEP server configuration. Default is 0. The units are defined in ValidPeriod node. Note the valid period specified by MDM will overwrite the valid period specified in cert template. For example, if ValidPeriod is days and ValidPeriodUnits is 30, it means the total valid duration is 30 days.

> [!NOTE]
> The device only sends the MDM server expected certificate validation period (ValidPeriodUnits + ValidPeriod) the SCEP server as part of certificate enrollment request. It's the server's decision on how to use this valid period to create the certificate.
<!-- User-SCEP-{UniqueID}-Install-ValidPeriodUnits-Description-End -->

<!-- User-SCEP-{UniqueID}-Install-ValidPeriodUnits-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-ValidPeriodUnits-Editable-End -->

<!-- User-SCEP-{UniqueID}-Install-ValidPeriodUnits-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- User-SCEP-{UniqueID}-Install-ValidPeriodUnits-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Install-ValidPeriodUnits-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Install-ValidPeriodUnits-Examples-End -->

<!-- User-SCEP-{UniqueID}-Install-ValidPeriodUnits-End -->

<!-- User-SCEP-{UniqueID}-RespondentServerUrl-Begin -->
#### User/SCEP/{UniqueID}/RespondentServerUrl

<!-- User-SCEP-{UniqueID}-RespondentServerUrl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-RespondentServerUrl-Applicability-End -->

<!-- User-SCEP-{UniqueID}-RespondentServerUrl-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/RespondentServerUrl
```
<!-- User-SCEP-{UniqueID}-RespondentServerUrl-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-RespondentServerUrl-Description-Begin -->
<!-- Description-Source-DDF -->
Required. Returns the URL of the SCEP server that responded to the enrollment request.
<!-- User-SCEP-{UniqueID}-RespondentServerUrl-Description-End -->

<!-- User-SCEP-{UniqueID}-RespondentServerUrl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-RespondentServerUrl-Editable-End -->

<!-- User-SCEP-{UniqueID}-RespondentServerUrl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-SCEP-{UniqueID}-RespondentServerUrl-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-RespondentServerUrl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-RespondentServerUrl-Examples-End -->

<!-- User-SCEP-{UniqueID}-RespondentServerUrl-End -->

<!-- User-SCEP-{UniqueID}-Status-Begin -->
#### User/SCEP/{UniqueID}/Status

<!-- User-SCEP-{UniqueID}-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-SCEP-{UniqueID}-Status-Applicability-End -->

<!-- User-SCEP-{UniqueID}-Status-OmaUri-Begin -->
```User
./User/Vendor/MSFT/ClientCertificateInstall/SCEP/{UniqueID}/Status
```
<!-- User-SCEP-{UniqueID}-Status-OmaUri-End -->

<!-- User-SCEP-{UniqueID}-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Required. Specify the latest status for the certificate due to enroll request.

Valid values are:

1 - finished successfully
2 - pending (the device hasn't finished the action but has received the SCEP server pending response)
32 - unknown
16 - action failed.
<!-- User-SCEP-{UniqueID}-Status-Description-End -->

<!-- User-SCEP-{UniqueID}-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Status-Editable-End -->

<!-- User-SCEP-{UniqueID}-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-SCEP-{UniqueID}-Status-DFProperties-End -->

<!-- User-SCEP-{UniqueID}-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-SCEP-{UniqueID}-Status-Examples-End -->

<!-- User-SCEP-{UniqueID}-Status-End -->

<!-- ClientCertificateInstall-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## Examples

- Enroll a client certificate through SCEP.

    ```xml
    <SyncML xmlns="SYNCML:SYNCML1.2">
        <SyncBody>
            <Atomic>
            <Add>
                <CmdID>301</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere></LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">node</Format>
                    </Meta>
                </Item>
            </Add>
            <Add>
                <CmdID>302</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/RetryCount</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">int</Format>
                    </Meta>
                    <Data>1</Data>
                </Item>
            </Add>
            <Add>
                <CmdID>303</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/RetryDelay</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">int</Format>
                    </Meta>
                    <Data>1</Data>
                </Item>
            </Add>
            <Add>
                <CmdID>304</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/KeyUsage</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">int</Format>
                    </Meta>
                    <Data>160</Data>
                </Item>
            </Add>
            <Add>
                <CmdID>305</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/KeyLength</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">int</Format>
                    </Meta>
                    <Data>1024</Data>
                </Item>
            </Add>
            <Add>
                <CmdID>306</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/HashAlgorithm</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">chr</Format>
                    </Meta>
                    <Data>SHA-1</Data>
                </Item>
            </Add>
            <Add>
                <CmdID>307</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/SubjectName</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">chr</Format>
                    </Meta>
                    <Data>CN=ContosoCSP</Data>
                </Item>
            </Add>
            <Add>
                <CmdID>308</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/SubjectAlternativeNames</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">chr</Format>
                    </Meta>
                    <Data></Data>
                </Item>
            </Add>
            <Add>
                <CmdID>309</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/ValidPeriod</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">chr</Format>
                    </Meta>
                    <Data>Years</Data>
                </Item>
            </Add>
            <Add>
                <CmdID>310</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/ValidPeriodUnits</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">int</Format>
                    </Meta>
                    <Data>1</Data>
                </Item>
            </Add>
            <Add>
                <CmdID>311</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/EKUMapping</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">chr</Format>
                    </Meta>
                    <Data>1.3.6.1.4.1.311.10.3.12+1.3.6.1.4.1.311.10.3.4+1.3.6.1.4.1.311.20.2.2+1.3.6.1.5.5.7.3.2</Data>
                </Item>
            </Add>
            <Add>
                <CmdID>312</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/KeyProtection</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">int</Format>
                    </Meta>
                    <Data>3</Data>
                </Item>
            </Add>
            <Add>
                <CmdID>313$</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/ServerURL</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">chr</Format>
                    </Meta>
                    <Data>http://constoso.com/certsrv/mscep/mscep.dll</Data>
                </Item>
            </Add>
            <Add>
                <CmdID>314</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/Challenge</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">chr</Format>
                    </Meta>
                    <Data>1234CB055B7EBF384A9486A22B7559A5</Data>
                </Item>
            </Add>
            <Add>
                <CmdID>315</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/CAThumbprint</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">chr</Format>
                    </Meta>
                    <Data>12345087E648875D1DF5D9F9FF89DD10</Data>
                </Item>
            </Add>
            <Exec>
                <CmdID>316</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/Enroll</LocURI>
                    </Target>
                </Item>
            </Exec>
            </Atomic>
            <Final/>
        </SyncBody>
    </SyncML>
    ```

- Add a PFX certificate. The PFX certificate password is encrypted with a custom certificate from "My" store.

    ```xml
    <SyncML>
        <SyncBody>
                <Delete>
                    <CmdID>$CmdID$</CmdID>
                    <Item>
                        <Target>
                            <LocURI>./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/813A171D7341E1DA90D4A01878DD5328D351900C</LocURI>
                        </Target>
                    </Item>
                </Delete>
            <Atomic>
                <CmdID>$CmdID$</CmdID>
                <Add>
                    <CmdID>$CmdID$</CmdID>
                    <Item>
                        <Target>
                            <LocURI>./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/813A171D7341E1DA90D4A01878DD5328D351900C/KeyLocation</LocURI>
                        </Target>
                        <Meta>
                            <Format xmlns="syncml:metinf">int</Format>
                        </Meta>
                        <Data>2</Data>
                    </Item>
                </Add>
                <Add>
                    <CmdID>$CmdID$</CmdID>
                    <Item>
                        <Target>
                            <LocURI>./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/813A171D7341E1DA90D4A01878DD5328D351900C/PFXCertBlob</LocURI>
                        </Target>
                         <Meta>
                            <Format xmlns="syncml:metinf">chr</Format>
                        </Meta>
                        <Data>Base64_Encode_Cert_Blob</Data>
                    </Item>
                </Add>
                <Add>
                    <CmdID>$CmdID$</CmdID>
                    <Item>
                        <Target>
                            <LocURI>./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/813A171D7341E1DA90D4A01878DD5328D351900C/PFXCertPassword</LocURI>
                        </Target>
                         <Meta>
                            <Format xmlns="syncml:metinf">chr</Format>
                        </Meta>
                        <Data>Base64Encoded_Encrypted_Password_Blog</Data>
                    </Item>
                </Add>
                <Add>
                    <CmdID>$CmdID$</CmdID>
                    <Item>
                        <Target>
                            <LocURI>./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/813A171D7341E1DA90D4A01878DD5328D351900C/PFXCertPasswordEncryptionType</LocURI>
                        </Target>
                        <Meta>
                            <Format xmlns="syncml:metinf">int</Format>
                        </Meta>
                        <Data>2</Data>
                    </Item>
                </Add>
                <Add>
                    <CmdID>$CmdID$</CmdID>
                    <Item>
                        <Target>
                            <LocURI>./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/813A171D7341E1DA90D4A01878DD5328D351900C/PFXCertPasswordEncryptionStore</LocURI>
                        </Target>
                        <Meta>
                            <Format xmlns="syncml:metinf">chr</Format>
                        </Meta>
                        <Data>My</Data>
                    </Item>
                </Add>
                <Add>
                    <CmdID>$CmdID$</CmdID>
                    <Item>
                        <Target>
                            <LocURI>./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/813A171D7341E1DA90D4A01878DD5328D351900C/PFXKeyExportable</LocURI>
                        </Target>
                        <Meta>
                            <Format xmlns="syncml:metinf">bool</Format>
                        </Meta>
                        <Data>true</Data>
                    </Item>
                </Add>
            </Atomic>
        <Final/>
        </SyncBody>
    </SyncML>
    ```
<!-- ClientCertificateInstall-CspMoreInfo-End -->

<!-- ClientCertificateInstall-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)

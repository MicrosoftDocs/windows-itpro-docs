---
title: Cryptography Policy CSP
description: Learn more about the Cryptography Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- Cryptography-Begin -->
# Policy CSP - Cryptography

<!-- Cryptography-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Cryptography-Editable-End -->

<!-- AllowFipsAlgorithmPolicy-Begin -->
## AllowFipsAlgorithmPolicy

<!-- AllowFipsAlgorithmPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowFipsAlgorithmPolicy-Applicability-End -->

<!-- AllowFipsAlgorithmPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Cryptography/AllowFipsAlgorithmPolicy
```
<!-- AllowFipsAlgorithmPolicy-OmaUri-End -->

<!-- AllowFipsAlgorithmPolicy-Description-Begin -->
<!-- Description-Source-DDF -->
Allows or disallows the Federal Information Processing Standard (FIPS) policy.
<!-- AllowFipsAlgorithmPolicy-Description-End -->

<!-- AllowFipsAlgorithmPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowFipsAlgorithmPolicy-Editable-End -->

<!-- AllowFipsAlgorithmPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowFipsAlgorithmPolicy-DFProperties-End -->

<!-- AllowFipsAlgorithmPolicy-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Allow. |
| 0 (Default) | Block. |
<!-- AllowFipsAlgorithmPolicy-AllowedValues-End -->

<!-- AllowFipsAlgorithmPolicy-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | System cryptography: Use FIPS-compliant algorithms for encryption, hashing, and signing |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- AllowFipsAlgorithmPolicy-GpMapping-End -->

<!-- AllowFipsAlgorithmPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowFipsAlgorithmPolicy-Examples-End -->

<!-- AllowFipsAlgorithmPolicy-End -->

<!-- ConfigureEllipticCurveCryptography-Begin -->
## ConfigureEllipticCurveCryptography

<!-- ConfigureEllipticCurveCryptography-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- ConfigureEllipticCurveCryptography-Applicability-End -->

<!-- ConfigureEllipticCurveCryptography-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Cryptography/ConfigureEllipticCurveCryptography
```
<!-- ConfigureEllipticCurveCryptography-OmaUri-End -->

<!-- ConfigureEllipticCurveCryptography-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the priority order of ECC curves used with ECDHE cipher suites.

- If you enable this policy setting, ECC curves are prioritized in the order specified.(Enter one Curve name per line)

- If you disable or don't configure this policy setting, the default ECC curve order is used.

Default Curve Order
 
curve25519
NistP256
NistP384

To See all the curves supported on the system, Use the following command:

CertUtil.exe -DisplayEccCurve.
<!-- ConfigureEllipticCurveCryptography-Description-End -->

<!-- ConfigureEllipticCurveCryptography-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureEllipticCurveCryptography-Editable-End -->

<!-- ConfigureEllipticCurveCryptography-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- ConfigureEllipticCurveCryptography-DFProperties-End -->

<!-- ConfigureEllipticCurveCryptography-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SSLCurveOrder |
| Friendly Name | ECC Curve Order |
| Location | Computer Configuration |
| Path | Network > SSL Configuration Settings |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002 |
| ADMX File Name | CipherSuiteOrder.admx |
<!-- ConfigureEllipticCurveCryptography-GpMapping-End -->

<!-- ConfigureEllipticCurveCryptography-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureEllipticCurveCryptography-Examples-End -->

<!-- ConfigureEllipticCurveCryptography-End -->

<!-- ConfigureSystemCryptographyForceStrongKeyProtection-Begin -->
## ConfigureSystemCryptographyForceStrongKeyProtection

<!-- ConfigureSystemCryptographyForceStrongKeyProtection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- ConfigureSystemCryptographyForceStrongKeyProtection-Applicability-End -->

<!-- ConfigureSystemCryptographyForceStrongKeyProtection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Cryptography/ConfigureSystemCryptographyForceStrongKeyProtection
```
<!-- ConfigureSystemCryptographyForceStrongKeyProtection-OmaUri-End -->

<!-- ConfigureSystemCryptographyForceStrongKeyProtection-Description-Begin -->
<!-- Description-Source-DDF -->
System cryptography: Force strong key protection for user keys stored on the computer. Last write wins.
<!-- ConfigureSystemCryptographyForceStrongKeyProtection-Description-End -->

<!-- ConfigureSystemCryptographyForceStrongKeyProtection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureSystemCryptographyForceStrongKeyProtection-Editable-End -->

<!-- ConfigureSystemCryptographyForceStrongKeyProtection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 2 |
<!-- ConfigureSystemCryptographyForceStrongKeyProtection-DFProperties-End -->

<!-- ConfigureSystemCryptographyForceStrongKeyProtection-AllowedValues-Begin -->
**Allowed values**:

| Flag | Description |
|:--|:--|
| 8 | An app container has accessed a medium key that isn't strongly protected. For example, a key that's for user consent only, or is password or fingerprint protected. |
| 2 (Default) | Force high protection. |
| 1 | Display the strong key user interface as needed. |
<!-- ConfigureSystemCryptographyForceStrongKeyProtection-AllowedValues-End -->

<!-- ConfigureSystemCryptographyForceStrongKeyProtection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureSystemCryptographyForceStrongKeyProtection-Examples-End -->

<!-- ConfigureSystemCryptographyForceStrongKeyProtection-End -->

<!-- OverrideMinimumEnabledDTLSVersionClient-Begin -->
## OverrideMinimumEnabledDTLSVersionClient

<!-- OverrideMinimumEnabledDTLSVersionClient-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- OverrideMinimumEnabledDTLSVersionClient-Applicability-End -->

<!-- OverrideMinimumEnabledDTLSVersionClient-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Cryptography/OverrideMinimumEnabledDTLSVersionClient
```
<!-- OverrideMinimumEnabledDTLSVersionClient-OmaUri-End -->

<!-- OverrideMinimumEnabledDTLSVersionClient-Description-Begin -->
<!-- Description-Source-DDF -->
Override minimal enabled TLS version for client role. Last write wins.
<!-- OverrideMinimumEnabledDTLSVersionClient-Description-End -->

<!-- OverrideMinimumEnabledDTLSVersionClient-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- OverrideMinimumEnabledDTLSVersionClient-Editable-End -->

<!-- OverrideMinimumEnabledDTLSVersionClient-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- OverrideMinimumEnabledDTLSVersionClient-DFProperties-End -->

<!-- OverrideMinimumEnabledDTLSVersionClient-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- OverrideMinimumEnabledDTLSVersionClient-Examples-End -->

<!-- OverrideMinimumEnabledDTLSVersionClient-End -->

<!-- OverrideMinimumEnabledDTLSVersionServer-Begin -->
## OverrideMinimumEnabledDTLSVersionServer

<!-- OverrideMinimumEnabledDTLSVersionServer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- OverrideMinimumEnabledDTLSVersionServer-Applicability-End -->

<!-- OverrideMinimumEnabledDTLSVersionServer-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Cryptography/OverrideMinimumEnabledDTLSVersionServer
```
<!-- OverrideMinimumEnabledDTLSVersionServer-OmaUri-End -->

<!-- OverrideMinimumEnabledDTLSVersionServer-Description-Begin -->
<!-- Description-Source-DDF -->
Override minimal enabled TLS version for server role. Last write wins.
<!-- OverrideMinimumEnabledDTLSVersionServer-Description-End -->

<!-- OverrideMinimumEnabledDTLSVersionServer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- OverrideMinimumEnabledDTLSVersionServer-Editable-End -->

<!-- OverrideMinimumEnabledDTLSVersionServer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- OverrideMinimumEnabledDTLSVersionServer-DFProperties-End -->

<!-- OverrideMinimumEnabledDTLSVersionServer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- OverrideMinimumEnabledDTLSVersionServer-Examples-End -->

<!-- OverrideMinimumEnabledDTLSVersionServer-End -->

<!-- OverrideMinimumEnabledTLSVersionClient-Begin -->
## OverrideMinimumEnabledTLSVersionClient

<!-- OverrideMinimumEnabledTLSVersionClient-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- OverrideMinimumEnabledTLSVersionClient-Applicability-End -->

<!-- OverrideMinimumEnabledTLSVersionClient-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Cryptography/OverrideMinimumEnabledTLSVersionClient
```
<!-- OverrideMinimumEnabledTLSVersionClient-OmaUri-End -->

<!-- OverrideMinimumEnabledTLSVersionClient-Description-Begin -->
<!-- Description-Source-DDF -->
Override minimal enabled TLS version for client role. Last write wins.
<!-- OverrideMinimumEnabledTLSVersionClient-Description-End -->

<!-- OverrideMinimumEnabledTLSVersionClient-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- OverrideMinimumEnabledTLSVersionClient-Editable-End -->

<!-- OverrideMinimumEnabledTLSVersionClient-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- OverrideMinimumEnabledTLSVersionClient-DFProperties-End -->

<!-- OverrideMinimumEnabledTLSVersionClient-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- OverrideMinimumEnabledTLSVersionClient-Examples-End -->

<!-- OverrideMinimumEnabledTLSVersionClient-End -->

<!-- OverrideMinimumEnabledTLSVersionServer-Begin -->
## OverrideMinimumEnabledTLSVersionServer

<!-- OverrideMinimumEnabledTLSVersionServer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- OverrideMinimumEnabledTLSVersionServer-Applicability-End -->

<!-- OverrideMinimumEnabledTLSVersionServer-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Cryptography/OverrideMinimumEnabledTLSVersionServer
```
<!-- OverrideMinimumEnabledTLSVersionServer-OmaUri-End -->

<!-- OverrideMinimumEnabledTLSVersionServer-Description-Begin -->
<!-- Description-Source-DDF -->
Override minimal enabled TLS version for server role. Last write wins.
<!-- OverrideMinimumEnabledTLSVersionServer-Description-End -->

<!-- OverrideMinimumEnabledTLSVersionServer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- OverrideMinimumEnabledTLSVersionServer-Editable-End -->

<!-- OverrideMinimumEnabledTLSVersionServer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- OverrideMinimumEnabledTLSVersionServer-DFProperties-End -->

<!-- OverrideMinimumEnabledTLSVersionServer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- OverrideMinimumEnabledTLSVersionServer-Examples-End -->

<!-- OverrideMinimumEnabledTLSVersionServer-End -->

<!-- TLSCipherSuites-Begin -->
## TLSCipherSuites

<!-- TLSCipherSuites-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- TLSCipherSuites-Applicability-End -->

<!-- TLSCipherSuites-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Cryptography/TLSCipherSuites
```
<!-- TLSCipherSuites-OmaUri-End -->

<!-- TLSCipherSuites-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the cipher suites used by the Secure Socket Layer (SSL).

- If you enable this policy setting, SSL cipher suites are prioritized in the order specified.

- If you disable or don't configure this policy setting, default cipher suite order is used.

Link for all the cipherSuites: <https://go.microsoft.com/fwlink/?LinkId=517265>
<!-- TLSCipherSuites-Description-End -->

<!-- TLSCipherSuites-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TLSCipherSuites-Editable-End -->

<!-- TLSCipherSuites-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- TLSCipherSuites-DFProperties-End -->

<!-- TLSCipherSuites-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SSLCipherSuiteOrder |
| Friendly Name | SSL Cipher Suite Order |
| Location | Computer Configuration |
| Path | Network > SSL Configuration Settings |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Cryptography\Configuration\SSL\00010002 |
| ADMX File Name | CipherSuiteOrder.admx |
<!-- TLSCipherSuites-GpMapping-End -->

<!-- TLSCipherSuites-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TLSCipherSuites-Examples-End -->

<!-- TLSCipherSuites-End -->

<!-- Cryptography-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Cryptography-CspMoreInfo-End -->

<!-- Cryptography-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)

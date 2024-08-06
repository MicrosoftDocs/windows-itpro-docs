---
title: ADMX_Smartcard Policy CSP
description: Learn more about the ADMX_Smartcard Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Smartcard-Begin -->
# Policy CSP - ADMX_Smartcard

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_Smartcard-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Smartcard-Editable-End -->

<!-- AllowCertificatesWithNoEKU-Begin -->
## AllowCertificatesWithNoEKU

<!-- AllowCertificatesWithNoEKU-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowCertificatesWithNoEKU-Applicability-End -->

<!-- AllowCertificatesWithNoEKU-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Smartcard/AllowCertificatesWithNoEKU
```
<!-- AllowCertificatesWithNoEKU-OmaUri-End -->

<!-- AllowCertificatesWithNoEKU-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you allow certificates without an Extended Key Usage (EKU) set to be used for logon.

In versions of Windows prior to Windows Vista, smart card certificates that are used for logon require an extended key usage (EKU) extension with a smart card logon object identifier. This policy setting can be used to modify that restriction.

- If you enable this policy setting, certificates with the following attributes can also be used to log on with a smart card:

- Certificates with no EKU
- Certificates with an All Purpose EKU
- Certificates with a Client Authentication EKU.

- If you disable or don't configure this policy setting, only certificates that contain the smart card logon object identifier can be used to log on with a smart card.
<!-- AllowCertificatesWithNoEKU-Description-End -->

<!-- AllowCertificatesWithNoEKU-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowCertificatesWithNoEKU-Editable-End -->

<!-- AllowCertificatesWithNoEKU-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowCertificatesWithNoEKU-DFProperties-End -->

<!-- AllowCertificatesWithNoEKU-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowCertificatesWithNoEKU |
| Friendly Name | Allow certificates with no extended key usage certificate attribute |
| Location | Computer Configuration |
| Path | Windows Components > Smart Card |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\SmartCardCredentialProvider |
| Registry Value Name | AllowCertificatesWithNoEKU |
| ADMX File Name | Smartcard.admx |
<!-- AllowCertificatesWithNoEKU-AdmxBacked-End -->

<!-- AllowCertificatesWithNoEKU-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowCertificatesWithNoEKU-Examples-End -->

<!-- AllowCertificatesWithNoEKU-End -->

<!-- AllowIntegratedUnblock-Begin -->
## AllowIntegratedUnblock

<!-- AllowIntegratedUnblock-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowIntegratedUnblock-Applicability-End -->

<!-- AllowIntegratedUnblock-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Smartcard/AllowIntegratedUnblock
```
<!-- AllowIntegratedUnblock-OmaUri-End -->

<!-- AllowIntegratedUnblock-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you determine whether the integrated unblock feature will be available in the logon User Interface (UI).

In order to use the integrated unblock feature your smart card must support this feature. Please check with your hardware manufacturer to see if your smart card supports this feature.

- If you enable this policy setting, the integrated unblock feature will be available.

- If you disable or don't configure this policy setting then the integrated unblock feature won't be available.
<!-- AllowIntegratedUnblock-Description-End -->

<!-- AllowIntegratedUnblock-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowIntegratedUnblock-Editable-End -->

<!-- AllowIntegratedUnblock-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowIntegratedUnblock-DFProperties-End -->

<!-- AllowIntegratedUnblock-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowIntegratedUnblock |
| Friendly Name | Allow Integrated Unblock screen to be displayed at the time of logon |
| Location | Computer Configuration |
| Path | Windows Components > Smart Card |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\SmartCardCredentialProvider |
| Registry Value Name | AllowIntegratedUnblock |
| ADMX File Name | Smartcard.admx |
<!-- AllowIntegratedUnblock-AdmxBacked-End -->

<!-- AllowIntegratedUnblock-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowIntegratedUnblock-Examples-End -->

<!-- AllowIntegratedUnblock-End -->

<!-- AllowSignatureOnlyKeys-Begin -->
## AllowSignatureOnlyKeys

<!-- AllowSignatureOnlyKeys-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowSignatureOnlyKeys-Applicability-End -->

<!-- AllowSignatureOnlyKeys-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Smartcard/AllowSignatureOnlyKeys
```
<!-- AllowSignatureOnlyKeys-OmaUri-End -->

<!-- AllowSignatureOnlyKeys-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you allow signature key-based certificates to be enumerated and available for logon.

- If you enable this policy setting then any certificates available on the smart card with a signature only key will be listed on the logon screen.

- If you disable or don't configure this policy setting, any available smart card signature key-based certificates won't be listed on the logon screen.
<!-- AllowSignatureOnlyKeys-Description-End -->

<!-- AllowSignatureOnlyKeys-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSignatureOnlyKeys-Editable-End -->

<!-- AllowSignatureOnlyKeys-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowSignatureOnlyKeys-DFProperties-End -->

<!-- AllowSignatureOnlyKeys-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowSignatureOnlyKeys |
| Friendly Name | Allow signature keys valid for Logon |
| Location | Computer Configuration |
| Path | Windows Components > Smart Card |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\SmartCardCredentialProvider |
| Registry Value Name | AllowSignatureOnlyKeys |
| ADMX File Name | Smartcard.admx |
<!-- AllowSignatureOnlyKeys-AdmxBacked-End -->

<!-- AllowSignatureOnlyKeys-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSignatureOnlyKeys-Examples-End -->

<!-- AllowSignatureOnlyKeys-End -->

<!-- AllowTimeInvalidCertificates-Begin -->
## AllowTimeInvalidCertificates

<!-- AllowTimeInvalidCertificates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowTimeInvalidCertificates-Applicability-End -->

<!-- AllowTimeInvalidCertificates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Smartcard/AllowTimeInvalidCertificates
```
<!-- AllowTimeInvalidCertificates-OmaUri-End -->

<!-- AllowTimeInvalidCertificates-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits those certificates to be displayed for logon that are either expired or not yet valid.

Under previous versions of Microsoft Windows, certificates were required to contain a valid time and not be expired. The certificate must still be accepted by the domain controller in order to be used. This setting only controls the displaying of the certificate on the client machine.

- If you enable this policy setting certificates will be listed on the logon screen regardless of whether they've an invalid time or their time validity has expired.

- If you disable or don't configure this policy setting, certificates which are expired or not yet valid won't be listed on the logon screen.
<!-- AllowTimeInvalidCertificates-Description-End -->

<!-- AllowTimeInvalidCertificates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowTimeInvalidCertificates-Editable-End -->

<!-- AllowTimeInvalidCertificates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowTimeInvalidCertificates-DFProperties-End -->

<!-- AllowTimeInvalidCertificates-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowTimeInvalidCertificates |
| Friendly Name | Allow time invalid certificates |
| Location | Computer Configuration |
| Path | Windows Components > Smart Card |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\SmartCardCredentialProvider |
| Registry Value Name | AllowTimeInvalidCertificates |
| ADMX File Name | Smartcard.admx |
<!-- AllowTimeInvalidCertificates-AdmxBacked-End -->

<!-- AllowTimeInvalidCertificates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowTimeInvalidCertificates-Examples-End -->

<!-- AllowTimeInvalidCertificates-End -->

<!-- CertPropEnabledString-Begin -->
## CertPropEnabledString

<!-- CertPropEnabledString-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CertPropEnabledString-Applicability-End -->

<!-- CertPropEnabledString-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Smartcard/CertPropEnabledString
```
<!-- CertPropEnabledString-OmaUri-End -->

<!-- CertPropEnabledString-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the certificate propagation that occurs when a smart card is inserted.

- If you enable or don't configure this policy setting then certificate propagation will occur when you insert your smart card.

- If you disable this policy setting, certificate propagation won't occur and the certificates won't be made available to applications such as Outlook.
<!-- CertPropEnabledString-Description-End -->

<!-- CertPropEnabledString-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CertPropEnabledString-Editable-End -->

<!-- CertPropEnabledString-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CertPropEnabledString-DFProperties-End -->

<!-- CertPropEnabledString-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CertPropEnabledString |
| Friendly Name | Turn on certificate propagation from smart card |
| Location | Computer Configuration |
| Path | Windows Components > Smart Card |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\CertProp |
| Registry Value Name | CertPropEnabled |
| ADMX File Name | Smartcard.admx |
<!-- CertPropEnabledString-AdmxBacked-End -->

<!-- CertPropEnabledString-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CertPropEnabledString-Examples-End -->

<!-- CertPropEnabledString-End -->

<!-- CertPropRootCleanupString-Begin -->
## CertPropRootCleanupString

<!-- CertPropRootCleanupString-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CertPropRootCleanupString-Applicability-End -->

<!-- CertPropRootCleanupString-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Smartcard/CertPropRootCleanupString
```
<!-- CertPropRootCleanupString-OmaUri-End -->

<!-- CertPropRootCleanupString-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the clean up behavior of root certificates.

- If you enable this policy setting then root certificate cleanup will occur according to the option selected.

- If you disable or don't configure this setting then root certificate clean up will occur on log off.
<!-- CertPropRootCleanupString-Description-End -->

<!-- CertPropRootCleanupString-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CertPropRootCleanupString-Editable-End -->

<!-- CertPropRootCleanupString-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CertPropRootCleanupString-DFProperties-End -->

<!-- CertPropRootCleanupString-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CertPropRootCleanupString |
| Friendly Name | Configure root certificate clean up |
| Location | Computer Configuration |
| Path | Windows Components > Smart Card |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\CertProp |
| ADMX File Name | Smartcard.admx |
<!-- CertPropRootCleanupString-AdmxBacked-End -->

<!-- CertPropRootCleanupString-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CertPropRootCleanupString-Examples-End -->

<!-- CertPropRootCleanupString-End -->

<!-- CertPropRootEnabledString-Begin -->
## CertPropRootEnabledString

<!-- CertPropRootEnabledString-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CertPropRootEnabledString-Applicability-End -->

<!-- CertPropRootEnabledString-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Smartcard/CertPropRootEnabledString
```
<!-- CertPropRootEnabledString-OmaUri-End -->

<!-- CertPropRootEnabledString-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the root certificate propagation that occurs when a smart card is inserted.

- If you enable or don't configure this policy setting then root certificate propagation will occur when you insert your smart card.

> [!NOTE]
> For this policy setting to work the following policy setting must also be enabled: Turn on certificate propagation from smart card.

- If you disable this policy setting then root certificates won't be propagated from the smart card.
<!-- CertPropRootEnabledString-Description-End -->

<!-- CertPropRootEnabledString-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CertPropRootEnabledString-Editable-End -->

<!-- CertPropRootEnabledString-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CertPropRootEnabledString-DFProperties-End -->

<!-- CertPropRootEnabledString-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CertPropRootEnabledString |
| Friendly Name | Turn on root certificate propagation from smart card |
| Location | Computer Configuration |
| Path | Windows Components > Smart Card |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\CertProp |
| Registry Value Name | EnableRootCertificatePropagation |
| ADMX File Name | Smartcard.admx |
<!-- CertPropRootEnabledString-AdmxBacked-End -->

<!-- CertPropRootEnabledString-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CertPropRootEnabledString-Examples-End -->

<!-- CertPropRootEnabledString-End -->

<!-- DisallowPlaintextPin-Begin -->
## DisallowPlaintextPin

<!-- DisallowPlaintextPin-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisallowPlaintextPin-Applicability-End -->

<!-- DisallowPlaintextPin-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Smartcard/DisallowPlaintextPin
```
<!-- DisallowPlaintextPin-OmaUri-End -->

<!-- DisallowPlaintextPin-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents plaintext PINs from being returned by Credential Manager.

- If you enable this policy setting, Credential Manager doesn't return a plaintext PIN.

- If you disable or don't configure this policy setting, plaintext PINs can be returned by Credential Manager.

> [!NOTE]
> Enabling this policy setting could prevent certain smart cards from working on Windows. Please consult your smart card manufacturer to find out whether you'll be affected by this policy setting.
<!-- DisallowPlaintextPin-Description-End -->

<!-- DisallowPlaintextPin-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisallowPlaintextPin-Editable-End -->

<!-- DisallowPlaintextPin-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisallowPlaintextPin-DFProperties-End -->

<!-- DisallowPlaintextPin-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisallowPlaintextPin |
| Friendly Name | Prevent plaintext PINs from being returned by Credential Manager |
| Location | Computer Configuration |
| Path | Windows Components > Smart Card |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\SmartCardCredentialProvider |
| Registry Value Name | DisallowPlaintextPin |
| ADMX File Name | Smartcard.admx |
<!-- DisallowPlaintextPin-AdmxBacked-End -->

<!-- DisallowPlaintextPin-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisallowPlaintextPin-Examples-End -->

<!-- DisallowPlaintextPin-End -->

<!-- EnumerateECCCerts-Begin -->
## EnumerateECCCerts

<!-- EnumerateECCCerts-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnumerateECCCerts-Applicability-End -->

<!-- EnumerateECCCerts-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Smartcard/EnumerateECCCerts
```
<!-- EnumerateECCCerts-OmaUri-End -->

<!-- EnumerateECCCerts-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control whether elliptic curve cryptography (ECC) certificates on a smart card can be used to log on to a domain.

- If you enable this policy setting, ECC certificates on a smart card can be used to log on to a domain.

- If you disable or don't configure this policy setting, ECC certificates on a smart card can't be used to log on to a domain.

> [!NOTE]
> This policy setting only affects a user's ability to log on to a domain. ECC certificates on a smart card that are used for other applications, such as document signing, aren't affected by this policy setting.

> [!NOTE]
> If you use an ECDSA key to log on, you must also have an associated ECDH key to permit logons when you aren't connected to the network.
<!-- EnumerateECCCerts-Description-End -->

<!-- EnumerateECCCerts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnumerateECCCerts-Editable-End -->

<!-- EnumerateECCCerts-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnumerateECCCerts-DFProperties-End -->

<!-- EnumerateECCCerts-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnumerateECCCerts |
| Friendly Name | Allow ECC certificates to be used for logon and authentication |
| Location | Computer Configuration |
| Path | Windows Components > Smart Card |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\SmartCardCredentialProvider |
| Registry Value Name | EnumerateECCCerts |
| ADMX File Name | Smartcard.admx |
<!-- EnumerateECCCerts-AdmxBacked-End -->

<!-- EnumerateECCCerts-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnumerateECCCerts-Examples-End -->

<!-- EnumerateECCCerts-End -->

<!-- FilterDuplicateCerts-Begin -->
## FilterDuplicateCerts

<!-- FilterDuplicateCerts-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- FilterDuplicateCerts-Applicability-End -->

<!-- FilterDuplicateCerts-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Smartcard/FilterDuplicateCerts
```
<!-- FilterDuplicateCerts-OmaUri-End -->

<!-- FilterDuplicateCerts-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you configure if all your valid logon certificates are displayed.

During the certificate renewal period, a user can have multiple valid logon certificates issued from the same certificate template. This can cause confusion as to which certificate to select for logon. The common case for this behavior is when a certificate is renewed and the old one hasn't yet expired. Two certificates are determined to be the same if they're issued from the same template with the same major version and they're for the same user (determined by their UPN).

If there are two or more of the "same" certificate on a smart card and this policy is enabled then the certificate that's used for logon on Windows 2000, Windows XP, and Windows 2003 Server will be shown, otherwise the certificate with the expiration time furthest in the future will be shown.

> [!NOTE]
> This setting will be applied after the following policy: "Allow time invalid certificates".

- If you enable or don't configure this policy setting, filtering will take place.

- If you disable this policy setting, no filtering will take place.
<!-- FilterDuplicateCerts-Description-End -->

<!-- FilterDuplicateCerts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- FilterDuplicateCerts-Editable-End -->

<!-- FilterDuplicateCerts-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- FilterDuplicateCerts-DFProperties-End -->

<!-- FilterDuplicateCerts-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | FilterDuplicateCerts |
| Friendly Name | Filter duplicate logon certificates |
| Location | Computer Configuration |
| Path | Windows Components > Smart Card |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\SmartCardCredentialProvider |
| Registry Value Name | FilterDuplicateCerts |
| ADMX File Name | Smartcard.admx |
<!-- FilterDuplicateCerts-AdmxBacked-End -->

<!-- FilterDuplicateCerts-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- FilterDuplicateCerts-Examples-End -->

<!-- FilterDuplicateCerts-End -->

<!-- ForceReadingAllCertificates-Begin -->
## ForceReadingAllCertificates

<!-- ForceReadingAllCertificates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ForceReadingAllCertificates-Applicability-End -->

<!-- ForceReadingAllCertificates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Smartcard/ForceReadingAllCertificates
```
<!-- ForceReadingAllCertificates-OmaUri-End -->

<!-- ForceReadingAllCertificates-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the reading of all certificates from the smart card for logon.

During logon Windows will by default only read the default certificate from the smart card unless it supports retrieval of all certificates in a single call. This setting forces Windows to read all the certificates from the card. This can introduce a significant performance decrease in certain situations. Please contact your smart card vendor to determine if your smart card and associated CSP supports the required behavior.

- If you enable this setting, then Windows will attempt to read all certificates from the smart card regardless of the feature set of the CSP.

- If you disable or don't configure this setting, Windows will only attempt to read the default certificate from those cards that don't support retrieval of all certificates in a single call. Certificates other than the default won't be available for logon.
<!-- ForceReadingAllCertificates-Description-End -->

<!-- ForceReadingAllCertificates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ForceReadingAllCertificates-Editable-End -->

<!-- ForceReadingAllCertificates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ForceReadingAllCertificates-DFProperties-End -->

<!-- ForceReadingAllCertificates-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ForceReadingAllCertificates |
| Friendly Name | Force the reading of all certificates from the smart card |
| Location | Computer Configuration |
| Path | Windows Components > Smart Card |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\SmartCardCredentialProvider |
| Registry Value Name | ForceReadingAllCertificates |
| ADMX File Name | Smartcard.admx |
<!-- ForceReadingAllCertificates-AdmxBacked-End -->

<!-- ForceReadingAllCertificates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ForceReadingAllCertificates-Examples-End -->

<!-- ForceReadingAllCertificates-End -->

<!-- IntegratedUnblockPromptString-Begin -->
## IntegratedUnblockPromptString

<!-- IntegratedUnblockPromptString-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IntegratedUnblockPromptString-Applicability-End -->

<!-- IntegratedUnblockPromptString-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Smartcard/IntegratedUnblockPromptString
```
<!-- IntegratedUnblockPromptString-OmaUri-End -->

<!-- IntegratedUnblockPromptString-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the displayed message when a smart card is blocked.

- If you enable this policy setting, the specified message will be displayed to the user when the smart card is blocked.

> [!NOTE]
> The following policy setting must be enabled - Allow Integrated Unblock screen to be displayed at the time of logon.

- If you disable or don't configure this policy setting, the default message will be displayed to the user when the smart card is blocked, if the integrated unblock feature is enabled.
<!-- IntegratedUnblockPromptString-Description-End -->

<!-- IntegratedUnblockPromptString-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IntegratedUnblockPromptString-Editable-End -->

<!-- IntegratedUnblockPromptString-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IntegratedUnblockPromptString-DFProperties-End -->

<!-- IntegratedUnblockPromptString-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IntegratedUnblockPromptString |
| Friendly Name | Display string when smart card is blocked |
| Location | Computer Configuration |
| Path | Windows Components > Smart Card |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\SmartCardCredentialProvider |
| ADMX File Name | Smartcard.admx |
<!-- IntegratedUnblockPromptString-AdmxBacked-End -->

<!-- IntegratedUnblockPromptString-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IntegratedUnblockPromptString-Examples-End -->

<!-- IntegratedUnblockPromptString-End -->

<!-- ReverseSubject-Begin -->
## ReverseSubject

<!-- ReverseSubject-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ReverseSubject-Applicability-End -->

<!-- ReverseSubject-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Smartcard/ReverseSubject
```
<!-- ReverseSubject-OmaUri-End -->

<!-- ReverseSubject-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you reverse the subject name from how it's stored in the certificate when displaying it during logon.

By default the user principal name (UPN) is displayed in addition to the common name to help users distinguish one certificate from another. For example, if the certificate subject was CN=User1, OU=Users, DN=example, DN=com and had an UPN of user1@example.com then "User1" will be displayed along with "user1@example.com". If the UPN isn't present then the entire subject name will be displayed. This setting controls the appearance of that subject name and might need to be adjusted per organization.

If you enable this policy setting or don't configure this setting, then the subject name will be reversed.

If you disable , the subject name will be displayed as it appears in the certificate.
<!-- ReverseSubject-Description-End -->

<!-- ReverseSubject-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ReverseSubject-Editable-End -->

<!-- ReverseSubject-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ReverseSubject-DFProperties-End -->

<!-- ReverseSubject-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ReverseSubject |
| Friendly Name | Reverse the subject name stored in a certificate when displaying |
| Location | Computer Configuration |
| Path | Windows Components > Smart Card |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\SmartCardCredentialProvider |
| Registry Value Name | ReverseSubject |
| ADMX File Name | Smartcard.admx |
<!-- ReverseSubject-AdmxBacked-End -->

<!-- ReverseSubject-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ReverseSubject-Examples-End -->

<!-- ReverseSubject-End -->

<!-- SCPnPEnabled-Begin -->
## SCPnPEnabled

<!-- SCPnPEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SCPnPEnabled-Applicability-End -->

<!-- SCPnPEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Smartcard/SCPnPEnabled
```
<!-- SCPnPEnabled-OmaUri-End -->

<!-- SCPnPEnabled-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control whether Smart Card Plug and Play is enabled.

- If you enable or don't configure this policy setting, Smart Card Plug and Play will be enabled and the system will attempt to install a Smart Card device driver when a card is inserted in a Smart Card Reader for the first time.

- If you disable this policy setting, Smart Card Plug and Play will be disabled and a device driver won't be installed when a card is inserted in a Smart Card Reader.

> [!NOTE]
> This policy setting is applied only for smart cards that have passed the Windows Hardware Quality Labs (WHQL) testing process.
<!-- SCPnPEnabled-Description-End -->

<!-- SCPnPEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SCPnPEnabled-Editable-End -->

<!-- SCPnPEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SCPnPEnabled-DFProperties-End -->

<!-- SCPnPEnabled-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SCPnPEnabled |
| Friendly Name | Turn on Smart Card Plug and Play service |
| Location | Computer Configuration |
| Path | Windows Components > Smart Card |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\ScPnP |
| Registry Value Name | EnableScPnP |
| ADMX File Name | Smartcard.admx |
<!-- SCPnPEnabled-AdmxBacked-End -->

<!-- SCPnPEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SCPnPEnabled-Examples-End -->

<!-- SCPnPEnabled-End -->

<!-- SCPnPNotification-Begin -->
## SCPnPNotification

<!-- SCPnPNotification-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SCPnPNotification-Applicability-End -->

<!-- SCPnPNotification-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Smartcard/SCPnPNotification
```
<!-- SCPnPNotification-OmaUri-End -->

<!-- SCPnPNotification-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control whether a confirmation message is displayed when a smart card device driver is installed.

- If you enable or don't configure this policy setting, a confirmation message will be displayed when a smart card device driver is installed.

- If you disable this policy setting, a confirmation message won't be displayed when a smart card device driver is installed.

> [!NOTE]
> This policy setting is applied only for smart cards that have passed the Windows Hardware Quality Labs (WHQL) testing process.
<!-- SCPnPNotification-Description-End -->

<!-- SCPnPNotification-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SCPnPNotification-Editable-End -->

<!-- SCPnPNotification-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SCPnPNotification-DFProperties-End -->

<!-- SCPnPNotification-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SCPnPNotification |
| Friendly Name | Notify user of successful smart card driver installation |
| Location | Computer Configuration |
| Path | Windows Components > Smart Card |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\ScPnP |
| Registry Value Name | ScPnPNotification |
| ADMX File Name | Smartcard.admx |
<!-- SCPnPNotification-AdmxBacked-End -->

<!-- SCPnPNotification-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SCPnPNotification-Examples-End -->

<!-- SCPnPNotification-End -->

<!-- X509HintsNeeded-Begin -->
## X509HintsNeeded

<!-- X509HintsNeeded-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- X509HintsNeeded-Applicability-End -->

<!-- X509HintsNeeded-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Smartcard/X509HintsNeeded
```
<!-- X509HintsNeeded-OmaUri-End -->

<!-- X509HintsNeeded-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you determine whether an optional field will be displayed during logon and elevation that allows a user to enter his or her user name or user name and domain, thereby associating a certificate with that user.

- If you enable this policy setting then an optional field that allows a user to enter their user name or user name and domain will be displayed.

- If you disable or don't configure this policy setting, an optional field that allows users to enter their user name or user name and domain won't be displayed.
<!-- X509HintsNeeded-Description-End -->

<!-- X509HintsNeeded-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- X509HintsNeeded-Editable-End -->

<!-- X509HintsNeeded-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- X509HintsNeeded-DFProperties-End -->

<!-- X509HintsNeeded-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | X509HintsNeeded |
| Friendly Name | Allow user name hint |
| Location | Computer Configuration |
| Path | Windows Components > Smart Card |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\SmartCardCredentialProvider |
| Registry Value Name | X509HintsNeeded |
| ADMX File Name | Smartcard.admx |
<!-- X509HintsNeeded-AdmxBacked-End -->

<!-- X509HintsNeeded-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- X509HintsNeeded-Examples-End -->

<!-- X509HintsNeeded-End -->

<!-- ADMX_Smartcard-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Smartcard-CspMoreInfo-End -->

<!-- ADMX_Smartcard-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)

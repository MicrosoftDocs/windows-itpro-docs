---
title: ADMX_LanmanWorkstation Policy CSP
description: Learn more about the ADMX_LanmanWorkstation Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_LanmanWorkstation-Begin -->
# Policy CSP - ADMX_LanmanWorkstation

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_LanmanWorkstation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_LanmanWorkstation-Editable-End -->

<!-- Pol_CipherSuiteOrder-Begin -->
## Pol_CipherSuiteOrder

<!-- Pol_CipherSuiteOrder-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_CipherSuiteOrder-Applicability-End -->

<!-- Pol_CipherSuiteOrder-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_LanmanWorkstation/Pol_CipherSuiteOrder
```
<!-- Pol_CipherSuiteOrder-OmaUri-End -->

<!-- Pol_CipherSuiteOrder-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the cipher suites used by the SMB client.

If you enable this policy setting, cipher suites are prioritized in the order specified.

If you enable this policy setting and don't specify at least one supported cipher suite, or if you disable or don't configure this policy setting, the default cipher suite order is used.

SMB 3.11 cipher suites:

AES_128_GCM.

AES_128_CCM.

AES_256_GCM.

AES_256_CCM.

SMB 3.0 and 3.02 cipher suites:

AES_128_CCM.

How to modify this setting:

Arrange the desired cipher suites in the edit box, one cipher suite per line, in order from most to least preferred, with the most preferred cipher suite at the top. Remove any cipher suites you don't want to use.

> [!NOTE]
> When configuring this security setting, changes won't take effect until you restart Windows.
<!-- Pol_CipherSuiteOrder-Description-End -->

<!-- Pol_CipherSuiteOrder-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->[!NOTE]
AES_256 is not supported on Windows 10 version 20H2 and lower. If you enter only AES_256 crypto lines, the older clients will not be able to connect anymore.
<!-- Pol_CipherSuiteOrder-Editable-End -->

<!-- Pol_CipherSuiteOrder-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_CipherSuiteOrder-DFProperties-End -->

<!-- Pol_CipherSuiteOrder-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_CipherSuiteOrder |
| Friendly Name | Cipher suite order |
| Location | Computer Configuration |
| Path | Network > Lanman Workstation |
| Registry Key Name | Software\Policies\Microsoft\Windows\LanmanWorkstation |
| ADMX File Name | LanmanWorkstation.admx |
<!-- Pol_CipherSuiteOrder-AdmxBacked-End -->

<!-- Pol_CipherSuiteOrder-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_CipherSuiteOrder-Examples-End -->

<!-- Pol_CipherSuiteOrder-End -->

<!-- Pol_EnableHandleCachingForCAFiles-Begin -->
## Pol_EnableHandleCachingForCAFiles

<!-- Pol_EnableHandleCachingForCAFiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_EnableHandleCachingForCAFiles-Applicability-End -->

<!-- Pol_EnableHandleCachingForCAFiles-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_LanmanWorkstation/Pol_EnableHandleCachingForCAFiles
```
<!-- Pol_EnableHandleCachingForCAFiles-OmaUri-End -->

<!-- Pol_EnableHandleCachingForCAFiles-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the behavior of SMB handle caching for clients connecting to an SMB share where the Continuous Availability (CA) flag is enabled.

- If you enable this policy setting, the SMB client will allow cached handles to files on CA shares. This may lead to better performance when repeatedly accessing a large number of unstructured data files on CA shares running in Microsoft Azure Files.

- If you disable or don't configure this policy setting, Windows will prevent use of cached handles to files opened through CA shares.

> [!NOTE]
> This policy has no effect when connecting Scale-out File Server shares provided by a Windows Server. Microsoft doesn't recommend enabling this policy for clients that routinely connect to files hosted on a Windows Failover Cluster with the File Server for General Use role, as it can lead to adverse failover times and increased memory and CPU usage.
<!-- Pol_EnableHandleCachingForCAFiles-Description-End -->

<!-- Pol_EnableHandleCachingForCAFiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_EnableHandleCachingForCAFiles-Editable-End -->

<!-- Pol_EnableHandleCachingForCAFiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_EnableHandleCachingForCAFiles-DFProperties-End -->

<!-- Pol_EnableHandleCachingForCAFiles-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_EnableHandleCachingForCAFiles |
| Friendly Name | Handle Caching on Continuous Availability Shares |
| Location | Computer Configuration |
| Path | Network > Lanman Workstation |
| Registry Key Name | Software\Policies\Microsoft\Windows\LanmanWorkstation |
| Registry Value Name | EnableHandleCachingForCAFiles |
| ADMX File Name | LanmanWorkstation.admx |
<!-- Pol_EnableHandleCachingForCAFiles-AdmxBacked-End -->

<!-- Pol_EnableHandleCachingForCAFiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_EnableHandleCachingForCAFiles-Examples-End -->

<!-- Pol_EnableHandleCachingForCAFiles-End -->

<!-- Pol_EnableOfflineFilesforCAShares-Begin -->
## Pol_EnableOfflineFilesforCAShares

<!-- Pol_EnableOfflineFilesforCAShares-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_EnableOfflineFilesforCAShares-Applicability-End -->

<!-- Pol_EnableOfflineFilesforCAShares-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_LanmanWorkstation/Pol_EnableOfflineFilesforCAShares
```
<!-- Pol_EnableOfflineFilesforCAShares-OmaUri-End -->

<!-- Pol_EnableOfflineFilesforCAShares-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the behavior of Offline Files on clients connecting to an SMB share where the Continuous Availability (CA) flag is enabled.

- If you enable this policy setting, the "Always Available offline" option will appear in the File Explorer menu on a Windows computer when connecting to a CA-enabled share. Pinning of files on CA-enabled shares using client-side caching will also be possible.

- If you disable or don't configure this policy setting, Windows will prevent use of Offline Files with CA-enabled shares.

> [!NOTE]
> Microsoft doesn't recommend enabling this group policy. Use of CA with Offline Files will lead to very long transition times between the online and offline states.
<!-- Pol_EnableOfflineFilesforCAShares-Description-End -->

<!-- Pol_EnableOfflineFilesforCAShares-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_EnableOfflineFilesforCAShares-Editable-End -->

<!-- Pol_EnableOfflineFilesforCAShares-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_EnableOfflineFilesforCAShares-DFProperties-End -->

<!-- Pol_EnableOfflineFilesforCAShares-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_EnableOfflineFilesforCAShares |
| Friendly Name | Offline Files Availability on Continuous Availability Shares |
| Location | Computer Configuration |
| Path | Network > Lanman Workstation |
| Registry Key Name | Software\Policies\Microsoft\Windows\LanmanWorkstation |
| Registry Value Name | AllowOfflineFilesforCAShares |
| ADMX File Name | LanmanWorkstation.admx |
<!-- Pol_EnableOfflineFilesforCAShares-AdmxBacked-End -->

<!-- Pol_EnableOfflineFilesforCAShares-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_EnableOfflineFilesforCAShares-Examples-End -->

<!-- Pol_EnableOfflineFilesforCAShares-End -->

<!-- ADMX_LanmanWorkstation-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_LanmanWorkstation-CspMoreInfo-End -->

<!-- ADMX_LanmanWorkstation-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)

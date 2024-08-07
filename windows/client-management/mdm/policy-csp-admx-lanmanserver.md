---
title: ADMX_LanmanServer Policy CSP
description: Learn more about the ADMX_LanmanServer Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_LanmanServer-Begin -->
# Policy CSP - ADMX_LanmanServer

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_LanmanServer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_LanmanServer-Editable-End -->

<!-- Pol_CipherSuiteOrder-Begin -->
## Pol_CipherSuiteOrder

<!-- Pol_CipherSuiteOrder-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_CipherSuiteOrder-Applicability-End -->

<!-- Pol_CipherSuiteOrder-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_LanmanServer/Pol_CipherSuiteOrder
```
<!-- Pol_CipherSuiteOrder-OmaUri-End -->

<!-- Pol_CipherSuiteOrder-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the cipher suites used by the SMB server.

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
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
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
| Path | Network > Lanman Server |
| Registry Key Name | Software\Policies\Microsoft\Windows\LanmanServer |
| ADMX File Name | LanmanServer.admx |
<!-- Pol_CipherSuiteOrder-AdmxBacked-End -->

<!-- Pol_CipherSuiteOrder-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_CipherSuiteOrder-Examples-End -->

<!-- Pol_CipherSuiteOrder-End -->

<!-- Pol_HashPublication-Begin -->
## Pol_HashPublication

<!-- Pol_HashPublication-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_HashPublication-Applicability-End -->

<!-- Pol_HashPublication-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_LanmanServer/Pol_HashPublication
```
<!-- Pol_HashPublication-OmaUri-End -->

<!-- Pol_HashPublication-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether a hash generation service generates hashes, also called content information, for data that's stored in shared folders. This policy setting must be applied to server computers that have the File Services role and both the File Server and the BranchCache for Network Files role services installed.

Policy configuration.

Select one of the following:

- Not Configured. With this selection, hash publication settings aren't applied to file servers. In the circumstance where file servers are domain members but you don't want to enable BranchCache on all file servers, you can specify Not Configured for this domain Group Policy setting, and then configure local machine policy to enable BranchCache on individual file servers. Because the domain Group Policy setting isn't configured, it won't over-write the enabled setting that you use on individual servers where you want to enable BranchCache.

- Enabled. With this selection, hash publication is turned on for all file servers where Group Policy is applied. For example, if Hash Publication for BranchCache is enabled in domain Group Policy, hash publication is turned on for all domain member file servers to which the policy is applied. The file servers are then able to create content information for all content that's stored in BranchCache-enabled file shares.

- Disabled. With this selection, hash publication is turned off for all file servers where Group Policy is applied.

In circumstances where this policy setting is enabled, you can also select the following configuration options:

- Allow hash publication for all shared folders. With this option, BranchCache generates content information for all content in all shares on the file server.

- Allow hash publication only for shared folders on which BranchCache is enabled. With this option, content information is generated only for shared folders on which BranchCache is enabled. If you use this setting, you must enable BranchCache for individual shares in Share and Storage Management on the file server.

- Disallow hash publication on all shared folders. With this option, BranchCache doesn't generate content information for any shares on the computer and doesn't send content information to client computers that request content.
<!-- Pol_HashPublication-Description-End -->

<!-- Pol_HashPublication-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_HashPublication-Editable-End -->

<!-- Pol_HashPublication-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_HashPublication-DFProperties-End -->

<!-- Pol_HashPublication-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_HashPublication |
| Friendly Name | Hash Publication for BranchCache |
| Location | Computer Configuration |
| Path | Network > Lanman Server |
| Registry Key Name | Software\Policies\Microsoft\Windows\LanmanServer |
| ADMX File Name | LanmanServer.admx |
<!-- Pol_HashPublication-AdmxBacked-End -->

<!-- Pol_HashPublication-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_HashPublication-Examples-End -->

<!-- Pol_HashPublication-End -->

<!-- Pol_HashSupportVersion-Begin -->
## Pol_HashSupportVersion

<!-- Pol_HashSupportVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_HashSupportVersion-Applicability-End -->

<!-- Pol_HashSupportVersion-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_LanmanServer/Pol_HashSupportVersion
```
<!-- Pol_HashSupportVersion-OmaUri-End -->

<!-- Pol_HashSupportVersion-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether the BranchCache hash generation service supports version 1 (V1) hashes, version 2 (V2) hashes, or both V1 and V2 hashes. Hashes, also called content information, are created based on the data in shared folders where BranchCache is enabled.

If you specify only one version that's supported, content information for that version is the only type that's generated by BranchCache, and it's the only type of content information that can be retrieved by client computers. For example, if you enable support for V1 hashes, BranchCache generates only V1 hashes and client computers can retrieve only V1 hashes.

Policy configuration.

Select one of the following:

- Not Configured. With this selection, BranchCache settings aren't applied to client computers by this policy setting. In this circumstance, which is the default, both V1 and V2 hash generation and retrieval are supported.

- Enabled. With this selection, the policy setting is applied and the hash version(s) that are specified in "Hash version supported" are generated and retrieved.

- Disabled. With this selection, both V1 and V2 hash generation and retrieval are supported.

In circumstances where this setting is enabled, you can also select and configure the following option:

Hash version supported:

- To support V1 content information only, configure "Hash version supported" with the value of 1.

- To support V2 content information only, configure "Hash version supported" with the value of 2.

- To support both V1 and V2 content information, configure "Hash version supported" with the value of 3.
<!-- Pol_HashSupportVersion-Description-End -->

<!-- Pol_HashSupportVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_HashSupportVersion-Editable-End -->

<!-- Pol_HashSupportVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_HashSupportVersion-DFProperties-End -->

<!-- Pol_HashSupportVersion-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_HashSupportVersion |
| Friendly Name | Hash Version support for BranchCache |
| Location | Computer Configuration |
| Path | Network > Lanman Server |
| Registry Key Name | Software\Policies\Microsoft\Windows\LanmanServer |
| ADMX File Name | LanmanServer.admx |
<!-- Pol_HashSupportVersion-AdmxBacked-End -->

<!-- Pol_HashSupportVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_HashSupportVersion-Examples-End -->

<!-- Pol_HashSupportVersion-End -->

<!-- Pol_HonorCipherSuiteOrder-Begin -->
## Pol_HonorCipherSuiteOrder

<!-- Pol_HonorCipherSuiteOrder-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_HonorCipherSuiteOrder-Applicability-End -->

<!-- Pol_HonorCipherSuiteOrder-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_LanmanServer/Pol_HonorCipherSuiteOrder
```
<!-- Pol_HonorCipherSuiteOrder-OmaUri-End -->

<!-- Pol_HonorCipherSuiteOrder-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines how the SMB server selects a cipher suite when negotiating a new connection with an SMB client.

- If you enable this policy setting, the SMB server will select the cipher suite it most prefers from the list of client-supported cipher suites, ignoring the client's preferences.

- If you disable or don't configure this policy setting, the SMB server will select the cipher suite the client most prefers from the list of server-supported cipher suites.

> [!NOTE]
> When configuring this security setting, changes won't take effect until you restart Windows.
<!-- Pol_HonorCipherSuiteOrder-Description-End -->

<!-- Pol_HonorCipherSuiteOrder-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_HonorCipherSuiteOrder-Editable-End -->

<!-- Pol_HonorCipherSuiteOrder-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_HonorCipherSuiteOrder-DFProperties-End -->

<!-- Pol_HonorCipherSuiteOrder-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_HonorCipherSuiteOrder |
| Friendly Name | Honor cipher suite order |
| Location | Computer Configuration |
| Path | Network > Lanman Server |
| Registry Key Name | Software\Policies\Microsoft\Windows\LanmanServer |
| Registry Value Name | HonorCipherSuiteOrder |
| ADMX File Name | LanmanServer.admx |
<!-- Pol_HonorCipherSuiteOrder-AdmxBacked-End -->

<!-- Pol_HonorCipherSuiteOrder-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_HonorCipherSuiteOrder-Examples-End -->

<!-- Pol_HonorCipherSuiteOrder-End -->

<!-- ADMX_LanmanServer-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_LanmanServer-CspMoreInfo-End -->

<!-- ADMX_LanmanServer-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)

---
title: Kerberos Policy CSP
description: Learn more about the Kerberos Area in Policy CSP.
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

<!-- Kerberos-Begin -->
# Policy CSP - Kerberos

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- Kerberos-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Kerberos-Editable-End -->

<!-- AllowForestSearchOrder-Begin -->
## AllowForestSearchOrder

<!-- AllowForestSearchOrder-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowForestSearchOrder-Applicability-End -->

<!-- AllowForestSearchOrder-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Kerberos/AllowForestSearchOrder
```
<!-- AllowForestSearchOrder-OmaUri-End -->

<!-- AllowForestSearchOrder-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting defines the list of trusting forests that the Kerberos client searches when attempting to resolve two-part service principal names (SPNs).

- If you enable this policy setting, the Kerberos client searches the forests in this list, if it's unable to resolve a two-part SPN. If a match is found, the Kerberos client requests a referral ticket to the appropriate domain.

- If you disable or don't configure this policy setting, the Kerberos client doesn't search the listed forests to resolve the SPN. If the Kerberos client is unable to resolve the SPN because the name isn't found, NTLM authentication might be used.
<!-- AllowForestSearchOrder-Description-End -->

<!-- AllowForestSearchOrder-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowForestSearchOrder-Editable-End -->

<!-- AllowForestSearchOrder-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowForestSearchOrder-DFProperties-End -->

<!-- AllowForestSearchOrder-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ForestSearch |
| Friendly Name | Use forest search order |
| Location | Computer Configuration |
| Path | System > Kerberos |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters |
| Registry Value Name | UseForestSearch |
| ADMX File Name | Kerberos.admx |
<!-- AllowForestSearchOrder-AdmxBacked-End -->

<!-- AllowForestSearchOrder-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowForestSearchOrder-Examples-End -->

<!-- AllowForestSearchOrder-End -->

<!-- CloudKerberosTicketRetrievalEnabled-Begin -->
## CloudKerberosTicketRetrievalEnabled

<!-- CloudKerberosTicketRetrievalEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CloudKerberosTicketRetrievalEnabled-Applicability-End -->

<!-- CloudKerberosTicketRetrievalEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Kerberos/CloudKerberosTicketRetrievalEnabled
```
<!-- CloudKerberosTicketRetrievalEnabled-OmaUri-End -->

<!-- CloudKerberosTicketRetrievalEnabled-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows retrieving the Microsoft Entra Kerberos Ticket Granting Ticket during logon.

- If you disable or don't configure this policy setting, the Microsoft Entra Kerberos Ticket Granting Ticket isn't retrieved during logon.

- If you enable this policy setting, the Microsoft Entra Kerberos Ticket Granting Ticket is retrieved during logon.
<!-- CloudKerberosTicketRetrievalEnabled-Description-End -->

<!-- CloudKerberosTicketRetrievalEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CloudKerberosTicketRetrievalEnabled-Editable-End -->

<!-- CloudKerberosTicketRetrievalEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- CloudKerberosTicketRetrievalEnabled-DFProperties-End -->

<!-- CloudKerberosTicketRetrievalEnabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- CloudKerberosTicketRetrievalEnabled-AllowedValues-End -->

<!-- CloudKerberosTicketRetrievalEnabled-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | CloudKerberosTicketRetrievalEnabled |
| Friendly Name | Allow retrieving the Azure AD Kerberos Ticket Granting Ticket during logon |
| Location | Computer Configuration |
| Path | System > Kerberos |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters |
| Registry Value Name | CloudKerberosTicketRetrievalEnabled |
| ADMX File Name | Kerberos.admx |
<!-- CloudKerberosTicketRetrievalEnabled-GpMapping-End -->

<!-- CloudKerberosTicketRetrievalEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CloudKerberosTicketRetrievalEnabled-Examples-End -->

<!-- CloudKerberosTicketRetrievalEnabled-End -->

<!-- KerberosClientSupportsClaimsCompoundArmor-Begin -->
## KerberosClientSupportsClaimsCompoundArmor

<!-- KerberosClientSupportsClaimsCompoundArmor-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- KerberosClientSupportsClaimsCompoundArmor-Applicability-End -->

<!-- KerberosClientSupportsClaimsCompoundArmor-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Kerberos/KerberosClientSupportsClaimsCompoundArmor
```
<!-- KerberosClientSupportsClaimsCompoundArmor-OmaUri-End -->

<!-- KerberosClientSupportsClaimsCompoundArmor-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether a device will request claims and compound authentication for Dynamic Access Control and Kerberos armoring using Kerberos authentication with domains that support these features.

- If you enable this policy setting, the client computers will request claims, provide information required to create compounded authentication and armor Kerberos messages in domains which support claims and compound authentication for Dynamic Access Control and Kerberos armoring.

- If you disable or don't configure this policy setting, the client devices won't request claims, provide information required to create compounded authentication and armor Kerberos messages. Services hosted on the device won't be able to retrieve claims for clients using Kerberos protocol transition.
<!-- KerberosClientSupportsClaimsCompoundArmor-Description-End -->

<!-- KerberosClientSupportsClaimsCompoundArmor-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- KerberosClientSupportsClaimsCompoundArmor-Editable-End -->

<!-- KerberosClientSupportsClaimsCompoundArmor-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- KerberosClientSupportsClaimsCompoundArmor-DFProperties-End -->

<!-- KerberosClientSupportsClaimsCompoundArmor-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableCbacAndArmor |
| Friendly Name | Kerberos client support for claims, compound authentication and Kerberos armoring |
| Location | Computer Configuration |
| Path | System > Kerberos |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters |
| Registry Value Name | EnableCbacAndArmor |
| ADMX File Name | Kerberos.admx |
<!-- KerberosClientSupportsClaimsCompoundArmor-AdmxBacked-End -->

<!-- KerberosClientSupportsClaimsCompoundArmor-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- KerberosClientSupportsClaimsCompoundArmor-Examples-End -->

<!-- KerberosClientSupportsClaimsCompoundArmor-End -->

<!-- PKInitHashAlgorithmConfiguration-Begin -->
## PKInitHashAlgorithmConfiguration

<!-- PKInitHashAlgorithmConfiguration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- PKInitHashAlgorithmConfiguration-Applicability-End -->

<!-- PKInitHashAlgorithmConfiguration-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Kerberos/PKInitHashAlgorithmConfiguration
```
<!-- PKInitHashAlgorithmConfiguration-OmaUri-End -->

<!-- PKInitHashAlgorithmConfiguration-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls hash or checksum algorithms used by the Kerberos client when performing certificate authentication.

- If you enable this policy, you'll be able to configure one of four states for each algorithm:

- "Default" sets the algorithm to the recommended state.

- "Supported" enables usage of the algorithm. Enabling algorithms that have been disabled by default may reduce your security.

- "Audited" enables usage of the algorithm and reports an event (ID 206) every time it's used. This state is intended to verify that the algorithm isn't being used and can be safely disabled.

- "Not Supported" disables usage of the algorithm. This state is intended for algorithms that are deemed to be insecure.

- If you disable or don't configure this policy, each algorithm will assume the "Default" state.

Events generated by this configuration: 205, 206, 207, 208.
<!-- PKInitHashAlgorithmConfiguration-Description-End -->

<!-- PKInitHashAlgorithmConfiguration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PKInitHashAlgorithmConfiguration-Editable-End -->

<!-- PKInitHashAlgorithmConfiguration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- PKInitHashAlgorithmConfiguration-DFProperties-End -->

<!-- PKInitHashAlgorithmConfiguration-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled / Not Configured. |
| 1 | Enabled. |
<!-- PKInitHashAlgorithmConfiguration-AllowedValues-End -->

<!-- PKInitHashAlgorithmConfiguration-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | PKInitHashAlgorithmConfiguration |
| Friendly Name | Configure hash algorithms for certificate logon |
| Location | Computer Configuration |
| Path | System > Kerberos |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters |
| Registry Value Name | PKInitHashAlgorithmConfigurationEnabled |
| ADMX File Name | Kerberos.admx |
<!-- PKInitHashAlgorithmConfiguration-GpMapping-End -->

<!-- PKInitHashAlgorithmConfiguration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PKInitHashAlgorithmConfiguration-Examples-End -->

<!-- PKInitHashAlgorithmConfiguration-End -->

<!-- PKInitHashAlgorithmSHA1-Begin -->
## PKInitHashAlgorithmSHA1

<!-- PKInitHashAlgorithmSHA1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- PKInitHashAlgorithmSHA1-Applicability-End -->

<!-- PKInitHashAlgorithmSHA1-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Kerberos/PKInitHashAlgorithmSHA1
```
<!-- PKInitHashAlgorithmSHA1-OmaUri-End -->

<!-- PKInitHashAlgorithmSHA1-Description-Begin -->
<!-- Description-Source-Manual-Forced -->
<!-- PKInitHashAlgorithmSHA1-Description-End -->

<!-- PKInitHashAlgorithmSHA1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This policy setting controls the configuration of the SHA1 algorithm used by the Kerberos client when performing certificate authentication. This policy is only enforced if Kerberos/PKInitHashAlgorithmConfiguration is enabled. You can configure one of four states for this algorithm:

- 0 - **Not Supported**: This state disables usage of the algorithm. This state is intended for algorithms that are deemed to be insecure.
- 1 - **Default**: This state sets the algorithm to the recommended state.
- 2 - **Audited**: This state enables usage of the algorithm and reports an event (ID 206) every time it's used. This state is intended to verify that the algorithm isn't being used and can be safely disabled.
- 3 - **Supported**: This state enables usage of the algorithm. Enabling algorithms that have been disabled by default may reduce your security.

If you don't configure this policy, the SHA1 algorithm will assume the **Default** state.
<!-- PKInitHashAlgorithmSHA1-Editable-End -->

<!-- PKInitHashAlgorithmSHA1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
| Dependency [PKINIT_Hash_Algorithm_Configuration_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `Device/Vendor/MSFT/Policy/Config/Kerberos/PKInitHashAlgorithmConfigurationEnabled` <br> Dependency Allowed Value: `[1]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- PKInitHashAlgorithmSHA1-DFProperties-End -->

<!-- PKInitHashAlgorithmSHA1-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not Supported. |
| 1 (Default) | Default. |
| 2 | Audited. |
| 3 | Supported. |
<!-- PKInitHashAlgorithmSHA1-AllowedValues-End -->

<!-- PKInitHashAlgorithmSHA1-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | PKInitHashAlgorithmConfiguration |
| Friendly Name | Configure hash algorithms for certificate logon |
| Location | Computer Configuration |
| Path | System > Kerberos |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters |
| Registry Value Name | PKInitHashAlgorithmConfigurationEnabled |
| ADMX File Name | Kerberos.admx |
<!-- PKInitHashAlgorithmSHA1-GpMapping-End -->

<!-- PKInitHashAlgorithmSHA1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PKInitHashAlgorithmSHA1-Examples-End -->

<!-- PKInitHashAlgorithmSHA1-End -->

<!-- PKInitHashAlgorithmSHA256-Begin -->
## PKInitHashAlgorithmSHA256

<!-- PKInitHashAlgorithmSHA256-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- PKInitHashAlgorithmSHA256-Applicability-End -->

<!-- PKInitHashAlgorithmSHA256-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Kerberos/PKInitHashAlgorithmSHA256
```
<!-- PKInitHashAlgorithmSHA256-OmaUri-End -->

<!-- PKInitHashAlgorithmSHA256-Description-Begin -->
<!-- Description-Source-Manual-Forced -->
<!-- PKInitHashAlgorithmSHA256-Description-End -->

<!-- PKInitHashAlgorithmSHA256-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This policy setting controls the configuration of the SHA256 algorithm used by the Kerberos client when performing certificate authentication. This policy is only enforced if Kerberos/PKInitHashAlgorithmConfiguration is enabled. You can configure one of four states for this algorithm:

- 0 - **Not Supported**: This state disables usage of the algorithm. This state is intended for algorithms that are deemed to be insecure.
- 1 - **Default**: This state sets the algorithm to the recommended state.
- 2 - **Audited**: This state enables usage of the algorithm and reports an event (ID 206) every time it's used. This state is intended to verify that the algorithm isn't being used and can be safely disabled.
- 3 - **Supported**: This state enables usage of the algorithm. Enabling algorithms that have been disabled by default may reduce your security.

If you don't configure this policy, the SHA256 algorithm will assume the **Default** state.
<!-- PKInitHashAlgorithmSHA256-Editable-End -->

<!-- PKInitHashAlgorithmSHA256-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
| Dependency [PKINIT_Hash_Algorithm_Configuration_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `Device/Vendor/MSFT/Policy/Config/Kerberos/PKInitHashAlgorithmConfigurationEnabled` <br> Dependency Allowed Value: `[1]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- PKInitHashAlgorithmSHA256-DFProperties-End -->

<!-- PKInitHashAlgorithmSHA256-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not Supported. |
| 1 (Default) | Default. |
| 2 | Audited. |
| 3 | Supported. |
<!-- PKInitHashAlgorithmSHA256-AllowedValues-End -->

<!-- PKInitHashAlgorithmSHA256-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | PKInitHashAlgorithmConfiguration |
| Friendly Name | Configure hash algorithms for certificate logon |
| Location | Computer Configuration |
| Path | System > Kerberos |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters |
| Registry Value Name | PKInitHashAlgorithmConfigurationEnabled |
| ADMX File Name | Kerberos.admx |
<!-- PKInitHashAlgorithmSHA256-GpMapping-End -->

<!-- PKInitHashAlgorithmSHA256-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PKInitHashAlgorithmSHA256-Examples-End -->

<!-- PKInitHashAlgorithmSHA256-End -->

<!-- PKInitHashAlgorithmSHA384-Begin -->
## PKInitHashAlgorithmSHA384

<!-- PKInitHashAlgorithmSHA384-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- PKInitHashAlgorithmSHA384-Applicability-End -->

<!-- PKInitHashAlgorithmSHA384-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Kerberos/PKInitHashAlgorithmSHA384
```
<!-- PKInitHashAlgorithmSHA384-OmaUri-End -->

<!-- PKInitHashAlgorithmSHA384-Description-Begin -->
<!-- Description-Source-Manual-Forced -->
<!-- PKInitHashAlgorithmSHA384-Description-End -->

<!-- PKInitHashAlgorithmSHA384-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This policy setting controls the configuration of the SHA384 algorithm used by the Kerberos client when performing certificate authentication. This policy is only enforced if Kerberos/PKInitHashAlgorithmConfiguration is enabled. You can configure one of four states for this algorithm:

- 0 - **Not Supported**: This state disables usage of the algorithm. This state is intended for algorithms that are deemed to be insecure.
- 1 - **Default**: This state sets the algorithm to the recommended state.
- 2 - **Audited**: This state enables usage of the algorithm and reports an event (ID 206) every time it's used. This state is intended to verify that the algorithm isn't being used and can be safely disabled.
- 3 - **Supported**: This state enables usage of the algorithm. Enabling algorithms that have been disabled by default may reduce your security.

If you don't configure this policy, the SHA384 algorithm will assume the **Default** state.
<!-- PKInitHashAlgorithmSHA384-Editable-End -->

<!-- PKInitHashAlgorithmSHA384-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
| Dependency [PKINIT_Hash_Algorithm_Configuration_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `Device/Vendor/MSFT/Policy/Config/Kerberos/PKInitHashAlgorithmConfigurationEnabled` <br> Dependency Allowed Value: `[1]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- PKInitHashAlgorithmSHA384-DFProperties-End -->

<!-- PKInitHashAlgorithmSHA384-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not Supported. |
| 1 (Default) | Default. |
| 2 | Audited. |
| 3 | Supported. |
<!-- PKInitHashAlgorithmSHA384-AllowedValues-End -->

<!-- PKInitHashAlgorithmSHA384-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | PKInitHashAlgorithmConfiguration |
| Friendly Name | Configure hash algorithms for certificate logon |
| Location | Computer Configuration |
| Path | System > Kerberos |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters |
| Registry Value Name | PKInitHashAlgorithmConfigurationEnabled |
| ADMX File Name | Kerberos.admx |
<!-- PKInitHashAlgorithmSHA384-GpMapping-End -->

<!-- PKInitHashAlgorithmSHA384-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PKInitHashAlgorithmSHA384-Examples-End -->

<!-- PKInitHashAlgorithmSHA384-End -->

<!-- PKInitHashAlgorithmSHA512-Begin -->
## PKInitHashAlgorithmSHA512

<!-- PKInitHashAlgorithmSHA512-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- PKInitHashAlgorithmSHA512-Applicability-End -->

<!-- PKInitHashAlgorithmSHA512-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Kerberos/PKInitHashAlgorithmSHA512
```
<!-- PKInitHashAlgorithmSHA512-OmaUri-End -->

<!-- PKInitHashAlgorithmSHA512-Description-Begin -->
<!-- Description-Source-Manual-Forced -->
<!-- PKInitHashAlgorithmSHA512-Description-End -->

<!-- PKInitHashAlgorithmSHA512-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This policy setting controls the configuration of the SHA512 algorithm used by the Kerberos client when performing certificate authentication. This policy is only enforced if Kerberos/PKInitHashAlgorithmConfiguration is enabled. You can configure one of four states for this algorithm:

- 0 - **Not Supported**: This state disables usage of the algorithm. This state is intended for algorithms that are deemed to be insecure.
- 1 - **Default**: This state sets the algorithm to the recommended state.
- 2 - **Audited**: This state enables usage of the algorithm and reports an event (ID 206) every time it's used. This state is intended to verify that the algorithm isn't being used and can be safely disabled.
- 3 - **Supported**: This state enables usage of the algorithm. Enabling algorithms that have been disabled by default may reduce your security.

If you don't configure this policy, the SHA512 algorithm will assume the **Default** state.
<!-- PKInitHashAlgorithmSHA512-Editable-End -->

<!-- PKInitHashAlgorithmSHA512-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
| Dependency [PKINIT_Hash_Algorithm_Configuration_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `Device/Vendor/MSFT/Policy/Config/Kerberos/PKInitHashAlgorithmConfigurationEnabled` <br> Dependency Allowed Value: `[1]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- PKInitHashAlgorithmSHA512-DFProperties-End -->

<!-- PKInitHashAlgorithmSHA512-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not Supported. |
| 1 (Default) | Default. |
| 2 | Audited. |
| 3 | Supported. |
<!-- PKInitHashAlgorithmSHA512-AllowedValues-End -->

<!-- PKInitHashAlgorithmSHA512-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | PKInitHashAlgorithmConfiguration |
| Friendly Name | Configure hash algorithms for certificate logon |
| Location | Computer Configuration |
| Path | System > Kerberos |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters |
| Registry Value Name | PKInitHashAlgorithmConfigurationEnabled |
| ADMX File Name | Kerberos.admx |
<!-- PKInitHashAlgorithmSHA512-GpMapping-End -->

<!-- PKInitHashAlgorithmSHA512-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PKInitHashAlgorithmSHA512-Examples-End -->

<!-- PKInitHashAlgorithmSHA512-End -->

<!-- RequireKerberosArmoring-Begin -->
## RequireKerberosArmoring

<!-- RequireKerberosArmoring-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- RequireKerberosArmoring-Applicability-End -->

<!-- RequireKerberosArmoring-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Kerberos/RequireKerberosArmoring
```
<!-- RequireKerberosArmoring-OmaUri-End -->

<!-- RequireKerberosArmoring-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether a computer requires that Kerberos message exchanges be armored when communicating with a domain controller.

> [!WARNING]
> When a domain doesn't support Kerberos armoring by enabling "Support Dynamic Access Control and Kerberos armoring", then all authentication for all its users will fail from computers with this policy setting enabled.

- If you enable this policy setting, the client computers in the domain enforce the use of Kerberos armoring in only authentication service (AS) and ticket-granting service (TGS) message exchanges with the domain controllers.

> [!NOTE]
> The Kerberos Group Policy "Kerberos client support for claims, compound authentication and Kerberos armoring" must also be enabled to support Kerberos armoring.

- If you disable or don't configure this policy setting, the client computers in the domain enforce the use of Kerberos armoring when possible as supported by the target domain.
<!-- RequireKerberosArmoring-Description-End -->

<!-- RequireKerberosArmoring-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RequireKerberosArmoring-Editable-End -->

<!-- RequireKerberosArmoring-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RequireKerberosArmoring-DFProperties-End -->

<!-- RequireKerberosArmoring-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ClientRequireFast |
| Friendly Name | Fail authentication requests when Kerberos armoring is not available |
| Location | Computer Configuration |
| Path | System > Kerberos |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters |
| Registry Value Name | RequireFast |
| ADMX File Name | Kerberos.admx |
<!-- RequireKerberosArmoring-AdmxBacked-End -->

<!-- RequireKerberosArmoring-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RequireKerberosArmoring-Examples-End -->

<!-- RequireKerberosArmoring-End -->

<!-- RequireStrictKDCValidation-Begin -->
## RequireStrictKDCValidation

<!-- RequireStrictKDCValidation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- RequireStrictKDCValidation-Applicability-End -->

<!-- RequireStrictKDCValidation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Kerberos/RequireStrictKDCValidation
```
<!-- RequireStrictKDCValidation-OmaUri-End -->

<!-- RequireStrictKDCValidation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the Kerberos client's behavior in validating the KDC certificate for smart card and system certificate logon.

- If you enable this policy setting, the Kerberos client requires that the KDC's X.509 certificate contains the KDC key purpose object identifier in the Extended Key Usage (EKU) extensions, and that the KDC's X.509 certificate contains a dNSName subjectAltName (SAN) extension that matches the DNS name of the domain. If the computer is joined to a domain, the Kerberos client requires that the KDC's X.509 certificate must be signed by a Certificate Authority (CA) in the NTAuth store. If the computer isn't joined to a domain, the Kerberos client allows the root CA certificate on the smart card to be used in the path validation of the KDC's X.509 certificate.

- If you disable or don't configure this policy setting, the Kerberos client requires only that the KDC certificate contains the Server Authentication purpose object identifier in the EKU extensions which can be issued to any server.
<!-- RequireStrictKDCValidation-Description-End -->

<!-- RequireStrictKDCValidation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RequireStrictKDCValidation-Editable-End -->

<!-- RequireStrictKDCValidation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RequireStrictKDCValidation-DFProperties-End -->

<!-- RequireStrictKDCValidation-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ValidateKDC |
| Friendly Name | Require strict KDC validation |
| Location | Computer Configuration |
| Path | System > Kerberos |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters |
| Registry Value Name | KdcValidation |
| ADMX File Name | Kerberos.admx |
<!-- RequireStrictKDCValidation-AdmxBacked-End -->

<!-- RequireStrictKDCValidation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RequireStrictKDCValidation-Examples-End -->

<!-- RequireStrictKDCValidation-End -->

<!-- SetMaximumContextTokenSize-Begin -->
## SetMaximumContextTokenSize

<!-- SetMaximumContextTokenSize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- SetMaximumContextTokenSize-Applicability-End -->

<!-- SetMaximumContextTokenSize-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Kerberos/SetMaximumContextTokenSize
```
<!-- SetMaximumContextTokenSize-OmaUri-End -->

<!-- SetMaximumContextTokenSize-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to set the value returned to applications which request the maximum size of the SSPI context token buffer size.

The size of the context token buffer determines the maximum size of SSPI context tokens an application expects and allocates. Depending upon authentication request processing and group memberships, the buffer might be smaller than the actual size of the SSPI context token.

- If you enable this policy setting, the Kerberos client or server uses the configured value, or the locally allowed maximum value, whichever is smaller.

- If you disable or don't configure this policy setting, the Kerberos client or server uses the locally configured value or the default value.

> [!NOTE]
> This policy setting configures the existing MaxTokenSize registry value in HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\Kerberos\Parameters, which was added in Windows XP and Windows Server 2003, with a default value of 12,000 bytes. Beginning with Windows 8 the default is 48,000 bytes. Due to HTTP's base64 encoding of authentication context tokens, it isn't advised to set this value more than 48,000 bytes.
<!-- SetMaximumContextTokenSize-Description-End -->

<!-- SetMaximumContextTokenSize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SetMaximumContextTokenSize-Editable-End -->

<!-- SetMaximumContextTokenSize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SetMaximumContextTokenSize-DFProperties-End -->

<!-- SetMaximumContextTokenSize-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MaxTokenSize |
| Friendly Name | Set maximum Kerberos SSPI context token buffer size |
| Location | Computer Configuration |
| Path | System > Kerberos |
| Registry Key Name | System\CurrentControlSet\Control\Lsa\Kerberos\Parameters |
| Registry Value Name | EnableMaxTokenSize |
| ADMX File Name | Kerberos.admx |
<!-- SetMaximumContextTokenSize-AdmxBacked-End -->

<!-- SetMaximumContextTokenSize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetMaximumContextTokenSize-Examples-End -->

<!-- SetMaximumContextTokenSize-End -->

<!-- UPNNameHints-Begin -->
## UPNNameHints

<!-- UPNNameHints-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- UPNNameHints-Applicability-End -->

<!-- UPNNameHints-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Kerberos/UPNNameHints
```
<!-- UPNNameHints-OmaUri-End -->

<!-- UPNNameHints-Description-Begin -->
<!-- Description-Source-DDF -->
Devices joined to Microsoft Entra ID in a hybrid environment need to interact with Active Directory Domain Controllers, but they lack the built-in ability to find a Domain Controller that a domain-joined device has. This can cause failures when such a device needs to resolve a Microsoft Entra UPN into an Active Directory Principal.
This parameter adds a list of domains that a Microsoft Entra joined device should attempt to contact if it's otherwise unable to resolve a UPN to a principal.
<!-- UPNNameHints-Description-End -->

<!-- UPNNameHints-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UPNNameHints-Editable-End -->

<!-- UPNNameHints-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- UPNNameHints-DFProperties-End -->

<!-- UPNNameHints-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UPNNameHints-Examples-End -->

<!-- UPNNameHints-End -->

<!-- Kerberos-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Kerberos-CspMoreInfo-End -->

<!-- Kerberos-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)

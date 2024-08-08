---
title: ADMX_CredSsp Policy CSP
description: Learn more about the ADMX_CredSsp Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_CredSsp-Begin -->
# Policy CSP - ADMX_CredSsp

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_CredSsp-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_CredSsp-Editable-End -->

<!-- AllowDefaultCredentials-Begin -->
## AllowDefaultCredentials

<!-- AllowDefaultCredentials-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowDefaultCredentials-Applicability-End -->

<!-- AllowDefaultCredentials-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_CredSsp/AllowDefaultCredentials
```
<!-- AllowDefaultCredentials-OmaUri-End -->

<!-- AllowDefaultCredentials-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting applies to applications using the Cred SSP component (for example: Remote Desktop Connection).

This policy setting applies when server authentication was achieved by using a trusted X509 certificate or Kerberos.

- If you enable this policy setting, you can specify the servers to which the user's default credentials can be delegated (default credentials are those that you use when first logging on to Windows).

The policy becomes effective the next time the user signs on to a computer running Windows.

- If you disable or don't configure (by default) this policy setting, delegation of default credentials isn't permitted to any computer. Applications depending upon this delegation behavior might fail authentication. For more information, see KB.

FWlink for KB:

<https://go.microsoft.com/fwlink/?LinkId=301508>

> [!NOTE]
> The "Allow delegating default credentials" policy setting can be set to one or more Service Principal Names (SPNs). The SPN represents the target server to which the user credentials can be delegated. The use of a single wildcard character is permitted when specifying the SPN.

For Example:

TERMSRV/host.humanresources.fabrikam.com Remote Desktop Session Host running on host.humanresources.fabrikam.com machine.

TERMSRV/* Remote Desktop Session Host running on all machines.

TERMSRV/*.humanresources.fabrikam.com Remote Desktop Session Host running on all machines in .humanresources.fabrikam.com.
<!-- AllowDefaultCredentials-Description-End -->

<!-- AllowDefaultCredentials-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowDefaultCredentials-Editable-End -->

<!-- AllowDefaultCredentials-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowDefaultCredentials-DFProperties-End -->

<!-- AllowDefaultCredentials-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowDefaultCredentials |
| Friendly Name | Allow delegating default credentials |
| Location | Computer Configuration |
| Path | System > Credentials Delegation |
| Registry Key Name | Software\Policies\Microsoft\Windows\CredentialsDelegation |
| Registry Value Name | AllowDefaultCredentials |
| ADMX File Name | CredSsp.admx |
<!-- AllowDefaultCredentials-AdmxBacked-End -->

<!-- AllowDefaultCredentials-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowDefaultCredentials-Examples-End -->

<!-- AllowDefaultCredentials-End -->

<!-- AllowDefCredentialsWhenNTLMOnly-Begin -->
## AllowDefCredentialsWhenNTLMOnly

<!-- AllowDefCredentialsWhenNTLMOnly-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowDefCredentialsWhenNTLMOnly-Applicability-End -->

<!-- AllowDefCredentialsWhenNTLMOnly-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_CredSsp/AllowDefCredentialsWhenNTLMOnly
```
<!-- AllowDefCredentialsWhenNTLMOnly-OmaUri-End -->

<!-- AllowDefCredentialsWhenNTLMOnly-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting applies to applications using the Cred SSP component (for example: Remote Desktop Connection).

This policy setting applies when server authentication was achieved via NTLM.

- If you enable this policy setting, you can specify the servers to which the user's default credentials can be delegated (default credentials are those that you use when first logging on to Windows).

- If you disable or don't configure (by default) this policy setting, delegation of default credentials isn't permitted to any machine.

> [!NOTE]
> The "Allow delegating default credentials with NTLM-only server authentication" policy setting can be set to one or more Service Principal Names (SPNs). The SPN represents the target server to which the user credentials can be delegated. The use of a single wildcard character is permitted when specifying the SPN.

For Example:

TERMSRV/host.humanresources.fabrikam.com Remote Desktop Session Host running on host.humanresources.fabrikam.com machine.

TERMSRV/* Remote Desktop Session Host running on all machines.

TERMSRV/*.humanresources.fabrikam.com Remote Desktop Session Host running on all machines in .humanresources.fabrikam.com.
<!-- AllowDefCredentialsWhenNTLMOnly-Description-End -->

<!-- AllowDefCredentialsWhenNTLMOnly-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowDefCredentialsWhenNTLMOnly-Editable-End -->

<!-- AllowDefCredentialsWhenNTLMOnly-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowDefCredentialsWhenNTLMOnly-DFProperties-End -->

<!-- AllowDefCredentialsWhenNTLMOnly-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowDefCredentialsWhenNTLMOnly |
| Friendly Name | Allow delegating default credentials with NTLM-only server authentication |
| Location | Computer Configuration |
| Path | System > Credentials Delegation |
| Registry Key Name | Software\Policies\Microsoft\Windows\CredentialsDelegation |
| Registry Value Name | AllowDefCredentialsWhenNTLMOnly |
| ADMX File Name | CredSsp.admx |
<!-- AllowDefCredentialsWhenNTLMOnly-AdmxBacked-End -->

<!-- AllowDefCredentialsWhenNTLMOnly-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowDefCredentialsWhenNTLMOnly-Examples-End -->

<!-- AllowDefCredentialsWhenNTLMOnly-End -->

<!-- AllowEncryptionOracle-Begin -->
## AllowEncryptionOracle

<!-- AllowEncryptionOracle-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowEncryptionOracle-Applicability-End -->

<!-- AllowEncryptionOracle-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_CredSsp/AllowEncryptionOracle
```
<!-- AllowEncryptionOracle-OmaUri-End -->

<!-- AllowEncryptionOracle-Description-Begin -->
<!-- Description-Source-ADMX -->
Encryption Oracle Remediation.

This policy setting applies to applications using the CredSSP component (for example: Remote Desktop Connection).

Some versions of the CredSSP protocol are vulnerable to an encryption oracle attack against the client. This policy controls compatibility with vulnerable clients and servers. This policy allows you to set the level of protection desired for the encryption oracle vulnerability.

If you enable this policy setting, CredSSP version support will be selected based on the following options:

Force Updated Clients: Client applications which use CredSSP won't be able to fall back to the insecure versions and services using CredSSP won't accept unpatched clients. Note this setting shouldn't be deployed until all remote hosts support the newest version.

Mitigated: Client applications which use CredSSP won't be able to fall back to the insecure version but services using CredSSP will accept unpatched clients. See the link below for important information about the risk posed by remaining unpatched clients.

Vulnerable: Client applications which use CredSSP will expose the remote servers to attacks by supporting fall back to the insecure versions and services using CredSSP will accept unpatched clients.

For more information about the vulnerability and servicing requirements for protection, see <https://go.microsoft.com/fwlink/?linkid=866660>
<!-- AllowEncryptionOracle-Description-End -->

<!-- AllowEncryptionOracle-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowEncryptionOracle-Editable-End -->

<!-- AllowEncryptionOracle-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowEncryptionOracle-DFProperties-End -->

<!-- AllowEncryptionOracle-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowEncryptionOracle |
| Friendly Name | Encryption Oracle Remediation |
| Location | Computer Configuration |
| Path | System > Credentials Delegation |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\CredSSP\Parameters |
| ADMX File Name | CredSsp.admx |
<!-- AllowEncryptionOracle-AdmxBacked-End -->

<!-- AllowEncryptionOracle-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowEncryptionOracle-Examples-End -->

<!-- AllowEncryptionOracle-End -->

<!-- AllowFreshCredentials-Begin -->
## AllowFreshCredentials

<!-- AllowFreshCredentials-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowFreshCredentials-Applicability-End -->

<!-- AllowFreshCredentials-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_CredSsp/AllowFreshCredentials
```
<!-- AllowFreshCredentials-OmaUri-End -->

<!-- AllowFreshCredentials-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting applies to applications using the Cred SSP component (for example: Remote Desktop Connection).

This policy setting applies when server authentication was achieved via a trusted X509 certificate or Kerberos.

- If you enable this policy setting, you can specify the servers to which the user's fresh credentials can be delegated (fresh credentials are those that you are prompted for when executing the application).

- If you don't configure (by default) this policy setting, after proper mutual authentication, delegation of fresh credentials is permitted to Remote Desktop Session Host running on any machine (TERMSRV/*).

- If you disable this policy setting, delegation of fresh credentials isn't permitted to any machine.

> [!NOTE]
> The "Allow delegating fresh credentials" policy setting can be set to one or more Service Principal Names (SPNs). The SPN represents the target server to which the user credentials can be delegated. The use of a single wildcard is permitted when specifying the SPN.

For Example:

TERMSRV/host.humanresources.fabrikam.com.

Remote Desktop Session Host running on host.humanresources.fabrikam.com machine.

TERMSRV/* Remote Desktop Session Host running on all machines.

TERMSRV/*.humanresources.fabrikam.com Remote Desktop Session Host running on all machines in .humanresources.fabrikam.com.
<!-- AllowFreshCredentials-Description-End -->

<!-- AllowFreshCredentials-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowFreshCredentials-Editable-End -->

<!-- AllowFreshCredentials-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowFreshCredentials-DFProperties-End -->

<!-- AllowFreshCredentials-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowFreshCredentials |
| Friendly Name | Allow delegating fresh credentials |
| Location | Computer Configuration |
| Path | System > Credentials Delegation |
| Registry Key Name | Software\Policies\Microsoft\Windows\CredentialsDelegation |
| Registry Value Name | AllowFreshCredentials |
| ADMX File Name | CredSsp.admx |
<!-- AllowFreshCredentials-AdmxBacked-End -->

<!-- AllowFreshCredentials-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowFreshCredentials-Examples-End -->

<!-- AllowFreshCredentials-End -->

<!-- AllowFreshCredentialsWhenNTLMOnly-Begin -->
## AllowFreshCredentialsWhenNTLMOnly

<!-- AllowFreshCredentialsWhenNTLMOnly-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowFreshCredentialsWhenNTLMOnly-Applicability-End -->

<!-- AllowFreshCredentialsWhenNTLMOnly-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_CredSsp/AllowFreshCredentialsWhenNTLMOnly
```
<!-- AllowFreshCredentialsWhenNTLMOnly-OmaUri-End -->

<!-- AllowFreshCredentialsWhenNTLMOnly-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting applies to applications using the Cred SSP component (for example: Remote Desktop Connection).

This policy setting applies when server authentication was achieved via NTLM.

- If you enable this policy setting, you can specify the servers to which the user's fresh credentials can be delegated (fresh credentials are those that you are prompted for when executing the application).

- If you don't configure (by default) this policy setting, after proper mutual authentication, delegation of fresh credentials is permitted to Remote Desktop Session Host running on any machine (TERMSRV/*).

- If you disable this policy setting, delegation of fresh credentials isn't permitted to any machine.

> [!NOTE]
> The "Allow delegating fresh credentials with NTLM-only server authentication" policy setting can be set to one or more Service Principal Names (SPNs). The SPN represents the target server to which the user credentials can be delegated. The use of a single wildcard character is permitted when specifying the SPN.

For Example:

TERMSRV/host.humanresources.fabrikam.com Remote Desktop Session Host running on host.humanresources.fabrikam.com machine.

TERMSRV/* Remote Desktop Session Host running on all machines.

TERMSRV/*.humanresources.fabrikam.com Remote Desktop Session Host running on all machines in humanresources.fabrikam.com.
<!-- AllowFreshCredentialsWhenNTLMOnly-Description-End -->

<!-- AllowFreshCredentialsWhenNTLMOnly-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowFreshCredentialsWhenNTLMOnly-Editable-End -->

<!-- AllowFreshCredentialsWhenNTLMOnly-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowFreshCredentialsWhenNTLMOnly-DFProperties-End -->

<!-- AllowFreshCredentialsWhenNTLMOnly-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowFreshCredentialsWhenNTLMOnly |
| Friendly Name | Allow delegating fresh credentials with NTLM-only server authentication |
| Location | Computer Configuration |
| Path | System > Credentials Delegation |
| Registry Key Name | Software\Policies\Microsoft\Windows\CredentialsDelegation |
| Registry Value Name | AllowFreshCredentialsWhenNTLMOnly |
| ADMX File Name | CredSsp.admx |
<!-- AllowFreshCredentialsWhenNTLMOnly-AdmxBacked-End -->

<!-- AllowFreshCredentialsWhenNTLMOnly-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowFreshCredentialsWhenNTLMOnly-Examples-End -->

<!-- AllowFreshCredentialsWhenNTLMOnly-End -->

<!-- AllowSavedCredentials-Begin -->
## AllowSavedCredentials

<!-- AllowSavedCredentials-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowSavedCredentials-Applicability-End -->

<!-- AllowSavedCredentials-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_CredSsp/AllowSavedCredentials
```
<!-- AllowSavedCredentials-OmaUri-End -->

<!-- AllowSavedCredentials-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting applies to applications using the Cred SSP component (for example: Remote Desktop Connection).

This policy setting applies when server authentication was achieved via a trusted X509 certificate or Kerberos.

- If you enable this policy setting, you can specify the servers to which the user's saved credentials can be delegated (saved credentials are those that you elect to save/remember using the Windows credential manager).

- If you don't configure (by default) this policy setting, after proper mutual authentication, delegation of saved credentials is permitted to Remote Desktop Session Host running on any machine (TERMSRV/*).

- If you disable this policy setting, delegation of saved credentials isn't permitted to any machine.

> [!NOTE]
> The "Allow delegating saved credentials" policy setting can be set to one or more Service Principal Names (SPNs). The SPN represents the target server to which the user credentials can be delegated. The use of a single wildcard character is permitted when specifying the SPN.

For Example:

TERMSRV/host.humanresources.fabrikam.com Remote Desktop Session Host running on host.humanresources.fabrikam.com machine.

TERMSRV/* Remote Desktop Session Host running on all machines.

TERMSRV/*.humanresources.fabrikam.com Remote Desktop Session Host running on all machines in humanresources.fabrikam.com.
<!-- AllowSavedCredentials-Description-End -->

<!-- AllowSavedCredentials-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSavedCredentials-Editable-End -->

<!-- AllowSavedCredentials-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowSavedCredentials-DFProperties-End -->

<!-- AllowSavedCredentials-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowSavedCredentials |
| Friendly Name | Allow delegating saved credentials |
| Location | Computer Configuration |
| Path | System > Credentials Delegation |
| Registry Key Name | Software\Policies\Microsoft\Windows\CredentialsDelegation |
| Registry Value Name | AllowSavedCredentials |
| ADMX File Name | CredSsp.admx |
<!-- AllowSavedCredentials-AdmxBacked-End -->

<!-- AllowSavedCredentials-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSavedCredentials-Examples-End -->

<!-- AllowSavedCredentials-End -->

<!-- AllowSavedCredentialsWhenNTLMOnly-Begin -->
## AllowSavedCredentialsWhenNTLMOnly

<!-- AllowSavedCredentialsWhenNTLMOnly-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowSavedCredentialsWhenNTLMOnly-Applicability-End -->

<!-- AllowSavedCredentialsWhenNTLMOnly-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_CredSsp/AllowSavedCredentialsWhenNTLMOnly
```
<!-- AllowSavedCredentialsWhenNTLMOnly-OmaUri-End -->

<!-- AllowSavedCredentialsWhenNTLMOnly-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting applies to applications using the Cred SSP component (for example: Remote Desktop Connection).

This policy setting applies when server authentication was achieved via NTLM.

- If you enable this policy setting, you can specify the servers to which the user's saved credentials can be delegated (saved credentials are those that you elect to save/remember using the Windows credential manager).

- If you don't configure (by default) this policy setting, after proper mutual authentication, delegation of saved credentials is permitted to Remote Desktop Session Host running on any machine (TERMSRV/*) if the client machine isn't a member of any domain. If the client is domain-joined, by default the delegation of saved credentials isn't permitted to any machine.

- If you disable this policy setting, delegation of saved credentials isn't permitted to any machine.

> [!NOTE]
> The "Allow delegating saved credentials with NTLM-only server authentication" policy setting can be set to one or more Service Principal Names (SPNs). The SPN represents the target server to which the user credentials can be delegated. The use of a single wildcard character is permitted when specifying the SPN.

For Example:

TERMSRV/host.humanresources.fabrikam.com Remote Desktop Session Host running on host.humanresources.fabrikam.com machine.

TERMSRV/* Remote Desktop Session Host running on all machines.

TERMSRV/*.humanresources.fabrikam.com Remote Desktop Session Host running on all machines in humanresources.fabrikam.com.
<!-- AllowSavedCredentialsWhenNTLMOnly-Description-End -->

<!-- AllowSavedCredentialsWhenNTLMOnly-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSavedCredentialsWhenNTLMOnly-Editable-End -->

<!-- AllowSavedCredentialsWhenNTLMOnly-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowSavedCredentialsWhenNTLMOnly-DFProperties-End -->

<!-- AllowSavedCredentialsWhenNTLMOnly-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowSavedCredentialsWhenNTLMOnly |
| Friendly Name | Allow delegating saved credentials with NTLM-only server authentication |
| Location | Computer Configuration |
| Path | System > Credentials Delegation |
| Registry Key Name | Software\Policies\Microsoft\Windows\CredentialsDelegation |
| Registry Value Name | AllowSavedCredentialsWhenNTLMOnly |
| ADMX File Name | CredSsp.admx |
<!-- AllowSavedCredentialsWhenNTLMOnly-AdmxBacked-End -->

<!-- AllowSavedCredentialsWhenNTLMOnly-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSavedCredentialsWhenNTLMOnly-Examples-End -->

<!-- AllowSavedCredentialsWhenNTLMOnly-End -->

<!-- DenyDefaultCredentials-Begin -->
## DenyDefaultCredentials

<!-- DenyDefaultCredentials-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DenyDefaultCredentials-Applicability-End -->

<!-- DenyDefaultCredentials-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_CredSsp/DenyDefaultCredentials
```
<!-- DenyDefaultCredentials-OmaUri-End -->

<!-- DenyDefaultCredentials-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting applies to applications using the Cred SSP component (for example: Remote Desktop Connection).

- If you enable this policy setting, you can specify the servers to which the user's default credentials can't be delegated (default credentials are those that you use when first logging on to Windows).

- If you disable or don't configure (by default) this policy setting, this policy setting doesn't specify any server.

> [!NOTE]
> The "Deny delegating default credentials" policy setting can be set to one or more Service Principal Names (SPNs). The SPN represents the target server to which the user credentials can't be delegated. The use of a single wildcard character is permitted when specifying the SPN.

For Example:

TERMSRV/host.humanresources.fabrikam.com Remote Desktop Session Host running on host.humanresources.fabrikam.com machine.

TERMSRV/* Remote Desktop Session Host running on all machines.

TERMSRV/*.humanresources.fabrikam.com Remote Desktop Session Host running on all machines in .humanresources.fabrikam.com.

This policy setting can be used in combination with the "Allow delegating default credentials" policy setting to define exceptions for specific servers that are otherwise permitted when using wildcard characters in the "Allow delegating default credentials" server list.
<!-- DenyDefaultCredentials-Description-End -->

<!-- DenyDefaultCredentials-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DenyDefaultCredentials-Editable-End -->

<!-- DenyDefaultCredentials-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DenyDefaultCredentials-DFProperties-End -->

<!-- DenyDefaultCredentials-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DenyDefaultCredentials |
| Friendly Name | Deny delegating default credentials |
| Location | Computer Configuration |
| Path | System > Credentials Delegation |
| Registry Key Name | Software\Policies\Microsoft\Windows\CredentialsDelegation |
| Registry Value Name | DenyDefaultCredentials |
| ADMX File Name | CredSsp.admx |
<!-- DenyDefaultCredentials-AdmxBacked-End -->

<!-- DenyDefaultCredentials-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DenyDefaultCredentials-Examples-End -->

<!-- DenyDefaultCredentials-End -->

<!-- DenyFreshCredentials-Begin -->
## DenyFreshCredentials

<!-- DenyFreshCredentials-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DenyFreshCredentials-Applicability-End -->

<!-- DenyFreshCredentials-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_CredSsp/DenyFreshCredentials
```
<!-- DenyFreshCredentials-OmaUri-End -->

<!-- DenyFreshCredentials-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting applies to applications using the Cred SSP component (for example: Remote Desktop Connection).

- If you enable this policy setting, you can specify the servers to which the user's fresh credentials can't be delegated (fresh credentials are those that you are prompted for when executing the application).

- If you disable or don't configure (by default) this policy setting, this policy setting doesn't specify any server.

> [!NOTE]
> The "Deny delegating fresh credentials" policy setting can be set to one or more Service Principal Names (SPNs). The SPN represents the target server to which the user credentials can't be delegated. The use of a single wildcard character is permitted when specifying the SPN.

For Example:

TERMSRV/host.humanresources.fabrikam.com Remote Desktop Session Host running on host.humanresources.fabrikam.com machine.

TERMSRV/* Remote Desktop Session Host running on all machines.

TERMSRV/*.humanresources.fabrikam.com Remote Desktop Session Host running on all machines in .humanresources.fabrikam.com.

This policy setting can be used in combination with the "Allow delegating fresh credentials" policy setting to define exceptions for specific servers that are otherwise permitted when using wildcard characters in the "Allow delegating fresh credentials" server list.
<!-- DenyFreshCredentials-Description-End -->

<!-- DenyFreshCredentials-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DenyFreshCredentials-Editable-End -->

<!-- DenyFreshCredentials-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DenyFreshCredentials-DFProperties-End -->

<!-- DenyFreshCredentials-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DenyFreshCredentials |
| Friendly Name | Deny delegating fresh credentials |
| Location | Computer Configuration |
| Path | System > Credentials Delegation |
| Registry Key Name | Software\Policies\Microsoft\Windows\CredentialsDelegation |
| Registry Value Name | DenyFreshCredentials |
| ADMX File Name | CredSsp.admx |
<!-- DenyFreshCredentials-AdmxBacked-End -->

<!-- DenyFreshCredentials-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DenyFreshCredentials-Examples-End -->

<!-- DenyFreshCredentials-End -->

<!-- DenySavedCredentials-Begin -->
## DenySavedCredentials

<!-- DenySavedCredentials-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DenySavedCredentials-Applicability-End -->

<!-- DenySavedCredentials-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_CredSsp/DenySavedCredentials
```
<!-- DenySavedCredentials-OmaUri-End -->

<!-- DenySavedCredentials-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting applies to applications using the Cred SSP component (for example: Remote Desktop Connection).

- If you enable this policy setting, you can specify the servers to which the user's saved credentials can't be delegated (saved credentials are those that you elect to save/remember using the Windows credential manager).

- If you disable or don't configure (by default) this policy setting, this policy setting doesn't specify any server.

> [!NOTE]
> The "Deny delegating saved credentials" policy setting can be set to one or more Service Principal Names (SPNs). The SPN represents the target server to which the user credentials can't be delegated. The use of a single wildcard character is permitted when specifying the SPN.

For Example:

TERMSRV/host.humanresources.fabrikam.com Remote Desktop Session Host running on host.humanresources.fabrikam.com machine.

TERMSRV/* Remote Desktop Session Host running on all machines.

TERMSRV/*.humanresources.fabrikam.com Remote Desktop Session Host running on all machines in .humanresources.fabrikam.com.

This policy setting can be used in combination with the "Allow delegating saved credentials" policy setting to define exceptions for specific servers that are otherwise permitted when using wildcard characters in the "Allow delegating saved credentials" server list.
<!-- DenySavedCredentials-Description-End -->

<!-- DenySavedCredentials-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DenySavedCredentials-Editable-End -->

<!-- DenySavedCredentials-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DenySavedCredentials-DFProperties-End -->

<!-- DenySavedCredentials-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DenySavedCredentials |
| Friendly Name | Deny delegating saved credentials |
| Location | Computer Configuration |
| Path | System > Credentials Delegation |
| Registry Key Name | Software\Policies\Microsoft\Windows\CredentialsDelegation |
| Registry Value Name | DenySavedCredentials |
| ADMX File Name | CredSsp.admx |
<!-- DenySavedCredentials-AdmxBacked-End -->

<!-- DenySavedCredentials-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DenySavedCredentials-Examples-End -->

<!-- DenySavedCredentials-End -->

<!-- RestrictedRemoteAdministration-Begin -->
## RestrictedRemoteAdministration

<!-- RestrictedRemoteAdministration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RestrictedRemoteAdministration-Applicability-End -->

<!-- RestrictedRemoteAdministration-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_CredSsp/RestrictedRemoteAdministration
```
<!-- RestrictedRemoteAdministration-OmaUri-End -->

<!-- RestrictedRemoteAdministration-Description-Begin -->
<!-- Description-Source-ADMX -->
When running in Restricted Admin or Remote Credential Guard mode, participating apps don't expose signed in or supplied credentials to a remote host. Restricted Admin limits access to resources located on other servers or networks from the remote host because credentials aren't delegated. Remote Credential Guard doesn't limit access to resources because it redirects all requests back to the client device.

Participating apps:

Remote Desktop Client.

- If you enable this policy setting, the following options are supported:

Restrict credential delegation: Participating applications must use Restricted Admin or Remote Credential Guard to connect to remote hosts.

Require Remote Credential Guard: Participating applications must use Remote Credential Guard to connect to remote hosts.

Require Restricted Admin: Participating applications must use Restricted Admin to connect to remote hosts.

- If you disable or don't configure this policy setting, Restricted Admin and Remote Credential Guard mode aren't enforced and participating apps can delegate credentials to remote devices.

> [!NOTE]
> To disable most credential delegation, it may be sufficient to deny delegation in Credential Security Support Provider (CredSSP) by modifying Administrative template settings (located at Computer Configuration\Administrative Templates\System\Credentials Delegation).

> [!NOTE]
> On Windows 8.1 and Windows Server 2012 R2, enabling this policy will enforce Restricted Administration mode, regardless of the mode chosen. These versions don't support Remote Credential Guard.
<!-- RestrictedRemoteAdministration-Description-End -->

<!-- RestrictedRemoteAdministration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictedRemoteAdministration-Editable-End -->

<!-- RestrictedRemoteAdministration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictedRemoteAdministration-DFProperties-End -->

<!-- RestrictedRemoteAdministration-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RestrictedRemoteAdministration |
| Friendly Name | Restrict delegation of credentials to remote servers |
| Location | Computer Configuration |
| Path | System > Credentials Delegation |
| Registry Key Name | Software\Policies\Microsoft\Windows\CredentialsDelegation |
| Registry Value Name | RestrictedRemoteAdministration |
| ADMX File Name | CredSsp.admx |
<!-- RestrictedRemoteAdministration-AdmxBacked-End -->

<!-- RestrictedRemoteAdministration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictedRemoteAdministration-Examples-End -->

<!-- RestrictedRemoteAdministration-End -->

<!-- ADMX_CredSsp-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_CredSsp-CspMoreInfo-End -->

<!-- ADMX_CredSsp-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)

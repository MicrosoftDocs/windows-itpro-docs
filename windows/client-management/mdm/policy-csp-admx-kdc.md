---
title: ADMX_kdc Policy CSP
description: Learn more about the ADMX_kdc Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_kdc-Begin -->
# Policy CSP - ADMX_kdc

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_kdc-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_kdc-Editable-End -->

<!-- CbacAndArmor-Begin -->
## CbacAndArmor

<!-- CbacAndArmor-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CbacAndArmor-Applicability-End -->

<!-- CbacAndArmor-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_kdc/CbacAndArmor
```
<!-- CbacAndArmor-OmaUri-End -->

<!-- CbacAndArmor-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure a domain controller to support claims and compound authentication for Dynamic Access Control and Kerberos armoring using Kerberos authentication.

- If you enable this policy setting, client computers that support claims and compound authentication for Dynamic Access Control and are Kerberos armor-aware will use this feature for Kerberos authentication messages. This policy should be applied to all domain controllers to ensure consistent application of this policy in the domain.

- If you disable or don't configure this policy setting, the domain controller doesn't support claims, compound authentication or armoring.

If you configure the "Not supported" option, the domain controller doesn't support claims, compound authentication or armoring which is the default behavior for domain controllers running Windows Server 2008 R2 or earlier operating systems.

> [!NOTE]
> For the following options of this KDC policy to be effective, the Kerberos Group Policy "Kerberos client support for claims, compound authentication and Kerberos armoring" must be enabled on supported systems. If the Kerberos policy setting isn't enabled, Kerberos authentication messages won't use these features.

If you configure "Supported", the domain controller supports claims, compound authentication and Kerberos armoring. The domain controller advertises to Kerberos client computers that the domain is capable of claims and compound authentication for Dynamic Access Control and Kerberos armoring.

Domain functional level requirements.

For the options "Always provide claims" and "Fail unarmored authentication requests", when the domain functional level is set to Windows Server 2008 R2 or earlier then domain controllers behave as if the "Supported" option is selected.

When the domain functional level is set to Windows Server 2012 then the domain controller advertises to Kerberos client computers that the domain is capable of claims and compound authentication for Dynamic Access Control and Kerberos armoring, and:

- If you set the "Always provide claims" option, always returns claims for accounts and supports the RFC behavior for advertising the flexible authentication secure tunneling (FAST).

- If you set the "Fail unarmored authentication requests" option, rejects unarmored Kerberos messages.

> [!WARNING]
> When "Fail unarmored authentication requests" is set, then client computers which don't support Kerberos armoring will fail to authenticate to the domain controller.

To ensure this feature is effective, deploy enough domain controllers that support claims and compound authentication for Dynamic Access Control and are Kerberos armor-aware to handle the authentication requests. Insufficient number of domain controllers that support this policy result in authentication failures whenever Dynamic Access Control or Kerberos armoring is required (that is, the "Supported" option is enabled).

Impact on domain controller performance when this policy setting is enabled:

- Secure Kerberos domain capability discovery is required resulting in additional message exchanges.

- Claims and compound authentication for Dynamic Access Control increases the size and complexity of the data in the message which results in more processing time and greater Kerberos service ticket size.

- Kerberos armoring fully encrypts Kerberos messages and signs Kerberos errors which results in increased processing time, but doesn't change the service ticket size.
<!-- CbacAndArmor-Description-End -->

<!-- CbacAndArmor-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CbacAndArmor-Editable-End -->

<!-- CbacAndArmor-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CbacAndArmor-DFProperties-End -->

<!-- CbacAndArmor-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CbacAndArmor |
| Friendly Name | KDC support for claims, compound authentication and Kerberos armoring |
| Location | Computer Configuration |
| Path | System > KDC |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters |
| Registry Value Name | EnableCbacAndArmor |
| ADMX File Name | kdc.admx |
<!-- CbacAndArmor-AdmxBacked-End -->

<!-- CbacAndArmor-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CbacAndArmor-Examples-End -->

<!-- CbacAndArmor-End -->

<!-- emitlili-Begin -->
## emitlili

<!-- emitlili-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- emitlili-Applicability-End -->

<!-- emitlili-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_kdc/emitlili
```
<!-- emitlili-OmaUri-End -->

<!-- emitlili-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether the domain controller provides information about previous logons to client computers.

- If you enable this policy setting, the domain controller provides the information message about previous logons.

For Windows Logon to leverage this feature, the "Display information about previous logons during user logon" policy setting located in the Windows Logon Options node under Windows Components also needs to be enabled.

- If you disable or don't configure this policy setting, the domain controller doesn't provide information about previous logons unless the "Display information about previous logons during user logon" policy setting is enabled.

> [!NOTE]
> Information about previous logons is provided only if the domain functional level is Windows Server 2008. In domains with a domain functional level of Windows Server 2003, Windows 2000 native, or Windows 2000 mixed, domain controllers can't provide information about previous logons, and enabling this policy setting doesn't affect anything.
<!-- emitlili-Description-End -->

<!-- emitlili-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- emitlili-Editable-End -->

<!-- emitlili-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- emitlili-DFProperties-End -->

<!-- emitlili-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | emitlili |
| Friendly Name | Provide information about previous logons to client computers |
| Location | Computer Configuration |
| Path | System > KDC |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters |
| Registry Value Name | EmitLILI |
| ADMX File Name | kdc.admx |
<!-- emitlili-AdmxBacked-End -->

<!-- emitlili-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- emitlili-Examples-End -->

<!-- emitlili-End -->

<!-- ForestSearch-Begin -->
## ForestSearch

<!-- ForestSearch-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ForestSearch-Applicability-End -->

<!-- ForestSearch-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_kdc/ForestSearch
```
<!-- ForestSearch-OmaUri-End -->

<!-- ForestSearch-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting defines the list of trusting forests that the Key Distribution Center (KDC) searches when attempting to resolve two-part service principal names (SPNs).

- If you enable this policy setting, the KDC will search the forests in this list if it's unable to resolve a two-part SPN in the local forest. The forest search is performed by using a global catalog or name suffix hints. If a match is found, the KDC will return a referral ticket to the client for the appropriate domain.

- If you disable or don't configure this policy setting, the KDC won't search the listed forests to resolve the SPN. If the KDC is unable to resolve the SPN because the name isn't found, NTLM authentication might be used.

To ensure consistent behavior, this policy setting must be supported and set identically on all domain controllers in the domain.
<!-- ForestSearch-Description-End -->

<!-- ForestSearch-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ForestSearch-Editable-End -->

<!-- ForestSearch-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ForestSearch-DFProperties-End -->

<!-- ForestSearch-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ForestSearch |
| Friendly Name | Use forest search order |
| Location | Computer Configuration |
| Path | System > KDC |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters |
| Registry Value Name | UseForestSearch |
| ADMX File Name | kdc.admx |
<!-- ForestSearch-AdmxBacked-End -->

<!-- ForestSearch-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ForestSearch-Examples-End -->

<!-- ForestSearch-End -->

<!-- PKINITFreshness-Begin -->
## PKINITFreshness

<!-- PKINITFreshness-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PKINITFreshness-Applicability-End -->

<!-- PKINITFreshness-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_kdc/PKINITFreshness
```
<!-- PKINITFreshness-OmaUri-End -->

<!-- PKINITFreshness-Description-Begin -->
<!-- Description-Source-ADMX -->
Support for PKInit Freshness Extension requires Windows Server 2016 domain functional level (DFL). If the domain controller's domain isn't at Windows Server 2016 DFL or higher this policy won't be applied.

This policy setting allows you to configure a domain controller (DC) to support the PKInit Freshness Extension.

- If you enable this policy setting, the following options are supported:

Supported: PKInit Freshness Extension is supported on request. Kerberos clients successfully authenticating with the PKInit Freshness Extension will get the fresh public key identity SID.

Required: PKInit Freshness Extension is required for successful authentication. Kerberos clients which don't support the PKInit Freshness Extension will always fail when using public key credentials.

- If you disable or not configure this policy setting, then the DC will never offer the PKInit Freshness Extension and accept valid authentication requests without checking for freshness. Users will never receive the fresh public key identity SID.
<!-- PKINITFreshness-Description-End -->

<!-- PKINITFreshness-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PKINITFreshness-Editable-End -->

<!-- PKINITFreshness-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PKINITFreshness-DFProperties-End -->

<!-- PKINITFreshness-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PKINITFreshness |
| Friendly Name | KDC support for PKInit Freshness Extension |
| Location | Computer Configuration |
| Path | System > KDC |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters |
| ADMX File Name | kdc.admx |
<!-- PKINITFreshness-AdmxBacked-End -->

<!-- PKINITFreshness-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PKINITFreshness-Examples-End -->

<!-- PKINITFreshness-End -->

<!-- RequestCompoundId-Begin -->
## RequestCompoundId

<!-- RequestCompoundId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RequestCompoundId-Applicability-End -->

<!-- RequestCompoundId-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_kdc/RequestCompoundId
```
<!-- RequestCompoundId-OmaUri-End -->

<!-- RequestCompoundId-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure a domain controller to request compound authentication.

> [!NOTE]
> For a domain controller to request compound authentication, the policy "KDC support for claims, compound authentication, and Kerberos armoring" must be configured and enabled.

- If you enable this policy setting, domain controllers will request compound authentication. The returned service ticket will contain compound authentication only when the account is explicitly configured. This policy should be applied to all domain controllers to ensure consistent application of this policy in the domain.

- If you disable or don't configure this policy setting, domain controllers will return service tickets that contain compound authentication any time the client sends a compound authentication request regardless of the account configuration.
<!-- RequestCompoundId-Description-End -->

<!-- RequestCompoundId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RequestCompoundId-Editable-End -->

<!-- RequestCompoundId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RequestCompoundId-DFProperties-End -->

<!-- RequestCompoundId-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RequestCompoundId |
| Friendly Name | Request compound authentication |
| Location | Computer Configuration |
| Path | System > KDC |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters |
| Registry Value Name | RequestCompoundId |
| ADMX File Name | kdc.admx |
<!-- RequestCompoundId-AdmxBacked-End -->

<!-- RequestCompoundId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RequestCompoundId-Examples-End -->

<!-- RequestCompoundId-End -->

<!-- TicketSizeThreshold-Begin -->
## TicketSizeThreshold

<!-- TicketSizeThreshold-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TicketSizeThreshold-Applicability-End -->

<!-- TicketSizeThreshold-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_kdc/TicketSizeThreshold
```
<!-- TicketSizeThreshold-OmaUri-End -->

<!-- TicketSizeThreshold-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure at what size Kerberos tickets will trigger the warning event issued during Kerberos authentication. The ticket size warnings are logged in the System log.

- If you enable this policy setting, you can set the threshold limit for Kerberos ticket which trigger the warning events. If set too high, then authentication failures might be occurring even though warning events aren't being logged. If set too low, then there will be too many ticket warnings in the log to be useful for analysis. This value should be set to the same value as the Kerberos policy "Set maximum Kerberos SSPI context token buffer size" or the smallest MaxTokenSize used in your environment if you aren't configuring using Group Policy.

- If you disable or don't configure this policy setting, the threshold value defaults to 12,000 bytes, which is the default Kerberos MaxTokenSize for Windows 7, Windows Server 2008 R2 and prior versions.
<!-- TicketSizeThreshold-Description-End -->

<!-- TicketSizeThreshold-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TicketSizeThreshold-Editable-End -->

<!-- TicketSizeThreshold-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TicketSizeThreshold-DFProperties-End -->

<!-- TicketSizeThreshold-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TicketSizeThreshold |
| Friendly Name | Warning for large Kerberos tickets |
| Location | Computer Configuration |
| Path | System > KDC |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters |
| Registry Value Name | EnableTicketSizeThreshold |
| ADMX File Name | kdc.admx |
<!-- TicketSizeThreshold-AdmxBacked-End -->

<!-- TicketSizeThreshold-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TicketSizeThreshold-Examples-End -->

<!-- TicketSizeThreshold-End -->

<!-- ADMX_kdc-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_kdc-CspMoreInfo-End -->

<!-- ADMX_kdc-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)

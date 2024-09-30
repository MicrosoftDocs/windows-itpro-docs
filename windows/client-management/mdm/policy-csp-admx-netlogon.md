---
title: ADMX_Netlogon Policy CSP
description: Learn more about the ADMX_Netlogon Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Netlogon-Begin -->
# Policy CSP - ADMX_Netlogon

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_Netlogon-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Netlogon-Editable-End -->

<!-- Netlogon_AddressLookupOnPingBehavior-Begin -->
## Netlogon_AddressLookupOnPingBehavior

<!-- Netlogon_AddressLookupOnPingBehavior-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_AddressLookupOnPingBehavior-Applicability-End -->

<!-- Netlogon_AddressLookupOnPingBehavior-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_AddressLookupOnPingBehavior
```
<!-- Netlogon_AddressLookupOnPingBehavior-OmaUri-End -->

<!-- Netlogon_AddressLookupOnPingBehavior-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures how a domain controller (DC) behaves when responding to a client whose IP address doesn't map to any configured site.

Domain controllers use the client IP address during a DC locator ping request to compute which Active Directory site the client belongs to. If no site mapping can be computed, the DC may do an address lookup on the client network name to discover other IP addresses which may then be used to compute a matching site for the client.

The allowable values for this setting result in the following behaviors:

0 - DCs will never perform address lookups.

1 - DCs will perform an exhaustive address lookup to discover additional client IP addresses.

2 - DCs will perform a fast, DNS-only address lookup to discover additional client IP addresses.

To specify this behavior in the DC Locator DNS SRV records, click Enabled, and then enter a value. The range of values is from 0 to 2.

If you don't configure this policy setting, it isn't applied to any DCs, and DCs use their local configuration.
<!-- Netlogon_AddressLookupOnPingBehavior-Description-End -->

<!-- Netlogon_AddressLookupOnPingBehavior-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_AddressLookupOnPingBehavior-Editable-End -->

<!-- Netlogon_AddressLookupOnPingBehavior-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_AddressLookupOnPingBehavior-DFProperties-End -->

<!-- Netlogon_AddressLookupOnPingBehavior-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_AddressLookupOnPingBehavior |
| Friendly Name | Specify address lookup behavior for DC locator ping |
| Location | Computer Configuration |
| Path | System > Net Logon > DC Locator DNS Records |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_AddressLookupOnPingBehavior-AdmxBacked-End -->

<!-- Netlogon_AddressLookupOnPingBehavior-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_AddressLookupOnPingBehavior-Examples-End -->

<!-- Netlogon_AddressLookupOnPingBehavior-End -->

<!-- Netlogon_AddressTypeReturned-Begin -->
## Netlogon_AddressTypeReturned

<!-- Netlogon_AddressTypeReturned-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_AddressTypeReturned-Applicability-End -->

<!-- Netlogon_AddressTypeReturned-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_AddressTypeReturned
```
<!-- Netlogon_AddressTypeReturned-OmaUri-End -->

<!-- Netlogon_AddressTypeReturned-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting detremines the type of IP address that's returned for a domain controller. The DC Locator APIs return the IP address of the DC with the other parts of information. Before the support of IPv6, the returned DC IP address was IPv4. But with the support of IPv6, the DC Locator APIs can return IPv6 DC address. The returned IPv6 DC address may not be correctly handled by some of the existing applications. So this policy is provided to support such scenarios.

By default, DC Locator APIs can return IPv4/IPv6 DC address. But if some applications are broken due to the returned IPv6 DC address, this policy can be used to disable the default behavior and enforce to return only IPv4 DC address. Once applications are fixed, this policy can be used to enable the default behavior.

- If you enable this policy setting, DC Locator APIs can return IPv4/IPv6 DC address. This is the default behavior of the DC Locator.

- If you disable this policy setting, DC Locator APIs will ONLY return IPv4 DC address if any. So if the domain controller supports both IPv4 and IPv6 addresses, DC Locator APIs will return IPv4 address. But if the domain controller supports only IPv6 address, then DC Locator APIs will fail.

- If you don't configure this policy setting, DC Locator APIs can return IPv4/IPv6 DC address. This is the default behavior of the DC Locator.
<!-- Netlogon_AddressTypeReturned-Description-End -->

<!-- Netlogon_AddressTypeReturned-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_AddressTypeReturned-Editable-End -->

<!-- Netlogon_AddressTypeReturned-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_AddressTypeReturned-DFProperties-End -->

<!-- Netlogon_AddressTypeReturned-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_AddressTypeReturned |
| Friendly Name | Return domain controller address type |
| Location | Computer Configuration |
| Path | System > Net Logon > DC Locator DNS Records |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| Registry Value Name | AddressTypeReturned |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_AddressTypeReturned-AdmxBacked-End -->

<!-- Netlogon_AddressTypeReturned-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_AddressTypeReturned-Examples-End -->

<!-- Netlogon_AddressTypeReturned-End -->

<!-- Netlogon_AllowDnsSuffixSearch-Begin -->
## Netlogon_AllowDnsSuffixSearch

<!-- Netlogon_AllowDnsSuffixSearch-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_AllowDnsSuffixSearch-Applicability-End -->

<!-- Netlogon_AllowDnsSuffixSearch-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_AllowDnsSuffixSearch
```
<!-- Netlogon_AllowDnsSuffixSearch-OmaUri-End -->

<!-- Netlogon_AllowDnsSuffixSearch-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether the computers to which this setting is applied attemps DNS name resolution of single-lablel domain names, by appending different registered DNS suffixes, and uses NetBIOS name resolution only if DNS name resolution fails. This policy, including the specified default behavior, isn't used if the AllowSingleLabelDnsDomain policy setting is enabled.

By default, when no setting is specified for this policy, the behavior is the same as explicitly enabling this policy, unless the AllowSingleLabelDnsDomain policy setting is enabled.

- If you enable this policy setting, when the AllowSingleLabelDnsDomain policy isn't enabled, computers to which this policy is applied, will locate a domain controller hosting an Active Directory domain specified with a single-label name, by appending different registered DNS suffixes to perform DNS name resolution. The single-label name isn't used without appending DNS suffixes unless the computer is joined to a domain that has a single-label DNS name in the Active Directory forest. NetBIOS name resolution is performed on the single-label name only, in the event that DNS resolution fails.

- If you disable this policy setting, when the AllowSingleLabelDnsDomain policy isn't enabled, computers to which this policy is applied, will only use NetBIOS name resolution to attempt to locate a domain controller hosting an Active Directory domain specified with a single-label name. The computers won't attempt DNS name resolution in this case, unless the computer is searching for a domain with a single label DNS name to which this computer is joined, in the Active Directory forest.
<!-- Netlogon_AllowDnsSuffixSearch-Description-End -->

<!-- Netlogon_AllowDnsSuffixSearch-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_AllowDnsSuffixSearch-Editable-End -->

<!-- Netlogon_AllowDnsSuffixSearch-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_AllowDnsSuffixSearch-DFProperties-End -->

<!-- Netlogon_AllowDnsSuffixSearch-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_AllowDnsSuffixSearch |
| Friendly Name | Use DNS name resolution when a single-label domain name is used, by appending different registered DNS suffixes, if the AllowSingleLabelDnsDomain setting is not enabled. |
| Location | Computer Configuration |
| Path | System > Net Logon > DC Locator DNS Records |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| Registry Value Name | AllowDnsSuffixSearch |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_AllowDnsSuffixSearch-AdmxBacked-End -->

<!-- Netlogon_AllowDnsSuffixSearch-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_AllowDnsSuffixSearch-Examples-End -->

<!-- Netlogon_AllowDnsSuffixSearch-End -->

<!-- Netlogon_AllowNT4Crypto-Begin -->
## Netlogon_AllowNT4Crypto

<!-- Netlogon_AllowNT4Crypto-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_AllowNT4Crypto-Applicability-End -->

<!-- Netlogon_AllowNT4Crypto-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_AllowNT4Crypto
```
<!-- Netlogon_AllowNT4Crypto-OmaUri-End -->

<!-- Netlogon_AllowNT4Crypto-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether the Net Logon service will allow the use of older cryptography algorithms that are used in Windows NT 4.0. The cryptography algorithms used in Windows NT 4.0 and earlier aren't as secure as newer algorithms used in Windows 2000 or later, including this version of Windows.

By default, Net Logon won't allow the older cryptography algorithms to be used and won't include them in the negotiation of cryptography algorithms. Therefore, computers running Windows NT 4.0 won't be able to establish a connection to this domain controller.

- If you enable this policy setting, Net Logon will allow the negotiation and use of older cryptography algorithms compatible with Windows NT 4.0. However, using the older algorithms represents a potential security risk.

- If you disable this policy setting, Net Logon won't allow the negotiation and use of older cryptography algorithms.

- If you don't configure this policy setting, Net Logon won't allow the negotiation and use of older cryptography algorithms.
<!-- Netlogon_AllowNT4Crypto-Description-End -->

<!-- Netlogon_AllowNT4Crypto-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_AllowNT4Crypto-Editable-End -->

<!-- Netlogon_AllowNT4Crypto-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_AllowNT4Crypto-DFProperties-End -->

<!-- Netlogon_AllowNT4Crypto-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_AllowNT4Crypto |
| Friendly Name | Allow cryptography algorithms compatible with Windows NT 4.0 |
| Location | Computer Configuration |
| Path | System > Net Logon |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| Registry Value Name | AllowNT4Crypto |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_AllowNT4Crypto-AdmxBacked-End -->

<!-- Netlogon_AllowNT4Crypto-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_AllowNT4Crypto-Examples-End -->

<!-- Netlogon_AllowNT4Crypto-End -->

<!-- Netlogon_AllowSingleLabelDnsDomain-Begin -->
## Netlogon_AllowSingleLabelDnsDomain

<!-- Netlogon_AllowSingleLabelDnsDomain-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_AllowSingleLabelDnsDomain-Applicability-End -->

<!-- Netlogon_AllowSingleLabelDnsDomain-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_AllowSingleLabelDnsDomain
```
<!-- Netlogon_AllowSingleLabelDnsDomain-OmaUri-End -->

<!-- Netlogon_AllowSingleLabelDnsDomain-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether the computers to which this setting is applied attempt DNS name resolution of a single-label domain names.

By default, the behavior specified in the AllowDnsSuffixSearch is used. If the AllowDnsSuffixSearch policy is disabled, then NetBIOS name resolution is used exclusively, to locate a domain controller hosting an Active Directory domain specified with a single-label name.

- If you enable this policy setting, computers to which this policy is applied will attempt to locate a domain controller hosting an Active Directory domain specified with a single-label name using DNS name resolution.

- If you disable this policy setting, computers to which this setting is applied will use the AllowDnsSuffixSearch policy, if it isn't disabled or perform NetBIOS name resolution otherwise, to attempt to locate a domain controller that hosts an Active Directory domain specified with a single-label name. the computers won't the DNS name resolution in this case, unless the computer is searching for a domain with a single label DNS name that exists in the Active Directory forest to which this computer is joined.

- If you don't configure this policy setting, it isn't applied to any computers, and computers use their local configuration.
<!-- Netlogon_AllowSingleLabelDnsDomain-Description-End -->

<!-- Netlogon_AllowSingleLabelDnsDomain-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_AllowSingleLabelDnsDomain-Editable-End -->

<!-- Netlogon_AllowSingleLabelDnsDomain-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_AllowSingleLabelDnsDomain-DFProperties-End -->

<!-- Netlogon_AllowSingleLabelDnsDomain-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_AllowSingleLabelDnsDomain |
| Friendly Name | Use DNS name resolution with a single-label domain name instead of NetBIOS name resolution to locate the DC |
| Location | Computer Configuration |
| Path | System > Net Logon > DC Locator DNS Records |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| Registry Value Name | AllowSingleLabelDnsDomain |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_AllowSingleLabelDnsDomain-AdmxBacked-End -->

<!-- Netlogon_AllowSingleLabelDnsDomain-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_AllowSingleLabelDnsDomain-Examples-End -->

<!-- Netlogon_AllowSingleLabelDnsDomain-End -->

<!-- Netlogon_AutoSiteCoverage-Begin -->
## Netlogon_AutoSiteCoverage

<!-- Netlogon_AutoSiteCoverage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_AutoSiteCoverage-Applicability-End -->

<!-- Netlogon_AutoSiteCoverage-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_AutoSiteCoverage
```
<!-- Netlogon_AutoSiteCoverage-OmaUri-End -->

<!-- Netlogon_AutoSiteCoverage-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether domain controllers (DC) will dynamically register DC Locator site-specific SRV records for the closest sites where no DC for the same domain exists (or no Global Catalog for the same forest exists). These DNS records are dynamically registered by the Net Logon service, and they're used to locate the DC.

- If you enable this policy setting, the DCs to which this setting is applied dynamically register DC Locator site-specific DNS SRV records for the closest sites where no DC for the same domain, or no Global Catalog for the same forest, exists.

- If you disable this policy setting, the DCs won't register site-specific DC Locator DNS SRV records for any other sites but their own.

- If you don't configure this policy setting, it isn't applied to any DCs, and DCs use their local configuration.
<!-- Netlogon_AutoSiteCoverage-Description-End -->

<!-- Netlogon_AutoSiteCoverage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_AutoSiteCoverage-Editable-End -->

<!-- Netlogon_AutoSiteCoverage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_AutoSiteCoverage-DFProperties-End -->

<!-- Netlogon_AutoSiteCoverage-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_AutoSiteCoverage |
| Friendly Name | Use automated site coverage by the DC Locator DNS SRV Records |
| Location | Computer Configuration |
| Path | System > Net Logon > DC Locator DNS Records |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| Registry Value Name | AutoSiteCoverage |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_AutoSiteCoverage-AdmxBacked-End -->

<!-- Netlogon_AutoSiteCoverage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_AutoSiteCoverage-Examples-End -->

<!-- Netlogon_AutoSiteCoverage-End -->

<!-- Netlogon_AvoidFallbackNetbiosDiscovery-Begin -->
## Netlogon_AvoidFallbackNetbiosDiscovery

<!-- Netlogon_AvoidFallbackNetbiosDiscovery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_AvoidFallbackNetbiosDiscovery-Applicability-End -->

<!-- Netlogon_AvoidFallbackNetbiosDiscovery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_AvoidFallbackNetbiosDiscovery
```
<!-- Netlogon_AvoidFallbackNetbiosDiscovery-OmaUri-End -->

<!-- Netlogon_AvoidFallbackNetbiosDiscovery-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control the domain controller (DC) location algorithm. By default, the DC location algorithm prefers DNS-based discovery if the DNS domain name is known. If DNS-based discovery fails and the NetBIOS domain name is known, the algorithm then uses NetBIOS-based discovery as a fallback mechanism.

NetBIOS-based discovery uses a WINS server and mailslot messages but doesn't use site information. Hence it doesn't ensure that clients will discover the closest DC. It also allows a hub-site client to discover a branch-site DC even if the branch-site DC only registers site-specific DNS records (as recommended). For these reasons, NetBIOS-based discovery isn't recommended.

Note that this policy setting doesn't affect NetBIOS-based discovery for DC location if only the NetBIOS domain name is known.

- If you enable or don't configure this policy setting, the DC location algorithm doesn't use NetBIOS-based discovery as a fallback mechanism when DNS-based discovery fails. This is the default behavior.

- If you disable this policy setting, the DC location algorithm can use NetBIOS-based discovery as a fallback mechanism when DNS based discovery fails.

This setting has no effect unless the BlockNetbiosDiscovery setting is disabled. NetBIOS-based discovery is considered unsecure, has many limitations, and will be deprecated in a future release. For these reasons, NetBIOS-based discovery isn't recommended. See <https://aka.ms/dclocatornetbiosdeprecation> for more information.
<!-- Netlogon_AvoidFallbackNetbiosDiscovery-Description-End -->

<!-- Netlogon_AvoidFallbackNetbiosDiscovery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_AvoidFallbackNetbiosDiscovery-Editable-End -->

<!-- Netlogon_AvoidFallbackNetbiosDiscovery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_AvoidFallbackNetbiosDiscovery-DFProperties-End -->

<!-- Netlogon_AvoidFallbackNetbiosDiscovery-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_AvoidFallbackNetbiosDiscovery |
| Friendly Name | Do not use NetBIOS-based discovery for domain controller location when DNS-based discovery fails |
| Location | Computer Configuration |
| Path | System > Net Logon > DC Locator DNS Records |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| Registry Value Name | AvoidFallbackNetbiosDiscovery |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_AvoidFallbackNetbiosDiscovery-AdmxBacked-End -->

<!-- Netlogon_AvoidFallbackNetbiosDiscovery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_AvoidFallbackNetbiosDiscovery-Examples-End -->

<!-- Netlogon_AvoidFallbackNetbiosDiscovery-End -->

<!-- Netlogon_AvoidPdcOnWan-Begin -->
## Netlogon_AvoidPdcOnWan

<!-- Netlogon_AvoidPdcOnWan-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_AvoidPdcOnWan-Applicability-End -->

<!-- Netlogon_AvoidPdcOnWan-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_AvoidPdcOnWan
```
<!-- Netlogon_AvoidPdcOnWan-OmaUri-End -->

<!-- Netlogon_AvoidPdcOnWan-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting defines whether a domain controller (DC) should attempt to verify the password provided by a client with the PDC emulator if the DC failed to validate the password.

Contacting the PDC emulator is useful in case the client's password was recently changed and didn't propagate to the DC yet. Users may want to disable this feature if the PDC emulator is located over a slow WAN connection.

- If you enable this policy setting, the DCs to which this policy setting applies will attempt to verify a password with the PDC emulator if the DC fails to validate the password.

- If you disable this policy setting, the DCs won't attempt to verify any passwords with the PDC emulator.

- If you don't configure this policy setting, it isn't applied to any DCs.
<!-- Netlogon_AvoidPdcOnWan-Description-End -->

<!-- Netlogon_AvoidPdcOnWan-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_AvoidPdcOnWan-Editable-End -->

<!-- Netlogon_AvoidPdcOnWan-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_AvoidPdcOnWan-DFProperties-End -->

<!-- Netlogon_AvoidPdcOnWan-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_AvoidPdcOnWan |
| Friendly Name | Contact PDC on logon failure |
| Location | Computer Configuration |
| Path | System > Net Logon |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| Registry Value Name | AvoidPdcOnWan |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_AvoidPdcOnWan-AdmxBacked-End -->

<!-- Netlogon_AvoidPdcOnWan-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_AvoidPdcOnWan-Examples-End -->

<!-- Netlogon_AvoidPdcOnWan-End -->

<!-- Netlogon_BackgroundRetryInitialPeriod-Begin -->
## Netlogon_BackgroundRetryInitialPeriod

<!-- Netlogon_BackgroundRetryInitialPeriod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_BackgroundRetryInitialPeriod-Applicability-End -->

<!-- Netlogon_BackgroundRetryInitialPeriod-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_BackgroundRetryInitialPeriod
```
<!-- Netlogon_BackgroundRetryInitialPeriod-OmaUri-End -->

<!-- Netlogon_BackgroundRetryInitialPeriod-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the amount of time (in seconds) to wait before the first retry for applications that perform periodic searches for domain controllers (DC) that are unable to find a DC.

The default value for this setting is 10 minutes (10*60). The maximum value for this setting is 49 days (0x49*24*60*60=4233600). The minimum value for this setting is 0.

This setting is relevant only to those callers of DsGetDcName that have specified the DS_BACKGROUND_ONLY flag.

If the value of this setting is less than the value specified in the NegativeCachePeriod subkey, the value in the NegativeCachePeriod subkey is used.

> [!WARNING]
> If the value for this setting is too large, a client won't attempt to find any DCs that were initially unavailable. If the value set in this setting is very small and the DC isn't available, the traffic caused by periodic DC discoveries may be excessive.
<!-- Netlogon_BackgroundRetryInitialPeriod-Description-End -->

<!-- Netlogon_BackgroundRetryInitialPeriod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_BackgroundRetryInitialPeriod-Editable-End -->

<!-- Netlogon_BackgroundRetryInitialPeriod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_BackgroundRetryInitialPeriod-DFProperties-End -->

<!-- Netlogon_BackgroundRetryInitialPeriod-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_BackgroundRetryInitialPeriod |
| Friendly Name | Use initial DC discovery retry setting for background callers |
| Location | Computer Configuration |
| Path | System > Net Logon |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_BackgroundRetryInitialPeriod-AdmxBacked-End -->

<!-- Netlogon_BackgroundRetryInitialPeriod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_BackgroundRetryInitialPeriod-Examples-End -->

<!-- Netlogon_BackgroundRetryInitialPeriod-End -->

<!-- Netlogon_BackgroundRetryMaximumPeriod-Begin -->
## Netlogon_BackgroundRetryMaximumPeriod

<!-- Netlogon_BackgroundRetryMaximumPeriod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_BackgroundRetryMaximumPeriod-Applicability-End -->

<!-- Netlogon_BackgroundRetryMaximumPeriod-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_BackgroundRetryMaximumPeriod
```
<!-- Netlogon_BackgroundRetryMaximumPeriod-OmaUri-End -->

<!-- Netlogon_BackgroundRetryMaximumPeriod-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the maximum retry interval allowed when applications performing periodic searches for Domain Controllers (DCs) are unable to find a DC.

For example, the retry intervals may be set at 10 minutes, then 20 minutes and then 40 minutes, but when the interval reaches the value set in this setting, that value becomes the retry interval for all subsequent retries until the value set in Final DC Discovery Retry Setting is reached.

The default value for this setting is 60 minutes (60*60). The maximum value for this setting is 49 days (0x49*24*60*60=4233600). The minimum value for this setting is 0.

If the value for this setting is smaller than the value specified for the Initial DC Discovery Retry Setting, the Initial DC Discovery Retry Setting is used.

> [!WARNING]
> If the value for this setting is too large, a client may take very long periods to try to find a DC.

If the value for this setting is too small and the DC isn't available, the frequent retries may produce excessive network traffic.
<!-- Netlogon_BackgroundRetryMaximumPeriod-Description-End -->

<!-- Netlogon_BackgroundRetryMaximumPeriod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_BackgroundRetryMaximumPeriod-Editable-End -->

<!-- Netlogon_BackgroundRetryMaximumPeriod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_BackgroundRetryMaximumPeriod-DFProperties-End -->

<!-- Netlogon_BackgroundRetryMaximumPeriod-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_BackgroundRetryMaximumPeriod |
| Friendly Name | Use maximum DC discovery retry interval setting for background callers |
| Location | Computer Configuration |
| Path | System > Net Logon |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_BackgroundRetryMaximumPeriod-AdmxBacked-End -->

<!-- Netlogon_BackgroundRetryMaximumPeriod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_BackgroundRetryMaximumPeriod-Examples-End -->

<!-- Netlogon_BackgroundRetryMaximumPeriod-End -->

<!-- Netlogon_BackgroundRetryQuitTime-Begin -->
## Netlogon_BackgroundRetryQuitTime

<!-- Netlogon_BackgroundRetryQuitTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_BackgroundRetryQuitTime-Applicability-End -->

<!-- Netlogon_BackgroundRetryQuitTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_BackgroundRetryQuitTime
```
<!-- Netlogon_BackgroundRetryQuitTime-OmaUri-End -->

<!-- Netlogon_BackgroundRetryQuitTime-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines when retries are no longer allowed for applications that perform periodic searches for domain controllers (DC) are unable to find a DC. For example, retires may be set to occur according to the Use maximum DC discovery retry interval policy setting, but when the value set in this policy setting is reached, no more retries occur. If a value for this policy setting is smaller than the value in the Use maximum DC discovery retry interval policy setting, the value for Use maximum DC discovery retry interval policy setting is used.

The default value for this setting is to not quit retrying (0). The maximum value for this setting is 49 days (0x49*24*60*60=4233600). The minimum value for this setting is 0.

> [!WARNING]
> If the value for this setting is too small, a client will stop trying to find a DC too soon.
<!-- Netlogon_BackgroundRetryQuitTime-Description-End -->

<!-- Netlogon_BackgroundRetryQuitTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_BackgroundRetryQuitTime-Editable-End -->

<!-- Netlogon_BackgroundRetryQuitTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_BackgroundRetryQuitTime-DFProperties-End -->

<!-- Netlogon_BackgroundRetryQuitTime-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_BackgroundRetryQuitTime |
| Friendly Name | Use final DC discovery retry setting for background callers |
| Location | Computer Configuration |
| Path | System > Net Logon |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_BackgroundRetryQuitTime-AdmxBacked-End -->

<!-- Netlogon_BackgroundRetryQuitTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_BackgroundRetryQuitTime-Examples-End -->

<!-- Netlogon_BackgroundRetryQuitTime-End -->

<!-- Netlogon_BackgroundSuccessfulRefreshPeriod-Begin -->
## Netlogon_BackgroundSuccessfulRefreshPeriod

<!-- Netlogon_BackgroundSuccessfulRefreshPeriod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_BackgroundSuccessfulRefreshPeriod-Applicability-End -->

<!-- Netlogon_BackgroundSuccessfulRefreshPeriod-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_BackgroundSuccessfulRefreshPeriod
```
<!-- Netlogon_BackgroundSuccessfulRefreshPeriod-OmaUri-End -->

<!-- Netlogon_BackgroundSuccessfulRefreshPeriod-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines when a successful DC cache entry is refreshed. This policy setting is applied to caller programs that periodically attempt to locate DCs, and it's applied before returning the DC information to the caller program. The default value for this setting is infinite (4294967200). The maximum value for this setting is (4294967200), while the maximum that isn't treated as infinity is 49 days (49*24*60*60=4233600). Any larger value is treated as infinity. The minimum value for this setting is to always refresh (0).
<!-- Netlogon_BackgroundSuccessfulRefreshPeriod-Description-End -->

<!-- Netlogon_BackgroundSuccessfulRefreshPeriod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_BackgroundSuccessfulRefreshPeriod-Editable-End -->

<!-- Netlogon_BackgroundSuccessfulRefreshPeriod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_BackgroundSuccessfulRefreshPeriod-DFProperties-End -->

<!-- Netlogon_BackgroundSuccessfulRefreshPeriod-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_BackgroundSuccessfulRefreshPeriod |
| Friendly Name | Use positive periodic DC cache refresh for background callers |
| Location | Computer Configuration |
| Path | System > Net Logon |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_BackgroundSuccessfulRefreshPeriod-AdmxBacked-End -->

<!-- Netlogon_BackgroundSuccessfulRefreshPeriod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_BackgroundSuccessfulRefreshPeriod-Examples-End -->

<!-- Netlogon_BackgroundSuccessfulRefreshPeriod-End -->

<!-- Netlogon_DebugFlag-Begin -->
## Netlogon_DebugFlag

<!-- Netlogon_DebugFlag-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_DebugFlag-Applicability-End -->

<!-- Netlogon_DebugFlag-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_DebugFlag
```
<!-- Netlogon_DebugFlag-OmaUri-End -->

<!-- Netlogon_DebugFlag-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the level of debug output for the Net Logon service.

The Net Logon service outputs debug information to the log file netlogon.log in the directory %windir%\debug. By default, no debug information is logged.

- If you enable this policy setting and specify a non-zero value, debug information will be logged to the file. Higher values result in more verbose logging; the value of 536936447 is commonly used as an optimal setting.

If you specify zero for this policy setting, the default behavior occurs as described above.

- If you disable this policy setting or don't configure it, the default behavior occurs as described above.
<!-- Netlogon_DebugFlag-Description-End -->

<!-- Netlogon_DebugFlag-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_DebugFlag-Editable-End -->

<!-- Netlogon_DebugFlag-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_DebugFlag-DFProperties-End -->

<!-- Netlogon_DebugFlag-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_DebugFlag |
| Friendly Name | Specify log file debug output level |
| Location | Computer Configuration |
| Path | System > Net Logon |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_DebugFlag-AdmxBacked-End -->

<!-- Netlogon_DebugFlag-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_DebugFlag-Examples-End -->

<!-- Netlogon_DebugFlag-End -->

<!-- Netlogon_DnsAvoidRegisterRecords-Begin -->
## Netlogon_DnsAvoidRegisterRecords

<!-- Netlogon_DnsAvoidRegisterRecords-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_DnsAvoidRegisterRecords-Applicability-End -->

<!-- Netlogon_DnsAvoidRegisterRecords-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_DnsAvoidRegisterRecords
```
<!-- Netlogon_DnsAvoidRegisterRecords-OmaUri-End -->

<!-- Netlogon_DnsAvoidRegisterRecords-Description-Begin -->
<!-- Description-Source-Manual-Forced -->
<!-- Netlogon_DnsAvoidRegisterRecords-Description-End -->

<!-- Netlogon_DnsAvoidRegisterRecords-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This policy setting determines which DC Locator DNS records aren't registered by the Net Logon service.

- If you enable this policy setting, select Enabled and specify a list of space-delimited mnemonics (instructions) for the DC Locator DNS records that won't be registered by the DCs to which this setting is applied. Select the mnemonics from the following table:

    | Mnemonic         | Type  | DNS Record                                                     |
    |------------------|-------|----------------------------------------------------------------|
    | LdapIpAddress    | A     | `<DnsDomainName>`                                              |
    | Ldap             | SRV   | _ldap._tcp.`<DnsDomainName>`                                   |
    | LdapAtSite       | SRV   | _ldap._tcp.`<SiteName>`._sites.`<DnsDomainName>`               |
    | Pdc              | SRV   | _ldap._tcp.pdc._msdcs.`<DnsDomainName>`                        |
    | Gc               | SRV   | _ldap._tcp.gc._msdcs.`<DnsForestName>`                         |
    | GcAtSite         | SRV   | _ldap._tcp.`<SiteName>`._sites.gc._msdcs.`<DnsForestName>`     |
    | DcByGuid         | SRV   | _ldap._tcp.`<DomainGuid>`.domains._msdcs.`<DnsForestName>`     |
    | GcIpAddress      | A     | gc._msdcs.`<DnsForestName>`                                    |
    | DsaCname         | CNAME | `<DsaGuid>`._msdcs.`<DnsForestName>`                           |
    | Kdc              | SRV   | _kerberos._tcp.dc._msdcs.`<DnsDomainName>`                     |
    | KdcAtSite        | SRV   | _kerberos._tcp.`<SiteName>`._sites.dc._msdcs.                  |
    | KdcAtSite        | SRV   | _kerberos._tcp.`<SiteName>`._sites.dc._msdcs.`<DnsDomainName>` |
    | Dc               | SRV   | _ldap._tcp.dc._msdcs.`<DnsDomainName>`                         |
    | DcAtSite         | SRV   | _ldap._tcp.`<SiteName>`._sites.dc._msdcs.`<DnsDomainName>`     |
    | Rfc1510Kdc       | SRV   | _kerberos._tcp.`<DnsDomainName>`                               |
    | Rfc1510KdcAtSite | SRV   | _kerberos._tcp.`<SiteName>`._sites.`<DnsDomainName>`           |
    | GenericGc        | SRV   | _gc._tcp.`<DnsForestName>`                                     |
    | GenericGcAtSite  | SRV   | _gc._tcp.`<SiteName>`._sites.`<DnsForestName>`                 |
    | Rfc1510UdpKdc    | SRV   | _kerberos._udp.`<DnsDomainName>`                               |
    | Rfc1510Kpwd      | SRV   | _kpasswd._tcp.`<DnsDomainName>`                                |
    | Rfc1510UdpKpwd   | SRV   | _kpasswd._udp.`<DnsDomainName>`                                |

- If you disable this policy setting, DCs configured to perform dynamic registration of DC Locator DNS records register all DC Locator DNS resource records.

- If you don't configure this policy setting, DCs use their local configuration.
<!-- Netlogon_DnsAvoidRegisterRecords-Editable-End -->

<!-- Netlogon_DnsAvoidRegisterRecords-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_DnsAvoidRegisterRecords-DFProperties-End -->

<!-- Netlogon_DnsAvoidRegisterRecords-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_DnsAvoidRegisterRecords |
| Friendly Name | Specify DC Locator DNS records not registered by the DCs |
| Location | Computer Configuration |
| Path | System > Net Logon > DC Locator DNS Records |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_DnsAvoidRegisterRecords-AdmxBacked-End -->

<!-- Netlogon_DnsAvoidRegisterRecords-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_DnsAvoidRegisterRecords-Examples-End -->

<!-- Netlogon_DnsAvoidRegisterRecords-End -->

<!-- Netlogon_DnsRefreshInterval-Begin -->
## Netlogon_DnsRefreshInterval

<!-- Netlogon_DnsRefreshInterval-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_DnsRefreshInterval-Applicability-End -->

<!-- Netlogon_DnsRefreshInterval-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_DnsRefreshInterval
```
<!-- Netlogon_DnsRefreshInterval-OmaUri-End -->

<!-- Netlogon_DnsRefreshInterval-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the Refresh Interval of the DC Locator DNS resource records for DCs to which this setting is applied. These DNS records are dynamically registered by the Net Logon service and are used by the DC Locator algorithm to locate the DC. This setting may be applied only to DCs using dynamic update.

DCs configured to perform dynamic registration of the DC Locator DNS resource records periodically reregister their records with DNS servers, even if their records' data hasn't changed. If authoritative DNS servers are configured to perform scavenging of the stale records, this reregistration is required to instruct the DNS servers configured to automatically remove (scavenge) stale records that these records are current and should be preserved in the database.

> [!WARNING]
> If the DNS resource records are registered in zones with scavenging enabled, the value of this setting should never be longer than the Refresh Interval configured for these zones. Setting the Refresh Interval of the DC Locator DNS records to longer than the Refresh Interval of the DNS zones may result in the undesired deletion of DNS resource records.

To specify the Refresh Interval of the DC records, click Enabled, and then enter a value larger than 1800. This value specifies the Refresh Interval of the DC records in seconds (for example, the value 3600 is 60 minutes).

If you don't configure this policy setting, it isn't applied to any DCs, and DCs use their local configuration.
<!-- Netlogon_DnsRefreshInterval-Description-End -->

<!-- Netlogon_DnsRefreshInterval-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_DnsRefreshInterval-Editable-End -->

<!-- Netlogon_DnsRefreshInterval-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_DnsRefreshInterval-DFProperties-End -->

<!-- Netlogon_DnsRefreshInterval-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_DnsRefreshInterval |
| Friendly Name | Specify Refresh Interval of the DC Locator DNS records |
| Location | Computer Configuration |
| Path | System > Net Logon > DC Locator DNS Records |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_DnsRefreshInterval-AdmxBacked-End -->

<!-- Netlogon_DnsRefreshInterval-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_DnsRefreshInterval-Examples-End -->

<!-- Netlogon_DnsRefreshInterval-End -->

<!-- Netlogon_DnsSrvRecordUseLowerCaseHostNames-Begin -->
## Netlogon_DnsSrvRecordUseLowerCaseHostNames

<!-- Netlogon_DnsSrvRecordUseLowerCaseHostNames-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_DnsSrvRecordUseLowerCaseHostNames-Applicability-End -->

<!-- Netlogon_DnsSrvRecordUseLowerCaseHostNames-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_DnsSrvRecordUseLowerCaseHostNames
```
<!-- Netlogon_DnsSrvRecordUseLowerCaseHostNames-OmaUri-End -->

<!-- Netlogon_DnsSrvRecordUseLowerCaseHostNames-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures whether the domain controllers to which this setting is applied will lowercase their DNS host name when registering SRV records.

If enabled, domain controllers will lowercase their DNS host name when registering domain controller SRV records. A best-effort attempt will be made to delete any previously registered SRV records that contain mixed-case DNS host names. For more information and potential manual cleanup procedures, see the link below.

If disabled, domain controllers will use their configured DNS host name as-is when registering domain controller SRV records.

If not configured, domain controllers will default to using their local configuration.

The default local configuration is enabled.

A reboot isn't required for changes to this setting to take effect.

More information is available at <https://aka.ms/lowercasehostnamesrvrecord>
<!-- Netlogon_DnsSrvRecordUseLowerCaseHostNames-Description-End -->

<!-- Netlogon_DnsSrvRecordUseLowerCaseHostNames-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_DnsSrvRecordUseLowerCaseHostNames-Editable-End -->

<!-- Netlogon_DnsSrvRecordUseLowerCaseHostNames-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_DnsSrvRecordUseLowerCaseHostNames-DFProperties-End -->

<!-- Netlogon_DnsSrvRecordUseLowerCaseHostNames-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_DnsSrvRecordUseLowerCaseHostNames |
| Friendly Name | Use lowercase DNS host names when registering domain controller SRV records |
| Location | Computer Configuration |
| Path | System > Net Logon > DC Locator DNS Records |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| Registry Value Name | DnsSrvRecordUseLowerCaseHostNames |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_DnsSrvRecordUseLowerCaseHostNames-AdmxBacked-End -->

<!-- Netlogon_DnsSrvRecordUseLowerCaseHostNames-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_DnsSrvRecordUseLowerCaseHostNames-Examples-End -->

<!-- Netlogon_DnsSrvRecordUseLowerCaseHostNames-End -->

<!-- Netlogon_DnsTtl-Begin -->
## Netlogon_DnsTtl

<!-- Netlogon_DnsTtl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_DnsTtl-Applicability-End -->

<!-- Netlogon_DnsTtl-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_DnsTtl
```
<!-- Netlogon_DnsTtl-OmaUri-End -->

<!-- Netlogon_DnsTtl-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the value for the Time-To-Live (TTL) field in SRV resource records that are registered by the Net Logon service. These DNS records are dynamically registered, and they're used to locate the domain controller (DC).

To specify the TTL for DC Locator DNS records, click Enabled, and then enter a value in seconds (for example, the value "900" is 15 minutes).

If you don't configure this policy setting, it isn't applied to any DCs, and DCs use their local configuration.
<!-- Netlogon_DnsTtl-Description-End -->

<!-- Netlogon_DnsTtl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_DnsTtl-Editable-End -->

<!-- Netlogon_DnsTtl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_DnsTtl-DFProperties-End -->

<!-- Netlogon_DnsTtl-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_DnsTtl |
| Friendly Name | Set TTL  in the DC Locator DNS Records |
| Location | Computer Configuration |
| Path | System > Net Logon > DC Locator DNS Records |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_DnsTtl-AdmxBacked-End -->

<!-- Netlogon_DnsTtl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_DnsTtl-Examples-End -->

<!-- Netlogon_DnsTtl-End -->

<!-- Netlogon_ExpectedDialupDelay-Begin -->
## Netlogon_ExpectedDialupDelay

<!-- Netlogon_ExpectedDialupDelay-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_ExpectedDialupDelay-Applicability-End -->

<!-- Netlogon_ExpectedDialupDelay-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_ExpectedDialupDelay
```
<!-- Netlogon_ExpectedDialupDelay-OmaUri-End -->

<!-- Netlogon_ExpectedDialupDelay-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the additional time for the computer to wait for the domain controller's (DC) response when logging on to the network.

To specify the expected dial-up delay at logon, click Enabled, and then enter the desired value in seconds (for example, the value "60" is 1 minute).

If you don't configure this policy setting, it isn't applied to any computers, and computers use their local configuration.
<!-- Netlogon_ExpectedDialupDelay-Description-End -->

<!-- Netlogon_ExpectedDialupDelay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_ExpectedDialupDelay-Editable-End -->

<!-- Netlogon_ExpectedDialupDelay-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_ExpectedDialupDelay-DFProperties-End -->

<!-- Netlogon_ExpectedDialupDelay-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_ExpectedDialupDelay |
| Friendly Name | Specify expected dial-up delay on logon |
| Location | Computer Configuration |
| Path | System > Net Logon |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_ExpectedDialupDelay-AdmxBacked-End -->

<!-- Netlogon_ExpectedDialupDelay-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_ExpectedDialupDelay-Examples-End -->

<!-- Netlogon_ExpectedDialupDelay-End -->

<!-- Netlogon_ForceRediscoveryInterval-Begin -->
## Netlogon_ForceRediscoveryInterval

<!-- Netlogon_ForceRediscoveryInterval-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_ForceRediscoveryInterval-Applicability-End -->

<!-- Netlogon_ForceRediscoveryInterval-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_ForceRediscoveryInterval
```
<!-- Netlogon_ForceRediscoveryInterval-OmaUri-End -->

<!-- Netlogon_ForceRediscoveryInterval-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the interval for when a Force Rediscovery is carried out by DC Locator.

The Domain Controller Locator (DC Locator) service is used by clients to find domain controllers for their Active Directory domain. When DC Locator finds a domain controller, it caches domain controllers to improve the efficiency of the location algorithm. As long as the cached domain controller meets the requirements and is running, DC Locator will continue to return it. If a new domain controller is introduced, existing clients will only discover it when a Force Rediscovery is carried out by DC Locator. To adapt to changes in network conditions DC Locator will by default carry out a Force Rediscovery according to a specific time interval and maintain efficient load-balancing of clients across all available domain controllers in all domains or forests. The default time interval for Force Rediscovery by DC Locator is 12 hours. Force Rediscovery can also be triggered if a call to DC Locator uses the DS_FORCE_REDISCOVERY flag. Rediscovery resets the timer on the cached domain controller entries.

- If you enable this policy setting, DC Locator on the machine will carry out Force Rediscovery periodically according to the configured time interval. The minimum time interval is 3600 seconds (1 hour) to avoid excessive network traffic from rediscovery. The maximum allowed time interval is 4294967200 seconds, while any value greater than 4294967 seconds (~49 days) will be treated as infinity.

- If you disable this policy setting, Force Rediscovery will be used by default for the machine at every 12 hour interval.

- If you don't configure this policy setting, Force Rediscovery will be used by default for the machine at every 12 hour interval, unless the local machine setting in the registry is a different value.
<!-- Netlogon_ForceRediscoveryInterval-Description-End -->

<!-- Netlogon_ForceRediscoveryInterval-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_ForceRediscoveryInterval-Editable-End -->

<!-- Netlogon_ForceRediscoveryInterval-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_ForceRediscoveryInterval-DFProperties-End -->

<!-- Netlogon_ForceRediscoveryInterval-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_ForceRediscoveryInterval |
| Friendly Name | Force Rediscovery Interval |
| Location | Computer Configuration |
| Path | System > Net Logon > DC Locator DNS Records |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_ForceRediscoveryInterval-AdmxBacked-End -->

<!-- Netlogon_ForceRediscoveryInterval-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_ForceRediscoveryInterval-Examples-End -->

<!-- Netlogon_ForceRediscoveryInterval-End -->

<!-- Netlogon_GcSiteCoverage-Begin -->
## Netlogon_GcSiteCoverage

<!-- Netlogon_GcSiteCoverage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_GcSiteCoverage-Applicability-End -->

<!-- Netlogon_GcSiteCoverage-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_GcSiteCoverage
```
<!-- Netlogon_GcSiteCoverage-OmaUri-End -->

<!-- Netlogon_GcSiteCoverage-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the sites for which the global catalogs (GC) should register site-specific GC locator DNS SRV resource records. These records are registered in addition to the site-specific SRV records registered for the site where the GC resides, and records registered by a GC configured to register GC Locator DNS SRV records for those sites without a GC that are closest to it.

The GC Locator DNS records and the site-specific SRV records are dynamically registered by the Net Logon service, and they're used to locate the GC. An Active Directory site is one or more well-connected TCP/IP subnets that allow administrators to configure Active Directory access and replication. A GC is a domain controller that contains a partial replica of every domain in Active Directory.

To specify the sites covered by the GC Locator DNS SRV records, click Enabled, and enter the sites' names in a space-delimited format.

If you don't configure this policy setting, it isn't applied to any GCs, and GCs use their local configuration.
<!-- Netlogon_GcSiteCoverage-Description-End -->

<!-- Netlogon_GcSiteCoverage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_GcSiteCoverage-Editable-End -->

<!-- Netlogon_GcSiteCoverage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_GcSiteCoverage-DFProperties-End -->

<!-- Netlogon_GcSiteCoverage-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_GcSiteCoverage |
| Friendly Name | Specify sites covered by the GC Locator DNS SRV Records |
| Location | Computer Configuration |
| Path | System > Net Logon > DC Locator DNS Records |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_GcSiteCoverage-AdmxBacked-End -->

<!-- Netlogon_GcSiteCoverage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_GcSiteCoverage-Examples-End -->

<!-- Netlogon_GcSiteCoverage-End -->

<!-- Netlogon_IgnoreIncomingMailslotMessages-Begin -->
## Netlogon_IgnoreIncomingMailslotMessages

<!-- Netlogon_IgnoreIncomingMailslotMessages-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_IgnoreIncomingMailslotMessages-Applicability-End -->

<!-- Netlogon_IgnoreIncomingMailslotMessages-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_IgnoreIncomingMailslotMessages
```
<!-- Netlogon_IgnoreIncomingMailslotMessages-OmaUri-End -->

<!-- Netlogon_IgnoreIncomingMailslotMessages-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control the processing of incoming mailslot messages by a local domain controller (DC).

> [!NOTE]
> To locate a remote DC based on its NetBIOS (single-label) domain name, DC Locator first gets the list of DCs from a WINS server that's configured in its local client settings. DC Locator then sends a mailslot message to each remote DC to get more information. DC location succeeds only if a remote DC responds to the mailslot message.

This policy setting is recommended to reduce the attack surface on a DC, and can be used in an environment without WINS, in an IPv6-only environment, and whenever DC location based on a NetBIOS domain name isn't required. This policy setting doesn't affect DC location based on DNS names.

- If you enable this policy setting, this DC doesn't process incoming mailslot messages that are used for NetBIOS domain name based DC location.

- If you disable or don't configure this policy setting, this DC processes incoming mailslot messages. This is the default behavior of DC Locator.
<!-- Netlogon_IgnoreIncomingMailslotMessages-Description-End -->

<!-- Netlogon_IgnoreIncomingMailslotMessages-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_IgnoreIncomingMailslotMessages-Editable-End -->

<!-- Netlogon_IgnoreIncomingMailslotMessages-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_IgnoreIncomingMailslotMessages-DFProperties-End -->

<!-- Netlogon_IgnoreIncomingMailslotMessages-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_IgnoreIncomingMailslotMessages |
| Friendly Name | Do not process incoming mailslot messages used for domain controller location based on NetBIOS domain names |
| Location | Computer Configuration |
| Path | System > Net Logon > DC Locator DNS Records |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| Registry Value Name | IgnoreIncomingMailslotMessages |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_IgnoreIncomingMailslotMessages-AdmxBacked-End -->

<!-- Netlogon_IgnoreIncomingMailslotMessages-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_IgnoreIncomingMailslotMessages-Examples-End -->

<!-- Netlogon_IgnoreIncomingMailslotMessages-End -->

<!-- Netlogon_LdapSrvPriority-Begin -->
## Netlogon_LdapSrvPriority

<!-- Netlogon_LdapSrvPriority-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_LdapSrvPriority-Applicability-End -->

<!-- Netlogon_LdapSrvPriority-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_LdapSrvPriority
```
<!-- Netlogon_LdapSrvPriority-OmaUri-End -->

<!-- Netlogon_LdapSrvPriority-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the Priority field in the SRV resource records registered by domain controllers (DC) to which this setting is applied. These DNS records are dynamically registered by the Net Logon service and are used to locate the DC.

The Priority field in the SRV record sets the preference for target hosts (specified in the SRV record's Target field). DNS clients that query for SRV resource records attempt to contact the first reachable host with the lowest priority number listed.

To specify the Priority in the DC Locator DNS SRV resource records, click Enabled, and then enter a value. The range of values is from 0 to 65535.

If you don't configure this policy setting, it isn't applied to any DCs, and DCs use their local configuration.
<!-- Netlogon_LdapSrvPriority-Description-End -->

<!-- Netlogon_LdapSrvPriority-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_LdapSrvPriority-Editable-End -->

<!-- Netlogon_LdapSrvPriority-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_LdapSrvPriority-DFProperties-End -->

<!-- Netlogon_LdapSrvPriority-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_LdapSrvPriority |
| Friendly Name | Set Priority in the DC Locator DNS SRV records |
| Location | Computer Configuration |
| Path | System > Net Logon > DC Locator DNS Records |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_LdapSrvPriority-AdmxBacked-End -->

<!-- Netlogon_LdapSrvPriority-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_LdapSrvPriority-Examples-End -->

<!-- Netlogon_LdapSrvPriority-End -->

<!-- Netlogon_LdapSrvWeight-Begin -->
## Netlogon_LdapSrvWeight

<!-- Netlogon_LdapSrvWeight-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_LdapSrvWeight-Applicability-End -->

<!-- Netlogon_LdapSrvWeight-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_LdapSrvWeight
```
<!-- Netlogon_LdapSrvWeight-OmaUri-End -->

<!-- Netlogon_LdapSrvWeight-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the Weight field in the SRV resource records registered by the domain controllers (DC) to which this setting is applied. These DNS records are dynamically registered by the Net Logon service, and they're used to locate the DC.

The Weight field in the SRV record can be used in addition to the Priority value to provide a load-balancing mechanism where multiple servers are specified in the SRV records Target field and are all set to the same priority. The probability with which the DNS client randomly selects the target host to be contacted is proportional to the Weight field value in the SRV record.

To specify the Weight in the DC Locator DNS SRV records, click Enabled, and then enter a value. The range of values is from 0 to 65535.

If you don't configure this policy setting, it isn't applied to any DCs, and DCs use their local configuration.
<!-- Netlogon_LdapSrvWeight-Description-End -->

<!-- Netlogon_LdapSrvWeight-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_LdapSrvWeight-Editable-End -->

<!-- Netlogon_LdapSrvWeight-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_LdapSrvWeight-DFProperties-End -->

<!-- Netlogon_LdapSrvWeight-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_LdapSrvWeight |
| Friendly Name | Set Weight in the DC Locator DNS SRV records |
| Location | Computer Configuration |
| Path | System > Net Logon > DC Locator DNS Records |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_LdapSrvWeight-AdmxBacked-End -->

<!-- Netlogon_LdapSrvWeight-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_LdapSrvWeight-Examples-End -->

<!-- Netlogon_LdapSrvWeight-End -->

<!-- Netlogon_MaximumLogFileSize-Begin -->
## Netlogon_MaximumLogFileSize

<!-- Netlogon_MaximumLogFileSize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_MaximumLogFileSize-Applicability-End -->

<!-- Netlogon_MaximumLogFileSize-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_MaximumLogFileSize
```
<!-- Netlogon_MaximumLogFileSize-OmaUri-End -->

<!-- Netlogon_MaximumLogFileSize-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the maximum size in bytes of the log file netlogon.log in the directory %windir%\debug when logging is enabled.

By default, the maximum size of the log file is 20MB.

- If you enable this policy setting, the maximum size of the log file is set to the specified size. Once this size is reached the log file is saved to netlogon.bak and netlogon.log is truncated. A reasonable value based on available storage should be specified.

- If you disable or don't configure this policy setting, the default behavior occurs as indicated above.
<!-- Netlogon_MaximumLogFileSize-Description-End -->

<!-- Netlogon_MaximumLogFileSize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_MaximumLogFileSize-Editable-End -->

<!-- Netlogon_MaximumLogFileSize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_MaximumLogFileSize-DFProperties-End -->

<!-- Netlogon_MaximumLogFileSize-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_MaximumLogFileSize |
| Friendly Name | Specify maximum log file size |
| Location | Computer Configuration |
| Path | System > Net Logon |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_MaximumLogFileSize-AdmxBacked-End -->

<!-- Netlogon_MaximumLogFileSize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_MaximumLogFileSize-Examples-End -->

<!-- Netlogon_MaximumLogFileSize-End -->

<!-- Netlogon_NdncSiteCoverage-Begin -->
## Netlogon_NdncSiteCoverage

<!-- Netlogon_NdncSiteCoverage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_NdncSiteCoverage-Applicability-End -->

<!-- Netlogon_NdncSiteCoverage-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_NdncSiteCoverage
```
<!-- Netlogon_NdncSiteCoverage-OmaUri-End -->

<!-- Netlogon_NdncSiteCoverage-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the sites for which the domain controllers (DC) that host the application directory partition should register the site-specific, application directory partition-specific DC Locator DNS SRV resource records. These records are registered in addition to the site-specific SRV records registered for the site where the DC resides, and records registered by a DC configured to register DC Locator DNS SRV records for those sites without a DC that are closest to it.

The application directory partition DC Locator DNS records and the site-specific SRV records are dynamically registered by the Net Logon service, and they're used to locate the application directory partition-specific DC. An Active Directory site is one or more well-connected TCP/IP subnets that allow administrators to configure Active Directory access and replication.

To specify the sites covered by the DC Locator application directory partition-specific DNS SRV records, click Enabled, and then enter the site names in a space-delimited format.

If you don't configure this policy setting, it isn't applied to any DCs, and DCs use their local configuration.
<!-- Netlogon_NdncSiteCoverage-Description-End -->

<!-- Netlogon_NdncSiteCoverage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_NdncSiteCoverage-Editable-End -->

<!-- Netlogon_NdncSiteCoverage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_NdncSiteCoverage-DFProperties-End -->

<!-- Netlogon_NdncSiteCoverage-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_NdncSiteCoverage |
| Friendly Name | Specify sites covered by the application directory partition DC Locator DNS SRV records |
| Location | Computer Configuration |
| Path | System > Net Logon > DC Locator DNS Records |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_NdncSiteCoverage-AdmxBacked-End -->

<!-- Netlogon_NdncSiteCoverage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_NdncSiteCoverage-Examples-End -->

<!-- Netlogon_NdncSiteCoverage-End -->

<!-- Netlogon_NegativeCachePeriod-Begin -->
## Netlogon_NegativeCachePeriod

<!-- Netlogon_NegativeCachePeriod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_NegativeCachePeriod-Applicability-End -->

<!-- Netlogon_NegativeCachePeriod-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_NegativeCachePeriod
```
<!-- Netlogon_NegativeCachePeriod-OmaUri-End -->

<!-- Netlogon_NegativeCachePeriod-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the amount of time (in seconds) the DC locator remembers that a domain controller (DC) couldn't be found in a domain. When a subsequent attempt to locate the DC occurs within the time set in this setting, DC Discovery immediately fails, without attempting to find the DC.

The default value for this setting is 45 seconds. The maximum value for this setting is 7 days (7*24*60*60). The minimum value for this setting is 0.

> [!WARNING]
> If the value for this setting is too large, a client won't attempt to find any DCs that were initially unavailable. If the value for this setting is too small, clients will attempt to find DCs even when none are available.
<!-- Netlogon_NegativeCachePeriod-Description-End -->

<!-- Netlogon_NegativeCachePeriod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_NegativeCachePeriod-Editable-End -->

<!-- Netlogon_NegativeCachePeriod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_NegativeCachePeriod-DFProperties-End -->

<!-- Netlogon_NegativeCachePeriod-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_NegativeCachePeriod |
| Friendly Name | Specify negative DC Discovery cache setting |
| Location | Computer Configuration |
| Path | System > Net Logon |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_NegativeCachePeriod-AdmxBacked-End -->

<!-- Netlogon_NegativeCachePeriod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_NegativeCachePeriod-Examples-End -->

<!-- Netlogon_NegativeCachePeriod-End -->

<!-- Netlogon_NetlogonShareCompatibilityMode-Begin -->
## Netlogon_NetlogonShareCompatibilityMode

<!-- Netlogon_NetlogonShareCompatibilityMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_NetlogonShareCompatibilityMode-Applicability-End -->

<!-- Netlogon_NetlogonShareCompatibilityMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_NetlogonShareCompatibilityMode
```
<!-- Netlogon_NetlogonShareCompatibilityMode-OmaUri-End -->

<!-- Netlogon_NetlogonShareCompatibilityMode-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether or not the Netlogon share created by the Net Logon service on a domain controller (DC) should support compatibility in file sharing semantics with earlier applications.

- If you enable this policy setting, the Netlogon share will honor file sharing semantics that grant requests for exclusive read access to files on the share even when the caller has only read permission.

- If you disable or don't configure this policy setting, the Netlogon share will grant shared read access to files on the share when exclusive access is requested and the caller has only read permission.

By default, the Netlogon share will grant shared read access to files on the share when exclusive access is requested.

> [!NOTE]
> The Netlogon share is a share created by the Net Logon service for use by client machines in the domain. The default behavior of the Netlogon share ensures that no application with only read permission to files on the Netlogon share can lock the files by requesting exclusive read access, which might prevent Group Policy settings from being updated on clients in the domain. When this setting is enabled, an application that relies on the ability to lock files on the Netlogon share with only read permission will be able to deny Group Policy clients from reading the files, and in general the availability of the Netlogon share on the domain will be decreased.

- If you enable this policy setting, domain administrators should ensure that the only applications using the exclusive read capability in the domain are those approved by the administrator.
<!-- Netlogon_NetlogonShareCompatibilityMode-Description-End -->

<!-- Netlogon_NetlogonShareCompatibilityMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_NetlogonShareCompatibilityMode-Editable-End -->

<!-- Netlogon_NetlogonShareCompatibilityMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_NetlogonShareCompatibilityMode-DFProperties-End -->

<!-- Netlogon_NetlogonShareCompatibilityMode-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_NetlogonShareCompatibilityMode |
| Friendly Name | Set Netlogon share compatibility |
| Location | Computer Configuration |
| Path | System > Net Logon |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| Registry Value Name | AllowExclusiveScriptsShareAccess |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_NetlogonShareCompatibilityMode-AdmxBacked-End -->

<!-- Netlogon_NetlogonShareCompatibilityMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_NetlogonShareCompatibilityMode-Examples-End -->

<!-- Netlogon_NetlogonShareCompatibilityMode-End -->

<!-- Netlogon_NonBackgroundSuccessfulRefreshPeriod-Begin -->
## Netlogon_NonBackgroundSuccessfulRefreshPeriod

<!-- Netlogon_NonBackgroundSuccessfulRefreshPeriod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_NonBackgroundSuccessfulRefreshPeriod-Applicability-End -->

<!-- Netlogon_NonBackgroundSuccessfulRefreshPeriod-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_NonBackgroundSuccessfulRefreshPeriod
```
<!-- Netlogon_NonBackgroundSuccessfulRefreshPeriod-OmaUri-End -->

<!-- Netlogon_NonBackgroundSuccessfulRefreshPeriod-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines when a successful DC cache entry is refreshed. This policy setting is applied to caller programs that don't periodically attempt to locate DCs, and it's applied before the returning the DC information to the caller program. This policy setting is relevant to only those callers of DsGetDcName that haven't specified the DS_BACKGROUND_ONLY flag.

The default value for this setting is 30 minutes (1800). The maximum value for this setting is (4294967200), while the maximum that isn't treated as infinity is 49 days (49*24*60*60=4233600). Any larger value will be treated as infinity. The minimum value for this setting is to always refresh (0).
<!-- Netlogon_NonBackgroundSuccessfulRefreshPeriod-Description-End -->

<!-- Netlogon_NonBackgroundSuccessfulRefreshPeriod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_NonBackgroundSuccessfulRefreshPeriod-Editable-End -->

<!-- Netlogon_NonBackgroundSuccessfulRefreshPeriod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_NonBackgroundSuccessfulRefreshPeriod-DFProperties-End -->

<!-- Netlogon_NonBackgroundSuccessfulRefreshPeriod-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_NonBackgroundSuccessfulRefreshPeriod |
| Friendly Name | Specify positive periodic DC Cache refresh for non-background callers |
| Location | Computer Configuration |
| Path | System > Net Logon |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_NonBackgroundSuccessfulRefreshPeriod-AdmxBacked-End -->

<!-- Netlogon_NonBackgroundSuccessfulRefreshPeriod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_NonBackgroundSuccessfulRefreshPeriod-Examples-End -->

<!-- Netlogon_NonBackgroundSuccessfulRefreshPeriod-End -->

<!-- Netlogon_PingUrgencyMode-Begin -->
## Netlogon_PingUrgencyMode

<!-- Netlogon_PingUrgencyMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_PingUrgencyMode-Applicability-End -->

<!-- Netlogon_PingUrgencyMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_PingUrgencyMode
```
<!-- Netlogon_PingUrgencyMode-OmaUri-End -->

<!-- Netlogon_PingUrgencyMode-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures whether the computers to which this setting is applied are more aggressive when trying to locate a domain controller (DC).

When an environment has a large number of DCs running both old and new operating systems, the default DC locator discovery behavior may be insufficient to find DCs running a newer operating system. This policy setting can be enabled to configure DC locator to be more aggressive about trying to locate a DC in such an environment, by pinging DCs at a higher frequency. Enabling this setting may result in additional network traffic and increased load on DCs. You should disable this setting once all DCs are running the same OS version.

The allowable values for this setting result in the following behaviors:

1 - Computers will ping DCs at the normal frequency.

2 - Computers will ping DCs at the higher frequency.

To specify this behavior, click Enabled and then enter a value. The range of values is from 1 to 2.

If you don't configure this policy setting, it isn't applied to any computers, and computers use their local configuration.
<!-- Netlogon_PingUrgencyMode-Description-End -->

<!-- Netlogon_PingUrgencyMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_PingUrgencyMode-Editable-End -->

<!-- Netlogon_PingUrgencyMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_PingUrgencyMode-DFProperties-End -->

<!-- Netlogon_PingUrgencyMode-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_PingUrgencyMode |
| Friendly Name | Use urgent mode when pinging domain controllers |
| Location | Computer Configuration |
| Path | System > Net Logon |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_PingUrgencyMode-AdmxBacked-End -->

<!-- Netlogon_PingUrgencyMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_PingUrgencyMode-Examples-End -->

<!-- Netlogon_PingUrgencyMode-End -->

<!-- Netlogon_ScavengeInterval-Begin -->
## Netlogon_ScavengeInterval

<!-- Netlogon_ScavengeInterval-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_ScavengeInterval-Applicability-End -->

<!-- Netlogon_ScavengeInterval-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_ScavengeInterval
```
<!-- Netlogon_ScavengeInterval-OmaUri-End -->

<!-- Netlogon_ScavengeInterval-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the interval at which Netlogon performs the following scavenging operations:

- Checks if a password on a secure channel needs to be modified, and modifies it if necessary.

- On the domain controllers (DC), discovers a DC that hasn't been discovered.

- On the PDC, attempts to add the `<DomainName>`[1B] NetBIOS name if it hasn't already been successfully added.

None of these operations are critical. 15 minutes is optimal in all but extreme cases. For instance, if a DC is separated from a trusted domain by an expensive (e.g., ISDN) line, this parameter might be adjusted upward to avoid frequent automatic discovery of DCs in a trusted domain.

To enable the setting, click Enabled, and then specify the interval in seconds.
<!-- Netlogon_ScavengeInterval-Description-End -->

<!-- Netlogon_ScavengeInterval-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_ScavengeInterval-Editable-End -->

<!-- Netlogon_ScavengeInterval-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_ScavengeInterval-DFProperties-End -->

<!-- Netlogon_ScavengeInterval-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_ScavengeInterval |
| Friendly Name | Set scavenge interval |
| Location | Computer Configuration |
| Path | System > Net Logon |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_ScavengeInterval-AdmxBacked-End -->

<!-- Netlogon_ScavengeInterval-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_ScavengeInterval-Examples-End -->

<!-- Netlogon_ScavengeInterval-End -->

<!-- Netlogon_SiteCoverage-Begin -->
## Netlogon_SiteCoverage

<!-- Netlogon_SiteCoverage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_SiteCoverage-Applicability-End -->

<!-- Netlogon_SiteCoverage-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_SiteCoverage
```
<!-- Netlogon_SiteCoverage-OmaUri-End -->

<!-- Netlogon_SiteCoverage-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the sites for which the domain controllers (DC) register the site-specific DC Locator DNS SRV resource records. These records are registered in addition to the site-specific SRV records registered for the site where the DC resides, and records registered by a DC configured to register DC Locator DNS SRV records for those sites without a DC that are closest to it.

The DC Locator DNS records are dynamically registered by the Net Logon service, and they're used to locate the DC. An Active Directory site is one or more well-connected TCP/IP subnets that allow administrators to configure Active Directory access and replication.

To specify the sites covered by the DC Locator DNS SRV records, click Enabled, and then enter the sites names in a space-delimited format.

If you don't configure this policy setting, it isn't applied to any DCs, and DCs use their local configuration.
<!-- Netlogon_SiteCoverage-Description-End -->

<!-- Netlogon_SiteCoverage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_SiteCoverage-Editable-End -->

<!-- Netlogon_SiteCoverage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_SiteCoverage-DFProperties-End -->

<!-- Netlogon_SiteCoverage-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_SiteCoverage |
| Friendly Name | Specify sites covered by the DC Locator DNS SRV records |
| Location | Computer Configuration |
| Path | System > Net Logon > DC Locator DNS Records |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_SiteCoverage-AdmxBacked-End -->

<!-- Netlogon_SiteCoverage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_SiteCoverage-Examples-End -->

<!-- Netlogon_SiteCoverage-End -->

<!-- Netlogon_SiteName-Begin -->
## Netlogon_SiteName

<!-- Netlogon_SiteName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_SiteName-Applicability-End -->

<!-- Netlogon_SiteName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_SiteName
```
<!-- Netlogon_SiteName-OmaUri-End -->

<!-- Netlogon_SiteName-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the Active Directory site to which computers belong.

An Active Directory site is one or more well-connected TCP/IP subnets that allow administrators to configure Active Directory access and replication.

To specify the site name for this setting, click Enabled, and then enter the site name. When the site to which a computer belongs isn't specified, the computer automatically discovers its site from Active Directory.

If you don't configure this policy setting, it isn't applied to any computers, and computers use their local configuration.
<!-- Netlogon_SiteName-Description-End -->

<!-- Netlogon_SiteName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_SiteName-Editable-End -->

<!-- Netlogon_SiteName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_SiteName-DFProperties-End -->

<!-- Netlogon_SiteName-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_SiteName |
| Friendly Name | Specify site name |
| Location | Computer Configuration |
| Path | System > Net Logon |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_SiteName-AdmxBacked-End -->

<!-- Netlogon_SiteName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_SiteName-Examples-End -->

<!-- Netlogon_SiteName-End -->

<!-- Netlogon_SysvolShareCompatibilityMode-Begin -->
## Netlogon_SysvolShareCompatibilityMode

<!-- Netlogon_SysvolShareCompatibilityMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_SysvolShareCompatibilityMode-Applicability-End -->

<!-- Netlogon_SysvolShareCompatibilityMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_SysvolShareCompatibilityMode
```
<!-- Netlogon_SysvolShareCompatibilityMode-OmaUri-End -->

<!-- Netlogon_SysvolShareCompatibilityMode-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether or not the SYSVOL share created by the Net Logon service on a domain controller (DC) should support compatibility in file sharing semantics with earlier applications.

When this setting is enabled, the SYSVOL share will honor file sharing semantics that grant requests for exclusive read access to files on the share even when the caller has only read permission.

When this setting is disabled or not configured, the SYSVOL share will grant shared read access to files on the share when exclusive access is requested and the caller has only read permission.

By default, the SYSVOL share will grant shared read access to files on the share when exclusive access is requested.

> [!NOTE]
> The SYSVOL share is a share created by the Net Logon service for use by Group Policy clients in the domain. The default behavior of the SYSVOL share ensures that no application with only read permission to files on the sysvol share can lock the files by requesting exclusive read access, which might prevent Group Policy settings from being updated on clients in the domain. When this setting is enabled, an application that relies on the ability to lock files on the SYSVOL share with only read permission will be able to deny Group Policy clients from reading the files, and in general the availability of the SYSVOL share on the domain will be decreased.

If you enable this policy setting, domain administrators should ensure that the only applications using the exclusive read capability in the domain are those approved by the administrator.
<!-- Netlogon_SysvolShareCompatibilityMode-Description-End -->

<!-- Netlogon_SysvolShareCompatibilityMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_SysvolShareCompatibilityMode-Editable-End -->

<!-- Netlogon_SysvolShareCompatibilityMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_SysvolShareCompatibilityMode-DFProperties-End -->

<!-- Netlogon_SysvolShareCompatibilityMode-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_SysvolShareCompatibilityMode |
| Friendly Name | Set SYSVOL share compatibility |
| Location | Computer Configuration |
| Path | System > Net Logon |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| Registry Value Name | AllowExclusiveSysvolShareAccess |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_SysvolShareCompatibilityMode-AdmxBacked-End -->

<!-- Netlogon_SysvolShareCompatibilityMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_SysvolShareCompatibilityMode-Examples-End -->

<!-- Netlogon_SysvolShareCompatibilityMode-End -->

<!-- Netlogon_TryNextClosestSite-Begin -->
## Netlogon_TryNextClosestSite

<!-- Netlogon_TryNextClosestSite-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_TryNextClosestSite-Applicability-End -->

<!-- Netlogon_TryNextClosestSite-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_TryNextClosestSite
```
<!-- Netlogon_TryNextClosestSite-OmaUri-End -->

<!-- Netlogon_TryNextClosestSite-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables DC Locator to attempt to locate a DC in the nearest site based on the site link cost if a DC in same the site isn't found. In scenarios with multiple sites, failing over to the try next closest site during DC Location streamlines network traffic more effectively.

The DC Locator service is used by clients to find domain controllers for their Active Directory domain. The default behavior for DC Locator is to find a DC in the same site. If none are found in the same site, a DC in another site, which might be several site-hops away, could be returned by DC Locator. Site proximity between two sites is determined by the total site-link cost between them. A site is closer if it has a lower site link cost than another site with a higher site link cost.

- If you enable this policy setting, Try Next Closest Site DC Location will be turned on for the computer.

- If you disable this policy setting, Try Next Closest Site DC Location won't be used by default for the computer. However, if a DC Locator call is made using the DS_TRY_NEXTCLOSEST_SITE flag explicitly, the Try Next Closest Site behavior is honored.

- If you don't configure this policy setting, Try Next Closest Site DC Location won't be used by default for the machine. If the DS_TRY_NEXTCLOSEST_SITE flag is used explicitly, the Next Closest Site behavior will be used.
<!-- Netlogon_TryNextClosestSite-Description-End -->

<!-- Netlogon_TryNextClosestSite-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_TryNextClosestSite-Editable-End -->

<!-- Netlogon_TryNextClosestSite-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_TryNextClosestSite-DFProperties-End -->

<!-- Netlogon_TryNextClosestSite-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_TryNextClosestSite |
| Friendly Name | Try Next Closest Site |
| Location | Computer Configuration |
| Path | System > Net Logon > DC Locator DNS Records |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| Registry Value Name | TryNextClosestSite |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_TryNextClosestSite-AdmxBacked-End -->

<!-- Netlogon_TryNextClosestSite-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_TryNextClosestSite-Examples-End -->

<!-- Netlogon_TryNextClosestSite-End -->

<!-- Netlogon_UseDynamicDns-Begin -->
## Netlogon_UseDynamicDns

<!-- Netlogon_UseDynamicDns-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Netlogon_UseDynamicDns-Applicability-End -->

<!-- Netlogon_UseDynamicDns-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Netlogon/Netlogon_UseDynamicDns
```
<!-- Netlogon_UseDynamicDns-OmaUri-End -->

<!-- Netlogon_UseDynamicDns-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines if dynamic registration of the domain controller (DC) locator DNS resource records is enabled. These DNS records are dynamically registered by the Net Logon service and are used by the Locator algorithm to locate the DC.

- If you enable this policy setting, DCs to which this setting is applied dynamically register DC Locator DNS resource records through dynamic DNS update-enabled network connections.

- If you disable this policy setting, DCs won't register DC Locator DNS resource records.

- If you don't configure this policy setting, it isn't applied to any DCs, and DCs use their local configuration.
<!-- Netlogon_UseDynamicDns-Description-End -->

<!-- Netlogon_UseDynamicDns-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Netlogon_UseDynamicDns-Editable-End -->

<!-- Netlogon_UseDynamicDns-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Netlogon_UseDynamicDns-DFProperties-End -->

<!-- Netlogon_UseDynamicDns-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Netlogon_UseDynamicDns |
| Friendly Name | Specify dynamic registration of the DC Locator DNS Records |
| Location | Computer Configuration |
| Path | System > Net Logon > DC Locator DNS Records |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| Registry Value Name | UseDynamicDns |
| ADMX File Name | Netlogon.admx |
<!-- Netlogon_UseDynamicDns-AdmxBacked-End -->

<!-- Netlogon_UseDynamicDns-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Netlogon_UseDynamicDns-Examples-End -->

<!-- Netlogon_UseDynamicDns-End -->

<!-- ADMX_Netlogon-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Netlogon-CspMoreInfo-End -->

<!-- ADMX_Netlogon-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)

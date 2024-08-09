---
title: ADMX_DnsClient Policy CSP
description: Learn more about the ADMX_DnsClient Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_DnsClient-Begin -->
# Policy CSP - ADMX_DnsClient

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_DnsClient-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_DnsClient-Editable-End -->

<!-- DNS_AllowFQDNNetBiosQueries-Begin -->
## DNS_AllowFQDNNetBiosQueries

<!-- DNS_AllowFQDNNetBiosQueries-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DNS_AllowFQDNNetBiosQueries-Applicability-End -->

<!-- DNS_AllowFQDNNetBiosQueries-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/DNS_AllowFQDNNetBiosQueries
```
<!-- DNS_AllowFQDNNetBiosQueries-OmaUri-End -->

<!-- DNS_AllowFQDNNetBiosQueries-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies that NetBIOS over TCP/IP (NetBT) queries are issued for fully qualified domain names.

- If you enable this policy setting, NetBT queries will be issued for multi-label and fully qualified domain names such as "www.example.com" in addition to single-label names.

- If you disable this policy setting, or if you don't configure this policy setting, NetBT queries will only be issued for single-label names such as "example" and not for multi-label and fully qualified domain names.
<!-- DNS_AllowFQDNNetBiosQueries-Description-End -->

<!-- DNS_AllowFQDNNetBiosQueries-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DNS_AllowFQDNNetBiosQueries-Editable-End -->

<!-- DNS_AllowFQDNNetBiosQueries-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DNS_AllowFQDNNetBiosQueries-DFProperties-End -->

<!-- DNS_AllowFQDNNetBiosQueries-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DNS_AllowFQDNNetBiosQueries |
| Friendly Name | Allow NetBT queries for fully qualified domain names |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DNSClient |
| Registry Value Name | QueryNetBTFQDN |
| ADMX File Name | DnsClient.admx |
<!-- DNS_AllowFQDNNetBiosQueries-AdmxBacked-End -->

<!-- DNS_AllowFQDNNetBiosQueries-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DNS_AllowFQDNNetBiosQueries-Examples-End -->

<!-- DNS_AllowFQDNNetBiosQueries-End -->

<!-- DNS_AppendToMultiLabelName-Begin -->
## DNS_AppendToMultiLabelName

<!-- DNS_AppendToMultiLabelName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DNS_AppendToMultiLabelName-Applicability-End -->

<!-- DNS_AppendToMultiLabelName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/DNS_AppendToMultiLabelName
```
<!-- DNS_AppendToMultiLabelName-OmaUri-End -->

<!-- DNS_AppendToMultiLabelName-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies that computers may attach suffixes to an unqualified multi-label name before sending subsequent DNS queries if the original name query fails.

A name containing dots, but not dot-terminated, is called an unqualified multi-label name, for example "server.corp" is an unqualified multi-label name. The name "server.corp.contoso.com" is an example of a fully qualified name because it contains a terminating dot.

For example, if attaching suffixes is allowed, an unqualified multi-label name query for "server.corp" will be queried by the DNS client first. If the query succeeds, the response is returned to the client. If the query fails, the unqualified multi-label name is appended with DNS suffixes. These suffixes can be derived from a combination of the local DNS client's primary domain suffix, a connection-specific domain suffix, and a DNS suffix search list.

If attaching suffixes is allowed, and a DNS client with a primary domain suffix of "contoso.com" performs a query for "server.corp" the DNS client will send a query for "server.corp" first, and then a query for "server.corp.contoso.com" second if the first query fails.

- If you enable this policy setting, suffixes are allowed to be appended to an unqualified multi-label name if the original name query fails.

- If you disable this policy setting, no suffixes are appended to unqualified multi-label name queries if the original name query fails.

- If you don't configure this policy setting, computers will use their local DNS client settings to determine the query behavior for unqualified multi-label names.
<!-- DNS_AppendToMultiLabelName-Description-End -->

<!-- DNS_AppendToMultiLabelName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DNS_AppendToMultiLabelName-Editable-End -->

<!-- DNS_AppendToMultiLabelName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DNS_AppendToMultiLabelName-DFProperties-End -->

<!-- DNS_AppendToMultiLabelName-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DNS_AppendToMultiLabelName |
| Friendly Name | Allow DNS suffix appending to unqualified multi-label name queries |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DNSClient |
| Registry Value Name | AppendToMultiLabelName |
| ADMX File Name | DnsClient.admx |
<!-- DNS_AppendToMultiLabelName-AdmxBacked-End -->

<!-- DNS_AppendToMultiLabelName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DNS_AppendToMultiLabelName-Examples-End -->

<!-- DNS_AppendToMultiLabelName-End -->

<!-- DNS_Domain-Begin -->
## DNS_Domain

<!-- DNS_Domain-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DNS_Domain-Applicability-End -->

<!-- DNS_Domain-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/DNS_Domain
```
<!-- DNS_Domain-OmaUri-End -->

<!-- DNS_Domain-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies a connection-specific DNS suffix. This policy setting supersedes local connection-specific DNS suffixes, and those configured using DHCP.

To use this policy setting, click Enabled, and then enter a string value representing the DNS suffix.

- If you enable this policy setting, the DNS suffix that you enter will be applied to all network connections used by computers that receive this policy setting.

- If you disable this policy setting, or if you don't configure this policy setting, computers will use the local or DHCP supplied connection specific DNS suffix, if configured.
<!-- DNS_Domain-Description-End -->

<!-- DNS_Domain-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DNS_Domain-Editable-End -->

<!-- DNS_Domain-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DNS_Domain-DFProperties-End -->

<!-- DNS_Domain-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DNS_Domain |
| Friendly Name | Connection-specific DNS suffix |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DNSClient |
| ADMX File Name | DnsClient.admx |
<!-- DNS_Domain-AdmxBacked-End -->

<!-- DNS_Domain-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DNS_Domain-Examples-End -->

<!-- DNS_Domain-End -->

<!-- DNS_DomainNameDevolutionLevel-Begin -->
## DNS_DomainNameDevolutionLevel

<!-- DNS_DomainNameDevolutionLevel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DNS_DomainNameDevolutionLevel-Applicability-End -->

<!-- DNS_DomainNameDevolutionLevel-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/DNS_DomainNameDevolutionLevel
```
<!-- DNS_DomainNameDevolutionLevel-OmaUri-End -->

<!-- DNS_DomainNameDevolutionLevel-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies if the devolution level that DNS clients will use if they perform primary DNS suffix devolution during the name resolution process.

With devolution, a DNS client creates queries by appending a single-label, unqualified domain name with the parent suffix of the primary DNS suffix name, and the parent of that suffix, and so on, stopping if the name is successfully resolved or at a level determined by devolution settings. Devolution can be used when a user or application submits a query for a single-label domain name.

The DNS client appends DNS suffixes to the single-label, unqualified domain name based on the state of the Append primary and connection specific DNS suffixes radio button and Append parent suffixes of the primary DNS suffix check box on the DNS tab in Advanced TCP/IP Settings for the Internet Protocol (TCP/IP) Properties dialog box.

Devolution isn't enabled if a global suffix search list is configured using Group Policy.

If a global suffix search list isn't configured, and the Append primary and connection specific DNS suffixes radio button is selected, the DNS client appends the following names to a single-label name when it sends DNS queries:

The primary DNS suffix, as specified on the Computer Name tab of the System control panel.

Each connection-specific DNS suffix, assigned either through DHCP or specified in the DNS suffix for this connection box on the DNS tab in the Advanced TCP/IP Settings dialog box for each connection.

For example, when a user submits a query for a single-label name such as "example," the DNS client attaches a suffix such as "microsoft.com" resulting in the query "example.microsoft.com," before sending the query to a DNS server.

If a DNS suffix search list isn't specified, the DNS client attaches the primary DNS suffix to a single-label name. If this query fails, the connection-specific DNS suffix is attached for a new query. If none of these queries are resolved, the client devolves the primary DNS suffix of the computer (drops the leftmost label of the primary DNS suffix), attaches this devolved primary DNS suffix to the single-label name, and submits this new query to a DNS server.

For example, if the primary DNS suffix ooo.aaa.microsoft.com is attached to the non-dot-terminated single-label name "example," and the DNS query for example.ooo.aaa.microsoft.com fails, the DNS client devolves the primary DNS suffix (drops the leftmost label) till the specified devolution level, and submits a query for example.aaa.microsoft.com. If this query fails, the primary DNS suffix is devolved further if it's under specified devolution level and the query example.microsoft.com is submitted. If this query fails, devolution continues if it's under specified devolution level and the query example.microsoft.com is submitted, corresponding to a devolution level of two. The primary DNS suffix can't be devolved beyond a devolution level of two. The devolution level can be configured using this policy setting. The default devolution level is two.

- If you enable this policy setting and DNS devolution is also enabled, DNS clients use the DNS devolution level that you specify.

- If this policy setting is disabled, or if this policy setting isn't configured, DNS clients use the default devolution level of two provided that DNS devolution is enabled.
<!-- DNS_DomainNameDevolutionLevel-Description-End -->

<!-- DNS_DomainNameDevolutionLevel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DNS_DomainNameDevolutionLevel-Editable-End -->

<!-- DNS_DomainNameDevolutionLevel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DNS_DomainNameDevolutionLevel-DFProperties-End -->

<!-- DNS_DomainNameDevolutionLevel-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DNS_DomainNameDevolutionLevel |
| Friendly Name | Primary DNS suffix devolution level |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DNSClient |
| Registry Value Name | EnableDevolutionLevelControl |
| ADMX File Name | DnsClient.admx |
<!-- DNS_DomainNameDevolutionLevel-AdmxBacked-End -->

<!-- DNS_DomainNameDevolutionLevel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DNS_DomainNameDevolutionLevel-Examples-End -->

<!-- DNS_DomainNameDevolutionLevel-End -->

<!-- DNS_IdnEncoding-Begin -->
## DNS_IdnEncoding

<!-- DNS_IdnEncoding-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DNS_IdnEncoding-Applicability-End -->

<!-- DNS_IdnEncoding-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/DNS_IdnEncoding
```
<!-- DNS_IdnEncoding-OmaUri-End -->

<!-- DNS_IdnEncoding-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies whether the DNS client should convert internationalized domain names (IDNs) to Punycode when the computer is on non-domain networks with no WINS servers configured.

- If this policy setting is enabled, IDNs aren't converted to Punycode.

- If this policy setting is disabled, or if this policy setting isn't configured, IDNs are converted to Punycode when the computer is on non-domain networks with no WINS servers configured.
<!-- DNS_IdnEncoding-Description-End -->

<!-- DNS_IdnEncoding-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DNS_IdnEncoding-Editable-End -->

<!-- DNS_IdnEncoding-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DNS_IdnEncoding-DFProperties-End -->

<!-- DNS_IdnEncoding-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DNS_IdnEncoding |
| Friendly Name | Turn off IDN encoding |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DNSClient |
| Registry Value Name | DisableIdnEncoding |
| ADMX File Name | DnsClient.admx |
<!-- DNS_IdnEncoding-AdmxBacked-End -->

<!-- DNS_IdnEncoding-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DNS_IdnEncoding-Examples-End -->

<!-- DNS_IdnEncoding-End -->

<!-- DNS_IdnMapping-Begin -->
## DNS_IdnMapping

<!-- DNS_IdnMapping-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DNS_IdnMapping-Applicability-End -->

<!-- DNS_IdnMapping-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/DNS_IdnMapping
```
<!-- DNS_IdnMapping-OmaUri-End -->

<!-- DNS_IdnMapping-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies whether the DNS client should convert internationalized domain names (IDNs) to the Nameprep form, a canonical Unicode representation of the string.

- If this policy setting is enabled, IDNs are converted to the Nameprep form.

- If this policy setting is disabled, or if this policy setting isn't configured, IDNs aren't converted to the Nameprep form.
<!-- DNS_IdnMapping-Description-End -->

<!-- DNS_IdnMapping-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DNS_IdnMapping-Editable-End -->

<!-- DNS_IdnMapping-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DNS_IdnMapping-DFProperties-End -->

<!-- DNS_IdnMapping-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DNS_IdnMapping |
| Friendly Name | IDN mapping |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DNSClient |
| Registry Value Name | EnableIdnMapping |
| ADMX File Name | DnsClient.admx |
<!-- DNS_IdnMapping-AdmxBacked-End -->

<!-- DNS_IdnMapping-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DNS_IdnMapping-Examples-End -->

<!-- DNS_IdnMapping-End -->

<!-- DNS_NameServer-Begin -->
## DNS_NameServer

<!-- DNS_NameServer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DNS_NameServer-Applicability-End -->

<!-- DNS_NameServer-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/DNS_NameServer
```
<!-- DNS_NameServer-OmaUri-End -->

<!-- DNS_NameServer-Description-Begin -->
<!-- Description-Source-ADMX -->
Defines the DNS servers to which a computer sends queries when it attempts to resolve names. This policy setting supersedes the list of DNS servers configured locally and those configured using DHCP.

To use this policy setting, click Enabled, and then enter a space-delimited list of IP addresses in the available field. To use this policy setting, you must enter at least one IP address.

- If you enable this policy setting, the list of DNS servers is applied to all network connections used by computers that receive this policy setting.

- If you disable this policy setting, or if you don't configure this policy setting, computers will use the local or DHCP supplied list of DNS servers, if configured.
<!-- DNS_NameServer-Description-End -->

<!-- DNS_NameServer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DNS_NameServer-Editable-End -->

<!-- DNS_NameServer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DNS_NameServer-DFProperties-End -->

<!-- DNS_NameServer-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DNS_NameServer |
| Friendly Name | DNS servers |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DNSClient |
| ADMX File Name | DnsClient.admx |
<!-- DNS_NameServer-AdmxBacked-End -->

<!-- DNS_NameServer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DNS_NameServer-Examples-End -->

<!-- DNS_NameServer-End -->

<!-- DNS_PreferLocalResponsesOverLowerOrderDns-Begin -->
## DNS_PreferLocalResponsesOverLowerOrderDns

<!-- DNS_PreferLocalResponsesOverLowerOrderDns-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DNS_PreferLocalResponsesOverLowerOrderDns-Applicability-End -->

<!-- DNS_PreferLocalResponsesOverLowerOrderDns-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/DNS_PreferLocalResponsesOverLowerOrderDns
```
<!-- DNS_PreferLocalResponsesOverLowerOrderDns-OmaUri-End -->

<!-- DNS_PreferLocalResponsesOverLowerOrderDns-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies that responses from link local name resolution protocols received over a network interface that's higher in the binding order are preferred over DNS responses from network interfaces lower in the binding order. Examples of link local name resolution protocols include link local multicast name resolution (LLMNR) and NetBIOS over TCP/IP (NetBT).

- If you enable this policy setting, responses from link local protocols will be preferred over DNS responses if the local responses are from a network with a higher binding order.

- If you disable this policy setting, or if you don't configure this policy setting, then DNS responses from networks lower in the binding order will be preferred over responses from link local protocols received from networks higher in the binding order.

> [!NOTE]
> This policy setting is applicable only if the turn off smart multi-homed name resolution policy setting is disabled or not configured.
<!-- DNS_PreferLocalResponsesOverLowerOrderDns-Description-End -->

<!-- DNS_PreferLocalResponsesOverLowerOrderDns-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DNS_PreferLocalResponsesOverLowerOrderDns-Editable-End -->

<!-- DNS_PreferLocalResponsesOverLowerOrderDns-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DNS_PreferLocalResponsesOverLowerOrderDns-DFProperties-End -->

<!-- DNS_PreferLocalResponsesOverLowerOrderDns-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DNS_PreferLocalResponsesOverLowerOrderDns |
| Friendly Name | Prefer link local responses over DNS when received over a network with higher precedence |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DNSClient |
| Registry Value Name | PreferLocalOverLowerBindingDNS |
| ADMX File Name | DnsClient.admx |
<!-- DNS_PreferLocalResponsesOverLowerOrderDns-AdmxBacked-End -->

<!-- DNS_PreferLocalResponsesOverLowerOrderDns-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DNS_PreferLocalResponsesOverLowerOrderDns-Examples-End -->

<!-- DNS_PreferLocalResponsesOverLowerOrderDns-End -->

<!-- DNS_PrimaryDnsSuffix-Begin -->
## DNS_PrimaryDnsSuffix

<!-- DNS_PrimaryDnsSuffix-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DNS_PrimaryDnsSuffix-Applicability-End -->

<!-- DNS_PrimaryDnsSuffix-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/DNS_PrimaryDnsSuffix
```
<!-- DNS_PrimaryDnsSuffix-OmaUri-End -->

<!-- DNS_PrimaryDnsSuffix-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the primary DNS suffix used by computers in DNS name registration and DNS name resolution.

To use this policy setting, click Enabled and enter the entire primary DNS suffix you want to assign. For example: microsoft.com.

> [!IMPORTANT]
> In order for changes to this policy setting to be applied on computers that receive it, you must restart Windows.

- If you enable this policy setting, it supersedes the primary DNS suffix configured in the DNS Suffix and NetBIOS Computer Name dialog box using the System control panel.

You can use this policy setting to prevent users, including local administrators, from changing the primary DNS suffix.

- If you disable this policy setting, or if you don't configure this policy setting, each computer uses its local primary DNS suffix, which is usually the DNS name of Active Directory domain to which it's joined.
<!-- DNS_PrimaryDnsSuffix-Description-End -->

<!-- DNS_PrimaryDnsSuffix-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DNS_PrimaryDnsSuffix-Editable-End -->

<!-- DNS_PrimaryDnsSuffix-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DNS_PrimaryDnsSuffix-DFProperties-End -->

<!-- DNS_PrimaryDnsSuffix-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DNS_PrimaryDnsSuffix |
| Friendly Name | Primary DNS suffix |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\System\DNSClient |
| ADMX File Name | DnsClient.admx |
<!-- DNS_PrimaryDnsSuffix-AdmxBacked-End -->

<!-- DNS_PrimaryDnsSuffix-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DNS_PrimaryDnsSuffix-Examples-End -->

<!-- DNS_PrimaryDnsSuffix-End -->

<!-- DNS_RegisterAdapterName-Begin -->
## DNS_RegisterAdapterName

<!-- DNS_RegisterAdapterName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DNS_RegisterAdapterName-Applicability-End -->

<!-- DNS_RegisterAdapterName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/DNS_RegisterAdapterName
```
<!-- DNS_RegisterAdapterName-OmaUri-End -->

<!-- DNS_RegisterAdapterName-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies if a computer performing dynamic DNS registration will register A and PTR resource records with a concatenation of its computer name and a connection-specific DNS suffix, in addition to registering these records with a concatenation of its computer name and the primary DNS suffix.

By default, a DNS client performing dynamic DNS registration registers A and PTR resource records with a concatenation of its computer name and the primary DNS suffix. For example, a computer name of mycomputer and a primary DNS suffix of microsoft.com will be registered as: mycomputer.microsoft.com.

- If you enable this policy setting, a computer will register A and PTR resource records with its connection-specific DNS suffix, in addition to the primary DNS suffix. This applies to all network connections used by computers that receive this policy setting.

For example, with a computer name of mycomputer, a primary DNS suffix of microsoft.com, and a connection specific DNS suffix of VPNconnection, a computer will register A and PTR resource records for mycomputer. VPNconnection and mycomputer.microsoft.com when this policy setting is enabled.

> [!IMPORTANT]
> This policy setting is ignored on a DNS client computer if dynamic DNS registration is disabled.

- If you disable this policy setting, or if you don't configure this policy setting, a DNS client computer won't register any A and PTR resource records using a connection-specific DNS suffix.
<!-- DNS_RegisterAdapterName-Description-End -->

<!-- DNS_RegisterAdapterName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DNS_RegisterAdapterName-Editable-End -->

<!-- DNS_RegisterAdapterName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DNS_RegisterAdapterName-DFProperties-End -->

<!-- DNS_RegisterAdapterName-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DNS_RegisterAdapterName |
| Friendly Name | Register DNS records with connection-specific DNS suffix |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DNSClient |
| Registry Value Name | RegisterAdapterName |
| ADMX File Name | DnsClient.admx |
<!-- DNS_RegisterAdapterName-AdmxBacked-End -->

<!-- DNS_RegisterAdapterName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DNS_RegisterAdapterName-Examples-End -->

<!-- DNS_RegisterAdapterName-End -->

<!-- DNS_RegisterReverseLookup-Begin -->
## DNS_RegisterReverseLookup

<!-- DNS_RegisterReverseLookup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DNS_RegisterReverseLookup-Applicability-End -->

<!-- DNS_RegisterReverseLookup-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/DNS_RegisterReverseLookup
```
<!-- DNS_RegisterReverseLookup-OmaUri-End -->

<!-- DNS_RegisterReverseLookup-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies if DNS client computers will register PTR resource records.

By default, DNS clients configured to perform dynamic DNS registration will attempt to register PTR resource record only if they successfully registered the corresponding A resource record.

- If you enable this policy setting, registration of PTR records will be determined by the option that you choose under Register PTR records.

To use this policy setting, click Enabled, and then select one of the following options from the drop-down list:

Don't register: Computers won't attempt to register PTR resource records.

Register: Computers will attempt to register PTR resource records even if registration of the corresponding A records wasn't successful.

Register only if A record registration succeeds: Computers will attempt to register PTR resource records only if registration of the corresponding A records was successful.

- If you disable this policy setting, or if you don't configure this policy setting, computers will use locally configured settings.
<!-- DNS_RegisterReverseLookup-Description-End -->

<!-- DNS_RegisterReverseLookup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DNS_RegisterReverseLookup-Editable-End -->

<!-- DNS_RegisterReverseLookup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DNS_RegisterReverseLookup-DFProperties-End -->

<!-- DNS_RegisterReverseLookup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DNS_RegisterReverseLookup |
| Friendly Name | Register PTR records |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DNSClient |
| ADMX File Name | DnsClient.admx |
<!-- DNS_RegisterReverseLookup-AdmxBacked-End -->

<!-- DNS_RegisterReverseLookup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DNS_RegisterReverseLookup-Examples-End -->

<!-- DNS_RegisterReverseLookup-End -->

<!-- DNS_RegistrationEnabled-Begin -->
## DNS_RegistrationEnabled

<!-- DNS_RegistrationEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DNS_RegistrationEnabled-Applicability-End -->

<!-- DNS_RegistrationEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/DNS_RegistrationEnabled
```
<!-- DNS_RegistrationEnabled-OmaUri-End -->

<!-- DNS_RegistrationEnabled-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies if DNS dynamic update is enabled. Computers configured for DNS dynamic update automatically register and update their DNS resource records with a DNS server.

- If you enable this policy setting, or you don't configure this policy setting, computers will attempt to use dynamic DNS registration on all network connections that have connection-specific dynamic DNS registration enabled. For a dynamic DNS registration to be enabled on a network connection, the connection-specific configuration must allow dynamic DNS registration, and this policy setting mustn't be disabled.

- If you disable this policy setting, computers may not use dynamic DNS registration for any of their network connections, regardless of the configuration for individual network connections.
<!-- DNS_RegistrationEnabled-Description-End -->

<!-- DNS_RegistrationEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DNS_RegistrationEnabled-Editable-End -->

<!-- DNS_RegistrationEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DNS_RegistrationEnabled-DFProperties-End -->

<!-- DNS_RegistrationEnabled-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DNS_RegistrationEnabled |
| Friendly Name | Dynamic update |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DNSClient |
| Registry Value Name | RegistrationEnabled |
| ADMX File Name | DnsClient.admx |
<!-- DNS_RegistrationEnabled-AdmxBacked-End -->

<!-- DNS_RegistrationEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DNS_RegistrationEnabled-Examples-End -->

<!-- DNS_RegistrationEnabled-End -->

<!-- DNS_RegistrationOverwritesInConflict-Begin -->
## DNS_RegistrationOverwritesInConflict

<!-- DNS_RegistrationOverwritesInConflict-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DNS_RegistrationOverwritesInConflict-Applicability-End -->

<!-- DNS_RegistrationOverwritesInConflict-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/DNS_RegistrationOverwritesInConflict
```
<!-- DNS_RegistrationOverwritesInConflict-OmaUri-End -->

<!-- DNS_RegistrationOverwritesInConflict-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies whether dynamic updates should overwrite existing resource records that contain conflicting IP addresses.

This policy setting is designed for computers that register address (A) resource records in DNS zones that don't use Secure Dynamic Updates. Secure Dynamic Update preserves ownership of resource records and doesn't allow a DNS client to overwrite records that are registered by other computers.

During dynamic update of resource records in a zone that doesn't use Secure Dynamic Updates, an A resource record might exist that associates the client's host name with an IP address different than the one currently in use by the client. By default, the DNS client attempts to replace the existing A resource record with an A resource record that has the client's current IP address.

- If you enable this policy setting or if you don't configure this policy setting, DNS clients maintain their default behavior and will attempt to replace conflicting A resource records during dynamic update.

- If you disable this policy setting, existing A resource records that contain conflicting IP addresses won't be replaced during a dynamic update, and an error will be recorded in Event Viewer.
<!-- DNS_RegistrationOverwritesInConflict-Description-End -->

<!-- DNS_RegistrationOverwritesInConflict-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DNS_RegistrationOverwritesInConflict-Editable-End -->

<!-- DNS_RegistrationOverwritesInConflict-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DNS_RegistrationOverwritesInConflict-DFProperties-End -->

<!-- DNS_RegistrationOverwritesInConflict-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DNS_RegistrationOverwritesInConflict |
| Friendly Name | Replace addresses in conflicts |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DNSClient |
| Registry Value Name | RegistrationOverwritesInConflict |
| ADMX File Name | DnsClient.admx |
<!-- DNS_RegistrationOverwritesInConflict-AdmxBacked-End -->

<!-- DNS_RegistrationOverwritesInConflict-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DNS_RegistrationOverwritesInConflict-Examples-End -->

<!-- DNS_RegistrationOverwritesInConflict-End -->

<!-- DNS_RegistrationRefreshInterval-Begin -->
## DNS_RegistrationRefreshInterval

<!-- DNS_RegistrationRefreshInterval-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DNS_RegistrationRefreshInterval-Applicability-End -->

<!-- DNS_RegistrationRefreshInterval-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/DNS_RegistrationRefreshInterval
```
<!-- DNS_RegistrationRefreshInterval-OmaUri-End -->

<!-- DNS_RegistrationRefreshInterval-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the interval used by DNS clients to refresh registration of A and PTR resource. This policy setting only applies to computers performing dynamic DNS updates.

Computers configured to perform dynamic DNS registration of A and PTR resource records periodically reregister their records with DNS servers, even if the record hasn't changed. This reregistration is required to indicate to DNS servers that records are current and shouldn't be automatically removed (scavenged) when a DNS server is configured to delete stale records.

> [!WARNING]
> If record scavenging is enabled on the zone, the value of this policy setting should never be longer than the value of the DNS zone refresh interval. Configuring the registration refresh interval to be longer than the refresh interval of the DNS zone might result in the undesired deletion of A and PTR resource records.

To specify the registration refresh interval, click Enabled and then enter a value of 1800 or greater. The value that you specify is the number of seconds to use for the registration refresh interval. For example, 1800 seconds is 30 minutes.

- If you enable this policy setting, registration refresh interval that you specify will be applied to all network connections used by computers that receive this policy setting.

- If you disable this policy setting, or if you don't configure this policy setting, computers will use the local or DHCP supplied setting. By default, client computers configured with a static IP address attempt to update their DNS resource records once every 24 hours and DHCP clients will attempt to update their DNS resource records when a DHCP lease is granted or renewed.
<!-- DNS_RegistrationRefreshInterval-Description-End -->

<!-- DNS_RegistrationRefreshInterval-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DNS_RegistrationRefreshInterval-Editable-End -->

<!-- DNS_RegistrationRefreshInterval-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DNS_RegistrationRefreshInterval-DFProperties-End -->

<!-- DNS_RegistrationRefreshInterval-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DNS_RegistrationRefreshInterval |
| Friendly Name | Registration refresh interval |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DNSClient |
| ADMX File Name | DnsClient.admx |
<!-- DNS_RegistrationRefreshInterval-AdmxBacked-End -->

<!-- DNS_RegistrationRefreshInterval-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DNS_RegistrationRefreshInterval-Examples-End -->

<!-- DNS_RegistrationRefreshInterval-End -->

<!-- DNS_RegistrationTtl-Begin -->
## DNS_RegistrationTtl

<!-- DNS_RegistrationTtl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DNS_RegistrationTtl-Applicability-End -->

<!-- DNS_RegistrationTtl-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/DNS_RegistrationTtl
```
<!-- DNS_RegistrationTtl-OmaUri-End -->

<!-- DNS_RegistrationTtl-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the value of the time to live (TTL) field in A and PTR resource records that are registered by computers to which this policy setting is applied.

To specify the TTL, click Enabled and then enter a value in seconds (for example, 900 is 15 minutes).

- If you enable this policy setting, the TTL value that you specify will be applied to DNS resource records registered for all network connections used by computers that receive this policy setting.

- If you disable this policy setting, or if you don't configure this policy setting, computers will use the TTL settings specified in DNS. By default, the TTL is 1200 seconds (20 minutes).
<!-- DNS_RegistrationTtl-Description-End -->

<!-- DNS_RegistrationTtl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DNS_RegistrationTtl-Editable-End -->

<!-- DNS_RegistrationTtl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DNS_RegistrationTtl-DFProperties-End -->

<!-- DNS_RegistrationTtl-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DNS_RegistrationTtl |
| Friendly Name | TTL value for A and PTR records |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DNSClient |
| ADMX File Name | DnsClient.admx |
<!-- DNS_RegistrationTtl-AdmxBacked-End -->

<!-- DNS_RegistrationTtl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DNS_RegistrationTtl-Examples-End -->

<!-- DNS_RegistrationTtl-End -->

<!-- DNS_SearchList-Begin -->
## DNS_SearchList

<!-- DNS_SearchList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DNS_SearchList-Applicability-End -->

<!-- DNS_SearchList-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/DNS_SearchList
```
<!-- DNS_SearchList-OmaUri-End -->

<!-- DNS_SearchList-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the DNS suffixes to attach to an unqualified single-label name before submission of a DNS query for that name.

An unqualified single-label name contains no dots. The name "example" is a single-label name. This is different from a fully qualified domain name such as "example.microsoft.com".

Client computers that receive this policy setting will attach one or more suffixes to DNS queries for a single-label name. For example, a DNS query for the single-label name "example" will be modified to "example.microsoft.com" before sending the query to a DNS server if this policy setting is enabled with a suffix of "microsoft.com".

To use this policy setting, click Enabled, and then enter a string value representing the DNS suffixes that should be appended to single-label names. You must specify at least one suffix. Use a comma-delimited string, such as "microsoft.com,serverua.microsoft.com,office.microsoft.com" to specify multiple suffixes.

- If you enable this policy setting, one DNS suffix is attached at a time for each query. If a query is unsuccessful, a new DNS suffix is added in place of the failed suffix, and this new query is submitted. The values are used in the order they appear in the string, starting with the leftmost value and proceeding to the right until a query is successful or all suffixes are tried.

- If you disable this policy setting, or if you don't configure this policy setting, the primary DNS suffix and network connection-specific DNS suffixes are appended to the unqualified queries.
<!-- DNS_SearchList-Description-End -->

<!-- DNS_SearchList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DNS_SearchList-Editable-End -->

<!-- DNS_SearchList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DNS_SearchList-DFProperties-End -->

<!-- DNS_SearchList-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DNS_SearchList |
| Friendly Name | DNS suffix search list |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DNSClient |
| ADMX File Name | DnsClient.admx |
<!-- DNS_SearchList-AdmxBacked-End -->

<!-- DNS_SearchList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DNS_SearchList-Examples-End -->

<!-- DNS_SearchList-End -->

<!-- DNS_SmartMultiHomedNameResolution-Begin -->
## DNS_SmartMultiHomedNameResolution

<!-- DNS_SmartMultiHomedNameResolution-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DNS_SmartMultiHomedNameResolution-Applicability-End -->

<!-- DNS_SmartMultiHomedNameResolution-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/DNS_SmartMultiHomedNameResolution
```
<!-- DNS_SmartMultiHomedNameResolution-OmaUri-End -->

<!-- DNS_SmartMultiHomedNameResolution-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies that a multi-homed DNS client should optimize name resolution across networks. The setting improves performance by issuing parallel DNS, link local multicast name resolution (LLMNR) and NetBIOS over TCP/IP (NetBT) queries across all networks. In the event that multiple positive responses are received, the network binding order is used to determine which response to accept.

- If you enable this policy setting, the DNS client won't perform any optimizations. DNS queries will be issued across all networks first. LLMNR queries will be issued if the DNS queries fail, followed by NetBT queries if LLMNR queries fail.

- If you disable this policy setting, or if you don't configure this policy setting, name resolution will be optimized when issuing DNS, LLMNR and NetBT queries.
<!-- DNS_SmartMultiHomedNameResolution-Description-End -->

<!-- DNS_SmartMultiHomedNameResolution-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DNS_SmartMultiHomedNameResolution-Editable-End -->

<!-- DNS_SmartMultiHomedNameResolution-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DNS_SmartMultiHomedNameResolution-DFProperties-End -->

<!-- DNS_SmartMultiHomedNameResolution-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DNS_SmartMultiHomedNameResolution |
| Friendly Name | Turn off smart multi-homed name resolution |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DNSClient |
| Registry Value Name | DisableSmartNameResolution |
| ADMX File Name | DnsClient.admx |
<!-- DNS_SmartMultiHomedNameResolution-AdmxBacked-End -->

<!-- DNS_SmartMultiHomedNameResolution-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DNS_SmartMultiHomedNameResolution-Examples-End -->

<!-- DNS_SmartMultiHomedNameResolution-End -->

<!-- DNS_SmartProtocolReorder-Begin -->
## DNS_SmartProtocolReorder

<!-- DNS_SmartProtocolReorder-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DNS_SmartProtocolReorder-Applicability-End -->

<!-- DNS_SmartProtocolReorder-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/DNS_SmartProtocolReorder
```
<!-- DNS_SmartProtocolReorder-OmaUri-End -->

<!-- DNS_SmartProtocolReorder-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies that the DNS client should prefer responses from link local name resolution protocols on non-domain networks over DNS responses when issuing queries for flat names. Examples of link local name resolution protocols include link local multicast name resolution (LLMNR) and NetBIOS over TCP/IP (NetBT).

- If you enable this policy setting, the DNS client will prefer DNS responses, followed by LLMNR, followed by NetBT for all networks.

- If you disable this policy setting, or if you don't configure this policy setting, the DNS client will prefer link local responses for flat name queries on non-domain networks.

> [!NOTE]
> This policy setting is applicable only if the turn off smart multi-homed name resolution policy setting is disabled or not configured.
<!-- DNS_SmartProtocolReorder-Description-End -->

<!-- DNS_SmartProtocolReorder-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DNS_SmartProtocolReorder-Editable-End -->

<!-- DNS_SmartProtocolReorder-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DNS_SmartProtocolReorder-DFProperties-End -->

<!-- DNS_SmartProtocolReorder-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DNS_SmartProtocolReorder |
| Friendly Name | Turn off smart protocol reordering |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DNSClient |
| Registry Value Name | DisableSmartProtocolReordering |
| ADMX File Name | DnsClient.admx |
<!-- DNS_SmartProtocolReorder-AdmxBacked-End -->

<!-- DNS_SmartProtocolReorder-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DNS_SmartProtocolReorder-Examples-End -->

<!-- DNS_SmartProtocolReorder-End -->

<!-- DNS_UpdateSecurityLevel-Begin -->
## DNS_UpdateSecurityLevel

<!-- DNS_UpdateSecurityLevel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DNS_UpdateSecurityLevel-Applicability-End -->

<!-- DNS_UpdateSecurityLevel-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/DNS_UpdateSecurityLevel
```
<!-- DNS_UpdateSecurityLevel-OmaUri-End -->

<!-- DNS_UpdateSecurityLevel-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the security level for dynamic DNS updates.

To use this policy setting, click Enabled and then select one of the following values:

Unsecure followed by secure - computers send secure dynamic updates only when nonsecure dynamic updates are refused.

Only unsecure - computers send only nonsecure dynamic updates.

Only secure - computers send only secure dynamic updates.

- If you enable this policy setting, computers that attempt to send dynamic DNS updates will use the security level that you specify in this policy setting.

- If you disable this policy setting, or if you don't configure this policy setting, computers will use local settings. By default, DNS clients attempt to use unsecured dynamic update first. If an unsecured update is refused, clients try to use secure update.
<!-- DNS_UpdateSecurityLevel-Description-End -->

<!-- DNS_UpdateSecurityLevel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DNS_UpdateSecurityLevel-Editable-End -->

<!-- DNS_UpdateSecurityLevel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DNS_UpdateSecurityLevel-DFProperties-End -->

<!-- DNS_UpdateSecurityLevel-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DNS_UpdateSecurityLevel |
| Friendly Name | Update security level |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DNSClient |
| ADMX File Name | DnsClient.admx |
<!-- DNS_UpdateSecurityLevel-AdmxBacked-End -->

<!-- DNS_UpdateSecurityLevel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DNS_UpdateSecurityLevel-Examples-End -->

<!-- DNS_UpdateSecurityLevel-End -->

<!-- DNS_UpdateTopLevelDomainZones-Begin -->
## DNS_UpdateTopLevelDomainZones

<!-- DNS_UpdateTopLevelDomainZones-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DNS_UpdateTopLevelDomainZones-Applicability-End -->

<!-- DNS_UpdateTopLevelDomainZones-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/DNS_UpdateTopLevelDomainZones
```
<!-- DNS_UpdateTopLevelDomainZones-OmaUri-End -->

<!-- DNS_UpdateTopLevelDomainZones-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies if computers may send dynamic updates to zones with a single label name. These zones are also known as top-level domain zones, for example: "com".

By default, a DNS client that's configured to perform dynamic DNS update will update the DNS zone that's authoritative for its DNS resource records unless the authoritative zone is a top-level domain or root zone.

- If you enable this policy setting, computers send dynamic updates to any zone that's authoritative for the resource records that the computer needs to update, except the root zone.

- If you disable this policy setting, or if you don't configure this policy setting, computers don't send dynamic updates to the root zone or top-level domain zones that are authoritative for the resource records that the computer needs to update.
<!-- DNS_UpdateTopLevelDomainZones-Description-End -->

<!-- DNS_UpdateTopLevelDomainZones-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DNS_UpdateTopLevelDomainZones-Editable-End -->

<!-- DNS_UpdateTopLevelDomainZones-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DNS_UpdateTopLevelDomainZones-DFProperties-End -->

<!-- DNS_UpdateTopLevelDomainZones-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DNS_UpdateTopLevelDomainZones |
| Friendly Name | Update top level domain zones |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DNSClient |
| Registry Value Name | UpdateTopLevelDomainZones |
| ADMX File Name | DnsClient.admx |
<!-- DNS_UpdateTopLevelDomainZones-AdmxBacked-End -->

<!-- DNS_UpdateTopLevelDomainZones-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DNS_UpdateTopLevelDomainZones-Examples-End -->

<!-- DNS_UpdateTopLevelDomainZones-End -->

<!-- DNS_UseDomainNameDevolution-Begin -->
## DNS_UseDomainNameDevolution

<!-- DNS_UseDomainNameDevolution-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DNS_UseDomainNameDevolution-Applicability-End -->

<!-- DNS_UseDomainNameDevolution-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/DNS_UseDomainNameDevolution
```
<!-- DNS_UseDomainNameDevolution-OmaUri-End -->

<!-- DNS_UseDomainNameDevolution-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies if the DNS client performs primary DNS suffix devolution during the name resolution process.

With devolution, a DNS client creates queries by appending a single-label, unqualified domain name with the parent suffix of the primary DNS suffix name, and the parent of that suffix, and so on, stopping if the name is successfully resolved or at a level determined by devolution settings. Devolution can be used when a user or application submits a query for a single-label domain name.

The DNS client appends DNS suffixes to the single-label, unqualified domain name based on the state of the Append primary and connection specific DNS suffixes radio button and Append parent suffixes of the primary DNS suffix check box on the DNS tab in Advanced TCP/IP Settings for the Internet Protocol (TCP/IP) Properties dialog box.

Devolution isn't enabled if a global suffix search list is configured using Group Policy.

If a global suffix search list isn't configured, and the Append primary and connection specific DNS suffixes radio button is selected, the DNS client appends the following names to a single-label name when it sends DNS queries:

The primary DNS suffix, as specified on the Computer Name tab of the System control panel.

Each connection-specific DNS suffix, assigned either through DHCP or specified in the DNS suffix for this connection box on the DNS tab in the Advanced TCP/IP Settings dialog box for each connection.

For example, when a user submits a query for a single-label name such as "example," the DNS client attaches a suffix such as "microsoft.com" resulting in the query "example.microsoft.com," before sending the query to a DNS server.

If a DNS suffix search list isn't specified, the DNS client attaches the primary DNS suffix to a single-label name. If this query fails, the connection-specific DNS suffix is attached for a new query. If none of these queries are resolved, the client devolves the primary DNS suffix of the computer (drops the leftmost label of the primary DNS suffix), attaches this devolved primary DNS suffix to the single-label name, and submits this new query to a DNS server.

For example, if the primary DNS suffix ooo.aaa.microsoft.com is attached to the non-dot-terminated single-label name "example," and the DNS query for example.ooo.aaa.microsoft.com fails, the DNS client devolves the primary DNS suffix (drops the leftmost label) till the specified devolution level, and submits a query for example.aaa.microsoft.com. If this query fails, the primary DNS suffix is devolved further if it's under specified devolution level and the query example.microsoft.com is submitted. If this query fails, devolution continues if it's under specified devolution level and the query example.microsoft.com is submitted, corresponding to a devolution level of two. The primary DNS suffix can't be devolved beyond a devolution level of two. The devolution level can be configured using the primary DNS suffix devolution level policy setting. The default devolution level is two.

- If you enable this policy setting, or if you don't configure this policy setting, DNS clients attempt to resolve single-label names using concatenations of the single-label name to be resolved and the devolved primary DNS suffix.

- If you disable this policy setting, DNS clients don't attempt to resolve names that are concatenations of the single-label name to be resolved and the devolved primary DNS suffix.
<!-- DNS_UseDomainNameDevolution-Description-End -->

<!-- DNS_UseDomainNameDevolution-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DNS_UseDomainNameDevolution-Editable-End -->

<!-- DNS_UseDomainNameDevolution-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DNS_UseDomainNameDevolution-DFProperties-End -->

<!-- DNS_UseDomainNameDevolution-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DNS_UseDomainNameDevolution |
| Friendly Name | Primary DNS suffix devolution |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DNSClient |
| Registry Value Name | UseDomainNameDevolution |
| ADMX File Name | DnsClient.admx |
<!-- DNS_UseDomainNameDevolution-AdmxBacked-End -->

<!-- DNS_UseDomainNameDevolution-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DNS_UseDomainNameDevolution-Examples-End -->

<!-- DNS_UseDomainNameDevolution-End -->

<!-- Turn_Off_Multicast-Begin -->
## Turn_Off_Multicast

<!-- Turn_Off_Multicast-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Turn_Off_Multicast-Applicability-End -->

<!-- Turn_Off_Multicast-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DnsClient/Turn_Off_Multicast
```
<!-- Turn_Off_Multicast-OmaUri-End -->

<!-- Turn_Off_Multicast-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies that link local multicast name resolution (LLMNR) is disabled on client computers.

LLMNR is a secondary name resolution protocol. With LLMNR, queries are sent using multicast over a local network link on a single subnet from a client computer to another client computer on the same subnet that also has LLMNR enabled. LLMNR doesn't require a DNS server or DNS client configuration, and provides name resolution in scenarios in which conventional DNS name resolution isn't possible.

- If you enable this policy setting, LLMNR will be disabled on all available network adapters on the client computer.

- If you disable this policy setting, or you don't configure this policy setting, LLMNR will be enabled on all available network adapters.
<!-- Turn_Off_Multicast-Description-End -->

<!-- Turn_Off_Multicast-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Turn_Off_Multicast-Editable-End -->

<!-- Turn_Off_Multicast-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Turn_Off_Multicast-DFProperties-End -->

<!-- Turn_Off_Multicast-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Turn_Off_Multicast |
| Friendly Name | Turn off multicast name resolution |
| Location | Computer Configuration |
| Path | Network > DNS Client |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DNSClient |
| Registry Value Name | EnableMulticast |
| ADMX File Name | DnsClient.admx |
<!-- Turn_Off_Multicast-AdmxBacked-End -->

<!-- Turn_Off_Multicast-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Turn_Off_Multicast-Examples-End -->

<!-- Turn_Off_Multicast-End -->

<!-- ADMX_DnsClient-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_DnsClient-CspMoreInfo-End -->

<!-- ADMX_DnsClient-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)

---
title: NetworkIsolation Policy CSP
description: Learn more about the NetworkIsolation Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- NetworkIsolation-Begin -->
# Policy CSP - NetworkIsolation

<!-- NetworkIsolation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NetworkIsolation-Editable-End -->

<!-- EnterpriseCloudResources-Begin -->
## EnterpriseCloudResources

<!-- EnterpriseCloudResources-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- EnterpriseCloudResources-Applicability-End -->

<!-- EnterpriseCloudResources-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/NetworkIsolation/EnterpriseCloudResources
```
<!-- EnterpriseCloudResources-OmaUri-End -->

<!-- EnterpriseCloudResources-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting doesn't apply to desktop apps.

A pipe-separated list of domain cloud resources. Each cloud resource can also be paired optionally with an internal proxy server by using a trailing comma followed by the proxy address.

Contains a list of Enterprise resource domains hosted in the cloud. Connections to these resources are considered connections to enterprise networks.

If a proxy is paired with a cloud resource, traffic to the cloud resource will be routed through the enterprise network via the denoted proxy server (on Port 80). A proxy server used for this purpose must also be configured using the Intranet proxy servers for apps policy.

Example: [cloudresource]|[cloudresource]|[cloudresource],[proxy]|[cloudresource]|[cloudresource],[proxy]|.

For more information see: <https://go.microsoft.com/fwlink/p/?LinkId=234043>
<!-- EnterpriseCloudResources-Description-End -->

<!-- EnterpriseCloudResources-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnterpriseCloudResources-Editable-End -->

<!-- EnterpriseCloudResources-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `|`) |
<!-- EnterpriseCloudResources-DFProperties-End -->

<!-- EnterpriseCloudResources-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | WF_NetIsolation_EnterpriseCloudResources |
| Friendly Name | Enterprise resource domains hosted in the cloud |
| Element Name | Enterprise cloud resources. |
| Location | Computer Configuration |
| Path | Network > Network Isolation |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\NetworkIsolation |
| ADMX File Name | NetworkIsolation.admx |
<!-- EnterpriseCloudResources-GpMapping-End -->

<!-- EnterpriseCloudResources-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnterpriseCloudResources-Examples-End -->

<!-- EnterpriseCloudResources-End -->

<!-- EnterpriseInternalProxyServers-Begin -->
## EnterpriseInternalProxyServers

<!-- EnterpriseInternalProxyServers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- EnterpriseInternalProxyServers-Applicability-End -->

<!-- EnterpriseInternalProxyServers-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/NetworkIsolation/EnterpriseInternalProxyServers
```
<!-- EnterpriseInternalProxyServers-OmaUri-End -->

<!-- EnterpriseInternalProxyServers-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting doesn't apply to desktop apps.

A semicolon-separated list of intranet proxy server IP addresses. These addresses are categorized as private by Windows Network Isolation and are accessible to apps that have the Home/Work Networking capability.

- If you enable this policy setting, it allows an administrator to configure a set of proxies that provide access to intranet resources.

- If you disable or don't configure this policy setting, Windows Network Isolation attempts to discover proxies and configures them as Internet nodes.

This setting should NOT be used to configure Internet proxies.

Example: [3efe:3022::1000]; 18.0.0.1; 18.0.0.2

For more information see: <https://go.microsoft.com/fwlink/p/?LinkId=234043>
<!-- EnterpriseInternalProxyServers-Description-End -->

<!-- EnterpriseInternalProxyServers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnterpriseInternalProxyServers-Editable-End -->

<!-- EnterpriseInternalProxyServers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `,`) |
<!-- EnterpriseInternalProxyServers-DFProperties-End -->

<!-- EnterpriseInternalProxyServers-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | WF_NetIsolation_Intranet_Proxies |
| Friendly Name | Intranet proxy servers for  apps |
| Element Name | Type a proxy server IP address for the intranet. |
| Location | Computer Configuration |
| Path | Network > Network Isolation |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\NetworkIsolation |
| ADMX File Name | NetworkIsolation.admx |
<!-- EnterpriseInternalProxyServers-GpMapping-End -->

<!-- EnterpriseInternalProxyServers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnterpriseInternalProxyServers-Examples-End -->

<!-- EnterpriseInternalProxyServers-End -->

<!-- EnterpriseIPRange-Begin -->
## EnterpriseIPRange

<!-- EnterpriseIPRange-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- EnterpriseIPRange-Applicability-End -->

<!-- EnterpriseIPRange-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/NetworkIsolation/EnterpriseIPRange
```
<!-- EnterpriseIPRange-OmaUri-End -->

<!-- EnterpriseIPRange-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting doesn't apply to desktop apps.

A comma-separated list of IP address ranges that are in your corporate network.

- If you enable this policy setting, it ensures that apps with the Home/Work Networking capability have appropriate access to your corporate network. These addresses are only accessible to apps if and only if the app has declared the Home/Work Networking capability.

Windows Network Isolation attempts to automatically discover private network hosts. By default, the addresses configured with this policy setting are merged with the hosts that are declared as private through automatic discovery.

To ensure that these addresses are the only addresses ever classified as private, enable the "Subnet definitions are authoritative" policy setting.

- If you disable or don't configure this policy setting, Windows Network Isolation attempts to automatically discover your private network hosts.

Example: 3efe:1092::/96,18.1.1.1/10

For more information see: <https://go.microsoft.com/fwlink/p/?LinkId=234043>
<!-- EnterpriseIPRange-Description-End -->

<!-- EnterpriseIPRange-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnterpriseIPRange-Editable-End -->

<!-- EnterpriseIPRange-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `,`) |
<!-- EnterpriseIPRange-DFProperties-End -->

<!-- EnterpriseIPRange-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | WF_NetIsolation_PrivateSubnet |
| Friendly Name | Private network ranges for  apps |
| Element Name | Private subnets. |
| Location | Computer Configuration |
| Path | Network > Network Isolation |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\NetworkIsolation |
| ADMX File Name | NetworkIsolation.admx |
<!-- EnterpriseIPRange-GpMapping-End -->

<!-- EnterpriseIPRange-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->

**Example of IP ranges**:

```syntax
10.0.0.0-10.255.255.255,157.54.0.0-157.54.255.255,
192.168.0.0-192.168.255.255,2001:4898::-2001:4898:7fff:ffff:ffff:ffff:ffff:ffff,
2001:4898:dc05::-2001:4898:dc05:ffff:ffff:ffff:ffff:ffff,
2a01:110::-2a01:110:7fff:ffff:ffff:ffff:ffff:ffff,
fd00::-fdff:ffff:ffff:ffff:ffff:ffff:ffff:ffff
```
<!-- EnterpriseIPRange-Examples-End -->

<!-- EnterpriseIPRange-End -->

<!-- EnterpriseIPRangesAreAuthoritative-Begin -->
## EnterpriseIPRangesAreAuthoritative

<!-- EnterpriseIPRangesAreAuthoritative-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- EnterpriseIPRangesAreAuthoritative-Applicability-End -->

<!-- EnterpriseIPRangesAreAuthoritative-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/NetworkIsolation/EnterpriseIPRangesAreAuthoritative
```
<!-- EnterpriseIPRangesAreAuthoritative-OmaUri-End -->

<!-- EnterpriseIPRangesAreAuthoritative-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting doesn't apply to desktop apps.

Turns off Windows Network Isolation's automatic discovery of private network hosts in the domain corporate environment.

- If you enable this policy setting, it turns off Windows Network Isolation's automatic discovery of private network hosts in the domain corporate environment. Only network hosts within the address ranges configured via Group Policy will be classified as private.

- If you disable or don't configure this policy setting, Windows Network Isolation attempts to automatically discover your private network hosts in the domain corporate environment.

For more information see: <https://go.microsoft.com/fwlink/p/?LinkId=234043>
<!-- EnterpriseIPRangesAreAuthoritative-Description-End -->

<!-- EnterpriseIPRangesAreAuthoritative-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnterpriseIPRangesAreAuthoritative-Editable-End -->

<!-- EnterpriseIPRangesAreAuthoritative-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnterpriseIPRangesAreAuthoritative-DFProperties-End -->

<!-- EnterpriseIPRangesAreAuthoritative-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Enable. |
| 0 (Default) | Disable. |
<!-- EnterpriseIPRangesAreAuthoritative-AllowedValues-End -->

<!-- EnterpriseIPRangesAreAuthoritative-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | WF_NetIsolation_Authoritative_Subnet |
| Friendly Name | Subnet definitions are authoritative |
| Location | Computer Configuration |
| Path | Network > Network Isolation |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\NetworkIsolation |
| Registry Value Name | DSubnetsAuthoritive |
| ADMX File Name | NetworkIsolation.admx |
<!-- EnterpriseIPRangesAreAuthoritative-GpMapping-End -->

<!-- EnterpriseIPRangesAreAuthoritative-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnterpriseIPRangesAreAuthoritative-Examples-End -->

<!-- EnterpriseIPRangesAreAuthoritative-End -->

<!-- EnterpriseNetworkDomainNames-Begin -->
## EnterpriseNetworkDomainNames

<!-- EnterpriseNetworkDomainNames-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- EnterpriseNetworkDomainNames-Applicability-End -->

<!-- EnterpriseNetworkDomainNames-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/NetworkIsolation/EnterpriseNetworkDomainNames
```
<!-- EnterpriseNetworkDomainNames-OmaUri-End -->

<!-- EnterpriseNetworkDomainNames-Description-Begin -->
<!-- Description-Source-DDF -->
This is the list of domains that comprise the boundaries of the enterprise. Data from one of these domains that's sent to a device will be considered enterprise data and protected These locations will be considered a safe destination for enterprise data to be shared to. This is a comma-separated list of domains, for example contoso. sharepoint. com, Fabrikam. com.

> [!NOTE]
> The client requires domain name to be canonical, otherwise the setting will be rejected by the client. Here are the steps to create canonical domain names:Transform the ASCII characters (A-Z only) to lower case. For example, Microsoft. COM -> microsoft. com. Call IdnToAscii with IDN_USE_STD3_ASCII_RULES as the flags. Call IdnToUnicode with no flags set (dwFlags = 0).
<!-- EnterpriseNetworkDomainNames-Description-End -->

<!-- EnterpriseNetworkDomainNames-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

For more information, see the following APIs:

- [IdnToAscii function (winnls.h)](/windows/win32/api/winnls/nf-winnls-idntoascii)
- [IdnToUnicode function (winnls.h)](/windows/win32/api/winnls/nf-winnls-idntounicode)
<!-- EnterpriseNetworkDomainNames-Editable-End -->

<!-- EnterpriseNetworkDomainNames-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `,`) |
<!-- EnterpriseNetworkDomainNames-DFProperties-End -->

<!-- EnterpriseNetworkDomainNames-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnterpriseNetworkDomainNames-Examples-End -->

<!-- EnterpriseNetworkDomainNames-End -->

<!-- EnterpriseProxyServers-Begin -->
## EnterpriseProxyServers

<!-- EnterpriseProxyServers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- EnterpriseProxyServers-Applicability-End -->

<!-- EnterpriseProxyServers-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/NetworkIsolation/EnterpriseProxyServers
```
<!-- EnterpriseProxyServers-OmaUri-End -->

<!-- EnterpriseProxyServers-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting doesn't apply to desktop apps.

A semicolon-separated list of Internet proxy server IP addresses. These addresses are categorized as Internet by Windows Network Isolation and are accessible to apps that have the Internet Client or Internet Client/Server capabilities.

- If you enable this policy setting, apps on proxied networks can access the Internet without relying on the Private Network capability. However, in most situations Windows Network Isolation will be able to correctly discover proxies. By default, any proxies configured with this setting are merged with proxies that are auto-discovered. To make this policy configuration the sole list of allowed proxies, enable the "Proxy definitions are authoritative" setting.

- If you disable or don't configure this policy setting, apps will use the Internet proxies auto-discovered by Windows Network Isolation.

Example: [3efe:3022::1000];18.0.0.1;18.0.0.2

For more information see: <https://go.microsoft.com/fwlink/p/?LinkId=234043>
<!-- EnterpriseProxyServers-Description-End -->

<!-- EnterpriseProxyServers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnterpriseProxyServers-Editable-End -->

<!-- EnterpriseProxyServers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `,`) |
<!-- EnterpriseProxyServers-DFProperties-End -->

<!-- EnterpriseProxyServers-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | WF_NetIsolation_Domain_Proxies |
| Friendly Name | Internet proxy servers for apps |
| Element Name | Domain Proxies. |
| Location | Computer Configuration |
| Path | Network > Network Isolation |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\NetworkIsolation |
| ADMX File Name | NetworkIsolation.admx |
<!-- EnterpriseProxyServers-GpMapping-End -->

<!-- EnterpriseProxyServers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnterpriseProxyServers-Examples-End -->

<!-- EnterpriseProxyServers-End -->

<!-- EnterpriseProxyServersAreAuthoritative-Begin -->
## EnterpriseProxyServersAreAuthoritative

<!-- EnterpriseProxyServersAreAuthoritative-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- EnterpriseProxyServersAreAuthoritative-Applicability-End -->

<!-- EnterpriseProxyServersAreAuthoritative-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/NetworkIsolation/EnterpriseProxyServersAreAuthoritative
```
<!-- EnterpriseProxyServersAreAuthoritative-OmaUri-End -->

<!-- EnterpriseProxyServersAreAuthoritative-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting doesn't apply to desktop apps.

Turns off Windows Network Isolation's automatic proxy discovery in the domain corporate environment.

- If you enable this policy setting, it turns off Windows Network Isolation's automatic proxy discovery in the domain corporate environment. Only proxies configured with Group Policy are authoritative. This applies to both Internet and intranet proxies.

- If you disable or don't configure this policy setting, Windows Network Isolation attempts to automatically discover your proxy server addresses.

For more information see: <https://go.microsoft.com/fwlink/p/?LinkId=234043>
<!-- EnterpriseProxyServersAreAuthoritative-Description-End -->

<!-- EnterpriseProxyServersAreAuthoritative-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnterpriseProxyServersAreAuthoritative-Editable-End -->

<!-- EnterpriseProxyServersAreAuthoritative-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnterpriseProxyServersAreAuthoritative-DFProperties-End -->

<!-- EnterpriseProxyServersAreAuthoritative-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Enable. |
| 0 (Default) | Disable. |
<!-- EnterpriseProxyServersAreAuthoritative-AllowedValues-End -->

<!-- EnterpriseProxyServersAreAuthoritative-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | WF_NetIsolation_Authoritative_Proxies |
| Friendly Name | Proxy definitions are authoritative |
| Location | Computer Configuration |
| Path | Network > Network Isolation |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\NetworkIsolation |
| Registry Value Name | DProxiesAuthoritive |
| ADMX File Name | NetworkIsolation.admx |
<!-- EnterpriseProxyServersAreAuthoritative-GpMapping-End -->

<!-- EnterpriseProxyServersAreAuthoritative-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnterpriseProxyServersAreAuthoritative-Examples-End -->

<!-- EnterpriseProxyServersAreAuthoritative-End -->

<!-- NeutralResources-Begin -->
## NeutralResources

<!-- NeutralResources-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- NeutralResources-Applicability-End -->

<!-- NeutralResources-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/NetworkIsolation/NeutralResources
```
<!-- NeutralResources-OmaUri-End -->

<!-- NeutralResources-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting doesn't apply to desktop apps.

A comma-separated list of domain names that can be used as both work or personal resource.

For more information see: <https://go.microsoft.com/fwlink/p/?LinkId=234043>
<!-- NeutralResources-Description-End -->

<!-- NeutralResources-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NeutralResources-Editable-End -->

<!-- NeutralResources-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `,`) |
<!-- NeutralResources-DFProperties-End -->

<!-- NeutralResources-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | WF_NetIsolation_NeutralResources |
| Friendly Name | Domains categorized as both work and personal |
| Element Name | Neutral resources. |
| Location | Computer Configuration |
| Path | Network > Network Isolation |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\NetworkIsolation |
| ADMX File Name | NetworkIsolation.admx |
<!-- NeutralResources-GpMapping-End -->

<!-- NeutralResources-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NeutralResources-Examples-End -->

<!-- NeutralResources-End -->

<!-- NetworkIsolation-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- NetworkIsolation-CspMoreInfo-End -->

<!-- NetworkIsolation-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)

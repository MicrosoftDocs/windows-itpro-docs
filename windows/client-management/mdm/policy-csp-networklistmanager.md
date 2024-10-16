---
title: NetworkListManager Policy CSP
description: Learn more about the NetworkListManager Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- NetworkListManager-Begin -->
# Policy CSP - NetworkListManager

<!-- NetworkListManager-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NetworkListManager-Editable-End -->

<!-- AllNetworks_NetworkIcon-Begin -->
## AllNetworks_NetworkIcon

<!-- AllNetworks_NetworkIcon-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- AllNetworks_NetworkIcon-Applicability-End -->

<!-- AllNetworks_NetworkIcon-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/NetworkListManager/AllNetworks_NetworkIcon
```
<!-- AllNetworks_NetworkIcon-OmaUri-End -->

<!-- AllNetworks_NetworkIcon-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting allows you to specify whether users can change the network icon for all networks to which the user connects.
<!-- AllNetworks_NetworkIcon-Description-End -->

<!-- AllNetworks_NetworkIcon-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllNetworks_NetworkIcon-Editable-End -->

<!-- AllNetworks_NetworkIcon-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllNetworks_NetworkIcon-DFProperties-End -->

<!-- AllNetworks_NetworkIcon-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User can change icon. |
| 1 | User can't change icon. |
<!-- AllNetworks_NetworkIcon-AllowedValues-End -->

<!-- AllNetworks_NetworkIcon-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllNetworks_NetworkIcon-Examples-End -->

<!-- AllNetworks_NetworkIcon-End -->

<!-- AllNetworks_NetworkLocation-Begin -->
## AllNetworks_NetworkLocation

<!-- AllNetworks_NetworkLocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- AllNetworks_NetworkLocation-Applicability-End -->

<!-- AllNetworks_NetworkLocation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/NetworkListManager/AllNetworks_NetworkLocation
```
<!-- AllNetworks_NetworkLocation-OmaUri-End -->

<!-- AllNetworks_NetworkLocation-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting allows you to specify whether users can change the network location for all networks to which the user connects.
<!-- AllNetworks_NetworkLocation-Description-End -->

<!-- AllNetworks_NetworkLocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllNetworks_NetworkLocation-Editable-End -->

<!-- AllNetworks_NetworkLocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllNetworks_NetworkLocation-DFProperties-End -->

<!-- AllNetworks_NetworkLocation-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User can change location. |
| 1 | User can't change location. |
<!-- AllNetworks_NetworkLocation-AllowedValues-End -->

<!-- AllNetworks_NetworkLocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllNetworks_NetworkLocation-Examples-End -->

<!-- AllNetworks_NetworkLocation-End -->

<!-- AllNetworks_NetworkName-Begin -->
## AllNetworks_NetworkName

<!-- AllNetworks_NetworkName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- AllNetworks_NetworkName-Applicability-End -->

<!-- AllNetworks_NetworkName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/NetworkListManager/AllNetworks_NetworkName
```
<!-- AllNetworks_NetworkName-OmaUri-End -->

<!-- AllNetworks_NetworkName-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting allows you to specify whether users can change the network name for all networks to which the user connects.
<!-- AllNetworks_NetworkName-Description-End -->

<!-- AllNetworks_NetworkName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllNetworks_NetworkName-Editable-End -->

<!-- AllNetworks_NetworkName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllNetworks_NetworkName-DFProperties-End -->

<!-- AllNetworks_NetworkName-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User can change name. |
| 1 | User can't change name. |
<!-- AllNetworks_NetworkName-AllowedValues-End -->

<!-- AllNetworks_NetworkName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllNetworks_NetworkName-Examples-End -->

<!-- AllNetworks_NetworkName-End -->

<!-- AllowedTlsAuthenticationEndpoints-Begin -->
## AllowedTlsAuthenticationEndpoints

<!-- AllowedTlsAuthenticationEndpoints-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 [10.0.19042] and later |
<!-- AllowedTlsAuthenticationEndpoints-Applicability-End -->

<!-- AllowedTlsAuthenticationEndpoints-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/NetworkListManager/AllowedTlsAuthenticationEndpoints
```
<!-- AllowedTlsAuthenticationEndpoints-OmaUri-End -->

<!-- AllowedTlsAuthenticationEndpoints-Description-Begin -->
<!-- Description-Source-DDF -->
List of URLs (separated by Unicode character 0xF000) to endpoints accessible only within an enterprise's network. If any of the URLs can be resolved over HTTPS, the network would be considered authenticated.
<!-- AllowedTlsAuthenticationEndpoints-Description-End -->

<!-- AllowedTlsAuthenticationEndpoints-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
- When entering a list of TLS endpoints in Microsoft Intune using a configuration profile with a custom template and the OMA URI, use the following format: `<![CDATA[https://nls.corp.contoso.com&#xF000;https://nls.corp.fabricam.com]]>`
- The HTTPS endpoint must not have any more authentication checks, such as sign-in or multi-factor authentication.
- The HTTPS endpoint must be an internal address not accessible from outside the organizational network.
- The client must trust the server certificate. So the CA certificate that the HTTPS server certificate chains to must be present in the client machine's root certificate store.
- A certificate shouldn't be a public certificate.

To test the URL, use a PowerShell command similar to below:

```powershell
Invoke-WebRequest -Uri https://nls.corp.contoso.com -Method get -UseBasicParsing -MaximumRedirection 0
```

`StatusCode` return by the command must be 200 (`HTTP_STATUS_OK`).
<!-- AllowedTlsAuthenticationEndpoints-Editable-End -->

<!-- AllowedTlsAuthenticationEndpoints-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- AllowedTlsAuthenticationEndpoints-DFProperties-End -->

<!-- AllowedTlsAuthenticationEndpoints-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowedTlsAuthenticationEndpoints-Examples-End -->

<!-- AllowedTlsAuthenticationEndpoints-End -->

<!-- ConfiguredTlsAuthenticationNetworkName-Begin -->
## ConfiguredTlsAuthenticationNetworkName

<!-- ConfiguredTlsAuthenticationNetworkName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 [10.0.19042] and later |
<!-- ConfiguredTlsAuthenticationNetworkName-Applicability-End -->

<!-- ConfiguredTlsAuthenticationNetworkName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/NetworkListManager/ConfiguredTlsAuthenticationNetworkName
```
<!-- ConfiguredTlsAuthenticationNetworkName-OmaUri-End -->

<!-- ConfiguredTlsAuthenticationNetworkName-Description-Begin -->
<!-- Description-Source-DDF -->
The string will be used to name the network authenticated against one of the endpoints listed in AllowedTlsAuthenticationEndpoints policy.
<!-- ConfiguredTlsAuthenticationNetworkName-Description-End -->

<!-- ConfiguredTlsAuthenticationNetworkName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

This policy setting provides the string that names a network. If this setting is used for Trusted Network Detection in an Always On VPN profile, it must be the DNS suffix that is configured in the TrustedNetworkDetection attribute.
<!-- ConfiguredTlsAuthenticationNetworkName-Editable-End -->

<!-- ConfiguredTlsAuthenticationNetworkName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfiguredTlsAuthenticationNetworkName-DFProperties-End -->

<!-- ConfiguredTlsAuthenticationNetworkName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfiguredTlsAuthenticationNetworkName-Examples-End -->

<!-- ConfiguredTlsAuthenticationNetworkName-End -->

<!-- IdentifyingNetworks_LocationType-Begin -->
## IdentifyingNetworks_LocationType

<!-- IdentifyingNetworks_LocationType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- IdentifyingNetworks_LocationType-Applicability-End -->

<!-- IdentifyingNetworks_LocationType-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/NetworkListManager/IdentifyingNetworks_LocationType
```
<!-- IdentifyingNetworks_LocationType-OmaUri-End -->

<!-- IdentifyingNetworks_LocationType-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting allows you to configure the Network Location for networks that are in a temporary state while Windows works to identify the network and location type. A network location identifies the type of network that a computer is connected to and automatically sets the appropriate firewall settings for that location.
<!-- IdentifyingNetworks_LocationType-Description-End -->

<!-- IdentifyingNetworks_LocationType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IdentifyingNetworks_LocationType-Editable-End -->

<!-- IdentifyingNetworks_LocationType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- IdentifyingNetworks_LocationType-DFProperties-End -->

<!-- IdentifyingNetworks_LocationType-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Public. |
| 1 | Private. |
<!-- IdentifyingNetworks_LocationType-AllowedValues-End -->

<!-- IdentifyingNetworks_LocationType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IdentifyingNetworks_LocationType-Examples-End -->

<!-- IdentifyingNetworks_LocationType-End -->

<!-- UnidentifiedNetworks_LocationType-Begin -->
## UnidentifiedNetworks_LocationType

<!-- UnidentifiedNetworks_LocationType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- UnidentifiedNetworks_LocationType-Applicability-End -->

<!-- UnidentifiedNetworks_LocationType-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/NetworkListManager/UnidentifiedNetworks_LocationType
```
<!-- UnidentifiedNetworks_LocationType-OmaUri-End -->

<!-- UnidentifiedNetworks_LocationType-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting allows you to configure the Network Location type for networks that Windows can't identify due to a network issue or a lack of identifiable characters in the network information received by the operating system from the network. A network location identifies the type of network that a computer is connected to and automatically sets the appropriate firewall settings for that location.
<!-- UnidentifiedNetworks_LocationType-Description-End -->

<!-- UnidentifiedNetworks_LocationType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UnidentifiedNetworks_LocationType-Editable-End -->

<!-- UnidentifiedNetworks_LocationType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- UnidentifiedNetworks_LocationType-DFProperties-End -->

<!-- UnidentifiedNetworks_LocationType-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Public. |
| 1 | Private. |
<!-- UnidentifiedNetworks_LocationType-AllowedValues-End -->

<!-- UnidentifiedNetworks_LocationType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UnidentifiedNetworks_LocationType-Examples-End -->

<!-- UnidentifiedNetworks_LocationType-End -->

<!-- UnidentifiedNetworks_UserPermissions-Begin -->
## UnidentifiedNetworks_UserPermissions

<!-- UnidentifiedNetworks_UserPermissions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- UnidentifiedNetworks_UserPermissions-Applicability-End -->

<!-- UnidentifiedNetworks_UserPermissions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/NetworkListManager/UnidentifiedNetworks_UserPermissions
```
<!-- UnidentifiedNetworks_UserPermissions-OmaUri-End -->

<!-- UnidentifiedNetworks_UserPermissions-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting allows you to configure the Network Location user permissions for networks that Windows can't identify due to a network issue or a lack of identifiable characters in the network information received by the operating system from the network.
<!-- UnidentifiedNetworks_UserPermissions-Description-End -->

<!-- UnidentifiedNetworks_UserPermissions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UnidentifiedNetworks_UserPermissions-Editable-End -->

<!-- UnidentifiedNetworks_UserPermissions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- UnidentifiedNetworks_UserPermissions-DFProperties-End -->

<!-- UnidentifiedNetworks_UserPermissions-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User can change location. |
| 1 | User can't change location. |
<!-- UnidentifiedNetworks_UserPermissions-AllowedValues-End -->

<!-- UnidentifiedNetworks_UserPermissions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UnidentifiedNetworks_UserPermissions-Examples-End -->

<!-- UnidentifiedNetworks_UserPermissions-End -->

<!-- NetworkListManager-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- NetworkListManager-CspMoreInfo-End -->

<!-- NetworkListManager-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)

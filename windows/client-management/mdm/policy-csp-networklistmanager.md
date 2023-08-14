---
title: NetworkListManager Policy CSP
description: Learn more about the NetworkListManager Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 08/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- NetworkListManager-Begin -->
# Policy CSP - NetworkListManager

<!-- NetworkListManager-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NetworkListManager-Editable-End -->

<!-- AllowedTlsAuthenticationEndpoints-Begin -->
## AllowedTlsAuthenticationEndpoints

<!-- AllowedTlsAuthenticationEndpoints-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2009 [10.0.19042] and later |
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
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2009 [10.0.19042] and later |
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

<!-- NetworkListManager-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- NetworkListManager-CspMoreInfo-End -->

<!-- NetworkListManager-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)

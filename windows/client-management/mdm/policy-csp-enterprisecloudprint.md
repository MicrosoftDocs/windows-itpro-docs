---
title: EnterpriseCloudPrint Policy CSP
description: Learn more about the EnterpriseCloudPrint Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- EnterpriseCloudPrint-Begin -->
# Policy CSP - EnterpriseCloudPrint

<!-- EnterpriseCloudPrint-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnterpriseCloudPrint-Editable-End -->

<!-- CloudPrinterDiscoveryEndPoint-Begin -->
## CloudPrinterDiscoveryEndPoint

<!-- CloudPrinterDiscoveryEndPoint-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- CloudPrinterDiscoveryEndPoint-Applicability-End -->

<!-- CloudPrinterDiscoveryEndPoint-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/EnterpriseCloudPrint/CloudPrinterDiscoveryEndPoint
```
<!-- CloudPrinterDiscoveryEndPoint-OmaUri-End -->

<!-- CloudPrinterDiscoveryEndPoint-Description-Begin -->
<!-- Description-Source-DDF -->
This policy provisions per-user discovery end point to discover cloud printers.
<!-- CloudPrinterDiscoveryEndPoint-Description-End -->

<!-- CloudPrinterDiscoveryEndPoint-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Specifies the per-user end point for discovering cloud printers. This policy must target ./User, otherwise it fails.

Supported datatype is string.

The default value is an empty string. Otherwise, the value should contain the URL of an endpoint. 
**Example**:

```https://cloudprinterdiscovery.contoso.com```.
<!-- CloudPrinterDiscoveryEndPoint-Editable-End -->

<!-- CloudPrinterDiscoveryEndPoint-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CloudPrinterDiscoveryEndPoint-DFProperties-End -->

<!-- CloudPrinterDiscoveryEndPoint-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CloudPrinterDiscoveryEndPoint-Examples-End -->

<!-- CloudPrinterDiscoveryEndPoint-End -->

<!-- CloudPrintOAuthAuthority-Begin -->
## CloudPrintOAuthAuthority

<!-- CloudPrintOAuthAuthority-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- CloudPrintOAuthAuthority-Applicability-End -->

<!-- CloudPrintOAuthAuthority-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/EnterpriseCloudPrint/CloudPrintOAuthAuthority
```
<!-- CloudPrintOAuthAuthority-OmaUri-End -->

<!-- CloudPrintOAuthAuthority-Description-Begin -->
<!-- Description-Source-DDF -->
Authentication endpoint for acquiring OAuth tokens.
<!-- CloudPrintOAuthAuthority-Description-End -->

<!-- CloudPrintOAuthAuthority-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Specifies the authentication endpoint for acquiring OAuth tokens. This policy must target ./User, otherwise it fails.

Supported datatype is string.

The default value is an empty string. Otherwise, the value should contain the URL of an endpoint. 
**Example**:

```https://azuretenant.contoso.com/adfs```.
<!-- CloudPrintOAuthAuthority-Editable-End -->

<!-- CloudPrintOAuthAuthority-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CloudPrintOAuthAuthority-DFProperties-End -->

<!-- CloudPrintOAuthAuthority-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CloudPrintOAuthAuthority-Examples-End -->

<!-- CloudPrintOAuthAuthority-End -->

<!-- CloudPrintOAuthClientId-Begin -->
## CloudPrintOAuthClientId

<!-- CloudPrintOAuthClientId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- CloudPrintOAuthClientId-Applicability-End -->

<!-- CloudPrintOAuthClientId-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/EnterpriseCloudPrint/CloudPrintOAuthClientId
```
<!-- CloudPrintOAuthClientId-OmaUri-End -->

<!-- CloudPrintOAuthClientId-Description-Begin -->
<!-- Description-Source-DDF -->
A GUID identifying the client application authorized to retrieve OAuth tokens from the OAuthAuthority.
<!-- CloudPrintOAuthClientId-Description-End -->

<!-- CloudPrintOAuthClientId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Specifies the GUID of a client application authorized to retrieve OAuth tokens from the OAuthAuthority. This policy must target ./User, otherwise it fails.

Supported datatype is string.

The default value is an empty string. Otherwise, the value should contain a GUID. 
**Example**:

"E1CF1107-FF90-4228-93BF-26052DD2C714".
<!-- CloudPrintOAuthClientId-Editable-End -->

<!-- CloudPrintOAuthClientId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CloudPrintOAuthClientId-DFProperties-End -->

<!-- CloudPrintOAuthClientId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CloudPrintOAuthClientId-Examples-End -->

<!-- CloudPrintOAuthClientId-End -->

<!-- CloudPrintResourceId-Begin -->
## CloudPrintResourceId

<!-- CloudPrintResourceId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- CloudPrintResourceId-Applicability-End -->

<!-- CloudPrintResourceId-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/EnterpriseCloudPrint/CloudPrintResourceId
```
<!-- CloudPrintResourceId-OmaUri-End -->

<!-- CloudPrintResourceId-Description-Begin -->
<!-- Description-Source-DDF -->
Resource URI for which access is being requested by the Enterprise Cloud Print client during OAuth authentication.
<!-- CloudPrintResourceId-Description-End -->

<!-- CloudPrintResourceId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Specifies the per-user resource URL for which access is requested by the enterprise cloud print client during OAuth authentication. This policy must target ./User, otherwise it fails.

Supported datatype is string.

The default value is an empty string. Otherwise, the value should contain a URL. 
**Example**:

"http:<span></span>//MicrosoftEnterpriseCloudPrint/CloudPrint".
<!-- CloudPrintResourceId-Editable-End -->

<!-- CloudPrintResourceId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CloudPrintResourceId-DFProperties-End -->

<!-- CloudPrintResourceId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CloudPrintResourceId-Examples-End -->

<!-- CloudPrintResourceId-End -->

<!-- DiscoveryMaxPrinterLimit-Begin -->
## DiscoveryMaxPrinterLimit

<!-- DiscoveryMaxPrinterLimit-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DiscoveryMaxPrinterLimit-Applicability-End -->

<!-- DiscoveryMaxPrinterLimit-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/EnterpriseCloudPrint/DiscoveryMaxPrinterLimit
```
<!-- DiscoveryMaxPrinterLimit-OmaUri-End -->

<!-- DiscoveryMaxPrinterLimit-Description-Begin -->
<!-- Description-Source-DDF -->
Defines the maximum number of printers that should be queried from discovery end point.
<!-- DiscoveryMaxPrinterLimit-Description-End -->

<!-- DiscoveryMaxPrinterLimit-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This policy must target ./User, otherwise it fails.
<!-- DiscoveryMaxPrinterLimit-Editable-End -->

<!-- DiscoveryMaxPrinterLimit-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-65535]` |
| Default Value  | 20 |
<!-- DiscoveryMaxPrinterLimit-DFProperties-End -->

<!-- DiscoveryMaxPrinterLimit-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DiscoveryMaxPrinterLimit-Examples-End -->

<!-- DiscoveryMaxPrinterLimit-End -->

<!-- MopriaDiscoveryResourceId-Begin -->
## MopriaDiscoveryResourceId

<!-- MopriaDiscoveryResourceId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- MopriaDiscoveryResourceId-Applicability-End -->

<!-- MopriaDiscoveryResourceId-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/EnterpriseCloudPrint/MopriaDiscoveryResourceId
```
<!-- MopriaDiscoveryResourceId-OmaUri-End -->

<!-- MopriaDiscoveryResourceId-Description-Begin -->
<!-- Description-Source-DDF -->
Resource URI for which access is being requested by the Mopria discovery client during OAuth authentication.
<!-- MopriaDiscoveryResourceId-Description-End -->

<!-- MopriaDiscoveryResourceId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This policy must target ./User, otherwise it fails.

The default value is an empty string. Otherwise, the value should contain a URL.

**Example**:

```http://MopriaDiscoveryService/CloudPrint```.
<!-- MopriaDiscoveryResourceId-Editable-End -->

<!-- MopriaDiscoveryResourceId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MopriaDiscoveryResourceId-DFProperties-End -->

<!-- MopriaDiscoveryResourceId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MopriaDiscoveryResourceId-Examples-End -->

<!-- MopriaDiscoveryResourceId-End -->

<!-- EnterpriseCloudPrint-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- EnterpriseCloudPrint-CspMoreInfo-End -->

<!-- EnterpriseCloudPrint-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)

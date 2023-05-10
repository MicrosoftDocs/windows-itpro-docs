---
title: RemoteManagement Policy CSP
description: Learn more about the RemoteManagement Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 05/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- RemoteManagement-Begin -->
# Policy CSP - RemoteManagement

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- RemoteManagement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RemoteManagement-Editable-End -->

<!-- AllowBasicAuthentication_Client-Begin -->
## AllowBasicAuthentication_Client

<!-- AllowBasicAuthentication_Client-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- AllowBasicAuthentication_Client-Applicability-End -->

<!-- AllowBasicAuthentication_Client-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteManagement/AllowBasicAuthentication_Client
```
<!-- AllowBasicAuthentication_Client-OmaUri-End -->

<!-- AllowBasicAuthentication_Client-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the Windows Remote Management (WinRM) client uses Basic authentication.

- If you enable this policy setting, the WinRM client uses Basic authentication. If WinRM is configured to use HTTP transport, the user name and password are sent over the network as clear text.

- If you disable or don't configure this policy setting, the WinRM client doesn't use Basic authentication.
<!-- AllowBasicAuthentication_Client-Description-End -->

<!-- AllowBasicAuthentication_Client-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowBasicAuthentication_Client-Editable-End -->

<!-- AllowBasicAuthentication_Client-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowBasicAuthentication_Client-DFProperties-End -->

<!-- AllowBasicAuthentication_Client-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowBasic_2 |
| Friendly Name | Allow Basic authentication |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Management (WinRM) > WinRM Client |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Client |
| Registry Value Name | AllowBasic |
| ADMX File Name | WindowsRemoteManagement.admx |
<!-- AllowBasicAuthentication_Client-AdmxBacked-End -->

<!-- AllowBasicAuthentication_Client-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowBasicAuthentication_Client-Examples-End -->

<!-- AllowBasicAuthentication_Client-End -->

<!-- AllowBasicAuthentication_Service-Begin -->
## AllowBasicAuthentication_Service

<!-- AllowBasicAuthentication_Service-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- AllowBasicAuthentication_Service-Applicability-End -->

<!-- AllowBasicAuthentication_Service-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteManagement/AllowBasicAuthentication_Service
```
<!-- AllowBasicAuthentication_Service-OmaUri-End -->

<!-- AllowBasicAuthentication_Service-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the Windows Remote Management (WinRM) service accepts Basic authentication from a remote client.

- If you enable this policy setting, the WinRM service accepts Basic authentication from a remote client.

- If you disable or don't configure this policy setting, the WinRM service doesn't accept Basic authentication from a remote client.
<!-- AllowBasicAuthentication_Service-Description-End -->

<!-- AllowBasicAuthentication_Service-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowBasicAuthentication_Service-Editable-End -->

<!-- AllowBasicAuthentication_Service-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowBasicAuthentication_Service-DFProperties-End -->

<!-- AllowBasicAuthentication_Service-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowBasic_1 |
| Friendly Name | Allow Basic authentication |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Management (WinRM) > WinRM Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Service |
| Registry Value Name | AllowBasic |
| ADMX File Name | WindowsRemoteManagement.admx |
<!-- AllowBasicAuthentication_Service-AdmxBacked-End -->

<!-- AllowBasicAuthentication_Service-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowBasicAuthentication_Service-Examples-End -->

<!-- AllowBasicAuthentication_Service-End -->

<!-- AllowCredSSPAuthenticationClient-Begin -->
## AllowCredSSPAuthenticationClient

<!-- AllowCredSSPAuthenticationClient-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- AllowCredSSPAuthenticationClient-Applicability-End -->

<!-- AllowCredSSPAuthenticationClient-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteManagement/AllowCredSSPAuthenticationClient
```
<!-- AllowCredSSPAuthenticationClient-OmaUri-End -->

<!-- AllowCredSSPAuthenticationClient-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the Windows Remote Management (WinRM) client uses CredSSP authentication.

- If you enable this policy setting, the WinRM client uses CredSSP authentication.

- If you disable or don't configure this policy setting, the WinRM client doesn't use CredSSP authentication.
<!-- AllowCredSSPAuthenticationClient-Description-End -->

<!-- AllowCredSSPAuthenticationClient-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowCredSSPAuthenticationClient-Editable-End -->

<!-- AllowCredSSPAuthenticationClient-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowCredSSPAuthenticationClient-DFProperties-End -->

<!-- AllowCredSSPAuthenticationClient-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowCredSSP_2 |
| Friendly Name | Allow CredSSP authentication |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Management (WinRM) > WinRM Client |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Client |
| Registry Value Name | AllowCredSSP |
| ADMX File Name | WindowsRemoteManagement.admx |
<!-- AllowCredSSPAuthenticationClient-AdmxBacked-End -->

<!-- AllowCredSSPAuthenticationClient-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowCredSSPAuthenticationClient-Examples-End -->

<!-- AllowCredSSPAuthenticationClient-End -->

<!-- AllowCredSSPAuthenticationService-Begin -->
## AllowCredSSPAuthenticationService

<!-- AllowCredSSPAuthenticationService-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- AllowCredSSPAuthenticationService-Applicability-End -->

<!-- AllowCredSSPAuthenticationService-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteManagement/AllowCredSSPAuthenticationService
```
<!-- AllowCredSSPAuthenticationService-OmaUri-End -->

<!-- AllowCredSSPAuthenticationService-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the Windows Remote Management (WinRM) service accepts CredSSP authentication from a remote client.

- If you enable this policy setting, the WinRM service accepts CredSSP authentication from a remote client.

- If you disable or don't configure this policy setting, the WinRM service doesn't accept CredSSP authentication from a remote client.
<!-- AllowCredSSPAuthenticationService-Description-End -->

<!-- AllowCredSSPAuthenticationService-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowCredSSPAuthenticationService-Editable-End -->

<!-- AllowCredSSPAuthenticationService-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowCredSSPAuthenticationService-DFProperties-End -->

<!-- AllowCredSSPAuthenticationService-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowCredSSP_1 |
| Friendly Name | Allow CredSSP authentication |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Management (WinRM) > WinRM Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Service |
| Registry Value Name | AllowCredSSP |
| ADMX File Name | WindowsRemoteManagement.admx |
<!-- AllowCredSSPAuthenticationService-AdmxBacked-End -->

<!-- AllowCredSSPAuthenticationService-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowCredSSPAuthenticationService-Examples-End -->

<!-- AllowCredSSPAuthenticationService-End -->

<!-- AllowRemoteServerManagement-Begin -->
## AllowRemoteServerManagement

<!-- AllowRemoteServerManagement-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- AllowRemoteServerManagement-Applicability-End -->

<!-- AllowRemoteServerManagement-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteManagement/AllowRemoteServerManagement
```
<!-- AllowRemoteServerManagement-OmaUri-End -->

<!-- AllowRemoteServerManagement-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the Windows Remote Management (WinRM) service automatically listens on the network for requests on the HTTP transport over the default HTTP port.

- If you enable this policy setting, the WinRM service automatically listens on the network for requests on the HTTP transport over the default HTTP port.

To allow WinRM service to receive requests over the network, configure the Windows Firewall policy setting with exceptions for Port 5985 (default port for HTTP).

- If you disable or don't configure this policy setting, the WinRM service won't respond to requests from a remote computer, regardless of whether or not any WinRM listeners are configured.

The service listens on the addresses specified by the IPv4 and IPv6 filters. The IPv4 filter specifies one or more ranges of IPv4 addresses, and the IPv6 filter specifies one or more ranges of IPv6addresses. If specified, the service enumerates the available IP addresses on the computer and uses only addresses that fall within one of the filter ranges.

You should use an asterisk (*) to indicate that the service listens on all available IP addresses on the computer. When * is used, other ranges in the filter are ignored. If the filter is left blank, the service doesn't listen on any addresses.

For example, if you want the service to listen only on IPv4 addresses, leave the IPv6 filter empty.

Ranges are specified using the syntax IP1-IP2. Multiple ranges are separated using "," (comma) as the delimiter.

Example IPv4 filters:\n2.0.0.1-2.0.0.20, 24.0.0.1-24.0.0.22
Example IPv6 filters:\n3FFE:FFFF:7654:FEDA:1245:BA98:0000:0000-3. FFE:FFFF:7654:FEDA:1245:BA98:3210:4562.
<!-- AllowRemoteServerManagement-Description-End -->

<!-- AllowRemoteServerManagement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowRemoteServerManagement-Editable-End -->

<!-- AllowRemoteServerManagement-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowRemoteServerManagement-DFProperties-End -->

<!-- AllowRemoteServerManagement-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowAutoConfig |
| Friendly Name | Allow remote server management through WinRM |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Management (WinRM) > WinRM Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Service |
| Registry Value Name | AllowAutoConfig |
| ADMX File Name | WindowsRemoteManagement.admx |
<!-- AllowRemoteServerManagement-AdmxBacked-End -->

<!-- AllowRemoteServerManagement-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowRemoteServerManagement-Examples-End -->

<!-- AllowRemoteServerManagement-End -->

<!-- AllowUnencryptedTraffic_Client-Begin -->
## AllowUnencryptedTraffic_Client

<!-- AllowUnencryptedTraffic_Client-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- AllowUnencryptedTraffic_Client-Applicability-End -->

<!-- AllowUnencryptedTraffic_Client-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteManagement/AllowUnencryptedTraffic_Client
```
<!-- AllowUnencryptedTraffic_Client-OmaUri-End -->

<!-- AllowUnencryptedTraffic_Client-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the Windows Remote Management (WinRM) client sends and receives unencrypted messages over the network.

- If you enable this policy setting, the WinRM client sends and receives unencrypted messages over the network.

- If you disable or don't configure this policy setting, the WinRM client sends or receives only encrypted messages over the network.
<!-- AllowUnencryptedTraffic_Client-Description-End -->

<!-- AllowUnencryptedTraffic_Client-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowUnencryptedTraffic_Client-Editable-End -->

<!-- AllowUnencryptedTraffic_Client-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowUnencryptedTraffic_Client-DFProperties-End -->

<!-- AllowUnencryptedTraffic_Client-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowUnencrypted_2 |
| Friendly Name | Allow unencrypted traffic |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Management (WinRM) > WinRM Client |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Client |
| Registry Value Name | AllowUnencryptedTraffic |
| ADMX File Name | WindowsRemoteManagement.admx |
<!-- AllowUnencryptedTraffic_Client-AdmxBacked-End -->

<!-- AllowUnencryptedTraffic_Client-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowUnencryptedTraffic_Client-Examples-End -->

<!-- AllowUnencryptedTraffic_Client-End -->

<!-- AllowUnencryptedTraffic_Service-Begin -->
## AllowUnencryptedTraffic_Service

<!-- AllowUnencryptedTraffic_Service-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- AllowUnencryptedTraffic_Service-Applicability-End -->

<!-- AllowUnencryptedTraffic_Service-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteManagement/AllowUnencryptedTraffic_Service
```
<!-- AllowUnencryptedTraffic_Service-OmaUri-End -->

<!-- AllowUnencryptedTraffic_Service-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the Windows Remote Management (WinRM) service sends and receives unencrypted messages over the network.

- If you enable this policy setting, the WinRM client sends and receives unencrypted messages over the network.

- If you disable or don't configure this policy setting, the WinRM client sends or receives only encrypted messages over the network.
<!-- AllowUnencryptedTraffic_Service-Description-End -->

<!-- AllowUnencryptedTraffic_Service-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowUnencryptedTraffic_Service-Editable-End -->

<!-- AllowUnencryptedTraffic_Service-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowUnencryptedTraffic_Service-DFProperties-End -->

<!-- AllowUnencryptedTraffic_Service-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowUnencrypted_1 |
| Friendly Name | Allow unencrypted traffic |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Management (WinRM) > WinRM Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Service |
| Registry Value Name | AllowUnencryptedTraffic |
| ADMX File Name | WindowsRemoteManagement.admx |
<!-- AllowUnencryptedTraffic_Service-AdmxBacked-End -->

<!-- AllowUnencryptedTraffic_Service-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowUnencryptedTraffic_Service-Examples-End -->

<!-- AllowUnencryptedTraffic_Service-End -->

<!-- DisallowDigestAuthentication-Begin -->
## DisallowDigestAuthentication

<!-- DisallowDigestAuthentication-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisallowDigestAuthentication-Applicability-End -->

<!-- DisallowDigestAuthentication-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteManagement/DisallowDigestAuthentication
```
<!-- DisallowDigestAuthentication-OmaUri-End -->

<!-- DisallowDigestAuthentication-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the Windows Remote Management (WinRM) client uses Digest authentication.

- If you enable this policy setting, the WinRM client doesn't use Digest authentication.

- If you disable or don't configure this policy setting, the WinRM client uses Digest authentication.
<!-- DisallowDigestAuthentication-Description-End -->

<!-- DisallowDigestAuthentication-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisallowDigestAuthentication-Editable-End -->

<!-- DisallowDigestAuthentication-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisallowDigestAuthentication-DFProperties-End -->

<!-- DisallowDigestAuthentication-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisallowDigest |
| Friendly Name | Disallow Digest authentication |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Management (WinRM) > WinRM Client |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Client |
| Registry Value Name | AllowDigest |
| ADMX File Name | WindowsRemoteManagement.admx |
<!-- DisallowDigestAuthentication-AdmxBacked-End -->

<!-- DisallowDigestAuthentication-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisallowDigestAuthentication-Examples-End -->

<!-- DisallowDigestAuthentication-End -->

<!-- DisallowNegotiateAuthenticationClient-Begin -->
## DisallowNegotiateAuthenticationClient

<!-- DisallowNegotiateAuthenticationClient-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisallowNegotiateAuthenticationClient-Applicability-End -->

<!-- DisallowNegotiateAuthenticationClient-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteManagement/DisallowNegotiateAuthenticationClient
```
<!-- DisallowNegotiateAuthenticationClient-OmaUri-End -->

<!-- DisallowNegotiateAuthenticationClient-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the Windows Remote Management (WinRM) client uses Negotiate authentication.

- If you enable this policy setting, the WinRM client doesn't use Negotiate authentication.

- If you disable or don't configure this policy setting, the WinRM client uses Negotiate authentication.
<!-- DisallowNegotiateAuthenticationClient-Description-End -->

<!-- DisallowNegotiateAuthenticationClient-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisallowNegotiateAuthenticationClient-Editable-End -->

<!-- DisallowNegotiateAuthenticationClient-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisallowNegotiateAuthenticationClient-DFProperties-End -->

<!-- DisallowNegotiateAuthenticationClient-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisallowNegotiate_2 |
| Friendly Name | Disallow Negotiate authentication |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Management (WinRM) > WinRM Client |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Client |
| Registry Value Name | AllowNegotiate |
| ADMX File Name | WindowsRemoteManagement.admx |
<!-- DisallowNegotiateAuthenticationClient-AdmxBacked-End -->

<!-- DisallowNegotiateAuthenticationClient-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisallowNegotiateAuthenticationClient-Examples-End -->

<!-- DisallowNegotiateAuthenticationClient-End -->

<!-- DisallowNegotiateAuthenticationService-Begin -->
## DisallowNegotiateAuthenticationService

<!-- DisallowNegotiateAuthenticationService-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisallowNegotiateAuthenticationService-Applicability-End -->

<!-- DisallowNegotiateAuthenticationService-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteManagement/DisallowNegotiateAuthenticationService
```
<!-- DisallowNegotiateAuthenticationService-OmaUri-End -->

<!-- DisallowNegotiateAuthenticationService-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the Windows Remote Management (WinRM) service accepts Negotiate authentication from a remote client.

- If you enable this policy setting, the WinRM service doesn't accept Negotiate authentication from a remote client.

- If you disable or don't configure this policy setting, the WinRM service accepts Negotiate authentication from a remote client.
<!-- DisallowNegotiateAuthenticationService-Description-End -->

<!-- DisallowNegotiateAuthenticationService-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisallowNegotiateAuthenticationService-Editable-End -->

<!-- DisallowNegotiateAuthenticationService-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisallowNegotiateAuthenticationService-DFProperties-End -->

<!-- DisallowNegotiateAuthenticationService-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisallowNegotiate_1 |
| Friendly Name | Disallow Negotiate authentication |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Management (WinRM) > WinRM Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Service |
| Registry Value Name | AllowNegotiate |
| ADMX File Name | WindowsRemoteManagement.admx |
<!-- DisallowNegotiateAuthenticationService-AdmxBacked-End -->

<!-- DisallowNegotiateAuthenticationService-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisallowNegotiateAuthenticationService-Examples-End -->

<!-- DisallowNegotiateAuthenticationService-End -->

<!-- DisallowStoringOfRunAsCredentials-Begin -->
## DisallowStoringOfRunAsCredentials

<!-- DisallowStoringOfRunAsCredentials-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisallowStoringOfRunAsCredentials-Applicability-End -->

<!-- DisallowStoringOfRunAsCredentials-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteManagement/DisallowStoringOfRunAsCredentials
```
<!-- DisallowStoringOfRunAsCredentials-OmaUri-End -->

<!-- DisallowStoringOfRunAsCredentials-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the Windows Remote Management (WinRM) service won't allow RunAs credentials to be stored for any plug-ins.

- If you enable this policy setting, the WinRM service won't allow the RunAsUser or RunAsPassword configuration values to be set for any plug-ins. If a plug-in has already set the RunAsUser and RunAsPassword configuration values, the RunAsPassword configuration value will be erased from the credential store on this computer.

- If you disable or don't configure this policy setting, the WinRM service will allow the RunAsUser and RunAsPassword configuration values to be set for plug-ins and the RunAsPassword value will be stored securely.

If you enable and then disable this policy setting,any values that were previously configured for RunAsPassword will need to be reset.
<!-- DisallowStoringOfRunAsCredentials-Description-End -->

<!-- DisallowStoringOfRunAsCredentials-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisallowStoringOfRunAsCredentials-Editable-End -->

<!-- DisallowStoringOfRunAsCredentials-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisallowStoringOfRunAsCredentials-DFProperties-End -->

<!-- DisallowStoringOfRunAsCredentials-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableRunAs |
| Friendly Name | Disallow WinRM from storing RunAs credentials |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Management (WinRM) > WinRM Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Service |
| Registry Value Name | DisableRunAs |
| ADMX File Name | WindowsRemoteManagement.admx |
<!-- DisallowStoringOfRunAsCredentials-AdmxBacked-End -->

<!-- DisallowStoringOfRunAsCredentials-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisallowStoringOfRunAsCredentials-Examples-End -->

<!-- DisallowStoringOfRunAsCredentials-End -->

<!-- SpecifyChannelBindingTokenHardeningLevel-Begin -->
## SpecifyChannelBindingTokenHardeningLevel

<!-- SpecifyChannelBindingTokenHardeningLevel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- SpecifyChannelBindingTokenHardeningLevel-Applicability-End -->

<!-- SpecifyChannelBindingTokenHardeningLevel-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteManagement/SpecifyChannelBindingTokenHardeningLevel
```
<!-- SpecifyChannelBindingTokenHardeningLevel-OmaUri-End -->

<!-- SpecifyChannelBindingTokenHardeningLevel-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to set the hardening level of the Windows Remote Management (WinRM) service with regard to channel binding tokens.

- If you enable this policy setting, the WinRM service uses the level specified in HardeningLevel to determine whether or not to accept a received request, based on a supplied channel binding token.

- If you disable or don't configure this policy setting, you can configure the hardening level locally on each computer.

If HardeningLevel is set to Strict, any request not containing a valid channel binding token is rejected.

If HardeningLevel is set to Relaxed (default value), any request containing an invalid channel binding token is rejected. However, a request that doesn't contain a channel binding token is accepted (though it isn't protected from credential-forwarding attacks).

If HardeningLevel is set to None, all requests are accepted (though they aren't protected from credential-forwarding attacks).
<!-- SpecifyChannelBindingTokenHardeningLevel-Description-End -->

<!-- SpecifyChannelBindingTokenHardeningLevel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SpecifyChannelBindingTokenHardeningLevel-Editable-End -->

<!-- SpecifyChannelBindingTokenHardeningLevel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SpecifyChannelBindingTokenHardeningLevel-DFProperties-End -->

<!-- SpecifyChannelBindingTokenHardeningLevel-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CBTHardeningLevel_1 |
| Friendly Name | Specify channel binding token hardening level |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Management (WinRM) > WinRM Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Service |
| Registry Value Name | CBTHardeningLevelStatus |
| ADMX File Name | WindowsRemoteManagement.admx |
<!-- SpecifyChannelBindingTokenHardeningLevel-AdmxBacked-End -->

<!-- SpecifyChannelBindingTokenHardeningLevel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SpecifyChannelBindingTokenHardeningLevel-Examples-End -->

<!-- SpecifyChannelBindingTokenHardeningLevel-End -->

<!-- TrustedHosts-Begin -->
## TrustedHosts

<!-- TrustedHosts-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- TrustedHosts-Applicability-End -->

<!-- TrustedHosts-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteManagement/TrustedHosts
```
<!-- TrustedHosts-OmaUri-End -->

<!-- TrustedHosts-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the Windows Remote Management (WinRM) client uses the list specified in TrustedHostsList to determine if the destination host is a trusted entity.

- If you enable this policy setting, the WinRM client uses the list specified in TrustedHostsList to determine if the destination host is a trusted entity. The WinRM client uses this list when neither HTTPS nor Kerberos are used to authenticate the identity of the host.

- If you disable or don't configure this policy setting and the WinRM client needs to use the list of trusted hosts, you must configure the list of trusted hosts locally on each computer.
<!-- TrustedHosts-Description-End -->

<!-- TrustedHosts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TrustedHosts-Editable-End -->

<!-- TrustedHosts-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TrustedHosts-DFProperties-End -->

<!-- TrustedHosts-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TrustedHosts |
| Friendly Name | Trusted Hosts |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Management (WinRM) > WinRM Client |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Client |
| Registry Value Name | TrustedHosts |
| ADMX File Name | WindowsRemoteManagement.admx |
<!-- TrustedHosts-AdmxBacked-End -->

<!-- TrustedHosts-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TrustedHosts-Examples-End -->

<!-- TrustedHosts-End -->

<!-- TurnOnCompatibilityHTTPListener-Begin -->
## TurnOnCompatibilityHTTPListener

<!-- TurnOnCompatibilityHTTPListener-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- TurnOnCompatibilityHTTPListener-Applicability-End -->

<!-- TurnOnCompatibilityHTTPListener-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteManagement/TurnOnCompatibilityHTTPListener
```
<!-- TurnOnCompatibilityHTTPListener-OmaUri-End -->

<!-- TurnOnCompatibilityHTTPListener-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns on or turns off an HTTP listener created for backward compatibility purposes in the Windows Remote Management (WinRM) service.

- If you enable this policy setting, the HTTP listener always appears.

- If you disable or don't configure this policy setting, the HTTP listener never appears.

When certain port 80 listeners are migrated to WinRM 2.0, the listener port number changes to 5985.

A listener might be automatically created on port 80 to ensure backward compatibility.
<!-- TurnOnCompatibilityHTTPListener-Description-End -->

<!-- TurnOnCompatibilityHTTPListener-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOnCompatibilityHTTPListener-Editable-End -->

<!-- TurnOnCompatibilityHTTPListener-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TurnOnCompatibilityHTTPListener-DFProperties-End -->

<!-- TurnOnCompatibilityHTTPListener-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HttpCompatibilityListener |
| Friendly Name | Turn On Compatibility HTTP Listener |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Management (WinRM) > WinRM Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Service |
| Registry Value Name | HttpCompatibilityListener |
| ADMX File Name | WindowsRemoteManagement.admx |
<!-- TurnOnCompatibilityHTTPListener-AdmxBacked-End -->

<!-- TurnOnCompatibilityHTTPListener-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOnCompatibilityHTTPListener-Examples-End -->

<!-- TurnOnCompatibilityHTTPListener-End -->

<!-- TurnOnCompatibilityHTTPSListener-Begin -->
## TurnOnCompatibilityHTTPSListener

<!-- TurnOnCompatibilityHTTPSListener-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- TurnOnCompatibilityHTTPSListener-Applicability-End -->

<!-- TurnOnCompatibilityHTTPSListener-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteManagement/TurnOnCompatibilityHTTPSListener
```
<!-- TurnOnCompatibilityHTTPSListener-OmaUri-End -->

<!-- TurnOnCompatibilityHTTPSListener-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns on or turns off an HTTPS listener created for backward compatibility purposes in the Windows Remote Management (WinRM) service.

- If you enable this policy setting, the HTTPS listener always appears.

- If you disable or don't configure this policy setting, the HTTPS listener never appears.

When certain port 443 listeners are migrated to WinRM 2.0, the listener port number changes to 5986.

A listener might be automatically created on port 443 to ensure backward compatibility.
<!-- TurnOnCompatibilityHTTPSListener-Description-End -->

<!-- TurnOnCompatibilityHTTPSListener-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOnCompatibilityHTTPSListener-Editable-End -->

<!-- TurnOnCompatibilityHTTPSListener-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TurnOnCompatibilityHTTPSListener-DFProperties-End -->

<!-- TurnOnCompatibilityHTTPSListener-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HttpsCompatibilityListener |
| Friendly Name | Turn On Compatibility HTTPS Listener |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Management (WinRM) > WinRM Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Service |
| Registry Value Name | HttpsCompatibilityListener |
| ADMX File Name | WindowsRemoteManagement.admx |
<!-- TurnOnCompatibilityHTTPSListener-AdmxBacked-End -->

<!-- TurnOnCompatibilityHTTPSListener-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOnCompatibilityHTTPSListener-Examples-End -->

<!-- TurnOnCompatibilityHTTPSListener-End -->

<!-- RemoteManagement-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- RemoteManagement-CspMoreInfo-End -->

<!-- RemoteManagement-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)

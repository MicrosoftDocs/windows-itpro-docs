---
title: WindowsConnectionManager Policy CSP
description: Learn more about the WindowsConnectionManager Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/09/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- WindowsConnectionManager-Begin -->
# Policy CSP - WindowsConnectionManager

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- WindowsConnectionManager-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WindowsConnectionManager-Editable-End -->

<!-- ProhitConnectionToNonDomainNetworksWhenConnectedToDomainAuthenticatedNetwork-Begin -->
## ProhitConnectionToNonDomainNetworksWhenConnectedToDomainAuthenticatedNetwork

<!-- ProhitConnectionToNonDomainNetworksWhenConnectedToDomainAuthenticatedNetwork-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1803 [10.0.17134] and later |
<!-- ProhitConnectionToNonDomainNetworksWhenConnectedToDomainAuthenticatedNetwork-Applicability-End -->

<!-- ProhitConnectionToNonDomainNetworksWhenConnectedToDomainAuthenticatedNetwork-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsConnectionManager/ProhitConnectionToNonDomainNetworksWhenConnectedToDomainAuthenticatedNetwork
```
<!-- ProhitConnectionToNonDomainNetworksWhenConnectedToDomainAuthenticatedNetwork-OmaUri-End -->

<!-- ProhitConnectionToNonDomainNetworksWhenConnectedToDomainAuthenticatedNetwork-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents computers from connecting to both a domain based network and a non-domain based network at the same time.

- If this policy setting is enabled, the computer responds to automatic and manual network connection attempts based on the following circumstances:

Automatic connection attempts
- When the computer is already connected to a domain based network, all automatic connection attempts to non-domain networks are blocked.
- When the computer is already connected to a non-domain based network, automatic connection attempts to domain based networks are blocked.

Manual connection attempts
- When the computer is already connected to either a non-domain based network or a domain based network over media other than Ethernet, and a user attempts to create a manual connection to an additional network in violation of this policy setting, the existing network connection is disconnected and the manual connection is allowed.
- When the computer is already connected to either a non-domain based network or a domain based network over Ethernet, and a user attempts to create a manual connection to an additional network in violation of this policy setting, the existing Ethernet connection is maintained and the manual connection attempt is blocked.

- If this policy setting is not configured or is disabled, computers are allowed to connect simultaneously to both domain and non-domain networks.
<!-- ProhitConnectionToNonDomainNetworksWhenConnectedToDomainAuthenticatedNetwork-Description-End -->

<!-- ProhitConnectionToNonDomainNetworksWhenConnectedToDomainAuthenticatedNetwork-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ProhitConnectionToNonDomainNetworksWhenConnectedToDomainAuthenticatedNetwork-Editable-End -->

<!-- ProhitConnectionToNonDomainNetworksWhenConnectedToDomainAuthenticatedNetwork-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ProhitConnectionToNonDomainNetworksWhenConnectedToDomainAuthenticatedNetwork-DFProperties-End -->

<!-- ProhitConnectionToNonDomainNetworksWhenConnectedToDomainAuthenticatedNetwork-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WCM_BlockNonDomain |
| Friendly Name | Prohibit connection to non-domain networks when connected to domain authenticated network |
| Location | Computer Configuration |
| Path | Network > Windows Connection Manager |
| Registry Key Name | Software\Policies\Microsoft\Windows\WcmSvc\GroupPolicy |
| Registry Value Name | fBlockNonDomain |
| ADMX File Name | WCM.admx |
<!-- ProhitConnectionToNonDomainNetworksWhenConnectedToDomainAuthenticatedNetwork-AdmxBacked-End -->

<!-- ProhitConnectionToNonDomainNetworksWhenConnectedToDomainAuthenticatedNetwork-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ProhitConnectionToNonDomainNetworksWhenConnectedToDomainAuthenticatedNetwork-Examples-End -->

<!-- ProhitConnectionToNonDomainNetworksWhenConnectedToDomainAuthenticatedNetwork-End -->

<!-- WindowsConnectionManager-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- WindowsConnectionManager-CspMoreInfo-End -->

<!-- WindowsConnectionManager-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)

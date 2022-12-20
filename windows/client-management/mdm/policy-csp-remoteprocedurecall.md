---
title: RemoteProcedureCall Policy CSP
description: Learn more about the RemoteProcedureCall Area in Policy CSP
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 12/20/2022
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- RemoteProcedureCall-Begin -->
# Policy CSP - RemoteProcedureCall

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- RemoteProcedureCall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RemoteProcedureCall-Editable-End -->

<!-- RestrictUnauthenticatedRPCClients-Begin -->
## RestrictUnauthenticatedRPCClients

<!-- RestrictUnauthenticatedRPCClients-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1703 [10.0.15063] and later |
<!-- RestrictUnauthenticatedRPCClients-Applicability-End -->

<!-- RestrictUnauthenticatedRPCClients-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteProcedureCall/RestrictUnauthenticatedRPCClients
```
<!-- RestrictUnauthenticatedRPCClients-OmaUri-End -->

<!-- RestrictUnauthenticatedRPCClients-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls how the RPC server runtime handles unauthenticated RPC clients connecting to RPC servers.

This policy setting impacts all RPC applications. In a domain environment this policy setting should be used with caution as it can impact a wide range of functionality including group policy processing itself. Reverting a change to this policy setting can require manual intervention on each affected machine. This policy setting should never be applied to a domain controller.

If you disable this policy setting, the RPC server runtime uses the value of "Authenticated" on Windows Client, and the value of "None" on Windows Server versions that support this policy setting.

If you do not configure this policy setting, it remains disabled. The RPC server runtime will behave as though it was enabled with the value of "Authenticated" used for Windows Client and the value of "None" used for Server SKUs that support this policy setting.

If you enable this policy setting, it directs the RPC server runtime to restrict unauthenticated RPC clients connecting to RPC servers running on a machine. A client will be considered an authenticated client if it uses a named pipe to communicate with the server or if it uses RPC Security. RPC Interfaces that have specifically requested to be accessible by unauthenticated clients may be exempt from this restriction, depending on the selected value for this policy setting.

-- "None" allows all RPC clients to connect to RPC Servers running on the machine on which the policy setting is applied.

-- "Authenticated" allows only authenticated RPC Clients (per the definition above) to connect to RPC Servers running on the machine on which the policy setting is applied. Exemptions are granted to interfaces that have requested them.

-- "Authenticated without exceptions" allows only authenticated RPC Clients (per the definition above) to connect to RPC Servers running on the machine on which the policy setting is applied. No exceptions are allowed.

Note: This policy setting will not be applied until the system is rebooted.
<!-- RestrictUnauthenticatedRPCClients-Description-End -->

<!-- RestrictUnauthenticatedRPCClients-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictUnauthenticatedRPCClients-Editable-End -->

<!-- RestrictUnauthenticatedRPCClients-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictUnauthenticatedRPCClients-DFProperties-End -->

<!-- RestrictUnauthenticatedRPCClients-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RpcRestrictRemoteClients |
| Friendly Name | Restrict Unauthenticated RPC clients |
| Location | Computer Configuration |
| Path | System > Remote Procedure Call |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Rpc |
| ADMX File Name | RPC.admx |
<!-- RestrictUnauthenticatedRPCClients-AdmxBacked-End -->

<!-- RestrictUnauthenticatedRPCClients-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictUnauthenticatedRPCClients-Examples-End -->

<!-- RestrictUnauthenticatedRPCClients-End -->

<!-- RPCEndpointMapperClientAuthentication-Begin -->
## RPCEndpointMapperClientAuthentication

<!-- RPCEndpointMapperClientAuthentication-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1703 [10.0.15063] and later |
<!-- RPCEndpointMapperClientAuthentication-Applicability-End -->

<!-- RPCEndpointMapperClientAuthentication-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteProcedureCall/RPCEndpointMapperClientAuthentication
```
<!-- RPCEndpointMapperClientAuthentication-OmaUri-End -->

<!-- RPCEndpointMapperClientAuthentication-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether RPC clients authenticate with the Endpoint Mapper Service when the call they are making contains authentication information. The Endpoint Mapper Service on computers running Windows NT4 (all service packs) cannot process authentication information supplied in this manner.

If you disable this policy setting, RPC clients will not authenticate to the Endpoint Mapper Service, but they will be able to communicate with the Endpoint Mapper Service on Windows NT4 Server.

If you enable this policy setting, RPC clients will authenticate to the Endpoint Mapper Service for calls that contain authentication information. Clients making such calls will not be able to communicate with the Windows NT4 Server Endpoint Mapper Service.

If you do not configure this policy setting, it remains disabled. RPC clients will not authenticate to the Endpoint Mapper Service, but they will be able to communicate with the Windows NT4 Server Endpoint Mapper Service.

Note: This policy will not be applied until the system is rebooted.
<!-- RPCEndpointMapperClientAuthentication-Description-End -->

<!-- RPCEndpointMapperClientAuthentication-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RPCEndpointMapperClientAuthentication-Editable-End -->

<!-- RPCEndpointMapperClientAuthentication-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RPCEndpointMapperClientAuthentication-DFProperties-End -->

<!-- RPCEndpointMapperClientAuthentication-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RpcEnableAuthEpResolution |
| Friendly Name | Enable RPC Endpoint Mapper Client Authentication |
| Location | Computer Configuration |
| Path | System > Remote Procedure Call |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Rpc |
| Registry Value Name | EnableAuthEpResolution |
| ADMX File Name | RPC.admx |
<!-- RPCEndpointMapperClientAuthentication-AdmxBacked-End -->

<!-- RPCEndpointMapperClientAuthentication-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RPCEndpointMapperClientAuthentication-Examples-End -->

<!-- RPCEndpointMapperClientAuthentication-End -->

<!-- RemoteProcedureCall-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- RemoteProcedureCall-CspMoreInfo-End -->

<!-- RemoteProcedureCall-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)

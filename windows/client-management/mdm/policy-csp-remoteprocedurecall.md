---
title: Policy CSP - RemoteProcedureCall
description: The Policy CSP - RemoteProcedureCall setting controls whether RPC clients authenticate when the call they're making contains authentication information.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - RemoteProcedureCall

<hr/>

<!--Policies-->
## RemoteProcedureCall policies

<dl>
  <dd>
    <a href="#remoteprocedurecall-rpcendpointmapperclientauthentication">RemoteProcedureCall/RPCEndpointMapperClientAuthentication</a>
  </dd>
  <dd>
    <a href="#remoteprocedurecall-restrictunauthenticatedrpcclients">RemoteProcedureCall/RestrictUnauthenticatedRPCClients</a>
  </dd>
</dl>

> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policy-->
<a href="" id="remoteprocedurecall-rpcendpointmapperclientauthentication"></a>**RemoteProcedureCall/RPCEndpointMapperClientAuthentication**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls whether RPC clients authenticate with the Endpoint Mapper Service, when the call they're making contains authentication information.   The Endpoint Mapper Service on computers running Windows NT4 (all service packs) can't process authentication information supplied in this manner.

If you disable this policy setting, RPC clients won't authenticate to the Endpoint Mapper Service, but they'll be able to communicate with the Endpoint Mapper Service on Windows NT4 Server.

If you enable this policy setting, RPC clients will authenticate to the Endpoint Mapper Service for calls that contain authentication information. Clients making such calls won't be able to communicate with the Windows NT4 Server Endpoint Mapper Service.

If you don't configure this policy setting, it remains disabled. RPC clients won't authenticate to the Endpoint Mapper Service, but they'll be able to communicate with the Windows NT4 Server Endpoint Mapper Service.

> [!NOTE]
> This policy won't be applied until the system is rebooted.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable RPC Endpoint Mapper Client Authentication*
-   GP name: *RpcEnableAuthEpResolution*
-   GP path: *System/Remote Procedure Call*
-   GP ADMX file name: *rpc.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remoteprocedurecall-restrictunauthenticatedrpcclients"></a>**RemoteProcedureCall/RestrictUnauthenticatedRPCClients**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls, how the RPC server runtime handles unauthenticated RPC clients connecting to RPC servers.

This policy setting impacts all RPC applications. In a domain environment, this policy setting should be used with caution as it can impact a wide range of functionality including group policy processing itself. Reverting a change to this policy setting can require manual intervention on each affected machine. This policy setting should never be applied to a domain controller.

If you disable this policy setting, the RPC server runtime uses the value of "Authenticated" on Windows Client, and the value of "None" on Windows Server versions that support this policy setting.

If you don't configure this policy setting, it remains disabled. The RPC server runtime will behave as though it was enabled with the value of "Authenticated" used for Windows Client, and the value of "None" used for Server SKUs that support this policy setting.

If you enable this policy setting, it directs the RPC server runtime to restrict unauthenticated RPC clients connecting to RPC servers running on a machine. A client will be considered an authenticated client if it uses a named pipe to communicate with the server or if it uses RPC Security. RPC Interfaces that have requested to be accessible by unauthenticated clients may be exempt from this restriction, depending on the selected value for this policy setting.

- "None" allows all RPC clients to connect to RPC Servers running on the machine on which the policy setting is applied.

- "Authenticated" allows only authenticated RPC Clients (per the definition above) to connect to RPC Servers running on the machine on which the policy setting is applied. Exemptions are granted to interfaces that have requested them.

- "Authenticated without exceptions" allows only authenticated RPC Clients (per the definition above) to connect to RPC Servers running on the machine on which the policy setting is applied. No exceptions are allowed.

> [!NOTE]
> This policy setting won't be applied until the system is rebooted.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Restrict Unauthenticated RPC clients*
-   GP name: *RpcRestrictRemoteClients*
-   GP path: *System/Remote Procedure Call*
-   GP ADMX file name: *rpc.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)
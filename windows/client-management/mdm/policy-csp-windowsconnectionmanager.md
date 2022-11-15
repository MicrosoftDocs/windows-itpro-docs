---
title: Policy CSP - WindowsConnectionManager
description: The Policy CSP - WindowsConnectionManager setting prevents computers from connecting to a domain-based network and a non-domain-based network simultaneously.
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

# Policy CSP - WindowsConnectionManager

<hr/>

<!--Policies-->
## WindowsConnectionManager policies

<dl>
  <dd>
    <a href="#windowsconnectionmanager-prohitconnectiontonondomainnetworkswhenconnectedtodomainauthenticatednetwork">WindowsConnectionManager/ProhitConnectionToNonDomainNetworksWhenConnectedToDomainAuthenticatedNetwork</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="windowsconnectionmanager-prohitconnectiontonondomainnetworkswhenconnectedtodomainauthenticatednetwork"></a>**WindowsConnectionManager/ProhitConnectionToNonDomainNetworksWhenConnectedToDomainAuthenticatedNetwork**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
This policy setting prevents computers from connecting to both a domain-based network and a non-domain-based network at the same time.

If this policy setting is enabled, the computer responds to automatic and manual network connection attempts based on the following circumstances:

Automatic connection attempts:

- When the computer is already connected to a domain-based network, all automatic connection attempts to non-domain networks are blocked.
- When the computer is already connected to a non-domain-based network, automatic connection attempts to domain-based networks are blocked.

Manual connection attempts:

- When the computer is already connected to either a non-domain-based network or a domain-based network over media other than Ethernet, and a user attempts to create a manual connection to another network in violation of this policy setting, then an existing network connection is disconnected and the manual connection is allowed.
- When the computer is already connected to either a non-domain-based network or a domain-based network over Ethernet, and a user attempts to create a manual connection to another network in violation of this policy setting, then an existing Ethernet connection is maintained and the manual connection attempt is blocked.

If this policy setting isn't configured or is disabled, computers are allowed to connect simultaneously to both domain and non-domain networks.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prohibit connection to non-domain networks when connected to domain authenticated network*
-   GP name: *WCM_BlockNonDomain*
-   GP path: *Network/Windows Connection Manager*
-   GP ADMX file name: *WCM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)
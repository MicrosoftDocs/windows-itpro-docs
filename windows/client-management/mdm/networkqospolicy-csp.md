---
title: NetworkQoSPolicy CSP
description: The NetworkQoSPolicy CSP applies the Quality of Service (QoS) policy for Microsoft Surface Hub. This CSP was added in Windows 10, version 1703.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 04/22/2021
ms.reviewer: 
manager: aaroncz
---

# NetworkQoSPolicy CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The NetworkQoSPolicy configuration service provider creates network Quality of Service (QoS) policies. A QoS policy performs a set of actions on network traffic based on a set of matching conditions. This CSP was added in Windows 10, version 1703.

The following conditions are supported:
- Network traffic from a specific application name
- Network traffic from specific source or destination ports
- Network traffic from a specific IP protocol (TCP, UDP, or both)

The following actions are supported:
- Layer 2 tagging using a IEEE 802.1p priority value
- Layer 3 tagging using a differentiated services code point (DSCP) value

> [!NOTE]
> The NetworkQoSPolicy configuration service provider is officially supported for devices that are Intune managed and Azure AD joined. Currently, this CSP is not supported on the following devices:
> - Azure AD Hybrid joined devices.
> - Devices that use both GPO and CSP at the same time.
>
> The minimum operating system requirement for this CSP is Windows 10, version 1703. This CSP is not supported in Microsoft Surface Hub prior to Windows 10, version 1703.

The following example shows the NetworkQoSPolicy configuration service provider in tree format.
```
./Device/Vendor/MSFT
NetworkQoSPolicy
----Version
----Name
--------IPProtocolMatchCondition
--------AppPathNameMatchCondition
--------SourcePortMatchCondition
--------DestinationPortMatchCondition
--------PriorityValue8021Action
--------DSCPAction
```
<a href="" id="networkqospolicy"></a>**NetworkQoSPolicy**
<p>The root node for the NetworkQoSPolicy configuration service provider.</p>

<a href="" id="version"></a>**Version**
<p>Specifies the version information.

<p>The data type is int.

<p>The only supported operation is Get.

<a href="" id="name"></a>***Name***
<p>Node for the QoS policy name.

<a href="" id="name-ipprotocolmatchcondition"></a>***Name*/IPProtocolMatchCondition**
<p>Specifies the IP protocol used to match the network traffic.

<p>Valid values are:

- 0 (default) - Both TCP and UDP
- 1 - TCP
- 2 - UDP

<p>The data type is int.

<p>The supported operations are Add, Get, Delete, and Replace.

<a href="" id="name-apppathnamematchcondition"></a>***Name*/AppPathNameMatchCondition**
<p>Specifies the name of an application to be used to match the network traffic, such as `application.exe` or `%ProgramFiles%\application.exe`.

<p>The data type is char.

<p>The supported operations are Add, Get, Delete, and Replace.

<a href="" id="name-sourceportmatchcondition"></a>***Name*/SourcePortMatchCondition**
<p>Specifies a single port or a range of ports to be used to match the network traffic source.

<p>Valid values are:

-   A range of source ports: _[first port number]_-_[last port number]_
-   A single source port: _[port number]_

<p>The data type is char.

<p>The supported operations are Add, Get, Delete, and Replace.

<a href="" id="name-destinationportmatchcondition"></a>***Name*/DestinationPortMatchCondition**
<p>Specifies a single source port or a range of ports to be used to match the network traffic destination.

<p>Valid values are:

-   A range of destination ports: _[first port number]_-_[last port number]_
-   A single destination port: _[port number]_

<p>The data type is char.

<p>The supported operations are Add, Get, Delete, and Replace.

<a href="" id="name-priorityvalue8021action"></a>***Name*/PriorityValue8021Action**
<p>Specifies the IEEE 802.1p priority value to apply to matching network traffic.

<p>Valid values are 0-7.

<p>The data type is int.

<p>The supported operations are Add, Get, Delete, and Replace.

<a href="" id="name-dscpaction"></a>***Name*/DSCPAction**
<p>The Differentiated Services Code Point (DSCP) value to apply to matching network traffic.

<p>Valid values are 0-63.

<p>The data type is int.

<p>The supported operations are Add, Get, Delete, and Replace.


## Related topics

Read more about the XML DDF structure to create this policy by following the links below:

- [More Information about DDF and structure](networkqospolicy-ddf.md)
- [CSP DDF files download](configuration-service-provider-ddf.md)

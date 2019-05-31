---
title: NetworkQoSPolicy CSP
description: he NetworkQoSPolicy CSP applies the Quality of Service (QoS) policy for Microsoft Surface Hub. This CSP was added in Windows 10, version 1703.
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 06/26/2017
ms.reviewer: 
manager: dansimp
---

# NetworkQoSPolicy CSP

The NetworkQoSPolicy configuration service provider creates network Quality of Service (QoS) policies. A QoS policy performs a set of actions on network traffic based on a set of matching conditions. This CSP was added in Windows 10, version 1703.

The following conditions are supported:
-	Network traffic from a specific application name
-	Network traffic from specific source or destination ports
-	Network traffic from a specific IP protocol (TCP, UDP, or both)
 
The following actions are supported:
-	Layer 2 tagging using a IEEE 802.1p priority value
-	Layer 3 tagging using a differentiated services code point (DSCP) value

> [!NOTE]
> The NetworkQoSPolicy configuration service provider is supported only in Microsoft Surface Hub.

The following diagram shows the NetworkQoSPolicy configuration service provider in tree format.

![NetworkQoSPolicy CSP diagram](images/provisioning-csp-networkqospolicy.png)

<a href="" id="networkqospolicy"></a>**NetworkQoSPolicy**   
<p style="margin-left: 20px">The root node for the NetworkQoSPolicy configuration service provider.</p>

<a href="" id="version"></a>**Version**  
<p style="margin-left: 20px">Specifies the version information.

<p style="margin-left: 20px">The data type is int. 

<p style="margin-left: 20px">The only supported operation is Get.

<a href="" id="name"></a>**_Name_**  
<p style="margin-left: 20px">Node for the QoS policy name.

<a href="" id="name-ipprotocolmatchcondition"></a>**_Name_/IPProtocolMatchCondition**  
<p style="margin-left: 20px">Specifies the IP protocol used to match the network traffic. 

<p style="margin-left: 20px">Valid values are:

   - 0 (default) - Both TCP and UDP 
   - 1 - TCP
   - 2 - UDP

<p style="margin-left: 20px">The data type is int. 

<p style="margin-left: 20px">The supported operations are Add, Get, Delete, and Replace.

<a href="" id="name-apppathnamematchcondition"></a>**_Name_/AppPathNameMatchCondition**  
<p style="margin-left: 20px">Specifies the name of an application to be used to match the network traffic, such as application.exe or %ProgramFiles%\application.exe.

<p style="margin-left: 20px">The data type is char. 

<p style="margin-left: 20px">The supported operations are Add, Get, Delete, and Replace.

<a href="" id="name-sourceportmatchcondition"></a>**_Name_/SourcePortMatchCondition**  
<p style="margin-left: 20px">Specifies a single port or a range of ports to be used to match the network traffic source. 

<p style="margin-left: 20px">Valid values are: 

-   A range of source ports: _[first port number]_-_[last port number]_
-   A single source port: _[port number]_
   
<p style="margin-left: 20px">The data type is char. 

<p style="margin-left: 20px">The supported operations are Add, Get, Delete, and Replace.

<a href="" id="name-destinationportmatchcondition"></a>**_Name_/DestinationPortMatchCondition**  
<p style="margin-left: 20px">Specifies a single source port or a range of ports to be used to match the network traffic destination.

<p style="margin-left: 20px">Valid values are: 

-   A range of destination ports: _[first port number]_-_[last port number]_
-   A single destination port: _[port number]_
   
<p style="margin-left: 20px">The data type is char. 

<p style="margin-left: 20px">The supported operations are Add, Get, Delete, and Replace.

<a href="" id="name-priorityvalue8021action"></a>**_Name_/PriorityValue8021Action**  
<p style="margin-left: 20px">Specifies the IEEE 802.1p priority value to apply to matching network traffic.

<p style="margin-left: 20px">Valid values are 0-7.

<p style="margin-left: 20px">The data type is int.

<p style="margin-left: 20px">The supported operations are Add, Get, Delete, and Replace.

<a href="" id="name-dscpaction"></a>**_Name_/DSCPAction**  
<p style="margin-left: 20px">The differentiated services code point (DSCP) value to apply to matching network traffic.

<p style="margin-left: 20px">Valid values are 0-63.

<p style="margin-left: 20px">The data type is int.

<p style="margin-left: 20px">The supported operations are Add, Get, Delete, and Replace.


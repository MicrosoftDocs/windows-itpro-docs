---
title: Policy CSP - ADMX_LinkLayerTopologyDiscovery
description: Policy CSP - ADMX_LinkLayerTopologyDiscovery
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/04/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_LinkLayerTopologyDiscovery
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_LinkLayerTopologyDiscovery policies  

<dl>
  <dd>
    <a href="#admx-linklayertopologydiscovery-lltd-enablelltdio">ADMX_LinkLayerTopologyDiscovery/LLTD_EnableLLTDIO</a>
  </dd>
  <dd>
    <a href="#admx-linklayertopologydiscovery-lltd-enablerspndr">ADMX_LinkLayerTopologyDiscovery/LLTD_EnableRspndr</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-linklayertopologydiscovery-lltd-enablelltdio"></a>**ADMX_LinkLayerTopologyDiscovery/LLTD_EnableLLTDIO**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting changes the operational behavior of the Mapper I/O network protocol driver.

LLTDIO allows a computer to discover the topology of a network it's connected to. It also allows a computer to initiate Quality-of-Service requests such as bandwidth estimation and network health analysis.

If you enable this policy setting, additional options are available to fine-tune your selection. You may choose the "Allow operation while in domain" option to allow LLTDIO to operate on a network interface that's connected to a managed network. On the other hand, if a network interface is connected to an unmanaged network, you may choose the "Allow operation while in public network" and "Prohibit operation while in private network" options instead.

If you disable or do not configure this policy setting, the default behavior of LLTDIO will apply.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn on Mapper I/O (LLTDIO) driver*
-   GP name: *LLTD_EnableLLTDIO*
-   GP path: *Network/Link-Layer Topology Discovery*
-   GP ADMX file name: *LinkLayerTopologyDiscovery.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-linklayertopologydiscovery-lltd-enablerspndr"></a>**ADMX_LinkLayerTopologyDiscovery/LLTD_EnableRspndr**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting changes the operational behavior of the Responder network protocol driver.

The Responder allows a computer to participate in Link Layer Topology Discovery requests so that it can be discovered and located on the network. It also allows a computer to participate in Quality-of-Service activities such as bandwidth estimation and network health analysis.

If you enable this policy setting, additional options are available to fine-tune your selection. You may choose the "Allow operation while in domain" option to allow the Responder to operate on a network interface that's connected to a managed network. On the other hand, if a network interface is connected to an unmanaged network, you may choose the "Allow operation while in public network" and "Prohibit operation while in private network" options instead.

If you disable or do not configure this policy setting, the default behavior for the Responder will apply.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn on Responder (RSPNDR) driver*
-   GP name: *LLTD_EnableRspndr*
-   GP path: *Network/Link-Layer Topology Discovery*
-   GP ADMX file name: *LinkLayerTopologyDiscovery.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

Footnotes:

- 1 - Available in Windows 10, version 1607
- 2 - Available in Windows 10, version 1703
- 3 - Available in Windows 10, version 1709
- 4 - Available in Windows 10, version 1803
- 5 - Available in Windows 10, version 1809
- 6 - Available in Windows 10, version 1903
- 7 - Available in Windows 10, version 1909
- 8 - Available in Windows 10, version 2004
- 9 - Available in Windows 10, version 20H2

<!--/Policies-->


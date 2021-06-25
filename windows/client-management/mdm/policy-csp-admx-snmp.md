---
title: Policy CSP - ADMX_Snmp
description: Policy CSP - ADMX_Snmp
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/24/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_Snmp
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_Snmp policies  

<dl>
  <dd>
    <a href="#admx-snmp-snmp-communities">ADMX_Snmp/SNMP_Communities</a>
  </dd>
  <dd>
    <a href="#admx-snmp-snmp-permittedmanagers">ADMX_Snmp/SNMP_PermittedManagers</a>
  </dd>
  <dd>
    <a href="#admx-snmp-snmp-traps-public">ADMX_Snmp/SNMP_Traps_Public</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-snmp-snmp-communities"></a>**ADMX_Snmp/SNMP_Communities**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting configures a list of the communities defined to the Simple Network Management Protocol (SNMP) service.

SNMP is a protocol designed to give a user the capability to remotely manage a computer network, by polling and setting terminal values and monitoring network events.

A valid community is a community recognized by the SNMP service, while a community is a group of hosts (servers, workstations, hubs, and routers) that are administered together by SNMP. The SNMP service is a managed network node that receives SNMP packets from the network.

If you enable this policy setting, the SNMP agent only accepts requests from management systems within the communities it recognizes, and only SNMP Read operation is allowed for the community.

If you disable or do not configure this policy setting, the SNMP service takes the Valid Communities configured on the local computer instead.

Best practice: For security purposes, it is recommended to restrict the HKLM\SOFTWARE\Policies\SNMP\Parameters\ValidCommunities key to allow only the local admin group full control.

> [!NOTE]
> - It is good practice to use a cryptic community name.
> - This policy setting has no effect if the SNMP agent is not installed on the client computer.

Also, see the other two SNMP settings: "Specify permitted managers" and "Specify trap configuration".

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify communities*
-   GP name: *SNMP_Communities*
-   GP path: *Network\SNMP*
-   GP ADMX file name: *Snmp.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-snmp-snmp-permittedmanagers"></a>**ADMX_Snmp/SNMP_PermittedManagers**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines the permitted list of hosts that can submit a query to the Simple Network Management (SNMP) agent running on the client computer.

Simple Network Management Protocol is a protocol designed to give a user the capability to remotely manage a computer network by polling and setting terminal values and monitoring network events.

The manager is located on the host computer on the network. The manager's role is to poll the agents for certain requested information.

If you enable this policy setting, the SNMP agent only accepts requests from the list of permitted managers that you configure using this setting.

If you disable or do not configure this policy setting, SNMP service takes the permitted managers configured on the local computer instead.

Best practice: For security purposes, it is recommended to restrict the HKLM\SOFTWARE\Policies\SNMP\Parameters\PermittedManagers key to allow only the local admin group full control.

> [!NOTE]
> This policy setting has no effect if the SNMP agent is not installed on the client computer.

Also, see the other two SNMP policy settings: "Specify trap configuration" and "Specify Community Name".

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify permitted managers*
-   GP name: *SNMP_PermittedManagers*
-   GP path: *Network\SNMP*
-   GP ADMX file name: *Snmp.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-snmp-snmp-traps-public"></a>**ADMX_Snmp/SNMP_Traps_Public**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting allows trap configuration for the Simple Network Management Protocol (SNMP) agent.

Simple Network Management Protocol is a protocol designed to give a user the capability to remotely manage a computer network by polling and setting terminal values and monitoring network events.

This policy setting allows you to configure the name of the hosts that receive trap messages for the community sent by the SNMP service. A trap message is an alert or significant event that allows the SNMP agent to notify management systems asynchronously.

If you enable this policy setting, the SNMP service sends trap messages to the hosts within the "public" community.

If you disable or do not configure this policy setting, the SNMP service takes the trap configuration configured on the local computer instead.

> [!NOTE]
> This setting has no effect if the SNMP agent is not installed on the client computer.

Also, see the other two SNMP settings: "Specify permitted managers" and "Specify Community Name".

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify traps for public community*
-   GP name: *SNMP_Traps_Public*
-   GP path: *Network\SNMP*
-   GP ADMX file name: *Snmp.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.

<!--/Policies-->


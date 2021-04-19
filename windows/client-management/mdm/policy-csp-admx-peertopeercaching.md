---
title: Policy CSP - ADMX_PeerToPeerCaching
description: Policy CSP - ADMX_PeerToPeerCaching
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/16/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_PeerToPeerCaching
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_PeerToPeerCaching policies  

<dl>
  <dd>
    <a href="#admx-peertopeercaching-enablewindowsbranchcache">ADMX_PeerToPeerCaching/EnableWindowsBranchCache</a>
  </dd>
  <dd>
    <a href="#admx-peertopeercaching-enablewindowsbranchcache-distributed">ADMX_PeerToPeerCaching/EnableWindowsBranchCache_Distributed</a>
  </dd>
  <dd>
    <a href="#admx-peertopeercaching-enablewindowsbranchcache-hosted">ADMX_PeerToPeerCaching/EnableWindowsBranchCache_Hosted</a>
  </dd>
  <dd>
    <a href="#admx-peertopeercaching-enablewindowsbranchcache-hostedcachediscovery">ADMX_PeerToPeerCaching/EnableWindowsBranchCache_HostedCacheDiscovery</a>
  </dd>
  <dd>
    <a href="#admx-peertopeercaching-enablewindowsbranchcache-hostedmultipleservers">ADMX_PeerToPeerCaching/EnableWindowsBranchCache_HostedMultipleServers</a>
  </dd>
  <dd>
    <a href="#admx-peertopeercaching-enablewindowsbranchcache-smb">ADMX_PeerToPeerCaching/EnableWindowsBranchCache_SMB</a>
  </dd>
  <dd>
    <a href="#admx-peertopeercaching-setcachepercent">ADMX_PeerToPeerCaching/SetCachePercent</a>
  </dd>
  <dd>
    <a href="#admx-peertopeercaching-setdatacacheentrymaxage">ADMX_PeerToPeerCaching/SetDataCacheEntryMaxAge</a>
  </dd>
  <dd>
    <a href="#admx-peertopeercaching-setdowngrading">ADMX_PeerToPeerCaching/SetDowngrading</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="admx-peertopeercaching-enablewindowsbranchcache"></a>**ADMX_PeerToPeerCaching/EnableWindowsBranchCache**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies whether BranchCache is enabled on client computers to which this policy is applied. In addition to this policy setting, you must specify whether the client computers are hosted cache mode or distributed cache mode clients. To do so, configure one of the following the policy settings: 

- Set BranchCache Distributed Cache mode
- Set BranchCache Hosted Cache mode
- Configure Hosted Cache Servers

Policy configuration

Select one of the following:

- Not Configured. With this selection, BranchCache settings are not applied to client computers by this policy. In the circumstance where client computers are domain members but you do not want to enable BranchCache on all client computers, you can specify Not Configured for this domain Group Policy setting, and then configure local computer policy to enable BranchCache on individual client computers. Because the domain Group Policy setting is not configured, it will not over-write the enabled setting that you use on individual client computers where you want to enable BranchCache.
- Enabled. With this selection, BranchCache is turned on for all client computers where the policy is applied. For example, if this policy is enabled in domain Group Policy, BranchCache is turned on for all domain member client computers to which the policy is applied.
- Disabled. With this selection, BranchCache is turned off for all client computers where the policy is applied.

> [!NOTE]
> This policy setting is supported on computers that are running Windows Vista Business, Enterprise, and Ultimate editions with Background Intelligent Transfer Service (BITS) 4.0 installed.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn on BranchCache*
-   GP name: *EnableWindowsBranchCache*
-   GP path: *Network\BranchCache*
-   GP ADMX file name: *PeerToPeerCaching.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-peertopeercaching-enablewindowsbranchcache-distributed"></a>**ADMX_PeerToPeerCaching/EnableWindowsBranchCache_Distributed**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies whether BranchCache distributed cache mode is enabled on client computers to which this policy is applied. In addition to this policy, you must use the policy "Turn on BranchCache" to enable BranchCache on client computers.

In distributed cache mode, client computers download content from BranchCache-enabled main office content servers, cache the content locally, and serve the content to other BranchCache distributed cache mode clients in the branch office.

Policy configuration

Select one of the following:

- Not Configured. With this selection, BranchCache settings are not applied to client computers by this policy. In the circumstance where client computers are domain members but you do not want to enable BranchCache on all client computers, you can specify Not Configured for this domain Group Policy setting, and then configure local computer policy to enable BranchCache on individual client computers. Because the domain Group Policy setting is not configured, it will not over-write the enabled setting that you use on individual client computers where you want to enable BranchCache.
- Enabled. With this selection, BranchCache distributed cache mode is enabled for all client computers where the policy is applied. For example, if this policy is enabled in domain Group Policy, BranchCache distributed cache mode is turned on for all domain member client computers to which the policy is applied.
- Disabled. With this selection, BranchCache distributed cache mode is turned off for all client computers where the policy is applied.

> [!NOTE]
> This policy setting is supported on computers that are running Windows Vista Business, Enterprise, and Ultimate editions with Background Intelligent Transfer Service (BITS) 4.0 installed.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Set BranchCache Distributed Cache mode*
-   GP name: *EnableWindowsBranchCache_Distributed*
-   GP path: *Network\BranchCache*
-   GP ADMX file name: *PeerToPeerCaching.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-peertopeercaching-enablewindowsbranchcache-hosted"></a>**ADMX_PeerToPeerCaching/EnableWindowsBranchCache_Hosted**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies whether BranchCache hosted cache mode is enabled on client computers to which this policy is applied. In addition to this policy, you must use the policy "Turn on BranchCache" to enable BranchCache on client computers.

When a client computer is configured as a hosted cache mode client, it is able to download cached content from a hosted cache server that is located at the branch office. In addition, when the hosted cache client obtains content from a content server, the client can upload the content to the hosted cache server for access by other hosted cache clients at the branch office.

Policy configuration

Select one of the following:

- Not Configured. With this selection, BranchCache settings are not applied to client computers by this policy. In the circumstance where client computers are domain members but you do not want to enable BranchCache on all client computers, you can specify Not Configured for this domain Group Policy setting, and then configure local computer policy to enable BranchCache on individual client computers. Because the domain Group Policy setting is not configured, it will not over-write the enabled setting that you use on individual client computers where you want to enable BranchCache.
- Enabled. With this selection, BranchCache hosted cache mode is enabled for all client computers where the policy is applied. For example, if this policy is enabled in domain Group Policy, BranchCache hosted cache mode is turned on for all domain member client computers to which the policy is applied.
- Disabled. With this selection, BranchCache hosted cache mode is turned off for all client computers where the policy is applied.

In circumstances where this setting is enabled, you can also select and configure the following option:

- Type the name of the hosted cache server. Specifies the computer name of the hosted cache server. Because the hosted cache server name is also specified in the certificate enrolled to the hosted cache server, the name that you enter here must match the name of the hosted cache server that is specified in the server certificate. 

Hosted cache clients must trust the server certificate that is issued to the hosted cache server. Ensure that the issuing CA certificate is installed in the Trusted Root Certification Authorities certificate store on all hosted cache client computers.

> [!NOTE]
> This policy setting is supported on computers that are running Windows Vista Business, Enterprise, and Ultimate editions with Background Intelligent Transfer Service (BITS) 4.0 installed.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Set BranchCache Hosted Cache mode*
-   GP name: *EnableWindowsBranchCache_Hosted*
-   GP path: *Network\BranchCache*
-   GP ADMX file name: *PeerToPeerCaching.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-peertopeercaching-enablewindowsbranchcache-hostedcachediscovery"></a>**ADMX_PeerToPeerCaching/EnableWindowsBranchCache_HostedCacheDiscovery**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies whether client computers should attempt the automatic configuration of hosted cache mode by searching for hosted cache servers publishing service connection points that are associated with the client's current Active Directory site. If you enable this policy setting, client computers to which the policy setting is applied search for hosted cache servers using Active Directory, and will prefer both these servers and hosted cache mode rather than manual BranchCache configuration or BranchCache configuration by other group policies.

If you enable this policy setting in addition to the "Turn on BranchCache" policy setting, BranchCache clients attempt to discover hosted cache servers in the local branch office. If client computers detect hosted cache servers, hosted cache mode is turned on. If they do not detect hosted cache servers, hosted cache mode is not turned on, and the client uses any other configuration that is specified manually or by Group Policy.

When this policy setting is applied, the client computer performs or does not perform automatic hosted cache server discovery under the following circumstances:

If no other BranchCache mode-based policy settings are applied, the client computer performs automatic hosted cache server discovery. If one or more hosted cache servers is found, the client computer self-configures for hosted cache mode.

If the policy setting "Set BranchCache Distributed Cache Mode" is applied in addition to this policy, the client computer performs automatic hosted cache server discovery. If one or more hosted cache servers are found, the client computer self-configures for hosted cache mode only.

If the policy setting "Set BranchCache Hosted Cache Mode" is applied, the client computer does not perform automatic hosted cache discovery. This is also true in cases where the policy setting "Configure Hosted Cache Servers" is applied.

This policy setting can only be applied to client computers that are running at least Windows 8. This policy has no effect on computers that are running Windows 7 or Windows Vista.  

If you disable, or do not configure this setting, a client will not attempt to discover hosted cache servers by service connection point.

Policy configuration

Select one of the following:

- Not Configured. With this selection, BranchCache settings are not applied to client computers by this policy setting, and client computers do not perform hosted cache server discovery.
- Enabled. With this selection, the policy setting is applied to client computers, which perform automatic hosted cache server discovery and which are configured as hosted cache mode clients.
- Disabled. With this selection, this policy is not applied to client computers.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Enable Automatic Hosted Cache Discovery by Service Connection Point*
-   GP name: *EnableWindowsBranchCache_HostedCacheDiscovery*
-   GP path: *Network\BranchCache*
-   GP ADMX file name: *PeerToPeerCaching.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-peertopeercaching-enablewindowsbranchcache-hostedmultipleservers"></a>**ADMX_PeerToPeerCaching/EnableWindowsBranchCache_HostedMultipleServers**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies whether client computers are configured to use hosted cache mode and provides the computer name of the hosted cache servers that are available to the client computers. Hosted cache mode enables client computers in branch offices to retrieve content from one or more hosted cache servers that are installed in the same office location. You can use this setting to automatically configure client computers that are configured for hosted cache mode with the computer names of the hosted cache servers in the branch office.

If you enable this policy setting and specify valid computer names of hosted cache servers, hosted cache mode is enabled for all client computers to which the policy setting is applied. For this policy setting to take effect, you must also enable the "Turn on BranchCache" policy setting.

This policy setting can only be applied to client computers that are running at least Windows 8. This policy has no effect on computers that are running Windows 7 or Windows Vista. Client computers to which this policy setting is applied, in addition to the "Set BranchCache Hosted Cache mode" policy setting, use the hosted cache servers that are specified in this policy setting and do not use the hosted cache server that is configured in the policy setting "Set BranchCache Hosted Cache Mode."

If you do not configure this policy setting, or if you disable this policy setting, client computers that are configured with hosted cache mode still function correctly.

Policy configuration

Select one of the following:

- Not Configured. With this selection, BranchCache settings are not applied to client computers by this policy setting.
- Enabled. With this selection, the policy setting is applied to client computers, which are configured as hosted cache mode clients that use the hosted cache servers that you specify in "Hosted cache servers."
- Disabled. With this selection, this policy is not applied to client computers.

In circumstances where this setting is enabled, you can also select and configure the following option:

- Hosted cache servers. To add hosted cache server computer names to this policy setting, click Enabled, and then click Show. The Show Contents dialog box opens. Click Value, and then type the computer names of the hosted cache servers.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure Hosted Cache Servers*
-   GP name: *EnableWindowsBranchCache_HostedMultipleServers*
-   GP path: *Network\BranchCache*
-   GP ADMX file name: *PeerToPeerCaching.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-peertopeercaching-enablewindowsbranchcache-smb"></a>**ADMX_PeerToPeerCaching/EnableWindowsBranchCache_SMB**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting is used only when you have deployed one or more BranchCache-enabled file servers at your main office. This policy setting specifies when client computers in branch offices start caching content from file servers based on the network latency - or delay - that occurs when the clients download content from the main office over a Wide Area Network (WAN) link. When you configure a value for this setting, which is the maximum round trip network latency allowed before caching begins, clients do not cache content until the network latency reaches the specified value; when network latency is greater than the value, clients begin caching content after they receive it from the file servers.

Policy configuration

Select one of the following:

- Not Configured. With this selection, BranchCache latency settings are not applied to client computers by this policy. In the circumstance where client computers are domain members but you do not want to configure a BranchCache latency setting on all client computers, you can specify Not Configured for this domain Group Policy setting, and then configure local computer policy to enable BranchCache latency settings on individual client computers. Because the domain Group Policy setting is not configured, it will not over-write the latency setting that you use on individual client computers.
- Enabled. With this selection, the BranchCache maximum round trip latency setting is enabled for all client computers where the policy is applied. For example, if Configure BranchCache for network files is enabled in domain Group Policy, the BranchCache latency setting that you specify in the policy is turned on for all domain member client computers to which the policy is applied.
- Disabled. With this selection, BranchCache client computers use the default latency setting of 80 milliseconds.

In circumstances where this policy setting is enabled, you can also select and configure the following option:

- Type the maximum round trip network latency (milliseconds) after which caching begins. Specifies the amount of time, in milliseconds, after which BranchCache client computers begin to cache content locally.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure BranchCache for network files*
-   GP name: *EnableWindowsBranchCache_SMB*
-   GP path: *Network\BranchCache*
-   GP ADMX file name: *PeerToPeerCaching.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-peertopeercaching-setcachepercent"></a>**ADMX_PeerToPeerCaching/SetCachePercent**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies the default percentage of total disk space that is allocated for the BranchCache disk cache on client computers.

If you enable this policy setting, you can configure the percentage of total disk space to allocate for the cache.

If you disable or do not configure this policy setting, the cache is set to 5 percent of the total disk space on the client computer.

Policy configuration

Select one of the following:

- Not Configured. With this selection, BranchCache client computer cache settings are not applied to client computers by this policy. In the circumstance where client computers are domain members but you do not want to configure a BranchCache client computer cache setting on all client computers, you can specify Not Configured for this domain Group Policy setting, and then configure local computer policy to enable BranchCache client computer cache settings on individual client computers. Because the domain Group Policy setting is not configured, it will not over-write the client computer cache setting that you use on individual client computers.
- Enabled. With this selection, the BranchCache client computer cache setting is enabled for all client computers where the policy is applied. For example, if Set percentage of disk space used for client computer cache is enabled in domain Group Policy, the BranchCache client computer cache setting that you specify in the policy is turned on for all domain member client computers to which the policy is applied.
- Disabled. With this selection, BranchCache client computers use the default client computer cache setting of five percent of the total disk space on the client computer.

In circumstances where this setting is enabled, you can also select and configure the following option:

- Specify the percentage of total disk space allocated for the cache. Specifies an integer that is the percentage of total client computer disk space to use for the BranchCache client computer cache.

> [!NOTE]
> This policy setting is supported on computers that are running Windows Vista Business, Enterprise, and Ultimate editions with Background Intelligent Transfer Service (BITS) 4.0 installed.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Set percentage of disk space used for client computer cache*
-   GP name: *SetCachePercent*
-   GP path: *Network\BranchCache*
-   GP ADMX file name: *PeerToPeerCaching.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-peertopeercaching-setdatacacheentrymaxage"></a>**ADMX_PeerToPeerCaching/SetDataCacheEntryMaxAge**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies the default age in days for which segments are valid in the BranchCache data cache on client computers.

If you enable this policy setting, you can configure the age for segments in the data cache.

If you disable or do not configure this policy setting, the age is set to 28 days.

Policy configuration

Select one of the following:

- Not Configured. With this selection, BranchCache client computer cache age settings are not applied to client computers by this policy. In the circumstance where client computers are domain members but you do not want to configure a BranchCache client computer cache age setting on all client computers, you can specify Not Configured for this domain Group Policy setting, and then configure local computer policy to enable BranchCache client computer cache age settings on individual client computers. Because the domain Group Policy setting is not configured, it will not over-write the client computer cache age setting that you use on individual client computers.
- Enabled. With this selection, the BranchCache client computer cache age setting is enabled for all client computers where the policy is applied. For example, if this policy setting is enabled in domain Group Policy, the BranchCache client computer cache age that you specify in the policy is turned on for all domain member client computers to which the policy is applied.
- Disabled. With this selection, BranchCache client computers use the default client computer cache age setting of 28 days on the client computer.

In circumstances where this setting is enabled, you can also select and configure the following option:

- Specify the age in days for which segments in the data cache are valid.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Set age for segments in the data cache*
-   GP name: *SetDataCacheEntryMaxAge*
-   GP path: *Network\BranchCache*
-   GP ADMX file name: *PeerToPeerCaching.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-peertopeercaching-setdowngrading"></a>**ADMX_PeerToPeerCaching/SetDowngrading**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies whether BranchCache-capable client computers operate in a downgraded mode in order to maintain compatibility with previous versions of BranchCache. If client computers do not use the same BranchCache version, cache efficiency might be reduced because client computers that are using different versions of BranchCache might store cache data in incompatible formats.

If you enable this policy setting, all clients use the version of BranchCache that you specify in "Select from the following versions."

If you do not configure this setting, all clients will use the version of BranchCache that matches their operating system.

Policy configuration

Select one of the following:

- Not Configured. With this selection, this policy setting is not applied to client computers, and the clients run the version of BranchCache that is included with their operating system.
- Enabled. With this selection, this policy setting is applied to client computers based on the value of the option setting "Select from the following versions" that you specify.
- Disabled. With this selection, this policy setting is not applied to client computers, and the clients run the version of BranchCache that is included with their operating system.

In circumstances where this setting is enabled, you can also select and configure the following option:

Select from the following versions

- Windows Vista with BITS 4.0 installed, Windows 7, or Windows Server 2008 R2. If you select this version, later versions of Windows run the version of BranchCache that is included in these operating systems rather than later versions of BranchCache.
- Windows 8. If you select this version, Windows 8 will run the version of BranchCache that is included in the operating system.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure Client BranchCache Version Support*
-   GP name: *SetDowngrading*
-   GP path: *Network\BranchCache*
-   GP ADMX file name: *PeerToPeerCaching.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are for upcoming release.

<!--/Policies-->

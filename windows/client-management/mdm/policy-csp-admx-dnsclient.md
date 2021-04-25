---
title: Policy CSP - ADMX_DnsClient
description: Policy CSP - ADMX_DnsClient
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 08/12/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_DnsClient

> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_DnsClient policies  

<dl>
  <dd>
    <a href="#admx-dnsclient-dns-allowfqdnnetbiosqueries">ADMX_DnsClient/DNS_AllowFQDNNetBiosQueries</a>
  </dd>
  <dd>
    <a href="#admx-dnsclient-dns-appendtomultilabelname">ADMX_DnsClient/DNS_AppendToMultiLabelName</a>
  </dd>
  <dd>
    <a href="#admx-dnsclient-dns-domain">ADMX_DnsClient/DNS_Domain</a>
  </dd>
  <dd>
    <a href="#admx-dnsclient-dns-domainnamedevolutionlevel">ADMX_DnsClient/DNS_DomainNameDevolutionLevel</a>
  </dd>
  <dd>
    <a href="#admx-dnsclient-dns-idnencoding">ADMX_DnsClient/DNS_IdnEncoding</a>
  </dd>
  <dd>
    <a href="#admx-dnsclient-dns-idnmapping">ADMX_DnsClient/DNS_IdnMapping</a>
  </dd>
  <dd>
    <a href="#admx-dnsclient-dns-nameserver">ADMX_DnsClient/DNS_NameServer</a>
  </dd>
  <dd>
    <a href="#admx-dnsclient-dns-preferlocalresponsesoverlowerorderdns">ADMX_DnsClient/DNS_PreferLocalResponsesOverLowerOrderDns</a>
  </dd>
  <dd>
    <a href="#admx-dnsclient-dns-primarydnssuffix">ADMX_DnsClient/DNS_PrimaryDnsSuffix</a>
  </dd>
  <dd>
    <a href="#admx-dnsclient-dns-registeradaptername">ADMX_DnsClient/DNS_RegisterAdapterName</a>
  </dd>
  <dd>
    <a href="#admx-dnsclient-dns-registerreverselookup">ADMX_DnsClient/DNS_RegisterReverseLookup</a>
  </dd>
  <dd>
    <a href="#admx-dnsclient-dns-registrationenabled">ADMX_DnsClient/DNS_RegistrationEnabled</a>
  </dd>
  <dd>
    <a href="#admx-dnsclient-dns-registrationoverwritesinconflict">ADMX_DnsClient/DNS_RegistrationOverwritesInConflict</a>
  </dd>
  <dd>
    <a href="#admx-dnsclient-dns-registrationrefreshinterval">ADMX_DnsClient/DNS_RegistrationRefreshInterval</a>
  </dd>
  <dd>
    <a href="#admx-dnsclient-dns-registrationttl">ADMX_DnsClient/DNS_RegistrationTtl</a>
  </dd>
  <dd>
    <a href="#admx-dnsclient-dns-searchlist">ADMX_DnsClient/DNS_SearchList</a>
  </dd>
  <dd>
    <a href="#admx-dnsclient-dns-smartmultihomednameresolution">ADMX_DnsClient/DNS_SmartMultiHomedNameResolution</a>
  </dd>
  <dd>
    <a href="#admx-dnsclient-dns-smartprotocolreorder">ADMX_DnsClient/DNS_SmartProtocolReorder</a>
  </dd>
  <dd>
    <a href="#admx-dnsclient-dns-updatesecuritylevel">ADMX_DnsClient/DNS_UpdateSecurityLevel</a>
  </dd>
  <dd>
    <a href="#admx-dnsclient-dns-updatetopleveldomainzones">ADMX_DnsClient/DNS_UpdateTopLevelDomainZones</a>
  </dd>
  <dd>
    <a href="#admx-dnsclient-dns-usedomainnamedevolution">ADMX_DnsClient/DNS_UseDomainNameDevolution</a>
  </dd>
  <dd>
    <a href="#admx-dnsclient-turn-off-multicast">ADMX_DnsClient/Turn_Off_Multicast</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-dns-allowfqdnnetbiosqueries"></a>**ADMX_DnsClient/DNS_AllowFQDNNetBiosQueries**  
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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies that NetBIOS over TCP/IP (NetBT) queries are issued for fully qualified domain names.

If you enable this policy setting, NetBT queries will be issued for multi-label and fully qualified domain names, such as "www.example.com" in addition to single-label names.

If you disable this policy setting, or if you do not configure this policy setting, NetBT queries will only be issued for single-label names, such as "example" and not for multi-label and fully qualified domain names.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Allow NetBT queries for fully qualified domain names*
-   GP name: *DNS_AllowFQDNNetBiosQueries*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-dns-appendtomultilabelname"></a>**ADMX_DnsClient/DNS_AppendToMultiLabelName**  
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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies that computers may attach suffixes to an unqualified multi-label name before sending subsequent DNS queries if the original name query fails.

A name containing dots, but not dot-terminated, is called an unqualified multi-label name, for example "server.corp" is an unqualified multi-label name. The name "server.corp.contoso.com." is an example of a fully qualified name because it contains a terminating dot.

For example, if attaching suffixes is allowed, an unqualified multi-label name query for "server.corp" will be queried by the DNS client first. If the query succeeds, the response is returned to the client. If the query fails, the unqualified multi-label name is appended with DNS suffixes. These suffixes can be derived from a combination of the local DNS client's primary domain suffix, a connection-specific domain suffix, and a DNS suffix search list.

If attaching suffixes is allowed, and a DNS client with a primary domain suffix of "contoso.com" performs a query for "server.corp" the DNS client will send a query for "server.corp" first, and then a query for "server.corp.contoso.com." second if the first query fails.

If you enable this policy setting, suffixes are allowed to be appended to an unqualified multi-label name if the original name query fails.

If you disable this policy setting, no suffixes are appended to unqualified multi-label name queries if the original name query fails.

If you do not configure this policy setting, computers will use their local DNS client settings to determine the query behavior for unqualified multi-label names.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Allow DNS suffix appending to unqualified multi-label name queries*
-   GP name: *DNS_AppendToMultiLabelName*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-dns-domain"></a>**ADMX_DnsClient/DNS_Domain**  
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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies a connection-specific DNS suffix. This policy setting supersedes local connection-specific DNS suffixes, and those configured using DHCP. To use this policy setting, click Enabled, and then enter a string value representing the DNS suffix.

If you enable this policy setting, the DNS suffix that you enter will be applied to all network connections used by computers that receive this policy setting.  

If you disable this policy setting, or if you do not configure this policy setting, computers will use the local or DHCP supplied connection specific DNS suffix, if configured.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Connection-specific DNS suffix*
-   GP name: *DNS_Domain*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-dns-domainnamedevolutionlevel"></a>**ADMX_DnsClient/DNS_DomainNameDevolutionLevel**  
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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies if the devolution level that DNS clients will use if they perform primary DNS suffix devolution during the name resolution process.

With devolution, a DNS client creates queries by appending a single-label, unqualified domain name with the parent suffix of the primary DNS suffix name, and the parent of that suffix, and so on, stopping if the name is successfully resolved or at a level determined by devolution settings. Devolution can be used when a user or application submits a query for a single-label domain name.

The DNS client appends DNS suffixes to the single-label, unqualified domain name based on the state of the Append primary and connection specific DNS suffixes radio button and Append parent suffixes of the primary DNS suffix check box on the DNS tab in Advanced TCP/IP Settings for the Internet Protocol (TCP/IP) Properties dialog box.

Devolution is not enabled if a global suffix search list is configured using Group Policy.

If a global suffix search list is not configured, and the Append primary and connection specific DNS suffixes radio button is selected, the DNS client appends the following names to a single-label name when it sends DNS queries:  

- The primary DNS suffix, as specified on the Computer Name tab of the System control panel.
- Each connection-specific DNS suffix, assigned either through DHCP or specified in the DNS suffix for this connection box on the DNS tab in the Advanced TCP/IP Settings dialog box for each connection.

For example, when a user submits a query for a single-label name such as "example," the DNS client attaches a suffix such as "microsoft.com" resulting in the query "example.microsoft.com," before sending the query to a DNS server.

If a DNS suffix search list is not specified, the DNS client attaches the primary DNS suffix to a single-label name. If this query fails, the connection-specific DNS suffix is attached for a new query. If none of these queries are resolved, the client devolves the primary DNS suffix of the computer (drops the leftmost label of the primary DNS suffix), attaches this devolved primary DNS suffix to the single-label name, and submits this new query to a DNS server.

For example, if the primary DNS suffix ooo.aaa.microsoft.com is attached to the non-dot-terminated single-label name "example," and the DNS query for example.ooo.aaa.microsoft.com fails, the DNS client devolves the primary DNS suffix (drops the leftmost label) till the specified devolution level, and submits a query for example.aaa.microsoft.com. If this query fails, the primary DNS suffix is devolved further if it is under specified devolution level and the query example.microsoft.com is submitted. If this query fails, devolution continues if it is under specified devolution level and the query example.microsoft.com is submitted, corresponding to a devolution level of two. The primary DNS suffix cannot be devolved beyond a devolution level of two. The devolution level can be configured using this policy setting. The default devolution level is two.

If you enable this policy setting and DNS devolution is also enabled, DNS clients use the DNS devolution level that you specify.

If you disable this policy setting or do not configure it, DNS clients use the default devolution level of two provided that DNS devolution is enabled.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Primary DNS suffix devolution level*
-   GP name: *DNS_DomainNameDevolutionLevel*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-dns-idnencoding"></a>**ADMX_DnsClient/DNS_IdnEncoding**

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies whether the DNS client should convert internationalized domain names (IDNs) to Punycode when the computer is on non-domain networks with no WINS servers configured.

If this policy setting is enabled, IDNs are not converted to Punycode.

If this policy setting is disabled, or if this policy setting is not configured, IDNs are converted to Punycode when the computer is on non-domain networks with no WINS servers configured.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn off IDN encoding*
-   GP name: *DNS_IdnEncoding*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-dns-idnmapping"></a>**ADMX_DnsClient/DNS_IdnMapping**
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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies whether the DNS client should convert internationalized domain names (IDNs) to the Nameprep form, a canonical Unicode representation of the string.

If this policy setting is enabled, IDNs are converted to the Nameprep form.

If this policy setting is disabled, or if this policy setting is not configured, IDNs are not converted to the Nameprep form.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *IDN mapping*
-   GP name: *DNS_IdnMapping*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-dns-nameserver"></a>**ADMX_DnsClient/DNS_NameServer**
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
Available in the latest Windows 10 Insider Preview Build. This policy setting defines the DNS servers to which a computer sends queries when it attempts to resolve names. This policy setting supersedes the list of DNS servers configured locally and those configured using DHCP.

To use this policy setting, click Enabled, and then enter a space-delimited list of IP addresses in the available field. To use this policy setting, you must enter at least one IP address.

If you enable this policy setting, the list of DNS servers is applied to all network connections used by computers that receive this policy setting. 

If you disable this policy setting, or if you do not configure this policy setting, computers will use the local or DHCP supplied list of DNS servers, if configured.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *DNS servers*
-   GP name: *DNS_NameServer*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-dns-preferlocalresponsesoverlowerorderdns"></a>**ADMX_DnsClient/DNS_PreferLocalResponsesOverLowerOrderDns**
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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies that responses from link local name resolution protocols received over a network interface that is higher in the binding order are preferred over DNS responses from network interfaces lower in the binding order. Examples of link local name resolution protocols include link local multicast name resolution (LLMNR) and NetBIOS over TCP/IP (NetBT).

If you enable this policy setting, responses from link local protocols will be preferred over DNS responses if the local responses are from a network with a higher binding order.

If you disable this policy setting, or if you do not configure this policy setting, then DNS responses from networks lower in the binding order will be preferred over responses from link local protocols received from networks higher in the binding order.

> [!NOTE]
> This policy setting is applicable only if the turn off smart multi-homed name resolution policy setting is disabled or not configured.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prefer link local responses over DNS when received over a network with higher precedence*
-   GP name: *DNS_PreferLocalResponsesOverLowerOrderDns*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-dns-primarydnssuffix"></a>**ADMX_DnsClient/DNS_PrimaryDnsSuffix**
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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies the primary DNS suffix used by computers in DNS name registration and DNS name resolution.

To use this policy setting, click Enabled and enter the entire primary DNS suffix you want to assign. For example: microsoft.com.

> [!IMPORTANT]
> In order for changes to this policy setting to be applied on computers that receive it, you must restart Windows.

If you enable this policy setting, it supersedes the primary DNS suffix configured in the DNS Suffix and NetBIOS Computer Name dialog box using the System control panel.

You can use this policy setting to prevent users, including local administrators, from changing the primary DNS suffix.

If you disable this policy setting, or if you do not configure this policy setting, each computer uses its local primary DNS suffix, which is usually the DNS name of Active Directory domain to which it is joined.
<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Primary DNS suffix*
-   GP name: *DNS_PrimaryDnsSuffix*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-dns-registeradaptername"></a>**ADMX_DnsClient/DNS_RegisterAdapterName**
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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies if a computer performing dynamic DNS registration will register A and PTR resource records with a concatenation of its computer name and a connection-specific DNS suffix, in addition to registering these records with a concatenation of its computer name and the primary DNS suffix.

By default, a DNS client performing dynamic DNS registration registers A and PTR resource records with a concatenation of its computer name and the primary DNS suffix. For example, a computer name of mycomputer and a primary DNS suffix of microsoft.com will be registered as: mycomputer.microsoft.com.

If you enable this policy setting, a computer will register A and PTR resource records with its connection-specific DNS suffix, in addition to the primary DNS suffix. This applies to all network connections used by computers that receive this policy setting.

For example, with a computer name of mycomputer, a primary DNS suffix of microsoft.com, and a connection specific DNS suffix of VPNconnection, a computer will register A and PTR resource records for mycomputer.VPNconnection and mycomputer.microsoft.com when this policy setting is enabled.

Important: This policy setting is ignored on a DNS client computer if dynamic DNS registration is disabled.

If you disable this policy setting, or if you do not configure this policy setting, a DNS client computer will not register any A and PTR resource records using a connection-specific DNS suffix.
<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Register DNS records with connection-specific DNS suffix*
-   GP name: *DNS_RegisterAdapterName*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-dns-registerreverselookup"></a>**ADMX_DnsClient/DNS_RegisterReverseLookup**
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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies if DNS client computers will register PTR resource records.

By default, DNS clients configured to perform dynamic DNS registration will attempt to register PTR resource record only if they successfully registered the corresponding A resource record.

If you enable this policy setting, registration of PTR records will be determined by the option that you choose under Register PTR records.

To use this policy setting, click Enabled, and then select one of the following options from the drop-down list:

- Do not register: Computers will not attempt to register PTR resource records
- Register: Computers will attempt to register PTR resource records even if registration of the corresponding A records was not successful.
- Register only if A record registration succeeds: Computers will attempt to register PTR resource records only if registration of the corresponding A records was successful.

If you disable this policy setting, or if you do not configure this policy setting, computers will use locally configured settings.
<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Register PTR records*
-   GP name: *DNS_RegisterReverseLookup*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-dns-registrationenabled"></a>**ADMX_DnsClient/DNS_RegistrationEnabled**
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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies if DNS dynamic update is enabled. Computers configured for DNS dynamic update automatically register and update their DNS resource records with a DNS server.

If you enable this policy setting, or you do not configure this policy setting, computers will attempt to use dynamic DNS registration on all network connections that have connection-specific dynamic DNS registration enabled. For a dynamic DNS registration to be enabled on a network connection, the connection-specific configuration must allow dynamic DNS registration, and this policy setting must not be disabled.

If you disable this policy setting, computers may not use dynamic DNS registration for any of their network connections, regardless of the configuration for individual network connections.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Dynamic update*
-   GP name: *DNS_RegistrationEnabled*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-dns-registrationoverwritesinconflict"></a>**ADMX_DnsClient/DNS_RegistrationOverwritesInConflict**
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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies whether dynamic updates should overwrite existing resource records that contain conflicting IP addresses.

This policy setting is designed for computers that register address (A) resource records in DNS zones that do not use Secure Dynamic Updates. Secure Dynamic Update preserves ownership of resource records and does not allow a DNS client to overwrite records that are registered by other computers.

During dynamic update of resource records in a zone that does not use Secure Dynamic Updates, an A resource record might exist that associates the client's host name with an IP address different than the one currently in use by the client. By default, the DNS client attempts to replace the existing A resource record with an A resource record that has the client's current IP address.

If you enable this policy setting or if you do not configure this policy setting, DNS clients maintain their default behavior and will attempt to replace conflicting A resource records during dynamic update.

If you disable this policy setting, existing A resource records that contain conflicting IP addresses will not be replaced during a dynamic update, and an error will be recorded in Event Viewer.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Replace addresses in conflicts*
-   GP name: *DNS_RegistrationOverwritesInConflict*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-dns-registrationrefreshinterval"></a>**ADMX_DnsClient/DNS_RegistrationRefreshInterval**
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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies the interval used by DNS clients to refresh registration of A and PTR resource. This policy setting only applies to computers performing dynamic DNS updates.

Computers configured to perform dynamic DNS registration of A and PTR resource records periodically reregister their records with DNS servers, even if the record has not changed. This reregistration is required to indicate to DNS servers that records are current and should not be automatically removed (scavenged) when a DNS server is configured to delete stale records.

> [!WARNING]
> If record scavenging is enabled on the zone, the value of this policy setting should never be longer than the value of the DNS zone refresh interval. Configuring the registration refresh interval to be longer than the refresh interval of the DNS zone might result in the undesired deletion of A and PTR resource records.

To specify the registration refresh interval, click Enabled and then enter a value of 1800 or greater. The value that you specify is the number of seconds to use for the registration refresh interval. For example, 1800 seconds is 30 minutes.

If you enable this policy setting, registration refresh interval that you specify will be applied to all network connections used by computers that receive this policy setting.

If you disable this policy setting, or if you do not configure this policy setting, computers will use the local or DHCP supplied setting. By default, client computers configured with a static IP address attempt to update their DNS resource records once every 24 hours and DHCP clients will attempt to update their DNS resource records when a DHCP lease is granted or renewed.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Registration refresh interval*
-   GP name: *DNS_RegistrationRefreshInterval*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-dns-registrationttl"></a>**ADMX_DnsClient/DNS_RegistrationTtl**
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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies the value of the time to live (TTL) field in A and PTR resource records that are registered by computers to which this policy setting is applied.

To specify the TTL, click Enabled and then enter a value in seconds (for example, 900 is 15 minutes).

If you enable this policy setting, the TTL value that you specify will be applied to DNS resource records registered for all network connections used by computers that receive this policy setting.

If you disable this policy setting, or if you do not configure this policy setting, computers will use the TTL settings specified in DNS. By default, the TTL is 1200 seconds (20 minutes).

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *TTL value for A and PTR records*
-   GP name: *DNS_RegistrationTtl*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-dns-searchlist"></a>**ADMX_DnsClient/DNS_SearchList**
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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies the DNS suffixes to attach to an unqualified single-label name before submission of a DNS query for that name.

An unqualified single-label name contains no dots. The name "example" is a single-label name. This is different from a fully qualified domain name such as "example.microsoft.com."

Client computers that receive this policy setting will attach one or more suffixes to DNS queries for a single-label name. For example, a DNS query for the single-label name "example" will be modified to "example.microsoft.com" before sending the query to a DNS server if this policy setting is enabled with a suffix of "microsoft.com."

To use this policy setting, click Enabled, and then enter a string value representing the DNS suffixes that should be appended to single-label names. You must specify at least one suffix. Use a comma-delimited string, such as "microsoft.com,serverua.microsoft.com,office.microsoft.com" to specify multiple suffixes.

If you enable this policy setting, one DNS suffix is attached at a time for each query. If a query is unsuccessful, a new DNS suffix is added in place of the failed suffix, and this new query is submitted. The values are used in the order they appear in the string, starting with the leftmost value and proceeding to the right until a query is successful or all suffixes are tried.

If you disable this policy setting, or if you do not configure this policy setting, the primary DNS suffix and network connection-specific DNS suffixes are appended to the unqualified queries.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *DNS suffix search list*
-   GP name: *DNS_SearchList*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-dns-smartmultihomednameresolution"></a>**ADMX_DnsClient/DNS_SmartMultiHomedNameResolution**

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies that a multi-homed DNS client should optimize name resolution across networks. The setting improves performance by issuing parallel DNS, link local multicast name resolution (LLMNR) and NetBIOS over TCP/IP (NetBT) queries across all networks. In the event that multiple positive responses are received, the network binding order is used to determine which response to accept.

If you enable this policy setting, the DNS client will not perform any optimizations.  DNS queries will be issued across all networks first. LLMNR queries will be issued if the DNS queries fail, followed by NetBT queries if LLMNR queries fail.

If you disable this policy setting, or if you do not configure this policy setting, name resolution will be optimized when issuing DNS, LLMNR and NetBT queries.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn off smart multi-homed name resolution*
-   GP name: *DNS_SmartMultiHomedNameResolution*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-dns-smartprotocolreorder"></a>**ADMX_DnsClient/DNS_SmartProtocolReorder**
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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies that the DNS client should prefer responses from link local name resolution protocols on non-domain networks over DNS responses when issuing queries for flat names. Examples of link local name resolution protocols include link local multicast name resolution (LLMNR) and NetBIOS over TCP/IP (NetBT).

If you enable this policy setting, the DNS client will prefer DNS responses, followed by LLMNR, followed by NetBT for all networks.  

If you disable this policy setting, or if you do not configure this policy setting, the DNS client will prefer link local responses for flat name queries on non-domain networks. 

> [!NOTE]
> This policy setting is applicable only if the turn off smart multi-homed name resolution policy setting is disabled or not configured.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn off smart protocol reordering*
-   GP name: *DNS_SmartProtocolReorder*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-dns-updatesecuritylevel"></a>**ADMX_DnsClient/DNS_UpdateSecurityLevel**
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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies the security level for dynamic DNS updates.

To use this policy setting, click Enabled and then select one of the following values:

- Unsecure followed by secure - computers send secure dynamic updates only when nonsecure dynamic updates are refused.
- Only unsecure - computers send only nonsecure dynamic updates.
- Only secure - computers send only secure dynamic updates.

If you enable this policy setting, computers that attempt to send dynamic DNS updates will use the security level that you specify in this policy setting.

If you disable this policy setting, or if you do not configure this policy setting, computers will use local settings. By default, DNS clients attempt to use unsecured dynamic update first. If an unsecured update is refused, clients try to use secure update.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Update security level*
-   GP name: *DNS_UpdateSecurityLevel*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-dns-updatetopleveldomainzones"></a>**ADMX_DnsClient/DNS_UpdateTopLevelDomainZones**
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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies if computers may send dynamic updates to zones with a single label name. These zones are also known as top-level domain zones, for example: "com."

By default, a DNS client that is configured to perform dynamic DNS update will update the DNS zone that is authoritative for its DNS resource records unless the authoritative zone is a top-level domain or root zone.

If you enable this policy setting, computers send dynamic updates to any zone that is authoritative for the resource records that the computer needs to update, except the root zone.

If you disable this policy setting, or if you do not configure this policy setting, computers do not send dynamic updates to the root zone or top-level domain zones that are authoritative for the resource records that the computer needs to update.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Update top level domain zones*
-   GP name: *DNS_UpdateTopLevelDomainZones*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-dns-usedomainnamedevolution"></a>**ADMX_DnsClient/DNS_UseDomainNameDevolution**
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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies if the DNS client performs primary DNS suffix devolution during the name resolution process.

With devolution, a DNS client creates queries by appending a single-label, unqualified domain name with the parent suffix of the primary DNS suffix name, and the parent of that suffix, and so on, stopping if the name is successfully resolved or at a level determined by devolution settings. Devolution can be used when a user or application submits a query for a single-label domain name.

The DNS client appends DNS suffixes to the single-label, unqualified domain name based on the state of the Append primary and connection specific DNS suffixes radio button and Append parent suffixes of the primary DNS suffix check box on the DNS tab in Advanced TCP/IP Settings for the Internet Protocol (TCP/IP) Properties dialog box.

Devolution is not enabled if a global suffix search list is configured using Group Policy.

If a global suffix search list is not configured, and the Append primary and connection specific DNS suffixes radio button is selected, the DNS client appends the following names to a single-label name when it sends DNS queries:

The primary DNS suffix, as specified on the Computer Name tab of the System control panel.

Each connection-specific DNS suffix, assigned either through DHCP or specified in the DNS suffix for this connection box on the DNS tab in the Advanced TCP/IP Settings dialog box for each connection.

For example, when a user submits a query for a single-label name such as "example," the DNS client attaches a suffix such as "microsoft.com" resulting in the query "example.microsoft.com," before sending the query to a DNS server.

If a DNS suffix search list is not specified, the DNS client attaches the primary DNS suffix to a single-label name. If this query fails, the connection-specific DNS suffix is attached for a new query. If none of these queries are resolved, the client devolves the primary DNS suffix of the computer (drops the leftmost label of the primary DNS suffix), attaches this devolved primary DNS suffix to the single-label name, and submits this new query to a DNS server.

For example, if the primary DNS suffix ooo.aaa.microsoft.com is attached to the non-dot-terminated single-label name "example," and the DNS query for example.ooo.aaa.microsoft.com fails, the DNS client devolves the primary DNS suffix (drops the leftmost label) till the specified devolution level, and submits a query for example.aaa.microsoft.com. If this query fails, the primary DNS suffix is devolved further if it is under specified devolution level and the query example.microsoft.com is submitted. If this query fails, devolution continues if it is under specified devolution level and the query example.microsoft.com is submitted, corresponding to a devolution level of two. The primary DNS suffix cannot be devolved beyond a devolution level of two. The devolution level can be configured using the primary DNS suffix devolution level policy setting. The default devolution level is two.

If you enable this policy setting, or if you do not configure this policy setting, DNS clients attempt to resolve single-label names using concatenations of the single-label name to be resolved and the devolved primary DNS suffix.

If you disable this policy setting, DNS clients do not attempt to resolve names that are concatenations of the single-label name to be resolved and the devolved primary DNS suffix.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Primary DNS suffix devolution*
-   GP name: *DNS_UseDomainNameDevolution*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-dnsclient-turn-off-multicast"></a>**ADMX_DnsClient/Turn_Off_Multicast**
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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies that link local multicast name resolution (LLMNR) is disabled on client computers.

LLMNR is a secondary name resolution protocol. With LLMNR, queries are sent using multicast over a local network link on a single subnet from a client computer to another client computer on the same subnet that also has LLMNR enabled. LLMNR does not require a DNS server or DNS client configuration, and provides name resolution in scenarios in which conventional DNS name resolution is not possible.

If you enable this policy setting, LLMNR will be disabled on all available network adapters on the client computer.

If you disable this policy setting, or you do not configure this policy setting, LLMNR will be enabled on all available network adapters.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn off multicast name resolution*
-   GP name: *Turn_Off_Multicast*
-   GP path: *Network/DNS Client*
-   GP ADMX file name: *DnsClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.
<!--/Policies-->


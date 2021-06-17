---
title: Policy CSP - ADMX_Netlogon
description: Policy CSP - ADMX_Netlogon
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/15/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_Netlogon
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_Netlogon policies  

<dl>
  <dd>
    <a href="#admx-netlogon-netlogon-addresslookuponpingbehavior">ADMX_Netlogon/Netlogon_AddressLookupOnPingBehavior</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-addresstypereturned">ADMX_Netlogon/Netlogon_AddressTypeReturned</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-allowdnssuffixsearch">ADMX_Netlogon/Netlogon_AllowDnsSuffixSearch</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-allownt4crypto">ADMX_Netlogon/Netlogon_AllowNT4Crypto</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-allowsinglelabeldnsdomain">ADMX_Netlogon/Netlogon_AllowSingleLabelDnsDomain</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-autositecoverage">ADMX_Netlogon/Netlogon_AutoSiteCoverage</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-avoidfallbacknetbiosdiscovery">ADMX_Netlogon/Netlogon_AvoidFallbackNetbiosDiscovery</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-avoidpdconwan">ADMX_Netlogon/Netlogon_AvoidPdcOnWan</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-backgroundretryinitialperiod">ADMX_Netlogon/Netlogon_BackgroundRetryInitialPeriod</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-backgroundretrymaximumperiod">ADMX_Netlogon/Netlogon_BackgroundRetryMaximumPeriod</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-backgroundretryquittime">ADMX_Netlogon/Netlogon_BackgroundRetryQuitTime</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-backgroundsuccessfulrefreshperiod">ADMX_Netlogon/Netlogon_BackgroundSuccessfulRefreshPeriod</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-debugflag">ADMX_Netlogon/Netlogon_DebugFlag</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-dnsavoidregisterrecords">ADMX_Netlogon/Netlogon_DnsAvoidRegisterRecords</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-dnsrefreshinterval">ADMX_Netlogon/Netlogon_DnsRefreshInterval</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-dnssrvrecorduselowercasehostnames">ADMX_Netlogon/Netlogon_DnsSrvRecordUseLowerCaseHostNames</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-dnsttl">ADMX_Netlogon/Netlogon_DnsTtl</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-expecteddialupdelay">ADMX_Netlogon/Netlogon_ExpectedDialupDelay</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-forcerediscoveryinterval">ADMX_Netlogon/Netlogon_ForceRediscoveryInterval</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-gcsitecoverage">ADMX_Netlogon/Netlogon_GcSiteCoverage</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-ignoreincomingmailslotmessages">ADMX_Netlogon/Netlogon_IgnoreIncomingMailslotMessages</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-ldapsrvpriority">ADMX_Netlogon/Netlogon_LdapSrvPriority</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-ldapsrvweight">ADMX_Netlogon/Netlogon_LdapSrvWeight</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-maximumlogfilesize">ADMX_Netlogon/Netlogon_MaximumLogFileSize</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-ndncsitecoverage">ADMX_Netlogon/Netlogon_NdncSiteCoverage</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-negativecacheperiod">ADMX_Netlogon/Netlogon_NegativeCachePeriod</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-netlogonsharecompatibilitymode">ADMX_Netlogon/Netlogon_NetlogonShareCompatibilityMode</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-nonbackgroundsuccessfulrefreshperiod">ADMX_Netlogon/Netlogon_NonBackgroundSuccessfulRefreshPeriod</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-pingurgencymode">ADMX_Netlogon/Netlogon_PingUrgencyMode</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-scavengeinterval">ADMX_Netlogon/Netlogon_ScavengeInterval</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-sitecoverage">ADMX_Netlogon/Netlogon_SiteCoverage</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-sitename">ADMX_Netlogon/Netlogon_SiteName</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-sysvolsharecompatibilitymode">ADMX_Netlogon/Netlogon_SysvolShareCompatibilityMode</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-trynextclosestsite">ADMX_Netlogon/Netlogon_TryNextClosestSite</a>
  </dd>
  <dd>
    <a href="#admx-netlogon-netlogon-usedynamicdns">ADMX_Netlogon/Netlogon_UseDynamicDns</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-addresslookuponpingbehavior"></a>**ADMX_Netlogon/Netlogon_AddressLookupOnPingBehavior**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting configures how a domain controller (DC) behaves when responding to a client whose IP address does not map to any configured site.

Domain controllers use the client IP address during a DC locator ping request to compute which Active Directory site the client belongs to. If no site mapping can be computed, the DC may do an address lookup on the client network name to discover other IP addresses which may then be used to compute a matching site for the client. 

The allowable values for this setting result in the following behaviors:

- 0 - DCs will never perform address lookups.
- 1 - DCs will perform an exhaustive address lookup to discover additional client IP addresses.
- 2 - DCs will perform a fast, DNS-only address lookup to discover additional client IP addresses.

To specify this behavior in the DC Locator DNS SRV records, click Enabled, and then enter a value. The range of values is from 0 to 2.

If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify address lookup behavior for DC locator ping*
-   GP name: *Netlogon_AddressLookupOnPingBehavior*
-   GP path: *System\Net Logon\DC Locator DNS Records*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-addresstypereturned"></a>**ADMX_Netlogon/Netlogon_AddressTypeReturned**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines the type of IP address that is returned for a domain controller. The DC Locator APIs return the IP address of the DC with the other parts of information. Before the support of IPv6, the returned DC IP address was IPv4. But with the support of IPv6, the DC Locator APIs can return IPv6 DC address. The returned IPv6 DC address may not be correctly handled by some of the existing applications. So this policy is provided to support such scenarios.

By default, DC Locator APIs can return IPv4/IPv6 DC address. But if some applications are broken due to the returned IPv6 DC address, this policy can be used to disable the default behavior and enforce to return only IPv4 DC address. Once applications are fixed, this policy can be used to enable the default behavior.

If you enable this policy setting, DC Locator APIs can return IPv4/IPv6 DC address. This is the default behavior of the DC Locator.

If you disable this policy setting, DC Locator APIs will ONLY return IPv4 DC address if any. So if the domain controller supports both IPv4 and IPv6 addresses, DC Locator APIs will return IPv4 address. But if the domain controller supports only IPv6 address, then DC Locator APIs will fail.

If you do not configure this policy setting, DC Locator APIs can return IPv4/IPv6 DC address. This is the default behavior of the DC Locator.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Return domain controller address type*
-   GP name: *Netlogon_AddressTypeReturned*
-   GP path: *System\Net Logon\DC Locator DNS Records*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-allowdnssuffixsearch"></a>**ADMX_Netlogon/Netlogon_AllowDnsSuffixSearch**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies whether the computers to which this setting is applied attempts DNS name resolution of single-label domain names, by appending different registered DNS suffixes, and uses NetBIOS name resolution only if DNS name resolution fails. This policy, including the specified default behavior, is not used if the AllowSingleLabelDnsDomain policy setting is enabled.

By default, when no setting is specified for this policy, the behavior is the same as explicitly enabling this policy, unless the AllowSingleLabelDnsDomain policy setting is enabled.

If you enable this policy setting, when the AllowSingleLabelDnsDomain policy is not enabled, computers to which this policy is applied, will locate a domain controller hosting an Active Directory domain specified with a single-label name, by appending different registered DNS suffixes to perform DNS name resolution. The single-label name is not used without appending DNS suffixes unless the computer is joined to a domain that has a single-label DNS name in the Active Directory forest. NetBIOS name resolution is performed on the single-label name only, in the event that DNS resolution fails.

If you disable this policy setting, when the AllowSingleLabelDnsDomain policy is not enabled, computers to which this policy is applied, will only use NetBIOS name resolution to attempt to locate a domain controller hosting an Active Directory domain specified with a single-label name. The computers will not attempt DNS name resolution in this case, unless the computer is searching for a domain with a single label DNS name to which this computer is joined, in the Active Directory forest.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Use DNS name resolution when a single-label domain name is used, by appending different registered DNS suffixes, if the AllowSingleLabelDnsDomain setting is not enabled.*
-   GP name: *Netlogon_AllowDnsSuffixSearch*
-   GP path: *System\Net Logon\DC Locator DNS Records*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-allownt4crypto"></a>**ADMX_Netlogon/Netlogon_AllowNT4Crypto**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting controls whether the Net Logon service will allow the use of older cryptography algorithms that are used in Windows NT 4.0. The cryptography algorithms used in Windows NT 4.0 and earlier are not as secure as newer algorithms used in Windows 2000 or later, including this version of Windows.

By default, Net Logon will not allow the older cryptography algorithms to be used and will not include them in the negotiation of cryptography algorithms. Therefore, computers running Windows NT 4.0 will not be able to establish a connection to this domain controller.
 
If you enable this policy setting, Net Logon will allow the negotiation and use of older cryptography algorithms compatible with Windows NT 4.0. However, using the older algorithms represents a potential security risk.

If you disable this policy setting, Net Logon will not allow the negotiation and use of older cryptography algorithms. 

If you do not configure this policy setting, Net Logon will not allow the negotiation and use of older cryptography algorithms.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Allow cryptography algorithms compatible with Windows NT 4.0*
-   GP name: *Netlogon_AllowNT4Crypto*
-   GP path: *System\Net Logon*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-allowsinglelabeldnsdomain"></a>**ADMX_Netlogon/Netlogon_AllowSingleLabelDnsDomain**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies whether the computers to which this setting is applied attempt DNS name resolution of a single-label domain names.

By default, the behavior specified in the AllowDnsSuffixSearch is used. If the AllowDnsSuffixSearch policy is disabled, then NetBIOS name resolution is used exclusively, to locate a domain controller hosting an Active Directory domain specified with a single-label name.

If you enable this policy setting, computers to which this policy is applied will attempt to locate a domain controller hosting an Active Directory domain specified with a single-label name using DNS name resolution.

If you disable this policy setting, computers to which this setting is applied will use the AllowDnsSuffixSearch policy, if it is not disabled or perform NetBIOS name resolution otherwise, to attempt to locate a domain controller that hosts an Active Directory domain specified with a single-label name. the computers will not the DNS name resolution in this case, unless the computer is searching for a domain with a single label DNS name that exists in the Active Directory forest to which this computer is joined.

If you do not configure this policy setting, it is not applied to any computers, and computers use their local configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Use DNS name resolution with a single-label domain name instead of NetBIOS name resolution to locate the DC*
-   GP name: *Netlogon_AllowSingleLabelDnsDomain*
-   GP path: *System\Net Logon\DC Locator DNS Records*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-autositecoverage"></a>**ADMX_Netlogon/Netlogon_AutoSiteCoverage**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether domain controllers (DC) will dynamically register DC Locator site-specific SRV records for the closest sites where no DC for the same domain exists (or no Global Catalog for the same forest exists). These DNS records are dynamically registered by the Net Logon service, and they are used to locate the DC.

If you enable this policy setting, the DCs to which this setting is applied dynamically register DC Locator site-specific DNS SRV records for the closest sites where no DC for the same domain, or no Global Catalog for the same forest, exists.

If you disable this policy setting, the DCs will not register site-specific DC Locator DNS SRV records for any other sites but their own.

If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Use automated site coverage by the DC Locator DNS SRV Records*
-   GP name: *Netlogon_AutoSiteCoverage*
-   GP path: *System\Net Logon\DC Locator DNS Records*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-avoidfallbacknetbiosdiscovery"></a>**ADMX_Netlogon/Netlogon_AvoidFallbackNetbiosDiscovery**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to control the domain controller (DC) location algorithm. By default, the DC location algorithm prefers DNS-based discovery if the DNS domain name is known. If DNS-based discovery fails and the NetBIOS domain name is known, the algorithm then uses NetBIOS-based discovery as a fallback mechanism.

NetBIOS-based discovery uses a WINS server and mailslot messages but does not use site information. Hence it does not ensure that clients will discover the closest DC. It also allows a hub-site client to discover a branch-site DC even if the branch-site DC only registers site-specific DNS records (as recommended). For these reasons, NetBIOS-based discovery is not recommended.

> [!NOTE]
> This policy setting does not affect NetBIOS-based discovery for DC location if only the NetBIOS domain name is known.

If you enable or do not configure this policy setting, the DC location algorithm does not use NetBIOS-based discovery as a fallback mechanism when DNS-based discovery fails. This is the default behavior.

If you disable this policy setting, the DC location algorithm can use NetBIOS-based discovery as a fallback mechanism when DNS based discovery fails.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Do not use NetBIOS-based discovery for domain controller location when DNS-based discovery fails*
-   GP name: *Netlogon_AvoidFallbackNetbiosDiscovery*
-   GP path: *System\Net Logon\DC Locator DNS Records*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-avoidpdconwan"></a>**ADMX_Netlogon/Netlogon_AvoidPdcOnWan**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting defines whether a domain controller (DC) should attempt to verify the password provided by a client with the PDC emulator if the DC failed to validate the password.

Contacting the PDC emulator is useful in case the client’s password was recently changed and did not propagate to the DC yet. Users may want to disable this feature if the PDC emulator is located over a slow WAN connection.

If you enable this policy setting, the DCs to which this policy setting applies will attempt to verify a password with the PDC emulator if the DC fails to validate the password.

If you disable this policy setting, the DCs will not attempt to verify any passwords with the PDC emulator. 

If you do not configure this policy setting, it is not applied to any DCs.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Contact PDC on logon failure*
-   GP name: *Netlogon_AvoidPdcOnWan*
-   GP path: *System\Net Logon*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-backgroundretryinitialperiod"></a>**ADMX_Netlogon/Netlogon_BackgroundRetryInitialPeriod**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines the amount of time (in seconds) to wait before the first retry for applications that perform periodic searches for domain controllers (DC) that are unable to find a DC.

The default value for this setting is 10 minutes (10*60). 

The maximum value for this setting is 49 days (0x49*24*60*60=4233600). The minimum value for this setting is 0.

This setting is relevant only to those callers of DsGetDcName that have specified the DS_BACKGROUND_ONLY flag.

If the value of this setting is less than the value specified in the NegativeCachePeriod subkey, the value in the NegativeCachePeriod subkey is used.

> [!WARNING]
> If the value for this setting is too large, a client will not attempt to find any DCs that were initially unavailable. If the value set in this setting is very small and the DC is not available, the traffic caused by periodic DC discoveries may be excessive.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Use initial DC discovery retry setting for background callers*
-   GP name: *Netlogon_BackgroundRetryInitialPeriod*
-   GP path: *System\Net Logon*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-backgroundretrymaximumperiod"></a>**ADMX_Netlogon/Netlogon_BackgroundRetryMaximumPeriod**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines  the maximum retry interval allowed when applications performing periodic searches for Domain Controllers (DCs) are unable to find a DC.

For example, the retry intervals may be set at 10 minutes, then 20 minutes and then 40 minutes, but when the interval reaches the value set in this setting, that value becomes the retry interval for all subsequent retries until the value set in Final DC Discovery Retry Setting is reached.

The default value for this setting is 60 minutes (60*60).

The maximum value for this setting is 49 days (0x49*24*60*60=4233600). The minimum value for this setting is 0.

If the value for this setting is smaller than the value specified for the Initial DC Discovery Retry Setting, the Initial DC Discovery Retry Setting is used.

> [!WARNING]
> If the value for this setting is too large, a client may take very long periods to try to find a DC.

If the value for this setting is too small and the DC is not available, the frequent retries may produce excessive network traffic.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Use maximum DC discovery retry interval setting for background callers*
-   GP name: *Netlogon_BackgroundRetryMaximumPeriod*
-   GP path: *System\Net Logon*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-backgroundretryquittime"></a>**ADMX_Netlogon/Netlogon_BackgroundRetryQuitTime**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines when retries are no longer allowed for applications that perform periodic searches for domain controllers (DC) are unable to find a DC. For example, retires may be set to occur according to the Use maximum DC discovery retry interval policy setting, but when the value set in this policy setting is reached, no more retries occur. If a value for this policy setting is smaller than the value in the Use maximum DC discovery retry interval policy setting, the value for Use maximum DC discovery retry interval policy setting is used.

The default value for this setting is to not quit retrying (0). The maximum value for this setting is 49 days (0x49*24*60*60=4233600). The minimum value for this setting is 0.

> [!WARNING]
> If the value for this setting is too small, a client will stop trying to find a DC too soon.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Use final DC discovery retry setting for background callers*
-   GP name: *Netlogon_BackgroundRetryQuitTime*
-   GP path: *System\Net Logon*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-backgroundsuccessfulrefreshperiod"></a>**ADMX_Netlogon/Netlogon_BackgroundSuccessfulRefreshPeriod**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines when a successful DC cache entry is refreshed. This policy setting is applied to caller programs that periodically attempt to locate DCs, and it is applied before  returning the DC information to the caller program. The default value for this setting is infinite (4294967200). The maximum value for this setting is (4294967200), while the maximum that is not treated as infinity is 49 days (49*24*60*60=4233600). Any larger value is treated as infinity. The minimum value for this setting is to always refresh (0).

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Use positive periodic DC cache refresh for background callers*
-   GP name: *Netlogon_BackgroundSuccessfulRefreshPeriod*
-   GP path: *System\Net Logon*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-debugflag"></a>**ADMX_Netlogon/Netlogon_DebugFlag**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies the level of debug output for the Net Logon service.

The Net Logon service outputs debug information to the log file netlogon.log in the directory %windir%\debug. By default, no debug information is logged.

If you enable this policy setting and specify a non-zero value, debug information will be logged to the file. Higher values result in more verbose logging; the value of 536936447 is commonly used as an optimal setting.

If you specify zero for this policy setting, the default behavior occurs as described above.

If you disable this policy setting or do not configure it, the default behavior occurs as described above.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify log file debug output level*
-   GP name: *Netlogon_DebugFlag*
-   GP path: *System\Net Logon*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-dnsavoidregisterrecords"></a>**ADMX_Netlogon/Netlogon_DnsAvoidRegisterRecords**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines which DC Locator DNS records are not registered by the Net Logon service.

If you enable this policy setting, select Enabled and specify a list of space-delimited mnemonics (instructions) for the DC Locator DNS records that will not be registered by the DCs to which this setting is applied.

Select the mnemonics from the following table:

|Mnemonic|Type|DNS Record|
|--------|---------|-----------|
|LdapIpAddress|A|`<DnsDomainName>`|
|Ldap|SRV|_ldap._tcp.`<DnsDomainName>`|
|LdapAtSite|SRV|_ldap._tcp.`<SiteName>`._sites.`<DnsDomainName>`|
|Pdc|SRV|_ldap._tcp.pdc._msdcs.`<DnsDomainName>`|
|Gc|SRV|_ldap._tcp.gc._msdcs.`<DnsForestName>`|
|GcAtSite|SRV|_ldap._tcp.`<SiteName>`._sites.gc._msdcs.`<DnsForestName>`|
|DcByGuid|SRV|_ldap._tcp.`<DomainGuid>`.domains._msdcs.`<DnsForestName>`|
|GcIpAddress|A|gc._msdcs.`<DnsForestName>`|
|DsaCname|CNAME|`<DsaGuid>`._msdcs.`<DnsForestName>`|
|Kdc|SRV|_kerberos._tcp.dc._msdcs.`<DnsDomainName>`|
|KdcAtSite|SRV|_kerberos._tcp.`<SiteName>`._sites.dc._msdcs.|
|KdcAtSite|SRV|_kerberos._tcp.`<SiteName>`._sites.dc._msdcs.`<DnsDomainName>`|
|Dc|SRV|_ldap._tcp.dc._msdcs.`<DnsDomainName>`|
|DcAtSite|SRV|_ldap._tcp.`<SiteName>`._sites.dc._msdcs.`<DnsDomainName>`|
|Rfc1510Kdc|SRV|_kerberos._tcp.`<DnsDomainName>`|
|Rfc1510KdcAtSite|SRV|_kerberos._tcp.`<SiteName>`._sites.`<DnsDomainName>`|
|GenericGc|SRV|_gc._tcp.`<DnsForestName>`|
|GenericGcAtSite|SRV|_gc._tcp.`<SiteName>`._sites.`<DnsForestName>`|
|Rfc1510UdpKdc|SRV|_kerberos._udp.`<DnsDomainName>`|
|Rfc1510Kpwd|SRV|_kpasswd._tcp.`<DnsDomainName>`|
|Rfc1510UdpKpwd|SRV|_kpasswd._udp.`<DnsDomainName>`| 

If you disable this policy setting, DCs configured to perform dynamic registration of DC Locator DNS records register all DC Locator DNS resource records.

If you do not configure this policy setting, DCs use their local configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify DC Locator DNS records not registered by the DCs*
-   GP name: *Netlogon_DnsAvoidRegisterRecords*
-   GP path: *System\Net Logon\DC Locator DNS Records*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-dnsrefreshinterval"></a>**ADMX_Netlogon/Netlogon_DnsRefreshInterval**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies the Refresh Interval of the DC Locator DNS resource records for DCs to which this setting is applied. These DNS records are dynamically registered by the Net Logon service and are used by the DC Locator algorithm to locate the DC. This setting may be applied only to DCs using dynamic update.

DCs configured to perform dynamic registration of the DC Locator DNS resource records periodically reregister their records with DNS servers, even if their records’ data has not changed. If authoritative DNS servers are configured to perform scavenging of the stale records, this reregistration is required to instruct the DNS servers configured to automatically remove (scavenge) stale records that these records are current and should be preserved in the database.

> [!WARNING]
> If the DNS resource records are registered in zones with scavenging enabled, the value of this setting should never be longer than the Refresh Interval configured for these zones. Setting the Refresh Interval of the DC Locator DNS records to longer than the Refresh Interval of the DNS zones may result in the undesired deletion of DNS resource records.

To specify the Refresh Interval of the DC records, click Enabled, and then enter a value larger than 1800. This value specifies the Refresh Interval of the DC records in seconds (for example, the value 3600 is 60 minutes).

If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify Refresh Interval of the DC Locator DNS records*
-   GP name: *Netlogon_DnsRefreshInterval*
-   GP path: *System\Net Logon\DC Locator DNS Records*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-dnssrvrecorduselowercasehostnames"></a>**ADMX_Netlogon/Netlogon_DnsSrvRecordUseLowerCaseHostNames**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting configures whether the domain controllers to which this setting is applied will lowercase their DNS host name when registering SRV records.

If enabled, domain controllers will lowercase their DNS host name when registering domain controller SRV records. A best-effort attempt will be made to delete any previously registered SRV records that contain mixed-case DNS host names. For more information and potential manual cleanup procedures, see the link below.

If disabled, domain controllers will use their configured DNS host name as-is when registering domain controller SRV records.

If not configured, domain controllers will default to using their local configuration.

The default local configuration is enabled.

A reboot is not required for changes to this setting to take effect.
<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Use lowercase DNS host names when registering domain controller SRV records*
-   GP name: *Netlogon_DnsSrvRecordUseLowerCaseHostNames*
-   GP path: *System\Net Logon\DC Locator DNS Records*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-dnsttl"></a>**ADMX_Netlogon/Netlogon_DnsTtl**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies the value for the Time-To-Live (TTL) field in SRV resource records that are registered by the Net Logon service. These DNS records are dynamically registered, and they are used to locate the domain controller (DC).

To specify the TTL for DC Locator DNS records, click Enabled, and then enter a value in seconds (for example, the value "900" is 15 minutes).

If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.
<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Set TTL in the DC Locator DNS Records*
-   GP name: *Netlogon_DnsTtl*
-   GP path: *System\Net Logon\DC Locator DNS Records*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-expecteddialupdelay"></a>**ADMX_Netlogon/Netlogon_ExpectedDialupDelay**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies the additional time for the computer to wait for the domain controller’s (DC) response when logging on to the network.

To specify the expected dial-up delay at logon, click Enabled, and then enter the desired value in seconds (for example, the value "60" is 1 minute).

If you do not configure this policy setting, it is not applied to any computers, and computers use their local configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify expected dial-up delay on logon*
-   GP name: *Netlogon_ExpectedDialupDelay*
-   GP path: *System\Net Logon*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-forcerediscoveryinterval"></a>**ADMX_Netlogon/Netlogon_ForceRediscoveryInterval**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines the interval for when a Force Rediscovery is carried out by DC Locator.

The Domain Controller Locator (DC Locator) service is used by clients to find domain controllers for their Active Directory domain. When DC Locator finds a domain controller, it caches domain controllers to improve the efficiency of the location algorithm. As long as the cached domain controller meets the requirements and is running, DC Locator will continue to return it. If a new domain controller is introduced, existing clients will only discover it when a Force Rediscovery is carried out by DC Locator. To adapt to changes in network conditions DC Locator will by default carry out a Force Rediscovery according to a specific time interval and maintain efficient load-balancing of clients across all available domain controllers in all domains or forests. The default time interval for Force Rediscovery by DC Locator is 12 hours. Force Rediscovery can also be triggered if a call to DC Locator uses the DS_FORCE_REDISCOVERY flag. Rediscovery resets the timer on the cached domain controller entries.

If you enable this policy setting, DC Locator on the machine will carry out Force Rediscovery periodically according to the configured time interval. The minimum time interval is 3600 seconds (1 hour) to avoid excessive network traffic from rediscovery. The maximum allowed time interval is 4294967200 seconds, while any value greater than 4294967 seconds (~49 days) will be treated as infinity.

If you disable this policy setting, Force Rediscovery will be used by default for the machine at every 12 hour interval.

If you do not configure this policy setting, Force Rediscovery will be used by default for the machine at every 12 hour interval, unless the local machine setting in the registry is a different value.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Force Rediscovery Interval*
-   GP name: *Netlogon_ForceRediscoveryInterval*
-   GP path: *System\Net Logon\DC Locator DNS Records*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-gcsitecoverage"></a>**ADMX_Netlogon/Netlogon_GcSiteCoverage**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies the sites for which the global catalogs (GC) should register site-specific GC locator DNS SRV resource records. These records are registered in addition to the site-specific SRV records registered for the site where the GC resides, and records registered by a GC configured to register GC Locator DNS SRV records for those sites without a GC that are closest to it. 

The GC Locator DNS records and the site-specific SRV records are dynamically registered by the Net Logon service, and they are used to locate the GC. An Active Directory site is one or more well-connected TCP/IP subnets that allow administrators to configure Active Directory access and replication. A GC is a domain controller that contains a partial replica of every domain in Active Directory.

To specify the sites covered by the GC Locator DNS SRV records, click Enabled, and enter the sites' names in a space-delimited format.

If you do not configure this policy setting, it is not applied to any GCs, and GCs use their local configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify sites covered by the GC Locator DNS SRV Records*
-   GP name: *Netlogon_GcSiteCoverage*
-   GP path: *System\Net Logon\DC Locator DNS Records*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-ignoreincomingmailslotmessages"></a>**ADMX_Netlogon/Netlogon_IgnoreIncomingMailslotMessages**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to control the processing of incoming mailslot messages by a local domain controller (DC).

> [!NOTE]
> To locate a remote DC based on its NetBIOS (single-label) domain name, DC Locator first gets the list of DCs from a WINS server that is configured in its local client settings. DC Locator then sends a mailslot message to each remote DC to get more information. DC location succeeds only if a remote DC responds to the mailslot message.

This policy setting is recommended to reduce the attack surface on a DC, and can be used in an environment without WINS, in an IPv6-only environment, and whenever DC location based on a NetBIOS domain name is not required. This policy setting does not affect DC location based on DNS names.

If you enable this policy setting, this DC does not process incoming mailslot messages that are used for NetBIOS domain name based DC location.

If you disable or do not configure this policy setting, this DC processes incoming mailslot messages. This is the default behavior of DC Locator.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Do not process incoming mailslot messages used for domain controller location based on NetBIOS domain names*
-   GP name: *Netlogon_IgnoreIncomingMailslotMessages*
-   GP path: *System\Net Logon\DC Locator DNS Records*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-ldapsrvpriority"></a>**ADMX_Netlogon/Netlogon_LdapSrvPriority**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies the Priority field in the SRV resource records registered by domain controllers (DC) to which this setting is applied. These DNS records are dynamically registered by the Net Logon service and are used to locate the DC.

The Priority field in the SRV record sets the preference for target hosts (specified in the SRV record’s Target field). DNS clients that query for SRV resource records attempt to contact the first reachable host with the lowest priority number listed.

To specify the Priority in the DC Locator DNS SRV resource records, click Enabled, and then enter a value. The range of values is from 0 to 65535.

If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Set Priority in the DC Locator DNS SRV records*
-   GP name: *Netlogon_LdapSrvPriority*
-   GP path: *System\Net Logon\DC Locator DNS Records*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-ldapsrvweight"></a>**ADMX_Netlogon/Netlogon_LdapSrvWeight**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies the Weight field in the SRV resource records registered by the domain controllers (DC) to which this setting is applied. These DNS records are dynamically registered by the Net Logon service, and they are used to locate the DC.

The Weight field in the SRV record can be used in addition to the Priority value to provide a load-balancing mechanism where multiple servers are specified in the SRV records Target field and are all set to the same priority. The probability with which the DNS client randomly selects the target host to be contacted is proportional to the Weight field value in the SRV record.

To specify the Weight in the DC Locator DNS SRV records, click Enabled, and then enter a value. The range of values is from 0 to 65535.

If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Set Weight in the DC Locator DNS SRV records*
-   GP name: *Netlogon_LdapSrvWeight*
-   GP path: *System\Net Logon\DC Locator DNS Records*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-maximumlogfilesize"></a>**ADMX_Netlogon/Netlogon_MaximumLogFileSize**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies the maximum size in bytes of the log file netlogon.log in the directory %windir%\debug when logging is enabled.

By default, the maximum size of the log file is 20MB. If you enable this policy setting, the maximum size of the log file is set to the specified size.  Once this size is reached the log file is saved to netlogon.bak and netlogon.log is truncated. A reasonable value based on available storage should be specified.

If you disable or do not configure this policy setting, the default behavior occurs as indicated above.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify maximum log file size*
-   GP name: *Netlogon_MaximumLogFileSize*
-   GP path: *System\Net Logon*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-ndncsitecoverage"></a>**ADMX_Netlogon/Netlogon_NdncSiteCoverage**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies the sites for which the domain controllers (DC) that host the application directory partition should register the site-specific, application directory partition-specific DC Locator DNS SRV resource records. These records are registered in addition to the site-specific SRV records registered for the site where the DC resides, and records registered by a DC configured to register DC Locator DNS SRV records for those sites without a DC that are closest to it. 

The application directory partition DC Locator DNS records and the site-specific SRV records are dynamically registered by the Net Logon service, and they are used to locate the application directory partition-specific DC. An Active Directory site is one or more well-connected TCP/IP subnets that allow administrators to configure Active Directory access and replication.

To specify the sites covered by the DC Locator application directory partition-specific DNS SRV records, click Enabled, and then enter the site names in a space-delimited format.

If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify sites covered by the application directory partition DC Locator DNS SRV records*
-   GP name: *Netlogon_NdncSiteCoverage*
-   GP path: *System\Net Logon\DC Locator DNS Records*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-negativecacheperiod"></a>**ADMX_Netlogon/Netlogon_NegativeCachePeriod**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies the amount of time (in seconds) the DC locator remembers that a domain controller (DC) could not be found in a domain. When a subsequent attempt to locate the DC occurs within the time set in this setting, DC Discovery immediately fails, without attempting to find the DC.

The default value for this setting is 45 seconds. The maximum value for this setting is 7 days (7*24*60*60). The minimum value for this setting is 0.

> [!WARNING]
> If the value for this setting is too large, a client will not attempt to find any DCs that were initially unavailable. If the value for this setting is too small, clients will attempt to find DCs even when none are available.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify negative DC Discovery cache setting*
-   GP name: *Netlogon_NegativeCachePeriod*
-   GP path: *System\Net Logon*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-netlogonsharecompatibilitymode"></a>**ADMX_Netlogon/Netlogon_NetlogonShareCompatibilityMode**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting controls whether or not the Netlogon share created by the Net Logon service on a domain controller (DC) should support compatibility in file sharing semantics with earlier applications.

If you enable this policy setting, the Netlogon share will honor file sharing semantics that grant requests for exclusive read access to files on the share even when the caller has only read permission.

If you disable or do not configure this policy setting, the Netlogon share will grant shared read access to files on the share when exclusive access is requested and the caller has only read permission.

By default, the Netlogon share will grant shared read access to files on the share when exclusive access is requested.

> [!NOTE]
> The Netlogon share is a share created by the Net Logon service for use by client machines in the domain. The default behavior of the Netlogon share ensures that no application with only read permission to files on the Netlogon share can lock the files by requesting exclusive read access, which might prevent Group Policy settings from being updated on clients in the domain. When this setting is enabled, an application that relies on the ability to lock files on the Netlogon share with only read permission will be able to deny Group Policy clients from reading the files, and in general the availability of the Netlogon share on the domain will be decreased.

If you enable this policy setting, domain administrators should ensure that the only applications using the exclusive read capability in the domain are those approved by the administrator.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Set Netlogon share compatibility*
-   GP name: *Netlogon_NetlogonShareCompatibilityMode*
-   GP path: *System\Net Logon*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-nonbackgroundsuccessfulrefreshperiod"></a>**ADMX_Netlogon/Netlogon_NonBackgroundSuccessfulRefreshPeriod**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines when a successful DC cache entry is refreshed. This policy setting is applied to caller programs that do not periodically attempt to locate DCs, and it is applied before the returning the DC information to the caller program. This policy setting is relevant to only those callers of DsGetDcName that have not specified the DS_BACKGROUND_ONLY flag.

The default value for this setting is 30 minutes (1800). The maximum value for this setting is (4294967200), while the maximum that is not treated as infinity is 49 days (49*24*60*60=4233600). Any larger value will be treated as infinity. The minimum value for this setting is to always refresh (0).

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify positive periodic DC Cache refresh for non-background callers*
-   GP name: *Netlogon_NonBackgroundSuccessfulRefreshPeriod*
-   GP path: *System\Net Logon*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-pingurgencymode"></a>**ADMX_Netlogon/Netlogon_PingUrgencyMode**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting configures whether the computers to which this setting is applied are more aggressive when trying to locate a domain controller (DC).

When an environment has a large number of DCs running both old and new operating systems, the default DC locator discovery behavior may be insufficient to find DCs running a newer operating system.  This policy setting can be enabled to configure DC locator to be more aggressive about trying to locate a DC in such an environment, by pinging DCs at a higher frequency.  Enabling this setting may result in additional network traffic and increased load on DCs.  You should disable this setting once all DCs are running the same OS version.

The allowable values for this setting result in the following behaviors:

- 1 - Computers will ping DCs at the normal frequency.
- 2 - Computers will ping DCs at the higher frequency.

To specify this behavior, click Enabled and then enter a value. The range of values is from 1 to 2.

If you do not configure this policy setting, it is not applied to any computers, and computers use their local configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Use urgent mode when pinging domain controllers*
-   GP name: *Netlogon_PingUrgencyMode*
-   GP path: *System\Net Logon*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-scavengeinterval"></a>**ADMX_Netlogon/Netlogon_ScavengeInterval**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines the interval at which Netlogon performs the following scavenging operations:

- Checks if a password on a secure channel needs to be modified, and modifies it if necessary.

- On the domain controllers (DC), discovers a DC that has not been discovered.

- On the PDC, attempts to add the `<DomainName>`[1B] NetBIOS name if it hasn’t already been successfully added.

None of these operations are critical. 15 minutes is optimal in all but extreme cases. For instance, if a DC is separated from a trusted domain by an expensive (e.g., ISDN) line, this parameter might be adjusted upward to avoid frequent automatic discovery of DCs in a trusted domain.

To enable the setting, click Enabled, and then specify the interval in seconds.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Set scavenge interval*
-   GP name: *Netlogon_ScavengeInterval*
-   GP path: *System\Net Logon*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-sitecoverage"></a>**ADMX_Netlogon/Netlogon_SiteCoverage**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies the sites for which the domain controllers (DC) register the site-specific DC Locator DNS SRV resource records. These records are registered in addition to the site-specific SRV records registered for the site where the DC resides, and records registered by a DC configured to register DC Locator DNS SRV records for those sites without a DC that are closest to it. 

The DC Locator DNS records are dynamically registered by the Net Logon service, and they are used to locate the DC. An Active Directory site is one or more well-connected TCP/IP subnets that allow administrators to configure Active Directory access and replication.

To specify the sites covered by the DC Locator DNS SRV records, click Enabled, and then enter the sites names in a space-delimited format.

If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify sites covered by the DC Locator DNS SRV records*
-   GP name: *Netlogon_SiteCoverage*
-   GP path: *System\Net Logon\DC Locator DNS Records*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-sitename"></a>**ADMX_Netlogon/Netlogon_SiteName**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies the Active Directory site to which computers belong.

An Active Directory site is one or more well-connected TCP/IP subnets that allow administrators to configure Active Directory access and replication.

To specify the site name for this setting, click Enabled, and then enter the site name. When the site to which a computer belongs is not specified, the computer automatically discovers its site from Active Directory.

If you do not configure this policy setting, it is not applied to any computers, and computers use their local configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify site name*
-   GP name: *Netlogon_SiteName*
-   GP path: *System\Net Logon*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-sysvolsharecompatibilitymode"></a>**ADMX_Netlogon/Netlogon_SysvolShareCompatibilityMode**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting controls whether or not the SYSVOL share created by the Net Logon service on a domain controller (DC) should support compatibility in file sharing semantics with earlier applications.

When this setting is enabled, the SYSVOL share will honor file sharing semantics that grant requests for exclusive read access to files on the share even when the caller has only read permission.

When this setting is disabled or not configured, the SYSVOL share will grant shared read access to files on the share when exclusive access is requested and the caller has only read permission.

By default, the SYSVOL share will grant shared read access to files on the share when exclusive access is requested.

> [!NOTE]
> The SYSVOL share is a share created by the Net Logon service for use by Group Policy clients in the domain. The default behavior of the SYSVOL share ensures that no application with only read permission to files on the sysvol share can lock the files by requesting exclusive read access, which might prevent Group Policy settings from being updated on clients in the domain. When this setting is enabled, an application that relies on the ability to lock files on the SYSVOL share with only read permission will be able to deny Group Policy clients from reading the files, and in general the availability of the SYSVOL share on the domain will be decreased.

If you enable this policy setting, domain administrators should ensure that the only applications using the exclusive read capability in the domain are those approved by the administrator.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Set SYSVOL share compatibility*
-   GP name: *Netlogon_SysvolShareCompatibilityMode*
-   GP path: *System\Net Logon*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-trynextclosestsite"></a>**ADMX_Netlogon/Netlogon_TryNextClosestSite**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting enables DC Locator to attempt to locate a DC in the nearest site based on the site link cost if a DC in same the site is not found. In scenarios with multiple sites, failing over to the try next closest site during DC Location streamlines network traffic more effectively.

The DC Locator service is used by clients to find domain controllers for their Active Directory domain. The default behavior for DC Locator is to find a DC in the same site. If none are found in the same site, a DC in another site, which might be several site-hops away, could be returned by DC Locator. Site proximity between two sites is determined by the total site-link cost between them. A site is closer if it has a lower site link cost than another site with a higher site link cost. 

If you enable this policy setting, Try Next Closest Site DC Location will be turned on for the computer.

If you disable this policy setting, Try Next Closest Site DC Location will not be used by default for the computer. However, if a DC Locator call is made using the DS_TRY_NEXTCLOSEST_SITE flag explicitly, the Try Next Closest Site behavior is honored.

If you do not configure this policy setting, Try Next Closest Site DC Location will not be used by default for the machine. If the DS_TRY_NEXTCLOSEST_SITE flag is used explicitly, the Next Closest Site behavior will be used.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Try Next Closest Site*
-   GP name: *Netlogon_TryNextClosestSite*
-   GP path: *System\Net Logon\DC Locator DNS Records*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-netlogon-netlogon-usedynamicdns"></a>**ADMX_Netlogon/Netlogon_UseDynamicDns**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines if dynamic registration of the domain controller (DC) locator DNS resource records is enabled. These DNS records are dynamically registered by the Net Logon service and are used by the Locator algorithm to locate the DC.

If you enable this policy setting, DCs to which this setting is applied dynamically register DC Locator DNS resource records through dynamic DNS update-enabled network connections.

If you disable this policy setting, DCs will not register DC Locator DNS resource records.

If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify dynamic registration of the DC Locator DNS Records*
-   GP name: *Netlogon_UseDynamicDns*
-   GP path: *System\Net Logon\DC Locator DNS Records*
-   GP ADMX file name: *Netlogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.
<!--/Policies-->


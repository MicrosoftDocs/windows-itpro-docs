---
title: NetworkProxy CSP
description: NetworkProxy CSP
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 06/19/2017
---

# NetworkProxy CSP

The NetworkProxy configuration service provider (CSP) is used to configure a proxy server for ethernet and Wi-Fi connections. These settings do not apply to VPN connections. This CSP was added in Windows 10, version 1703.

> [!Note]  
> In Windows 10 Mobile, the NetworkProxy CSP only works in ethernet connections. Use the WiFi CSP to configure per-network proxy for Wi-Fi connections in mobile devices.  

How the settings work:  

<ol>
<li>If auto-detect is enabled, the system tries to find the path to a proxy auto config (PAC) script and download it.</li>
<li>If #1 fails and a setup script is specified, the system tries to download the explicitly configured PAC script.</li>
<li>If #2 fails and a proxy server is specified, the system tries to use the explicitly configured proxy server.</li>
<li>Otherwise, the system tries to reach the site directly.</li>
</ol>


The following diagram shows the NetworkProxy configuration service provider in tree format.

![networkproxy csp](images/provisioning-csp-networkproxy.png)

<a href="" id="networkproxy"></a>**./Vendor/MSFT/NetworkProxy**  
<p style="margin-left: 20px">The root node for the NetworkProxy configuration service provider..</p>

<a href="" id="autodetect"></a>**AutoDetect**  
<p style="margin-left: 20px">Automatically detect settings. If enabled, the system tries to find the path to a PAC script.</p>
<p style="margin-left: 20px">Valid values:</p>
<ul>
<li>0 - Disabled</li>
<li>1 (default) - Enabled</li>
</ul>
<p style="margin-left: 20px">The data type is int. Supported operations are Get and Replace.</p>

<a href="" id="setupscripturl"></a>**SetupScriptUrl**  
<p style="margin-left: 20px">Address to the PAC script you want to use.</p>
<p style="margin-left: 20px">The data type is string. Supported operations are Get and Replace.</p>

<a href="" id="proxyserver"></a>**ProxyServer**  
<p style="margin-left: 20px">Node for configuring a static proxy for Ethernet and Wi-Fi connections. The same proxy server is used for all protocols - including HTTP, HTTPS, FTP, and SOCKS. These settings do not apply to VPN connections.</p>
<p style="margin-left: 20px">Supported operation is Get.</p>

<a href="" id="proxyaddress"></a>**ProxyAddress**  
<p style="margin-left: 20px">Address to the proxy server. Specify an address in the format &lt;server&gt;[“:”&lt;port&gt;]. </p>
<p style="margin-left: 20px">The data type is string. Supported operations are Get and Replace.</p>

<a href="" id="exceptions"></a>**Exceptions**  
<p style="margin-left: 20px">Addresses that should not use the proxy server. The system will not use the proxy server for addresses beginning with what is specified in this node. Use semicolons (;) to separate entries. </p>
<p style="margin-left: 20px">The data type is string. Supported operations are Get and Replace.</p>

<a href="" id="useproxyforlocaladdresses"></a>**UseProxyForLocalAddresses**  
<p style="margin-left: 20px">Specifies whether the proxy server should be used for local (intranet) addresses. </p>
<p style="margin-left: 20px">Valid values:</p>
<ul>
<li>0 (default) - Do not use proxy server for local addresses</li>
<li>1 - Use proxy server for local addresses</li>
</ul>
<p style="margin-left: 20px">The data type is int. Supported operations are Get and Replace.</p>

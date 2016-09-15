---
title: VPN authentication options (Windows 10)
description: tbd
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, networking
author: jdeckerMS
localizationpriority: high
---

# VPN authentication options

**Applies to**
-   Windows 10
-   Windows 10 Mobile

In addition to older and less-secure password-based authentication methods (which should be avoided), the built-in VPN solution uses Extensible Authentication Protocol (EAP) to provide secure authentication using both user name and password, and certificate-based methods. You can only configure EAP-based authentication if you select a built-in VPN type (IKEv2, L2TP, PPTP or Automatic).

Windows supports a number of EAP authentication methods. 

<table>
<thead><tr><th>Method</th><th>Details</th></thead>
<tbody>
<tr><td>EAP-Microsoft Challenge Handshake Authentication Protocol version 2 (EAP-MSCHAPv2)</td><td><ul><li>User name and password authentication</li><li>Winlogon credentials - can specify authentication with computer sign-in credentials</li></ul></td></tr>
<tr><td>EAP-Transport Layer Security (EAP-TLS) </td><td><ul><li>Supports the following types of certificate authentication<ul><li>Certificate with keys in the software Key Storage Provider (KSP)</li><li>Certificate with keys in Trusted Platform Module (TPM) KSP</li><li>Smart card certficates</li><li>Windows Hello for Business certificate</li></ul></li><li>Certificate filtering<ul><li>Certificate filtering can be enabled to search for a particular certificate to use to authenticate with</li><li>Filtering can be Issuer-based or Enhanced Key Usage (EKU)-based</li></ul></li><li>Server validation - with TLS, server validation can be toggled on or off<ul><li>Server name - specify the server to validate</li><li>Server certificate - trusted root certificate to validate the server</li><li>Notification - specify if the user should get a notification asking whether to trust the server or not</li></ul></li></ul></td></tr>
<tr><td>Protected Extensible Authentication Protocol (PEAP)</td><td></td></tr>
<tr><td>Tunneled Transport Layer Security (TTLS)</td><td></td></tr></tbody>
</table>
</br>


## Configure authentication

See [VPN profile options](vpn-profile-options.md) and [VPNv2 CSP](https://msdn.microsoft.com/library/windows/hardware/dn914776.aspx) for XML configuration. 





## Related topics

- [VPN technical guide](vpn-guide.md)
- [VPN connection types](vpn-connection-type.md)
- [VPN routing decisions](vpn-routing.md)
- [VPN and conditional access](vpn-conditional-access.md)
- [VPN proxy settings](vpn-proxy-settings.md)
- [VPN name resolution](vpn-name-resolution.md)
- [VPN auto-triggered profile options](vpn-auto-trigger-profile.md)
- [VPN security features](vpn-security-features.md)
- [VPN profile options](vpn-profile-options.md)
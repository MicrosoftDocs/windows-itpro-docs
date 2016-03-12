---
title: Audit IPsec Extended Mode (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting Audit IPsec Extended Mode which determines whether the operating system generates audit events for the results of the Internet Key Exchange (IKE) protocol and Authenticated Internet Protocol (AuthIP) during Extended Mode negotiations.
MSHAttr: PreferredLib /library
ms.assetid: 2b4fee9e-482a-4181-88a8-6a79d8fc8049
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit IPsec Extended Mode


**Applies to**

-   Windows 10

This topic for the IT professional describes the advanced security audit policy setting, **Audit IPsec Extended Mode**, which determines whether the operating system generates audit events for the results of the Internet Key Exchange (IKE) protocol and Authenticated Internet Protocol (AuthIP) during Extended Mode negotiations.

IKE is an Internet standard, defined in RFC 2409, that defines a mechanism to establish IPsec security associations (SAs). An SA is a combination of a mutually agreeable policy and keys that define the security services and mechanisms that help protect communication between IPsec peers.

AuthIP is an enhanced version of IKE that offers additional flexibility with support for user-based authentication, authentication with multiple credentials, improved authentication method negotiation, and asymmetric authentication. Like IKE, AuthIP supports main-mode and quick-mode negotiation. AuthIP also supports Extended Mode, a part of IPsec peer negotiation during which a second round of authentication can be performed. Extended Mode, which is optional, can be used for multiple authentications. For example, with extended mode you can perform separate computer-based and user-based authentications.

Event volume: High

Default: Not configured

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Event ID</th>
<th align="left">Event message</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>4978</p></td>
<td align="left"><p>During Extended Mode negotiation, IPsec received an invalid negotiation packet. If this problem persists, it could indicate a network issue or an attempt to modify or replay this negotiation.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4979</p></td>
<td align="left"><p>IPsec Main Mode and Extended Mode security associations were established.</p>
<div class="alert">
<strong>Note</strong>  
<p>This event provides event data in the following categories: Main Mode Local Endpoint, Main Mode Remote Endpoint, Main Mode Cryptographic Information, Main Mode Security Association, Main Mode Additional Information, and Extended Mode Information.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>4980</p></td>
<td align="left"><p>IPsec Main Mode and Extended Mode security associations were established.</p>
<div class="alert">
<strong>Note</strong>  
<p>This event provides event audit data in the following categories: Main Mode Local Endpoint, Main Mode Remote Endpoint. Main Mode Cryptographic Information, Main Mode Security Association, Main Mode Additional Information, Extended Mode Local Endpoint, Extended Mode Remote Endpoint, and Extended Mode Additional Information:</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>4981</p></td>
<td align="left"><p>IPsec Main Mode and Extended Mode security associations were established.</p>
<div class="alert">
<strong>Note</strong>  
<p>This event provides event audit data in the following categories: Local Endpoint, Local Certificate, Remote Endpoint, Remote Certificate, Cryptographic Information, Security Association Information, Additional Information, and Extended Mode Information.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>4982</p></td>
<td align="left"><p>IPsec Main Mode and Extended Mode security associations were established.</p>
<div class="alert">
<strong>Note</strong>  
<p>This event provides event audit data in the following categories: Local Endpoint, Local Certificate, Remote Endpoint, Remote Certificate, Cryptographic Information, Security Association Information, Additional Information, Extended Mode Local Endpoint, Extended Mode Remote Endpoint, and Extended Mode Additional Information.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>4983</p></td>
<td align="left"><p>An IPsec Extended Mode negotiation failed. The corresponding Main Mode security association has been deleted.</p>
<div class="alert">
<strong>Note</strong>  
<p>This event provides event audit data in the following categories: Local Endpoint, Local Certificate, Remote Endpoint, Remote Certificate, and Failure Information.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>4984</p></td>
<td align="left"><p>An IPsec Extended Mode negotiation failed. The corresponding Main Mode security association has been deleted.</p>
<div class="alert">
<strong>Note</strong>  
<p>This event provides event audit data in the following categories: Local Endpoint, Remote Endpoint, Additional Information, and Failure Information.</p>
</div>
<div>
 
</div></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 






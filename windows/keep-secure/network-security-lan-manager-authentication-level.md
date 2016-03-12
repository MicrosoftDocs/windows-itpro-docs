---
title: Network security LAN Manager authentication level (Windows 10)
description: Describes the best practices location values policy management and security considerations for the Network security LAN Manager authentication level security policy setting.
MSHAttr: PreferredLib /library
ms.assetid: bbe1a98c-420a-41e7-9d3c-3a2fe0f1843e
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Network security: LAN Manager authentication level


**Applies to**

-   Windows 10

**In this article**

-   [Reference](#reference)
-   [Policy management](#policy-management)
-   [Security considerations](#security-considerations)
-   [Related topics](#related-topics)

Describes the best practices, location, values, policy management and security considerations for the **Network security: LAN Manager authentication level** security policy setting.

## Reference


This policy setting determines which challenge or response authentication protocol is used for network logons. LAN Manager (LM) includes client computer and server software from Microsoft that allows users to link personal devices together on a single network. Network capabilities include transparent file and print sharing, user security features, and network administration tools. In Active Directory domains, the Kerberos protocol is the default authentication protocol. However, if the Kerberos protocol is not negotiated for some reason, Active Directory uses LM, NTLM, or NTLM version 2 (NTLMv2).

LAN Manager authentication includes the LM, NTLM, and NTLMv2 variants, and it is the protocol that is used to authenticate all client devices running the Windows operating system when they perform the following operations:

-   Join a domain

-   Authenticate between Active Directory forests

-   Authenticate to domains based on earlier versions of the Windows operating system

-   Authenticate to computers that do not run Windows operating systems, beginning with Windows 2000

-   Authenticate to computers that are not in the domain

### Possible values

-   Send LM & NTLM responses

-   Send LM & NTLM - use NTLMv2 session security if negotiated

-   Send NTLM responses only

-   Send NTLMv2 responses only

-   Send NTLMv2 responses only. Refuse LM

-   Send NTLMv2 responses only. Refuse LM & NTLM

-   Not Defined

The **Network security: LAN Manager authentication level** setting determines which challenge/response authentication protocol is used for network logons. This choice affects the authentication protocol level that clients use, the session security level that the computers negotiate, and the authentication level that servers accept. The following table identifies the policy settings, describes the setting, and identifies the security level used in the corresponding registry setting if you choose to use the registry to control this setting instead of the policy setting.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Description</th>
<th align="left">Registry security level</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Send LM &amp; NTLM responses</p></td>
<td align="left"><p>Client devices use LM and NTLM authentication, and they never use NTLMv2 session security. Domain controllers accept LM, NTLM, and NTLMv2 authentication.</p></td>
<td align="left"><p>0</p></td>
</tr>
<tr class="even">
<td align="left"><p>Send LM &amp; NTLM – use NTLMv2 session security if negotiated</p></td>
<td align="left"><p>Client devices use LM and NTLM authentication, and they use NTLMv2 session security if the server supports it. Domain controllers accept LM, NTLM, and NTLMv2 authentication.</p></td>
<td align="left"><p>1</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Send NTLM response only</p></td>
<td align="left"><p>Client devices use NTLMv1 authentication, and they use NTLMv2 session security if the server supports it. Domain controllers accept LM, NTLM, and NTLMv2 authentication.</p></td>
<td align="left"><p>2</p></td>
</tr>
<tr class="even">
<td align="left"><p>Send NTLMv2 response only</p></td>
<td align="left"><p>Client devices use NTLMv2 authentication, and they use NTLMv2 session security if the server supports it. Domain controllers accept LM, NTLM, and NTLMv2 authentication.</p></td>
<td align="left"><p>3</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Send NTLMv2 response only. Refuse LM</p></td>
<td align="left"><p>Client devices use NTLMv2 authentication, and they use NTLMv2 session security if the server supports it. Domain controllers refuse to accept LM authentication, and they will accept only NTLM and NTLMv2 authentication.</p></td>
<td align="left"><p>4</p></td>
</tr>
<tr class="even">
<td align="left"><p>Send NTLMv2 response only. Refuse LM &amp; NTLM</p></td>
<td align="left"><p>Client devices use NTLMv2 authentication, and they use NTLMv2 session security if the server supports it. Domain controllers refuse to accept LM and NTLM authentication, and they will accept only NTLMv2 authentication.</p></td>
<td align="left"><p>5</p></td>
</tr>
</tbody>
</table>

 

### Best practices

-   Best practices are dependent on your specific security and authentication requirements.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Server type or GPO</th>
<th align="left">Default value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Default Domain Policy</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="even">
<td align="left"><p>Default Domain Controller Policy</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Stand-Alone Server Default Settings</p></td>
<td align="left"><p>Send NTLMv2 response only</p></td>
</tr>
<tr class="even">
<td align="left"><p>DC Effective Default Settings</p></td>
<td align="left"><p>Send NTLMv2 response only</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member Server Effective Default Settings</p></td>
<td align="left"><p>Send NTLMv2 response only</p></td>
</tr>
<tr class="even">
<td align="left"><p>Client Computer Effective Default Settings</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
</tbody>
</table>

 

## Policy management


This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Group Policy

Modifying this setting may affect compatibility with client devices, services, and applications.

## Security considerations


This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

In Windows 7 and Windows Vista, this setting is undefined. In Windows Server 2008 R2 and later, this setting is configured to **Send NTLMv2 responses only**.

### Countermeasure

Configure the **Network security: LAN Manager Authentication Level** setting to **Send NTLMv2 responses only**. Microsoft and a number of independent organizations strongly recommend this level of authentication when all client computers support NTLMv2.

### Potential impact

Client devices that do not support NTLMv2 authentication cannot authenticate in the domain and access domain resources by using LM and NTLM.

## Related topics


[Security Options](security-options.md)

 

 






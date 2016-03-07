---
title: Network security-- Allow Local System to use computer identity for NTLM (Windows 10)
description: Describes the location, values, policy management, and security considerations for the Network security-- Allow Local System to use computer identity for NTLM security policy setting.
ms.assetid: c46a658d-b7a4-4139-b7ea-b9268c240053
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Network security: Allow Local System to use computer identity for NTLM


**Applies to**

-   Windows 10

**In this article**

-   [Reference](#reference)
-   [Policy management](#policy_management)
-   [Security considerations](#security_considerations)
-   [Related topics](#related_topics)

Describes the location, values, policy management, and security considerations for the **Network security: Allow Local System to use computer identity for NTLM** security policy setting.

## Reference


When services connect to devices that are running versions of the Windows operating system earlier than Windows Vista or Windows Server 2008, services that run as Local System and use SPNEGO (Negotiate) that revert to NTLM will authenticate anonymously. In Windows Server 2008 R2 and Windows 7 and later, if a service connects to a computer running Windows Server 2008 or Windows Vista, the system service uses the computer identity.

When a service connects with the device identity, signing and encryption are supported to provide data protection. (When a service connects anonymously, a system-generated session key is created, which provides no protection, but it allows applications to sign and encrypt data without errors. Anonymous authentication uses a NULL session, which is a session with a server in which no user authentication is performed; and therefore, anonymous access is allowed.)

### Possible values

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Windows Server 2008 and Windows Vista</th>
<th align="left">At least Windows Server 2008 R2 and Windows 7</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Enabled</p></td>
<td align="left"><p>Services running as Local System that use Negotiate will use the computer identity. This might cause some authentication requests between Windows operating systems to fail and log an error.</p></td>
<td align="left"><p>Services running as Local System that use Negotiate will use the computer identity. This is the default behavior.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Disabled</p></td>
<td align="left"><p>Services running as Local System that use Negotiate when reverting to NTLM authentication will authenticate anonymously. This is the default behavior.</p></td>
<td align="left"><p>Services running as Local System that use Negotiate when reverting to NTLM authentication will authenticate anonymously.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Neither</p></td>
<td align="left"><p>Services running as Local System that use Negotiate when reverting to NTLM authentication will authenticate anonymously.</p></td>
<td align="left"><p>Services running as Local System that use Negotiate will use the computer identity. This might cause some authentication requests between Windows operating systems to fail and log an error.</p></td>
</tr>
</tbody>
</table>

 

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
<th align="left">Server type or Group Policy object (GPO)</th>
<th align="left">Default value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Default domain policy</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="even">
<td align="left"><p>Default domain controller policy</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Stand-alone server default settings</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="even">
<td align="left"><p>Domain controller effective default settings</p></td>
<td align="left"><p>Not applicable</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member server effective default settings</p></td>
<td align="left"><p>Not applicable</p></td>
</tr>
<tr class="even">
<td align="left"><p>Effective GPO default settings on client computers</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
</tbody>
</table>

 

## Policy management


This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Policy conflict considerations

The policy [Network security: Allow LocalSystem NULL session fallback](network-security-allow-localsystem-null-session-fallback.md), if enabled, will allow NTLM or Kerberos authentication to be used when a system service attempts authentication. This will increase the success of interoperability at the expense of security.

The anonymous authentication behavior is different for Windows Server 2008 and Windows Vista than later versions of Windows. Configuring and applying this policy setting on those systems might not produce the same results.

### Group Policy

This policy setting can be configured by using the Group Policy Management Console (GPMC) to be distributed through Group Policy Objects (GPOs). If this policy is not contained in a distributed GPO, this policy can be configured on the local computer by using the Local Security Policy snap-in.

## Security considerations


This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

When a service connects to computers running versions of Windows earlier than Windows Vista or Windows Server 2008, services that run as Local System and use SPNEGO (Negotiate) that revert to NTLM will use NULL session. In Windows Server 2008 R2 and Windows 7 and later, if a service connects to a computer running Windows Server 2008 or Windows Vista, the system service uses the computer identity.

When a service connects with the computer identity, signing and encryption are supported to provide data protection. When a service connects with a NULL session, a system-generated session key is created, which provides no protection, but it allows applications to sign and encrypt data without errors.

### Countermeasure

You can configure the **Network security: Allow Local System to use computer identity for NTLM** security policy setting to allow Local System services that use Negotiate to use the computer identity when reverting to NTLM authentication.

### Potential impact

If you do not configure this policy setting on Windows Server 2008 and Windows Vista, services running as Local System that use the default credentials will use the NULL session and revert to NTLM authentication for Windows operating systems earlier than Windows Vista or Windows Server 2008.

Beginning with Windows Server 2008 R2 and Windows 7, the system allows Local System services that use Negotiate to use the computer identity when reverting to NTLM authentication.

## Related topics


[Security Options](security-options.md)

 

 






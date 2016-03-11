---
title: Network security-- LDAP client signing requirements (Windows 10)
description: This security policy reference topic for the IT professional describes the best practices, location, values, policy management and security considerations for this policy setting.
ms.assetid: 38b35489-eb5b-4035-bc87-df63de50509c
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Network security: LDAP client signing requirements


**Applies to**

-   Windows 10

**In this article**

-   [Reference](#reference)
-   [Policy management](#policy-management)
-   [Security considerations](#security-considerations)
-   [Related topics](#related-topics)

This security policy reference topic for the IT professional describes the best practices, location, values, policy management and security considerations for this policy setting. This information applies to computers running at least the Windows Server 2008 operating system.

## Reference


This policy setting determines the level of data signing that is requested on behalf of client devices that issue LDAP BIND requests. The levels of data signing are described in the following list:

-   **None**. The LDAP BIND request is issued with the caller-specified options.

-   **Negotiate signing**. If Transport Layer Security/Secure Sockets Layer (TLS/SSL) has not been started, the LDAP BIND request is initiated with the LDAP data signing option set in addition to the caller-specified options. If TLS/SSL has been started, the LDAP BIND request is initiated with the caller-specified options.

-   **Require signing**. This level is the same as **Negotiate signing**. However, if the LDAP server's intermediate saslBindInProgress response does not indicate that LDAP traffic signing is required, the caller is returned a message that the LDAP BIND command request failed.

Misuse of this policy setting is a common error that can cause data loss or problems with data access or security.

### Possible values

-   None

-   Negotiate signing

-   Require signature

-   Not Defined

### Best practices

-   Set **Domain controller: LDAP server signing requirements** to **Require signature**. If you set the server to require LDAP signatures, you must also set the client devices to do so. Not setting the client devices will prevent client computers from communicating with the server. This can cause many features to fail, including user authentication, Group Policy, and logon scripts.

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
<td align="left"><p>Negotiate signing</p></td>
</tr>
<tr class="even">
<td align="left"><p>DC Effective Default Settings</p></td>
<td align="left"><p>Negotiate signing</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member Server Effective Default Settings</p></td>
<td align="left"><p>Negotiate signing</p></td>
</tr>
<tr class="even">
<td align="left"><p>Client Computer Effective Default Settings</p></td>
<td align="left"><p>Negotiate signing</p></td>
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

Unsigned network traffic is susceptible to man-in-the-middle attacks in which an intruder captures the packets between the client computer and server, modifies them, and then forwards them to the server. For an LDAP server, this susceptibility means that an attacker could cause a server to make decisions that are based on false or altered data from the LDAP queries. To lower this risk in your network, you can implement strong physical security measures to protect the network infrastructure. Also, you can make all types of man-in-the-middle attacks extremely difficult if you require digital signatures on all network packets by means of IPsec authentication headers.

### Countermeasure

Configure the **Network security: LDAP server signing requirements** setting to **Require signature**.

### Potential impact

If you configure the server to require LDAP signatures, you must also configure the client computers. If you do not configure the client devices, they cannot communicate with the server, which could cause many features to fail, including user authentication, Group Policy, and logon scripts.

## Related topics


[Security Options](security-options.md)

 

 






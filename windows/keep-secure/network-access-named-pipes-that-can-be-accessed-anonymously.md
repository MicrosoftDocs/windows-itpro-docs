---
title: Network access-- Named Pipes that can be accessed anonymously (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the Network access-- Named Pipes that can be accessed anonymously security policy setting.
ms.assetid: 8897d2a4-813e-4d2b-8518-fcee71e1cf2c
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Network access: Named Pipes that can be accessed anonymously


**Applies to**

-   Windows 10

**In this article**

-   [Reference](#reference)
-   [Policy management](#policy_management)
-   [Security considerations](#security_considerations)
-   [Related topics](#related_topics)

Describes the best practices, location, values, policy management and security considerations for the **Network access: Named Pipes that can be accessed anonymously** security policy setting.

## Reference


This policy setting determines which communication sessions, or pipes, have attributes and permissions that allow anonymous access.

Restricting access over named pipes such as COMNAP and LOCATOR helps prevent unauthorized access to the network.

### Possible values

-   User-defined list of shared folders

-   Not defined

### Best practices

-   Set this policy to a null value; that is, enable the policy setting, but do not enter named pipes in the text box. This will disable null session access over named pipes, and applications that rely on this feature or on unauthenticated access to named pipes will no longer function.

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
<td align="left"><p>Netlogon, samr, lsarpc</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Stand-Alone Server Default Settings</p></td>
<td align="left"><p>Null</p></td>
</tr>
<tr class="even">
<td align="left"><p>DC Effective Default Settings</p></td>
<td align="left"><p>Netlogon, samr, lsarpc</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member Server Effective Default Settings</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="even">
<td align="left"><p>Client Computer Effective Default Settings</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
</tbody>
</table>

 

## Policy management


This section describes different features and tools available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Group Policy

For this policy setting to take effect, you must also enable the [Network access: Restrict anonymous access to Named Pipes and Shares](network-access-restrict-anonymous-access-to-named-pipes-and-shares.md) setting.

## Security considerations


This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

You can restrict access over named pipes such as COMNAP and LOCATOR to help prevent unauthorized access to the network. The following list describes available named pipes and their purpose. These pipes were granted anonymous access in earlier versions of Windows and some legacy applications may still use them.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Named pipe</th>
<th align="left">Purpose</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>COMNAP</p></td>
<td align="left"><p>SNABase named pipe. Systems network Architecture (SNA) is a collection of network protocols that were originally developed for IBM mainframe computers.</p></td>
</tr>
<tr class="even">
<td align="left"><p>COMNODE</p></td>
<td align="left"><p>SNA Server named pipe.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>SQL\QUERY</p></td>
<td align="left"><p>Default named pipe for SQL Server.</p></td>
</tr>
<tr class="even">
<td align="left"><p>SPOOLSS</p></td>
<td align="left"><p>Named pipe for the Print Spooler service.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>EPMAPPER</p></td>
<td align="left"><p>End Point Mapper named pipe.</p></td>
</tr>
<tr class="even">
<td align="left"><p>LOCATOR</p></td>
<td align="left"><p>Remote Procedure Call Locator service named pipe.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>TrlWks</p></td>
<td align="left"><p>Distributed Link Tracking Client named pipe.</p></td>
</tr>
<tr class="even">
<td align="left"><p>TrkSvr</p></td>
<td align="left"><p>Distributed Link Tracking Server named pipe.</p></td>
</tr>
</tbody>
</table>

 

### Countermeasure

Configure the **Network access: Named Pipes that can be accessed anonymously** setting to a null value (enable the setting but do not specify named pipes in the text box).

### Potential impact

This configuration disables null-session access over named pipes, and applications that rely on this feature or on unauthenticated access to named pipes no longer function. This may break trust between Windows Server 2003 domains in a mixed mode environment.

## Related topics


[Security Options](security-options.md)

 

 






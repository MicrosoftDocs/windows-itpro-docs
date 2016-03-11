---
title: Network access-- Remotely accessible registry paths and subpaths (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Network access-- Remotely accessible registry paths and subpaths security policy setting.
ms.assetid: 3fcbbf70-a002-4f85-8e86-8dabad21928e
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Network access: Remotely accessible registry paths and subpaths


**Applies to**

-   Windows 10

**In this article**

-   [Reference](#reference)
-   [Policy management](#policy-management)
-   [Security considerations](#security-considerations)
-   [Related topics](#related-topics)

Describes the best practices, location, values, and security considerations for the **Network access: Remotely accessible registry paths and subpaths** security policy setting.

## Reference


This policy setting determines which registry paths and subpaths are accessible when an application or process references the WinReg key to determine access permissions.

The registry is a database for device configuration information, much of which is sensitive. A malicious user can use it to facilitate unauthorized activities. The chance of this happening is reduced by the fact that the default ACLs that are assigned throughout the registry are fairly restrictive, and they help protect it from access by unauthorized users.

To allow remote access, you must also enable the Remote Registry service.

### Possible values

-   User-defined list of paths

-   Not Defined

### Best practices

-   Set this policy to a null value; that is, enable the policy setting, but do not enter any paths in the text box. Remote management tools, such as the Microsoft Baseline Security Analyzer and Configuration Manager, require remote access to the registry. Removing the default registry paths from the list of accessible paths might cause these and other management tools to fail.

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
<td align="left"><p>See the following registry key combination</p></td>
</tr>
<tr class="even">
<td align="left"><p>DC Effective Default Settings</p></td>
<td align="left"><p>See the following registry key combination</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member Server Effective Default Settings</p></td>
<td align="left"><p>See the following registry key combination</p></td>
</tr>
<tr class="even">
<td align="left"><p>Client Computer Effective Default Settings</p></td>
<td align="left"><p>See the following registry key combination</p></td>
</tr>
</tbody>
</table>

 

The combination of all the following registry keys apply to the previous settings:

1.  System\\CurrentControlSet\\Control\\Print\\Printers

2.  System\\CurrentControlSet\\Services\\Eventlog

3.  Software\\Microsoft\\OLAP Server

4.  Software\\Microsoft\\Windows NT\\CurrentVersion\\Print

5.  Software\\Microsoft\\Windows NT\\CurrentVersion\\Windows

6.  System\\CurrentControlSet\\Control\\ContentIndex

7.  System\\CurrentControlSet\\Control\\Terminal Server

8.  System\\CurrentControlSet\\Control\\Terminal Server\\UserConfig

9.  System\\CurrentControlSet\\Control\\Terminal Server\\DefaultUserConfiguration

10. Software\\Microsoft\\Windows NT\\CurrentVersion\\Perflib

11. System\\CurrentControlSet\\Services\\SysmonLog

## Policy management


This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a computer restart when they are saved locally or distributed through Group Policy.

## Security considerations


This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

The registry contains sensitive device configuration information that could be used by an attacker to facilitate unauthorized activities. The fact that the default ACLs that are assigned throughout the registry are fairly restrictive and help to protect the registry from access by unauthorized users reduces the risk of such an attack.

### Countermeasure

Configure the **Network access: Remotely accessible registry paths and sub-paths** setting to a null value (enable the setting but do not enter any paths in the text box).

### Potential impact

Remote management tools such as MBSA and Configuration Manager require remote access to the registry to properly monitor and manage those computers. If you remove the default registry paths from the list of accessible ones, such remote management tools could fail.

**Note**  
If you want to allow remote access, you must also enable the Remote Registry service.

 

## Related topics


[Security Options](security-options.md)

 

 






---
title: Using advanced security auditing options to monitor dynamic access control objects (Windows 10)
description: This guide explains the process of setting up advanced security auditing capabilities that are made possible through settings and events that were introduced in Windows 8 and Windows Server 2012.
MSHAttr: PreferredLib /library
ms.assetid: 0d2c28ea-bdaf-47fd-bca2-a07dce5fed37
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Using advanced security auditing options to monitor dynamic access control objects


**Applies to**

-   Windows 10

This guide explains the process of setting up advanced security auditing capabilities that are made possible through settings and events that were introduced in Windows 8 and Windows Server 2012.

These procedures can be deployed with the advanced security auditing capabilities described in [Deploy Security Auditing with Central Audit Policies (Demonstration Steps)](http://technet.microsoft.com/library/hh831542.aspx).

## In this guide


Domain administrators can create and deploy expression-based security audit policies by using file classification information (resource attributes), user claims, and device claims to target specific users and resources to monitor potentially significant activities on one or more computers. These policies can be deployed centrally by using Group Policy, or directly on a computer, in a folder, or in individual files.

## In this section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Topic</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>[Monitor the central access policies that apply on a file server](monitor-the-central-access-policies-that-apply-on-a-file-server.md)</p></td>
<td align="left"><p>This topic for the IT professional describes how to monitor changes to the central access policies that apply to a file server when using advanced security auditing options to monitor dynamic access control objects. Central access policies are created on a domain controller and then applied to file servers through Group Policy management.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Monitor the use of removable storage devices](monitor-the-use-of-removable-storage-devices.md)</p></td>
<td align="left"><p>This topic for the IT professional describes how to monitor attempts to use removable storage devices to access network resources. It describes how to use advanced security auditing options to monitor dynamic access control objects.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Monitor resource attribute definitions](monitor-resource-attribute-definitions.md)</p></td>
<td align="left"><p>This topic for the IT professional describes how to monitor changes to resource attribute definitions when you are using advanced security auditing options to monitor dynamic access control objects.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Monitor central access policy and rule definitions](monitor-central-access-policy-and-rule-definitions.md)</p></td>
<td align="left"><p>This topic for the IT professional describes how to monitor changes to central access policy and central access rule definitions when you use advanced security auditing options to monitor dynamic access control objects.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Monitor user and device claims during sign-in](monitor-user-and-device-claims-during-sign-in.md)</p></td>
<td align="left"><p>This topic for the IT professional describes how to monitor user and device claims that are associated with a user’s security token when you are using advanced security auditing options to monitor dynamic access control objects.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Monitor the resource attributes on files and folders](monitor-the-resource-attributes-on-files-and-folders.md)</p></td>
<td align="left"><p>This topic for the IT professional describes how to monitor attempts to change settings to the resource attributes on files when you are using advanced security auditing options to monitor dynamic access control objects.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Monitor the central access policies associated with files and folders](monitor-the-central-access-policies-associated-with-files-and-folders.md)</p></td>
<td align="left"><p>This topic for the IT professional describes how to monitor changes to the central access policies that are associated with files and folders when you are using advanced security auditing options to monitor dynamic access control objects.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Monitor claim types](monitor-claim-types.md)</p></td>
<td align="left"><p>This topic for the IT professional describes how to monitor changes to claim types that are associated with dynamic access control when you are using advanced security auditing options.</p></td>
</tr>
</tbody>
</table>

 

**Important**  
This procedure can be configured on computers running any of the supported Windows operating systems. The other monitoring procedures can be configured only as part of a functioning dynamic access control deployment.

 

## Related topics


[Security auditing](security-auditing-overview-glbl.md)

 

 






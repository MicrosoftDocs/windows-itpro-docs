---
title: What's New in ACT 6.1 (Windows 10)
description: Two major updates have been released since ACT 6.1.
ms.assetid: f12e137d-0b55-4f7d-88e0-149302655d9b
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: appcompat
ms.sitesec: library
author: TrudyHa
---

# What's New in ACT 6.1


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

Two major updates have been released since ACT 6.1. They are ACT 6.1 Update and ACT 6.1 Update 2. The following table lists changes made in the Application Compatibility Toolkit (ACT), which is included in the Windows Assessment and Deployment Kit (ADK) download.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left">Version</td>
<td align="left">Changes</td>
</tr>
<tr class="even">
<td align="left">ACT 6.1 Update</td>
<td align="left"><ul>
<li>Support for Windows 10, including viewing Windows 10 reports on Application Compatibility Manager.</li>
<li><strong>Bug fixes</strong>: this version of ACT fixed an issue where Inventory-Collector package would fail when it tried to inventory the system.</li>
</ul></td>
</tr>
<tr class="odd">
<td align="left">ACT 6.1 Update 2</td>
<td align="left"><p><strong>Bug fixes</strong>: this version of ACT addresses the following bugs:</p>
<ul>
<li><p>Capability to create custom compatibility fixes for Windows versions other than the currently running version.</p></li>
<li><p>Fixed issue where Inventory-Collector Package crashes when running on some Windows 7 x86 systems.</p></li>
<li><p>Fixed issue where not specifying a tag for Inventory-Collector Package would cause an error in the log processing service. The result of this bug was that data collected by the Package would not be processed.</p></li>
<li><p>Fixed issue where Standard User Analyzer (SUA) returns an error when trying to apply mitigations to an app on Windows 7.</p></li>
<li><p>Fixed issue where ACT is unable to create custom compatibility fixes for 32-bit systems correctly.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

**Note**  
The version numbers for ACT 6.1 Update and Update 2 are identical, so you will need to look at the product ID of ACT to tell them apart. To find the product ID, open ACT, go to **Help** &gt; **About**, and compare the product ID to the following list.

-   **ACT 6.1 Update**: B264FCCB-3F1F-828F-CCF8-EDB93E860970

-   **ACT 6.1 Update 2**: B2BC4686-29A9-9E9D-F2E4-7E20659EECE7

If you run into any of the bugs fixed in Update 2, you likely have ACT 6.1 Update or older. Please download the latest version in the Windows ADK.

 

## Related topics


[Software Requirements for ACT](software-requirements-for-act.md)

[Software Requirements for RAP](software-requirements-for-rap.md)

 

 






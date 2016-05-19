---
title: Using Event Viewer with AppLocker (Windows 10)
description: This topic lists AppLocker events and describes how to use Event Viewer with AppLocker.
ms.assetid: 109abb10-78b1-4c29-a576-e5a17dfeb916
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Using Event Viewer with AppLocker
**Applies to**
-   Windows 10
This topic lists AppLocker events and describes how to use Event Viewer with AppLocker.
The AppLocker log contains information about applications that are affected by AppLocker rules. Each event in the log contains detailed info about:
-   Which file is affected and the path of that file
-   Which packaged app is affected and the package identifier of the app
-   Whether the file or packaged app is allowed or blocked
-   The rule type (path, file hash, or publisher)
-   The rule name
-   The security identifier (SID) for the user or group identified in the rule
Review the entries in the Event Viewer to determine if any applications are not included in the rules that you automatically generated. For instance, some line-of-business apps are installed to non-standard locations, such as the root of the active drive (for example: %SystemDrive%).
For info about what to look for in the AppLocker event logs, see [Monitor app usage with AppLocker](monitor-application-usage-with-applocker.md).
**To review the AppLocker log in Event Viewer**
1.  Open Event Viewer.
2.  In the console tree under **Application and Services Logs\\Microsoft\\Windows**, click **AppLocker**.
The following table contains information about the events that you can use to determine which apps are affected by AppLocker rules.
<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Event ID</th>
<th align="left">Level</th>
<th align="left">Event message</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>8000</p></td>
<td align="left"><p>Error</p></td>
<td align="left"><p>Application Identity Policy conversion failed. Status <em>&lt;%1&gt;</em></p></td>
<td align="left"><p>Indicates that the policy was not applied correctly to the computer. The status message is provided for troubleshooting purposes.</p></td>
</tr>
<tr class="even">
<td align="left"><p>8001</p></td>
<td align="left"><p>Information</p></td>
<td align="left"><p>The AppLocker policy was applied successfully to this computer.</p></td>
<td align="left"><p>Indicates that the AppLocker policy was successfully applied to the computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>8002</p></td>
<td align="left"><p>Information</p></td>
<td align="left"><p><em>&lt;File name&gt;</em> was allowed to run.</p></td>
<td align="left"><p>Specifies that the .exe or .dll file is allowed by an AppLocker rule.</p></td>
</tr>
<tr class="even">
<td align="left"><p>8003</p></td>
<td align="left"><p>Warning</p></td>
<td align="left"><p><em>&lt;File name&gt;</em> was allowed to run but would have been prevented from running if the AppLocker policy were enforced.</p></td>
<td align="left"><p>Applied only when the <strong>Audit only</strong> enforcement mode is enabled. Specifies that the .exe or .dll file would be blocked if the <strong>Enforce rules</strong> enforcement mode were enabled.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>8004</p></td>
<td align="left"><p>Error</p></td>
<td align="left"><p><em>&lt;File name&gt;</em> was not allowed to run.</p></td>
<td align="left"><p>Access to <em>&lt;file name&gt;</em> is restricted by the administrator. Applied only when the <strong>Enforce rules</strong> enforcement mode is set either directly or indirectly through Group Policy inheritance. The .exe or .dll file cannot run.</p></td>
</tr>
<tr class="even">
<td align="left"><p>8005</p></td>
<td align="left"><p>Information</p></td>
<td align="left"><p><em>&lt;File name&gt;</em> was allowed to run.</p></td>
<td align="left"><p>Specifies that the script or .msi file is allowed by an AppLocker rule.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>8006</p></td>
<td align="left"><p>Warning</p></td>
<td align="left"><p><em>&lt;File name&gt;</em> was allowed to run but would have been prevented from running if the AppLocker policy were enforced.</p></td>
<td align="left"><p>Applied only when the <strong>Audit only</strong> enforcement mode is enabled. Specifies that the script or .msi file would be blocked if the <strong>Enforce rules</strong> enforcement mode were enabled.</p></td>
</tr>
<tr class="even">
<td align="left"><p>8007</p></td>
<td align="left"><p>Error</p></td>
<td align="left"><p><em>&lt;File name&gt;</em> was not allowed to run.</p></td>
<td align="left"><p>Access to <em>&lt;file name&gt;</em> is restricted by the administrator. Applied only when the <strong>Enforce rules</strong> enforcement mode is set either directly or indirectly through Group Policy inheritance. The script or .msi file cannot run.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>8007</p></td>
<td align="left"><p>Error</p></td>
<td align="left"><p>AppLocker disabled on the SKU.</p></td>
<td align="left"><p>Added in Windows Server 2012 and Windows 8.</p></td>
</tr>
<tr class="even">
<td align="left"><p>8020</p></td>
<td align="left"><p>Information</p></td>
<td align="left"><p>Packaged app allowed.</p></td>
<td align="left"><p>Added in Windows Server 2012 and Windows 8.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>8021</p></td>
<td align="left"><p>Information</p></td>
<td align="left"><p>Packaged app audited.</p></td>
<td align="left"><p>Added in Windows Server 2012 and Windows 8.</p></td>
</tr>
<tr class="even">
<td align="left"><p>8022</p></td>
<td align="left"><p>Information</p></td>
<td align="left"><p>Packaged app disabled.</p></td>
<td align="left"><p>Added in Windows Server 2012 and Windows 8.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>8023</p></td>
<td align="left"><p>Information</p></td>
<td align="left"><p>Packaged app installation allowed.</p></td>
<td align="left"><p>Added in Windows Server 2012 and Windows 8.</p></td>
</tr>
<tr class="even">
<td align="left"><p>8024</p></td>
<td align="left"><p>Information</p></td>
<td align="left"><p>Packaged app installation audited.</p></td>
<td align="left"><p>Added in Windows Server 2012 and Windows 8.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>8025</p></td>
<td align="left"><p>Warning</p></td>
<td align="left"><p>Packaged app installation disabled.</p></td>
<td align="left"><p>Added in Windows Server 2012 and Windows 8.</p></td>
</tr>
<tr class="even">
<td align="left"><p>8027</p></td>
<td align="left"><p>Warning</p></td>
<td align="left"><p>No Packaged app rule configured.</p></td>
<td align="left"><p>Added in Windows Server 2012 and Windows 8.</p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Tools to use with AppLocker](tools-to-use-with-applocker.md)
 
 

---
title: Audit Other System Events (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Other System Events, which determines whether the operating system audits various system events.
ms.assetid: 2401e4cc-d94e-41ec-82a7-e10914295f8b
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Audit Other System Events
**Applies to**
-   Windows 10
This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Other System Events**, which determines whether the operating system audits various system events.
The system events in this category include:
-   Startup and shutdown of the Windows Firewall service and driver.
-   Security policy processing by the Windows Firewall service.
-   Cryptography key file and migration operations.
**Important**  
Failure to start the Windows Firewall service may result in a computer that is not fully protected against network threats.
 
Event volume: Low
Default: Success and failure
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
<td align="left"><p>5024</p></td>
<td align="left"><p>The Windows Firewall Service has started successfully.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5025</p></td>
<td align="left"><p>The Windows Firewall Service has been stopped.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5027</p></td>
<td align="left"><p>The Windows Firewall Service was unable to retrieve the security policy from the local storage. The service will continue enforcing the current policy.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5028</p></td>
<td align="left"><p>The Windows Firewall Service was unable to parse the new security policy. The service will continue with currently enforced policy.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5029</p></td>
<td align="left"><p>The Windows Firewall Service failed to initialize the driver. The service will continue to enforce the current policy.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5030</p></td>
<td align="left"><p>The Windows Firewall Service failed to start.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5032</p></td>
<td align="left"><p>Windows Firewall was unable to notify the user that it blocked an application from accepting incoming connections on the network.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5033</p></td>
<td align="left"><p>The Windows Firewall Driver has started successfully.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5034</p></td>
<td align="left"><p>The Windows Firewall Driver has been stopped.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5035</p></td>
<td align="left"><p>The Windows Firewall Driver failed to start.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5037</p></td>
<td align="left"><p>The Windows Firewall Driver detected critical runtime error. Terminating.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5058</p></td>
<td align="left"><p>Key file operation.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5059</p></td>
<td align="left"><p>Key migration operation.</p></td>
</tr>
<tr class="even">
<td align="left"><p>6400</p></td>
<td align="left"><p>BranchCache: Received an incorrectly formatted response while discovering availability of content.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>6401</p></td>
<td align="left"><p>BranchCache: Received invalid data from a peer. Data discarded.</p></td>
</tr>
<tr class="even">
<td align="left"><p>6402</p></td>
<td align="left"><p>BranchCache: The message to the hosted cache offering it data is incorrectly formatted.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>6403</p></td>
<td align="left"><p>BranchCache: The hosted cache sent an incorrectly formatted response to the client.</p></td>
</tr>
<tr class="even">
<td align="left"><p>6404</p></td>
<td align="left"><p>BranchCache: Hosted cache could not be authenticated using the provisioned SSL certificate.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>6405</p></td>
<td align="left"><p>BranchCache: %2 instance(s) of event id %1 occurred.</p></td>
</tr>
<tr class="even">
<td align="left"><p>6406</p></td>
<td align="left"><p>%1 registered to Windows Firewall to control filtering for the following: %2</p></td>
</tr>
<tr class="odd">
<td align="left"><p>6407</p></td>
<td align="left"><p>1%</p></td>
</tr>
<tr class="even">
<td align="left"><p>6408</p></td>
<td align="left"><p>Registered product %1 failed and Windows Firewall is now controlling the filtering for %2</p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 

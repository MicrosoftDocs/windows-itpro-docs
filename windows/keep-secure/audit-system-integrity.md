---
title: Audit System Integrity (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting Audit System Integrity which determines whether the operating system audits events that violate the integrity of the security subsystem.
MSHAttr: PreferredLib /library
ms.assetid: 942a9a7f-fa31-4067-88c7-f73978bf2034
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit System Integrity


**Applies to**

-   Windows 10
-   Windows 10 Mobile

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit System Integrity**, which determines whether the operating system audits events that violate the integrity of the security subsystem.

Activities that violate the integrity of the security subsystem include the following:

-   Audited events are lost due to a failure of the auditing system.

-   A process uses an invalid local procedure call (LPC) port in an attempt to impersonate a client, reply to a client address space, read to a client address space, or write from a client address space.

-   A remote procedure call (RPC) integrity violation is detected.

-   A code integrity violation with an invalid hash value of an executable file is detected.

-   Cryptographic tasks are performed.

**Important**  
Violations of security subsystem integrity are critical and could indicate a potential security attack.

 

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
<td align="left"><p>4612</p></td>
<td align="left"><p>Internal resources allocated for the queuing of audit messages have been exhausted, leading to the loss of some audits.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4615</p></td>
<td align="left"><p>Invalid use of LPC port.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4618</p></td>
<td align="left"><p>A monitored security event pattern has occurred.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4816</p></td>
<td align="left"><p>RPC detected an integrity violation while decrypting an incoming message.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5038</p></td>
<td align="left"><p>Code integrity determined that the image hash of a file is not valid. The file could be corrupt due to unauthorized modification or the invalid hash could indicate a potential disk device error.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5056</p></td>
<td align="left"><p>A cryptographic self-test was performed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5057</p></td>
<td align="left"><p>A cryptographic primitive operation failed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5060</p></td>
<td align="left"><p>Verification operation failed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5061</p></td>
<td align="left"><p>Cryptographic operation.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5062</p></td>
<td align="left"><p>A kernel-mode cryptographic self-test was performed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>6281</p></td>
<td align="left"><p>Code Integrity determined that the page hashes of an image file are not valid. The file could be improperly signed without page hashes or corrupt due to unauthorized modification. The invalid hashes could indicate a potential disk device error.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 






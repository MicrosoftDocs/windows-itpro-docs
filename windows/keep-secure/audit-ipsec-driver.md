---
title: Audit IPsec Driver (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting Audit IPsec Driver which determines whether the operating system generates audit events for the activities of the IPsec driver.
MSHAttr: PreferredLib /library
ms.assetid: c8b8c02f-5ad0-4ee5-9123-ea8cdae356a5
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit IPsec Driver


**Applies to**

-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit IPsec Driver**, which determines whether the operating system generates audit events for the activities of the IPsec driver.

The IPsec driver, using the IP Filter List from the active IPsec policy, watches for outbound IP packets that must be secured and inbound IP packets that must be verified and decrypted. This security policy setting reports on the following activities of the IPsec driver:

-   Startup and shutdown of IPsec services.

-   Packets dropped due to integrity-check failure.

-   Packets dropped due to replay-check failure.

-   Packets dropped due to being in plaintext.

-   Packets received with an incorrect Security Parameter Index (SPI). (This can indicate malfunctioning hardware or interoperability problems.)

-   Failure to process IPsec filters.

A high rate of packet drops by the IPsec filter driver may indicate attempts to gain access to the network by unauthorized systems.

Failure to process IPsec filters poses a potential security risk because some network interfaces may not get the protection that is provided by the IPsec filter.

Event volume: Medium

Default: Not configured

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
<td align="left"><p>4960</p></td>
<td align="left"><p>IPsec dropped an inbound packet that failed an integrity check. If this problem persists, it could indicate a network issue or that packets are being modified in transit to this computer. Verify that the packets sent from the remote computer are the same as those received by this computer. This error might also indicate interoperability problems with other IPsec implementations.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4961</p></td>
<td align="left"><p>IPsec dropped an inbound packet that failed a replay check. If this problem persists, it could indicate a replay attack against this computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4962</p></td>
<td align="left"><p>IPsec dropped an inbound packet that failed a replay check. The inbound packet had too low a sequence number to ensure it was not a replay.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4963</p></td>
<td align="left"><p>IPsec dropped an inbound clear text packet that should have been secured. This is usually due to the remote computer changing its IPsec policy without informing this computer. This could also be a spoofing attack attempt.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4965</p></td>
<td align="left"><p>IPsec received a packet from a remote computer with an incorrect Security Parameter Index (SPI). This is usually caused by malfunctioning hardware that is corrupting packets. If these errors persist, verify that the packets sent from the remote computer are the same as those received by this computer. This error may also indicate interoperability problems with other IPsec implementations. In that case, if connectivity is not impeded, then these events can be ignored.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5478</p></td>
<td align="left"><p>IPsec Services has started successfully.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5479</p></td>
<td align="left"><p>IPsec Services has been shut down successfully. The shutdown of IPsec Services can put the computer at greater risk of network attack or expose the computer to potential security risks.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5480</p></td>
<td align="left"><p>IPsec Services failed to get the complete list of network interfaces on the computer. This poses a potential security risk because some of the network interfaces may not get the protection provided by the applied IPsec filters. Use the IP Security Monitor snap-in to diagnose the problem.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5483</p></td>
<td align="left"><p>IPsec Services failed to initialize RPC server. IPsec Services could not be started.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5484</p></td>
<td align="left"><p>IPsec Services has experienced a critical failure and has been shut down. The shutdown of IPsec Services can put the computer at greater risk of network attack or expose the computer to potential security risks.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5485</p></td>
<td align="left"><p>IPsec Services failed to process some IPsec filters on a plug-and-play event for network interfaces. This poses a potential security risk because some of the network interfaces may not get the protection provided by the applied IPsec filters. Use the IP Security Monitor snap-in to diagnose the problem.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 






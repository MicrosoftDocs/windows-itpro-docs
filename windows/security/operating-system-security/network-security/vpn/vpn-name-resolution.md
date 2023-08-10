---
title: VPN name resolution
description: Learn how name resolution works when using a VPN connection.
ms.date: 08/03/2023
ms.topic: conceptual
---

# VPN name resolution

When the VPN client establishes a connection, it receives an IP address and, optionally, the IP address of one or more DNS servers.

The name resolution setting in the VPN profile determines how name resolution works on the system when the VPN connection is established:

1. The network stack looks at the Name Resolution Policy table (NRPT) for any matches, and tries a resolution if a match is found
1. If no match is found, the DNS suffix on the most preferred interface based on the interface metric is appended to the name (if a short name is used). A DNS query is sent to the preferred interface
1. If the query times out, the DNS suffix search list is used in order and DNS queries are sent on all interfaces

## Name Resolution Policy table (NRPT)

The NRPT is a table of namespaces that determines the DNS client's behavior when issuing name resolution queries and processing responses. It's the first place that the stack will look after the DNSCache.

There are three types of name matches that can  set up for NRPT:

- Fully qualified domain name (FQDN) that can be used for direct matching to a name
- Suffix match results in either a comparison of suffixes (for FQDN resolution) or the appending of the suffix (if using short name)
- Any resolution should attempt to first resolve with the proxy server/DNS server with this entry

NRPT is set using the `VPNv2/<ProfileName>/DomainNameInformationList` node of the [VPNv2 CSP](/windows/client-management/mdm/vpnv2-csp). You can use the same node to configure a Web proxy server or DNS.

To learn more about NRPT, see [Introduction to the NRPT](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/ee649207(v=ws.10)).

## DNS suffix

The DNS suffix setting is used to configure the primary DNS suffix for the VPN interface and the suffix search list after the VPN connection is established.

Primary DNS suffix is set using the `VPNv2/<ProfileName>/DnsSuffix` node.

[Learn more about primaryDNS suffix](/previous-versions/windows/it-pro/windows-2000-server/cc959611(v=technet.10))

## Persistent name resolution rules

You can configure *persistent* name resolution rules. Name resolution for the specified items is done over the VPN.

Persistent name resolution is set using the `VPNv2/<ProfileName>/DomainNameInformationList/<dniRowId>/Persistent` node.

## Configure name resolution

See [VPN profile options](vpn-profile-options.md) and [VPNv2 CSP](/windows/client-management/mdm/vpnv2-csp) for XML configuration.

The following image shows name resolution options in a VPN Profile configuration policy using Microsoft Intune.

:::image type="content" source="images/vpn-name-intune.png" alt-text="Creation of VPN profile in Intune: DNS options." lightbox="images/vpn-name-intune.png":::

The fields in **Add or edit DNS rule** in the Intune profile correspond to the XML settings shown in the following table.

| Field | XML |
| --- | --- |
| **Name** | **VPNv2/*ProfileName*/DomainNameInformationList/*dniRowId*/DomainName**  |
| **Servers (comma separated)** | **VPNv2/*ProfileName*/DomainNameInformationList/*dniRowId*/DnsServers**  |
| **Proxy server** |  **VPNv2/*ProfileName*/DomainNameInformationList/*dniRowId*/WebServers**  |

## Related articles

- [VPN technical guide](vpn-guide.md)
- [VPN connection types](vpn-connection-type.md)
- [VPN routing decisions](vpn-routing.md)
- [VPN authentication options](vpn-authentication.md)
- [VPN and conditional access](vpn-conditional-access.md)
- [VPN auto-triggered profile options](vpn-auto-trigger-profile.md)
- [VPN security features](vpn-security-features.md)
- [VPN profile options](vpn-profile-options.md)
---
ms.date: 05/06/2024
title: VPN routing decisions
description: Learn about approaches that either send all data through a VPN or only selected data. The one you choose impacts capacity planning and security expectations.
ms.topic: concept-article
---

# VPN routing decisions

Network routes are required for the stack to understand which interface to use for outbound traffic. One of the most important decision points for VPN configuration is whether you want to send all the data through VPN (*force tunnel*) or only some data through the VPN (*split tunnel*). The decision impacts the configuration, capacity planning, and security expectations from the connection.

## Split tunnel configuration

In a split tunnel configuration, routes can be specified to go over VPN and all other traffic will go over the physical interface.

Routes can be configured using the `VPNv2/<ProfileName>/RouteList` setting in the [VPNv2 Configuration Service Provider (CSP)](/windows/client-management/mdm/vpnv2-csp).

For each route item in the list, you can configure the following options:

- **Address**: `VPNv2/<ProfileName>/RouteList/<routeRowId>/Address`
- **Prefix size**: `VPNv2/<ProfileName>/RouteList/<routeRowId>/Prefix`
- **Exclusion route**: V`VPNv2/<ProfileName>/RouteList/<routeRowId>/ExclusionRoute`

With Windows VPN, you can specify exclusion routes that shouldn't go over the physical interface.

Routes can also be added at connect time through the server for UWP VPN apps.

## Force tunnel configuration

In a force tunnel configuration, all traffic will go over VPN. Force tunnel is the default configuration, and takes effect when no routes are specified.

The only implication of force tunnel is the manipulation of routing entries: VPN V4 and V6 default routes (for example *0.0.0.0/0*) are added to the routing table with a lower metric than ones for other interfaces. This configuration sends traffic through the VPN as long as there isn't a specific route on the physical interface:

- For built-in VPN, the decision is controlled using the MDM setting `VPNv2/ProfileName/NativeProfile/RoutingPolicyType`
- For a UWP VPN plug-in, the app controls the property. If the VPN plug-in indicates the default route for IPv4 and IPv6 as the only two Inclusion routes, the VPN platform marks the connection as Force Tunneled

## Configure routing

See [VPN profile options](vpn-profile-options.md) and [VPNv2 CSP](/windows/client-management/mdm/vpnv2-csp) for XML configuration.

When you configure a VPN profile in Microsoft Intune, you can enable split tunnel configuration:

![split tunnel.](images/vpn-split.png)

Once enabled, you can add the routes that should use the VPN connection.

## Related articles

- [VPN technical guide](vpn-guide.md)
- [VPN connection types](vpn-connection-type.md)
- [VPN authentication options](vpn-authentication.md)
- [VPN and conditional access](vpn-conditional-access.md)
- [VPN name resolution](vpn-name-resolution.md)
- [VPN auto-triggered profile options](vpn-auto-trigger-profile.md)
- [VPN security features](vpn-security-features.md)
- [VPN profile options](vpn-profile-options.md)
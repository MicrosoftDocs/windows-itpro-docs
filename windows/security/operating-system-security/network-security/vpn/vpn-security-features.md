---
title: VPN security features
description: Learn about security features for VPN, including LockDown VPN and traffic filters.
ms.date: 05/24/2023
ms.topic: conceptual
---

# VPN security features

## Hyper-V based containers and VPN

Windows supports different kinds of Hyper-V based containers, like Microsoft Defender Application Guard and Windows Sandbox. When you use a third party VPN solution, the Hyper-V based containers may not be able to seamlessly connect to the internet, and configuration changes may be needed to resolve connectivity issues.

For example, read about the workaround for Cisco AnyConnect VPN: [Cisco AnyConnect Secure Mobility Client Administrator Guide: Connectivity issues with VM-based subsystems](https://www.cisco.com/c/en/us/td/docs/security/vpn_client/anyconnect/anyconnect410/administration/guide/b-anyconnect-admin-guide-4-10/troubleshoot-anyconnect.html#Cisco_Task_in_List_GUI.dita_3a9a8101-f034-4e9b-b24a-486ee47b5e9f).

## Traffic Filters

Traffic Filters enables organizations to decide what traffic is allowed into the corporate network based on policy. IT admins can use Traffic Filters to apply interface-specific firewall rules to the VPN Interface.

There are two types of Traffic Filter rules:

- **App-based rules** consist of a list of applications that can be marked to only allow traffic originating from the apps to the VPN interface
- **Traffic-based rules** consist of 5-tuple policies (ports, addresses, protocol) that can be specified to only allow traffic matching the rules to go through the VPN interface

There can be sets of rules linked by *OR*. Within each set, there can be app-based rules and traffic-based rules.\
All the properties within the set are linked by *AND*. The rules can be applied at a per-app level or a per-device level.

For example, an IT admin could define rules that specify:

- An *HR App* is allowed to go through the VPN and only access port *4545*
- The *Finance apps* are allowed to through the VPN and only access the Remote IP ranges of *10.10.0.40 - 10.10.0.201* on port *5889*
- All other apps on the device can only access ports *80* or *443*

## Configure traffic filters

See [VPN profile options](vpn-profile-options.md) and [VPNv2 CSP](/windows/client-management/mdm/vpnv2-csp) for XML configuration.

The following image shows the interface to configure traffic rules in a VPN Profile configuration policy, using Microsoft Intune.

:::image type="content" source="images/vpn-traffic-rules.png" alt-text="VPN profile creation from Microsoft Intune admin center." lightbox="images/vpn-traffic-rules.png":::

## LockDown VPN

A VPN profile configured with LockDown secures the device to only allow network traffic over the VPN interface. It has the following features:

- The system attempts to always keep the VPN connected
- The user can't disconnect the VPN connection
- The user can't delete or modify the VPN profile
- The VPN LockDown profile uses forced tunnel connection
- If the VPN connection isn't available, outbound network traffic is blocked
- Only one VPN LockDown profile is allowed on a device

> [!NOTE]
> For built-in VPN, LockDown VPN is only available for the Internet Key Exchange version 2 (IKEv2) connection type.

> [!CAUTION]
> Be careful when deploying LockDown VPN, as the resultant connection won't be able to send or receive any network traffic without the VPN connection being established.

## Related articles

- [VPN technical guide](vpn-guide.md)
- [VPN connection types](vpn-connection-type.md)
- [VPN routing decisions](vpn-routing.md)
- [VPN authentication options](vpn-authentication.md)
- [VPN and conditional access](vpn-conditional-access.md)
- [VPN name resolution](vpn-name-resolution.md)
- [VPN auto-triggered profile options](vpn-auto-trigger-profile.md)
- [VPN profile options](vpn-profile-options.md)

---
title: Windows VPN technical guide
description: Learn how to plan and configure Windows devices for your organization's VPN solution.
ms.date: 05/24/2023
ms.topic: conceptual
---

# Windows VPN technical guide

This guide walks you through the decisions to make for Windows clients in your organization's VPN solution, and how to configure your devices. This guide references the [VPNv2 Configuration Service Provider (CSP)](/windows/client-management/mdm/vpnv2-csp) and provides mobile device management (MDM) configuration instructions using Microsoft Intune.

To create a Windows VPN device configuration profile see: [Windows device settings to add VPN connections using Intune](/mem/intune/configuration/vpn-settings-windows-10).

> [!NOTE]
> This guide does not explain server deployment.

[!INCLUDE [virtual-private-network-vpn](../../../../../includes/licensing/virtual-private-network-vpn.md)]

## In this guide

| Article | Description  |
| --- | --- |
| [VPN connection types](vpn-connection-type.md) | Select a VPN client and tunneling protocol |
| [VPN routing decisions](vpn-routing.md)  | Choose between split tunnel and force tunnel configuration |
| [VPN authentication options](vpn-authentication.md)  | Select a method for Extensible Authentication Protocol (EAP) authentication. |
| [VPN and conditional access](vpn-conditional-access.md)  | Use Azure Active Directory policy evaluation to set access policies for VPN connections. |
| [VPN name resolution](vpn-name-resolution.md)  | Decide how name resolution should work |
| [VPN auto-triggered profile options](vpn-auto-trigger-profile.md)  | Set a VPN profile to connect automatically by app or by name, to be "always on", and to not trigger VPN on trusted networks |
| [VPN security features](vpn-security-features.md)  | Configure traffic filtering, connect a VPN profile to Windows Information Protection (WIP), and more |
| [VPN profile options](vpn-profile-options.md)  | Combine settings into single VPN profile using XML |

## Learn more

- [Create VPN profiles to connect to VPN servers in Intune](/mem/intune/configuration/vpn-settings-configure)

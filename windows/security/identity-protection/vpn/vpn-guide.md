---
title: Windows VPN technical guide (Windows 10 and Windows 11)
description: Learn about decisions to make for Windows 10 or Windows 11 clients in your enterprise VPN solution and how to configure your deployment.
ms.prod: windows-client
author: paolomatarazzo
ms.localizationpriority: medium
ms.date: 02/21/2022
manager: aaroncz
ms.author: paoloma
ms.reviewer: pesmith
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
ms.technology: itpro-security
---

# Windows VPN technical guide

This guide will walk you through the decisions you will make for Windows 10 or Windows 11 clients in your enterprise VPN solution and how to configure your deployment. This guide references the [VPNv2 Configuration Service Provider (CSP)](/windows/client-management/mdm/vpnv2-csp) and provides mobile device management (MDM) configuration instructions using Microsoft Intune and the VPN Profile template for Windows 10 and Windows 11.

To create a Windows 10 VPN device configuration profile see: [Windows 10 and Windows Holographic device settings to add VPN connections using Intune](/mem/intune/configuration/vpn-settings-windows-10).

> [!NOTE]
> This guide does not explain server deployment.

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

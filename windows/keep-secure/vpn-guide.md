---
title: Windows 10 VPN technical guide (Windows 10)
description: Use this guide to configure VPN deployment for Windows 10.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
localizationpriority: high
---

# Windows 10 VPN technical guide


**Applies to**

- Windows 10
- Windows 10 Mobile

This guide will walk you through the decisions you will make for Windows 10 clients in your enterprise VPN solution and how to configure your deployment. This guide references the [VPNv2 Configuration Service Provider (CSP)](https://msdn.microsoft.com/en-us/library/windows/hardware/dn914776.aspx). 

>[!NOTE]
>This guide does not explain server deployment. It lists server dependencies, when relevant. 

## In this guide

| Topic | Description (currently just notes, these are not final wording yet) |
| --- | --- |
| [VPN connection types](vpn-connection-type.md) | Select a VPN client and tunneling protocol |
| [VPN routing decisions](vpn-routing.md)  | Choose beetween split tunnel and force tunnel configuration |
| [VPN authentication options](vpn-authentication.md)  | how to authenticate VPN connection: EAP-based, (?) |
| [VPN and conditional access](vpn-conditional-access.md)  | use Azure Active Directory policy evaluation to set access policies for VPN |
| [VPN proxy settings](vpn-proxy-settings.md)  |  |
| [VPN name resolution](vpn-name-resolution.md)  | how name resolution should happen |
| [VPN auto-triggered profile options](vpn-auto-trigger-profile.md)  | auto-connect clients to VPN: app-triggered, name-based trigger, "always on", trusted network detection |
| [VPN security features](vpn-security-features.md)  | lockdown, traffic filtering, WIP |
| [VPN profile options](vpn-profile-options.md)  | combine settings into single profile using XML |







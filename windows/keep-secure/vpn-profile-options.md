---
title: VPN profile options (Windows 10)
description: Virtual private networks (VPN) let you give your users secure remote access to your company network. Windows 10 adds useful new VPN profile options to help you manage how users connect.
ms.assetid: E3F99DF9-863D-4E28-BAED-5C1B1B913523
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, networking
author: jdeckerMS
localizationpriority: high
---

# VPN profile options

**Applies to**
-   Windows 10
-   Windows 10 Mobile

Most of the VPN settings in Windows 10 can be configured in VPN profiles using Microsoft Intune or System Center Configuration Manager. All VPN settings in Windows 10 can be configued using the **ProfileXML** node in the [VPNv2 configuration service provider (CSP)](https://msdn.microsoft.com/library/windows/hardware/mt755930.aspx) 

The following table lists the VPN settings and whether the setting can only be configured using **ProfileXML**.

| Profile setting | Can be configured in Intune and Configuration Manager | 
| --- | --- | 
| Connection type | yes | 
| Routing: split-tunnel routes | yes, except exclusion routes |
| Routing: forced-tunnel | yes |
| Authentication (EAP) | yes, if connection type is built-in |
| Conditional access | yes |
| Name resolution: NRPT | yes |
| Name resolution: DNS suffix | no |
| Name resolution: persistent | no |
| Auto-trigger: app trigger | yes |
| Auto-trigger: name trigger | yes |
| Auto-trigger: Always On | no |
| Auto-trigger: trusted network detection | no |
| LockDown | no |
| Windows Information Protection (WIP) | no |
| Traffic filters | yes |

For more information about ProfileXML including sample profiles (both native and UWP VPN plugin):    
OMA-DM Uri: /Vendor/MSFT/VPNv2/[Profile Name]/ProfileXML
The below is a sample Native VPN profile (found in the link above). This blob would fall under the ProfileXML node. Profiles can be created for UWP apps as well. An example can be found in the link above as well.
 

## Learn more

- [Learn how to configure VPN connections in Microsoft Intune](https://docs.microsoft.com/intune/deploy-use/vpn-connections-in-microsoft-intune)
- [VPNv2 configuration service provider (CSP) reference](https://go.microsoft.com/fwlink/p/?LinkId=617588)
- [How to Create VPN Profiles in Configuration Manager](https://go.microsoft.com/fwlink/p/?LinkId=618028)

## Related topics

- [VPN technical guide](vpn-guide.md)
- [VPN connection types](vpn-connection-type.md)
- [VPN routing decisions](vpn-routing.md)
- [VPN authentication options](vpn-authentication.md)
- [VPN and conditional access](vpn-conditional-access.md)
- [VPN name resolution](vpn-name-resolution.md)
- [VPN auto-triggered profile options](vpn-auto-trigger-profile.md)
- [VPN security features](vpn-security-features.md)

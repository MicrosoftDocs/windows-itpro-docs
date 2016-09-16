---
title: VPN security features (Windows 10)
description: tbd
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, networking
author: jdeckerMS
localizationpriority: high
---

# VPN security features

**Applies to**
-   Windows 10
-   Windows 10 Mobile


## Lockdown VPN

Lockdown VPN is a setting in VPN which can enforce an Always On force tunneled VPN. The system will attempt to keep this VPN connection connected, and networking data will only be allowed to go over the VPN Interface. The only exceptions here are for getting underlying network connectivity going as well as for MDM configuration. Deploy this feature with caution as the resultant connection will not be able to send/receive any network traffic without the VPN being connected. 
This can be configured using 
VPNv2/ProfileName/LockDown
This is not currently supported to be configured via Intune/SCCM. This can be configured via a custom XML in the ProfileXML node. 


## Traffic filters

Traffic filters is a feature that enables admins to effectively add interface specific firewall rules on the VPN Interface. With this feature, admins can specify networking 5 Tuple policies (IP, Port and Protocol based) to allow through the VPN interface. In addition, these rules can be applied at a per app level or a per device level. For eg. An admin could say that the Contoso HR App must be allowed to go through the VPN and only access port 4545 additionally the Contoso finance apps is allowed to go over the VPN and only access the Remote IP ranges of 10.10.0.40 - 10.10.0.201 on port 5889, apart from this all other apps on the device should be able to access only ports 80 or 443.  

## Windows Information Protection (WIP) integration with VPN

Windows Information Protection provides capabilities allowing the separation and protection of enterprise data against disclosure across both company and personally owned devices without requiring additional changes to the environments or the apps themselves.  Additionally, when used with Rights Management Services (RMS), WIP can help to protect enterprise data locally.
In Windows 10, the Policy CSP was updated allowing administrators to enforce WIP policy. The VPNv2 CSP EdpModeId node allows a Windows 10 VPN client to integrate with WIP, extending its functionality to remote devices. Use case scenarios for WIP include:
•	Core Functionality: File encryption and file access blocking
•	UX Policy Enforcement: Restricting copy/paste, drag/drop, and sharing operations
•	EDP Network Policy Enforcement: Protecting intranet resources over corpnet and VPN
•	Network Policy Enforcement: Protecting SMB and Internet cloud resources over corpnet and VPN
The value of the EdpModeId is an Enterprise ID. The networking stack will look for this ID in the app token to determine whether VPN should be triggered for that particular app. 

This is not currently supported to be configured via Intune/SCCM. This can be configured via a custom XML in the ProfileXML node. 



## Related topics

- [VPN technical guide](vpn-guide.md)
- [VPN connection types](vpn-connection-type.md)
- [VPN routing decisions](vpn-routing.md)
- [VPN authentication options](vpn-authentication.md)
- [VPN and conditional access](vpn-conditional-access.md)
- [VPN name resolution](vpn-name-resolution.md)
- [VPN auto-triggered profile options](vpn-auto-trigger-profile.md)
- [VPN profile options](vpn-profile-options.md)
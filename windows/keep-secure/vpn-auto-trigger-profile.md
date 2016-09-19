---
title: VPN auto-triggered profile options (Windows 10)
description: tbd
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, networking
author: jdeckerMS
localizationpriority: high
---

# VPN auto-triggered profile options

**Applies to**
-   Windows 10
-   Windows 10 Mobile

In Windows 10, a number of features were added to auto-trigger VPN so users won’t have to manually connect when VPN is needed to access necessary resources. There are three different types of auto-trigger rules: 

- App trigger
- Name-based trigger
- Always On

## App trigger

VPN profiles in Windows 10 can be configured to connect automatically on the launch of a specified set of applications. You can configure desktop or Universal Windows Platform (UWP) apps to trigger a VPN connection. You can also configure per-app VPN and specify traffic rules for each app. See [Traffic filters](vpn-security-features.md#traffic-filters) for more details.

The app identifier for a desktop app is a file path. The app identifier for a UWP app is a package family name.

[Find a package family name (PFN) for per-app VPN configuration](https://docs.microsoft.com/intune/deploy-use/find-a-pfn-for-per-app-vpn)


## Name-based trigger

You can configure a domain name-based rule so that a specific domain name triggers the VPN connection.
 
Name-based auto-trigger can be configured using the VPNv2//*ProfileName*/DomainNameInformationList/dniRowId/AutoTrigger setting in the [VPNv2 Configuration Service Provider (CSP)](https://msdn.microsoft.com/library/windows/hardware/dn914776.aspx).

Domain names can even be configured such that VPN must be used to access that resource. If VPN is not connected, that resource will be inaccessible if the persistent node is configured to be true.


## Always On

Always On is a new feature in Windows 10 which enables the active VPN profile to connect automatically on the following triggers: 

- User sign-in 
- Network change 
- Device screen on 

When the trigger occurs, VPN tries to connect. If an error occurs or any user input is needed, the user is shown a toast notification for additional interaction.

Currently, this can only be configured in [custom XML in the ProfileXML node](vpn-profile-options.md). 

When a device has multiple profiles with Always On triggers, the user can specify the active profile in **Settings** > **Network & Internet** > **VPN** > *VPN profile* by selecting the **Let apps automatically use this VPN connection** checkbox. By default, the first MDM-configured profile is marked as **Active**. 

## Trusted network detection

This feature configures the VPN such that it would not get triggered if a user is on a trusted corporate network. The value of this setting is a list of DNS suffices. The VPN stack will look at the DNS suffix on the physical interface and if it matches any in the configured list and the network is private or provisioned by MDM, then VPN will not get triggered.

Trusted network detection  can be configured using the VPNv2//*ProfileName*/TrustedNetworkDetection setting in the [VPNv2 CCSP](https://msdn.microsoft.com/library/windows/hardware/dn914776.aspx).

Currently, this can only be configured in [custom XML in the ProfileXML node](vpn-profile-options.md).

## Configure app-triggered VPN

See [VPN profile options](vpn-profile-options.md) and [VPNv2 CSP](https://msdn.microsoft.com/library/windows/hardware/dn914776.aspx) for XML configuration. 

The following image shows associating an app to a VPN connection in a VPN Profile configuration policy using Microsoft Intune.

![Add an app for the VPN connection](images/vpn-app-trigger.png)

After you add an associated app, if you select the **Only these apps can use this VPN connection (per-app VPN)** checkbox, the app becomes available in **Corporate Boundaries**, where you can configure rules for the app. See [Traffic filters](vpn-security-features.md#traffic-filters) for more details. 

![Configure rules for the app](images/vpn-app-rules.png)

## Related topics

- [VPN technical guide](vpn-guide.md)
- [VPN connection types](vpn-connection-type.md)
- [VPN routing decisions](vpn-routing.md)
- [VPN authentication options](vpn-authentication.md)
- [VPN and conditional access](vpn-conditional-access.md)
- [VPN name resolution](vpn-name-resolution.md)
- [VPN security features](vpn-security-features.md)
- [VPN profile options](vpn-profile-options.md)
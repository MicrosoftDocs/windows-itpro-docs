---
title: VPN auto-triggered profile options
description: With auto-triggered VPN profile options, Windows can automatically establish a VPN connection based on IT admin-defined rules. Learn about the types of auto-trigger rules that you can create for VPN connections.
ms.date: 08/03/2023
ms.topic: conceptual
---

# VPN auto-triggered profile options

Windows can use different features to auto-trigger VPN, avoiding users to manually connect when VPN is needed to access necessary resources. There are three different types of auto-trigger rules:

- Application trigger
- Name-based trigger
- Always On

> [!NOTE]
> Auto-triggered VPN connections won't work if **Folder Redirection** for **AppData** is enabled. Either Folder Redirection for AppData must be disabled, or the auto-triggered VPN profile must be deployed in SYSTEM context, which changes the path to where the *rasphone.pbk* file is stored.

## Application trigger

VPN profiles can be configured to automatically connect on the execution of certain applications:

- You can configure desktop or Universal Windows Platform (UWP) apps to trigger a VPN connection
- You can configure per-app VPN and specify traffic rules for each app

> [!NOTE]
> The app identifier for a desktop app is a file path. The app identifier for a UWP app is a package family name.
>
> [Find a package family name (PFN) for per-app VPN configuration](/mem/configmgr/protect/deploy-use/find-a-pfn-for-per-app-vpn)

For more information, see [Traffic filters](vpn-security-features.md#traffic-filters).

## Name-based trigger

You can configure a domain name-based rule so that a specific domain name triggers the VPN connection.\ 
Name-based auto-trigger can be configured using the `VPNv2/<ProfileName>/DomainNameInformationList/dniRowId/AutoTrigger` setting in the [VPNv2 Configuration Service Provider (CSP)](/windows/client-management/mdm/vpnv2-csp).

There are four types of name-based triggers:

- Short name: for example, if *HRweb* is configured as a trigger, and the stack sees a DNS resolution request for *HRweb*, the VPN triggers
- Fully qualified domain name (FQDN): for example, if *HRweb.corp.contoso.com* is configured as a trigger, and the stack sees a DNS resolution request for *HRweb.corp.contoso.com*, the VPN triggers
- Suffix: for example, if *.corp.contoso.com* is configured as a trigger, and the stack sees a DNS resolution request with a matching suffix (such as *HRweb.corp.contoso.com*), the VPN triggers. For any short name resolution, VPN triggers, and the DNS servers are queried for the *<ShortName\>.corp.contoso.com*
- All: if used, all DNS resolution triggers VPN

## Always On

Always On is a Windows feature that enables the active VPN profile to connect automatically on the following triggers:

- User sign-in
- Network change
- Device screen on

When the trigger occurs, VPN tries to connect. If an error occurs, or any user input is needed, the user sees a toast notification for more interaction.

When a device has multiple profiles with Always On triggers, the user can specify the active profile in **Settings > Network & Internet > VPN > <VPN profile\>** by selecting the **Let apps automatically use this VPN connection** checkbox. By default, the first MDM-configured profile is marked as **Active**. Devices with multiple users have the same restriction: only one profile, and therefore only one user, is able to use the Always On triggers.

## Preserving user Always On preference

Another Windows feature is to preserve a user's Always On preference. If a user manually unchecks the **Connect automatically** checkbox, Windows remembers the user preference for the profile name by adding the profile name to the registry value *AutoTriggerDisabledProfilesList*.  

If a management tool removes or adds the same profile name back and set **AlwaysOn** to **true**, Windows doesn't check the box if the profile name exists in the following registry value, in order to preserve user preference.

**Key:** `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RasMan\Config`\
**Value:** `AutoTriggerDisabledProfilesList`\
**Type:** `REG_MULTI_SZ`

## Trusted network detection

The **Trusted network detection** feature configures the VPN so that connection isn't triggered when a device is on a trusted network. To configure Trusted network detection, you must provide a list of DNS suffixes. The VPN stack verifies the network name of the physical interface connection profile: if it matches any of the suffixes configured in the list and the network is private or provisioned by MDM, then VPN doesn't trigger.

Trusted network detection can be configured using the `VPNv2/<ProfileName>/TrustedNetworkDetection` setting in the [VPNv2 CSP](/windows/client-management/mdm/vpnv2-csp).

## Configure app-triggered VPN

See [VPN profile options](vpn-profile-options.md) and [VPNv2 CSP](/windows/client-management/mdm/vpnv2-csp) for XML configuration.

The following image shows associating apps to a VPN connection in a VPN Profile configuration policy using Microsoft Intune.

:::image type="content" source="images/vpn-app-trigger.png" alt-text="Creation of VPN profile in Intune: application association options." lightbox="images/vpn-app-trigger.png":::

## Related articles

- [VPN technical guide](vpn-guide.md)
- [VPN connection types](vpn-connection-type.md)
- [VPN routing decisions](vpn-routing.md)
- [VPN authentication options](vpn-authentication.md)
- [VPN and conditional access](vpn-conditional-access.md)
- [VPN name resolution](vpn-name-resolution.md)
- [VPN security features](vpn-security-features.md)
- [VPN profile options](vpn-profile-options.md)

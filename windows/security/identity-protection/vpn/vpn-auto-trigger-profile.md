---
title: VPN auto-triggered profile options (Windows 10 and Windows 11)
description: Learn about the types of auto-trigger rules for VPNs in Windows, which start a VPN when it is needed to access a resource.
ms.date: 09/23/2021
ms.topic: conceptual
---

# VPN auto-triggered profile options

In Windows 10 and Windows 11, a number of features have been added to auto-trigger VPN so users won't have to manually connect when VPN is needed to access necessary resources. There are three different types of auto-trigger rules: 

- App trigger
- Name-based trigger
- Always On

> [!NOTE]
> Auto-triggered VPN connections will not work if Folder Redirection for AppData is enabled. Either Folder Redirection for AppData must be disabled or the auto-triggered VPN profile must be deployed in system context, which changes the path to where the rasphone.pbk file is stored.


## App trigger

VPN profiles in Windows 10 or Windows 11 can be configured to connect automatically on the launch of a specified set of applications. You can configure desktop or Universal Windows Platform (UWP) apps to trigger a VPN connection. You can also configure per-app VPN and specify traffic rules for each app. See [Traffic filters](vpn-security-features.md#traffic-filters) for more details.

The app identifier for a desktop app is a file path. The app identifier for a UWP app is a package family name.

[Find a package family name (PFN) for per-app VPN configuration](/mem/configmgr/protect/deploy-use/find-a-pfn-for-per-app-vpn)

## Name-based trigger

You can configure a domain name-based rule so that a specific domain name triggers the VPN connection.
 
Name-based auto-trigger can be configured using the VPNv2/*ProfileName*/DomainNameInformationList/dniRowId/AutoTrigger setting in the [VPNv2 Configuration Service Provider (CSP)](/windows/client-management/mdm/vpnv2-csp).

There are four types of name-based triggers:

- Short name: for example, if **HRweb** is configured as a trigger and the stack sees a DNS resolution request for **HRweb**, the VPN will be triggered.
- Fully-qualified domain name (FQDN): for example, if **HRweb.corp.contoso.com** is configured as a trigger and the stack sees a DNS resolution request for **HRweb.corp.contoso.com**, the VPN will be triggered.
- Suffix: for example, if **.corp.contoso.com** is configured as a trigger and the stack sees a DNS resolution request with a matching suffix (such as **HRweb.corp.contoso.com**), the VPN will be triggered. For any short name resolution, VPN will be triggered and the DNS server will be queried for the *ShortName*.**corp.contoso.com**.
- All: if used, all DNS resolution should trigger VPN.


## Always On

Always On is a feature in Windows 10 and Windows 11 which enables the active VPN profile to connect automatically on the following triggers: 

- User sign-in 
- Network change 
- Device screen on 

When the trigger occurs, VPN tries to connect. If an error occurs or any user input is needed, the user is shown a toast notification for additional interaction.


When a device has multiple profiles with Always On triggers, the user can specify the active profile in **Settings** > **Network & Internet** > **VPN** > *VPN profile* by selecting the **Let apps automatically use this VPN connection** checkbox. By default, the first MDM-configured profile is marked as **Active**. Devices with multiple users have the same restriction: only one profile and therefore only one user will be able to use the Always On triggers.

## Preserving user Always On preference

Windows has a feature to preserve a user's AlwaysOn preference.  In the event that a user manually unchecks the "Connect automatically" checkbox, Windows will remember this user preference for this profile name by adding the profile name to the value **AutoTriggerDisabledProfilesList**.  

Should a management tool remove or add the same profile name back and set **AlwaysOn** to **true**, Windows will not check the box if the profile name exists in the following registry value in order to preserve user preference.

**Key:** HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RasMan\Config<br/>
**Value:** AutoTriggerDisabledProfilesList<br/>
**Type:** REG_MULTI_SZ


## Trusted network detection

This feature configures the VPN such that it would not get triggered if a user is on a trusted corporate network. The value of this setting is a list of DNS suffixes. The VPN stack will look at the network name of the physical interface connection profile and if it matches any in the configured list and the network is private or provisioned by MDM, then VPN will not get triggered.

Trusted network detection can be configured using the VPNv2/*ProfileName*/TrustedNetworkDetection setting in the [VPNv2 CSP](/windows/client-management/mdm/vpnv2-csp).


## Configure app-triggered VPN

See [VPN profile options](vpn-profile-options.md) and [VPNv2 CSP](/windows/client-management/mdm/vpnv2-csp) for XML configuration. 

The following image shows associating an app to a VPN connection in a VPN Profile configuration policy using Microsoft Intune.

![Add an app for the VPN connection.](images/vpn-app-trigger.png)

After you add an associated app, if you select the **Only these apps can use this VPN connection (per-app VPN)** checkbox, the app becomes available in **Corporate Boundaries**, where you can configure rules for the app. See [Traffic filters](vpn-security-features.md#traffic-filters) for more details. 

![Configure rules for the app.](images/vpn-app-rules.png)

## Related topics

- [VPN technical guide](vpn-guide.md)
- [VPN connection types](vpn-connection-type.md)
- [VPN routing decisions](vpn-routing.md)
- [VPN authentication options](vpn-authentication.md)
- [VPN and conditional access](vpn-conditional-access.md)
- [VPN name resolution](vpn-name-resolution.md)
- [VPN security features](vpn-security-features.md)
- [VPN profile options](vpn-profile-options.md)

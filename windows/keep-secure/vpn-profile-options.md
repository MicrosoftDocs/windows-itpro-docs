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

Most of the VPN settings in Windows 10 can be configured in VPN profiles using Microsoft Intune or System Center Configuration Manager. All VPN settings in Windows 10 can be configued using the **ProfileXML** node in the [VPNv2 configuration service provider (CSP)](https://msdn.microsoft.com/library/windows/hardware/dn914776.aspx) 

>[!NOTE]
>If you're not familiar with CSPs, read [Introduction to configuration service providers (CSPs)](https://technet.microsoft.com/itpro/windows/manage/how-it-pros-can-use-configuration-service-providers) first.

The following table lists the VPN settings and whether the setting can only be configured using **ProfileXML**.

| Profile setting | Can be configured in Intune and Configuration Manager | 
| --- | --- | 
| Connection type | yes | 
| Routing: split-tunnel routes | yes, except exclusion routes |
| Routing: forced-tunnel | yes |
| Authentication (EAP) | yes, if connection type is built-in |
| Conditional access | yes |
| Proxy settings | yes, by PAC/WPAD file or server and port |
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

The sections in this topic provide XML examples for the VPN profile settings in this guide. You can get additional examples in the [ProfileXML XSD](https://msdn.microsoft.com/library/windows/hardware/mt755930.aspx) topic.



## Connection type

**Example:** set connection type to **Automatic**

```
NativeProtocolType
    <!-- Configure VPN Protocol Type (L2tp, Pptp, Ikev2) -->
      <Add>
        <CmdID>10002</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/NativeProfile/NativeProtocolType</LocURI>
          </Target>
          <Data>Automatic</Data>
        </Item>
      </Add>
```

**Example:** set connection type for a Universal Windows Platform (UWP) VPN plug-in

```
 <!-- Configure VPN Plugin AppX Package ID (ThirdPartyProfileInfo=) -->
      <Add>
        <CmdID>10002</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/PluginProfile/PluginPackageFamilyName</LocURI>
          </Target>
          <Data>TestVpnPluginApp-SL_8wekyb3d8bbwe</Data>
        </Item>
      </Add>
```

**Example:** add custom configuration for UWP VPN plug-in

```
<!-- Configure Microsoft's Custom XML (ThirdPartyProfileInfo=) -->
      <Add>
        <CmdID>10003</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/PluginProfile/CustomConfiguration</LocURI>
          </Target>
          <Data>&lt;pluginschema&gt;&lt;ipAddress&gt;auto&lt;/ipAddress&gt;&lt;port&gt;443&lt;/port&gt;&lt;networksettings&gt;&lt;routes&gt;&lt;includev4&gt;&lt;route&gt;&lt;address&gt;172.10.10.0&lt;/address&gt;&lt;prefix&gt;24&lt;/prefix&gt;&lt;/route&gt;&lt;/includev4&gt;&lt;/routes&gt;&lt;namespaces&gt;&lt;namespace&gt;&lt;space&gt;.vpnbackend.com&lt;/space&gt;&lt;dnsservers&gt;&lt;server&gt;172.10.10.11&lt;/server&gt;&lt;/dnsservers&gt;&lt;/namespace&gt;&lt;/namespaces&gt;&lt;/networksettings&gt;&lt;/pluginschema&gt;</Data>
        </Item>
      </Add>
```

## Split-tunnel routing

**Example:** route list and exclusion route

```
     <Add>
        <CmdID>10008</CmdID>
        <Item>
          <Target>
           <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/RouteList/0/Address</LocURI>
          </Target>
          <Data>192.168.0.0</Data>
        </Item>
      </Add>
      <Add>
        <CmdID>10009</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/RouteList/0/PrefixSize</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">int</Format>
          </Meta>
          <Data>24</Data>
        </Item>
      </Add>
      <Add>
        <CmdID>10010</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/RouteList/0/ExclusionRoute</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">bool</Format>
          </Meta>
          <Data>true</Data>
        </Item>
      </Add>
```

[!NOTE]
>Forced-tunnel routing is used if no routes are specified.


## EAP authentication

You can only configure EAP-based authentication if you select a built-in connection type (IKEv2, L2TP, PPTP, or automatic). See [EAP configuration](https://msdn.microsoft.com/library/windows/hardware/mt168513.aspx) for a step-by-step guide for creating an Extensible Authentication Protocol (EAP) configuration XML for the VPN profile.


## Conditional access

**Example:** device compliance for conditional access

```
<Add>
        <CmdID>10011</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DeviceCompliance/SSO/Enabled</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">bool</Format>
          </Meta>
          <Data>true</Data>
        </Item>
      </Add>
<Add>
        <CmdID>10011</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DeviceCompliance/SSO/IssuerHash</LocURI>
          </Target>
          <Data>ffffffffffffffffffffffffffffffffffffffff;ffffffffffffffffffffffffffffffffffffffee</Data>
        </Item>
      </Add>
<Add>
        <CmdID>10011</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DeviceCompliance/SSO/EKU</LocURI>
          </Target>
          <Data>1.3.6.1.5.5.7.3.2</Data>
        </Item>
      </Add>

```

## Proxy settings

**Example:** domain name rule for traffic through proxy server

```
 <Add>
        <CmdID>10016</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DomainNameInformationList/5/DomainName</LocURI>  
          </Target>
          <Data>.</Data>
        </Item>
      </Add>
      <Add>
        <CmdID>10017</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/VPNv2/VPNProfileName/DomainNameInformationList/5/WebProxyServers</LocURI>  
          </Target>
          <Data>192.168.0.11</Data>
        </Item>
      </Add>
      ```

## NRPT name resolution

**Example:** 

## DNS suffix name resolution

**Example:**

## Persistent name resolution

**Example:**

## App trigger

**Example:**

## Name trigger

**Example:**

## Always On

**Example:**

## Trusted network detection

**Example:**

## LockDown

**Example:**

## Windows Information Protection

**Example:**

## Traffic filters

**Example:**





 

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

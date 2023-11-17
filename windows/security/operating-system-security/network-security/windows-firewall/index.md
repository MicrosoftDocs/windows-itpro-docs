---
title: Windows Firewall overview 
description: Learn overview information about the Windows Firewall security feature.
ms.topic: conceptual
ms.date: 11/14/2023
---

# Windows Firewall overview

Windows Firewall is a security feature that helps to protect your device by filtering network traffic that enters and exits your device. This traffic can be filtered based on several criteria, including source and destination IP address, IP protocol, or source and destination port number. Windows Firewall can be configured to block or allow network traffic based on the services and applications that are installed on your device. This allows you to restrict network traffic to only those applications and services that are explicitly allowed to communicate on the network.

Windows Firewall is a host-based firewall that is included with the operating system and enabled by default on all Windows editions.

Windows Firewall supports Internet Protocol security (IPsec), which you can use to require authentication from any device that is attempting to communicate with your device. When authentication is required, devices that can't be authenticated as a *trusted device* can't communicate with your device. You can use IPsec to require that certain network traffic is encrypted to prevent it from being read by network packet analyzers that could be attached to the network by a malicious user.

:::row:::
  :::column span="2":::
    Windows Firewall also works with [Network Location Awareness][NLA] so that it can apply security settings appropriate to the types of networks to which the device is connected. For example, Windows Firewall can apply the *public network* profile when the device is connected a coffee shop wi-fi, and the *private network* profile when the device is connected to the home network. This allows you to apply more restrictive settings to public networks to help keep your device secure.

  :::column-end:::
  :::column span="2":::
    :::image type="content" source="images/windows-security.png" alt-text="Screenshot showing the Windows Security app." lightbox="images/windows-security.png" border="false":::
  :::column-end:::
:::row-end:::

## Practical applications

Windows Firewall offers several benefits to address your organization's network security challenges:

- Reduced risk of network security threats: By reducing the attack surface of a device, Windows Firewall provides an additional layer of defense to the defense-in-depth model. This increases manageability and decreases the likelihood of a successful attack
- Protection of sensitive data and intellectual property: Windows Firewall integrates with IPsec to provide a simple way to enforce authenticated, end-to-end network communications. This allows for scalable, tiered access to trusted network resources, helping to enforce data integrity and, if necessary, protect data confidentiality
- Extended value of existing investments: Windows Firewall is a host-based firewall included with the operating system, so no additional hardware or software is required. It's also designed to complement existing non-Microsoft network security solutions through a documented API

[!INCLUDE [windows-firewall](../../../../../includes/licensing/windows-firewall.md)]

## Concepts

The default behavior of Windows Firewall is to:

- block all incoming traffic, unless solicited or maching a *rule*
- allow all outgoing traffic, unless matching a *rule*

### Firewall rules

*Firewall rules* identify communication to be allowed or blocked, and the conditions for this to happen. The rules offer an extensive selection of conditions to identify traffic, including:

- source and destination IP addresses
- can make use dynamic values, like default gateway, DHCP servers, DNS servers and local subnets
- protocol name or type
- source and destination TCP or UDP ports
- interface type
- ICMP/ICMPv6 traffic type and code
- rules can apply to any process, any service or spoecific service

### Firewall profiles

Windows Firewall offers three network profiles: domain, private and public. The network profiles are used to assign rules. For example, you can allow a specific application to communicate on a private network, but not on a public network.

:::row:::
  :::column span="1":::
  #### :::image type="icon" source="images/domain-network.svg" border="false"::: Domain network
  :::column-end:::
  :::column span="3":::
  The *domain network* profile is automatically applied to a device that is joined to an Active Directory domain, when it detects the availability of a domain controller. This network profile cannot be set manually.
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="1":::
  #### :::image type="icon" source="images/private-network.svg" border="false"::: Private network
  :::column-end:::
  :::column span="3":::
    The *private network* profile is designed for private networks such as a home network. It can be set on a network interface by an administrator.
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="1":::
  #### :::image type="icon" source="images/public-network.svg" border="false"::: Public network
  :::column-end:::
  :::column span="3":::
    The *public network* profile is designed with higher security in mind for public networks, like Wi-Fi hotspots, coffee shops, airports, hotels, etc. It's the default profile for unidentified networks.
  :::column-end:::
:::row-end:::

#### :::image type="icon" source="images/domain-network.svg" border="false"::: Domain network

The *domain network* profile is automatically applied to a device that is joined to an Active Directory domain, when it detects the availability of a domain controller. This network profile cannot be set manually.

#### :::image type="icon" source="images/private-network.svg" border="false"::: Private network

The *private network* profile is designed for private networks such as a home network. It can be set on a network interface by an administrator.

#### :::image type="icon" source="images/public-network.svg" border="false"::: Public network

The *public network* profile is designed with higher security in mind for public networks, like Wi-Fi hotspots, coffee shops, airports, hotels, etc. It's the default profile for unidentified networks.

## Next steps

> [!div class="nextstepaction"]
> Learn about the tools to configure Windows Firewall and some recommended practices:
>
> [Configure Windows Firewall >](configure.md)

## :::image type="icon" source="images/feedback.svg" border="false"::: Provide feedback

To provide feedback for Windows Firewall, open [**Feedback Hub**][FHUB] (<kbd>WIN</kbd>+<kbd>F</kbd>) and use the category **Security and Privacy** > **Network protection**.

<!--links-->

[FHUB]: feedback-hub:?tabid=2&newFeedback=true
[NLA]: /windows/win32/winsock/network-location-awareness-service-provider-nla--2
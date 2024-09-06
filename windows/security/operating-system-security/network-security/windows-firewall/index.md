---
title: Windows Firewall overview
description: Learn overview information about the Windows Firewall security feature.
ms.topic: overview
ms.date: 09/06/2024
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

- block all incoming traffic, unless solicited or matching a *rule*
- allow all outgoing traffic, unless matching a *rule*

### Firewall rules

*Firewall rules* identify allowed or blocked network traffic, and the conditions for this to happen. The rules offer an extensive selection of conditions to identify traffic, including:

- Application, service or program name
- Source and destination IP addresses
- Can make use dynamic values, like default gateway, DHCP servers, DNS servers and local subnets
- Protocol name or type. For transport layer protocols, TCP and UDP, you can specify ports or port ranges. For custom protocols, you can use a number between 0 and 255 representing the IP protocol
- Interface type
- ICMP/ICMPv6 traffic type and code

### Firewall profiles

Windows Firewall offers three network profiles: domain, private and public. The network profiles are used to assign rules. For example, you can allow a specific application to communicate on a private network, but not on a public network.

#### :::image type="icon" source="images/domain-network.svg" border="false"::: Domain network

The *domain network* profile is automatically applied to a device that is joined to an Active Directory domain, when it detects the availability of a domain controller. This network profile cannot be set manually.

> [!TIP]
> Another option to detect the *domain network* is to configure the policy settings in the [NetworkListManager Policy CSP][CSP-1], which applies to Microsoft Entra joined devices too.

#### :::image type="icon" source="images/private-network.svg" border="false"::: Private network

The *private network* profile is designed for private networks such as a home network. It can be set manually on a network interface by an administrator.

#### :::image type="icon" source="images/public-network.svg" border="false"::: Public network

The *public network* profile is designed with higher security in mind for public networks, like Wi-Fi hotspots, coffee shops, airports, hotels, etc. It's the default profile for unidentified networks.

> [!TIP]
> Use the PowerShell cmdlet `Get-NetConnectionProfile` to retrieve the active network category (`NetworkCategory`). Use the PowerShell cmdlet `Set-NetConnectionProfile` to switch the category between *private* and *public*.

## Next steps

> [!div class="nextstepaction"]
> Learn about Windows Firewall rules and design recommendations:
>
> [Windows Firewall rules >](rules.md)

## :::image type="icon" source="images/feedback.svg" border="false"::: Provide feedback

To provide feedback for Windows Firewall, open [**Feedback Hub**][FHUB] (<kbd>WIN</kbd>+<kbd>F</kbd>) and use the category **Security and Privacy** > **Network protection**.

<!--links-->

[FHUB]: feedback-hub:?tabid=2&newFeedback=true
[NLA]: /windows/win32/winsock/network-location-awareness-service-provider-nla--2
[CSP-1]: /windows/client-management/mdm/policy-csp-networklistmanager
